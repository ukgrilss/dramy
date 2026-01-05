-- 👇 ESTE SCRIPT REMOVE TODAS AS VERSÕES ANTIGAS PARA LIMPAR O CONFLITO 👇

-- 1. Remove a versão de 3 argumentos (se existir)
DROP FUNCTION IF EXISTS handle_payment_webhook(text, text, text);

-- 2. Remove a versão de 4 argumentos (que está causando a confusão)
DROP FUNCTION IF EXISTS handle_payment_webhook(text, text, text, text);

-- 3. Cria a versão CORRETA e ÚNICA (com o fix de email maiúsculo/minúsculo)
CREATE OR REPLACE FUNCTION handle_payment_webhook(
  p_email text,
  p_plan_slug text,
  p_transaction_id text
)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_user_id uuid;
BEGIN
  -- TENTA ACHAR O USUARIO (Ignora maiusculas/minusculas)
  SELECT id INTO v_user_id FROM auth.users WHERE email ILIKE p_email;

  IF v_user_id IS NOT NULL THEN
    -- Ativa o plano
    UPDATE public.profiles
    SET 
      subscription_active = true,
      plan_atual = p_plan_slug,
      plan_status = 'active',
      updated_at = now()
    WHERE id = v_user_id;

    -- Log de sucesso
    INSERT INTO integration_logs (integration_name, event_name, status, payload)
    VALUES ('database_rpc', 'subscription_activated', 'success', jsonb_build_object('email', p_email, 'plan', p_plan_slug));
  ELSE
    -- Log de erro (usuário não encontrado)
    INSERT INTO integration_logs (integration_name, event_name, status, payload)
    VALUES ('database_rpc', 'error_user_not_found', 'error', jsonb_build_object('email_provided', p_email, 'error', 'Email not found in auth.users'));
  END IF;
END;
$$;
