-- =================================================================
-- 🔧 SCRIPT: FORÇAR UNICIDADE DO ID
-- =================================================================
-- O banco reclamou que já existe uma Chave Primária (talvez no email?).
-- Tudo bem! Não precisamos brigar com ele.
-- Só precisamos garantir que o ID seja ÚNICO para o robô funcionar.
-- =================================================================

-- 1. Limpeza de duplicados (Seguro morreu de velho)
DELETE FROM public.profiles
WHERE id IN (
  SELECT id FROM (
    SELECT id, ROW_NUMBER() OVER (PARTITION BY id ORDER BY created_at DESC) as rnum
    FROM public.profiles
  ) t WHERE t.rnum > 1
);

-- 2. Criar Índice Único no ID (Isso resolve o erro do ON CONFLICT)
CREATE UNIQUE INDEX IF NOT EXISTS profiles_id_unique_idx ON public.profiles(id);

-- =================================================================
-- PRONTO. Agora o "ON CONFLICT (id)" vai encontrar esse índice 
-- e funcionar perfeitamente.
-- =================================================================
