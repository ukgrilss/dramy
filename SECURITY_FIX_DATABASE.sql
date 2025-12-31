-- ============================================================================
-- DRAMY SECURITY FIXES - DATABASE (SUPABASE)
-- ============================================================================
-- IMPORTANTE: Execute estes scripts no SQL Editor do Supabase
-- Ordem: Execute na sequência apresentada
-- ============================================================================

-- ----------------------------------------------------------------------------
-- CVE-2025-DRAMY-001: Enable RLS on profiles table (CRITICAL)
-- Impacto: 99 usuários expostos
-- ----------------------------------------------------------------------------

-- Enable Row Level Security
ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;

-- Drop existing policies if any
DROP POLICY IF EXISTS "profiles_select_own" ON profiles;
DROP POLICY IF EXISTS "profiles_update_own" ON profiles;
DROP POLICY IF EXISTS "profiles_insert_own" ON profiles;

-- Users can only see their own profile
CREATE POLICY "profiles_select_own" ON profiles
FOR SELECT USING (auth.uid() = id);

-- Users can only update their own profile
CREATE POLICY "profiles_update_own" ON profiles
FOR UPDATE USING (auth.uid() = id);

-- Users can insert their own profile (for registration)
CREATE POLICY "profiles_insert_own" ON profiles
FOR INSERT WITH CHECK (auth.uid() = id);

-- ----------------------------------------------------------------------------
-- CVE-2025-DRAMY-002: Enable RLS on payment_intents table (CRITICAL)
-- Impacto: 4 transações expostas
-- ----------------------------------------------------------------------------

-- Enable Row Level Security
ALTER TABLE payment_intents ENABLE ROW LEVEL SECURITY;

-- Drop existing policies if any
DROP POLICY IF EXISTS "payment_intents_select_own" ON payment_intents;
DROP POLICY IF EXISTS "payment_intents_insert_own" ON payment_intents;

-- Users can only see their own payment intents
CREATE POLICY "payment_intents_select_own" ON payment_intents
FOR SELECT USING (auth.uid() = user_id);

-- Users can only create payment intents for themselves
CREATE POLICY "payment_intents_insert_own" ON payment_intents
FOR INSERT WITH CHECK (auth.uid() = user_id);

-- ----------------------------------------------------------------------------
-- CVE-2025-DRAMY-005: Enable RLS on episodes table (HIGH)
-- Impacto: URLs de vídeo expostas para não-assinantes
-- ----------------------------------------------------------------------------

-- Enable Row Level Security
ALTER TABLE episodes ENABLE ROW LEVEL SECURITY;

-- Drop existing policies if any
DROP POLICY IF EXISTS "episodes_select_subscribers" ON episodes;

-- Only authenticated users with active subscriptions can view episodes
CREATE POLICY "episodes_select_subscribers" ON episodes
FOR SELECT USING (
  EXISTS (
    SELECT 1 FROM profiles
    WHERE id = auth.uid()
    AND (
      subscription_active = true 
      OR (trial_active = true AND trial_expires_at > NOW())
    )
  )
);

-- ----------------------------------------------------------------------------
-- CVE-2025-DRAMY-011: Secure payment intent creation (HIGH)
-- Impacto: Previne manipulação de preços
-- ----------------------------------------------------------------------------

-- Create secure function to create payment intents with validated prices
CREATE OR REPLACE FUNCTION create_payment_intent_secure(p_plan_slug TEXT)
RETURNS JSON
SECURITY DEFINER
LANGUAGE plpgsql
AS $$
DECLARE
  v_amount INTEGER;
  v_intent_id UUID;
  v_user_email TEXT;
BEGIN
  -- Validate user is authenticated
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Unauthorized';
  END IF;

  -- Get the REAL price from plans table (server-side validation)
  SELECT price INTO v_amount
  FROM plans
  WHERE slug = p_plan_slug;
  
  IF v_amount IS NULL THEN
    RAISE EXCEPTION 'Invalid plan slug: %', p_plan_slug;
  END IF;

  -- Get user email
  SELECT email INTO v_user_email
  FROM auth.users
  WHERE id = auth.uid();
  
  -- Create payment intent with validated price
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

-- ----------------------------------------------------------------------------
-- VERIFICATION QUERIES
-- Execute estas queries para verificar que as políticas estão ativas
-- ----------------------------------------------------------------------------

-- Verificar RLS habilitado
SELECT 
  schemaname,
  tablename,
  rowsecurity
FROM pg_tables
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
AND schemaname = 'public';

-- Verificar políticas criadas
SELECT 
  schemaname,
  tablename,
  policyname,
  permissive,
  roles,
  cmd
FROM pg_policies
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
AND schemaname = 'public'
ORDER BY tablename, policyname;

-- ----------------------------------------------------------------------------
-- NOTAS IMPORTANTES
-- ----------------------------------------------------------------------------

/*
1. APÓS EXECUTAR ESTES SCRIPTS:
   - Teste o acesso às tabelas com um usuário não autenticado
   - Verifique que apenas dados do próprio usuário são retornados
   - Teste a criação de payment_intent via função RPC

2. FRONTEND CHANGES NECESSÁRIAS:
   - Atualizar código que cria payment_intents para usar a função RPC:
     
     // ANTES (INSEGURO):
     await supabase.from('payment_intents').insert({ ... })
     
     // DEPOIS (SEGURO):
     await supabase.rpc('create_payment_intent_secure', { 
       p_plan_slug: 'monthly' 
     })

3. MONITORAMENTO:
   - Configure alertas no Supabase para tentativas de acesso negadas
   - Monitore logs de RLS violations
   - Revise políticas periodicamente

4. PRÓXIMOS PASSOS:
   - Implementar rate limiting (Upstash Redis)
   - Migrar JWT para cookies httpOnly (requer refatoração)
   - Implementar signed URLs para vídeos (Bunny.net)
*/
