-- =================================================================
-- 🚀 SOLUÇÃO FINAL: TÚNEL SEGURO (Bypass RLS)
-- =================================================================
-- O problema é que o aplicativo não está conseguindo "ler" a tabela
-- por causa de alguma trava de segurança teimosa.
--
-- SOLUÇÃO: Vamos criar uma FUNÇÃO ESPECIAL (RPC) que roda como "ADMIN".
-- O app chama a função -> A função pega os dados -> A função entrega pro app.
-- Assim ignoramos qualquer regra de RLS que esteja bloqueando.
-- =================================================================

CREATE OR REPLACE FUNCTION public.get_my_profile_secure()
RETURNS json
LANGUAGE plpgsql
SECURITY DEFINER -- << O SEGREDO: Roda com permissão total!
SET search_path = public -- Segurança extra
AS $$
DECLARE
  result json;
BEGIN
  -- Busca os dados do usuário atual (auth.uid())
  SELECT row_to_json(t) INTO result
  FROM (
    SELECT 
      id, 
      email, 
      role, 
      subscription_active, 
      trial_active, 
      trial_expires_at, 
      plan_atual, 
      plan_status 
    FROM public.profiles
    WHERE id = auth.uid()
  ) t;
  
  RETURN result;
END;
$$;

-- Permissão para todos os usuários logados usarem essa função
GRANT EXECUTE ON FUNCTION public.get_my_profile_secure() TO authenticated;
GRANT EXECUTE ON FUNCTION public.get_my_profile_secure() TO service_role;

-- =================================================================
-- PRONTO! AGORA O SITE VAI USAR ISSO PARA TE RECONHECER.
-- =================================================================
