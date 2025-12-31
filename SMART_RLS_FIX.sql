-- ============================================
-- VERIFICAÇÃO E CORREÇÃO INTELIGENTE DE RLS
-- ============================================
-- Este script verifica o estado atual e aplica apenas o necessário

-- 1. VERIFICAR ESTADO ATUAL DAS POLÍTICAS
SELECT 
    schemaname,
    tablename,
    policyname,
    permissive,
    roles,
    cmd,
    qual
FROM pg_policies
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
ORDER BY tablename, policyname;

-- 2. VERIFICAR SE RLS ESTÁ HABILITADO
SELECT 
    schemaname,
    tablename,
    rowsecurity
FROM pg_tables
WHERE tablename IN ('profiles', 'payment_intents', 'episodes');

-- ============================================
-- CORREÇÕES (executar apenas se necessário)
-- ============================================

-- PROFILES: Habilitar RLS se ainda não estiver
DO $$
BEGIN
    -- Verificar se RLS já está habilitado
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables 
        WHERE tablename = 'profiles' 
        AND rowsecurity = true
    ) THEN
        ALTER TABLE profiles ENABLE ROW LEVEL SECURITY;
        RAISE NOTICE 'RLS habilitado na tabela profiles';
    ELSE
        RAISE NOTICE 'RLS já estava habilitado na tabela profiles';
    END IF;
END $$;

-- PROFILES: Criar política SELECT se não existir
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_policies 
        WHERE tablename = 'profiles' 
        AND policyname = 'profiles_select_own'
    ) THEN
        CREATE POLICY "profiles_select_own" ON profiles
        FOR SELECT USING (auth.uid() = id);
        RAISE NOTICE 'Política profiles_select_own criada';
    ELSE
        RAISE NOTICE 'Política profiles_select_own já existe';
    END IF;
END $$;

-- PROFILES: Criar política UPDATE se não existir
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_policies 
        WHERE tablename = 'profiles' 
        AND policyname = 'profiles_update_own'
    ) THEN
        CREATE POLICY "profiles_update_own" ON profiles
        FOR UPDATE USING (auth.uid() = id);
        RAISE NOTICE 'Política profiles_update_own criada';
    ELSE
        RAISE NOTICE 'Política profiles_update_own já existe';
    END IF;
END $$;

-- PAYMENT_INTENTS: Habilitar RLS se ainda não estiver
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables 
        WHERE tablename = 'payment_intents' 
        AND rowsecurity = true
    ) THEN
        ALTER TABLE payment_intents ENABLE ROW LEVEL SECURITY;
        RAISE NOTICE 'RLS habilitado na tabela payment_intents';
    ELSE
        RAISE NOTICE 'RLS já estava habilitado na tabela payment_intents';
    END IF;
END $$;

-- PAYMENT_INTENTS: Criar política SELECT se não existir
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_policies 
        WHERE tablename = 'payment_intents' 
        AND policyname = 'payment_intents_select_own'
    ) THEN
        CREATE POLICY "payment_intents_select_own" ON payment_intents
        FOR SELECT USING (auth.uid() = user_id);
        RAISE NOTICE 'Política payment_intents_select_own criada';
    ELSE
        RAISE NOTICE 'Política payment_intents_select_own já existe';
    END IF;
END $$;

-- PAYMENT_INTENTS: Criar política INSERT se não existir
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_policies 
        WHERE tablename = 'payment_intents' 
        AND policyname = 'payment_intents_insert_own'
    ) THEN
        CREATE POLICY "payment_intents_insert_own" ON payment_intents
        FOR INSERT WITH CHECK (auth.uid() = user_id);
        RAISE NOTICE 'Política payment_intents_insert_own criada';
    ELSE
        RAISE NOTICE 'Política payment_intents_insert_own já existe';
    END IF;
END $$;

-- EPISODES: Habilitar RLS se ainda não estiver
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_tables 
        WHERE tablename = 'episodes' 
        AND rowsecurity = true
    ) THEN
        ALTER TABLE episodes ENABLE ROW LEVEL SECURITY;
        RAISE NOTICE 'RLS habilitado na tabela episodes';
    ELSE
        RAISE NOTICE 'RLS já estava habilitado na tabela episodes';
    END IF;
END $$;

-- EPISODES: Criar política SELECT se não existir
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_policies 
        WHERE tablename = 'episodes' 
        AND policyname = 'episodes_select_subscribers'
    ) THEN
        CREATE POLICY "episodes_select_subscribers" ON episodes
        FOR SELECT USING (
            EXISTS (
                SELECT 1 FROM profiles
                WHERE id = auth.uid()
                AND subscription_active = true
            )
        );
        RAISE NOTICE 'Política episodes_select_subscribers criada';
    ELSE
        RAISE NOTICE 'Política episodes_select_subscribers já existe';
    END IF;
END $$;

-- ============================================
-- VERIFICAÇÃO FINAL
-- ============================================

-- Mostrar estado final das políticas
SELECT 
    '=== POLÍTICAS ATIVAS ===' as status;

SELECT 
    tablename,
    policyname,
    cmd as operacao,
    CASE 
        WHEN qual IS NOT NULL THEN 'Tem condição'
        ELSE 'Sem condição'
    END as tem_condicao
FROM pg_policies
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
ORDER BY tablename, policyname;

-- Mostrar estado do RLS
SELECT 
    '=== STATUS RLS ===' as status;

SELECT 
    tablename,
    CASE 
        WHEN rowsecurity = true THEN '✅ HABILITADO'
        ELSE '❌ DESABILITADO'
    END as rls_status
FROM pg_tables
WHERE tablename IN ('profiles', 'payment_intents', 'episodes')
ORDER BY tablename;
