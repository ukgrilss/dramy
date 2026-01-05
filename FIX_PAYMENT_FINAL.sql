-- 👇 VERSÃO FINAL E CORRIGIDA (SEM updated_at) 👇

-- 1. Limpa qualquer versão anterior para evitar conflito
DROP FUNCTION IF EXISTS handle_payment_webhook(text, text, text);
DROP FUNCTION IF EXISTS handle_payment_webhook(text, text, text, text);

-- 2. Cria a função que respeita a tabela atual (sem coluna updated_at)
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
    -- Ativa o plano (SEM mexer em updated_at que não existe)
    UPDATE public.profiles
    SET 
      subscription_active = true,
      plan_atual = p_plan_slug,
      plan_status = 'active'
    WHERE id = v_user_id;

    -- Log de sucesso
    INSERT INTO integration_logs (integration_name, event_name, status, payload, transaction_id)
    VALUES ('database_rpc', 'subscription_activated', 'success', jsonb_build_object('email', p_email, 'plan', p_plan_slug), p_transaction_id);
  ELSE
    -- Log de erro
    INSERT INTO integration_logs (integration_name, event_name, status, payload, transaction_id)
    VALUES ('database_rpc', 'error_user_not_found', 'error', jsonb_build_object('email_provided', p_email, 'error', 'Email not found in auth.users'), p_transaction_id);
  END IF;
END;
$$;
