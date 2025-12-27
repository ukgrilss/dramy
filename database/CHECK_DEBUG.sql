-- =================================================================
-- 🕵️ SCRIPT DE DIAGNÓSTICO (DEBUG)
-- =================================================================

-- Liste os perfis para vermos se o ID foi preenchido e se a assinatura tá ativa.
SELECT 
  email, 
  id, 
  subscription_active, 
  role 
FROM public.profiles;

-- Se o campo 'id' estiver NULL, o script anterior não funcionou pro seu usuário.
-- Se 'subscription_active' estiver 'f' (false), você precisa ativar manualmente.
