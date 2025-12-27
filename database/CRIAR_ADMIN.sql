-- ============================================
-- PASSO 2: CRIAR USUÁRIO ADMIN
-- ============================================
-- Execute este SQL DEPOIS de criar o usuário no Auth
-- Substitua 'SEU_EMAIL_AQUI' pelo email que você usou
-- ============================================

-- Tornar usuário admin
UPDATE profiles 
SET role = 'admin' 
WHERE email = 'SEU_EMAIL_AQUI';

-- Verificar se funcionou
SELECT id, email, role, created_at 
FROM profiles 
WHERE role = 'admin';

-- ============================================
-- Se aparecer seu email com role = 'admin', 
-- está PRONTO! ✅
-- ============================================
