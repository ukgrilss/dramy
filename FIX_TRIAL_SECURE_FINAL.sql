-- =================================================================
-- FIX: INITIALIZE TRIAL BALANCE FOR FREE USERS (FINAL SECURE MODE)
-- =================================================================

-- 1. Ensure trial_balance column exists
ALTER TABLE profiles 
ADD COLUMN IF NOT EXISTS trial_balance INTEGER DEFAULT 600;

-- 2. Update V3 function to turn SECURITY BACK ON
-- We keep the name 'register_trial_access_v3' so you don't need to change the code again.
CREATE OR REPLACE FUNCTION register_trial_access_v3(
  p_ip_address TEXT,
  p_fingerprint TEXT,
  p_user_agent TEXT,
  p_user_id UUID
)
RETURNS JSON 
LANGUAGE plpgsql 
SECURITY DEFINER 
SET search_path = public
AS $$
DECLARE 
  v_expires_at TIMESTAMPTZ; 
  v_already_used BOOLEAN;
  v_trial_minutes INTEGER := 10;
  v_trial_seconds INTEGER := 600; -- 10 * 60
BEGIN
  -- ✅ SECURITY CHECK RESTORED
  -- This checks if the IP or Fingerprint was already used
  SELECT check_trial_used(p_ip_address, p_fingerprint) INTO v_already_used;
  
  IF v_already_used THEN 
    -- Block access if already used
    RETURN json_build_object('success', false, 'message', 'Teste grátis já utilizado neste dispositivo. Assine para continuar.'); 
  END IF;

  v_expires_at := NOW() + (v_trial_minutes || ' minutes')::INTERVAL;
  
  -- Log access (Important to block future attempts)
  INSERT INTO trial_access (ip_address, fingerprint, user_agent, user_id)
  VALUES (p_ip_address, p_fingerprint, p_user_agent, p_user_id);
  
  -- UPSERT PROFILE with BALANCE
  INSERT INTO public.profiles (
    id, 
    trial_active, 
    trial_expires_at, 
    trial_balance,
    plan_name
  )
  VALUES (
    p_user_id, 
    true, 
    v_expires_at, 
    v_trial_seconds,
    'Trial'
  )
  ON CONFLICT (id) DO UPDATE 
  SET trial_active = true,
      trial_expires_at = EXCLUDED.trial_expires_at,
      trial_balance = EXCLUDED.trial_balance,
      plan_name = 'Trial';
  
  RETURN json_build_object(
    'success', true, 
    'expires_at', v_expires_at,
    'balance', v_trial_seconds
  );
EXCEPTION WHEN OTHERS THEN 
  RETURN json_build_object('success', false, 'message', SQLERRM);
END; $$;

GRANT EXECUTE ON FUNCTION register_trial_access_v3 TO anon, authenticated, service_role;

SELECT 'SEGURANÇA (BLOQUEIO DE IP) REATIVADA COM SUCESSO' as status;
