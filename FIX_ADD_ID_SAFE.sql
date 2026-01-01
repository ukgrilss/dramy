-- ============================================
-- SAFE FIX: ADD ID COLUMN (NO PK CONFLICT)
-- ============================================

-- 1. ADD ID COLUMN WITHOUT PRIMARY KEY CONSTRAINT
-- Since the table already has a PK (unknown column), we just add 'id' as a unique identifier
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_intents' AND column_name = 'id') THEN
        ALTER TABLE payment_intents ADD COLUMN id UUID DEFAULT gen_random_uuid();
    END IF;
END $$;

-- 2. REPAIR RPC FUNCTION
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
  
  -- INSERT using the new ID column
  -- Note: We rely on the DEFAULT gen_random_uuid() for the ID value
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

SELECT 'FIX APPLIED: Added ID column (Safe Mode)' as status;
