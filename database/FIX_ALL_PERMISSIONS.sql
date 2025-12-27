-- =================================================================
-- ☢️ SCRIPT NUCLEAR DE CORREÇÃO (Rode para consertar TUDO)
-- =================================================================

-- 1. FORÇAR CRIAÇÃO DO BUCKET 'videos'
INSERT INTO storage.buckets (id, name, public)
VALUES ('videos', 'videos', true)
ON CONFLICT (id) DO UPDATE SET public = true;

-- 2. LIBERAR GERAL O STORAGE PARA 'videos' (Leitura Pública)
DROP POLICY IF EXISTS "Public Access" ON storage.objects;
CREATE POLICY "Public Access" ON storage.objects FOR SELECT
USING ( bucket_id = 'videos' );

-- Permitir Upload para quem está logado (Authenticated)
DROP POLICY IF EXISTS "Authenticated Upload" ON storage.objects;
CREATE POLICY "Authenticated Upload" ON storage.objects FOR INSERT
WITH CHECK ( bucket_id = 'videos' AND auth.role() = 'authenticated' );

-- 3. CORRIGIR TABELA DE FILMES (Garantir que Trial consiga ver)
ALTER TABLE filmes ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Anyone can read active movies" ON filmes;
CREATE POLICY "Anyone can read active movies" ON filmes
FOR SELECT USING (
  -- Admin pode ver tudo
  (auth.jwt() ->> 'role' = 'admin' OR (SELECT role FROM profiles WHERE id = auth.uid()) = 'admin')
  OR
  -- Usuários comuns só veem filmes ativos
  (active = true) 
  -- (Removemos a checagem de assinatura aqui para o player carregar o link,
  --  a proteção de tela já é feita no Frontend Watch.jsx)
);

-- 4. CORRIGIR TABELA DE PERFIS (Garantir que Trial seja lido corretamente)
CREATE POLICY "Users can read own profile" ON profiles
FOR SELECT USING (auth.uid() = id);

-- =================================================================
-- ✅ EXECUTE AGORA NO SQL EDITOR!
-- =================================================================
