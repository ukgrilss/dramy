-- =================================================================
-- 🎮 SCRIPT INTEGRAÇÃO GG CHECKOUT (ESPECÍFICO)
-- =================================================================

-- Esta função aceita EXATAMENTE o JSON que a GG Checkout envia.
-- Ela mapeia o ID do Produto par ao Plano e ativa.

CREATE OR REPLACE FUNCTION handle_gg_webhook(
  event TEXT,
  customer JSONB,
  payment JSONB,
  product JSONB,
  products JSONB DEFAULT '[]'::jsonb,
  "createdAt" JSONB DEFAULT NULL, -- Aspas pois tem maiúscula
  webhook JSONB DEFAULT NULL,
  src TEXT DEFAULT NULL,
  sck TEXT DEFAULT NULL,
  utm_source TEXT DEFAULT NULL,
  utm_campaign TEXT DEFAULT NULL,
  utm_medium TEXT DEFAULT NULL,
  utm_content TEXT DEFAULT NULL,
  utm_term TEXT DEFAULT NULL,
  "customerIp" TEXT DEFAULT NULL
)
RETURNS JSON
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_email TEXT;
  v_product_id TEXT;
  v_status TEXT;
  v_event_type TEXT;
  v_plan_slug TEXT;
  v_user_id UUID;
  v_plan_days INTEGER;
  v_expires_at TIMESTAMPTZ;
  v_raw_password TEXT; -- Variável para a senha forte
BEGIN
  -- 1. Extrair dados principais
  v_email := customer->>'email';
  v_product_id := product->>'id';
  v_status := payment->>'status';
  v_event_type := event;

  -- 2. Log simples (opcional, para debug se tiver tabela de logs)
  -- INSERT INTO webhook_logs (payload) VALUES (json_build_object('event', event));

  -- 3. Validações Iniciais
  -- Só aceitamos pagamentos APROVADOS (paid)
  IF v_status <> 'paid' AND v_event_type NOT IN ('pix.paid', 'card.paid') THEN
    RETURN json_build_object('success', false, 'message', 'Evento ignorado (não é pagamento aprovado): ' || v_event_type);
  END IF;

  -- -----------------------------------------------------------
  -- ⚠️ CONFIGURAÇÃO DOS SEUS PRODUTOS (MUITO IMPORTANTE!) ⚠️
  -- -----------------------------------------------------------
  -- Mapeie o ID da GG Checkout para o slug do seu plano ('monthly', 'quarterly', 'annual')
  
  IF v_product_id = '8g6ug9Vr7zlmU2zx0prp' THEN
     v_plan_slug := 'monthly';
  ELSIF v_product_id = 'SEU_ID_TRIMESTRAL_AQUI' THEN
     v_plan_slug := 'quarterly';
  ELSIF v_product_id = 'SEU_ID_ANUAL_AQUI' THEN
     v_plan_slug := 'annual';
  ELSE
     -- Se não bater com nada, ativamos o MENSAL por padrão (segurança)
     -- Ou você pode retornar erro se preferir.
     v_plan_slug := 'monthly'; 
  END IF;
  
  -- -----------------------------------------------------------

  -- 4. Buscar Usuário
  SELECT id INTO v_user_id FROM auth.users WHERE email = v_email LIMIT 1;

  -- 4.1. AUTO-CADASTRO (CENÁRIO B: Usuário pagou mas não tem conta)
  IF v_user_id IS NULL THEN
     -- Precisamos da extensão para criptografar
     CREATE EXTENSION IF NOT EXISTS pgcrypto;
     
     -- GERAR SENHA FORTE ALEATÓRIA (12 caracteres hexadecimais)
     -- GERAR SENHA FORTE ALEATÓRIA (12 caracteres hexadecimais)
     v_raw_password := encode(gen_random_bytes(6), 'hex');

     INSERT INTO auth.users (
       instance_id,
       id,
       aud,
       role,
       email,
       encrypted_password,
       email_confirmed_at,
       raw_app_meta_data,
       raw_user_meta_data,
       created_at,
       updated_at
     ) VALUES (
       '00000000-0000-0000-0000-000000000000', -- Instance ID padrão do Supabase
       gen_random_uuid(),
       'authenticated',
       'authenticated',
       v_email,
       crypt(v_raw_password, gen_salt('bf')), -- Criptografar a senha gerada
       NOW(), -- Já confirma o email pois pagou
       '{"provider": "email", "providers": ["email"]}',
       '{}',
       NOW(),
       NOW()
     ) RETURNING id INTO v_user_id;

     -- O Trigger 'handle_new_user' (que criamos no REBUILD_PROFILES) vai rodar agora
     -- e criar o profile automaticamente.
  END IF;

  -- 5. Definir dias do plano
  SELECT duration_days INTO v_plan_days FROM public.plans WHERE slug = v_plan_slug LIMIT 1;
  IF v_plan_days IS NULL THEN v_plan_days := 30; END IF;

  -- 6. Calcular Expiração
  SELECT 
    CASE 
      WHEN plan_expira_em > NOW() THEN plan_expira_em + (v_plan_days || ' days')::INTERVAL
      ELSE NOW() + (v_plan_days || ' days')::INTERVAL
    END
  INTO v_expires_at
  FROM public.profiles
  WHERE id = v_user_id;

  IF v_expires_at IS NULL THEN v_expires_at := NOW() + (v_plan_days || ' days')::INTERVAL; END IF;

  -- 7. Registrar e Liberar
  INSERT INTO public.subscriptions (user_id, plan, status, expires_at, transaction_id) 
  VALUES (v_user_id, v_plan_slug, 'active', v_expires_at, payment->>'id');

  UPDATE public.profiles
  SET subscription_active = true,
      plan_atual = v_plan_slug,
      plan_status = 'active',
      plan_expira_em = v_expires_at
  WHERE id = v_user_id;

  RETURN json_build_object(
      'success', true, 
      'message', 'Plano ativado com sucesso!', 
      'new_user_created', (v_raw_password IS NOT NULL),
      'generated_password', v_raw_password -- RETORNA A SENHA PARA O EMAIL
  );
END;
$$;
