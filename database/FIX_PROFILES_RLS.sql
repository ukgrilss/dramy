-- =================================================================
-- 🔓 SCRIPT DE CORREÇÃO URGENTE v2
-- =================================================================

-- 1. Se a tabela PROFILES não tiver a coluna 'id', vamos checar se é 'user_id'.
--    Mas o padrão do Supabase é 'id'.

--    Vou tentar forçar o uso correto.

ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- 2. Limpar regras antigas
DROP POLICY IF EXISTS "Users can view own profile" ON public.profiles;
DROP POLICY IF EXISTS "Users can update own profile" ON public.profiles;
DROP POLICY IF EXISTS "Admin full access" ON public.profiles;

-- 3. CRIAR POLÍTICA DE LEITURA (SELECT)
-- TENTATIVA 1: Usando 'id'. Se der erro de novo, troque 'id' por 'user_id' no código abaixo.
CREATE POLICY "Users can view own profile" ON public.profiles
FOR SELECT
USING ( auth.uid() = id );  -- <<<< SE DER ERRO AQUI, TROQUE "id" POR "user_id"

-- 4. CRIAR POLÍTICA DE ATUALIZAÇÃO (UPDATE)
CREATE POLICY "Users can update own profile" ON public.profiles
FOR UPDATE
USING ( auth.uid() = id ); -- <<<< AQUI TAMBÉM

-- 5. ADMIN
CREATE POLICY "Admin full access" ON public.profiles
FOR ALL
USING ( 
  (SELECT role FROM public.profiles WHERE id = auth.uid()) = 'admin' 
  OR auth.role() = 'service_role'
);

-- DICA: Se continuar dando erro de "column id does not exist", significa que 
-- sua tabela profiles foi criada de um jeito diferente (provavelmente 'user_id').
-- Nesse caso, você precisa renomear a coluna ou ajustar este script.
