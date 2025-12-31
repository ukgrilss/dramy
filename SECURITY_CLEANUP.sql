-- ============================================================================
-- DRAMY SECURITY FIXES - CLEANUP & FINAL FIXES
-- ============================================================================
-- Execute este script APÓS executar SECURITY_FIX_DATABASE.sql
-- ============================================================================

-- ----------------------------------------------------------------------------
-- CVE-2025-DRAMY-009: Clean Stored XSS Payloads from Database
-- ----------------------------------------------------------------------------

-- Limpar payloads XSS existentes na tabela profiles
-- Remove todas as tags HTML dos nomes de usuários
UPDATE profiles
SET full_name = REGEXP_REPLACE(full_name, '<[^>]*>', '', 'g')
WHERE full_name ~ '<[^>]*>';

-- Verificar se há mais payloads
SELECT id, full_name, email
FROM profiles
WHERE full_name ~ '<|>|script|onerror|onclick';

-- Se encontrar algum, execute novamente:
-- UPDATE profiles SET full_name = 'User' WHERE full_name ~ '<|>';

-- ----------------------------------------------------------------------------
-- Verificação Final: Confirmar que RLS está ativo
-- ----------------------------------------------------------------------------

-- Verificar RLS habilitado
SELECT 
  tablename,
  rowsecurity as rls_enabled
FROM pg_tables
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
AND schemaname = 'public';

-- Resultado esperado: rls_enabled = true para todas as tabelas

-- ----------------------------------------------------------------------------
-- Verificar políticas ativas
-- ----------------------------------------------------------------------------

SELECT 
  tablename,
  policyname,
  cmd as operation,
  qual as using_expression
FROM pg_policies
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
AND schemaname = 'public'
ORDER BY tablename, policyname;

-- Resultado esperado: Pelo menos 2 políticas por tabela (SELECT e UPDATE/INSERT)
