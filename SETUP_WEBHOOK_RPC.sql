-- 👇 CRIA A FUNÇÃO QUE O WEBHOOK CHAMA PARA APROVAR O PLANO 👇

CREATE OR REPLACE FUNCTION handle_payment_webhook(
  p_email text,
  p_plan_slug text,
  p_transaction_id text
)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER -- Roda com permissão de Admin (importante!)
AS $$
DECLARE
  v_user_id uuid;
BEGIN
  -- 1. Descobrir ID do usuário pelo email
  SELECT id INTO v_user_id
  FROM auth.users
  WHERE email = p_email;

  -- Se não achou usuário, aborta
  IF v_user_id IS NULL THEN
    RETURN;
  END IF;

  -- 2. Ativar a assinatura no perfil
  UPDATE public.profiles
  SET 
    subscription_active = true,
    plan_atual = p_plan_slug,
    plan_status = 'active',
    updated_at = now()
  WHERE id = v_user_id;

  -- 3. (Opcional) Logar que funcionou na tabela de logs
  INSERT INTO integration_logs (integration_name, event_name, status, payload)
  VALUES ('database_rpc', 'subscription_activated', 'success', jsonb_build_object('email', p_email, 'plan', p_plan_slug));

END;
$$;
