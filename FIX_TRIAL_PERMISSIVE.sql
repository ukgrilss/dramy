-- FIX: RECREATE TRIAL FUNCTION V4 (ROBUST MODE)
-- This version handles "Trigger Lag" by creating the profile if it doesn't exist yet.

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
    v_rows_affected INT;
BEGIN
    -- 1. Try to UPDATE existing profile
    UPDATE profiles 
    SET 
        trial_active = true,
        trial_balance = 600,
        plan_name = 'trial'
    WHERE id = p_user_id;

    GET DIAGNOSTICS v_rows_affected = ROW_COUNT;

    -- 2. If no row was updated (Profile not created yet?), INSERT it manually
    IF v_rows_affected = 0 THEN
        INSERT INTO profiles (id, email, trial_active, trial_balance, plan_name, subscription_active)
        VALUES (p_user_id, p_email, true, 600, 'trial', false);
    END IF;

    RETURN json_build_object('success', true, 'message', 'Trial ativado com sucesso (Permissive Mode)!');

EXCEPTION WHEN OTHERS THEN
    RETURN json_build_object('success', false, 'message', 'Erro SQL: ' || SQLERRM);
END;
$$ LANGUAGE plpgsql;

GRANT EXECUTE ON FUNCTION register_trial_access_v3 TO authenticated;
GRANT EXECUTE ON FUNCTION register_trial_access_v3 TO service_role;
GRANT EXECUTE ON FUNCTION register_trial_access_v3 TO anon;
