-- =================================================================
-- 🛒 SCRIPT PARA CRIAR O BUCKET "videos" (Faltava isso!)
-- =================================================================

-- 1. CRIAR O BUCKET PÚBLICO
INSERT INTO storage.buckets (id, name, public)
VALUES ('videos', 'videos', true)
ON CONFLICT (id) DO NOTHING;

-- 2. POLÍTICAS DE ACESSO (PERMITIR TUDO POR ENQUANTO)
-- Permitir SELECT para todos (público)
CREATE POLICY "Public Access"
ON storage.objects FOR SELECT
USING ( bucket_id = 'videos' );

-- Permitir INSERT para autenticados (Upload)
CREATE POLICY "Authenticated Upload"
ON storage.objects FOR INSERT
WITH CHECK ( bucket_id = 'videos' AND auth.role() = 'authenticated' );

-- Permitir UPDATE para autenticados
CREATE POLICY "Authenticated Update"
ON storage.objects FOR UPDATE
USING ( bucket_id = 'videos' AND auth.role() = 'authenticated' );

-- Permitir DELETE para autenticados
CREATE POLICY "Authenticated Delete"
ON storage.objects FOR DELETE
USING ( bucket_id = 'videos' AND auth.role() = 'authenticated' );

-- =================================================================
-- ✅ BUCKET CRIADO! 
-- Agora você precisa UPAR os vídeos para a pasta "videos" no Storage
-- =================================================================
