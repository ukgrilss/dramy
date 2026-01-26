-- 1. CORREÇÃO ESPECÍFICA: "MAIS FORTE QUE O DESTINO"
-- Atualiza a capa independente do ID, garantindo que o título receba a imagem correta.
UPDATE filmes 
SET capa = 'https://vz-c2303ad7-0af.b-cdn.net/25627c66-a4b6-4693-88e2-7f3c26ae3fe2/thumbnail.jpg'
WHERE titulo = 'MAIS FORTE QUE O DESTINO';

-- 2. REMOÇÃO DE DUPLICATAS (LIMPEZA GERAL)
-- Deleta filmes sem imagem (capa NULL) APENAS SE já existir uma versão com imagem do mesmo filme.
-- Isso resolve o problema do "Papai é o Rei Vampiro" duplicado.
DELETE FROM filmes 
WHERE capa IS NULL 
AND titulo IN (
    SELECT titulo 
    FROM filmes 
    WHERE capa IS NOT NULL
);

-- 3. Confirmação
SELECT 'Correção concluída. Duplicatas removidas e Mais Forte Que o Destino atualizado.' as status;
