-- =================================================================
-- 🌉 SCRIPT DE COMPATIBILIDADE PARA IMPORTAÇÃO DO ICINEPLAY
-- =================================================================
-- Este script prepara o banco de dados do Cinefy para receber
-- o conteúdo extraído do iCinePlay (Séries, Episódios e Categorias).
-- =================================================================

-- 1. ADAPTAR TABELA DE CATEGORIAS
-- O conteúdo importado não tem 'slug' nem 'icon', então precisamos permitir nulos.
ALTER TABLE public.categories ALTER COLUMN slug DROP NOT NULL;
ALTER TABLE public.categories ADD COLUMN IF NOT EXISTS updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW();

-- 2. CRIAR TABELA DE SÉRIES (Se não existir)
CREATE TABLE IF NOT EXISTS public.series (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    title TEXT NOT NULL,
    description TEXT,
    poster_url TEXT,
    duration INTEGER, -- em minutos
    audio_type TEXT, -- 'Dublado' ou 'Legendado'
    genre TEXT,
    rating NUMERIC(3,1),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    category_id UUID REFERENCES public.categories(id), -- Opcional: linkar com categorias se houver
    featured BOOLEAN DEFAULT false
);

-- 3. CRIAR TABELA DE EPISÓDIOS (Se não existir)
CREATE TABLE IF NOT EXISTS public.episodes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    series_id UUID REFERENCES public.series(id) ON DELETE CASCADE,
    title TEXT NOT NULL,
    description TEXT,
    video_url TEXT, -- Removido NOT NULL pois usamos vimeo_id
    vimeo_id TEXT, -- Alterado de video_url para vimeo_id para compatibilidade
    thumbnail_url TEXT,
    duration INTEGER, -- em minutos
    episode_number INTEGER,
    season_number INTEGER DEFAULT 1,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 3.1 GARANTIR QUE A COLUNA VIMEO_ID EXISTE E VIDEO_URL ACEITE NULO
ALTER TABLE public.episodes ADD COLUMN IF NOT EXISTS vimeo_id TEXT;
ALTER TABLE public.episodes ADD COLUMN IF NOT EXISTS description TEXT;
ALTER TABLE public.episodes ALTER COLUMN video_url DROP NOT NULL;


-- 4. CRIAR TABELA DE PROGRESSO DE VÍDEO (Para funcionar o player)
CREATE TABLE IF NOT EXISTS public.video_progress (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
    series_id UUID REFERENCES public.series(id) ON DELETE CASCADE,
    episode_id UUID REFERENCES public.episodes(id) ON DELETE CASCADE,
    progress_seconds INTEGER DEFAULT 0,
    last_watched_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    completed BOOLEAN DEFAULT false,
    UNIQUE(user_id, episode_id)
);

-- 5. HABILITAR RLS (Segurança)
ALTER TABLE public.series ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.episodes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.video_progress ENABLE ROW LEVEL SECURITY;

-- Políticas de Leitura (Público ou Logado)
DROP POLICY IF EXISTS "Public view series" ON public.series;
CREATE POLICY "Public view series" ON public.series FOR SELECT USING (true);

DROP POLICY IF EXISTS "Public view episodes" ON public.episodes;
CREATE POLICY "Public view episodes" ON public.episodes FOR SELECT USING (true);

-- Políticas de Progresso (Individual)
DROP POLICY IF EXISTS "Users manage own progress" ON public.video_progress;
CREATE POLICY "Users manage own progress" ON public.video_progress
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

-- =================================================================
-- ✅ PRONTO! Agora você pode rodar o arquivo ICINEPLAY_CONTENT.sql
-- =================================================================
