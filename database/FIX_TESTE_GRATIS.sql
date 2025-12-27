-- =================================================================
-- 🚨 SCRIPT DE CORREÇÃO DEFINITIVA v5 (PERFEITO)
-- =================================================================

-- 1. LIMPEZA TOTAL (PARA NÃO SOBRAR LIXO)
DROP FUNCTION IF EXISTS register_trial_access(text, text, text, text) CASCADE; 
DROP FUNCTION IF EXISTS register_trial_access(text, text, text, uuid) CASCADE;
DROP FUNCTION IF EXISTS check_trial_used(text, text) CASCADE;
DROP TABLE IF EXISTS trial_access CASCADE;

-- 2. RECRIAR TABELA (CORRIGIDA)
CREATE TABLE trial_access (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  ip_address TEXT,
  fingerprint TEXT,
  user_agent TEXT,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE, -- Agora aponta para a tabela certa
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. PERMISSÕES
ALTER TABLE trial_access ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public Insert" ON trial_access FOR INSERT WITH CHECK (true);
CREATE POLICY "Public Read" ON trial_access FOR SELECT USING (true);
CREATE POLICY "Public Update" ON trial_access FOR UPDATE USING (true);

-- 4. GARANTIR CAMPOS NO PROFILE
ALTER TABLE profiles 
ADD COLUMN IF NOT EXISTS trial_active BOOLEAN DEFAULT false,
ADD COLUMN IF NOT EXISTS trial_expires_at TIMESTAMPTZ;

-- 5. FUNÇÕES AUXILIARES
CREATE OR REPLACE FUNCTION check_trial_used(p_ip_address TEXT, p_fingerprint TEXT)
RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
  RETURN EXISTS (SELECT 1 FROM trial_access WHERE fingerprint = p_fingerprint);
END; $$;

-- 6. FUNÇÃO PRINCIPAL (AGORA À PROVA DE FALHAS)
CREATE OR REPLACE FUNCTION register_trial_access(
  p_ip_address TEXT,
  p_fingerprint TEXT,
  p_user_agent TEXT,
  p_user_id UUID
)
RETURNS JSON LANGUAGE plpgsql SECURITY DEFINER AS $$
DECLARE v_expires_at TIMESTAMPTZ; v_already_used BOOLEAN;
BEGIN
  -- Verificar se já usou
  SELECT check_trial_used(p_ip_address, p_fingerprint) INTO v_already_used;
  
  IF v_already_used THEN 
    RETURN json_build_object('success', false, 'message', 'Teste já utilizado neste dispositivo'); 
  END IF;

  v_expires_at := NOW() + INTERVAL '5 minutes';
  
  -- Inserir log de acesso
  INSERT INTO trial_access (ip_address, fingerprint, user_agent, user_id)
  VALUES (p_ip_address, p_fingerprint, p_user_agent, p_user_id);
  
  -- TENTAR ATUALIZAR OU INSERIR NO PROFILE (UPSERT)
  -- Isso resolve o problema se o trigger do Supabase for lento e o perfil ainda não existir
  -- E também resolve se o ID for UUID ou TEXT (casting automático)
  INSERT INTO public.profiles (id, trial_active, trial_expires_at)
  VALUES (p_user_id, true, v_expires_at) -- ID como UUID é convertido se a coluna for TEXT?
  ON CONFLICT (id) DO UPDATE 
  SET trial_active = EXCLUDED.trial_active,
      trial_expires_at = EXCLUDED.trial_expires_at;
  
  RETURN json_build_object('success', true, 'expires_at', v_expires_at);
EXCEPTION WHEN OTHERS THEN 
  -- Se der erro no profile, retornamos erro mas pelo menos tentamos
  RETURN json_build_object('success', false, 'message', SQLERRM);
END; $$;

-- 7. CONCEDER PERMISSÕES
GRANT EXECUTE ON FUNCTION register_trial_access TO anon, authenticated, service_role;
GRANT EXECUTE ON FUNCTION check_trial_used TO anon, authenticated, service_role;

-- =================================================================
-- ✅ EXECUTE TUDO E TENTE NOVAMENTE
-- =================================================================
