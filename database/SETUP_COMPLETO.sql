-- ============================================
-- SETUP COMPLETO ADMIN - COPIE E COLE TUDO
-- ============================================

-- Este script faz TUDO de uma vez:
-- 1. Cria as tabelas
-- 2. Insere planos e categorias
-- 3. Configura RLS
-- ============================================

-- 1. CRIAR TABELAS
CREATE TABLE IF NOT EXISTS subscriptions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  plan TEXT NOT NULL CHECK (plan IN ('monthly', 'quarterly', 'annual')),
  status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'canceled', 'expired', 'pending')),
  expires_at TIMESTAMP WITH TIME ZONE,
  transaction_id TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS plans (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  slug TEXT UNIQUE NOT NULL,
  duration_days INTEGER NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  features JSONB DEFAULT '[]'::jsonb,
  active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS categories (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  slug TEXT UNIQUE NOT NULL,
  icon TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 2. ATUALIZAR TABELAS EXISTENTES
ALTER TABLE profiles 
  ADD COLUMN IF NOT EXISTS role TEXT DEFAULT 'user',
  ADD COLUMN IF NOT EXISTS subscription_active BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS plan_atual TEXT,
  ADD COLUMN IF NOT EXISTS plan_status TEXT,
  ADD COLUMN IF NOT EXISTS plan_expira_em TIMESTAMP WITH TIME ZONE;

ALTER TABLE filmes 
  ADD COLUMN IF NOT EXISTS premium BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS featured BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS category_id UUID REFERENCES categories(id);

-- 3. CRIAR ÍNDICES
CREATE INDEX IF NOT EXISTS idx_subscriptions_user_id ON subscriptions(user_id);
CREATE INDEX IF NOT EXISTS idx_subscriptions_status ON subscriptions(status);
CREATE INDEX IF NOT EXISTS idx_profiles_role ON profiles(role);
CREATE INDEX IF NOT EXISTS idx_filmes_premium ON filmes(premium);
CREATE INDEX IF NOT EXISTS idx_filmes_featured ON filmes(featured);

-- 4. INSERIR PLANOS PADRÃO
INSERT INTO plans (name, slug, duration_days, price, features) VALUES
  ('Mensal', 'monthly', 30, 19.90, '["Acesso ilimitado", "HD Quality", "Sem anúncios"]'::jsonb),
  ('Trimestral', 'quarterly', 90, 49.90, '["Acesso ilimitado", "Full HD Quality", "Sem anúncios", "10% desconto"]'::jsonb),
  ('Anual', 'annual', 365, 149.90, '["Acesso ilimitado", "4K Quality", "Sem anúncios", "30% desconto", "Suporte prioritário"]'::jsonb)
ON CONFLICT (slug) DO NOTHING;

-- 5. INSERIR CATEGORIAS PADRÃO
INSERT INTO categories (name, slug, icon) VALUES
  ('Ação', 'acao', '💥'),
  ('Comédia', 'comedia', '😂'),
  ('Drama', 'drama', '🎭'),
  ('Romance', 'romance', '💕'),
  ('Terror', 'terror', '👻'),
  ('Ficção Científica', 'ficcao-cientifica', '🚀'),
  ('Documentário', 'documentario', '📽️'),
  ('Animação', 'animacao', '🎨')
ON CONFLICT (slug) DO NOTHING;

-- 6. CONFIGURAR RLS (Row Level Security)

-- Subscriptions
ALTER TABLE subscriptions ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can view own subscriptions" ON subscriptions;
CREATE POLICY "Users can view own subscriptions"
  ON subscriptions FOR SELECT
  USING (auth.uid() = user_id);

DROP POLICY IF EXISTS "Admins can manage all subscriptions" ON subscriptions;
CREATE POLICY "Admins can manage all subscriptions"
  ON subscriptions FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id::text = auth.uid()::text
      AND profiles.role = 'admin'
    )
  );

-- Plans
ALTER TABLE plans ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Anyone can view active plans" ON plans;
CREATE POLICY "Anyone can view active plans"
  ON plans FOR SELECT
  USING (active = true);

DROP POLICY IF EXISTS "Admins can manage plans" ON plans;
CREATE POLICY "Admins can manage plans"
  ON plans FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id::text = auth.uid()::text
      AND profiles.role = 'admin'
    )
  );

-- Categories
ALTER TABLE categories ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Anyone can view categories" ON categories;
CREATE POLICY "Anyone can view categories"
  ON categories FOR SELECT
  USING (true);

DROP POLICY IF EXISTS "Admins can manage categories" ON categories;
CREATE POLICY "Admins can manage categories"
  ON categories FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id::text = auth.uid()::text
      AND profiles.role = 'admin'
    )
  );

-- Profiles (adicionar políticas admin)
DROP POLICY IF EXISTS "Admins can view all profiles" ON profiles;
CREATE POLICY "Admins can view all profiles"
  ON profiles FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM profiles p
      WHERE p.id::text = auth.uid()::text
      AND p.role IN ('admin', 'support')
    )
  );

DROP POLICY IF EXISTS "Admins can update profiles" ON profiles;
CREATE POLICY "Admins can update profiles"
  ON profiles FOR UPDATE
  USING (
    EXISTS (
      SELECT 1 FROM profiles p
      WHERE p.id::text = auth.uid()::text
      AND p.role = 'admin'
    )
  );

-- ============================================
-- ✅ PRONTO! Agora execute o próximo passo
-- ============================================
