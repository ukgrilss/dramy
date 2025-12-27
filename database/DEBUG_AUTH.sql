-- =================================================================
-- 🕵️ SCRIPT DE INVESTIGAÇÃO FINAL (CSI)
-- =================================================================

-- 1. Vamos procurar esse usuário na tabela de AUTENTICAÇÃO (auth.users)
-- para ver se ele existe de verdade e qual é o ID dele.
SELECT id, email, created_at 
FROM auth.users 
WHERE email ILIKE '%testdtis%';

-- 2. Vamos ver se tem duplicidade na tabela profiles
SELECT id, email, subscription_active 
FROM public.profiles 
WHERE email ILIKE '%testdtis%';

-- O objetivo é descobrir o ID "secreto" que está na tabela auth.users
-- para podermos copiar ele para a tabela profiles manualmente se precisar.
