-- ==========================================
-- FIX: WEBHOOK & SUBSCRIPTION LOGIC (SAFE)
-- ==========================================

-- 1. Create/Replace the Payment Handler
CREATE OR REPLACE FUNCTION handle_payment_webhook(
  p_email text,
  p_plan_slug text,
  p_transaction_id text
)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_user_id uuid;
  v_plan_duration integer;
  v_plan_data record;
BEGIN
  -- 1. Get User ID
  SELECT id INTO v_user_id
  FROM auth.users
  WHERE email ILIKE p_email
  LIMIT 1;

  IF v_user_id IS NULL THEN
    INSERT INTO integration_logs (integration_name, event_name, status, payload)
    VALUES ('database_rpc', 'error_user_not_found', 'error', jsonb_build_object('email', p_email));
    RETURN;
  END IF;

  -- 2. Get Plan Details
  SELECT * INTO v_plan_data
  FROM plans
  WHERE slug = p_plan_slug;
  
  -- Fallback logic
  IF v_plan_data IS NULL THEN
     v_plan_duration := 30; -- Default 30 days
  ELSE
     v_plan_duration := v_plan_data.duration_days;
  END IF;

  -- 3. Update Subscriptions Table (Critical for Dashboard)
  -- Cancel previous active subscriptions
  UPDATE subscriptions 
  SET status = 'canceled', updated_at = NOW()
  WHERE user_id = v_user_id AND status = 'active';

  -- Create new subscription
  INSERT INTO subscriptions (
    user_id,
    plan,
    status,
    expires_at,
    transaction_id,
    created_at,
    updated_at
  ) VALUES (
    v_user_id,
    p_plan_slug,
    'active',
    NOW() + (v_plan_duration || ' days')::interval,
    p_transaction_id,
    NOW(),
    NOW()
  );

  -- 4. Update Profiles (For App Access)
  -- REMOVED updated_at because it might be missing in profiles table
  UPDATE public.profiles
  SET 
    subscription_active = true,
    plan_atual = p_plan_slug,
    plan_status = 'active',
    plan_expira_em = NOW() + (v_plan_duration || ' days')::interval
  WHERE id = v_user_id;

  -- 5. Log Success
  INSERT INTO integration_logs (integration_name, event_name, status, payload)
  VALUES ('database_rpc', 'subscription_activated', 'success', jsonb_build_object('user_id', v_user_id, 'plan', p_plan_slug, 'days', v_plan_duration));

END;
$$;

-- 2. Create Expiration Check Function
CREATE OR REPLACE FUNCTION check_expired_subscriptions()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  -- Expire in Subscriptions Table
  UPDATE subscriptions
  SET status = 'expired', updated_at = NOW()
  WHERE status = 'active' AND expires_at < NOW();

  -- Expire in Profiles Table
  -- REMOVED updated_at
  UPDATE profiles
  SET 
    subscription_active = false, 
    plan_status = 'expired'
  WHERE subscription_active = true AND plan_expira_em < NOW();
END;
$$;
