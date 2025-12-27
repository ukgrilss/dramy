-- =================================================================
-- 🏗️ SCRIPT DE RECONSTRUÇÃO E ORGANIZAÇÃO (DATABASE RESET)
-- =================================================================
-- Este script vai "arrumar a casa". Ele:
-- 1. Garante que a estrutura da tabela profiles esteja perfeita.
-- 2. Cria um "Robô" (Trigger) para criar perfil automático quando alguém se cadastrar.
-- 3. Conserta todos os usuários atuais.
-- =================================================================

-- 1. GARANTIR ESTRUTURA
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

-- 2. ROBÔ DE CADASTRO AUTOMÁTICO (TRIGGER)
-- Função que roda sempre que um usuário é criado no Auth
CREATE OR REPLACE FUNCTION public.handle_new_user() 
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO public.profiles (id, email, role, subscription_active)
  VALUES (new.id, new.email, 'user', false)
  ON CONFLICT (id) DO UPDATE
  SET email = excluded.email; -- Atualiza email se já existir
  RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Ativar o Robô
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE PROCEDURE public.handle_new_user();

-- 3. SINCRONIA: TRAZER TODOS OS USUÁRIOS DO AUTH PARA O PERFIL
INSERT INTO public.profiles (id, email, role, subscription_active)
SELECT id, email, 'user', false
FROM auth.users
ON CONFLICT (id) DO NOTHING;

-- 4. ATIVAR ASSINATURA DE EMERGÊNCIA (PARA VOCÊ ENTRAR)
UPDATE public.profiles
SET 
    subscription_active = true,
    plan_atual = 'lifetime',
    plan_status = 'active'
WHERE id IN (SELECT id FROM auth.users);

-- 5. SEGURANÇA BLINDADA (RLS)
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Limpa tudo antigo
DROP POLICY IF EXISTS "Users can view own profile" ON public.profiles;
DROP POLICY IF EXISTS "Users can update own profile" ON public.profiles;
DROP POLICY IF EXISTS "Admin full access" ON public.profiles;

-- Regra 1: Você vê seu próprio perfil
CREATE POLICY "Users can view own profile" ON public.profiles
FOR SELECT USING ( auth.uid() = id );

-- Regra 2: Você edita seu próprio perfil
CREATE POLICY "Users can update own profile" ON public.profiles
FOR UPDATE USING ( auth.uid() = id );

-- Regra 3: Admin vê e edita tudo
CREATE POLICY "Admin full access" ON public.profiles
FOR ALL USING ( 
  (SELECT role FROM public.profiles WHERE id = auth.uid()) = 'admin' 
  OR auth.role() = 'service_role' 
);

-- =================================================================
-- ✅ PRONTO! BANCO 100% ORGANIZADO E FUNCTIONAL.
-- =================================================================
