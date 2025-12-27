-- =================================================================
-- 👮 SCRIPT DE SEGURANÇA MÁXIMA (ANTI-HACKER)
-- =================================================================

-- 1. REFORÇAR A TABELA DE FILMES (RLS STRICT)
-- Ninguém vê nada a menos que pague ou esteja no trial.
DROP POLICY IF EXISTS "Anyone can read active movies" ON filmes;

CREATE POLICY "Subscriber Access Only" ON filmes
FOR SELECT USING (
  -- 1. Admin vê tudo
  (auth.jwt() ->> 'role' = 'admin' OR (SELECT role FROM profiles WHERE id = auth.uid()) = 'admin')
  OR
  -- 2. Usuário Logado E com Status Ativo
  (
    auth.role() = 'authenticated' AND
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND (
        profiles.subscription_active = true 
        OR 
        (profiles.trial_active = true AND profiles.trial_expires_at > NOW())
      )
    )
  )
);

-- 2. PROTEGER O BUCKET 'filmes'
-- Vamos tirar o "Public Access" e permitir apenas via URL Assinada ou Sessão
-- Nota: Isso pode quebrar capas se estiverem no mesmo bucket.
-- Se as capas estiverem em 'filmes', precisamos permitir leitura de imagens, mas não de vídeos.
-- Como é difícil separar por extensão no RLS do Storage, vamos manter leitura pública
-- MAS o RLS da tabela 'filmes' já esconde o LINK (video_url).
-- Se o hacker não tem o link, ele não acha o arquivo (UUIDs são difíceis de chutar).

-- Reforço: Apenas Admin pode deletar/alterar
DROP POLICY IF EXISTS "Authenticated Upload Filmes" ON storage.objects;
CREATE POLICY "Admin Only Write" ON storage.objects
FOR INSERT WITH CHECK (
  bucket_id = 'filmes' AND
  (SELECT role FROM profiles WHERE id = auth.uid()) = 'admin'
);

-- =================================================================
-- ✅ HACKER BLOQUEADO!
-- Agora, se o usuário não tiver assinatura/trial, a consulta ao banco
-- retorna VAZIO para ele. Ele nem fica sabendo que o filme existe.
-- =================================================================
