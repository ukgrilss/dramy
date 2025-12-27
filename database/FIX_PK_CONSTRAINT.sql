-- =================================================================
-- 🔐 SCRIPT DE EMERGÊNCIA: CRIAR CHAVE PRIMÁRIA
-- =================================================================
-- O erro "no unique or exclusion constraint" acontece porque
-- a tabela 'profiles' tem a coluna ID, mas o banco não sabe que ela é ÚNICA.
-- Por isso o comando "ON CONFLICT" falha.
-- =================================================================

-- 1. Limpeza de segurança (garantir que não tem IDs duplicados)
DELETE FROM public.profiles
WHERE id IN (
  SELECT id FROM (
    SELECT id, ROW_NUMBER() OVER (PARTITION BY id ORDER BY created_at DESC) as rnum
    FROM public.profiles
  ) t WHERE t.rnum > 1
);

-- 2. Transformar ID em Chave Primária (Isso permite o ON CONFLICT funcionar)
ALTER TABLE public.profiles
ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);

-- 3. (Opcional) Garantir que ID não seja nulo (já deve ser, mas reforçando)
ALTER TABLE public.profiles 
ALTER COLUMN id SET NOT NULL;

-- =================================================================
-- SUCESSO. AGORA O ROBÔ DE CADASTRO VAI FUNCIONAR.
-- =================================================================
