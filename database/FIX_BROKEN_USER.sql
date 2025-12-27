-- =================================================================
-- 🎯 SCRIPT CIRÚRGICO: CONSERTAR USUÁRIO "testdtis..."
-- =================================================================

-- 1. Tentar achar o ID real desse usuário no Auth e atualizar forçado.
-- Usamos ILIKE para ignorar maiúsculas/minúsculas e TRIM para ignorar espaços.

UPDATE public.profiles p
SET id = u.id
FROM auth.users u
WHERE LOWER(TRIM(p.email)) = LOWER(TRIM(u.email))
AND p.id IS NULL;

-- 2. Se mesmo assim não achar (caso o usuário não exista no Auth),
-- vamos EXCLUIR esse perfil quebrado para não atrapalhar, 
-- e aí o sistema cria um novo quando você logar (se tiver trigger).
-- MAS CUIDADO: Isso apaga a assinatura. Então só rodaremos se o passo 1 falhar.

-- Vamos conferir o resultado:
SELECT email, id, subscription_active FROM public.profiles WHERE id IS NULL;

-- Se depois de rodar isso a tabela vier vazia, SUCESSO! O ID foi preenchido.
-- Se ainda aparecer o usuário com NULL, significa que ele NÃO EXISTE no sistema de login.
