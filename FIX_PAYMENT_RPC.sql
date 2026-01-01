-- ============================================
-- FIX: REPAIR PAYMENT FUNCTION (RPC)
-- ============================================

-- Drop function if it exists to clean up
DROP FUNCTION IF EXISTS create_payment_intent_secure(TEXT);

-- Re-create the secure payment function with SECURITY DEFINER
-- This bypasses RLS policies ensuring payments can always be created by authenticated users
CREATE OR REPLACE FUNCTION create_payment_intent_secure(p_plan_slug TEXT)
RETURNS JSON
SECURITY DEFINER -- Runs with owner privileges (Bypasses RLS)
SET search_path = public -- Security best practice
LANGUAGE plpgsql
AS $$
DECLARE
  v_amount INTEGER;
  v_intent_id UUID;
  v_user_email TEXT;
BEGIN
  -- 1. Validate user is authenticated
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Unauthorized';
  END IF;

  -- 2. Get the REAL price from plans table (server-side validation)
  SELECT price INTO v_amount
  FROM plans
  WHERE slug = p_plan_slug;
  
  IF v_amount IS NULL THEN
    RAISE EXCEPTION 'Invalid plan slug: %', p_plan_slug;
  END IF;

  -- 3. Get user email (Securely from auth system)
  SELECT email INTO v_user_email
  FROM auth.users
  WHERE id = auth.uid();
  
  -- 4. Create payment intent
  INSERT INTO payment_intents (
    plan_slug,
    amount,
    user_id,
    email,
    status,
    created_at
  )
  VALUES (
    p_plan_slug,
    v_amount,
    auth.uid(),
    v_user_email,
    'pending',
    NOW()
  )
  RETURNING id INTO v_intent_id;
  
  RETURN json_build_object(
    'intent_id', v_intent_id,
    'amount', v_amount,
    'plan_slug', p_plan_slug
  );
END;
$$;

-- Grant execute permission to authenticated users
GRANT EXECUTE ON FUNCTION create_payment_intent_secure(TEXT) TO authenticated;

-- Confirmation
SELECT 'FUNCTION REPAIRED: create_payment_intent_secure' as status;
