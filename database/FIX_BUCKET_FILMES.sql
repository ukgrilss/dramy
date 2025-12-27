-- =================================================================
-- 🎥 CORRIGINDO O BUCKET "filmes" (Já que o user disse que é lá)
-- =================================================================

-- 1. GARANTIR QUE O BUCKET 'filmes' EXISTA E SEJA PÚBLICO
INSERT INTO storage.buckets (id, name, public)
VALUES ('filmes', 'filmes', true)
ON CONFLICT (id) DO UPDATE SET public = true;

-- 2. LIBERAR ACESSO PÚBLICO AO BUCKET 'filmes'
DROP POLICY IF EXISTS "Public Access Filmes" ON storage.objects;

CREATE POLICY "Public Access Filmes" ON storage.objects FOR SELECT
USING ( bucket_id = 'filmes' );

-- (Opcional) Liberar Upload se precisar
CREATE POLICY "Authenticated Upload Filmes" ON storage.objects FOR INSERT
WITH CHECK ( bucket_id = 'filmes' AND auth.role() = 'authenticated' );

-- =================================================================
-- ✅ AGORA O PLAYER VAI BUSCAR EM /filmes/videos/...
-- =================================================================
