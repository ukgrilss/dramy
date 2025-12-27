-- =================================================================
-- 🏆 SCRIPT FINAL (CHEGA DE ERROS)
-- =================================================================
-- O erro anterior aconteceu porque a coluna 'id' não é "Chave Primária" ainda.
-- Então o comando "ON CONFLICT" não funciona.
-- Vamos usar uma estratégia "AB À PROVA DE FALHAS".
-- =================================================================

-- 1. LIMPEZA: Remover qualquer perfil quebrado (sem ID)
DELETE FROM public.profiles WHERE id IS NULL;

-- 2. INSERIR QUEM FALTA (Usando lógica manual para não dar erro)
INSERT INTO public.profiles (id, email, subscription_active, role)
SELECT id, email, true, 'user'
FROM auth.users
WHERE id NOT IN (SELECT id FROM public.profiles); -- Só insere se NÃO existir

-- 3. ATIVAR TODO MUNDO (Poder total)
UPDATE public.profiles
SET 
  subscription_active = true,
  plan_atual = 'lifetime',
  plan_status = 'active',
  plan_expira_em = NOW() + INTERVAL '100 years'
WHERE id IN (SELECT id FROM auth.users);

-- 4. TORNAR O SISTEMA SÓLIDO (Transformar ID em Chave Primária)
-- Isso evita problemas futuros. Se der erro aqui, não tem problema,
-- o acesso já foi liberado nos passos acima.
DO $$
BEGIN
    ALTER TABLE public.profiles ADD PRIMARY KEY (id);
EXCEPTION WHEN OTHERS THEN
    RAISE NOTICE 'Chave primária já existe ou erro ao criar (não crítico).';
END $$;

-- =================================================================
-- FIM. Dê F5 no site.
-- =================================================================
