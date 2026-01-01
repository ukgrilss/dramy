-- =================================================================
-- FIX: INITIALIZE TRIAL BALANCE FOR FREE USERS (NUCLEAR OPTION)
-- =================================================================

-- 1. DROP ALL EXISTING VERSIONS DYNAMICALLY
-- This block finds ANY function named "register_trial_access" and kills it.
-- This solves the "function name is not unique" error explicitly.
DO $$
DECLARE
    r RECORD;
BEGIN
    FOR r IN SELECT oid::regprocedure AS func_signature
             FROM pg_proc
             WHERE proname = 'register_trial_access'
    LOOP
        EXECUTE 'DROP FUNCTION IF EXISTS ' || r.func_signature || ' CASCADE';
    END LOOP;
END $$;

-- 2. Ensure trial_balance column exists (Default 10 minutes = 600 seconds)
ALTER TABLE profiles 
ADD COLUMN IF NOT EXISTS trial_balance INTEGER DEFAULT 600;

-- 3. Recreate the function cleanly
CREATE OR REPLACE FUNCTION register_trial_access(
  p_ip_address TEXT,
  p_fingerprint TEXT,
  p_user_agent TEXT,
  p_user_id UUID
)
RETURNS JSON 
LANGUAGE plpgsql 
SECURITY DEFINER 
SET search_path = public -- Good practice
AS $$
DECLARE 
  v_expires_at TIMESTAMPTZ; 
  v_already_used BOOLEAN;
  v_trial_minutes INTEGER := 10;
  v_trial_seconds INTEGER := 600; -- 10 * 60
BEGIN
  -- Check if used
  SELECT check_trial_used(p_ip_address, p_fingerprint) INTO v_already_used;
  
  IF v_already_used THEN 
    -- Optional: Allow reuse for testing if needed
    RETURN json_build_object('success', false, 'message', 'Teste já utilizado neste dispositivo'); 
  END IF;

  v_expires_at := NOW() + (v_trial_minutes || ' minutes')::INTERVAL;
  
  -- Log access
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
      trial_balance = EXCLUDED.trial_balance, -- RE-SET BALANCE
      plan_name = 'Trial';
  
  RETURN json_build_object(
    'success', true, 
    'expires_at', v_expires_at,
    'balance', v_trial_seconds
  );
EXCEPTION WHEN OTHERS THEN 
  RETURN json_build_object('success', false, 'message', SQLERRM);
END; $$;

GRANT EXECUTE ON FUNCTION register_trial_access(TEXT, TEXT, TEXT, UUID) TO anon, authenticated, service_role;

SELECT 'CORREÇÃO APLICADA COM SUCESSO' as status;
