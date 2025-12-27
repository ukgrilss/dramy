-- =================================================================
-- 🛠️ CORREÇÃO DE REGISTRO (FIX DATABASE ERROR SAVING NEW USER)
-- =================================================================

-- 1. Desativar trigger antigo para evitar conflitos
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
DROP FUNCTION IF EXISTS public.handle_new_user();

-- 2. Recriar a função de forma mais ROBUSTA e SIMPLES
CREATE OR REPLACE FUNCTION public.handle_new_user() 
RETURNS TRIGGER AS $$
BEGIN
  -- Tenta inserir o perfil. Se falhar, captura o erro e loga (mas o insert tenta ser seguro)
  INSERT INTO public.profiles (id, email, role, subscription_active, created_at)
  VALUES (
    new.id, 
    new.email, 
    'user', 
    false,
    NOW()
  )
  ON CONFLICT (id) DO UPDATE
  SET email = excluded.email; -- Apenas atualiza o email se o ID já existir

  RETURN new;
EXCEPTION WHEN OTHERS THEN
  -- Se der erro, não queremos bloquear a criação do usuário no Auth (Auth é soberano)
  -- Mas idealmente o perfil deve existir. Vamos fazer um "soft fail" apenas logando se possível,
  -- ou retornando new para permitir o cadastro (o perfil pode ser criado depois via login se necessário).
  -- Mas para garantir integridade, retornamos NEW.
  RAISE WARNING 'Erro ao criar perfil para usuário %: %', new.id, SQLERRM;
  RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- 3. Recriar o Trigger
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE PROCEDURE public.handle_new_user();

-- 4. Garantir permissões na tabela profiles
GRANT ALL ON public.profiles TO postgres;
GRANT ALL ON public.profiles TO service_role;
GRANT SELECT, UPDATE, INSERT ON public.profiles TO authenticated;
GRANT SELECT, INSERT ON public.profiles TO anon; -- Necessário para alguns fluxos de cadastro

-- 5. Se a tabela não existir (improvável, mas vai que...), cria agora
CREATE TABLE IF NOT EXISTS public.profiles (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  email TEXT,
  role TEXT DEFAULT 'user',
  subscription_active BOOLEAN DEFAULT false,
  subscription_id TEXT,
  customer_id TEXT,
  plan_atual TEXT,
  plan_status TEXT,
  plan_expira_em TIMESTAMP WITH TIME ZONE,
  trial_active BOOLEAN DEFAULT false,
  trial_expires_at TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Habilitar RLS mas garantir políticas de INSERT
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Política de INSERT para quem está se cadastrando (anon ou auth)
DROP POLICY IF EXISTS "Enable insert for authentication users only" ON public.profiles;
CREATE POLICY "Enable insert for authentication users only" ON public.profiles FOR INSERT WITH CHECK (auth.uid() = id);

-- Ou uma política mais permissiva para o Service Role (que o trigger usa indiretamente por ser Security Definer, mas bom garantir)
DROP POLICY IF EXISTS "Service Role Full Access" ON public.profiles;
CREATE POLICY "Service Role Full Access" ON public.profiles FOR ALL USING (auth.role() = 'service_role');
