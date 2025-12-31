-- ============================================================================
-- FIX: RLS Blocking Episode Access
-- ============================================================================
-- Problema: Políticas RLS muito restritivas estão bloqueando acesso aos episódios
-- Solução: Permitir leitura de metadados para todos, mas proteger URLs de vídeo
-- ============================================================================

-- 1. Remover política restritiva atual
DROP POLICY IF EXISTS "episodes_select_subscribers" ON episodes;

-- 2. Permitir leitura de metadados para TODOS (autenticados ou não)
-- Isso permite que o player carregue informações básicas do episódio
CREATE POLICY "episodes_select_metadata" ON episodes
FOR SELECT USING (true);

-- NOTA: As URLs de vídeo devem ser protegidas em nível de aplicação,
-- não em nível de banco de dados, para evitar bloquear o carregamento do player.

-- 3. Verificar se RLS está ativo
SELECT tablename, rowsecurity 
FROM pg_tables 
WHERE tablename = 'episodes' AND schemaname = 'public';

-- Resultado esperado: rowsecurity = true

-- 4. Verificar políticas ativas
SELECT policyname, cmd, qual 
FROM pg_policies 
WHERE tablename = 'episodes' AND schemaname = 'public';

-- Resultado esperado: episodes_select_metadata com USING (true)
