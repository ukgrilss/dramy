-- ============================================
-- FINAL FIX: MISSING ID COLUMN & PK
-- ============================================

-- This error (column "id" does not exist) suggests the table was created 
-- without a primary key or the specific ID column, which is critical.

-- 1. ADD ID COLUMN (Start fresh / idempotent)
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_intents' AND column_name = 'id') THEN
        ALTER TABLE payment_intents ADD COLUMN id UUID DEFAULT gen_random_uuid() PRIMARY KEY;
    END IF;
END $$;

-- 2. REPAIR RPC FUNCTION (Final Version)
-- Explicitly handle the return of the ID
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
  
  -- INSERT and capture the generated ID
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
  RETURNING id INTO v_intent_id; -- This line was failing because ID column didn't exist
  
  RETURN json_build_object(
    'intent_id', v_intent_id,
    'amount', v_amount_cents,
    'plan_slug', p_plan_slug
  );
END;
$$;

GRANT EXECUTE ON FUNCTION create_payment_intent_secure(TEXT) TO authenticated;

SELECT 'SCHEMA FIXED: Added ID column and Primary Key' as status;
