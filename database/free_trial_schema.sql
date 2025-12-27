-- ============================================
-- TABELA DE CONTROLE DE TESTES GRATUITOS
-- ============================================

-- Criar tabela trial_access
CREATE TABLE IF NOT EXISTS trial_access (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  ip_address TEXT NOT NULL,
  user_agent TEXT,
  fingerprint TEXT,
  user_id TEXT REFERENCES profiles(id),
  used_at TIMESTAMPTZ DEFAULT NOW()
);

-- Índices para performance
CREATE INDEX IF NOT EXISTS idx_trial_access_ip ON trial_access(ip_address);
CREATE INDEX IF NOT EXISTS idx_trial_access_fingerprint ON trial_access(fingerprint);

-- Adicionar campos de trial no profiles
ALTER TABLE profiles
ADD COLUMN IF NOT EXISTS trial_active BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS trial_expires_at TIMESTAMPTZ;

-- RLS
ALTER TABLE trial_access ENABLE ROW LEVEL SECURITY;

-- Policy: Anyone can insert (to register trial)
CREATE POLICY "Anyone can register trial"
  ON trial_access FOR INSERT
  WITH CHECK (true);

-- Policy: Anyone can read their own trial (by IP/fingerprint)
CREATE POLICY "Anyone can check trial status"
  ON trial_access FOR SELECT
  USING (true);

-- Policy: Only admins can delete
CREATE POLICY "Admins can delete trials"
  ON trial_access FOR DELETE
  USING (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id::text = auth.uid()::text
      AND profiles.role = 'admin'
    )
  );

-- ============================================
-- FUNÇÃO PARA VERIFICAR SE TESTE JÁ FOI USADO
-- ============================================

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

-- ============================================
-- FUNÇÃO PARA REGISTRAR ACESSO DE TESTE
-- ============================================

CREATE OR REPLACE FUNCTION register_trial_access(
  p_ip_address TEXT,
  p_fingerprint TEXT,
  p_user_agent TEXT,
  p_user_id TEXT
)
RETURNS JSON
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_expires_at TIMESTAMPTZ;
BEGIN
  -- Verificar se já usou
  IF check_trial_used(p_ip_address, p_fingerprint) THEN
    RETURN json_build_object(
      'success', false,
      'error', 'Trial already used',
      'message', 'O teste grátis já foi utilizado neste dispositivo'
    );
  END IF;

  -- Calcular expiração (5 minutos)
  v_expires_at := NOW() + INTERVAL '5 minutes';

  -- Inserir registro de acesso
  INSERT INTO trial_access (ip_address, fingerprint, user_agent, user_id)
  VALUES (p_ip_address, p_fingerprint, p_user_agent, p_user_id);

  -- Atualizar perfil do usuário
  UPDATE profiles
  SET trial_active = true,
      trial_expires_at = v_expires_at
  WHERE id = p_user_id;

  RETURN json_build_object(
    'success', true,
    'expires_at', v_expires_at,
    'duration_seconds', 300
  );
END;
$$;

-- ============================================
-- LIMPEZA AUTOMÁTICA (OPCIONAL)
-- ============================================
-- Remover registros antigos (mais de 30 dias)
-- Executar periodicamente via cron job

CREATE OR REPLACE FUNCTION cleanup_old_trials()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  DELETE FROM free_trials
  WHERE created_at < NOW() - INTERVAL '30 days';
END;
$$;

-- ============================================
-- Execute este SQL no Supabase SQL Editor
-- ============================================
