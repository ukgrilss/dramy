-- =================================================================
-- 🔓 SCRIPT PARA LIBERAR TESTES INFINITOS (DEV MODE)
-- =================================================================

-- 1. LIMPAR HISTÓRICO DE ACESSOS (Reseta quem já testou)
TRUNCATE TABLE trial_access CASCADE;

-- 2. MODIFICAR A FUNÇÃO PARA NÃO BLOQUEAR NINGUÉM
CREATE OR REPLACE FUNCTION register_trial_access(
  p_ip_address TEXT,
  p_fingerprint TEXT,
  p_user_agent TEXT,
  p_user_id UUID
)
RETURNS JSON
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_expires_at TIMESTAMPTZ;
BEGIN
  -- ⚠️ COMENTEI A VERIFICAÇÃO DE SEGURANÇA ⚠️
  -- Agora ele ignora se o IP já foi usado.
  
  -- IF check_trial_used(p_ip_address, p_fingerprint) THEN
  --   RETURN json_build_object('success', false, 'message', 'Teste já utilizado');
  -- END IF;

  v_expires_at := NOW() + INTERVAL '5 minutes';

  -- Registra o acesso só para constar no banco
  INSERT INTO trial_access (ip_address, fingerprint, user_agent, user_id)
  VALUES (p_ip_address, p_fingerprint, p_user_agent, p_user_id);

  -- Atualiza o perfil (UPSERT)
  INSERT INTO public.profiles (id, trial_active, trial_expires_at)
  VALUES (p_user_id, true, v_expires_at)
  ON CONFLICT (id) DO UPDATE 
  SET trial_active = EXCLUDED.trial_active,
      trial_expires_at = EXCLUDED.trial_expires_at;

  RETURN json_build_object(
    'success', true, 
    'expires_at', v_expires_at,
    'message', 'MODO DEV: Teste ilimitado ativado!'
  );
END;
$$;

-- =================================================================
-- ✅ PRONTO! Agora você pode criar quantas contas quiser.
-- =================================================================
