-- ============================================
-- CORREÇÃO DEFINITIVA: REMOVER TODAS AS POLÍTICAS PERMISSIVAS
-- ============================================

-- EPISODES: Remover TODAS as políticas permissivas
DROP POLICY IF EXISTS "Public Read Access Episodes" ON episodes;
DROP POLICY IF EXISTS "Public view episodes" ON episodes;
DROP POLICY IF EXISTS "episodes_select_subscribers" ON episodes;

-- PAYMENT_INTENTS: Remover TODAS as políticas permissivas
DROP POLICY IF EXISTS "Enable insert for authenticated users" ON payment_intents;
DROP POLICY IF EXISTS "Enable read for everyone" ON payment_intents;
DROP POLICY IF EXISTS "Service Role can read intents" ON payment_intents;
DROP POLICY IF EXISTS "payment_intents_insert_own" ON payment_intents;
DROP POLICY IF EXISTS "payment_intents_select_own" ON payment_intents;

-- PROFILES: Remover TODAS as políticas permissivas
DROP POLICY IF EXISTS "profiles_delete_v2" ON profiles;
DROP POLICY IF EXISTS "profiles_insert_own" ON profiles;
DROP POLICY IF EXISTS "profiles_insert_v2" ON profiles;
DROP POLICY IF EXISTS "profiles_select_own" ON profiles;
DROP POLICY IF EXISTS "profiles_select_v2" ON profiles;
DROP POLICY IF EXISTS "profiles_update_own" ON profiles;
DROP POLICY IF EXISTS "profiles_update_v2" ON profiles;

-- ============================================
-- CRIAR APENAS POLÍTICAS RESTRITIVAS
-- ============================================

-- PROFILES: Apenas usuário autenticado vê seu próprio perfil
CREATE POLICY "profiles_select_authenticated_only" ON profiles
FOR SELECT 
TO authenticated
USING (auth.uid() = id);

CREATE POLICY "profiles_update_authenticated_only" ON profiles
FOR UPDATE 
TO authenticated
USING (auth.uid() = id)
WITH CHECK (auth.uid() = id);

CREATE POLICY "profiles_insert_authenticated_only" ON profiles
FOR INSERT 
TO authenticated
WITH CHECK (auth.uid() = id);

-- PAYMENT_INTENTS: Apenas usuário autenticado vê suas próprias transações
CREATE POLICY "payment_intents_select_authenticated_only" ON payment_intents
FOR SELECT 
TO authenticated
USING (auth.uid() = user_id);

CREATE POLICY "payment_intents_insert_authenticated_only" ON payment_intents
FOR INSERT 
TO authenticated
WITH CHECK (auth.uid() = user_id);

-- EPISODES: Apenas assinantes ativos podem ver episódios
CREATE POLICY "episodes_select_subscribers_only" ON episodes
FOR SELECT 
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM profiles
        WHERE id = auth.uid()
        AND subscription_active = true
    )
);

-- ============================================
-- VERIFICAÇÃO FINAL
-- ============================================

-- Listar políticas finais
SELECT 
    '=== POLÍTICAS FINAIS ===' as status;

SELECT 
    tablename,
    policyname,
    roles::text as roles,
    cmd,
    CASE 
        WHEN qual LIKE '%true%' THEN '❌ PERMISSIVA (PROBLEMA!)'
        WHEN qual LIKE '%auth.uid()%' THEN '✅ RESTRITIVA'
        ELSE '⚠️ VERIFICAR'
    END as tipo
FROM pg_policies
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
ORDER BY tablename, policyname;

-- Verificar RLS
SELECT 
    '=== STATUS RLS ===' as status;

SELECT 
    tablename,
    CASE 
        WHEN rowsecurity = true THEN '✅ HABILITADO'
        ELSE '❌ DESABILITADO'
    END as rls_status
FROM pg_tables
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
ORDER BY tablename;
