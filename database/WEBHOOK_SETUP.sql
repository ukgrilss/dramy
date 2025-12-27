-- =================================================================
-- 💸 SCRIPT DE WEBHOOK UNIVERSAL (RECEBER PAGAMENTOS)
-- =================================================================

-- 1. FUNÇÃO PARA PROCESSAR PAGAMENTO (CHAMADA VIA API)
-- Esta função pode ser chamada por Stripe, Hotmart, MercadoPago, n8n, etc.
-- Endpoint: POST https://[SEU-PROJETO].supabase.co/rest/v1/rpc/handle_payment_webhook
-- Header: apikey: [SUA-SERVICE-ROLE-KEY] (NUNCA a Anon Key!)

CREATE OR REPLACE FUNCTION handle_payment_webhook(
  p_email TEXT,               -- O email do usuário que pagou
  p_plan_slug TEXT,           -- O código do plano (ex: 'monthly', 'annual')
  p_transaction_id TEXT DEFAULT NULL, -- ID da transação no gateway
  p_gateway TEXT DEFAULT 'generic'    -- Nome do gateway (stripe, hotmart, etc)
)
RETURNS JSON
LANGUAGE plpgsql
SECURITY DEFINER -- Roda com permissão total (necessário para buscar usuário por email)
AS $$
DECLARE
  v_user_id UUID;
  v_plan_days INTEGER;
  v_expires_at TIMESTAMPTZ;
BEGIN
  -- 1. Buscar usuário pelo email
  SELECT id INTO v_user_id
  FROM auth.users
  WHERE email = p_email
  LIMIT 1;

  IF v_user_id IS NULL THEN
    RETURN json_build_object('success', false, 'message', 'Usuário não encontrado com este email.');
  END IF;

  -- 2. Buscar duração do plano
  SELECT duration_days INTO v_plan_days
  FROM public.plans
  WHERE slug = p_plan_slug
  LIMIT 1;

  IF v_plan_days IS NULL THEN
    -- Fallback se o plano não existir na tabela (usar padrão mensal)
    v_plan_days := 30;
  END IF;

  -- 3. Calcular expiração
  -- Se já tiver assinatura ativa, soma ao final. Se não, começa agora.
  SELECT 
    CASE 
      WHEN plan_expira_em > NOW() THEN plan_expira_em + (v_plan_days || ' days')::INTERVAL
      ELSE NOW() + (v_plan_days || ' days')::INTERVAL
    END
  INTO v_expires_at
  FROM public.profiles
  WHERE id = v_user_id;

  -- Se for nulo (primeira vez), define agora
  IF v_expires_at IS NULL THEN
    v_expires_at := NOW() + (v_plan_days || ' days')::INTERVAL;
  END IF;

  -- 4. Criar registro na tabela subscriptions
  INSERT INTO public.subscriptions (
    user_id, plan, status, expires_at, transaction_id
  ) VALUES (
    v_user_id, p_plan_slug, 'active', v_expires_at, p_transaction_id
  );

  -- 5. Atualizar perfil do usuário (Liberar acesso)
  UPDATE public.profiles
  SET 
    subscription_active = true,
    plan_atual = p_plan_slug,
    plan_status = 'active',
    plan_expira_em = v_expires_at
  WHERE id = v_user_id;

  -- Retorno de sucesso
  RETURN json_build_object(
    'success', true,
    'user_id', v_user_id,
    'new_expires_at', v_expires_at,
    'message', 'Assinatura ativada com sucesso!'
  );
END;
$$;

-- =================================================================
-- ✅ COMO USAR?
-- Você deve configurar seu Gateway (ex: Hotmart/Stripe) para chamar esta URL:
-- POST https://[SEUA-URL].supabase.co/rest/v1/rpc/handle_payment_webhook
-- 
-- BODY (JSON):
-- {
--   "p_email": "cliente@email.com",
--   "p_plan_slug": "monthly",
--   "p_transaction_id": "tx_123456"
-- }
-- 
-- HEADER NECESSÁRIO (IMPORTANTE!!!):
-- apikey: [SUA_SERVICE_ROLE_KEY] (Pegue em Project Settings > API)
-- Authorization: Bearer [SUA_SERVICE_ROLE_KEY]
-- =================================================================
