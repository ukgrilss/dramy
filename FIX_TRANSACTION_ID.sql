-- ============================================
-- FINAL FIX: TRANSACTION_ID CONSTRAINT
-- ============================================

-- The error "null value in column transaction_id ... violates not-null constraint"
-- reveals that 'transaction_id' is a required column we didn't know about.

-- 1. FIX THE RPC FUNCTION TO GENERATE A TRANSACTION ID
-- We will generate a UUID for transaction_id as well.

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
  v_transaction_id UUID; -- Variable for the new required field
BEGIN
  -- Validate Auth
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Unauthorized';
  END IF;

  -- Get Price
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
  
  -- Generate a transaction ID (Assuming it's a UUID)
  v_transaction_id := gen_random_uuid();
  
  -- INSERT including transaction_id
  INSERT INTO payment_intents (
    plan_slug,
    amount,
    user_id,
    email,
    status,
    transaction_id, -- REQUIRED FIELD
    created_at
  )
  VALUES (
    p_plan_slug,
    v_amount_cents,
    auth.uid(),
    v_user_email,
    'pending',
    v_transaction_id, -- Value
    NOW()
  )
  RETURNING id INTO v_intent_id;
  
  RETURN json_build_object(
    'intent_id', v_intent_id,
    'amount', v_amount_cents,
    'plan_slug', p_plan_slug,
    'transaction_id', v_transaction_id
  );
END;
$$;

GRANT EXECUTE ON FUNCTION create_payment_intent_secure(TEXT) TO authenticated;

SELECT 'FIX APPLIED: Added transaction_id generation' as status;
