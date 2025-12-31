-- ============================================
-- DIAGNÓSTICO: LISTAR TODAS AS POLÍTICAS EXISTENTES
-- ============================================

-- Ver TODAS as políticas nas tabelas críticas
SELECT 
    tablename,
    policyname,
    permissive,
    roles,
    cmd,
    qual,
    with_check
FROM pg_policies
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
ORDER BY tablename, policyname;

-- Ver se RLS está realmente habilitado
SELECT 
    tablename,
    rowsecurity as rls_enabled
FROM pg_tables
WHERE tablename IN ('profiles', 'payment_intents', 'episodes');
