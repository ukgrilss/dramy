-- FIX: RECREATE TRIAL FUNCTION V5 (ATOMIC UPSERT MODE)
-- This uses ON CONFLICT to guarantee the update happens regardless of triggers.

DROP FUNCTION IF EXISTS register_trial_access_v3;

CREATE OR REPLACE FUNCTION register_trial_access_v3(
    p_ip_address TEXT,
    p_fingerprint TEXT,
    p_user_agent TEXT,
    p_user_id UUID,
    p_email TEXT
)
RETURNS JSON
SECURITY DEFINER
AS $$
DECLARE
    v_final_balance INT;
BEGIN
    -- ATOMIC UPSERT: Insert or Update in one atomic step
    -- This beats any race condition with Triggers.
    INSERT INTO profiles (id, email, trial_active, trial_balance, plan_name, subscription_active)
    VALUES (p_user_id, p_email, true, 600, 'trial', false)
    ON CONFLICT (id) DO UPDATE
    SET 
        trial_active = true,
        trial_balance = 600,
        plan_name = 'trial';

    -- Verify the balance right after
    SELECT trial_balance INTO v_final_balance FROM profiles WHERE id = p_user_id;

    RETURN json_build_object(
        'success', true, 
        'message', 'Trial ativado com sucesso (UPSERT)!', 
        'debug_balance', v_final_balance
    );

EXCEPTION WHEN OTHERS THEN
    RETURN json_build_object('success', false, 'message', 'Erro SQL: ' || SQLERRM);
END;
$$ LANGUAGE plpgsql;

GRANT EXECUTE ON FUNCTION register_trial_access_v3 TO authenticated;
GRANT EXECUTE ON FUNCTION register_trial_access_v3 TO service_role;
GRANT EXECUTE ON FUNCTION register_trial_access_v3 TO anon;

-- ENSURE RLS PERSISTS
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can view own profile" ON profiles;
CREATE POLICY "Users can view own profile" ON profiles
    FOR SELECT USING (auth.uid() = id);

DROP POLICY IF EXISTS "Users can update own profile" ON profiles;
CREATE POLICY "Users can update own profile" ON profiles
    FOR UPDATE USING (auth.uid() = id);

DROP POLICY IF EXISTS "Users can insert own profile" ON profiles;
CREATE POLICY "Users can insert own profile" ON profiles
    FOR INSERT WITH CHECK (auth.uid() = id);
