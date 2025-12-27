-- =================================================================
-- 🔒 SCRIPT PARA RESTAURAR A SEGURANÇA (PROD MODE)
-- =================================================================

-- 1. GARANTIR QUE A FUNÇÃO DE VERIFICAÇÃO EXISTA
CREATE OR REPLACE FUNCTION check_trial_used(
  p_ip_address TEXT,
  p_fingerprint TEXT
)
RETURNS BOOLEAN
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM trial_access
    WHERE ip_address = p_ip_address
       OR fingerprint = p_fingerprint
  );
END;
$$;

-- 2. RESTAURAR A FUNÇÃO PRINCIPAL COM O BLOQUEIO ATIVADO
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
  -- 🛡️ VERIFICAÇÃO DE SEGURANÇA (ATIVADA) 🛡️
  -- Se o IP ou Fingerprint já usou, bloqueia!
  IF check_trial_used(p_ip_address, p_fingerprint) THEN
    -- Retorna falso para o front-end avisar o usuário
    RETURN json_build_object('success', false, 'message', 'Teste já utilizado neste dispositivo ou IP.');
  END IF;

  v_expires_at := NOW() + INTERVAL '5 minutes';

  -- Registra o acesso para impedir futuro uso
  INSERT INTO trial_access (ip_address, fingerprint, user_agent, user_id)
  VALUES (p_ip_address, p_fingerprint, p_user_agent, p_user_id);

  -- Ativa o trial no perfil do usuário
  INSERT INTO public.profiles (id, trial_active, trial_expires_at)
  VALUES (p_user_id, true, v_expires_at)
  ON CONFLICT (id) DO UPDATE 
  SET trial_active = EXCLUDED.trial_active,
      trial_expires_at = EXCLUDED.trial_expires_at;

  RETURN json_build_object(
    'success', true, 
    'expires_at', v_expires_at,
    'message', 'Teste grátis ativado com sucesso!'
  );
END;
$$;

-- =================================================================
-- ✅ SEGURANÇA REATIVADA!
-- Agora, quem tentar criar outra conta no mesmo PC/IP será bloqueado.
-- =================================================================
