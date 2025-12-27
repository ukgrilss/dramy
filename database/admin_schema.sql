-- ============================================
-- CINEFY ADMIN PANEL - DATABASE SCHEMA
-- ============================================

-- 1. CREATE SUBSCRIPTIONS TABLE
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

-- 2. CREATE PLANS TABLE
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

-- 3. CREATE CATEGORIES TABLE
CREATE TABLE IF NOT EXISTS categories (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  slug TEXT UNIQUE NOT NULL,
  icon TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 4. UPDATE PROFILES TABLE (Add subscription fields)
ALTER TABLE profiles 
  ADD COLUMN IF NOT EXISTS role TEXT DEFAULT 'user' CHECK (role IN ('user', 'admin', 'editor', 'support')),
  ADD COLUMN IF NOT EXISTS subscription_active BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS plan_atual TEXT,
  ADD COLUMN IF NOT EXISTS plan_status TEXT,
  ADD COLUMN IF NOT EXISTS plan_expira_em TIMESTAMP WITH TIME ZONE;

-- 5. UPDATE FILMES TABLE (Add premium and featured flags)
ALTER TABLE filmes 
  ADD COLUMN IF NOT EXISTS premium BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS featured BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS category_id UUID REFERENCES categories(id);

-- 6. CREATE INDEXES FOR PERFORMANCE
CREATE INDEX IF NOT EXISTS idx_subscriptions_user_id ON subscriptions(user_id);
CREATE INDEX IF NOT EXISTS idx_subscriptions_status ON subscriptions(status);
CREATE INDEX IF NOT EXISTS idx_profiles_role ON profiles(role);
CREATE INDEX IF NOT EXISTS idx_filmes_premium ON filmes(premium);
CREATE INDEX IF NOT EXISTS idx_filmes_featured ON filmes(featured);

-- 7. INSERT DEFAULT PLANS
INSERT INTO plans (name, slug, duration_days, price, features) VALUES
  ('Mensal', 'monthly', 30, 19.90, '["Acesso ilimitado", "HD Quality", "Sem anúncios"]'::jsonb),
  ('Trimestral', 'quarterly', 90, 49.90, '["Acesso ilimitado", "Full HD Quality", "Sem anúncios", "10% desconto"]'::jsonb),
  ('Anual', 'annual', 365, 149.90, '["Acesso ilimitado", "4K Quality", "Sem anúncios", "30% desconto", "Suporte prioritário"]'::jsonb)
ON CONFLICT (slug) DO NOTHING;

-- 8. INSERT DEFAULT CATEGORIES
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

-- 9. CREATE ADMIN USER (IMPORTANT: Change email and password!)
-- First, you need to create this user in Supabase Auth dashboard
-- Then run this to make them admin:
-- UPDATE profiles SET role = 'admin' WHERE email = 'admin@cinefy.com';

-- 10. ROW LEVEL SECURITY (RLS) POLICIES

-- Subscriptions: Only admins can manage, users can view their own
ALTER TABLE subscriptions ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view own subscriptions"
  ON subscriptions FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Admins can manage all subscriptions"
  ON subscriptions FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.role = 'admin'
    )
  );

-- Plans: Public read, admin write
ALTER TABLE plans ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view active plans"
  ON plans FOR SELECT
  USING (active = true);

CREATE POLICY "Admins can manage plans"
  ON plans FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.role = 'admin'
    )
  );

-- Categories: Public read, admin write
ALTER TABLE categories ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view categories"
  ON categories FOR SELECT
  USING (true);

CREATE POLICY "Admins can manage categories"
  ON categories FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.role = 'admin'
    )
  );

-- Profiles: Users can view own, admins can view all
CREATE POLICY "Admins can view all profiles"
  ON profiles FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM profiles p
      WHERE p.id = auth.uid()
      AND p.role IN ('admin', 'support')
    )
  );

CREATE POLICY "Admins can update profiles"
  ON profiles FOR UPDATE
  USING (
    EXISTS (
      SELECT 1 FROM profiles p
      WHERE p.id = auth.uid()
      AND p.role = 'admin'
    )
  );

-- ============================================
-- IMPORTANT NOTES:
-- ============================================
-- 1. Run this SQL in Supabase SQL Editor
-- 2. Create an admin user in Auth dashboard first
-- 3. Update their profile role to 'admin'
-- 4. Test RLS policies carefully
-- ============================================
