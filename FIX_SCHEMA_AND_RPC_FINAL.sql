-- ============================================
-- FINAL FIX: SCHEMA & PAYMENT RPC
-- ============================================

-- 1. FIX TABLE SCHEMA
-- Add 'amount' column to payment_intents if it doesn't exist
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_intents' AND column_name = 'amount') THEN
        ALTER TABLE payment_intents ADD COLUMN amount INTEGER;
    END IF;
END $$;

-- 2. REPAIR & UPDATE RPC FUNCTION
DROP FUNCTION IF EXISTS create_payment_intent_secure(TEXT);

CREATE OR REPLACE FUNCTION create_payment_intent_secure(p_plan_slug TEXT)
RETURNS JSON
SECURITY DEFINER
SET search_path = public
LANGUAGE plpgsql
AS $$
DECLARE
  v_amount_cents INTEGER;
  v_price_raw NUMERIC;
  v_intent_id UUID;
  v_user_email TEXT;
BEGIN
  -- Validate user
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Unauthorized';
  END IF;

  -- Get price from plans (Float/Numeric)
  SELECT price INTO v_price_raw
  FROM plans
  WHERE slug = p_plan_slug;
  
  IF v_price_raw IS NULL THEN
    RAISE EXCEPTION 'Invalid plan slug: %', p_plan_slug;
  END IF;

  -- CONVERT TO CENTS (Vital for PushinPay)
  -- 19.90 -> 1990
  v_amount_cents := (v_price_raw * 100)::INTEGER;

  -- Get user email
  SELECT email INTO v_user_email
  FROM auth.users
  WHERE id = auth.uid();
  
  -- Insert into payment_intents with AMOUNT
  INSERT INTO payment_intents (
    plan_slug,
    amount, -- Now column exists!
    user_id,
    email,
    status,
    created_at
  )
  VALUES (
    p_plan_slug,
    v_amount_cents,
    auth.uid(),
    v_user_email,
    'pending',
    NOW()
  )
  RETURNING id INTO v_intent_id;
  
  -- Return amount in cents for Frontend
  RETURN json_build_object(
    'intent_id', v_intent_id,
    'amount', v_amount_cents,
    'plan_slug', p_plan_slug
  );
END;
$$;

GRANT EXECUTE ON FUNCTION create_payment_intent_secure(TEXT) TO authenticated;

SELECT 'SCHEMA FIXED AND FUNCTION UPDATED' as status;
