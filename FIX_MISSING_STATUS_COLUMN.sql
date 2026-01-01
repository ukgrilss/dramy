-- ============================================
-- FINAL SCHEMA REPAIR (STATUS COLUMN)
-- ============================================

-- 1. ADD MISSING STATUS COLUMN
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_intents' AND column_name = 'status') THEN
        ALTER TABLE payment_intents ADD COLUMN status TEXT DEFAULT 'pending';
    END IF;
END $$;

-- 2. ENSURE AMOUNT COLUMN ALSO EXISTS (Just in case)
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_intents' AND column_name = 'amount') THEN
        ALTER TABLE payment_intents ADD COLUMN amount INTEGER;
    END IF;
END $$;


-- 3. RE-VERIFY RPC FUNCTION (To be absolutely sure)
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
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Unauthorized';
  END IF;

  SELECT price INTO v_price_raw
  FROM plans
  WHERE slug = p_plan_slug;
  
  IF v_price_raw IS NULL THEN
    RAISE EXCEPTION 'Invalid plan slug: %', p_plan_slug;
  END IF;

  v_amount_cents := (v_price_raw * 100)::INTEGER;

  SELECT email INTO v_user_email
  FROM auth.users
  WHERE id = auth.uid();
  
  -- Insert with explicit columns
  INSERT INTO payment_intents (
    plan_slug,
    amount,
    user_id,
    email,
    status, -- This triggered the error
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
  
  RETURN json_build_object(
    'intent_id', v_intent_id,
    'amount', v_amount_cents,
    'plan_slug', p_plan_slug
  );
END;
$$;

GRANT EXECUTE ON FUNCTION create_payment_intent_secure(TEXT) TO authenticated;

SELECT 'SCHEMA REPAIRED: Added status column' as status;
