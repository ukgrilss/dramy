-- =================================================================
-- 🚑 SCRIPT DE SALVAMENTO DO BANCO DE DADOS
-- =================================================================
-- PROBLEMA IDENTIFICADO: Sua tabela 'profiles' não tem a coluna 'id'.
-- Isso impede que o sistema saiba quem é quem.
--
-- SOLUÇÃO: Vamos criar essa coluna e preencher ela automaticamente.
-- =================================================================

-- 1. ADICIONAR A COLUNA QUE FALTA
ALTER TABLE public.profiles 
ADD COLUMN IF NOT EXISTS id UUID REFERENCES auth.users(id);

-- 2. PREENCHER A COLUNA BASEADO NO EMAIL (Backfill)
-- O banco vai olhar o email no perfil, achar o usuario no auth e copiar o ID.
UPDATE public.profiles p
SET id = u.id
FROM auth.users u
WHERE p.email = u.email
AND p.id IS NULL; -- Só preenche quem está sem ID

-- 3. AGORA SIM: HABILITAR SEGURANÇA (RLS)
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Limpar regras antigas quebradas
DROP POLICY IF EXISTS "Users can view own profile" ON public.profiles;
DROP POLICY IF EXISTS "Users can update own profile" ON public.profiles;
DROP POLICY IF EXISTS "Admin full access" ON public.profiles;

-- 4. CRIAR AS REGRAS CERTAS (Agora vai funcionar pois temos ID)
CREATE POLICY "Users can view own profile" ON public.profiles
FOR SELECT
USING ( auth.uid() = id );

CREATE POLICY "Users can update own profile" ON public.profiles
FOR UPDATE
USING ( auth.uid() = id );

CREATE POLICY "Admin full access" ON public.profiles
FOR ALL
USING ( 
  (SELECT role FROM public.profiles WHERE id = auth.uid()) = 'admin' 
  OR auth.role() = 'service_role'
);

-- Sucesso! Agora sua tabela tem ID e segurança.
