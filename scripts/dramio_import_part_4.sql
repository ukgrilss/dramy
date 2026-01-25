-- PART 4 OF 5
-- ==============================================
-- DRAMIO IMPORT SQL - Generated at 2026-01-25 19:13:30.065061
-- ==============================================
ALTER TABLE filmes ADD COLUMN IF NOT EXISTS descricao TEXT;


BEGIN;

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e6412894-56b3-47bd-8fed-9649b99107af', 'A Guerreira Esquecida [DUBLADO]', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/721fb234-55c0-41bd-b1f0-5700f12ef640/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T01:26:41.409+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Guerreira Esquecida [DUBLADO]'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '35c46e50-3205-4582-a8f5-3274a9cf109c', 'Fim Da Dona De Casa Maldita', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6935d2da-ac16-412b-be67-a30ef5948c1c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T01:25:47.188+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fim Da Dona De Casa Maldita'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e0be1fb5-c1b0-4cb7-8adf-8c465bd94e21', 'Doce Veneno Chamado Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c5fc3e89-2be4-4cf3-ae2d-af971b4610be/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T01:24:58.794+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doce Veneno Chamado Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1a1fae4a-5a8f-45ef-a176-3f920edefbd5', 'Amor e Ódio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7e8b5f70-860a-4f63-8291-7709d337a5e3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T01:23:40.668+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor e Ódio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7a945dae-f981-404e-9ae9-7a01e4f7e309', 'Fortuna e Poder Em Minutos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c48e46ef-cc94-45af-a7ee-470e71f5d9ed/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T01:22:50.604+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fortuna e Poder Em Minutos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4828d766-e51a-4730-9c0e-d30da0a3edae', 'A Fera Na Coleira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aadcc4b7-1505-4bf9-9702-ea5478a8a5cf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T01:21:37.925+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Fera Na Coleira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c783c8ea-117d-44b9-80dc-a3d66fbebb73', 'Quando A Memória Solta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3b82c96e-ed0a-4356-b395-c141ebfc8e07/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T00:19:20.692+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando A Memória Solta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '63105161-1aee-4916-aae9-397847874be4', 'Herdeira Retoma Seu Tronoo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/51c43872-b771-4223-b8ee-58fa2616e826/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T00:18:17.429+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeira Retoma Seu Tronoo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3dccf129-1fa9-4f59-910d-b179930c12cc', 'Um Passo Para Trás Três Para Frente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9e5b3953-22d6-4582-adf8-9028b4aaaf22/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T00:16:54.843+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Passo Para Trás Três Para Frente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bc58a82b-b1c7-4bc6-8f58-aa8c6e950860', 'Minha Esposa Desconhecida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/63ff9609-921d-49f3-af4b-82fdf55a1fa7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-28T14:42:30.71+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Esposa Desconhecida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7991ce3a-60db-4120-a21a-c82b32624943', 'A Princesa Curandeira Do Campo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/20ccf87f-b27f-4c55-bbb1-248563262063/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-28T14:41:42.194+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa Curandeira Do Campo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c7da4b27-d8c2-4f0d-993c-a87d6178f57b', 'A Operária Que Conquistou O Sr Cordeiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd5a2a2f-a4c1-4dc8-8807-eae506694b66/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-28T14:40:55.594+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Operária Que Conquistou O Sr Cordeiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '569f9a76-14ab-46ae-8621-57ac20333b02', 'A Filha Do Bilionário Renasce', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cf6b353b-63e7-4213-bb74-016ea97c857a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-28T14:34:03.865+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Filha Do Bilionário Renasce'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '006a414a-84bc-4ea0-a6d7-bab8c2fc1077', 'No Coração Dele Sou Selvagem', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de268176-9b0a-42cc-9358-71a0f35c93f2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-28T14:32:30.025+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'No Coração Dele Sou Selvagem'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eebfb5d7-0567-43c4-84cc-32fb70f54e4c', 'O Entregador Que Virou Um Deus', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f5e14f23-4dbe-4ee7-9aa7-13149f3cf066/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-28T14:31:39.217+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Entregador Que Virou Um Deus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5ca933cb-6996-44f0-868b-d27a6d139cc5', 'Rosa De Verão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9e5b3953-22d6-4582-adf8-9028b4aaaf22/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-28T14:16:31.59+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rosa De Verão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2b8d35ee-3454-4b50-abc8-5c934d32e6bb', 'Lágrimas Que Libertaram Os Deuses', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d3db0d0e-d46b-4a66-866b-bf8a45ebbe28/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-28T14:15:42.33+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lágrimas Que Libertaram Os Deuses'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '25832c0e-96ff-4d42-bbf3-04dbc2dc20c1', 'Chamada Final Para o Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8a22195f-8a5e-4faf-b2a6-6e3985d02820/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-28T14:14:57.641+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chamada Final Para o Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1932f693-868c-4931-a19a-6044e7b7a27a', 'Divorciada Com Um Bebê Secreto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4e47fc25-ce5c-40a6-8e91-78fe7607f19a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-28T14:14:09.394+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divorciada Com Um Bebê Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd3188605-db2c-4a6b-8a8f-bac5f3dd7c0d', 'Grávida Do Alfa Raposa Prateada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c1bde5c8-b9a1-4461-a384-7ee765ccaa59/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-09-28T14:12:51.397+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida Do Alfa Raposa Prateada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '56b1debd-608e-4e6a-a662-f46d67a7dddd', 'Amante Nunca Amada A Herdeira Mandona', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3945d05c-04a5-4604-9589-09d90afdd296/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-28T13:57:00.913+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amante Nunca Amada A Herdeira Mandona'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8102f8f5-9934-45d5-8850-e0b4e91239b2', 'O Bebe Secreto Do Chefe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/21a6f518-c35f-4c50-8742-9170918e0aa7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-28T13:55:37.958+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Bebe Secreto Do Chefe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5a9e683e-0d23-445b-9073-e754fcf9d0f4', 'A Noiva Predestinada Ao Rei Alpha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2da757f2-ea4e-4815-b192-4650e18eebed/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-09-28T13:54:46.862+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Predestinada Ao Rei Alpha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '427dff13-87a4-4b93-8893-def9bacaaa2a', 'Do Tiro Ao Altar: Amor Proibido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3fc52a05-612c-47a6-8f6b-5d6510b193b8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-28T13:53:17.28+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Tiro Ao Altar: Amor Proibido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '971d31f4-9df0-4967-94c7-385c416c5786', 'Meu Companheiro é Um Licano De Rua', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/464c0980-c477-4c2a-896e-756541c40e87/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T02:49:27.915+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Companheiro é Um Licano De Rua'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '770c157c-38a4-4cf6-8af6-9fead8299290', 'Chega Não Caso! Quem Liga?/Tarde Demais Para O Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2865d0fc-5b67-435b-9380-a673ca5e703e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T02:48:13.517+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chega Não Caso! Quem Liga?/Tarde Demais Para O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9c098d14-6809-4089-97f9-0012d42a940e', 'Meu Ex Mágico Entre Presas e Garras', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/610411b6-398d-44a9-a2d0-75af852c3b84/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T02:40:18.134+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Ex Mágico Entre Presas e Garras'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9481a469-54d8-4536-a17e-65b5e4137535', 'A Chefe Legista Largou Tudo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd2785d1-b77a-4fb6-94fc-7cf71158fa83/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T02:03:53.984+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Chefe Legista Largou Tudo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '53bdac86-f7de-44a4-b117-6da343fbb502', 'Sem Coração Sem Perdão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f15bed20-26a1-4852-8c6a-e5c5e226de6f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T01:49:02.865+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sem Coração Sem Perdão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9cb7feae-c4ea-45ba-9157-84da624f0a03', 'Retorno Aos 18 Meu Reinado Sobre Mil Terras', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6d30e4a4-05c2-4e4c-8a29-fc85640179bf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T00:19:38.416+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Retorno Aos 18 Meu Reinado Sobre Mil Terras'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2e20782e-f6d5-4926-8537-85d06baa9077', 'Meu Protetor Meu Pecado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3cba645d-84c6-4a8d-88db-2e7a735094e9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T00:18:07.237+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Protetor Meu Pecado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2a785521-b064-4db3-9470-2012eff2e006', 'Charlotte e Os 7 Gostosões', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9eef68d1-a11f-4b62-b901-479e494fb46b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T00:17:10.528+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Charlotte e Os 7 Gostosões'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '070a6bae-0299-4e07-8087-cc8cd81c0e69', 'Para Meu Abismo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c541d11a-b528-4389-804f-6ba4666bb770/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T00:10:09.194+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Para Meu Abismo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '599adf00-3e5c-4b82-af7b-69a22586071e', 'A doçura Amarga De Vela Divorciada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/191bd5b7-cfbf-4676-926b-36aea68e449c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T00:09:35.972+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A doçura Amarga De Vela Divorciada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6ba2abe8-bf53-4768-a587-dd0f05d80532', 'Depois De Sair De Casa Ela Dá Uma Guinada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2af9bdf1-f07f-4959-a3d8-74508562062d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T00:08:49.078+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois De Sair De Casa Ela Dá Uma Guinada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1866ba6a-40fe-47e5-94ae-a06afe51d215', 'A Última Faísca Entre Nós', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/157d3390-d4bb-4dd1-99d3-750952f3d3ee/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-27T00:05:38.391+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Última Faísca Entre Nós'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9f356dc6-b395-4f31-8ffe-5e2d9dad70d0', 'A Encantadora é a Herdeira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a14b312b-243d-4f19-ac3f-9f9e3582de7a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-25T22:27:37.399274+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Encantadora é a Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bfdb0fc8-1539-4ce2-9d57-cb020036f542', 'Coração Em duas Promessa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e7c0ee3a-5d74-4aad-96eb-4129228fc3b5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-25T22:26:14.377336+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Em duas Promessa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '550b80cc-2698-4368-accf-efe0aace794c', 'Ex Implora Outro Me Conquista/Depois Do Divorcio Meu Ex Marido Se Apaixonou Por Mim', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bf85b1f2-bcff-416a-b319-e83c4adef00c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-25T22:25:21.091629+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ex Implora Outro Me Conquista/Depois Do Divorcio Meu Ex Marido Se Apaixonou Por Mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b5dacccf-8a6a-4eb1-b44f-45abd9b51ad2', 'Divorciada Agora Uma Princesa Lycan', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cf780d9a-8015-4512-a0df-b32708109842/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-25T22:24:28.327838+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divorciada Agora Uma Princesa Lycan'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ae0f3c0f-921b-417b-9eb3-aec728b3fcd3', 'A Vilã Que Virou Queridinha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/046b8671-be22-4bb2-9b5f-3dc59b43ce0f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-25T22:23:28.848975+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vilã Que Virou Queridinha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'acc4be70-b4e7-4ac2-92e0-dd5060ed24f8', 'Noiva Virgem Do Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aa0ffc12-100c-4f42-8a6a-4c304edab201/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-09-25T22:22:40.308318+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Virgem Do Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fbf1ac6d-10a0-414d-a10e-b6575eadadf7', 'Yes Chef', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d7b39cc0-c6e0-4b1a-908a-aefecadc6049/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-25T22:21:51.719823+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Yes Chef'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '22b9c0ac-4073-4812-ae6d-5472a38337a2', 'Milionário Disfarçado De Gigolô', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ed1e96d8-7a7d-467f-9c05-6c74287941f6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-25T22:20:28.035251+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Milionário Disfarçado De Gigolô'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'af56da47-b378-4530-af87-ab95fa17d286', 'Médica Moderna Vai se divorciar Do Infante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b60b27ec-6a3c-45a9-86af-18840a42ec12/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-25T22:19:32.975839+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Médica Moderna Vai se divorciar Do Infante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8708a5b6-4942-4022-bb7d-c824247fed45', 'Ela e a Primavera Vem Juntas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/83178460-765b-4d34-be49-1f8fa6d57549/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-25T22:18:36.660833+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela e a Primavera Vem Juntas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e689c861-6504-496e-93d2-a8c2e2124c62', 'Guerra Em Casa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a8a30ecf-0fac-4d9e-96c9-2b342f3fe345/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:58:03.288606+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Guerra Em Casa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eb45c159-b962-499b-97db-ada6fa55138e', 'Rotas Paralelas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3bb272fc-c152-4684-afdf-d644024fb77f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:55:31.13509+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rotas Paralelas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8d590f9d-c3cc-4fb6-bba2-96cd8cb05936', 'Não Posso Esquecer Me De Ti', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1f2881e0-95ba-4cbe-9405-e023a6679b71/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-24T22:40:15.669338+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Posso Esquecer Me De Ti'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '23980a47-7888-43d1-9df3-6816e978626d', 'Meu Bilionário Implacável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3d112139-f068-4e4e-b8a3-341480f1efa1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:39:36.125178+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Bilionário Implacável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '155e3d62-ad0b-4650-9a3e-d51c27fecf5f', 'Meu amante Agente Secreto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/92f0d0be-6830-455d-a579-2d69744c582e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2025-09-24T22:38:48.029453+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu amante Agente Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1c9c5756-bef8-4d57-b595-43cff647c7e0', 'Atravessa Meu Coração Meu Dono Mafioso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/53723ab5-7ef0-417d-89d6-66cafc4e0eb9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:37:37.189829+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Atravessa Meu Coração Meu Dono Mafioso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ab78ad2d-f23a-4647-9fac-4b9d3a966b90', 'Guardiões De Dia Amantes A Noite', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/556db15b-0dc9-4f7f-8df9-f599b569953a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2025-09-24T22:36:48.913621+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Guardiões De Dia Amantes A Noite'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6d5b84c7-1c95-4755-b2dd-44a960711a3b', 'Detetive Secreta Tem Queda Por Criminoso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cd50013f-0074-49ef-bcca-a438519c9841/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:29:21.489474+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Detetive Secreta Tem Queda Por Criminoso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bb515f57-69ef-4d84-a283-e2ff3c86f68e', 'Amor Médico', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5a13b41b-58e9-4af5-9aae-95bd452a1b88/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:24:00.035979+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Médico'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9df50907-cf7b-4680-9b9d-055989a4fb38', 'Ascensão Do Pequeno Mestre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2e192204-dfd4-48d9-af1e-e7bc0e6c4e42/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:23:10.110935+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ascensão Do Pequeno Mestre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eeb7e862-4e41-4797-b22a-d81a5d2da7c5', 'O Perdão Morreu Com Meus Pais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/78824572-042d-4905-b699-30c7b120a15b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:22:17.43822+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Perdão Morreu Com Meus Pais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b9d14ddb-712e-4050-92a8-fff6ca51f421', 'Depois da Geada, a Última Luz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/22d9eb87-35d7-4205-997e-6d9c96bd3908/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:15:51.026389+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois da Geada, a Última Luz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a4fedea5-5d23-4908-8135-de092a12c297', 'Lua De Mel De Verão Com Meu Bilionário Secreto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4a9d7224-80e6-4688-a012-61f98f57eeb7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T22:15:00.397662+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lua De Mel De Verão Com Meu Bilionário Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '85450002-0189-4eb2-a5bc-1bf8460c4d8e', 'Quando O Ódio Vira Amor / O Dia Em Que O Amor Morreu/ Presos a Um Amor Impossível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5e7bb7f1-2acf-4494-b141-310c3372eaca/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T16:37:07.290743+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando O Ódio Vira Amor / O Dia Em Que O Amor Morreu/ Presos a Um Amor Impossível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5197b264-9fdb-4470-8079-1c12d5fb1f89', 'Amor Destinado: Case Comigo Novamente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f30f75f8-bc8e-4c77-8a34-e5a6a8a2a058/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T16:32:03.462799+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Destinado: Case Comigo Novamente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '54b49b89-9ab7-4390-83f7-1973757cf025', 'Depois Da Chuva Não houve Reencontro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/83f31a8e-31a3-4ff6-99f4-1ab0d8b16efc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T03:40:17.415641+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois Da Chuva Não houve Reencontro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b904e235-12fe-4d47-9f95-b7b69065cf64', 'Princesa Mimada Pela Família Rica', NULL, 'Li Zhao, a princesa do Grande Xia, era uma heroína com inúmeras conquistas militares, mas seu poder despertou o temor do imperador, que tramou uma emboscada no palácio para eliminá-la. Seu marido, Xie Zhi''an, sacrificou-se para protegê-la, e ambos pereceram na armadilha. Ao abrir os olhos novamente, Li Zhao descobre que reencarnou como uma senhora rica nos tempos modernos. Agora, ela tem um marido distante, mas idêntico ao seu amado de outra vida, e uma concubina intrometida que vive a atormentá-la. Como uma princesa, ela não pode aceitar ser subjugada. Assim, embarca em uma jornada para reorganizar a família rica, ganhar dinheiro e lidar com um casamento por contrato no mundo moderno.', 'https://vz-c2303ad7-0af.b-cdn.net/7a4f6186-f4fe-449a-bd96-8d44fefa5b06/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T03:39:21.941952+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Princesa Mimada Pela Família Rica'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ab815e9f-359a-4cd4-aa49-7c1bae2c2387', 'Meu Marido Agente Secreto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3be3affd-b64b-458e-80de-f2cfb525ad58/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2025-09-24T03:33:24.729546+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Agente Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '78066696-4f6b-4bcb-8043-84c266526445', 'O Amor Que Chegou Tarde', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1ec56534-7db3-4b67-95c2-387c8adb3aca/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T03:16:57.034238+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Que Chegou Tarde'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '89435dfa-2fb1-4b55-a2bb-d905286ab583', 'Protesto eu Não Sou Gay', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c760e45b-b4c4-4118-b08e-d88f4b45a1ba/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''blgl'']', '2025-09-24T03:07:08.286145+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Protesto eu Não Sou Gay'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '56ed0ea2-2f3c-4533-b632-2c5148afb19e', 'Como Lidar Com O Tio Selvagem Do Meu Ex', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/392e5ecc-0266-4fa3-845d-88baf62a9036/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T02:30:25.738613+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Lidar Com O Tio Selvagem Do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6bec4edc-c247-4bed-9243-51c6be40556e', 'Doce Como Tina', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/63d2ebb5-8777-42e4-9a52-b717194bdeea/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T02:19:37.908873+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doce Como Tina'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0b3877b6-674b-477d-9433-597ee208fd49', 'A Princesa Do Futuro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7d17640f-1a30-408f-80dc-f37f0e514688/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T02:16:22.169096+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa Do Futuro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '059b04a0-3406-4f2b-961d-38a17990d36a', 'Destinada ao Meu Alfa Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/acfc8a04-c440-4a89-87ef-d86b354d890f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-09-24T02:15:25.399731+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destinada ao Meu Alfa Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd1e46ade-9cf6-4c1c-aab0-14a6c82db70c', 'Fogo Entre Nós', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/92cb444b-8dac-4501-a134-98b1a6a5955f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T02:14:16.443515+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fogo Entre Nós'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '76ffe45f-a62f-4454-a500-5097f8b42f94', 'A Princesa Mimada Pela Família Rica', NULL, 'Li Zhao, a princesa do Grande Xia, era uma heroína com inúmeras conquistas militares, mas seu poder despertou o temor do imperador, que tramou uma emboscada no palácio para eliminá-la. Seu marido, Xie Zhi''an, sacrificou-se para protegê-la, e ambos pereceram na armadilha. Ao abrir os olhos novamente, Li Zhao descobre que reencarnou como uma senhora rica nos tempos modernos. Agora, ela tem um marido distante, mas idêntico ao seu amado de outra vida, e uma concubina intrometida que vive a atormentá-la. Como uma princesa, ela não pode aceitar ser subjugada. Assim, embarca em uma jornada para reorganizar a família rica, ganhar dinheiro e lidar com um casamento por contrato no mundo moderno.', 'https://vz-c2303ad7-0af.b-cdn.net/c6bb0e6b-76a2-46fc-96d8-d0bd1e6139fd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T02:11:51.68524+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa Mimada Pela Família Rica'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b71f9540-8e33-43ad-a18d-44f826e50a05', 'Entre Amor e Desprezo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/80553bca-8743-4972-a4a1-862fb3bedec7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-24T02:09:52.145245+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Entre Amor e Desprezo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '39d12533-4aca-4758-a175-ab4d81201762', 'A Herdeira Pôs O Marido Na Lista Negra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c306cce0-5290-4731-81e0-770a770e2ccb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-22T22:17:36.366747+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Pôs O Marido Na Lista Negra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8dbc0dbd-7068-4d2a-a2b0-d3e020e0a326', 'O Homem Por Trás Do Uniforme/Esse Segurança é Invencível/Imbatível Meu Guarda costas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/64de0da9-ece2-4fee-851f-35e9dc7d7775/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-22T22:16:33.370551+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Homem Por Trás Do Uniforme/Esse Segurança é Invencível/Imbatível Meu Guarda costas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c93fbdbe-cbe0-48b3-b2d2-6ae4d0fa9120', 'A Noiva Caipira Do Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6fd5032c-9639-4e00-a484-03d2cddc8074/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-22T22:13:22.06199+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Caipira Do Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7143396b-a66f-4c7c-b550-dce409a2ae56', 'O Amor Plus Size Do MVP', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7ade0dd2-4e7a-4e55-a6ab-00c9822714e4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-22T22:10:09.03526+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Plus Size Do MVP'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5de836e3-f085-45c1-9aee-656e98d641c4', 'Mãe Solteira Por Engano Esposa Do CEO Por Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d309aaa5-8d6f-417b-bc6b-2b31fbed3ddd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-22T21:52:27.023464+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mãe Solteira Por Engano Esposa Do CEO Por Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a8ad27fe-0a70-4ad7-a364-5511cd548cf4', 'O Amor Quase Sempre Triste', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ef2e0595-5f54-4d4d-a95d-5b6032576a34/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-22T21:51:24.14577+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Quase Sempre Triste'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3cee7caa-6227-46db-945f-5cfed181ceec', 'Noiva Do Mafioso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1cc27389-cfde-4d64-b8a4-cd61df54dbc1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-22T21:50:20.400877+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Do Mafioso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f1bb2a5f-aadd-4c35-818a-48fb47325e3e', 'Sol Após Cinzas/Promessas De 7 Anos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/99ca64ea-baf0-43aa-8d56-49e256a15a49/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-21T22:38:47.510049+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sol Após Cinzas/Promessas De 7 Anos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bfa6cf31-dcf4-4f0c-b924-ea589f84a180', 'Acabou Perdendo O Amor Sincero', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/313c6af6-fb8a-474a-afaa-4c7952407118/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-09-21T22:37:57.352451+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Acabou Perdendo O Amor Sincero'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bedb76fd-62b0-40d5-9368-8929da23c8a8', 'Meu Marido Falso De Nocaute', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d64fdb4e-4466-4aca-8530-086aadf62d93/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-21T22:06:02.486374+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Falso De Nocaute'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd63f3d6e-1542-42dc-be92-dba0c1fcf96b', 'Contratada Para Obedecer', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a0c28115-9331-4bee-bf29-0583d68d3982/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-21T22:04:36.211661+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Contratada Para Obedecer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '695f9395-942d-4e4d-9a7d-91be5ff4047f', 'Noiva Para Lúcifer', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9030f81b-076e-4986-88b4-426cd0445049/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-21T21:59:09.097027+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Para Lúcifer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c8fb1713-a472-4d0b-b85b-7b2aa62232a0', 'Depois De Uma Noite Quatro Bilionários Me Mimam', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4434af78-183d-4ca4-8dee-c9389ae580d0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-21T14:24:29.77903+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois De Uma Noite Quatro Bilionários Me Mimam'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5df7b35c-e638-43ca-b835-76d1ccf0aa1c', 'Falso Casamento Dois Chefes', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8d59e636-82c6-4d40-8f47-4c66782e9b3d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-20T21:53:17.023446+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Falso Casamento Dois Chefes'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'af40e080-da5b-4d79-a8ab-c1a8dfe728d8', 'Sr Leo Quer Voltar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2f2a1013-8095-4aa0-b5be-04b3cd8c051f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-20T21:43:53.094692+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sr Leo Quer Voltar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fa5e39a5-f138-4763-a50f-89aa9f9203bb', 'O Amor Desce Com Benção E Barriga', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cf790821-d1ba-4d37-ba33-58e77936d04c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-09-20T21:41:25.442873+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Desce Com Benção E Barriga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd950e259-1988-447c-a641-020ba2c0057f', 'imortal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7c5b52e3-4cfe-4ae9-b4d7-00d79de13f32/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-20T21:29:17.254234+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'imortal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7e2ef13a-abb6-42be-b2a8-e5ae5b88501b', 'Mãe Guerreira Desencadeada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de2c7f28-4d0e-4484-9200-ee9e4432c952/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-20T21:23:12.949718+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mãe Guerreira Desencadeada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6b9f65f6-14bb-4aa3-a90a-bba917b206a9', 'A todo Vapor Rumo Ao Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/23c4c721-ceac-48d4-b32d-ac3d440d8dcb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-20T21:20:26.781921+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A todo Vapor Rumo Ao Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7f3d51ae-aa66-42ee-9b33-80d88c333320', 'Segredos Sob Luvas De Seda', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/84b64305-ca5a-4845-a004-9bf1a4beb0b8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-20T20:57:20.663091+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segredos Sob Luvas De Seda'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ec85dc0c-f116-48ab-90bd-e66c22f8e78f', 'Virgem Do Vôlei', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4b6f36ef-2bb1-4479-904a-e191feef8c30/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-20T20:56:27.194854+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Virgem Do Vôlei'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bd362035-4e91-4793-bce1-da0dfffebedb', 'Você é Tudo O que Eu Quero', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fef9a5b6-9b8a-4f02-9961-4294279e84df/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-19T23:02:06.703946+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Você é Tudo O que Eu Quero'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5b28284c-d4bc-49e0-93b6-977f030ef113', 'Laços De Sangue', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5200c561-4ac8-45e4-b264-9be87b0c5653/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-19T20:21:30.635645+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Laços De Sangue'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9effb126-ebda-4111-af81-efcda0686e85', 'A Paris Errada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/04a88fdb-a617-45f3-97d6-cccc13425b94/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-19T20:20:28.312678+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Paris Errada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9fb53d01-f5a8-41e4-80c7-b0bee24ab47d', 'Herdeira Sheeran Retorna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd62928d-ba1b-4abc-97e3-71e91028a6bb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-09-19T20:12:00.645316+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeira Sheeran Retorna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dc8a7a49-9bcf-4e43-b12a-d444a0917095', 'Já Tivemos Uma Casa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2a727643-75c4-4818-8a78-33756631ce89/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-19T20:10:38.743646+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Já Tivemos Uma Casa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'befe385f-8dd0-4b97-9147-fc62e4b86ab4', 'Reconquistando A Minha Ex Bilionária Esposa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6e406ae7-89d2-4dfc-925c-0df5f8825b55/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-19T20:09:27.648832+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reconquistando A Minha Ex Bilionária Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fc811959-e10f-43bf-9b08-bd5e30fb4e2b', 'Três Bênçãos Imperiais A Ascensão Da Fênix', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2e5794e2-0515-4cd0-9e19-1ddeae263bca/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-19T20:07:55.482684+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Três Bênçãos Imperiais A Ascensão Da Fênix'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '914242be-732b-41c9-9091-3bdc7d6ca78d', 'Amor Em Dobro Pacto Dos Gêmeos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d3d87797-2b54-4cce-a0ae-0f810077c126/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-19T20:06:33.93232+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Em Dobro Pacto Dos Gêmeos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2f67830d-5b2c-477c-b48b-4f7c851f29e8', 'Voltei Mas O Amor Nunca Foi Embora', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/24b934b3-9bcc-4b1b-b1c4-819db032cf80/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-19T20:01:59.143122+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Voltei Mas O Amor Nunca Foi Embora'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c3bdcf39-eca8-47a7-bfaf-fe2cd1564ecc', 'Sem Perdão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ad594e20-251c-4ef5-9894-28e9929f914c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-19T19:28:31.420566+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sem Perdão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dadafedd-093c-4b1e-90c9-2aa94f289726', 'Capturar o Pai Milionário', NULL, 'Agildo, disfarçado como taxista para investigar a morte da mãe, vive uma noite inesperada com a poderosa CEO Hilda. Anos depois, ela reaparece com uma filha, Emília, e propõe casamento. Mas a vida da menina é posta em risco pela própria família de Hilda, e Agildo a salva no último momento.', 'https://vz-c2303ad7-0af.b-cdn.net/69d8d852-05d7-456b-af49-6d096b1e2c5e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T22:11:02.604196+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Capturar o Pai Milionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '93797a4b-7e66-4f3d-8ff3-dceaeed4f1fb', 'Divórcio General De Rosto Frio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1ebe6244-a0de-4818-84bc-2ecfe2965863/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-18T22:09:37.939524+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divórcio General De Rosto Frio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2019f961-ce04-467a-be5e-620442272ada', 'Cego De Paixão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d211ef48-3ffd-4ec0-9f3b-31d9288ff970/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T22:05:23.825722+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cego De Paixão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '216af159-00dd-4031-b366-e32446ccdac1', 'Sob O Gelo Do Amor Floresceu A Dor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/333c05a0-7909-4e34-959d-8be823e48d50/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T22:04:24.256235+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sob O Gelo Do Amor Floresceu A Dor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '035703db-c2f9-459e-98f7-196085749522', 'Meu Inimigo Me Engravidou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/71b2b750-817e-43f9-89e1-1e625ac05ab0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-09-18T22:00:57.22595+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Inimigo Me Engravidou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cad8148c-7ebb-4ffe-959c-77709d65fd13', 'Esposa Inesperada Bela Adormecida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fef4e009-b22d-48b7-85ca-04c4c6714cc6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T21:59:46.941493+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa Inesperada Bela Adormecida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4798aedc-6b4a-4178-9006-9ef8bb0c1279', 'Rosa De Diamante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0ccd7b82-4c03-4428-a3b7-9e99efe501ec/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T21:29:11.030282+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rosa De Diamante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fd04bfa8-b595-4980-adbb-e7124eaccf32', 'O Preço Da Culpa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b3ebfe4c-1ef8-45ee-a2e8-8b4de1f38c21/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T21:25:03.686114+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Preço Da Culpa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e363215f-12d2-49ec-99bd-5af9cfcb2664', 'Mimada Pelo Meu Marido Bilionário Protetor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5c86d882-0bcb-4ae5-bfa3-680b75b513ca/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T21:24:14.96013+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mimada Pelo Meu Marido Bilionário Protetor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '10eff7e1-a865-4b6d-8fe2-98f6bc41b92d', 'Forçados A Casar Decidimos a Amar/Fim De Semana Exclusivo: Seu Amor Incessante/ O Caminho Da Silva Até o Seu Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7204798c-7c63-41b5-ae4a-dc85731f861b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T21:23:20.88547+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Forçados A Casar Decidimos a Amar/Fim De Semana Exclusivo: Seu Amor Incessante/ O Caminho Da Silva Até o Seu Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ee66c40d-6350-4b1c-827f-f5be6acaf43f', 'O Poder Do Conhecimento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b9d7406d-53db-4247-8229-49fd3692c641/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T21:21:45.478872+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Poder Do Conhecimento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '19a67184-5cdd-4bcd-a8ec-f1511c6d44bf', 'Jogo Sujo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e672f021-12c6-470c-b4c9-e07e2291893b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2025-09-18T21:20:32.045202+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jogo Sujo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '90d0fcbb-3df9-42ba-9bb9-a4d8e664abb0', 'Odiosamente Sua', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/092f3168-7a2a-4de7-833a-b71a54638747/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T21:10:20.543928+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Odiosamente Sua'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9f6d1c52-f13d-43cf-950a-def317c2840a', 'Grávida Dos Seus Trigêmeos, Sendo Sua Esposa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ed065e2d-eeeb-43ef-b558-f2117c9807a2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-09-18T21:09:01.547722+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida Dos Seus Trigêmeos, Sendo Sua Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a9a8df7a-21ab-4188-9d3a-8dd28e8c845b', 'Cores Românticas Do Casamento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/34373f94-1619-4814-bf6d-aa47cceea921/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T02:13:43.588675+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cores Românticas Do Casamento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f02c1602-13f5-4444-8960-b1702d0ccf70', 'Casei Com a CEO Por Engano', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a5869aa0-8a52-433f-95df-956633c05a43/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-18T01:18:25.068766+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casei Com a CEO Por Engano'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e48c9ac3-61e7-409e-a2c2-3db28b670ae0', 'Quando Te Encontrei / Feliz Dia Dos Namorados', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b585a9fd-e214-4b40-b086-f4e621cc3438/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-18T01:16:42.666682+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando Te Encontrei / Feliz Dia Dos Namorados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e8a0ddd7-2e18-4e8e-8912-b3c1a30b38e4', 'Gênio Médica Não é Alguém Para Mexer', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8c3df87d-7846-4f82-b582-66206fbbedfe/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T21:06:56.242995+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Gênio Médica Não é Alguém Para Mexer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '554d2033-f878-4750-90e2-3c3cd261bb54', 'Da Queda Nasce a Ascensão/Reunião De Mentira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6aabade0-8c8e-4e46-8557-8ffc6b749cc0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T20:57:15.176122+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Da Queda Nasce a Ascensão/Reunião De Mentira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '97622062-e5fa-4601-9b3c-5c3a2580dddd', 'Adeus Após 99 Perdões', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/592dfbe7-3a53-4f8c-8409-31868a89e6b6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T20:33:06.627421+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Adeus Após 99 Perdões'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c731d443-a54e-4f5e-87af-0ba3649f6b34', 'A Vingança Da Herdeira Descartada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3bd35a2e-8efe-4eaa-9fb9-6732231f9bc6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T20:27:33.285285+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança Da Herdeira Descartada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0fecfefa-fe18-498b-8c94-298a6081e03c', 'Caminho Do Recomeço/ O Quão Traiçoeiro é O Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c31ff459-0cc2-45d6-ac20-4dbd3f75c054/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T19:52:57.48349+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Caminho Do Recomeço/ O Quão Traiçoeiro é O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '653d9fa8-1350-4027-9e3d-d9de6e615ec4', 'O Bilionario Viciado Em Sexo e Sua Terapeuta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/af336180-e3e6-4474-9808-8b7a0ebed1f8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T19:42:30.47047+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Bilionario Viciado Em Sexo e Sua Terapeuta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '108099e6-3e44-4d56-91cf-7cedf117733a', 'Afogamento De Paixão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9440087f-3058-4253-8e51-9dd08c54412f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T18:15:08.327129+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Afogamento De Paixão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cb624ea6-096a-4b76-af32-aef45d1b9731', 'Paixonite Do Interior: O CEO Quer Meu Tutorial De Novo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e30136d3-5a9c-43bf-9af2-74265cc4a65e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T18:13:39.905146+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Paixonite Do Interior: O CEO Quer Meu Tutorial De Novo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e3f588ff-e61b-4b55-b2df-7db866ea0017', 'Meu Marido Cego é Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fc59bced-f0d1-474c-b82f-1d7c31815422/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T17:56:40.047891+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Cego é Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '51a7f036-d617-42bb-845a-ea64625fc837', 'Chefe Da Máfia e Sua Rosa Branca', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de8e7443-922b-4ad6-a03f-2f658cb6f77d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-17T17:55:44.24364+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chefe Da Máfia e Sua Rosa Branca'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f4efc962-a3aa-4e9c-a1d1-2c4481d09a42', 'Destinado Ao Meu Inimigo Meio Irmão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5739ff2f-bafe-4ac3-bb0f-f337085a9f95/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T17:54:11.501608+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destinado Ao Meu Inimigo Meio Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1821d83d-0777-4a6c-a0bf-28f98d8aba39', 'A Gênia E O Bad Boy', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ac2c89eb-d5f3-486a-8287-9f833120499c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-17T17:53:14.757372+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Gênia E O Bad Boy'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba73141f-06c4-4229-b1cf-211ff29faed3', 'Comandando o  Palácio e Os Filhos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c0fece9b-2c7c-445d-ab6f-875e88ad4c35/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-16T21:45:47.356601+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Comandando o  Palácio e Os Filhos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cb0baedc-7449-4686-a723-e8fdcdf4d0ce', 'Meus Três Irmãos Ingratos Voltam Rastejando', NULL, 'A mãe de Oriana morre quando ela tem só 6 anos e a sua madrasta abandona ela num parque de trailers. Com 12 anos, ela salva o homem mais rico do mundo, Murray Morel, sendo adotada por ele como neta. Dois anos depois, seus três irmãos biológicos encontraram-na e ela decide voltar para a sua família biológica. Por consideração ao ego deles, Oriana esconde a sua fortuna, enquanto ajuda os seus irmãos em segredo, fazendo de tudo para eles se darem bem na escola. No entanto, eles acabem sendo manipulados pela sua meia-irmã malvada e começam a maltratar Oriana. Eles expulsam-na de casa e quase a matam de porrada. Após ser resgatada pelo avô adotivo, ela finalmente enxerga quem seus irmãos realmente são. Ela rompe, então, de vez com eles e decide recuperar tudo o que era seu por direito. Depois de serem castigados, seus irmãos percebem que Oriana era a única família de verdade que tinham e se ajoelham, implorando pelo perdão dela.', 'https://vz-c2303ad7-0af.b-cdn.net/72bcf9b2-9ad8-43a0-accb-a446c44deeff/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-16T20:52:04.399369+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meus Três Irmãos Ingratos Voltam Rastejando'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd0f16f0d-7626-43f6-8692-fed1b9167380', 'Médica Moderna Reencarna Na Corte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d1eaa128-9c33-4e5f-8c50-c2a41fef7c2c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-16T20:51:21.789262+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Médica Moderna Reencarna Na Corte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'abd9d27e-76e4-42e0-b87e-9ffff200d256', 'Renascer Para O Amar O Sr perfeito', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1a35bfa0-4778-4eeb-9dce-b5494c03c5c4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-16T20:40:14.847192+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascer Para O Amar O Sr perfeito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6ec90927-c86f-422d-ade7-a5214e4cea2e', 'Casamento Arranjado Noiva Errada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8acca6b8-6394-490b-89f6-542023c7e5ed/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-16T20:34:18.861227+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Arranjado Noiva Errada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '090ce60d-6fcf-4bbb-9ea5-0abf2a53a800', 'Meus Três Irmãos Ingratos Voltam Rastejando', NULL, ':A mãe de Oriana morre quando ela tem só 6 anos e a sua madrasta abandona ela num parque de trailers. Com 12 anos, ela salva o homem mais rico do mundo, Murray Morel, sendo adotada por ele como neta. Dois anos depois, seus três irmãos biológicos encontraram-na e ela decide voltar para a sua família biológica. Por consideração ao ego deles, Oriana esconde a sua fortuna, enquanto ajuda os seus irmãos em segredo, fazendo de tudo para eles se darem bem na escola. No entanto, eles acabem sendo manipulados pela sua meia-irmã malvada e começam a maltratar Oriana. Eles expulsam-na de casa e quase a matam de porrada. Após ser resgatada pelo avô adotivo, ela finalmente enxerga quem seus irmãos realmente são. Ela rompe, então, de vez com eles e decide recuperar tudo o que era seu por direito. Depois de serem castigados, seus irmãos percebem que Oriana era a única família de verdade que tinham e se ajoelham, implorando pelo perdão dela.', 'https://vz-c2303ad7-0af.b-cdn.net/72bcf9b2-9ad8-43a0-accb-a446c44deeff/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-16T20:32:23.440059+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meus Três Irmãos Ingratos Voltam Rastejando'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2f8cb95c-91df-4ce5-8680-f65487d5ec24', 'Voando Com Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0c06796d-cefd-4fff-8afa-99a95652f39a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-16T20:31:14.448754+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Voando Com Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4823415c-de5d-4ab9-901b-b57985d222b7', 'O Casamento Secreto Da Enfermeira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/66db6260-de86-43d0-aee8-347dbd5827d2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-16T20:29:03.942106+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Casamento Secreto Da Enfermeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8357bdc8-b8e8-40f3-a5ef-f4b47a7d2637', 'A Lenda Do Líder Fili', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0bb44118-f225-4565-8e4d-952b7a8cf300/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-16T20:28:26.627462+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Lenda Do Líder Fili'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '82e054b7-67e1-4b82-90f0-a5b07dc33168', 'Declarando Amor Através Da Névoa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d984deeb-3ccd-4bb4-a9d6-6bf21716b0df/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-16T00:14:26.46329+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Declarando Amor Através Da Névoa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c3acee6-36ad-4bee-b5c0-f86e6febdf90', 'Eu Era Hetero Até O Beijo Dele', NULL, 'O estudante de medicina Miles flagra sua namorada influenciadora o traindo. Para se vingar, ele arma um "caso falso", mas acaba beijando por engano o charmoso CEO, Hunter. Ele jurava que não gostava de homens, e Miles também sempre achou que fosse hétero. Mas um beijo mudou tudo…', 'https://vz-c2303ad7-0af.b-cdn.net/b83352d6-9e2d-4a1b-a2ab-fc2aa0a2a7ca/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'', ''blgl'']', '2025-09-15T22:39:03.243964+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Era Hetero Até O Beijo Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'def5bc30-8278-4792-b961-377704fd150c', 'Olha O que Você Me Fez Fazer/', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6429a5f8-61af-42f9-a524-4d4bba25f058/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-15T22:37:46.69426+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Olha O que Você Me Fez Fazer/'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd28d31a5-a162-4b50-91b6-0ae2428438b3', 'Eu Te Amo Mais Do Que A Vida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f3638a68-02ae-402a-a945-eb431cda7b16/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-15T22:32:32.550938+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Te Amo Mais Do Que A Vida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fcdc91c4-317a-4645-9f8d-cc4fcf0fa103', 'O Pão Vence O ouro Cai', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/68c8b747-407d-45ec-a9f8-07466bae1773/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-15T22:31:27.208461+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Pão Vence O ouro Cai'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '413d37fe-ea2e-4313-8387-399f773c2875', 'Papai é o Rei Vampiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7e1d0d8c-7a19-44aa-b588-e315cade5636/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-14T22:56:23.213735+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Papai é o Rei Vampiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '32dea453-b7ac-46a5-8ba7-8720a6268bb0', 'Coração Aprisionado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d93b3d35-de0d-4013-ad8d-1a0ad7921545/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-14T22:17:17.467263+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Aprisionado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b53ac82c-8012-417b-b843-8322bf3dc090', 'Apaixonando Se Por Meu Guarda Costa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0e3ff54b-f6fe-4bab-8776-31ddaac81159/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-13T23:02:56.435122+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apaixonando Se Por Meu Guarda Costa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '570a19e5-0e7d-4d04-b653-e36321013a2c', 'Desejos Queimam Devagar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/30ca9eaf-72a7-4f91-a07f-3da58de5cae2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-13T22:59:13.530582+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejos Queimam Devagar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d7b7809-8000-4b3e-b2a2-b6f6766458db', 'Volta Ao Passado: Amor Eterno/ Renascida Em 1989/ Voltei No Tempo Para Ficar Contigo/Casamento Trocado Amor Garantido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/da74e52c-34ef-4a70-b8da-fa16eab20163/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-13T22:53:45.848577+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Volta Ao Passado: Amor Eterno/ Renascida Em 1989/ Voltei No Tempo Para Ficar Contigo/Casamento Trocado Amor Garantido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7d4430ff-e2c2-4d71-a511-129c9767809c', 'Um Casamento Improvisado/A Esposa Do Bilionário Oculto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/01b0135b-afff-4b1c-81a6-7fb04c8b01c5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-13T22:46:58.364788+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Casamento Improvisado/A Esposa Do Bilionário Oculto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3f88dedb-cbd4-42be-ab74-7a7a3f036b88', 'Meu Professor Minha Obsessão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/401f8960-c324-4c30-8fc8-770b92c27e29/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-09-13T22:42:46.508827+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Professor Minha Obsessão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '20f37e71-ed33-49b6-b83b-6356c6a4d60c', 'Como O Sol Nascente/ Aurora Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/af090622-a5c9-40b4-b995-87688b370dde/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-13T22:39:26.855587+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como O Sol Nascente/ Aurora Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '456cbd59-7d00-4120-bdd9-1a07228715f1', 'Noiva Forçada O Verdadeiro Pai Aparece', NULL, 'Felipe é, na verdade, o filho perdido do homem mais rico de Aurélia. Na superfície, trabalha como faxineiro de hotel e faz previsões, mas sua verdadeira identidade é o lendário Senhor da Guerra de Aurélia. Larissa é a atriz mais famosa do país. Ela criou sozinha a filha, Estela, que sofre de um problema no coração e não consegue falar, uma menina frágil e doce. Cinco anos atrás, Felipe e Larissa tiveram uma noite juntos.Agora, Larissa o reencontra e revela que Estela é sua filha.Ao descobrir a verdade, Felipe decide assumir o papel de pai. Mas os vilões, para ganhar o apoio do Grupo Rocha, obrigam Larissa a se casar com o velho patriarca doente, e até planejam mandar Estela para um orfanato. No dia do casamento, Larissa é forçada a se ajoelhar diante do ancião debilitado, enquanto Estela sofre maus-tratos. No momento crítico, Felipe aparece, decidido a resgatar mãe e filha de forma implacável...', 'https://vz-c2303ad7-0af.b-cdn.net/3c6f02d8-6b25-4f3f-8a93-5785d7e0a7a2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-13T22:33:25.803327+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Forçada O Verdadeiro Pai Aparece'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ae0e2143-3292-4fe8-a66b-ed61c7d71279', 'Luz Na Escuridão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0ddb8ee2-3890-4cf3-8c4e-1e17127e228c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-13T22:30:53.83303+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Luz Na Escuridão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '245d07a5-4ef3-4d51-a0b3-0e8bec462b68', 'Protegendo Minhas 7 Irmãs', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/abba0f29-684c-4958-a9f5-1d2698d52bcb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-12T23:40:17.192094+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Protegendo Minhas 7 Irmãs'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c3a3fce8-e6b0-4a45-a2b8-ae8ff9fafccf', 'Mentiras No Amor Verdades No Ódio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/625994e9-236d-48c8-9339-44528a4217ab/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-12T23:31:44.622386+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mentiras No Amor Verdades No Ódio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'df1cdf01-b5ab-4045-86dd-102d312b6384', 'Do Lixo Ao  Luxo: Pais Bilionários Caindo Do Céu', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/04001a88-ead8-40ba-87ae-d5889a57764e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-12T22:40:57.651698+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Lixo Ao  Luxo: Pais Bilionários Caindo Do Céu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f3148521-1d44-44af-aa0f-9f0b3d721889', 'Renasci E Agora Eu Mando/ Novo Amanhecer/ Determinada E Forte', NULL, 'Elisa Moura foi uma estrela do mundo dos negócios — até ser traída pelo irmão Caio e pelo noivo Henrique Vidal. Entregou tudo à cunhada Bianca Lacerda, sem saber que seria o início de sua ruína. Assassinada de forma cruel, Elisa renasceu decidida a se vingar. Na própria festa de noivado, rompeu com Henrique e destruiu o plano de Bianca de entrar na alta sociedade. Mas Caio ainda estava cego. Cabia a Elisa abrir seus olhos… e provar que uma mulher forte só cai uma vez.', 'https://vz-c2303ad7-0af.b-cdn.net/8c12d7a1-a01a-4347-a5d6-da24a0b10de1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-12T22:38:55.144136+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renasci E Agora Eu Mando/ Novo Amanhecer/ Determinada E Forte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b28542d3-9ceb-4401-9fda-dfaeeb29861c', 'Herdeira Ou Amante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/987df965-b401-4ec9-a862-980cae39434e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-12T22:36:07.256125+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeira Ou Amante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9105d6cc-4781-46d3-984e-2fd76c8325e8', 'Te Amo Com O Coração Difícil De Tocar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1f145120-201e-49cb-be22-d2f7a7c9aff9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-11T23:29:59.795452+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Te Amo Com O Coração Difícil De Tocar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '85c78d91-fadd-4b05-96dc-8db9228fb5e5', 'Melhor Céu Que O Supremo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/71b36162-486a-40d6-a9ce-0a4ee4f36ffe/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-11T22:01:08.415911+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Melhor Céu Que O Supremo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '94ea6101-25a1-48c1-a31d-183983a642f9', 'A Vingança Da Empregada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7cc1f40b-2456-49de-a2bf-f2c3285e0b34/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-11T21:24:25.107203+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança Da Empregada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3334b573-b6ef-4d3b-b6d4-47cfca81f606', 'Minha Ex Mulher Flores Apos Divorcio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/40ff9254-c83c-4712-a25a-169063700c00/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-11T21:10:11.752161+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Ex Mulher Flores Apos Divorcio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '137464d7-f5e1-4f98-b166-b08b1abf366e', 'Amor Titânico Após O Renascimento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4703f09b-1118-4c31-b177-a87dca7647e3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-11T20:42:36.8269+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Titânico Após O Renascimento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '70c2af09-f4b0-44b7-9449-13d9917e7760', 'Deisy Na Câmara Da Arma', NULL, 'Daisy é enjaulada e leiloada para a sua primeira noite. No momento mais sombrio dela, o rei da máfia, Arthur, a compra por um bilhão de dólares. Ele a liberta e a protege sempre que ela está em perigo. Daisy se apaixona por ele, apenas para descobrir que pode ser um substituto para outra garota que ama margaridas...', 'https://vz-c2303ad7-0af.b-cdn.net/88066a2d-f044-4a59-931c-5579d19761f5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-11T20:37:22.798676+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Deisy Na Câmara Da Arma'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '94119e95-fa03-4851-a7b0-e1aab1135d9e', 'Sem Retorno Sob As Estrelas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c659250d-ad9f-4be8-aea1-2b1d4699499b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-11T20:34:56.022853+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sem Retorno Sob As Estrelas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c444ee0b-bb3b-4c16-8aa7-9b7791c4636f', 'Conseguir Um Marido Inestimável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9b2d9a76-bec3-4c2b-8d5a-3e8c70da8d07/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-11T20:33:44.022203+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Conseguir Um Marido Inestimável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ccf25e45-e9dc-4cd9-ab37-75c407b1d6b1', 'Babá Ex Presidiária, Pai Solteiro Bilionário', NULL, 'Recém-saída da prisão, Grace conseguiu um emprego como babá. Seu chefe, o implacável bilionário Alex Hill só se importa com sua preciosa filha. 
Grace passou no rigoroso teste de Alex e aos poucos conquistou seu coração frio, mas Grace guarda um segredo obscuro, que pode destruir tudo o que é bom.', 'https://vz-c2303ad7-0af.b-cdn.net/a5a16985-4071-47c0-b7f2-dc807b5fa138/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-10T21:36:28.193641+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Babá Ex Presidiária, Pai Solteiro Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba6e4709-f0f4-4a3a-99e7-c44223e9b116', 'Deixe Me Em Paz, O Amor Perdido Não Volta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2db0255e-cb05-4304-a3b7-1a9145d645c0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-10T21:32:34.962733+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Deixe Me Em Paz, O Amor Perdido Não Volta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0c464357-1c34-4db6-a44c-6f6a216c0476', 'Meu Irmão Da  Marinha Por Favor Leve Meu Corpo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/db34ea7a-c878-4bf1-a51a-1c8db17abaa4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-10T20:29:34.284789+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Irmão Da  Marinha Por Favor Leve Meu Corpo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '115f8221-712f-4fc5-82cb-2fe9474044d6', 'Princesa Se Casa Com O Tio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2d71cdb8-b760-4d05-bf91-d97152aa86ee/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-10T20:18:38.304434+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Princesa Se Casa Com O Tio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0b329f2f-6e06-4c35-adbb-7706220dcec6', 'Segredo Do Nosso Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/78214ce2-4542-431b-b7cd-d0cd367c98c4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-10T20:14:42.988989+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segredo Do Nosso Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e6b13e0c-ef62-41bc-87d4-4085bc9008e9', 'Uma Sexta Feira Mais Louca Ainda', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/acd069b9-432e-4c21-ad3b-08bfc8de2b0d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-10T20:11:57.805736+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Sexta Feira Mais Louca Ainda'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '93d02174-3c20-44b8-912f-c83b27aa7678', 'Adeus Em Silêncio', NULL, 'A filha do influente Grupo Almeida, Sofia Almeida, abandonou sua família e fugiu de casa para cuidar de seu namorado, Pedro Mendes, que ficou surdo após um acidente de carro. Para ficar ao lado dele, ela se disfarçou de surda e passou três anos trabalhando duro para custear o tratamento de Pedro. Após a recuperação dele, ele começa a desprezar sua antiga vida e a sentir vergonha de ter uma namorada "surda". Ele começa a se envolver com Marina Oliveira, com segundas intenções, enquanto ignora e magoa Sofia, que finalmente decide seguir em frente. Ela rompe com Pedro, aceita a proposta de casamento arranjada pela sua família e começa uma nova vida com Felipe Costa, retornando à sua vida de felicidade e luxo.', 'https://vz-c2303ad7-0af.b-cdn.net/9de4e70d-b430-4c4d-b3df-3857b123a1c9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-10T20:09:45.690652+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Adeus Em Silêncio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '17819528-e6be-4030-90bb-5bd9d1a22929', 'Um Amor profundo Como o Oceano', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ec52c3eb-65a3-4204-b892-b5f8a04e691e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-09T22:39:37.287967+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Amor profundo Como o Oceano'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3dedfe50-beea-4d3d-9292-c5b20c57d9de', 'Meu Milagre Minha Luna', NULL, 'A órfã sem lobo, Rita, se cansa do amor tóxico com o canalha do Ali, seu primeiro companheiro. Desiludida, ela o abandona e escolhe Wagner, seu companheiro de segunda chance. No caminho, desperta seu espírito de lobo, enfrenta aqueles que a machucaram e se torna uma Rainha Alfa.', 'https://vz-c2303ad7-0af.b-cdn.net/714b3cee-d14a-49fe-b374-cad6153fc569/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-09-09T22:14:22.849484+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Milagre Minha Luna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '982e1212-da6f-4a71-9096-fa649e6dc3dc', 'Não Mexa Com a Mãe Bilionaria', NULL, 'Quando Emília, a herdeira da milionária família Almeida, vai defender os direitos da sua filha Lilia no inventário, descobre que o seu marido, David, tinha outra família com uma mulher chamada Sara.', 'https://vz-c2303ad7-0af.b-cdn.net/60cc26d3-dd9c-45e8-a6bc-bfd6dfca7774/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-09T21:20:51.922979+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Mexa Com a Mãe Bilionaria'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd9038078-a464-4047-be12-29a0c5b43667', 'Apressadamente Para O Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8a2edca8-de0e-4b9f-af55-30ef74ac6962/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-09T21:17:02.2942+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apressadamente Para O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '22d9647d-b7db-4a21-a9b8-4c1bd905f9cb', 'Casamento Obrigatório ? Me livro Com Três Damas Perdidas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d3fd4d57-7c92-4f86-a9bd-bc1f6906512b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-09T21:12:33.180387+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Obrigatório ? Me livro Com Três Damas Perdidas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8454302c-e6f3-489d-bf9b-cd6a88eb5ef7', 'Renascer Para Terminar Os Três Casamentos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7a165667-56b5-4f62-9c78-a99c6294caf8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-09T21:05:40.134012+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascer Para Terminar Os Três Casamentos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6220071d-42c4-4666-9302-a663671bd9e9', 'Abra Seus Olhos Meu Marido Bilionário', NULL, 'Hailey não tem nenhum centavo e está desesperada para encontrar uma forma de pagar as caras despesas médicas de sua mãe. Sua família concorda em ajudá-la, mas com uma condição: ela precisa se casar com o bilionário Samuel Trent, que está em coma após um grave acidente de carro. No entanto, não vai demorar para que o temido Samuel Trent acorde e descubra que está noivo de uma completa desconhecida.', 'https://vz-c2303ad7-0af.b-cdn.net/d15d057c-fbd7-4c8c-9747-7e8d7d120466/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-09T20:59:37.397503+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Abra Seus Olhos Meu Marido Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a8f6d123-b8eb-4191-8ee5-6e8c3afd4f79', 'Toda a Família Mima a Mimi', NULL, 'Seis anos atrás, Yara Souza foi falsamente acusada de ter se relacionado com Jean Santos, e a notícia da gravidez fora do casamento dela se espalhou por toda a escola. Seis anos depois, durante uma consulta no hospital com a filha Mimi Souza, Mauro Sena percebeu que a menina carregava características genéticas da família Santos, e contou tudo para Jean Santos. Quando toda a família Santos soube que Jean Santos tinha uma filha, ficou muito agitada, especialmente o avô dele, que imediatamente ordenou que Jean Santos fosse buscar a sua bisneta.Assim, Jean Santos começou a busca pela filha. Porém, devido às repetidas interferências de Íris Sena, Jean Santos sempre perdia a chance de descobrir a verdade. Depois de superar muitos obstáculos, os dois finalmente se reuniram e, enfim, ficaram juntos.', 'https://vz-c2303ad7-0af.b-cdn.net/e156cd74-5ab1-4616-a974-e9e305a6a1dc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-09T20:56:19.936898+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Toda a Família Mima a Mimi'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e540d33b-2745-423a-a8f9-912ac088fdf5', 'Cartas de Amor Não Valem Nada', NULL, 'O marido de Clara, Rodrigo, foi para o exército, alegando que precisava cuidar da viúva de seu irmão mais velho, Helena, e dos filhos que ela deixou. Ele entregou à cunhada a única vaga de acompanhante militar, deixando Clara sozinha no interior. Por fora, Rodrigo enviava três cartas de amor por mês para Clara, mas, na verdade, todo o seu salário ia para Helena... e os dois escondiam um segredo sombrio. Até que, num ano de fome, Helena e os filhos estavam confortavelmente na mansão de Rodrigo, comendo pão recheado de carne, enquanto Clara e seu filho... morreram de fome, abandonados. Mas o destino lhe deu uma nova chance. Clara voltou no tempo. Desta vez, ela não vai mais se calar. Desta vez… ela vai lutar!', 'https://vz-c2303ad7-0af.b-cdn.net/9862f6d1-c088-4fce-9726-ad01bd7fe092/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-08T23:58:32.369199+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cartas de Amor Não Valem Nada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '93dac3a7-e6c3-493c-8588-140f00b2c415', 'Meu Principe Vamos Sair Do Armario', NULL, 'O casamento de Gabriel é interrompido quando o herdeiro da máfia Sebastian, fugindo de assassinos, se esconde no armário do seu quarto de hotel. Com o reencontro deles despertando sentimentos antigos, e diante da traição de sua futura noiva, Gabriel impulsivamente se casa com Sebastian para garantir sua herança, fingindo como gay. Mas, à medida que segredos obscuros da família se revelam, o futuro deles juntos se torna incerto...', 'https://vz-c2303ad7-0af.b-cdn.net/0b226ff3-0fac-4339-ab26-01c7e7f2f30d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''blgl'']', '2025-09-08T23:08:56.941857+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Principe Vamos Sair Do Armario'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '97c6dd5a-eee7-48e3-af11-e10180872e34', 'Quando O Amor Da Pala', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/731cdcd0-4c28-4524-bebd-53f7c3d1733b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-08T22:21:32.917415+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando O Amor Da Pala'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4b7f95eb-df44-4591-b37d-6b208ab1dd35', 'Garota Do Interior VS Dono Do Crime', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/798a2a43-8c79-4fc0-8df4-f497ee225e6d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-08T22:17:59.991145+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Garota Do Interior VS Dono Do Crime'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'da17c55f-bc00-4483-a5e0-18dd31ffba25', 'Com licença Eu Sou O Big Boss', NULL, 'Kingsley é o rei secreto do Corpo do Rei e o homem mais rico da Terra, mas quando retorna do campo de batalha, sua namorada de infância o dispensa brutalmente, achando que ele é um palhaço. Como o rei de todos os homens fará ela se arrepender?', 'https://vz-c2303ad7-0af.b-cdn.net/891bd840-d01b-4e3e-82cb-bc216e46acde/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-09-08T22:14:10.386284+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Com licença Eu Sou O Big Boss'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd76cd374-a657-4dcc-bb5a-84a18bedb8ab', 'Sr Victor Me Ama Em Segredos', NULL, 'Victor Neves, o Playboy mais famoso da capital, surpreende a todos ao aceitar um casamento...', 'https://vz-c2303ad7-0af.b-cdn.net/230eb25c-ff70-4c8a-9048-527aed4f1c11/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-08T22:06:04.723605+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sr Victor Me Ama Em Segredos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '444ab35e-4b66-4868-8a0e-7ef7ed800408', 'Presa Pelo Amor Que Me Salvou', NULL, 'Carregando a dívida esmagadora deixada por seu pai, Yvette termina com o namorado, Archer, fingindo ter dormido com outro homem. Mas, ao persegui-la, Archer é atropelado por um carro e quase morre. Anos depois, Yvette cria em segredo o filho de Archer, enquanto ele conquista o mundo dos negócios. Quando seus caminhos se cruzam novamente, o ódio mútuo e o amor reprimido os consome como chamas ardentes…', 'https://vz-c2303ad7-0af.b-cdn.net/3f9ddb10-6c59-4e83-8544-9935c1c8bd96/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-08T22:03:02.874462+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Presa Pelo Amor Que Me Salvou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '994a533b-1acb-4961-a4e3-97a24129a5f7', 'Três Erros e Meu Pai Tá Fora', NULL, 'Ela era a herdeira dos Kingsley que abriu mão de sua coroa por amor. Karina se apaixonou por seu chefe, William, e depois de uma noite imprudente acabou grávida com o filho dele. Ele se casou com ela, mas apenas em segredo, enquanto seu coração ainda pertencia a Fiona, a mulher que jamais conseguiu esquecer. Anos depois, Fiona voltou com um filho, e William fez a escolha mais cruel: acolher outra criança enquanto abandonava a sua própria. Com o coração partido, Karina se agarrou ao pedido de seu filho Galen: “Dê a ele mais três chances.” Mas a cada chance desperdiçada por William… Karina se aproxima cada vez mais de ir embora para sempre.', 'https://vz-c2303ad7-0af.b-cdn.net/589621fa-81b1-44ca-8dbd-9cb24f49bae9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-09-07T20:34:10.591704+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Três Erros e Meu Pai Tá Fora'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e0dbba39-b002-4880-8abf-241ae843e7ce', 'O Adeus Que Sacudiu O Trono', NULL, 'O Chanceler Enzo, favorecido pelo Imperador anterior, dedicou-se ao trabalho, envelhecendo prematuramente e temendo não ser suficiente. Com a ascensão da Nova Imperatriz Rosalina, ela passa a confiar no bacharel corrupto Evaristo, querendo substituir Enzo. Enzo prometeu ao leito de morte do Imperador anterior que iria suportar Rosalina cem vezes, e só restam três agora. Após isso, pedirá demissão e se afastará para sempre.', 'https://vz-c2303ad7-0af.b-cdn.net/144dfda0-91c3-4eee-896e-9c5e2690ce44/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-06T19:55:22.659399+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Adeus Que Sacudiu O Trono'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6bbaea7a-68c6-48f4-a272-afd4c60c8d3e', 'Fugir Do Meu Marido Destinado', NULL, 'Depois de flagrar a traição do ex cafajeste, Eve faz o impensável: pega um garoto de programa na rua e... casa com ele na hora! O que ela não imaginava é que esse desconhecido era, na verdade... seu verdadeiro noivo!', 'https://vz-c2303ad7-0af.b-cdn.net/64cb7b89-3eb8-48ce-a183-406d0eca12e3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-06T19:49:48.230766+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fugir Do Meu Marido Destinado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f5fa2bd8-366d-42de-acf9-d067acb9905e', 'Flor Proibida Minha Inimiga Meu Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1ca5a7d6-bff1-4b9c-a35a-876cf8851e30/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-06T19:42:48.522691+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Flor Proibida Minha Inimiga Meu Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eebed90b-b473-4512-8131-7cf0edd585d9', 'Aterrissando no Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1f4be129-b32e-4dfa-9ae4-01b0acf83288/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-06T19:36:16.399855+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Aterrissando no Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1c475348-aeac-42f2-bc04-c33181c6bc29', 'Coroa Na Poeira a Ira Imperial', NULL, 'Sheila, uma general valente, sacrifica seu braço para salvar Ivan, que lhe promete casamento, mas foge covardemente. Dias depois, ele retorna com outra mulher, e Sheila, traída, aceita se casar com um príncipe estrangeiro por ordem imperial. No caminho, é humilhada por Ivan e sua nova noiva, que acreditam que ela está tentando roubar o casamento. Quando Sheila está ao pé da morte, o Rei de Flumina, Nando, chega como tempestade para salvá-la.

', 'https://vz-c2303ad7-0af.b-cdn.net/420d4765-9b50-4ca8-9c09-f979962f82c2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-06T19:35:02.788348+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coroa Na Poeira a Ira Imperial'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0c3dfe25-86fd-4240-bd96-e544f0879126', 'Modo Mae Ursa', NULL, 'Quando Bianca enfrenta um bullying implacável na escola, sua mãe, Lorena, se levanta para protegê-la. Desmascarando mentiras, destruindo falsas acusações e acabando com as farsas, Lorena ativa o Modo Mãe Ursa — e a justiça será feita. Ninguém escapará das consequências. Ela luta. Ela protege. Ela vence — tudo por sua filha.', 'https://vz-c2303ad7-0af.b-cdn.net/43c036e2-2843-4f64-a302-2c30983e6eef/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-06T19:29:03.088824+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Modo Mae Ursa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8c6c2a54-e301-47e2-8afe-56f3da77ec18', 'Adeus Sr Ex o Seu Comandante Está Chamando', NULL, 'Hazel Langston abriu mão de tudo pelo homem que amava, Ethan Grant. Seus contatos, sua carreira e, por fim, sua dignidade. Quando ele chega em casa após meses sem contato com outra mulher em seu braço, Hazel acorda e jura retomar sua vida. Ethan zomba: "Que diabos você está fazendo, Hazel? Eu sou o verdadeiro soldado aqui." "Para você, isso é Tenente Langston, Soldado', 'https://vz-c2303ad7-0af.b-cdn.net/6e3c4d54-089b-4d1a-af7e-7ad4290240b5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-06T19:27:55.087873+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Adeus Sr Ex o Seu Comandante Está Chamando'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fae0f530-cc51-4424-bc95-7d4f679f015c', 'De Solitária A Princesinha Da Casa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/16b82ce8-3b24-4185-8a7c-9f9ede86e8fd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-05T17:58:58.87988+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Solitária A Princesinha Da Casa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '63874802-ebed-4588-a1f7-f27b01f2ef1d', 'Silêncio Do Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e6d2a83f-db78-473f-85ce-3f63dd646e35/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-05T17:57:27.602478+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Silêncio Do Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '02b40411-18c4-4e4a-b0ab-cd562eab7019', 'Os Herdeiros Do CEO: A Fuga Da Esposa', NULL, 'Depois de uma noite de paixão, Evelyn Tomas dá à luz sêxtuplos. Seis anos depois, um rapaz encantador detém o bilionário Ethan Huntington e entrega-lhe um teste de paternidade. Ele encurrala-a e obriga-a a dar-lhe o bebé.', 'https://vz-c2303ad7-0af.b-cdn.net/e0bdee70-7f6b-44ea-a4c7-b57b6a56e343/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-05T17:55:29.215537+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Os Herdeiros Do CEO: A Fuga Da Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f1527346-9240-430a-8f01-609aaa7ebdb6', 'Neto Falso? Não Verdadeiro', NULL, 'Cláudio Moreira mergulha numa guerra sangrenta para salvar Letícia e Benjamin do sequestro. Entre testes de DNA explosivos e um casamento arranjado sob ameaças de Ronaldo Barbosa, ele arquiteta uma farsa ousada: fazer o menino se passar por herdeiro dos Moreira. Mas quando o laudo chega...', 'https://vz-c2303ad7-0af.b-cdn.net/dfc913b5-ce50-4bdc-9e37-09fb2c22f7bd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-05T17:53:48.194938+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Neto Falso? Não Verdadeiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '155d4549-efb3-4b09-8bb7-3dd0cbde897d', 'Um Relacionamento Indefinido Com Meu Amigo Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4ead10f2-42d3-47ea-9181-a2cf0efdfc66/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-05T17:51:03.263321+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Relacionamento Indefinido Com Meu Amigo Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '108c3e95-0451-43e9-8062-e2f2e93f9970', 'Fugindo Da Máfia Me Caso Com Um Bilionário Sem Teto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1c7f1199-35c1-448a-995b-ade7e95ed046/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-05T17:49:26.738563+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fugindo Da Máfia Me Caso Com Um Bilionário Sem Teto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2535f4d2-aff1-4c29-85c2-8472ffe53132', 'Menino Bonito Da Máfia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9778549b-b34a-4cff-95ba-c25865dbcad3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-05T17:47:44.763726+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Menino Bonito Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a8381f79-884d-4b3a-b0db-305a2a15388b', 'Minha Luz Dentro Da Escuridão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e5693dfa-112c-4299-b5c1-e51346d69dea/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-04T21:34:14.243004+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Luz Dentro Da Escuridão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '79a1abb6-7b71-497c-8025-cd423d6e56e9', 'Depois Que A Sra Tirzah Brilhou Sozinha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6155b7a5-582b-4d1c-826c-70059ec9a1c2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-04T20:57:21.240881+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois Que A Sra Tirzah Brilhou Sozinha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '466b6c99-c95b-4876-b665-6bead09d4d0e', 'Estragada Pelo Meu Papai Bilionário', NULL, 'Na luta contra o vício de seu irmão e as dívidas da sua mãe, uma garota em dificuldades, busca refúgio em um relacionamento contratual com seu carismático CEO. Mas, à medida que seu vínculo se aprofunda, ela percebe que é apenas uma substituta para a ex-noiva dele.', 'https://vz-c2303ad7-0af.b-cdn.net/7f7fc8d8-aa8f-41e7-927d-456b462a0d7c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-04T19:52:05.67676+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Estragada Pelo Meu Papai Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4f19dcc4-49cc-4116-b861-33cb2209e946', 'Divórcio No Dia Do Parto', NULL, 'Scarlett, herdeira da fortuna dos Walton, escondeu sua identidade para se casar com Kane, um pobretão que ela sustentava. Manipulado pela maldosa Victoria, Kane obrigou Scarlett a ter um parto arriscado em casa mesmo com uma gravidez de risco.', 'https://vz-c2303ad7-0af.b-cdn.net/a3810dde-170d-4f13-9573-7b2957e323b9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-04T19:48:46.630351+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divórcio No Dia Do Parto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9ef7a3db-4040-435d-9e51-fcca675dc8c6', 'Noivo De Mentirinha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8ab088f4-449f-4fa1-8fed-2b76a89f1270/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-04T19:45:25.02606+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noivo De Mentirinha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '98b43e7b-e6c5-436d-ac40-07b49794e195', 'Quadrigêmeos Do Tio Do Meu Ex', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a27d21ff-0125-493f-b05b-08109e4630bb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-09-04T19:43:18.242286+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quadrigêmeos Do Tio Do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c8d24675-d63d-4bbf-8057-104b526d60d9', 'Depois De Toda Aquela Dor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0e46aca7-7898-4bb8-856d-079c93c4940d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-03T23:55:07.326496+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois De Toda Aquela Dor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '39d5254c-efb0-4eb4-92f3-45b3feb34b63', 'Desculpe Eu Sou O Lider', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/60f3ce8d-bb3f-413f-b31e-76df1e84da36/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-03T23:52:45.66991+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desculpe Eu Sou O Lider'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '32bbdf77-c629-4180-a92e-5d34b8af0475', 'O Longo Verão Queima Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9c66f62d-db73-449f-9d8c-df567d8dcd2a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-03T23:49:23.516373+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Longo Verão Queima Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5c92fe8b-2781-46b6-b1fd-b4e69fd4648d', 'Renascendo Das Cinzas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/17e08238-4d73-428a-8fb8-db4b6686a697/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-03T23:43:53.664837+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascendo Das Cinzas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd07372dd-eec3-44b7-ac3a-80669f14baa3', 'O bebê Surpresa Da cinderela', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/76d9f6ca-eafe-49c5-a68b-ef5ca7515f6d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-09-03T23:23:49.772806+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O bebê Surpresa Da cinderela'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cfe6da5b-d5d1-4a32-b7e6-16cc5645b191', 'Drift Tio Mecânico', NULL, 'Ex-campeão Vicente Duarte vive como humilde mecânico na Vila Lopes. Quando a Equipe Veloz ameaça tomar a estrada da vila, o herói escondido ressurge! Numa corrida emocionante, Vicente prova que verdadeiros campeões nunca perdem sua essência - protegendo seu lar e inspirando todos com sua redenção.', 'https://vz-c2303ad7-0af.b-cdn.net/f3efa830-3fe9-4a5e-80ff-9784c5591cda/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-03T23:22:03.267502+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Drift Tio Mecânico'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bc435726-9dc2-48ec-bbd5-c8568df8f7b6', 'Flores De Sangue Véu De Mentira', NULL, 'Numa vila isolada chamada Vila Santa Florência, dizia-se que o Espírito escolhia, a cada ano, uma jovem para ser sua Noiva da Florência, em troca de proteção e riqueza. Criada na vila, Natália Cardoso, agora formada pela academia de polícia, nunca esqueceu o que aconteceu com sua irmã Patrícia, levada à força no último ritual e desaparecida desde então. Para encontrá-la, Natália se ofereceu como oferenda e entrou na Gruta de Florência. Mas o que encontrou lá dentro não era fé — era algo muito mais sombrio. A cada passo, mergulhava não só na escuridão... mas na verdade.', 'https://vz-c2303ad7-0af.b-cdn.net/901aefd6-ec39-4796-ad13-6a9ee3474bc4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-03T23:19:21.369973+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Flores De Sangue Véu De Mentira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'df9e4313-4c2e-49d8-82b9-97d1972ae9dc', 'Entre A Filha e a Guerra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/377b98c7-a194-4f50-ab0d-bed18a74a02e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-03T23:17:46.975984+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Entre A Filha e a Guerra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9ee57741-221e-4ecd-a46b-283036c2f8ba', 'O Mistério Das Águas Termais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/29d6f6cd-99ab-4138-a24f-07784e828bda/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-02T21:18:53.333547+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Mistério Das Águas Termais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '787826fc-dd36-41a6-83d4-d9c0a7171dea', 'Elas Por Elas Divorcio Ou morte', NULL, 'Caroline, uma especialista de elite em Intervenção contra Abusos na PunishDash, com um histórico imbatível de dominação de agressores, se apaixonou por Richard — um violento doméstico disfarçado — durante um encontro às cegas. Casaram-se rapidamente. Quando Richard tentou controlá-la, ela o dominou com facilidade, aplicando uma retaliação brutal. Ironicamente, Richard, o agressor, acabou se tornando vítima de sua própria violência.', 'https://vz-c2303ad7-0af.b-cdn.net/de2759dd-a9da-4ea7-9774-142372f2ec3e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-02T20:41:40.679731+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Elas Por Elas Divorcio Ou morte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '63a7ee97-6681-4ed2-a247-946d389663ce', 'Ex Vilã Grávida Dá A Volta Por Cima', NULL, 'A universitária moderna Maria Lima transmigrou para um livro, tornando-se a ex-mulher má do protagonista Miguel Silva, grávida de seu filho. Em vez de se divorciar e abortar como a personagem original, ela usou gentileza para abalar Miguel. Enfrentando a amiga de infância Laura Santos, que cobiçava Miguel, Maria voluntariou-se para ir ao campo. Usando seu "sistema de loja de departamentos" misterioso, ela melhorou a vida da família, tornando-se a querida por todos da família Silva. Laura tentou envenená-la várias vezes, mas falhou e foi presa. Maria liderou os aldeões na prosperidade, ganhou reconhecimento oficial e voltou antecipadamente à capital com Miguel, vivendo feliz para sempre.', 'https://vz-c2303ad7-0af.b-cdn.net/e1d7801b-0797-41c5-923b-82c3134550cf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-02T20:37:11.074233+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ex Vilã Grávida Dá A Volta Por Cima'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2feccaaf-3739-4b22-a2fa-191624ecf640', 'Amor Por Promessa Acidental', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e9780ec5-6d8c-4ec4-a240-08f8d18b7ad3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-02T20:17:30.987889+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Por Promessa Acidental'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c1d501d0-7e4a-4a64-9a37-6b6d316c3974', 'Ela Voltou Por Mim', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/811a67e5-f4cf-429f-8399-01d1bce72b8d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-02T20:13:01.013347+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela Voltou Por Mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0b1a19a7-6dab-485b-b8c3-ef693c1a5b28', 'O Segredo Do Meu Domínio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/31908503-b39b-43c2-858d-324dc4d14a18/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-02T20:10:06.948699+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Segredo Do Meu Domínio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f9e8404a-b313-44a1-85ce-770c5f7dc6be', 'In Die Liebe Gefallen/​Rush Into Love', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/89cd7834-04e0-49a8-bb8f-0eb9a13658e1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-02T20:05:25.466562+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'In Die Liebe Gefallen/​Rush Into Love'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '38d85444-c026-476c-ac8d-00d46b2b1854', 'Após Aquela Noite', NULL, 'Marina Andrada jamais imaginou que, ao se deparar com Arthur Albuquerque, o imponente presidente do Grupo Albuquerque, em um estado vulnerável, teria sua vida virada do avesso. Para salvar ele de uma situação extrema, ela se entrega a ele e acaba engravidando. Mas o que recebe em troca é crueldade: tem a perna quebrada e é abandonada. Oito meses depois, Marina dá à luz um menino prematuro. Sozinha, ela precisa lutar com unhas e dentes para pagar o tratamento do filho, trabalhando incansavelmente. Enquanto isso, Arthur Albuquerque a procura sem descanso, determinado a oferecer a ela todo o amor e carinho que ela merece.', 'https://vz-c2303ad7-0af.b-cdn.net/01e8ff3d-2bf1-4bfc-b4da-849a2079e2cb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-01T22:55:48.773144+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Após Aquela Noite'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '408424a5-2499-4ee1-ae8c-cc56c2f7cdea', 'Não Há Lar Para Os Corações Partidos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2d20ed9c-970b-4bfe-a006-2ef5f53b9be3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-01T22:48:04.157229+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Há Lar Para Os Corações Partidos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2643d543-0b48-43af-ac4d-5acbcc27738e', 'Doces Mentiras E Amor', NULL, 'O grande sonho de Lydia sempre foi se tornar uma confeiteira e adoçar a vida das pessoas com suas criações. Mas sua própria vida é marcada por amargura e sofrimento. Tudo começa a mudar quando o bilionário Scott aparece em seu caminho e, com uma pequena mentira inocente, transforma o destino de Lydia. O que ela nem imagina é que tudo isso teve início há cinco anos, graças a um gesto de bondade que ela mesma esqueceu...', 'https://vz-c2303ad7-0af.b-cdn.net/ea606e74-8cd6-46a3-842b-0e98c492e8b8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-01T21:07:12.0117+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doces Mentiras E Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9edd6802-e733-40a4-96e0-a7349ef89422', 'A Sombra Da Lua', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c4d45b7c-fc2a-4afc-8b7e-e4f419002517/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-01T21:04:32.542864+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Sombra Da Lua'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9df3bd69-07a4-4190-9c1b-f673393c9b05', 'Medimos A Culpa Na Cama', NULL, 'Ele lhe deu um anel. Ela o condenou à prisão. No dia em que Troy a pediu em casamento, Gabby testemunhou — e destruiu seu mundo com uma mentira. Incriminado por envenenar seu rival, Troy passou três anos atrás das grades, ardendo em uma única coisa: vingança. Agora ele está de volta — mais rico, mais frio e duas vezes mais perigoso. Como o implacável CEO de um império bilionário, ele está pronto para arruinar a vida dela como ela arruinou a dele. Mas Gabby não é a vilã de que ele se lembrava. Ela esconde um segredo... uma garotinha de cinco anos com os olhos dele. Seria traição — ou sacrifício?Vingança — ou uma segunda chance disfarçada?', 'https://vz-c2303ad7-0af.b-cdn.net/f78c71a0-ec06-4dc6-9977-edd01ff0c3d6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-01T21:01:29.793053+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Medimos A Culpa Na Cama'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '66a6e6a6-9663-429f-afaf-1e2c2bb5beba', 'Rei Da Prisão Disfarçado', NULL, 'Após herdar uma prisão privada corrupta, o ex-soldado Troy Poe decide se infiltrar como recluso para expor os responsáveis. Mas, quando o chefe dos guardas, um homem em que ele confiava, se revela o líder de uma rede criminosa, Troy precisa encontrar uma maneira de convencer as autoridades de que não é um prisioneiro, mas sim o dono da prisão… ou, então, fugir. No meio disso, ele deve ainda proteger aqueles que estão em perigo, incluindo um prisioneiro idoso e fraco, cuja pena foi falsamente aumentada, e uma bela médica que foi apanhada no meio do fogo cruzado. Será que Troy vai conseguir escapar? Ou vai se tornar apenas numa vítima mais da sua própria prisão?', 'https://vz-c2303ad7-0af.b-cdn.net/bccf3789-87d1-4e86-9172-f60944ce985e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-01T20:53:15.504737+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rei Da Prisão Disfarçado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0e62f47b-d41b-49cb-a971-3efc3e5c116d', 'Corações Roubados', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/504f0d44-0cda-4ab1-ac62-ce558190f198/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-01T20:35:23.29819+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Corações Roubados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '383acb0b-fc1f-455d-8d32-6797403b474d', 'Parece que a Nova Estagiária é a Esposa do CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/808c1fe7-dd76-4ac2-b29c-c1e4b0e39b77/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-31T20:36:13.364064+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Parece que a Nova Estagiária é a Esposa do CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '57cf1c8d-009d-4527-8403-e658e51fdd15', 'O Herdeiro de Seis Anos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fdaff7a2-393b-4674-9311-d38d03490d2e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-30T23:41:38.222412+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Herdeiro de Seis Anos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '626227ca-55e9-4a09-9cbe-1ba90429c277', 'Guia para Destronar a Abelha Rainha do Ensino Médio', NULL, 'Ela é rica, misteriosa e perigosamente subestimada. Mas quando a abelha rainha da escola a elege como seu novo alvo, essa aluna recém-chegada pode revelar segredos surpreendentes.', 'https://vz-c2303ad7-0af.b-cdn.net/90dbc152-685b-4804-bd50-2b6c0f4e2452/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-30T23:40:17.910969+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Guia para Destronar a Abelha Rainha do Ensino Médio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'be71b005-f9a9-4be4-adad-e278ff70b3cd', 'A Estação Sem Ele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/18e3385f-a80d-4d0a-a94c-9c369db188c9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-30T23:38:22.245091+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Estação Sem Ele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9dfae5a1-4184-44f2-9105-59ee91dc67a2', 'O Herdeiro Cego', NULL, 'Samuel, cego de nascença, vive com sua mãe gravemente doente, Tricia. Numa tentativa desesperada de salvá-la, ele acaba descobrindo por acaso que seu pai biológico é o magnata Nolan. Ao confirmar a paternidade, Nolan leva o filho para casa. Lá, Samuel enfrenta a hostilidade de Rita, que conspira com sua família para prejudicar os Higgins. Com seu talento excepcional, Samuel cria o projeto "Caixa Misteriosa" e supera os obstáculos. Paralelamente, Tricia e Nolan desfazem os mal-entendidos que os separaram e desmascaram o plano de Rita. No desfecho, os Higgins triunfam, Samuel recupera a visão e a família, finalmente reunida, recomeça unida.', 'https://vz-c2303ad7-0af.b-cdn.net/b230f76f-31f0-4f17-8cd1-446cfed4704d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T19:33:17.721245+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Herdeiro Cego'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '774497f6-9619-4f99-9f43-42a25abb02dc', 'Destino De Traição', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0fbc1b68-1a71-4b11-9e18-91bc6109ca5e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T18:16:25.184229+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destino De Traição'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '58804a99-60cb-4eaf-a76c-37c600da7bc6', 'Votos Sob Ondas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/844ca327-2fda-40ca-9215-bcbe34570c7b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T17:19:54.332627+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Votos Sob Ondas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c5af8782-a148-4774-b46c-4c59b00b0bf8', 'Beije Me Uma Última Vez', NULL, 'Adeline Rhodes é diagnosticada com câncer renal em estágio quatro e tem meses de vida. Seu marido, Blake Rhodes, parece mais preocupado com sua meia-irmã Rebecca, para quem Adeline constantemente doa sangue. Blake confunde Adeline com uma interesseira calculista, e ela acha que ele nunca a amou. Tudo muda quando Blake descobre que Adeline está morrendo, mas pode ser tarde demais para ele dizer que sempre foi ela quem ele amou.', 'https://vz-c2303ad7-0af.b-cdn.net/96cfbcb6-6d52-46bc-b187-a1d3cc5dd633/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T17:15:42.125948+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Beije Me Uma Última Vez'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7cfaf11f-e2af-4bb8-b54b-f711c01a7e11', 'Meu Namorado Jovem é o Herdeiro Bilionário', NULL, 'Clara Souza, uma das melhores assessoras de imprensa do país, descobre que talvez não consiga ter filhos. Depois de uma noite de fraqueza, ela se envolve com o Rafael, um gato sete anos mais novo. Mas o plot twist? O ele era o filho não reconhecido do CEO do Grupo Ferreira!', 'https://vz-c2303ad7-0af.b-cdn.net/93bb51b0-5927-49d3-aa77-30b42a9a7b7d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T17:14:10.593864+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Namorado Jovem é o Herdeiro Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bef33935-8e56-4a2d-826c-208b6fc1512e', 'Princesa e General A Jornada Da Heroína', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/22671f7c-7f6e-4b92-ad9e-1d8e893a9ec2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T17:13:00.350768+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Princesa e General A Jornada Da Heroína'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d1c6dc9-0c97-40e7-bf97-c6bcf47a5bd1', 'Faxineira Milionária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d7e66189-4b80-43ce-8ff7-36f28db39ed0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T17:11:45.76216+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Faxineira Milionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd706993f-cc4d-4fe9-8181-6029a9d32577', 'Meu Marido De Contrato é Um CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/505b20a9-a696-4cd0-81ec-080a2200ea59/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T17:10:41.376688+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido De Contrato é Um CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3705f758-6d56-4443-bf93-138c3242eec4', 'Me Casei Com o CEO Misterioso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a52f5d71-3244-46d5-91ed-75cb7443c078/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T17:09:07.009812+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Me Casei Com o CEO Misterioso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd7c457e2-fb06-4a5f-a2e8-0beaf737d797', 'Entre Segredos e Mentiras', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/451d55f2-597d-456b-829e-3227a386839c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T17:07:53.342047+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Entre Segredos e Mentiras'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'db2ddf88-f14b-4b0f-a59f-a5420fe76f04', 'Atrevida Impertinente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/50557e31-46e7-4073-9d35-290832d19b2f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-29T17:06:24.05575+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Atrevida Impertinente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '153cb518-f4cd-4b2c-bf7c-b3010fb3bfb9', 'Você Tem um Homem', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/059c6f50-8d3b-4c56-94bc-369efeb41924/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-29T17:05:14.035011+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Você Tem um Homem'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1028fca4-5c02-4e96-842a-f07ead79bc00', 'Meu Bebê Gângster Papai Me Mima até o Paraíso', NULL, 'O pai da Fiona é viciado no jogo e mergulha a família na pobreza, tornando ainda mais difícil para Fiona sustentar a mãe acamada. Fiona não tem outra opção a não ser trabalhar em um clube. No entanto, por obra do destino, Fiona conhece o chefe dos gângsters Leonard e salva sua vida. Mas quem poderia imaginar que ela engravidaria naquela noite...', 'https://vz-c2303ad7-0af.b-cdn.net/e198f4c5-c85e-40d4-a65c-206819a7f15c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-29T17:04:03.006951+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Bebê Gângster Papai Me Mima até o Paraíso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a38290d8-38bf-4263-8513-f74fab1cd7fd', 'Sinto Sua Falta Depois Do Adeus', NULL, 'Para pagar uma dívida de gratidão, Neil fecha um contrato secreto com o pai de Keira, comprometendo-se a se casar com ela por cinco anos e ajudá-la a superar o término com Simon, seu primeiro amor. Durante o casamento por contrato, Neil é amável e cuidadoso, mas Keira o vê apenas como um substituto de Simon. Quando o contrato termina, Neil descobre que Keira ainda está apaixonada por Simon e pede o divórcio. Ao saber do divórcio e ouvir do pai que Neil foi embora, Keira é tomada pelo arrependimento e parte em uma busca pelo mundo para encontrá-lo, apenas para perceber que o homem que perdeu a amava de verdade. Mas agora é um pouco tarde demais, pois Neil já está seguindo um novo e promissor caminho, tendo deixado Keira no passado.', 'https://vz-c2303ad7-0af.b-cdn.net/897c2429-64c1-4550-9238-81f7c2be115b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-28T23:46:43.949574+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sinto Sua Falta Depois Do Adeus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b97ba9db-d043-4165-b1e6-928dd9fc1316', 'Armadilha Do Tutor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/edb90897-5ad6-4f03-8bab-15d7d0687af2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-28T22:08:52.385475+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Armadilha Do Tutor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '473a97da-d1ab-454b-91bd-06619dad5524', 'Volta Após Volta, Volto Pra Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/30c0baf8-7738-4723-9829-2871d9786b4b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-28T21:56:28.142385+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Volta Após Volta, Volto Pra Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '66606980-71ad-4f22-b992-d615fed63f3a', 'Namoro De Mentira Com Meu Rico Inimigo/Falso Namoro Com Meu Nêmesis Rico', NULL, 'Quando uma garota atrevida do ensino médio retorna à Colégio Santo Mar, ela não espera ter um erro de uma noite com o herdeiro Bressani, seu inimigo de infância, e depois se unir a ele para irritar seus ex-namorados. Será que eles acabarão se apaixonando?', 'https://vz-c2303ad7-0af.b-cdn.net/b9b7b478-fea8-4051-85d7-95c9c03c83c7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-28T21:53:22.432553+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Namoro De Mentira Com Meu Rico Inimigo/Falso Namoro Com Meu Nêmesis Rico'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '14178e72-318e-4792-a0be-dc9ea0c903f4', 'Escuto Sua Voz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fc48738c-4091-446f-9e37-b2a626e7246d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-28T21:49:40.253793+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Escuto Sua Voz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '437646a3-dd00-49ac-b107-669087ebd143', 'Casamento Apaixonado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d4ac828d-326e-4c8c-9472-1f64014306f2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-28T18:52:17.411649+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Apaixonado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c8594caa-7716-4715-a1d2-562f848d4ece', 'Meu Alfa Implacável Sem Saida', NULL, 'Uma mulher com um coração falhando se torna o centro de um perigoso quadrilátero amoroso, dividida entre seu amor de infância amnésico, um bilionário frio que esconde seus verdadeiros sentimentos, um herdeiro playboy implacável e um senhor do crime obsessivo com um coração transplantado, enquanto ela navega por um labirinto de contratos secretos, identidades falsas e paixões distorcidas em um jogo de amor e sobrevivência de alto risco.', 'https://vz-c2303ad7-0af.b-cdn.net/b06ab62b-7cb5-4d2f-af24-c89ec33940f2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-08-28T18:50:13.698918+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Alfa Implacável Sem Saida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a480d5ce-aeb0-4322-a8aa-34b3da04f0fd', 'Divórcio Definitivo Seu Remorso Começou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bef2d6fc-e2f1-44eb-9afc-6d9b7e5bfb30/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-28T18:36:24.860067+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divórcio Definitivo Seu Remorso Começou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd9362a2c-fae6-4aba-aca2-8b71580d97c2', 'O Ano Em Suas Cadeias', NULL, 'Quando o marido de Anna contrai uma dívida colossal com um perigoso chefão, Jeremy, ela acaba virando o próprio pagamento – literalmente, torna-se propriedade dele por um ano. Preparada para encarar a crueldade do famoso mafioso Jeremy, Anna descobre, em vez disso, um homem ferido que se esconde por trás da máscara de frieza. Seu marido infiel quer que ela seduza Jeremy para lucrar. Por seu turno, o pai de Jeremy prefere vê-la fora do caminho. Entre mentiras e lealdades, Anna percebe que o homem que a acorrentou, é o único que realmente quer saber dela.', 'https://vz-c2303ad7-0af.b-cdn.net/eea05caa-ebba-446c-bd56-5db0d9fa8f9f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-27T22:24:32.847956+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Ano Em Suas Cadeias'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0fb46395-86ff-4373-8aaa-d432e80f2bc3', 'O Par Perfeito Rejeitado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2eacdd82-9490-4c97-9685-c6761ed75988/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-27T15:25:12.752004+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Par Perfeito Rejeitado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3cb2f7bf-af12-44cc-921f-26e377dc5911', 'Coração Traído', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bec4edc2-09df-45c2-8e71-9baf57986a3e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-27T15:23:30.698211+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Traído'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6ca204cb-48b6-49e7-a978-9e41490bd5cd', 'Noiva Renegada', NULL, 'Após ser vítima de uma armação da sua irmã e dormir com um desconhecido um dia antes do seu casamento, Charlotte perde tudo, seu noivo, sua família, seu status e é mandada para o exterior. 10 anos depois ela retorna, agora com um filho e encontra Ethan Wright, um CEO bilionário que é ninguém menos que o desconhecido daquela noite e o pai do seu filho.', 'https://vz-c2303ad7-0af.b-cdn.net/09514986-c0ed-46c8-ae1a-9a40fe5c7d2d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-27T15:22:36.747654+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Renegada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a43e4962-1a1d-4fcf-85f5-2add61b8ee4d', 'Lapo Abra O Seu Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9f3a66f7-7b47-4aaf-b5ed-cc06fc69a8e1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-27T15:20:40.974037+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lapo Abra O Seu Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9ded29e3-a522-48dd-a346-0d6bcade9b0c', 'Caçada Por Kiarra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7622e158-0c48-47ce-87ec-6e9adf510391/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-27T15:18:46.353661+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Caçada Por Kiarra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5afa0243-5481-4784-aac3-9e4fa808a502', 'Corrida De Volta Para Mim', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b6cc46c7-0204-4c4b-97dd-647936b5d4a7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-27T15:17:45.10797+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Corrida De Volta Para Mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e46fd843-565c-4bda-af0c-1732d8331f0e', 'Aja Como Você Me Amasse', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8a6efc64-9419-4d94-b1ec-4af32412c35c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-26T22:57:08.211483+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Aja Como Você Me Amasse'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '53ad998c-d9b7-4aaf-8e5a-dc7b1508f3cf', 'Um Beijo Uma Facada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/22808784-fed7-4c98-9752-9ceb78b994c6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-26T22:53:12.100765+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Beijo Uma Facada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f15b74a4-54b3-4734-bc65-59d2fb07cea1', 'Ele Veio Do Outro Lado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2a05331b-cd45-4e64-97a6-dee2c1072463/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-26T22:47:21.343191+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ele Veio Do Outro Lado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ca74a31f-9160-42db-bb37-7c14fb088f30', 'Chama Da Lua Entre Dois Alfas', NULL, 'Eva só queria sobreviver ao colégio e escapar de seu destino como uma ômega especial. Mas Roland, o alfa, sente a mudança e está decidido a reivindicá-la. Enquanto isso, Xavier, o misterioso aluno transferido, a observa como se já soubesse de algo. Ambos a desejam, mas Eva é a Chama da Lua. Quando a lua cheia surge, seus instintos ardem com intensidade. Ela precisa escolher um único companheiro — e, se errar, todos irão queimar.', 'https://vz-c2303ad7-0af.b-cdn.net/7f9f2f9a-e97b-4808-9fef-1f48cd316c4b/playlist.m3u8', '[''homem-lobo'', ''novo-lancamento'', ''mais-recomendado'']', '2025-08-26T22:34:29.002094+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chama Da Lua Entre Dois Alfas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c95df6db-a885-4b24-88ec-951ba01fb275', 'Voce Tem Punhos De Vingança Ela Ele', NULL, 'Jenny, ex-rainha do combate, vive escondida como "Leyton" até que Lloyd Smith, seu rival, sequestra seu filho. Na tentativa de resgate, ela falha — mas Robert, seu marido, revela habilidades surpreendentes e esmaga os agressores. Lloyd então forma um exército para caçá-los. Encurralados, o casal quase perde as esperanças... até Robert despertar seu poder real, eliminando todos. No fim, descobrem a verdade por trás da vingança de Lloyd.', 'https://vz-c2303ad7-0af.b-cdn.net/e6f3e9a4-5c31-4460-8a13-f5603de6c9e3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-26T22:08:39.659919+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Voce Tem Punhos De Vingança Ela Ele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '42039bb8-690b-4c53-8026-a715a16081bd', '28 Dias Com O Alfa', NULL, 'Hayley está falida e desesperada quando Damien Noble, um alfa amaldiçoado, lhe faz uma proposta irrecusável: beijá-lo todas as noites em troca do pagamento de suas dívidas. Dinheiro fácil… até deixar de ser. Até que suas mãos demoram um pouco mais. Até que ela começa a desejar o fogo em seu olhar. Tique-taque, tique-taque, o tempo está se esgotando. Ela conhece a regra — não se apaixone pelo monstro. Mas e se o verdadeiro perigo… for desejar que ele a morda?', 'https://vz-c2303ad7-0af.b-cdn.net/4a0c0273-a1a1-4c90-9592-e085bfeea92b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-08-26T21:58:18.171801+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '28 Dias Com O Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd9ead704-175e-4007-aa12-1eb9b036ad15', 'Derruba A Familia Do descarado Com Minha Sogra', NULL, 'Joana, guarda-costas com medalha de ouro, protege vítimas de violência doméstica. Casou-se com Miguel, ocultando a identidade. Quando família de Miguel comete violência, Joana coleta provas e luta pela custódia dos filhos. Crimes de Miguel ficam públicos, sua licença é revogada. Quando Miguel ameaça filha de Joana, ela decide não se divorciar e enfrenta-o. Miguel descobre identidade de Joana. Susan, mãe de Miguel, rompe com ele. Joana e Susan começam nova vida com a filha.', 'https://vz-c2303ad7-0af.b-cdn.net/0668fa5e-6ef6-4cd0-afbd-61e94d5fba9b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-26T21:48:12.501964+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Derruba A Familia Do descarado Com Minha Sogra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5148a7e0-783c-46c3-a198-c0007f67f4e4', 'Doces e Desforra/ Reencarnei Como Um Bebê  Fiz Meu Pai Virar Magnata', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/985d94d4-90bf-45b2-8c30-74386c1dc69b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-26T21:46:28.950364+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doces e Desforra/ Reencarnei Como Um Bebê  Fiz Meu Pai Virar Magnata'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3cedbf42-4ed5-40f2-9c2f-d3a7df2530d0', 'Chore Agora Saiba Quem Eu Sou', NULL, 'Pereira Pedro, presidente do Grupo Renato, é confundida com amante por Oliveira João, secretário de seu marido, Santos Renato. Oliveira a intimida e insulta, causando seu aborto. Pereira planeja vingança contra Oliveira, expondo suas ações.', 'https://vz-c2303ad7-0af.b-cdn.net/5142d949-ca41-4405-8f76-e7c3484e7088/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-25T21:10:31.544707+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chore Agora Saiba Quem Eu Sou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c29e7516-221e-4371-823c-61532ab21958', 'Herdeira Grávida e Mimada Por 5 Tios Bilionários', NULL, 'Victoria, grávida e traída pelo homem que amava, é abandonada. Mas ele não sabe que ela é uma herdeira bilionária com cinco tios poderosos prontos para destruir quem a ameaçar. O destino a leva a um amor verdadeiro — e agora o casal traidor vai pagar por tudo!', 'https://vz-c2303ad7-0af.b-cdn.net/38b84825-4c8d-4906-899c-1bd6185c1013/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-25T21:05:55.43111+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeira Grávida e Mimada Por 5 Tios Bilionários'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'aed63404-6bcd-4d7f-997c-de28e784440c', 'Alfa Não é meu Tipo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b204fb63-0ad1-4f89-80ca-fbe4b168d307/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-08-25T21:03:38.812447+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Alfa Não é meu Tipo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fc767366-0548-45fc-bbc9-514371020fae', 'Jade Foster é Minha', NULL, 'Depois de um trágico caso com o magnata Aslan, desencadeado por um casamento forçado, Jade jura acabar com ele. Mas quando conhece o seu gentil irmão gémeo, Lucas, Jade não consegue evitar apaixonar-se novamente. Mas depois de ir viver com Lucas, Jade descobre uma conspiração obscura por detrás da família que a coloca em grande perigo. Ela tem de confrontar Lucas e descobrir a verdade sobre o seu suposto "amante gémeo".', 'https://vz-c2303ad7-0af.b-cdn.net/7e9a2f53-53a5-4f61-89f7-52a4ff0d6456/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-25T20:53:39.328727+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jade Foster é Minha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6861ba69-9fc4-4921-8f03-d35412fa61ff', 'A filha Da Casa Guardiã De Reinos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0f3a885c-d543-452c-9c89-7ec783632a2e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-25T19:24:19.246332+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A filha Da Casa Guardiã De Reinos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9b0e8b94-906b-4741-bd37-56465942cb74', 'O Amor se Desfez No Jogo', NULL, '"Clara Mendes fez de tudo para salvar o marido e o filho, ambos supostamente com cirrose. Trabalhou dia e noite, vendeu tudo o que tinha — até descobrir que tudo era mentira. A doença era falsa. A pobreza, encenação. Por trás disso, um jogo cruel: pai e filho disputavam, em segredo, o amor de Clara, tentando provar quem ela preferia. Traída e humilhada, Clara decidiu sair de cena. Mas será que, quando eles notarem sua ausência... ainda haverá tempo para voltar atrás?"', 'https://vz-c2303ad7-0af.b-cdn.net/6affc828-0dff-4ef5-be01-91eb88f5ac26/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-25T19:20:37.23841+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor se Desfez No Jogo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f41823e0-9788-4973-93c1-b70edf6160a0', 'Não Sintam Minha Falta Quando Eu Me For', NULL, 'Depois que perdi meus pais, fui morar com minha madrinha, tia Sandra. Passei a viver sob o mesmo teto que seus dois filhos, os irmãos Miller, cercada de carinho e afeto. Achei que acabaria me casando com um deles. Mas tudo mudou quando Lola, a filha da empregada, entrou em nossas vidas. O irmão que eu mais amava partiu meu coração. E quando eu fui embora, eles ficaram desesperados tentando me encontrar.', 'https://vz-c2303ad7-0af.b-cdn.net/d3ee527f-0df2-4ec5-ba66-9e062780c891/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-25T18:01:13.931734+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Sintam Minha Falta Quando Eu Me For'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c588e8f3-0409-4611-b1fc-7592a7543c90', 'Chefe Por Favor Comporte Se', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d0e7c7a9-6b0d-4665-b625-b4a3291d79f0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-24T02:06:18.455388+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chefe Por Favor Comporte Se'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7fcd892e-616e-4c87-8131-f6d212097da7', 'Divorciada, Diretora De Volta', NULL, 'Estava casada com ele há três anos. Para manter o casamento, desistiu da sua amada carreira de realizadora e concentrou-se em apoiar o marido. No entanto, o marido obrigou-a a ajoelhar-se e a pedir desculpa pela pessoa que amava. Frustrada, pediu o divórcio. Depois de recuperar a sua identidade como a misteriosa diretora internacional da medalha de ouro e filha única do Banco Mundial, chocou toda a indústria do entretenimento.', 'https://vz-c2303ad7-0af.b-cdn.net/973782be-f631-4056-a13c-b9c094674533/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-23T20:23:09.51473+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divorciada, Diretora De Volta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ced3396f-718d-4cf5-ab93-ae350fef3437', 'Minha Irmã é Incrível', NULL, 'Angela, a primeira General da fronteira do Norte, retorna de uma missão para participar da festa de noivado de sua irmã mais nova, Ana. Por vestida com a roupa de faxineira na missão, ela é desprezada. Ana, ignorando as críticas, defende Angela com determinação, revelando a forte ligação entre as duas irmãs. Angela, por sua vez, dá o troco com seu talento, humilhando a família do noivo de Ana e apresentando a ela Pedro, um homem ideal e de alta qualidade, como novo namorado. Mais tarde, Angela e Ana acabam encontrando, por coincidência, seus pais biológicos, que as abandonaram no passado devido à preferência por filhos, Angela decide dar o troco no dia do aniversário de Ana, lançando um plano de vingança para fazer com que os pais arrependam-se amargamente pelo resto de suas vidas.', 'https://vz-c2303ad7-0af.b-cdn.net/cca3da68-39e0-4707-960c-58e9ca8bf688/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-23T20:20:45.342105+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Irmã é Incrível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '497f73ee-8ac5-4932-a241-47f8b7c09703', 'Herdeira Bilionária Confronta Seu Marido Assassino', NULL, 'Introdução: Apesar da traição do marido, que tramou sua morte com a amante, Lisa sobreviveu ao atentado. O que eles jamais poderiam imaginar é que ela é, na verdade, a única herdeira do homem mais rico do planeta. Em silêncio, ela planeja sua vingança.', 'https://vz-c2303ad7-0af.b-cdn.net/cbea38d8-ae16-4abb-ae79-b3961f63ca2b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-23T19:24:00.053166+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeira Bilionária Confronta Seu Marido Assassino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '59602137-d8a4-4071-9fa9-c42f45240225', 'Sendo Mimada Pelo Marido CEO', NULL, 'Bella, uma garçonete de espírito resiliente, inicia um relacionamento com o CEO William após um encontro casual, mas o romance é marcado por desafios e mal-entendidos. Quando descobre estar grávida, a notícia traz alívio à família de William, devido a problemas de fertilidade, mas Bella deseja provar seu valor por conta própria, recusando-se a depender do status dele.', 'https://vz-c2303ad7-0af.b-cdn.net/1d1272b6-c0f6-42d4-b960-da405b7c004d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-23T19:19:03.678978+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sendo Mimada Pelo Marido CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4e79c30d-27f7-4037-ba26-f2ec4107cbf7', 'Sexo Para Reatar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/03284356-1427-4287-a551-77dd035824ca/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-23T19:15:00.107086+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sexo Para Reatar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2c146d0d-1253-4d8e-9641-ef68196ac04f', 'Corações Em Contagem Regressivas', NULL, 'Maria José ouve seu namorado, Bruno Eduardo, falar sobre buscar sua ex, Elisa, no aeroporto. Magoadas, ela decide estudar no exterior. Enquanto Bruno espera por uma surpresa, Maria conta os dias para a separação. Com o tempo, ela se afasta e Bruno não entende. Quando Maria desaparece, ele percebe que ela é a pessoa mais importante e decide buscá-la.', 'https://vz-c2303ad7-0af.b-cdn.net/7ffa9267-b347-4ff7-b4cc-8dddcd16e20f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-23T19:10:04.829998+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Corações Em Contagem Regressivas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ebced3ea-19bf-4a46-9bfc-d26eaffe6964', 'Grávida Do rei Alpha, A Omega Que Ousou Desafiá lo', NULL, 'Coral, uma Omega servente, vive uma noite proibida com o poderoso Rei Alpha Victor e engravida. Temendo sua ira, ela foge do palácio, mas o destino a coloca no trono como Rainha Lua...', 'https://vz-c2303ad7-0af.b-cdn.net/d7ce9813-496a-4319-9402-89d63f6cb14e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-23T19:07:28.466009+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida Do rei Alpha, A Omega Que Ousou Desafiá lo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '575bfabe-aa30-4c1c-b3d3-7b2d87aebef0', 'Casamento Relâmpago Com o CEO Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a4ff7bf6-2aff-40a5-bda1-a50b265cc22f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-08-23T19:06:04.912256+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Relâmpago Com o CEO Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0de2aba6-848f-42c3-a3b4-b113c0adb132', 'Amor Proibido Em Três Vidas', NULL, 'A Raposa de Nove Caudas Alice Costa dedicou sua alma ao mestre Carlos Silva que a criou... mas ele, aliado a uma mulher manipuladora, fez ela sofrer por séculos. Com o coração em pedaços, ela se jogou nos braços do Deus do Massacre Gabriel Silva - que agora a trata como um tesouro, mimando-a sem limites!', 'https://vz-c2303ad7-0af.b-cdn.net/77a5d885-a925-4b99-8674-98cddd70c1f9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-22T22:17:57.944665+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Proibido Em Três Vidas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a8541074-49ac-45a2-81ce-9ac484eead3f', 'Boa Menina Do Papai Dominante', NULL, 'Após flagrar a traição do namorado, Olívia se vê atraída pelo pai poderoso e dominante dele. O que começa como vingança se transforma em um perigoso jogo de desejo, segredos e controle - onde ela pode perder mais do que apenas o coração.', 'https://vz-c2303ad7-0af.b-cdn.net/90851ab1-92d0-43d1-992f-bbb41a61cc46/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-08-22T22:06:04.234324+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Boa Menina Do Papai Dominante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ab19e695-751d-46bc-9485-8a7c1692f6fb', 'Coração Trancado Novo Começo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/476ae288-ea1d-438b-be33-3a8564503b5b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-22T21:59:48.316348+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Trancado Novo Começo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5e701b00-a69a-4807-a1a5-027b9435e67c', 'Grávida Do Meu Inimigo Mafioso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eedd6a77-1a38-440b-b55b-fa06958e9587/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-22T21:56:01.044833+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida Do Meu Inimigo Mafioso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b17e9bef-5bf7-450c-9db5-f689f6e9e5c0', 'Seu Amor Ardente', NULL, 'Bianca, devido à prisão de seu pai, fingiu ter um caso e terminou com seu namorado, Ricardo. Seis anos depois, ela se torna mãe solteira, mas enfrenta dificuldades financeiras com o tratamento caro de seu filho doente. Quando se reencontram, o Ricardo já é o herdeiro de uma grande fortuna e a vê como interesseira, humilhando-a várias vezes. Somente quando a ligação de sangue é revelada, o Ricardo descobre a verdade e se arrepende profundamente.', 'https://vz-c2303ad7-0af.b-cdn.net/46f018b2-2b62-4dc6-b7c5-70eb39f71cc6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-22T21:49:25.382711+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seu Amor Ardente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c6becc16-18de-41cd-a70e-68f3a405f941', 'A Herdeira perdida', NULL, 'Quando criança, Robin foi sequestrada e, como resultado, perdeu a memória. Ela foi salva por Ron, um homem sem dinheiro, e criado como sua filha. No entanto, 13 anos depois, a mãe biológica de Robin, Anna, aparece, uma mulher implacável que não vai parar por nada para recuperá-la. Será que Robin dará as costas Ron para poder desfrutar de sua herança?', 'https://vz-c2303ad7-0af.b-cdn.net/78fb56de-4caf-42f1-881a-263fde2e9e7d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-22T21:45:26.633901+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira perdida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '41f75017-3627-4f99-9e8f-8a9177965003', 'Todo Poderoso', NULL, 'Lucas Costa é o herdeiro da Sala de Dragão. Em gratidão por Carolina da Silva ter salvado sua vida, ele se manteve discreto, apoiando silenciosamente a família Silva. Mas quando Carolina atinge o auge de sua carreira, é ela quem pede o divórcio primeiro! Que segredo é esse que faz até o prefeito se curvar a Azul? A verdadeira história está apenas começando...', 'https://vz-c2303ad7-0af.b-cdn.net/508461f4-4153-44d7-8488-0e8ebbcfbc83/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-22T21:23:05.338853+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Todo Poderoso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dae41859-4312-4730-a481-bc8cd9b7dc3c', 'O Amor Tornado Em Desastre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ae010763-f175-43dc-bfec-ce5dadfa0fa6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-21T22:32:41.350472+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Tornado Em Desastre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c50d80bc-ea6b-4c2c-ac45-6f91510abcc2', 'Depois De Travar o Coração', NULL, 'Henrique perseguiu Maria por anos, mas só ganhou desprezo. Decidiu fechar seu coração, até salvar Beatriz, uma mulher misteriosa. Agora, Maria o importuna, e Beatriz adverte: "Ouse tocar meu homem e você verá!"', 'https://vz-c2303ad7-0af.b-cdn.net/53ab5d96-d2e9-4a0a-ad70-54071e29c840/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-21T21:09:11.454693+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois De Travar o Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '053460f4-c8f2-41e4-b951-73d19263d2f2', 'Quem Ama Acaba Se Encontrando', NULL, 'Ana Lima e Pedro Silva estiveram juntos por três anos, mas Ana foi forçada a terminar o relacionamento sob pressão do pai e da família Silva. Três anos depois, Pedro retorna como um executivo de Wall Street e implora por uma reconciliação, demonstrando um amor...', 'https://vz-c2303ad7-0af.b-cdn.net/08b35fe5-5d27-4909-a1ff-95421c351d3a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-21T21:06:27.74481+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quem Ama Acaba Se Encontrando'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5353577d-dc06-4986-9631-02578641115c', 'A Noiva Do Demônio', NULL, 'Julia era vista como azarada por sua tribo e jogada no lago para ser a noiva do diabo. Mas suas preces desesperadas acidentalmente despertaram Isaac, o demônio. Sob seus cuidados, ela se apaixonou, sem saber que era uma armadilha - ele queria o amor verdadeiro de uma humana para recuperar seu poder. Porém, nem mesmo Isaac esperava se encantar pelo amor puro de Julia... Quando seu poder se esvai, ele arrancará seu coração... ou se sacrificará por ela?', 'https://vz-c2303ad7-0af.b-cdn.net/5465f819-5c49-4206-aced-1f76bd06101e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-21T20:58:19.176416+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Do Demônio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '18101bcf-521d-4f08-9a46-a4d3230040ab', 'A Doutora E Seu Marido Secreto', NULL, 'Barney Wilde, um bilionário do Grupo Wilde, disfarçado como "Kian", retorna para descobrir a verdade sobre o incêndio que quase o matou. Ele cruza o caminho de Skye, uma mulher determinada que foi traída por Jason — o sobrinho de Barney. A ascensão de Skye no hospital revela verdades chocantes: Jason orquestrou o incêndio para matar Barney. Com o caos crescendo, a ex-namorada de Barney, Kelly, reaparece, manipulando Skye e incriminando Barney. A verdade vem à tona em um clímax explosivo, com Skye e Barney arriscando tudo para desmascarar os vilões.', 'https://vz-c2303ad7-0af.b-cdn.net/c3ce0bb5-831c-4d03-a3b8-20771b2cdcb4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-21T20:55:24.517187+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Doutora E Seu Marido Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '79557acd-3b0c-4d67-8115-73b9961435a6', 'Destinada A Se Casar Com O General Implacável', NULL, 'Tessa foi transportada para um mundo fictício sobre o qual já havia lido, onde sua irmã, Rita, a forçou a se casar com o notório jovem general Josh, temido por sua astúcia fria e mente calculista. No entanto, armada com seu conhecimento da história original e sua inteligência, Tessa prosperou em sua nova vida, conquistando gradualmente a afeição de Josh. Juntos, frustraram os esquemas sinistros dos vilões, protegendo a paz e o futuro estável de sua terra natal.', 'https://vz-c2303ad7-0af.b-cdn.net/c16af928-420a-4b67-817a-c1792a5d7c19/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-21T20:52:29.229546+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destinada A Se Casar Com O General Implacável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b8d93ced-0544-4fc1-bfeb-0c8daa75b774', 'Perdoar Pela Nonagésima Nona Vez', NULL, 'Alda Dias, a herdeira rica, se apaixonou por Iago Faria, um estudante pobre da faculdade. Mas no coração de Iago, sempre houve Dina Moniz, seu primeiro amor inesquecível. Para não ferir o orgulho de Iago, Alda escondeu sua riqueza...', 'https://vz-c2303ad7-0af.b-cdn.net/ee086647-2a19-4e9c-83ca-7acdee708e5f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-21T20:48:30.426067+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Perdoar Pela Nonagésima Nona Vez'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fff94489-65cb-463c-9d26-de61109920e2', 'A Lenda Do Senhor Guerreiro', NULL, 'Douglas nasceu em Mastago, uma sociedade dominada pelas mulheres, onde frequentemente sofria provocações e humilhações de gangues femininas. A sociedade não permitia que os homens treinassem artes marciais, mas Douglas secretamente praticava contra a vontade de sua mãe. Determinado a realizar seus sonhos e ambições, ele participou do Torneio de Deus Marcial, onde, aos poucos, se aproximou do mistério de sua verdadeira origem na Arena Deus Marcial.', 'https://vz-c2303ad7-0af.b-cdn.net/dd1d0c35-ba84-4956-aa67-488963fbbc1b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-20T21:00:00.799118+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Lenda Do Senhor Guerreiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'accef9a3-f0af-4260-b962-7b5905db0fda', 'A Grã Mestra', NULL, 'Após presenciar o assassinato de seus pais durante a Páscoa, uma jovem é salva pela Imperatriz e criada para se tornar a mais letal entre os Cavaleiros do Império. Quinze anos depois, Elsa retorna para proteger sua família e descobre uma conspiração sombria envolvendo um soro capaz de dobrar a vontade humana. Quando o inimigo ressurge e ameaça tudo o que ela ama, Elsa terá que escolher entre a rendição… ou a destruição. Traições. Sangue. Destino. A batalha final começa agora.', 'https://vz-c2303ad7-0af.b-cdn.net/271befbe-2a72-48cc-82c2-ae5831331abd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-20T20:58:30.338793+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Grã Mestra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '139d71b5-1b15-4f6b-9944-ffef98d9b7a5', 'Me Ame Como Você Faz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e6a31922-0e54-47cc-89b5-c04182cd5d03/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-20T20:03:15.39087+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Me Ame Como Você Faz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e65ea0f1-b765-4f99-8e06-034229812959', 'Caminho Para A Felicidade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7733eca6-5e3d-4d83-9105-19a9fed745ef/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-20T19:58:53.153581+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Caminho Para A Felicidade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d2708c5-ea8e-4013-9d9f-b48c7700f074', 'Cinzas Do Amor', NULL, 'Isabel perdeu a mãe no parto. O pai perderia Clara, a irmã da Isabel, e a enviou ao exército. Isabel apaixonou-se por Alexandre, que só a usou para chegar à Clara. Desiludida, Isabel foi para um casamento político, deixando Alexandre arrependido...', 'https://vz-c2303ad7-0af.b-cdn.net/5735f17f-896a-4baf-b712-7dd45d550482/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-20T19:55:18.160396+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cinzas Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1ccdad37-6aa3-4361-93a6-ff1f93ab3a3c', 'Liberte Me De Sua Traição', NULL, 'Casado há cinco anos, Juliano descobre que a sua mulher, Zélia, há muito que tem um novo amor fora de casa, pelo que decide cancelar todas as suas informações e ir para longe daqui, para nunca mais ver a pessoa que o traiu.', 'https://vz-c2303ad7-0af.b-cdn.net/524338f8-ae6e-4801-bc76-cdf9396ab078/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-20T19:49:21.267692+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Liberte Me De Sua Traição'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c948c016-e45b-420b-8b49-abc684cf6c2a', 'Campeão De Box Renascido', NULL, 'Cinco anos atrás, João Rodriguez foi coroado o 10º campeão do Campeonato Nacional de Artes Marciais, mas foi incriminado por Miguel Santos, proprietário do Clube Imortal, e foi desqualificado e banido por cinco anos. Cinco anos depois, João, sob o nome de Jorge, ajuda sua esposa, Isabel Garcia, a chegar ao topo, mas acaba se divorciando. Com a ajuda de uma rica Camila Costa, Jorge decide voltar aos ringues para recuperar o que é seu por direito e acaba frustrando a trama da família Santos para defender seu título, transformando-o em uma lenda das lutas para as próximas gerações!', 'https://vz-c2303ad7-0af.b-cdn.net/384d8af5-1ac0-4a26-8f88-b16e5555969b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-20T19:41:09.159408+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Campeão De Box Renascido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e4245bfc-56f1-4537-990e-f5122687a201', 'A Vingança do Ex Marido', NULL, 'Bruno e Teresa fundaram o Grupo de Alves de raiz, tornaram-se marido e mulher quando eram jovens e apoiaram-se mutuamente durante 10 anos. Uma vez bêbada, Teresa estava grávida de um filho de um homem, por razões físicas de Bruno, Teresa queria dar à luz a criança sem contar a Bruno... Quando Bruno descobre tudo, decide divorciar-se e começa a sua vingança...', 'https://vz-c2303ad7-0af.b-cdn.net/9f55285a-ceba-49e3-b1ca-428b1b62abda/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-20T03:48:18.590635+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança do Ex Marido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0a68f40b-fb43-4b8b-a2bb-36e574facfa6', 'Mamãe Tá Doendo, Cadê O Papai?', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d8b14070-ce91-4534-8446-1b649d8c703c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-19T21:51:10.063833+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mamãe Tá Doendo, Cadê O Papai?'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6457559a-70f7-4024-88f1-098104d9893c', 'Brilha Como Estrelas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/df487008-b722-48a1-adf5-2b6f4737d22e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-19T21:46:45.293904+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Brilha Como Estrelas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '85d06f8f-4d9e-4045-8759-7143598f68e9', 'Sangue Do Meu Sangue', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dd8a90e0-9c04-4d86-8c6e-d5ef02268aee/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-19T21:17:30.208712+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sangue Do Meu Sangue'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0ddfcf75-72d4-4f94-a5d9-0ba0bcec7f29', 'De Criada A Dona', NULL, 'Adeline, mãe solteira divorciada, trabalha como empregada do bilionário Eric, 50 anos, solteiro sem herdeiros. Após um acidente romântico, engravida acidentalmente. Perseguida pelo ex Jason, Eric a protege e se apaixonam. Com seu apoio, Adeline se torna executiva na empresa dele. Anos depois, Anna, irmã do amigo morto de Eric e apaixonada por ele, retorna e tenta separá-los usando chantagem emocional. Quais tempestades ainda ameaçam a calma da vida que eles construíram?', 'https://vz-c2303ad7-0af.b-cdn.net/5f3537c0-30d5-481e-a3ba-150e9d4afe03/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-19T21:15:16.429347+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Criada A Dona'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c2578a0e-768b-4ea3-824b-16673eabe898', 'A Amante Contratada do Bilionário', NULL, 'A Amante Contratada do BilionárioDurante cinco anos, Fátima foi apenas uma acompanhante contratual aos olhos do poderoso Sr. Lópes, mesmo tendo entregado corpo e alma. Quando decidiu se afastar para buscar dignidade, ele finalmente percebeu seus verdadeiros sentimentos. Porém, o retorno do passado, uma identidade trocada e um coração doente mudam tudo. Entre amor e posse, salvação e perda, o que resta quando a verdade vem tarde demais?', 'https://vz-c2303ad7-0af.b-cdn.net/08a79cfe-923a-44f7-8b5d-ad614cbf02af/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-19T21:10:24.018839+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Amante Contratada do Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5fbbed48-8eb3-4bc2-a8bc-b9ee86620ad9', 'Minha Filha Me Chama de Tia(Sou Uma Filha Invisível)', NULL, 'Sílvia Tavares se casa em segredo com Ricardo Santos, seu admirador. Mas durante o casamento, ela trata o marido e a filha com frieza e indiferença. Quando João Costa retorna ao país com sua filha, Sílvia se dedica a agradar a menina para compensar arrependimentos passados, negligenciando sua própria filha, Ana Santos. De coração partido, Ana vai embora com seu pai. Só após ser traída por João Costa, Sílvia finalmente percebe seu erro, mas já é tarde para salvar sua família. Doze anos depois, ela não é mais do que uma estranha para a adulta Ana. No final, Sílvia Tavares passa seus dias sozinha.', 'https://vz-c2303ad7-0af.b-cdn.net/78810129-e553-4556-b8ec-3ee4589b9226/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-19T21:09:04.101007+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Filha Me Chama de Tia(Sou Uma Filha Invisível)'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6bcaf7c3-99b9-477f-99cc-5b04fc73b918', 'Meu Pai é O Chefão Da Secreto', NULL, 'Chen Zhixing parece um homem de meia-idade comum, mas, na verdade, é o poderoso líder da organização Tianmen, com influência global. Após salvar Han Yunxi, a CEO do Grupo Xinghui, de uma situação embaraçosa, seus destinos se entrelaçam. Eles se casam rapidamente, mas quando a namorada do filho de Zhixing se volta contra eles em busca de riqueza e poder, Han Yunxi assume a defesa dele. Em uma grande conferência da Tianmen, Zhixing revela sua verdadeira identidade como o Dragão Chefe, prometendo seu apoio ao Grupo Xinghui e pedindo Han Yunxi em casamento mais uma vez.', 'https://vz-c2303ad7-0af.b-cdn.net/5879ec88-b5b5-43c9-b13a-3e9dc05d9a66/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-19T21:03:50.624259+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Pai é O Chefão Da Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '57734485-c7a0-4279-b9b5-a30f6294fab6', 'A Felicidade Do Casamento Errado| Casamento Em Chamas| No Olho Da Tempestade| Armadilha Nupcial', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5b293a68-b5b4-4700-b5ac-6a2a0939af35/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-19T21:03:03.29529+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Felicidade Do Casamento Errado| Casamento Em Chamas| No Olho Da Tempestade| Armadilha Nupcial'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7b39f2e4-534b-417d-927f-b4e143619bd5', 'Casamento Rápido, Ela Não Segue As Regras Normais', NULL, 'Lara Sousa foi enviada pela madrasta para as montanhas desde pequena. Lá, passou anos treinando, sem entender as normas sociais modernas. Agora, seu Mestre quer que ela desça a montanha e inventa como motivo que se casar e dormir com o marido aumentaria seu poder. Ingênua, ela acreditava que dormir significava apenas compartilhar a cama. Após descer a montanha e conhecer o marido, situações engraçadas e desastrosas ocorrem até que ela descobre que dormir pode trazer bebês.', 'https://vz-c2303ad7-0af.b-cdn.net/732c6cd4-bf9a-4c57-ab4e-bb82d5c8026a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-19T21:02:14.141016+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Rápido, Ela Não Segue As Regras Normais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e3c2cabf-2a51-4d92-9689-5da808f2c3b9', 'A Sinfonia Bem Orquestrada Com Meu Patrão/Melodia do Verão Amoroso', NULL, 'Após uma noite de paixão entre Janete Cruz e Marcos Mendes, sua irmã, Liliane Cruz, assume a identidade dela. Seis anos depois, Janete se torna a consultora jurídica de Marcos, e os dois começam a desenvolver sentimentos um pelo outro. Temendo perder seu lugar, Liliane tenta sabotar Janete várias vezes, mas todas as tentativas são frustradas por Marcos. No final, a verdade vem à tona, e Janete, Marcos e sua filha finalmente se reúnem como uma família.', 'https://vz-c2303ad7-0af.b-cdn.net/76f0ac70-3174-441f-958c-3afd07198b7c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-19T17:00:01.781627+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Sinfonia Bem Orquestrada Com Meu Patrão/Melodia do Verão Amoroso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '98b82f6a-b792-4b1f-b2f8-ded4daa64620', 'Não Ria! Ana Te Fez Assinar O Divorcio', NULL, 'Ana e Lucas foram casados por três anos. Ela foi uma esposa dedicada, permitindo que ele brilhasse como advogado famoso. Quando Mariana, o amor antigo de Lucas, voltou, ele se envolveu demais no caso de divórcio dela e ignorou os sentimentos de Ana. Num jantar, amigos perguntaram sobre o trabalho de Ana. Ao saber que era dona de casa, olharam com desdém. Ela ficou magoada – afinal, fora uma advogada renomada, mas abandonou a carreira por Lucas. Vendo o sucesso dele, questionou sua escolha. Ana deixou uma carta e voltou ao antigo escritório. Quando se tornou um mito do direito novamente, Lucas descobriu que ela era sua maior rival profissional. Ele perguntou por que ela escondera isso. Ana respondeu: ""Abandonei tudo por amor. Mas agora entendi, preciso me amar primeiro para ser amada.', 'https://vz-c2303ad7-0af.b-cdn.net/4e5e0c45-4010-42c1-a013-49f4cc378ffb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-18T20:20:25.503589+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Ria! Ana Te Fez Assinar O Divorcio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd2441574-b8fe-457d-bd08-fb795b25358d', 'Disparo Do Destino', NULL, 'Ela é uma agente de elite da Interpol. Ele, um assassino de aluguel com um passado sombrio. Quando seus mundos colidem durante uma missão internacional, um único disparo muda o rumo de suas vidas — e desperta uma conexão tão perigosa quanto irresistível.
Agora, entre explosões, traições e olhares intensos, os dois precisarão decidir: confiar um no outro… ou puxar o gatilho.
No jogo entre amor e morte, o coração é sempre o alvo.', 'https://vz-c2303ad7-0af.b-cdn.net/8c2d7681-4759-4dfe-983d-403cd31f6a6c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-18T18:46:10.877074+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Disparo Do Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8f0cfcc0-b3f5-40dd-b56b-710152883509', 'Você Escolheu Seu Primeiro Amor Eu Escolhi Adeus', NULL, 'Anna, negligenciada pela família após seu diagnóstico de câncer, passa por um experimento criogênico e emerge curada. Renascida como Lisa, ela recupera seu status como especialista em câncer de fígado e retorna com poder ao lado do novo marido e do filho adotivo.', 'https://vz-c2303ad7-0af.b-cdn.net/dd1e2ddf-7a74-46f7-ae7c-9094552a02a3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-18T18:38:32.558431+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Você Escolheu Seu Primeiro Amor Eu Escolhi Adeus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '161be827-16ec-41b1-b646-f2cd9712601d', 'Casando Com O Herdeiro E Seu Bebê', NULL, 'O CEO falsamente acusado teve relações com a mulher, mas a pessoa que o incriminou arrumou um homem canalha para mentir, dizendo que foi ele quem teve relações com a mulher, a fim de escapar da culpa. Depois que a mulher deu à luz quadrigêmeos, foi-lhe dito que apenas uma criança sobreviveu. Muitos anos depois, o homem canalha recebeu uma promoção e ficou com a casa da mulher, expulsando-a de lá. Nesse momento, a mulher e o CEO se reencontram...', 'https://vz-c2303ad7-0af.b-cdn.net/ebd2602f-383f-4737-b1d6-95f7b8ac4ec6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-18T18:37:24.89033+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casando Com O Herdeiro E Seu Bebê'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a1caec7a-ec8f-4b8f-a866-99781b42f23a', 'A Esposa Mimada Do Figurão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/da7a7dfa-4fea-4fdf-bfc5-466f965bb7ce/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-18T18:35:32.829514+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Mimada Do Figurão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '10ebdff8-f590-4316-800b-84820a260bbe', 'O Casamento Falso De Dois Chefes', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d8d100a2-71dc-4eb2-99ca-bace8ba5f753/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-18T18:34:37.927405+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Casamento Falso De Dois Chefes'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '65069724-0d80-46ca-bb3a-0e20ed7742bd', 'Para Ficar Ao Meu Lado', NULL, 'Há 10 anos, Aurora Martins esperou a noite toda na chuva por um amigo por correspondência que nunca apareceu destruindo a sua fé no amor. Agora ela se casa Shinn amente com um ex marinheiro honrado, Diogo Gaio… apenas para descobrir que ele é o homem porque quem ela esperou. O destino os reúne mas será que a confiança pode sobreviver a verdade?', 'https://vz-c2303ad7-0af.b-cdn.net/8d5fbf7f-8ea8-4286-a8af-37ef2981b212/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-18T18:32:18.750442+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Para Ficar Ao Meu Lado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2d5e0be4-92c1-4a0b-bf57-4ce9e68c6107', 'Tirar As Notas e Acertar As Contas', NULL, 'Após ser rejeitada por seus pais biológicos e desprezada pelos irmãos em favor da filha adotiva, Mariana é injustamente enviada a um centro de reeducação. No dia da divulgação do ENEM, ela sai livre, e consagrada: é a nova campeã nacional com nota máxima. Na frente de todos, durante a festa, ela rejeita a família que a traiu e transforma humilhação em triunfo.', 'https://vz-c2303ad7-0af.b-cdn.net/6a4ca342-fbec-4a4d-9ae2-c20999aebbd3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-18T18:30:03.429393+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tirar As Notas e Acertar As Contas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ae612a3-499b-4fe7-889d-2ee4f5fb45d2', 'Encantada Pelos Gêmeos Bilionários', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5ec9fdd0-bf00-43c0-8fbc-b594fc3f4410/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-08-17T19:54:29.567294+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Encantada Pelos Gêmeos Bilionários'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a6adb5b6-6e70-4248-9072-8d85ab7ea55b', 'Casamento às Pressas: O Amor de André e Bianca', NULL, '5 anos atrás, a Bianca Souza salvou por acaso o presidente do Grupo Lima, André Lima, e acabou ficando grávida após uma noite. 6 anos depois, quando a Bianca estava sendo pressionada pela família para casar, ela se reencontra com o André, que a procurava desesperadamente. Após um erro do destino, a Bianca se casa com o André. Ele a trata com extrema dedicação, ajudando-a secretamente a enfrentar a sua ingrata amiga, a mãe que a traiu por interesses próprios, e o candidato a casamento que a pressionava incansavelmente.', 'https://vz-c2303ad7-0af.b-cdn.net/e9b10edb-4d71-4d67-ab66-b027f1c8bcaf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-17T16:12:02.617942+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento às Pressas: O Amor de André e Bianca'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '381bcf82-cdd3-420f-882f-643481aa1f7e', 'Superação e Ascensão: Rompendo os Céus', NULL, 'Heitor José, treinado por três mestres lendários, sempre acreditou ser fraco devido à falta de elogios e sua posição inferior na família. Porém, durante um teste na seita, ele revelou um poder incrível, surpreendendo a todos. Sua força despertou a inveja de inimigos, que atacaram seus entes queridos. Determinado a protegê-los, Heitor ativou uma constituição única, derrotou os vilões e garantiu a segurança de sua família.', 'https://vz-c2303ad7-0af.b-cdn.net/9a91bdfc-afe9-4e8d-8016-34b424efe012/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-17T16:09:46.243381+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Superação e Ascensão: Rompendo os Céus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '70628f04-6529-4577-868a-334d502fa1a5', 'Você Não Vê Brilhando', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/67b40a2a-ad6d-49e0-a611-1c12b5e84e17/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-16T20:39:18.443187+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Você Não Vê Brilhando'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1747046d-83a7-4684-b4c1-a7b484f867d2', 'Empregada Secreta Do General', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8f422a78-7234-44da-938d-cae6b5284b5a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-08-16T20:22:01.613718+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Empregada Secreta Do General'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'df1b5363-605b-41d4-b54b-4f9a1d1c0086', 'A Vingança De Catarina', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/91deeece-6827-496d-bf8e-2278ceee1ab7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-16T19:57:53.012766+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança De Catarina'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '16f7872a-9814-4c7d-98c1-7a2fbd9ccf13', 'Três Chances e Um Adeus Para Sempre', NULL, 'Karla sacrificou tudo por Erike — fortuna, saúde e até um rim — mas foi traída e trocada por Cíntia. Disposta a dar só três chances, ela se reergue ao lado do bilionário Landon. Quando a última acaba, sua compaixão também.', 'https://vz-c2303ad7-0af.b-cdn.net/4066d09e-73b8-491c-bf72-1a9465fb20b7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-16T19:53:46.023783+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Três Chances e Um Adeus Para Sempre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ff097e6-cdab-4508-99f0-75c2193409a6', 'Acordo Proibido Com Meu professor', NULL, 'Thea Shale, uma estudante de medicina com dificuldades, planeja vender seus óvulos para pagar a mensalidade, mas um número errado a leva a Kael Vex, um homem misterioso. Kael, determinado a dissuadi-la de sua decisão, marca um encontro – apenas para ficar inesperadamente cativado por ela. O que começa como uma relação meramente transaccional evolui para algo muito mais complexo. Quando Thea acha que seus negócios terminaram, Kael torna-se inesperadamente seu professor convidado...', 'https://vz-c2303ad7-0af.b-cdn.net/69182e1a-70cc-4129-9848-0ff8a61d78f6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-08-16T19:49:29.35429+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Acordo Proibido Com Meu professor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9bfa4bf0-3922-4cfb-b6b3-90b8b13301e8', 'Acertos De Contas Levanta Voo', NULL, 'A caminho do casamento do irmão, Eve pega um voo para o Havaí e reserva um assento mais largo porque está de perna engessada. Dentro da cabine, uma mulher malcriada e o seu filho mimado exigem que Eve troque de lugares com eles. Quando passam por turbulência, o garoto tropeça e sua mãe manda o avião dar meia-volta, agredindo os pilotos e forçando um pouso de emergência. A irmã dela, Clara, surge para lhe dar cobertura e acusa Eve de ser amante do próprio noivo, sem saber que ela é, na verdade, a irmã dele. O casamento é cancelado e Clara acaba presa.', 'https://vz-c2303ad7-0af.b-cdn.net/be9d677b-c242-4cc2-811f-cef928b83b79/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-16T19:45:59.249075+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Acertos De Contas Levanta Voo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0102161a-7e68-48fa-bbe2-88bdc3f6152f', 'Onze Anos Após a Minha Morte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d4fcbc41-4667-478a-8f71-a1571054a0de/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-16T19:42:50.397323+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Onze Anos Após a Minha Morte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c5b7baee-967a-4291-bad0-79a24126ee8d', 'A Esposa Do CEO Venho Do Interior Para Te Apoiar', NULL, 'Fu Jingchen, fugindo de inimigos, é salvo por Nian Baicao nas montanhas. Um encontro casual leva a uma conexão fugaz, deixando apenas a lembrança de um saquinho de artemísia.', 'https://vz-c2303ad7-0af.b-cdn.net/2a2eb40d-9a6a-4b1e-beca-2591f6969153/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-15T19:19:21.545118+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Do CEO Venho Do Interior Para Te Apoiar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '62eb5f78-c4f4-43b5-a088-f7db7fb7b561', 'A CEO Bilionária Do Parque Trailer', NULL, '"Elise Gray foi chamada para servir seu país no dia do seu casamento, desenvolvendo aviões de combate de ponta para o exército. Ela também conseguiu fundar a Lockheed Gray, o maior contratante de defesa aeroespacial e militar do mundo, tornando-se a bilionária mais rica do planeta. Quatro anos depois, ela retorna para casa, para dar ao seu marido Cato o casamento que nunca tiveram, escondendo sua identidade para surpreendê-lo com o casamento dos seus sonhos. No entanto, ao voltar para sua cidade natal, ela encontra problemas - Beatrice tem perseguido incansavelmente Cato, tramando para destruir seu casamento. A família de Cato, especialmente sua mãe Stacy, também está tentando pressionar Elise a se divorciar de Cato para que ele possa se casar com Beatrice, recorrendo até a humilhações para conseguir o que querem. A lealdade de Cato e seu amor sincero por Elise dão a ela forças para lutar até o fim. Elise não vai desistir - não importa o custo, ela defenderá seu casamento e reconquistará sua dignidade."', 'https://vz-c2303ad7-0af.b-cdn.net/ae992e4b-4af5-42d6-89d2-1a01d7923690/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-15T18:54:38.171967+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A CEO Bilionária Do Parque Trailer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '913a4a0c-8cda-4011-b2aa-605bb1291a8f', 'Acorrentada Pelo Amor', NULL, 'Leslie, uma mulher doce e inocente, desesperada para salvar a mãe, consegue uma entrevista de emprego em uma prestigiosa grife. Mas, em vez de um emprego de escritório, ela se depara com Margaret Akroyd — uma CEO bonita, rica e poderosa com uma vida secreta e obscura. O que começa como uma entrevista de emprego desconfortável rapidamente se transforma em um relacionamento intenso e manipulador, repleto de sedução, controle, segredos e perigos.', 'https://vz-c2303ad7-0af.b-cdn.net/463101c4-8037-4053-b363-146505129856/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2025-08-15T18:49:27.674528+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Acorrentada Pelo Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4a58f615-9fbf-4442-b94e-14594708d7d6', 'A Vinganca Da Esposa Desprezada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1e4d657d-0c5e-475b-ba98-ffa9e8a0b952/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-15T18:28:52.058447+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vinganca Da Esposa Desprezada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '90c96a5a-1a9a-4ba4-950f-bf26b60d31d9', 'O Segredo Do Poder Maldito', NULL, 'Sob os Céus de Nortúria, clãs seculares tramam em um jogo sangrento. Há sete anos, Bruno Wang e sua esposa foram assassinados pelo próprio irmão, Victor Wang. O jovem herdeiro Leonardo, considerado um inútil sem talento, foi lançado no abismo da Montanha da Alma Partida. Todos acreditaram que ele havia morrido. Mas no fundo do abismo, ele encontrou o legado de um Imortal Celestial. Quando seus olhos dourados se abriram, o destino mudou.', 'https://vz-c2303ad7-0af.b-cdn.net/dbf29840-937d-4233-9269-8bcbbbe9f538/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-15T18:27:06.528213+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Segredo Do Poder Maldito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ddc2f615-9853-4e36-9021-79a095fe6b91', 'Uma Noite Com Meu Meio Irmão', NULL, 'Após descobrir que seu pai planejava um destino cruel para ela, uma jovem decide fugir de casa em busca de liberdade. Perdida e magoada, ela encontra consolo em um bar, onde acaba compartilhando uma noite inesquecível com um misterioso desconhecido. O que ela não esperava era descobrir, no dia seguinte, que ele era seu meio-irmão. Agora, ambos precisam lidar com as consequências de uma noite que mudou tudo, desafiando limites e segredos familiares', 'https://vz-c2303ad7-0af.b-cdn.net/9d1f081c-d1df-43ba-ab8f-83e2d1cd2c8e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-15T18:25:03.6449+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Noite Com Meu Meio Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba4a8d52-46ae-4c67-92d2-0f9001121f2f', 'O Alfa Rei e sua Noiva Virgem', NULL, 'O Rei Alfa Killian Storm foi amaldiçoado: ele não viverá além dos trinta anos. A maldição só pode ser quebrada se ele encontrar sua companheira predestinada. Mas... e se ela for humana? Os alfas não podem acasalar com humanas. Se eles acasalarem, ela morre. Se não... quem morre é ele.', 'https://vz-c2303ad7-0af.b-cdn.net/a840872d-721e-4662-9274-f99e7bddd64c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-08-14T19:53:05.356523+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Alfa Rei e sua Noiva Virgem'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8089a858-13b8-4f10-9d0e-a645644b48c7', 'Sequestro Nupcial Sequestro Do Coração', NULL, 'Fu Rao pede ao Senhor Falcão Noturno que a sequestre em seu casamento forçado com Ji Yuan. No entanto, descobre-se que o Senhor Falcão Noturno é, na verdade, Ji Yuan. Ele impõe uma condição: Fu Rao deve ser sua empregada por uma semana. Ao longo do tempo, Ji Yuan se apaixona por Fu Rao.', 'https://vz-c2303ad7-0af.b-cdn.net/3e86b936-c2b8-4dfa-9721-31d2337f60ea/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-14T18:09:12.207129+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sequestro Nupcial Sequestro Do Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '96b4cdea-feaf-4d40-8a9a-7629ef11e4f9', 'A Princesa Dos Lycan Nao Sera Sua Luna', NULL, 'Alyssa, a princesa perdida do poderoso Obsidian Pack, desperta a sua herança Lycan escondida após sobreviver a um ataque brutal. Durante anos, ela suportou a humilhação como a Luna sem lobo da Alcateia da Lua Prateada, casada com o Alfa Alaric num contrato para estabilizar a sua Alcateia amaldiçoada. Quando descobre a traição de Alaric - a sua amante grávida e o desdém da sua família - Alyssa vai-se embora, reivindicando a sua identidade real. Reunida com o seu irmão, o Rei Lycan, descobre uma conspiração de bruxaria que suprimiu os seus poderes e os de Alaric. Enquanto confrontam o seu passado e uma bruxa vingativa, Alyssa tem de escolher entre reconquistar o seu amor ou trilhar o seu próprio caminho como líder. Uma história de traição, destino e redenção feroz.', 'https://vz-c2303ad7-0af.b-cdn.net/6ebcc4fe-b11d-40ba-8205-35dc28e4b26c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''homem-lobo'']', '2025-08-14T18:06:33.68801+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa Dos Lycan Nao Sera Sua Luna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '891fd680-1650-4403-b0e2-be9249aef8ec', 'Quebrando O Gelo', NULL, 'Caroline, mãe solteira, terminou seu relacionamento com seu primeiro amor, Easton Black, há oito anos… Mas ela nunca lhe contou que ele a engravidou! Agora ele é a estrela de hóquei mais quente da liga e chefe de Caroline! Será que Caroline terá coragem de revelar a verdade ou será que é tarde demais? Baseado no livro Shutout de Jami Davenport!', 'https://vz-c2303ad7-0af.b-cdn.net/da987b06-36f8-477b-b7a5-a698c2fb13fb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-14T17:32:25.359833+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quebrando O Gelo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a3029cdd-8195-4e99-a776-613a676e0f5f', 'O Primeiro Amor do Quarterback', NULL, 'Após ser traída por seu noivo quarterback, a vida de Maddie desmorona. Até que ela conhece Cameron, um jogador misterioso com um rosto estranhamente familiar. Mas enquanto a paixão entre eles cresce, surgem três inimigos: um ex obcecado, uma líder de torcida disposta a tudo e uma mãe ciumenta. Será que Maddie vai ter uma segunda chance no amor?', 'https://vz-c2303ad7-0af.b-cdn.net/d17cdcd5-d538-4e0a-bc44-2329df5248ea/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-14T17:21:21.483221+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Primeiro Amor do Quarterback'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4edd0321-9241-4daa-8588-bcc5db7cf815', 'Casamento De Repente Filhos Do Segredos', NULL, 'Crianças fofas ao resgate! Gêmeos adoráveis encontram a mãe ideal para o casamento do pai, um CEO bilionário, para o casamento do pai por impulso, apenas para descobrir que ela é, na verdade a mãe biológica desaparecida!', 'https://vz-c2303ad7-0af.b-cdn.net/ee86e6b0-764e-43e2-a22c-b1cf187eef47/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-14T17:11:07.93507+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento De Repente Filhos Do Segredos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '78207697-41a7-4200-a411-65d231e753ee', 'Troca Destinada: A Fofa Substituta', NULL, 'Vânia, a verdadeira herdeira da família, foi criada em condições cruéis no campo, mas é trazida de volta ao império de luxo para substituir..', 'https://vz-c2303ad7-0af.b-cdn.net/a9b4ab26-8033-424f-9997-83bc13ed1048/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-14T16:57:38.046729+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Troca Destinada: A Fofa Substituta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '667f3b33-04ee-4dcd-9f7e-883e95916471', 'Quando a Lua Caiu', NULL, 'Quando Diana Silva estava grávida de cinco meses, Laura Queiroz atraiu os bárbaros Dizu para matá-la, mas foi confundida com a esposa do general e acabou morta. Antes de morrer, culpou Diana com uma mensagem escrita com sangue. Miguel Cruz acreditou nela e ordenou que os prisioneiros Dizu violentassem Diana, que perdeu o filho e morreu. Ao acordar no dia do massacre, Diana decidiu mudar seu destino e buscar um aliado poderoso.', 'https://vz-c2303ad7-0af.b-cdn.net/43796bf8-8d7c-4632-aa4d-a0023dc7acd7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-14T16:47:58.433632+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando a Lua Caiu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '11bfeaca-c1a9-4759-8911-e18c7ed54ee2', 'Meu Namorado é Piloto Da Máfia', NULL, 'Tony Baker, um comissário de bordo atolado em dívidas, inesperadamente dá match no Grindr com Ryan Rossi, seu charmoso — porém enigmático — crush piloto. O romance deles decola em meio ao glamour da aviação, mas logo Tony descobre o segredo obscuro de Ryan: ele é herdeiro de uma poderosa família mafiosa e usa sua prestigiada carreira como fachada para o tráfico de drogas. À medida que Tony desvenda a perigosa vida dupla de Ryan, seu amor proibido se entrelaça com uma investigação eletrizante, obrigando-os a lidar com a política no trabalho, rivais mortais e a constante ameaça de serem expostos. Será que o amor deles resistirá aos céus turbulentos de suas vidas perigosas?', 'https://vz-c2303ad7-0af.b-cdn.net/3d8a1800-27ce-49e7-adfc-5b7b18a1e39d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-14T16:37:59.310412+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Namorado é Piloto Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f57735bb-d3e2-4d24-a2f5-582ac588b87e', 'O Drama Do Banquete  De  Noivado', NULL, 'Kim Bo-young retornou do exterior para o casamento de seu filho Shin Jun-seok. Devido à sua juventude e beleza, foi confundida pela futura nora, Park Min-sook, com uma "amante", apesar de nunca tê-la encontrado antes. Ela sofreu agressões e insultos repetidos da filha de celebridade e de sua família, quase perdendo a vida. Com a ajuda e proteção de seu filho, Park Min-sook teve sua verdadeira face revelada, e uma reviravolta dramática ocorreu no banquete de noivado, com reviravoltas a todo momento...', 'https://vz-c2303ad7-0af.b-cdn.net/78b27b66-ab18-4615-983a-ff102b7e6f3d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-14T16:35:35.498893+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Drama Do Banquete  De  Noivado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '78f0e758-1843-41d4-88ba-7f78abb45d71', 'Apaixonando Se Por Uma Superstar', NULL, 'É sobre uma pessoa que se apaixona por um músico, quando foi no segundo show da banda favorita, e assim, quando ouve no rádio suas músicas, fica iludida esperando que a pessoa vá encontrá-', 'https://vz-c2303ad7-0af.b-cdn.net/fd395cb5-f58f-4d93-9a08-6ebaae930424/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-13T20:30:19.444594+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apaixonando Se Por Uma Superstar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bf435083-1b3b-422b-be68-bb14f0918dca', 'Ela Armou Ele Apaixonou', NULL, 'Grace, órfã e prisioneira da própria família adotiva, foi criada com um único propósito: ser vendida a um oficial corrupto. Mas ela tem um plano. Determinada a fugir com o irmão deficiente, a jovem joga tudo em uma última cartada, seduzir o bilionário Jackson Carroll. Grace decide virar o jogo e usar Jackson como sua arma.', 'https://vz-c2303ad7-0af.b-cdn.net/acb4c826-e766-49d4-accd-6854d329ff3f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-13T18:51:34.556687+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela Armou Ele Apaixonou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd639d4a4-74c2-42f7-999e-402de022b117', 'A Esposa Desaparecida Da Máfia Volta Com Gêmeos', NULL, 'inopse:
Os bebês gêmeos do rei da máfia Luca foram separados por um incêndio. Seis anos depois, a pobre babá Sarah está criando sua filha. E a verdade permanece enterrada — até que seus filhos se reencontrem...', 'https://vz-c2303ad7-0af.b-cdn.net/123e66c6-85fb-4469-a762-aa91a0ddafbd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-13T18:46:04.644177+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Desaparecida Da Máfia Volta Com Gêmeos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '048af48f-a94b-4ed1-8432-c4f4b2deb0b8', 'Ex Esposa De Face Dupla', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cd56865e-6e7d-48ca-8950-9de3c2f96543/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-13T18:37:18.675044+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ex Esposa De Face Dupla'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2fe71aad-7a0f-4a92-aada-7d92990d5c14', 'Trigêmeos Acidentais Com O Bilionário', NULL, 'Desesperado por um herdeiro para garantir a sua posição na empresa, Oscar recorre a uma barriga de aluguel. Mas, acidentalmente, o esperma dele é injetado em Phoebe, que apenas tinha ido ao médico para fazer um exame ginecológico. Para garantir que ela leva a gravidez até ao fim, Oscar propõe um casamento por contrato. E assim começa uma jornada cheia de desafios...
', 'https://vz-c2303ad7-0af.b-cdn.net/efdffc70-80a0-453a-9650-75b3d8e6a6bb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-13T18:28:00.330782+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Trigêmeos Acidentais Com O Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e7c29cc7-f273-4ec8-8367-8f98e23b2c57', 'Mãe Solteira Impressiona O Mundo', NULL, 'sem', 'https://vz-c2303ad7-0af.b-cdn.net/cf3b3ae3-9114-4a4c-9c15-b494711a8f4d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-13T18:26:00.019085+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mãe Solteira Impressiona O Mundo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ed23ce7b-6f5a-472e-a682-12a8deed9cfb', 'Segredos Do Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3f593801-eef2-4281-ad58-99b27a9ab500/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-13T18:24:10.207278+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segredos Do Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1a4b56e1-ee61-4adf-8ed0-f5df5d1e6e25', 'Deusa Da Música', NULL, 'Scarlett, a lendária cantora mascarada, abandonou a fama para viver como anônima. Por 20 anos, compôs músicas pro marido medíocre - que, ao ser descoberto por um programa musical, a trai com a empresária e humilha o ''fracassado'' dela. Agora, com a máscara e o microfone na mão, a Diva vai desmascarar os ingratos ao vivo!

', 'https://vz-c2303ad7-0af.b-cdn.net/edcc52aa-031b-4fb8-8c50-533db2dd8807/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-13T18:17:24.012036+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Deusa Da Música'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '100fc9b0-2e94-4dc8-a880-165e5784e5ba', 'Brilhei Na Festa Do Divorcio', NULL, 'Laura nasceu em uma família onde o impossível não existe: filha do homem mais rico do planeta, com irmãos que são lendas em seus campos — um general respeitado, um astro do entretenimento e um magnata das finanças. Apesar de tanto poder ao redor, Laura só queria uma coisa simples: viver um grande amor com André, seu amigo de infância. Mas o destino adora testar os corações teimosos. Num acidente, Laura se joga na frente de um carro para salvar André e acaba perdendo os movimentos das pernas. Os médicos são claros: ela nunca mais vai andar. Só que o pai de Laura move montanhas, contrata os melhores médicos do mundo, e ela volta a andar, mas mantém o segredo, fingindo ainda estar presa à cadeira de rodas, tudo para saber se o amor de André é verdadeiro. Na véspera do casamento, Laura decide revelar tudo: na frente de todos, ela vai se levantar, contar quem realmente é e o poder da sua família. Mas, antes disso, flagra André nos braços de sua melhor amiga, Luana. Pior: André joga na cara de Laura que, se ela quiser, casa; se não quiser, tanto faz. Humilhada, Laura engole o orgulho e finge aceitar, mas liga para o pai e transforma o casamento em uma grande festa de divórcio.
', 'https://vz-c2303ad7-0af.b-cdn.net/5b84d81f-2685-4a04-b092-5ad301f78a82/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-12T18:05:46.465646+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Brilhei Na Festa Do Divorcio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '647c1b85-cf1c-4839-829b-4f82f274f0b5', 'Vingança Da Reencarnada, Troquei De Noivo', NULL, 'Sinopse:
Quando seus pais dão a opção de Gabi Fevale escolher com quem quer se casar, ela escolhe Lucas porque o ama, mas Lucas Oliveira tem em seu coração Isabela Rodrigues. No dia do casamento deles, Bela tenta supostamente se matar porque bebeu demais e perdeu sua pureza. Lucas a salva promete se vingar e se casar com Gabi para roubar seus patrimônios e a deixar doente. Eles sabotam o carro causando a morte dela e de seus pais. Felipe chora ao ver sua amada morta.
Entretanto Gaby renasce e muda seu destino, escolhendo Felipe Almeida como seu noivo e Lucas Oliveira se arrepende amargamente.', 'https://vz-c2303ad7-0af.b-cdn.net/1f48c259-0374-44f0-987e-74b9b3315e11/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-12T17:50:07.528233+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança Da Reencarnada, Troquei De Noivo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '318ced5d-64b1-4a7c-ab08-0f3d57f3f0e8', 'De Volta Pra Ela', NULL, 'Após perder tudo, Luísa Jardim aceita viver ao lado de Jonas Peres em um acordo por três anos. Quando o tempo termina e ela vai embora, .
', 'https://vz-c2303ad7-0af.b-cdn.net/2f11965c-4f7b-4ffb-92bf-0e8f58217694/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-12T17:46:13.562252+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Volta Pra Ela'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6bc898d0-596f-43c7-bd83-86caf7d8a6a9', 'A Nerd Dele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3b709413-8323-4857-8a11-4c3077a9ab7a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-12T17:36:27.904055+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Nerd Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '794d337c-d4c4-4716-ac28-8d973a661773', 'Cláusula Proibida', NULL, 'Endividada até o pescoço, Evelyn aceitou um casamento de fachada só para aguentar três anos de União sem intimidade enquanto o marido trazia amantes para trans** em casa sem vergonha nenhuma. Quando o avô exigiu...', 'https://vz-c2303ad7-0af.b-cdn.net/2c6528cb-0deb-404b-b7af-5baf596772df/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-12T17:27:29.856426+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cláusula Proibida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2c6fdd30-452d-45c7-8ffc-db7e27ef0822', 'Jovem Santo Da Espada', NULL, 'Victor, o lendário "Santo da Espada", reencarna em Tadeu, jovem desprezado do maior clã de espadas do Leste. Abandonado por sua falta de talento, sua mãe sofre para mantê-lo vivo. Ao despertar o poder do Santo,Tadeu busca redenção: usar sabedoria milenar para proteger sua mãe, desafiar seu destino e ascender na arte da espada. Pode um "inútil", guiado por amor e legado divino, reescrever seu caminho rumo à imortalidade e honra.

', 'https://vz-c2303ad7-0af.b-cdn.net/d8dc2f31-5bed-4693-b321-20a80c764320/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-12T17:22:30.877045+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jovem Santo Da Espada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7ba69fc1-2f59-4236-b4d0-df9be98ef3af', 'O Retorno da Herdeira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3e6e18c0-aba4-4553-b3da-987f1505ce99/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-12T17:18:11.081884+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno da Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '90ddf54c-8e20-47d7-86d4-58178ca898af', 'Estaca No Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9f7db2b7-d5d4-4f86-a94e-76fd77407efd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-11T20:27:27.34419+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Estaca No Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '27238023-d97f-44f2-b662-b6c09a5ab551', 'Boa Menina Do Papai Dominante', NULL, 'Após flagrar a traição do namorado, Olívia se vê atraída pelo pai poderoso e dominante dele. O que começa como vingança se transforma em um perigoso jogo de desejo, segredos e controle - onde ela pode perder mais do que apenas o coração.', 'https://vz-c2303ad7-0af.b-cdn.net/e3de66a9-28a2-4fb5-987e-2a7280ea5007/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-11T19:25:23.996953+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Boa Menina Do Papai Dominante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '06ea7188-78f8-4518-a68f-4f14d9d6402e', 'Minha Pobre Ex, A Herdeira Bilionária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7c03faf2-149f-4a71-bea6-66d15c005c51/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-11T19:13:24.439928+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Pobre Ex, A Herdeira Bilionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a9578326-3e14-4eb9-94d7-b4d3d2520b2a', 'Tão Frágil Tão Cor De Rosa', NULL, 'Ana foi cortejada por Pedro e eles se casaram rapidamente, mas ela não sabia que o casamento feliz que esperava era na verdade uma farsa. Ela se esforçou para ser a namorada e esposa ideal, mas quando a verdade veio à tona, suas esperanças se desfizeram e ela decidiu se divorciar. No entanto, nessa altura, Pedro já estava profundamente envolvido.', 'https://vz-c2303ad7-0af.b-cdn.net/7cfbea31-7f4f-4173-8c46-b3b8fb0f957f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-11T19:10:10.954675+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tão Frágil Tão Cor De Rosa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f38cb9af-2e4e-41f0-bccf-aae7084c7672', 'Assombrado pelas Lembranças De Você', NULL, 'Renata se apaixonou por Roberto à primeira vista e, após seis anos de dedicação cega, finalmente se casou com ele. Mas em dois anos de casamento, nunca foram verdadeiramente marido e mulher. Um dia, Renata descobre que Roberto nutre uma obsessão doentia por Patrícia, sua irmã de criação. Cansada da dor, assina o divórcio e vai para a Alemanha, onde reencontra Fabiano, seu admirador secreto há dez anos. Mas é só então que Roberto percebe: foi Renata quem ele amou o tempo todo.', 'https://vz-c2303ad7-0af.b-cdn.net/e5c332a7-463a-4a34-97f0-638ae6bde715/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-11T18:46:15.542357+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Assombrado pelas Lembranças De Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba875a29-d5b5-47f6-9537-c4c33ad4487b', 'Esperma Errado Amor Certo', NULL, 'Dayse descobre que já está grávida após uma troca de espermas com Alex, Bilionário do tráfico de armas. Ela se muda para sua casa como noiva e futura mãe de seu filho - mas os dois querem mais do que apenas isso...', 'https://vz-c2303ad7-0af.b-cdn.net/e766c324-02aa-40fc-b227-9776991bee49/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-11T18:42:12.709909+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esperma Errado Amor Certo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1ae1f072-bff2-42ae-b816-4881faa08de0', 'Vá Torcer Bebê', NULL, 'Jane, mascote do time de líderes de torcida, sofre bullying na escola. Após um tornado destruir sua casa, ela precisa morar com seu antigo inimigo de infância, apelidado de "Gordinho". Para sua surpresa, ele agora é o alto e bonito capitão do time de basquete.', 'https://vz-c2303ad7-0af.b-cdn.net/93a7247c-ae1b-4733-8d55-5695e6ae8497/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-11T18:35:46.886735+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vá Torcer Bebê'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '27cfeaba-3d2b-4746-82bf-224f6b4e9516', 'Contratada Pelo Prazer', NULL, 'O que acontece quando uma mentira vira a única verdade capaz de salvar você? Julia consegue um emprego de fachada numa empresa de alto nível e se vê num jogo de amor, chantagem e poder. Com o carismático CEO Richard, precisa manter a ilusão perfeita entre investidores ciumentos e rivais vingativos. Um thriller corporativo em que imagem é moeda e amor é o risco mais imprevisível.', 'https://vz-c2303ad7-0af.b-cdn.net/6d9cb2ed-e8bf-43d4-b0be-6dd542bcee9c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-10T01:28:51.976512+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Contratada Pelo Prazer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6937962c-c6ce-4c4b-8c93-d8e5561a3080', 'Coração De Ouro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bac3097f-2b8f-4cc9-b7e5-bfc49c0c9b9f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-09T20:34:53.97353+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração De Ouro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f9d65618-edab-492b-a542-08f471aeb947', 'Beleza e vingança a Herdeira Inesperada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d7035ddd-35e5-4a8d-8e9f-23baf11705c4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-09T20:29:35.35199+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Beleza e vingança a Herdeira Inesperada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '29cc22e4-8b9a-488e-b070-8eb5992d00ca', 'Do Amor A Solidão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c6de2927-2dce-4517-be1b-04b407592c59/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-09T20:25:16.516593+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Amor A Solidão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '38f90b8d-4066-4bcc-9784-fdc0b2d26897', 'Marido De Aluguel', NULL, 'Lívia contrata Jack (que ela pensa ser um garçom comum de hotel) para se passar por seu namorado na festa de noivado do ex-noivo e da meia-irmã. Mas quando Jack a pede em casamento na frente de toda a sua família, ela tem que aceitar. Mal sabe ela que ele não é, na verdade, um ator desempregado, mas o neto de um hoteleiro bilionário.', 'https://vz-c2303ad7-0af.b-cdn.net/e4dfb3e0-7279-4c0b-89d1-a8e4ba4eb22f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-09T20:11:06.735812+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Marido De Aluguel'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6d78a827-f9fd-4420-8f19-27cee5722529', 'O Retorno Das Gêmeas', NULL, 'Sofia, presidente do Grupo Fênix, passa anos procurando sua irmã gêmea perdida, Vanessa. Quando a encontra, descobre que Vanessa sofre maus-tratos em seu casamento. Sofia ajuda a irmã a se divorciar e conquistar a guarda da filha, trazendo esperança de uma nova vida para Vanessa.', 'https://vz-c2303ad7-0af.b-cdn.net/650e9ced-e192-47f3-91e5-fdde188a23f8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-09T20:09:45.766955+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Das Gêmeas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9d6ac788-281f-4609-908c-7b4952389645', 'O Diabo Veste Desejo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6e1c520f-ec30-4fc1-b5f2-13b8d265efba/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-09T20:08:18.527293+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Diabo Veste Desejo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ff633fce-f5a8-4437-8b62-b8d3263872bf', 'Destinada Ao Meu Garoto De Programa Bilionário', NULL, 'Claire quer ter um bebê para dar à sua avó doente algo pelo que viver. Quando o marido traidor de Diane a deixa, ela contrata um garoto de programa para fazer um bebê com ela. Ela não sabe que o garoto de programa é, na verdade, o bilionário Dominic Bridges, que está apaixonado por ela e fará qualquer coisa para pegá-la. Mas sua rival intrigante, Gina, fará qualquer coisa para mantê-los separados...', 'https://vz-c2303ad7-0af.b-cdn.net/856f6c29-3efc-4c22-921d-d1bbfab25e98/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-09T20:07:13.753951+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destinada Ao Meu Garoto De Programa Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'aeac6c94-0a25-440d-bd5b-577843941f5d', 'Minha Secretária a Mãe Do Bebê', NULL, 'Sinopse:
Quando o CEO bilionário Finn Vanderbilt descobre que seu esperma roubado foi usado para inseminação artificial, ele se decide a encontrar o culpado. Sua busca o leva a Jasmine Thompson, uma mulher em dificuldades que enfrenta seu próprio choque: uma gravidez inexplicável. O primeiro encontro explosivo deles — um mal-entendido caótico no elevador — desencadeia uma série de eventos repletos de intrigas corporativas, ex-namorados vingativos e segredos perigosos.', 'https://vz-c2303ad7-0af.b-cdn.net/a22b161a-3920-4415-96ad-332537968ac4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-08T21:34:36.064481+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Secretária a Mãe Do Bebê'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3254adfd-5ee3-4542-894d-7428b903aa7d', 'Implorando para que eu volte para casa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d6334671-6a26-4658-a851-2c85aa862251/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-08T21:28:07.853727+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Implorando para que eu volte para casa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6cdf4d92-163f-4447-947d-878f909a23cd', 'Esposa Amada Ceo Retorna', NULL, 'Ela já foi uma princesa amada que o amava até o âmago e insistiu em se casar com ele, independentemente das outras mulheres em seu coração ...', 'https://vz-c2303ad7-0af.b-cdn.net/9441a768-1f3c-49e2-9385-32637324e543/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-08T21:26:35.604569+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa Amada Ceo Retorna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7c9588de-73f8-4724-8de6-82a18452b912', 'Casamento Relâmpago Minha Segunda Chance Aos 40', NULL, 'Sinopse:
Samantha, uma mãe solteira de 40 anos, se casou com um homem estranho que sua filha encontrou no Tinder! Parece que seu marido de casamento relâmpago foi forçado a aceitar esse casamento, então ele propôs ficar apenas como um casal legal, preferindo permanecer um estranho para Samantha. Nenhum dos dois se preocupou em lembrar o rosto do outro.', 'https://vz-c2303ad7-0af.b-cdn.net/94aa0470-17f3-4b15-bb7b-84fc123f2223/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-08T21:25:10.059782+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Relâmpago Minha Segunda Chance Aos 40'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '809cc21d-fb73-4faa-9ae5-6e95c339d140', 'Renascida Mãe Poderosa e Imbatível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5fa4d974-78fb-437d-8a98-8551e7a1a6bc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-08T21:18:36.338857+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascida Mãe Poderosa e Imbatível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '05ea1e27-195f-45a0-a0b4-53c827309d8c', 'O Ajustador', NULL, 'Após a morte de sua irmã por ter sido rejeitado o plano de saúde, Matteo Leone - um homem arrasado - decide fazer justiça com as próprias mãos, assassinando o Ceo da segurança. Mas sua motivação vai além da vingança: seu objetivo maior é expor as empresas corruptas de seguros de saúde que exploram injustamente os clientes mais vulneráveis. Matteo mantém-se sempre um passo à frente da polícia, deixando pistas pelo caminho para transmitir sua mensagem. Logo, ele se torna um herói para aqueles que os Ceo''s sem escrúpulos acreditavam silenciar o poder.', 'https://vz-c2303ad7-0af.b-cdn.net/dffacfbe-1364-4ab4-a135-91b8284d2d75/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-08T21:14:26.046646+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Ajustador'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd95e7e82-5687-44b3-bf2b-6184315effb0', 'Guardião De Dia e Amantes A Noite', NULL, 'SINOPSE: Em uma festa da alta sociedade, Selena e Emma se tornaram alvo de vingança de um ex-namorado e acabaram em perigo. Seus respectivos seguranças, Noah e Carson, uniram forças para salvá-las, mas Noah acabou ferido no processo. Como compensação, Selena exigiu que Emma enviasse Carson para servir em sua casa por três meses. Durante sua estadia na mansão de Selena, Carson foi gradualmente conquistado pelas provocações sedutoras de Noah e decidiu romper com o controle do irmão de Emma — um perigoso chefão do crime. No entanto, Carson logo descobriu que Noah era, na verdade, irmão de Selena e o herdeiro misterioso de uma família bilionária, e que tudo havia sido uma armadilha amorosa cuidadosamente planejada por Noah desde a noite em que Carson o salvou, dez anos atrás.', 'https://vz-c2303ad7-0af.b-cdn.net/054b4ff8-6c3b-48b4-8894-95db8727e6fd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2025-08-08T20:36:41.138004+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Guardião De Dia e Amantes A Noite'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '52ed18e5-0001-4d01-9b9e-1684f99d271e', 'Prisioneiro Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1c1f1e0b-8abf-4437-8007-bc30168920f9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-07T19:34:16.055199+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Prisioneiro Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6ba12ab9-7ac2-4661-b031-1a86b5ef549e', 'Meu Marido Inesperado Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a5cff01d-cc7b-46c4-9128-9cc5d6d8a8bc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-07T19:33:12.731439+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Inesperado Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ea0de83c-5c0f-4fbb-8160-1c500c5459a4', 'Desejo Sombrio Da Elise', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d5975ad6-a899-45f9-a9ea-2fce91e492a7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-07T19:30:35.304915+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejo Sombrio Da Elise'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd532de23-b807-4c3e-a767-bd37f4467d10', 'Cativa Na Sua Gaiola', NULL, 'Durante três anos, Adriana viveu um amor proibido com Nathan. Mas agora ela vai se casar com outro homem — e Nathan está à beira da loucura.Adriana parece ter uma vida perfeita com um emprego dos sonhos, uma melhor amiga como chefe e um namorado amoroso, Victor, que está prestes a retornar após três anos de relacionamento à distância. No entanto, revela-se que ela viveu um inferno durante esse período, envolvida em um caso secreto e proibido com Nathan Blaine, o novo presidente da empresa, que carrega um ódio profundo por ela devido a eventos passados envolvendo suas famílias. Nathan lembra Adriana que seu caso secreto está prestes a acabar, mas ele não parece disposto a deixá-la ir.Adriana conseguirá escapar do controle de Nathan e reatar seu relacionamento com Victor, ou o passado sombrio a alcançará?', 'https://vz-c2303ad7-0af.b-cdn.net/117242ac-0759-4ee2-9dc0-8d9d1eca3029/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-07T19:28:25.00668+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cativa Na Sua Gaiola'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1b053d67-c64a-4111-88ea-85c518e9a54e', 'Eu Posso Ouvir Seus Pensamentos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/265b5097-7115-44d5-9ca9-99e08154d5ab/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-07T19:26:23.53289+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Posso Ouvir Seus Pensamentos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '729a12a4-1c50-4def-a56c-011112ce9434', 'A Serva e o Tirano', NULL, 'An Jiu, uma mulher dos tempos modernos, desperta no harém imperial como uma simples serva, sonhando em conquistar o favor do imperador. No entanto, assim que abre os olhos, o tirano imperador a atravessa com uma espada. No dia seguinte, ele mata uma criada sênior que servia uma concubina, e no outro, uma serva morre envenenada ao provar a comida do imperador. Ser criada no palácio é um trabalho de alto risco, então An Jiu decide focar apenas em seu serviço, economizar o máximo possível, valorizar sua vida e manter distância do tirano. Mas, de repente, ela começa a ouvir os pensamentos mais íntimos do imperador…', 'https://vz-c2303ad7-0af.b-cdn.net/2bfcaf16-10da-44fc-826e-946f9b2091e4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-07T19:24:52.010482+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Serva e o Tirano'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ae6215b0-7a13-4a52-a8a3-8440cf5de52d', 'Coração Em jogo', NULL, 'O herdeiro de Porto Nova, Igor Braga, fez uma aposta com seus amigos, conquistar a simples garota Marília em um mês. E para testar a sinceridade da Marília, ele fingiu ter um tumor cerebral para enganá-la. Marília, para salvar o namorado, trabalhou em oito empregos diferentes por dia para juntar dinheiro para o tratamento dele. No entanto, durante um trabalho no KTV, a Marília encontrou Igor em sua festa de aniversário e, sem querer, descobriu sobre a farsa dele. Ela ficou chocada ao ouvir tudo.', 'https://vz-c2303ad7-0af.b-cdn.net/0b4f5368-0983-49ea-87da-9ad28f23769e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-07T19:19:05.116436+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Em jogo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d60e76c-39ec-43e4-a772-9526f46e70aa', 'Chefe Em Onda', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5d082e80-8a7b-4805-8d69-7447904ba08a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-06T19:04:05.343528+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chefe Em Onda'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0e195437-1243-4542-af28-cef518a410fc', 'Quando O mundo Era Do Passado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/847cceaf-a786-4c3e-a51f-4ecad72c7031/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-06T19:02:58.702154+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando O mundo Era Do Passado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e8369a5a-1d40-409e-9f8f-f091a99941f6', 'A Princesa Está De Volta', NULL, 'A protagonista esconde sua identidade real e se casa com um futuro político, mas o pega se casando com outra. Humilhada, dá a luz prematuramente e é salva por seu ex-noivo. Após o divórcio, retoma seu título de princesa e deixa a família do ex cheia de arrependimentos.', 'https://vz-c2303ad7-0af.b-cdn.net/3057ddec-4094-4831-8ad3-dc098fb5af93/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-06T19:01:12.951931+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa Está De Volta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '75e8f56c-2c25-4331-aae2-7bc1e224da29', 'Não Chore Eu Me Casei Com Alguem Melhor', NULL, 'Scarlett Winters fica arrasada quando seu noivo, Carlton Simmons, a abandona no altar. Humilhada, ela foge e quase é atropelada por um carro. O incidente foi orquestrado por Leo Forester, gênio e lendário CEO. Ele reconheceu a noiva em fuga. Leo lhe oferece uma solução incomum: um contrato de casamento para ajudá-la a recuperar sua dignidade e reconstruir sua vida. Enquanto Scarlett se recupera, Leo a ajuda secretamente, ocultando sua verdadeira identidade e suas intenções. Mas quando velhos inimigos ressurgem e segredos enterrados vêm à tona, Scarlett se sente traída e pensa em ir embora. Agora Leo precisa decidir se vai confessar seus sentimentos ou arriscar perdê-la para sempre.', 'https://vz-c2303ad7-0af.b-cdn.net/80d52870-7d77-4e41-b39c-9a970c3197e7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-06T18:57:30.242611+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Chore Eu Me Casei Com Alguem Melhor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9502f390-6224-4382-a868-fbfa58022416', 'Sr Silva, Você Escolheu A Pessoa Errada', NULL, 'Sinopse:
A cega Camila Souza descobre que seu namorado, Guilherme Lima, a traiu e foi armada para ter relações com o bilionário Carlos Silva e engravida. Sob pressão da avó, Carlos se casa com Camila, mas despreza ela, sem sabe', 'https://vz-c2303ad7-0af.b-cdn.net/0a3f213e-a7c3-4800-aed6-599eb4fd12dd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-06T18:54:37.273981+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sr Silva, Você Escolheu A Pessoa Errada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '37635563-cc27-43a4-9814-58188df8c36c', 'Eu Sou Sua Tempestade Marido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6b423439-6ebd-40d0-a888-9584f78fe435/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-06T18:52:15.768644+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Sou Sua Tempestade Marido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a377bc56-7ae7-417e-935d-d71311a20452', 'O Filho Perdido Voltou Como Duque', NULL, 'Sequestrado ainda criança, Arthur retorna à sua terra natal anos depois como o poderoso e temido Duque da Mércia. Seu único objetivo é reencontrar a família que lhe foi tirada.Mas o que ele encontra é uma realidade brutal. Seus pais e sua irmã vivem na miséria, sofrendo humilhações diárias nas mãos de parentes e vizinhos cruéis.Mantendo sua identidade em segredo, Arthur jura vingança. Ele vai usar todo o seu poder para destruir, um por um, aqueles que ousaram maltratar sua família.
', 'https://vz-c2303ad7-0af.b-cdn.net/cb57f619-af38-4683-b523-e5bb4ea96454/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-06T18:50:39.859682+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Filho Perdido Voltou Como Duque'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '64ddac72-66e1-4bd1-be66-7bd8eb3e9749', 'Meu Amante é Um Sniper', NULL, 'gira em torno de Valentina, uma mulher enigmática que busca acessar o cofre com a herança de seu falecido marido. Para isso, ela precisa da chave e de informações sobre sua localização. A trama se desenrola com a descoberta de que o marido era um sniper, e Valentina se vê envolvida em um mundo perigoso, precisando lidar com segredos, perigos e desafios emocionais.', 'https://vz-c2303ad7-0af.b-cdn.net/92250a99-9d44-4242-b766-37a740a7ab9c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-05T22:52:36.658302+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Amante é Um Sniper'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '73c98bbf-17ce-4367-8aff-629149c6607b', 'Sorria, Meu Marido Traidor, Está na Câmera', NULL, 'Uma ginecologista genial descobre, no meio de uma cirurgia, que o marido a trai — com a amante deitada na mesa de operação. Grávida, furiosa e humilhada, ela arma um confronto viral que desmascara as mentiras, arruina reputações e faz ela retomar o controle com tudo.', 'https://vz-c2303ad7-0af.b-cdn.net/071ea133-d3d7-42d0-bf51-c8a2359c985d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-05T20:56:01.448153+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sorria, Meu Marido Traidor, Está na Câmera'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'afbea47d-d218-4a9b-a99d-27f79c322bdf', 'De Arrasada A Raiar: Sou De Mais Sem Vocês', NULL, 'Letícia, uma aluna exemplar de medicina, era adorada por todos no laboratório. Mas tudo mudou com a chegada da caloura Carolina, que manipulou os cinco colegas de Letícia, fazendo com que ela fosse abandonada por todos e morreu na prisão por acusações falsas. Ao renascer, ela decide mudar o destino. Ela muda de curso e reconstrui sua vida longe dos antigos erros, enquanto os cinco colegas perdem estruturas em uma roubada...', 'https://vz-c2303ad7-0af.b-cdn.net/8c867ae5-16d0-493a-b47f-58ea21d64be7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-05T19:24:50.720995+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Arrasada A Raiar: Sou De Mais Sem Vocês'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '518204c1-1cb4-4a43-8dec-0a9c9e7ac844', 'Doceza Perdida', NULL, 'Sinopse:
Lisa Souza, a filha mimada da família Souza, descobre que não é verdadeira herdeira. Após ser trocada por Melissa Souza e falsamente acusada, é enviada para uma escola onde sofre três anos de abuso que a deixam com sequelas. Ao voltar, já não é mais a mesma garota alegre de antes.', 'https://vz-c2303ad7-0af.b-cdn.net/1dafa201-edea-45e0-bfe2-720ad09d61d5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-05T19:21:02.709233+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doceza Perdida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0467f94a-ad9a-4295-bf1f-7ffb93402143', 'Quando A Neblina Levanta Me Ame', NULL, 'Susan casou-se com Cyrus, acreditando que seu "azar" poderia equilibrar a "má sorte" dele. Mas a dura verdade é que o coração dele pertencia a outra pessoa. Ela escondeu seus sentimentos, concentrou-se em pagar as dívidas dos pais e tirou o melhor do casamento. Quando a garota dos sonhos de Cyrus voltou, Susan decidiu ir embora. Para reconquistá-la, Cyrus a fez sua assistente, protegeu-a no trabalho e lutou pelo casamento que ela queria esquecer. No final, o amor vence, e Susan também.', 'https://vz-c2303ad7-0af.b-cdn.net/7e6c7acf-8a3a-49af-82e6-f3579c6fe672/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-05T19:14:28.9298+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando A Neblina Levanta Me Ame'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cb194971-6523-4df3-adec-87ac9390034d', 'Vingança Carmesim: as Noivas Desaparecidas', NULL, 'Joana, recém-formada na academia de polícia, volta à sua cidade natal com uma missão: expor a sinistra farsa dos casamentos sagrados. Para se infiltrar, se oferece como a Noiva Sagrada, descobre que o que acontece na caverna é, na verdade uma rede de traficantes liderada pelo prefeito. Entre rituais falsos, Joana usará seu treinamento para libertar a irmã e dezenas de mulheres.', 'https://vz-c2303ad7-0af.b-cdn.net/b85d5a30-c736-47b2-a941-093f7423cc39/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-04T22:04:35.727496+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança Carmesim: as Noivas Desaparecidas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4cd83266-6021-465f-a2ce-319beb705162', 'Papai, Por Que Me Deixou Morrer', NULL, 'Quando um tornado atinge a cidade, William faz uma escolha devastadora — ele salva a ex-mulher e o filho dela, abandonando sua própria filha, Fiona. A menina não sobrevive. Rachel, destruída pelo luto, carrega uma verdade que não consegue revelar. Com o funeral de Fiona se aproximando, será que William descobrirá o segredo antes que seja tarde para reparar seus erros?', 'https://vz-c2303ad7-0af.b-cdn.net/c7066528-397e-4af3-bc42-9d909decebf8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-04T21:13:36.200589+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Papai, Por Que Me Deixou Morrer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1211af3e-db44-4044-96cb-4e369adc3365', 'A noiva Proibida de Mancini', NULL, 'Sinopse:
Grávida. Viúva. Arrastada para a máfia Mancini. Ava nunca imaginou que seu falecido marido fosse o herdeiro oculto—nem que desejaria o irmão mais novo e cruel dele. O don Luca, frio como gelo, promete protegê-la, mas cada toque acende um fogo proibido. Gangues rivais se aproximam, sua família de sangue planeja traição, e a dinastia está à beira da guerra. Quanto tempo até Luca quebrar todas as regras para conquistar a mulher pela qual vale a pena matar?', 'https://vz-c2303ad7-0af.b-cdn.net/424d3550-ec1a-4513-ac92-af465a678249/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-04T21:06:10.505273+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A noiva Proibida de Mancini'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e406f3b9-2498-440a-a83c-e5e34a1622fd', 'Amor, Morte e Ressurreição', NULL, 'Sete anos atrás, Hilda, grávida, descobre que seu namorado Antônio, herdeiro do Grupo Álves, sofre de câncer. Ao ouvir por acaso que a família dele só pagaria o tratamento caso ele terminasse com ela, Hilda decide desaparecer para salvá-lo, sem explicar nada. Após o adeus, sofre um acidente e é dada como morta, mas sobrevive com sequelas mentais e dá à luz Andressa. Antônio vive acreditando que a perdeu para sempre até um dia…', 'https://vz-c2303ad7-0af.b-cdn.net/001468bd-216f-4dc7-8062-2cfc6d780fe2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-08-04T20:54:25.282095+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor, Morte e Ressurreição'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8930e1f3-921e-4fa6-abcc-84733bb10b29', 'Surpresa Do Pai Rico', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c278926e-9cd3-4905-ac08-bda1238c9d80/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-04T17:46:41.110195+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Surpresa Do Pai Rico'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cf2988e5-f55b-4e46-8e38-9864ac79c102', 'Garota Do Campo A Noiva CEO', NULL, 'Emma, uma garota simples e empreendedora do interior, que fugiu a uma vida difícil, acaba trabalhando numa cidade grande. Tudo muda quando ela confunde um desconhecido bonitão, chamado William, com outra pessoa e acaba sendo forçada a se casar com ele sem saber que ele é o CEO da Irving Corporation. Emma e William até pensam em se divorciar com brevidade, mas a química entre os dois fala mais alto. Agora, eles têm de confessar o amor que sentem um pelo outro e impedir que a Irving Corporation caia nas mãos erradas. Para tal, terão de enfrentar muitos obstáculos e gente querendo atrapalhar.', 'https://vz-c2303ad7-0af.b-cdn.net/48204b95-4f21-4cf4-b38a-7dee41006871/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-08-04T17:30:52.933511+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Garota Do Campo A Noiva CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e65cdde8-a1cd-42e8-a17d-0a55762e21fb', 'Sendo Madrasta, De volta Aos Anos 80', NULL, 'Sofia Neves acordou do avesso: ela voltou aos anos 80! Agora ela é uma falsa herdeira expulsa de casa para se casar no lugar da verdadeira herdeira com um homem velho e divorciado que tem dois filhos. Sofia decide se casar, mas não esperava que o homem fosse tão bonito, sempre disposto a agradá-la com dinheiro. Ela enfrenta habilmente os insultos, desdéns e intrigas vindo dos parentes e da antiga família adotiva. Desculpem! Mas o que não me mata, me fortalece.', 'https://vz-c2303ad7-0af.b-cdn.net/a7c6585a-2403-4cae-81b1-06d057c7fc84/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-04T17:26:31.797326+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sendo Madrasta, De volta Aos Anos 80'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '404e4464-0fae-4084-aba3-fc1e74558594', 'Segredos de Uma Boa Moça', NULL, 'Durante dez anos, ela viveu sufocada sob o controle da família, obediente e calada. Quando conhece um homem que parece ser sua rota de fuga perfeita, ela o usa para escapar. Mas o que era apenas estratégia se transforma, a confiança e o afeto incondicional dele começam a curar suas feridas. Em meio à liberdade recém-descoberta, nasce um amor inesperado e a força que ela nunca soube que tinha para recomeçar a própria vida.', 'https://vz-c2303ad7-0af.b-cdn.net/a053000f-ec6f-4b7e-b411-2e76445b290f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-08-03T01:27:21.669923+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segredos de Uma Boa Moça'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '14ecb549-1a0b-4412-8626-fd79906adb99', 'A Chefe Não Finge Mais', NULL, 'Eva Washington, uma bilionária herdeira, escondeu sua verdadeira identidade para apoiar o marido, Kevin, enquanto ele subia na carreira.', 'https://vz-c2303ad7-0af.b-cdn.net/172e9cc7-3e57-4a07-85f3-84fd43467583/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'', ''novo-lancamento'']', '2025-08-03T01:26:06.073352+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Chefe Não Finge Mais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7a7b2d50-fb1f-4b2f-b950-8aa0cc2eaf2e', 'Derruba a Família do Descarado com Minha Sogra', NULL, 'Joana, guarda-costas com medalha de ouro, protege vítimas de violência doméstica. Casou-se com Miguel, ocultando a identidade. Quando família de Miguel comete violência, Joana coleta provas e luta pela custódia dos filhos. Crimes de Miguel ficam públicos, sua licença é revogada. Quando Miguel ameaça a filha de Joana, ela decide não se divorciar e enfrenta-o. Miguel descobre a identidade de Joana. Susan, mãe de Miguel, rompe com ele. Joana e Susan começam uma nova vida com a filha.', 'https://vz-c2303ad7-0af.b-cdn.net/75cd9275-cb17-4bb1-a8e5-5d4d3e53e980/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'', ''novo-lancamento'']', '2025-08-03T01:25:11.206746+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Derruba a Família do Descarado com Minha Sogra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4636779a-68d3-4cda-88a1-80e1ceb5ef0d', 'Tire Meu Folego', NULL, 'Esta história intensa acompanha Annabelle, uma jovem que faria qualquer coisa para salvar sua irmã doente. Ela concorda em se casar com Henry Livingstone, um misterioso príncipe real com segredos obscuros e um passado perigoso.', 'https://vz-c2303ad7-0af.b-cdn.net/2ae129af-2c8f-4df8-86b6-7d1747e8deca/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-02T18:49:40.08656+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tire Meu Folego'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '393e4a30-7934-4db5-b90a-a2df1b327645', 'A Princesa Odiada Pelo Rei Alfa', NULL, 'Lucien a despreza porque ela é filha do rei que destruiu sua família e o escravizou. Ele a tornou sua escrava para se vingar de tudo o que o pai dela fez com ele, deixando cicatrizes que o transformaram no rei danificado e poderoso que é hoje. Assombrado pela insanidade, aversão ao toque e incapacidade de dormir ou de produzir um herdeiro, Lucien está determinado a fazê-la pagar. Mas a Princesa Danika não é nada parecida com seu pai. À medida que Lucien busca vingança, ele descobrirá o quanto ela é diferente. O amor nasce de um ódio profundo.', 'https://vz-c2303ad7-0af.b-cdn.net/be84e274-f725-40dd-8f54-90f77503f0c2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-08-02T18:47:14.841227+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa Odiada Pelo Rei Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c74565b1-21cc-4457-994f-6755c33a31d5', 'A Cura Do General', NULL, 'Naomi Chapman foi atormentada como testadora de venenos por 10 longos anos, até que sua madrasta a trouxe de volta para se casar no lugar de sua filha. Naomi tornou-se o antídoto para seu marido Samuel Hunt, o general mais reverenciado de Highvale. Ela encontrou amor em seu novo lar e aprendeu a se defender.', 'https://vz-c2303ad7-0af.b-cdn.net/b2ab4645-ad31-4052-b5e5-92475cfd14f0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-08-02T18:41:20.803266+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Cura Do General'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1c8c8674-d788-48bc-bfeb-84752a5c14fe', 'Paixão Inesperada Do destino', NULL, 'Era filha do homem mais rico do país, mas apaixonou-se inesperadamente por um jovem pobre. Disfarçando-se de zeladora, esteve ao lado dele durante três anos, ajudando-o a tornar-se um novo-rico em Los Angeles. No entanto, casou com outra pessoa no dia do casamento, fazendo troça do seu estatuto inferior. De coração partido, casou com o motorista da Uber que a trouxe à igreja, para descobrir mais tarde que ele era bilionário. Juntos, uniram forças e esmagaram aqueles que antes os desprezavam.', 'https://vz-c2303ad7-0af.b-cdn.net/4f96ee0f-0d3b-48fa-925e-264dc98e52dd/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'']', '2025-08-02T18:38:19.221603+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Paixão Inesperada Do destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '71cfe5dc-be91-4db2-8cf0-049c378ac603', 'Amor Apos o Renascimento: Pelo Tio Mimada Meu Marido', NULL, 'Em sua vida passada, ela foi traída e morta por seu marido. Agora, renascida, ela se vê de volta ao dia em que eles conheceram as famílias um do outro. Dessa vez, ela faz uma escolha ousada: abandona o futuro marido e escolhe o poderoso e enigmático tio dele. Apesar dos rumores sobre suas supostas deficiências, a união deles rapidamente se transforma em uma vida repleta de surpresas inesperadas, incluindo trigêmeos!', 'https://vz-c2303ad7-0af.b-cdn.net/416dc9bc-3b4a-465e-9422-a6433e6cd622/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-02T18:35:57.137931+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Apos o Renascimento: Pelo Tio Mimada Meu Marido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '860dddec-68a9-46bb-84d5-30d93074b876', 'O Retorno Da Medica Famosa', NULL, 'A filha dela estava doente e hospitalizada, mas o marido veio ao hospital com a amante e o filho ilegítimo e pediu que ela saísse de casa? Ela reapareceu na frente de todos como diretora do hospital, prometendo fazer o canalha pagar o preço.', 'https://vz-c2303ad7-0af.b-cdn.net/4f93b298-3774-4849-ad81-55ba9acdacb3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-08-01T23:58:43.871055+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Da Medica Famosa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b7601a34-3610-4ab4-9016-07d25a3eb9a6', 'A Volta Da Herdeira Caida', NULL, 'Sinopse:
Antes chamada de "namoradinha pobre", ela volta como a dona da festa e do crime! Revelada como herdeira milionária... E chefona do submundo. Agora, quem vai rir por último?', 'https://vz-c2303ad7-0af.b-cdn.net/910cee5c-7180-459d-b8d7-613d13cd17fc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-01T23:55:38.032843+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Volta Da Herdeira Caida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '348565cb-d3db-4768-8695-e67a16d15886', 'Como Largar Um Astro Do Roquei', NULL, 'Renee abre mão de sua vida de herdeira bilionária para ajudar o marido a se recuperar do estado vegetativo e a perseguir seu sonho de jogar na Liga Nacional de Hóquei. Mas, após sofrer um aborto devastador, ela se depara com uma verdade cruel: o homem por quem ela sacrificou tudo… pode ter escolhido outra.
', 'https://vz-c2303ad7-0af.b-cdn.net/ba6cd453-7788-48a0-bdbc-6a9a41869d6a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-01T22:34:13.258695+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Largar Um Astro Do Roquei'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b9d0b6a7-e2ca-42c8-b795-99a627fba7a2', '7 Dias Quentes Com O Gangster', NULL, 'Durante um tiroteio entre gangues, a enfermeira Violet salva Mattia, um poderoso chefe do crime. Seu ato de misericórdia a envolve em uma teia perigosa de obsessão, amor e traição. Enquanto Mattia se aproxima, Violet precisa escolher entre manter sua promessa ou se render ao charme fatal dele.', 'https://vz-c2303ad7-0af.b-cdn.net/1aa3631c-700f-4b68-9108-806b5550c15d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-01T20:06:51.051193+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '7 Dias Quentes Com O Gangster'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '769fe0dc-31a3-4c4b-bfa7-aafc16bdac06', 'Divorciada e Desejada Pelo Trio De Pretendentes Da Elite', NULL, 'Uma garota rica mantém sua verdadeira identidade em segredo e se casa com um cara que não é tão rico. Mas a família dele a desrespeita porque ela vende peixe para viver. Ela concorda calmamente com o divórcio, mas agora, três homens brilhantes correm em sua direção, cada um alegando ser seu noivo!', 'https://vz-c2303ad7-0af.b-cdn.net/1b0593e6-752a-492e-a0eb-5d96ee161dd2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-01T20:03:08.765352+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divorciada e Desejada Pelo Trio De Pretendentes Da Elite'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a15a5c1b-35ae-403b-83aa-fb227fd8b32c', 'Fazendo Campanha Pelo Amor', NULL, 'Sinopse:
Depois de uma noite com um estranho encantador, a jovem estagiária de campanha Sarah fica chocada ao saber que ele é o seu chefe - o candidato ao senador Christopher. Com uma eleição em jogo, o segredo deles pode acabar com as suas carreiras. Mas o Christopher está a apaixonar-se pela Sarah ou pela personalidade que ela criou? Será que o amor deles sobreviverá ao escândalo, ou a ambição irá desfazer-os?', 'https://vz-c2303ad7-0af.b-cdn.net/1e505154-44db-4e0d-af91-0ad6497bb3e2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'']', '2025-08-01T19:51:49.742196+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fazendo Campanha Pelo Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7f74d71d-373c-48e7-9af3-da6416588884', 'Eu Dei a Minha Esposa Uma Arma Com Borlas Vermelhas', NULL, 'vitoriosa, mas inesperadamente grávida! O antigo Marechal Grande Armada do império havia se aposentado devido aos últimos desejos de seus pais e casado com uma mulher conhecida por sua bravura e ambição. Ela aspirava a alcançar a grandeza nos campos de batalha, e antes de partir, ele lhe presenteou com uma lendária lança forjada de ferro frio de mil anos. Três anos depois, ela retorna vestida com uma armadura prateada, grávida e de mãos dadas com outro homem. Ela apresenta uma carta de divórcio, declarando: ""Meu marido deve ser uma figura heroica que se mantém firme, e não um erudito fraco sem força."" Mal sabia ela que o homem aparentemente sem poder com quem havia se casado era, na verdade, a divindade guardiã do império. Quando ele veste novamente sua armadura de marechal e empunha sua arma lendária, ela finalmente descobre a verdadeira identidade do homem que um dia desprezou.', 'https://vz-c2303ad7-0af.b-cdn.net/950aa852-a0c2-4c94-adaa-bfaf71e6ea20/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-08-01T19:48:41.762828+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Dei a Minha Esposa Uma Arma Com Borlas Vermelhas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '558e7874-0fcf-4f22-a989-c2afb40e91b2', 'O Despertar Do Gênio', NULL, 'Ethan Smith detém o título de cientista mais jovem do mundo. No entanto, ao contrário das expectativas, sua vida é marcada por conflitos familiares e tragédias. Após renascer, ele escolhe se afastar da família e viver por si mesmo. Desta vez, Ethan se recusa a ser fraco. Ele prova sua genialidade não apenas para a família, mas também para seu colega de carteira, sua escola e, por fim, para o mundo inteiro—mostrando que é um gênio que não será subestimado.', 'https://vz-c2303ad7-0af.b-cdn.net/e621e679-3b5d-4bae-b801-25afecc45bd7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-01T19:38:39.581881+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Despertar Do Gênio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '825a7cea-20df-4399-91a4-e6fcff7f3b82', 'De Volta Ao Meu Brilho', NULL, 'Mia já foi uma designer talentosa, mas largou uma carreira por amor ao se casar com Tyler logo após a formatura. Três anos depois, o casamento chega ao fim com um vídeo doloroso. A frieza de Tyler faz Mia perder as esperanças — até que ela decida retomar sua paixão e reconquistar o espaço no mundo do design. Ao brilhar novamente na profissão, Mia desperta em Tyler sentimentos que ele julgou ter esquecido... e os dois terão a chance de redescobrir o amor...', 'https://vz-c2303ad7-0af.b-cdn.net/d70ac443-06d8-4e70-954c-407830e198ea/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-08-01T19:36:08.101019+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Volta Ao Meu Brilho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b852e35a-ef0c-4d03-80ff-56529c9d1d3b', 'Vingança No Banquete imperial', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b5de6826-9806-4ab3-b4ec-3e5b6348d1c2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-31T22:13:56.080567+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança No Banquete imperial'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c365bb96-e951-44f0-af86-9379daa8c197', 'Casada Com Meu Amor Secreto', NULL, 'Sinopse:
Após uma noite inesperada, Larissa se casa com o irmão mais velho de sua melhor amiga, por quem sempre foi apaixonada. Achando que o casamento não duraria, ela se surpreende ao ver o quanto ele a mima — tudo fazia parte do plano dele. Larissa sempre foi o amor da vida dele.', 'https://vz-c2303ad7-0af.b-cdn.net/0532ecc5-e4b5-4cbf-96cd-13d72a3468eb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-31T21:58:47.403507+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casada Com Meu Amor Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5422be2c-6652-404c-a036-ace57b72a70a', 'Dominada Pelo Chefe Do Meu Pai', NULL, 'Jayne Turner pede a um estranho, durante uma festa BDSM, que a ensine a ser dominadora. O que ela nem imagina é que esse homem vai ser o supervisor da saída de seu pai da empresa familiar. O que era para ser apenas uma noite de aprendizado sobre dominação e submissão se transforma em algo mais quando Jayne pede que Dom continue a ensiná-la. Devido a uma cláusula moral em seu contrato, se alguém descobrir o envolvimento entre os dois, Dom pode perder o emprego, mas, ainda assim, ele aceita. Eles decidem manter a relação como algo estritamente educativo e totalmente secreto. Só que, conforme a paixão cresce, o risco de serem descobertos também aumenta. O sucesso de Jayne no set de filmagens se deve muito às "instruções" de Dom, mas ela começa a receber mensagens ameaçadoras que a ligam à sua mãe…
‎Ler mais', 'https://vz-c2303ad7-0af.b-cdn.net/06333c85-9121-463c-a736-16fc721628e4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-31T20:16:03.972752+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dominada Pelo Chefe Do Meu Pai'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c46e775-5078-497a-ac3e-f10c266c7b05', 'Casados Num Piscar De Olhos E Totalmente Mimados', NULL, 'Seu noivo é roubado pela irmã, então ela se casa às pressas com um trilionário e é inundada de amor!', 'https://vz-c2303ad7-0af.b-cdn.net/8743f4bd-3ead-4adb-ac83-f83e96d78fc6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-31T20:11:55.589896+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casados Num Piscar De Olhos E Totalmente Mimados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4a0258ff-5abe-405d-9507-cd7acb0dd31a', 'A Conspiração Das Sombras', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c5303e9d-6d25-487c-9d96-e6d6a6e0cd54/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-31T20:08:56.131862+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Conspiração Das Sombras'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '45b99a48-a86a-4cde-9539-19ecabb0c153', 'Amor Silenciado, A Reconciliação', NULL, 'Katherine é muda e seu casamento de três anos com Wilson tem sido um inferno. Um triângulo amoroso com Riley complica tudo. Quando Wilson a ignora por Riley, Katherine pede o divórcio. Mas o ódio de Wilson explode! Apesar de amá-la, ele a negligenciou por anos devido a um mal-entendido do passado. Um sequestro revela seus verdadeiros sentimentos, mas Katherine está decidida: o divórcio é inevitável. Agora, Wilson lutará para reconquistar o coração de Katherine!', 'https://vz-c2303ad7-0af.b-cdn.net/44af9e14-a779-4cc0-8be6-eb888efa88ea/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-31T20:05:58.103399+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Silenciado, A Reconciliação'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c309bb5-9f1a-4c2c-b1e4-4c57b829afe9', 'Meu Amante Secreto é Filho Da Minha Melhor Amiga', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5536a433-16eb-47ae-b319-6b419f683bc3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-31T20:00:57.878352+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Amante Secreto é Filho Da Minha Melhor Amiga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'af4c9015-ed25-4b2b-b16d-438e01bc3ae4', 'Obesessão Da Máfia', NULL, 'Afonso Cardoso não suporta a ideia de sua única irmã, Alícia, ser forçada a casar com um homem perigoso devido a um pacto de casamento de 15 anos atrás. Para proteger a irmã, ele decide sabotar o acordo e se casar com o infame chefe da máfia, Peniel, em seu lugar. O que Afonso não esperava é que tudo fazia parte de uma armadilha romântica cuidadosamente planejada por Peniel, que sempre teve um interesse oculto por ele.', 'https://vz-c2303ad7-0af.b-cdn.net/15dbf34d-946a-4628-8417-89276bd1a2ef/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''relacionamento-tabu'', ''blgl'']', '2025-07-31T19:58:28.141093+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Obesessão Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b876892f-ecf0-451e-952f-dc29a3dd9ad2', 'Pego No Ato', NULL, 'Rachel cortou relações com sua família para ficar com seu marido. Eles se casaram e tiveram um filho, mas ele morreu em um acidente. A partir de então, Rachel passou a ter pesadelos constantes. Ao mesmo tempo, ela começou a suspeitar que seu marido era infiel e decidiu pegá-lo no flagra e se vingar duramente...', 'https://vz-c2303ad7-0af.b-cdn.net/75628c08-5448-4ab7-88b2-59814bd93570/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-31T19:54:51.951575+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pego No Ato'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f00802a4-5788-4163-8732-9cb1d53c2664', 'Se Eu Tivesse Te Amado Mais', NULL, 'Na véspera do Ano Novo, Jana é internada com recaída do câncer, enquanto o marido se diverte com a secretária. Ele corta a renda dela, gasta com joias para a amante e se recusa a autorizar a cirurgia. Já por uma alergia da secretária, corre ao hospital. Desiludida, Jana pede o divórcio. Só então ele se arrepende.', 'https://vz-c2303ad7-0af.b-cdn.net/3776d17a-f259-4a69-86ee-3d603f2f9ac6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-31T19:51:44.540373+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Se Eu Tivesse Te Amado Mais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '30af2029-df23-4910-bd29-2a8bf95067ff', 'Minha Mãe é Uma Agente Secreta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/08aee440-534f-4f57-9cfa-6d0b543bd4b7/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''novo-lancamento'']', '2025-07-30T00:27:01.687113+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Mãe é Uma Agente Secreta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5d98141c-7001-4f0a-8999-a884c0d45480', 'Depois de Desmascarar a Falsa Amiga', NULL, 'Na vida passada, Letícia Lima confundiu uma falsa amiga com uma irmã de alma, caindo passo a passo nas armadilhas tecidas por Camila Nunes. Ela foi desprezada pela família e teve uma morte trágica, atropelada pelo carro de Camila. Com uma segunda chance, Letícia descobre que sua salvadora de infância não era Camila Nunes. Ao ver a verdadeira face de Camila, ela decide fugir das armadilhas, percebendo que Lucas Ribeiro a protegeu silenciosamente em ambas as vidas. Letícia, então, desmascara Camila Nunes diante de seus pais, finalmente a expulsando da família Lima e garantindo que ela receba o castigo que merece.', 'https://vz-c2303ad7-0af.b-cdn.net/ac41b353-5ea1-4e9d-ae51-1446d287d16b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-29T22:55:03.30402+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois de Desmascarar a Falsa Amiga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ce0d856b-7f57-431f-b5d3-50e6944216fe', 'Fui Criada Para Isso', NULL, 'SINOPSE: "What Was I Made For" é um curta-metragem de drama e romance sombrio, uma prequela da famosa série Under the Royal Rule . Esta história mostra o início distorcido de uma relação de amor e ódio entre duas pessoas muito diferentes: uma mulher orgulhosa de uma família nobre desestruturada e um homem poderoso que quer usá-la... até que ele começa a se apaixona', 'https://vz-c2303ad7-0af.b-cdn.net/3aca4c53-103d-48a7-8b57-3649c5bf62d0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-29T22:41:33.429145+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fui Criada Para Isso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bbad9084-1e4d-4b1f-b3ba-52c920ea150c', 'Meu Caminho Para A Escuridão', NULL, 'Uma pianista genial, Clara, sofre um acidente durante uma apresentação e acorda dentro de um romance que havia lido, transformando-se na antagonista desprezada por todos. Utilizando seu conhecimento da trama, Clara percebe que nunca foi valorizada pela família Silveira e decide mudar seu destino. Ao confrontar Ricardo, um homem hipócrita que manipulava a família, e conquistar a simpatia de Leonardo, o herdeiro influente que detém segredos cruciais, ela reescreve completamente o rumo de sua vida original.', 'https://vz-c2303ad7-0af.b-cdn.net/e4ce5754-1fed-42ee-a5d0-89b37a0c6d6c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-29T22:34:17.591491+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Caminho Para A Escuridão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '12d099b4-4030-47a2-bdfa-ae0cbf3f37f3', 'Uma Proposta Indecente', NULL, 'Sinopse :  A vida de Angela Carson toma um rumo dramático quando ela concorda em se casar com Xavier Knight, um playboy rico, para salvar a vida de seu pai. Enquanto eles navegam em seu relacionamento tumultuado, segredos e desafios inesperados, Angela e Xavier devem confrontar seus passados ​​e encontrar uma maneira de construir um futuro juntos.
Do brilho da cidade de Nova York aos serenos Alpes Suíços, a jornada deles é cheia de paixão, traição e redenção.
O amor deles sobreviverá às provações que enfrentam ou suas diferenças os separarão?', 'https://vz-c2303ad7-0af.b-cdn.net/41531f3b-fa21-47d8-af30-5d48011b081e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-29T22:21:08.412839+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Proposta Indecente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ca0ef966-1032-4060-82a3-3c6c2b80b7b0', 'Amor Entre Segredos', NULL, 'Pai infiel, mãe falecida e a madrasta trazendo o filho bastardo para dentro de casa. A partir daí, Juliana Carvalho passou a viver um verdadeiro inferno! Para que o filho pudesse estudar no exterior, a madrasta tentou convencer Juliana a largar a faculdade e se casar, usando o dote para pagar os estudos do meio-irmão. Mas, determinada a não desistir de sua vida, Juliana trabalhou em vários empregos temporários, até que um dia, ao salvar uma senhora idosa, ela acabou se casando com o neto da mulher. O que ela não esperava era que seu marido fosse o presidente de um grande grupo empresarial... Só que esse presidente fingia ser um trabalhador comum! Já que é assim, Juliana decidiu entrar no jogo e seguir o teatro dele... E assim começou uma comédia cheia de situações inesperadas!', 'https://vz-c2303ad7-0af.b-cdn.net/485d61e9-f5fa-4b3f-828c-12dfa4bde087/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-29T22:17:54.291088+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Entre Segredos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c6ae24e5-067d-42fe-94df-49969b66ff86', 'Me Separei No Dia Do Parto', NULL, 'Cassia Lima, herdeira de uma das maiores fortunas de Bernardo, esconde sua identidade para viver um amor com Bruno Silva, um homem simples. Grávida e prestes a dar à luz, enfrenta críticas de Lia Bares, amiga de Bruno, que a acusa de fingimento e vaidade. Influenciado, Bruno insiste em levá-la para um hospital menor, o que gera tensão entre o casal. No auge do conflito, José Lima, pai de Cassia, aparece com grandes empresários, revelando sua verdadeira posição. Tarde demais: Cassia perde o bebê e se divorcia. Desesperado, Bruno espalha uma mentira cruel, dizendo que Cassia e José causaram a morte da criança. A difamação toma conta da internet — até que José reage, denuncia o caso e vê Bruno e Lia serem condenados pela justiça.', 'https://vz-c2303ad7-0af.b-cdn.net/28cf86ce-6f82-4a60-8093-54e322cfb044/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-28T23:07:56.358763+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Me Separei No Dia Do Parto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e865ec47-ff0b-462c-9401-2e56d6d57965', 'Anos Perdidos, Como Se Fosse A Primeira Vez', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c15be7c4-c928-4be6-8206-5945117da1d7/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''novo-lancamento'']', '2025-07-28T21:34:43.604547+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Anos Perdidos, Como Se Fosse A Primeira Vez'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '319a9897-24fb-4955-aa25-a8b496fa24a4', 'De Volta Ao Jogo', NULL, 'A mãe solteira Mariana terminou com seu primeiro amor, Luis, há oito anos... Mas nunca contou a ele que estava grávida! Agora ele e uma estrela nacional do futebol e chefe de Mariana! De repente, juntos novamente, será que Mariana contará a verdade ou é tarde demais para um final feliz?', 'https://vz-c2303ad7-0af.b-cdn.net/b6ec6c11-b589-405c-8e23-8856cc96b07a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-28T21:29:42.430929+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Volta Ao Jogo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1335eb84-951d-4a86-83a4-fc40cdd6569b', 'A Noiva Indesejada', NULL, 'Descreve a história de amor entre Autumn Rivera e Atticus Fawn, que foram escolhidos pela Deusa da Lua como companheiros de lobisomens. Embora os feitiços de amor causem confusão, sua atração magnética permanece. Quando eles quebram o feitiço, seu verdadeiro amor vence.', 'https://vz-c2303ad7-0af.b-cdn.net/581e8266-6041-445a-86b9-adfa5c099779/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''homem-lobo'']', '2025-07-28T21:21:29.747561+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Indesejada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8a2d59c4-72cd-4f84-bd45-b749315c4411', 'Reparando Um Amor Destruido Indesejado', NULL, 'Depois de suportar um relacionamento por sete anos, o casal termina por causa de vários mal-entendidos e traições. Posteriormente, Richard perde Luana completamente para um amor perdido, levando a uma profunda realização. Determinado a fazer as pazes, Richard tenta reconquistá-la de várias formas.', 'https://vz-c2303ad7-0af.b-cdn.net/347df251-92d5-4cb0-9459-ebce80fea9ae/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-07-28T20:45:52.563479+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reparando Um Amor Destruido Indesejado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '64caf67b-cbe6-419e-8c3c-f5605593eb1c', 'Amo O jeito Que Você mente', NULL, 'Sinopse:  A irmã de Molly não apenas pegou seu namorado Connor — ela também levou sua herança, deixando Molly sem nada. Movida pelo álcool e pela vingança, Molly elabora um plano ousado: seduzir o atraente tio de Connor, Adrian. Mal sabe ela que seu plano mal pensado dá muito certo, pois Adrian logo se vê completamente apaixonado por Molly.', 'https://vz-c2303ad7-0af.b-cdn.net/8303b172-4937-40e4-b9d8-08fe7e59eee9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-28T20:36:11.979157+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amo O jeito Que Você mente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '644bf616-01b9-44b8-b9f6-f46e97ed3244', 'De Gorducha a Arrasadora', NULL, 'Sinopse: Ele é um jovem CEO bem-sucedido, e eu sou a mulher gorda que todos desprezam. Nosso casamento era motivo de piada, e ele nunca me respeitou. Cansada das zombarias e humilhações, decidi me transformar. Quando voltei como uma mulher sensual e deslumbrante, todos, inclusive meu marido, ficaram chocados.', 'https://vz-c2303ad7-0af.b-cdn.net/52a28f65-7eef-46fc-bff0-6bbea70ef895/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T03:44:09.791793+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Gorducha a Arrasadora'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '72c8a99a-de8e-45cd-b717-72282837eda3', '3 O Número Perfeito', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c9831666-1b41-4203-a4db-b8f7c8784624/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T03:42:43.025499+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '3 O Número Perfeito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2175ce44-afda-4e0a-8ab9-942e6abf5c5d', 'Eu Acidentalmente Roubei O Primeiro Beijo do Bady Boy', NULL, 'Sinopse: Aspirante a bailarina da Juilliard, Addalynn Reina retorna à sua cidade natal para passar o verão, apenas para se ver envolvida com o irresistível bad boy, Asher King, o irmão gêmeo de sua melhor amiga. Conforme a química entre eles se intensifica, segredos vêm à tona, rivalidades explodem e um único beijo roubado ameaça mudar tudo.', 'https://vz-c2303ad7-0af.b-cdn.net/ce818058-cddd-4b41-9f99-b4de76aa22de/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-28T03:41:56.612673+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Acidentalmente Roubei O Primeiro Beijo do Bady Boy'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '477d5c61-467f-4e3e-833c-49acabbc94c4', 'Amaranhado de Amor', NULL, 'Sinopse: Em um programa de observação com tema romântico, vários participantes passam por uma série de interações e conflitos recheados de amor, mal-entendidos e lutas de poder. No final, um casal, Bruno Sabala e Sara Meira, se destaca com popularidade avassaladora e o verdadeiro amor prevalece. Eles fiquem felizes juntos...', 'https://vz-c2303ad7-0af.b-cdn.net/d42753ce-215f-4724-b0a0-e6d2386bdfe4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T03:40:40.329269+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amaranhado de Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '38a487c8-a7aa-498c-89ea-ba5d3a6c3130', 'A Bela Tímida e a Fera Bilionária', NULL, 'Sinopse: Analeina, uma garçonete em Nova Jersey, acidentalmente derrama café quente no bilionário Jaxon Terrace, empurrando-a à força para seu mundo. Para pagar por suas roupas arruinadas, Jaxon ofereceu a ela um emprego como sua secretária. Mas quando a dívida é paga, o desejo de Jaxon por ela cresce, revelando sua natureza possessiva. Analeina deve escolher entre o amor e sua liberdade, enquanto descobre se Jaxon é realmente uma fera...', 'https://vz-c2303ad7-0af.b-cdn.net/593cae59-b785-466d-a6aa-3ed12dc8be01/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T03:39:02.917948+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Bela Tímida e a Fera Bilionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7057b6d7-554c-40ac-a911-2b7d4620d4ee', 'Uma Segunda Chance Com Minha Amante Secreta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f6e5eea9-bde3-474b-9182-ccba15bc98f9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T03:35:55.979167+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Segunda Chance Com Minha Amante Secreta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '941291c1-0e46-4f74-84b8-d040622e6c2b', 'Segunda Chance Com Meu Amante da Máfia', NULL, 'Sinopse: Nadia engravida de Renzo, mas o pai mafioso dele a força a separação para salvar a vida do filho Nunes...', 'https://vz-c2303ad7-0af.b-cdn.net/ed14af2c-984a-47c3-b181-15c60096631c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-07-28T03:34:44.525315+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segunda Chance Com Meu Amante da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b05862b1-86c3-4707-b59b-db618722dbda', 'Dois Alfas Estão Apaixonados Por Mim', NULL, 'Sinopse: Lyra, uma jovem sem lobo, foi mantida cativa durante sete anos na alcateia Wolfsbane, onde sofreu abusos constantes do cruel Alfa Roland. Em uma de suas fugas, acaba passando uma noite com o Alfa Alfred, o lobisomem mais poderoso da alcateia Moonshadow, e engravida dele. Alfred a resgata do cativeiro e a leva para sua própria alcateia. Para protegê-la, propõe um contrato que a reconhece como sua Luna, ainda que de forma simbólica. Mas Roland não está disposto a deixá-la partir... mesmo que isso signifique começar uma guerra.', 'https://vz-c2303ad7-0af.b-cdn.net/8540e886-4b20-4fda-ad3a-a80746bd4c40/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'', ''homem-lobo'']', '2025-07-28T03:33:33.929785+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dois Alfas Estão Apaixonados Por Mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f83654f8-b07b-4c3b-912c-504f8186ebe2', 'O Irmão Bilionário do Meu EX', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8989f3a1-663d-4b14-ad7d-e5208803e47f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-28T03:31:46.597457+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Irmão Bilionário do Meu EX'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'df266d4e-4c64-4013-b354-fe6574281d62', 'Keily', NULL, 'Sinopse: Em uma escola preparatória de elite, a novata Keily enfrenta panelinhas e triângulos amorosos enquanto lida com as duras verdades do bullying e com sua autoestima.', 'https://vz-c2303ad7-0af.b-cdn.net/45ab84c6-2f62-4b18-9818-1c20dad911e1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T03:30:34.690251+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Keily'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '20f3d8c9-8f4e-4807-8bf3-8ad8fc75f627', 'Contrato de Coração', NULL, 'Sinopse: Para salvar sua mãe, Rose assina um contrato de mestre e serva com Harry, herdeiro de uma família nobre, sem saber que é a mulher que ele ama e admira há anos. Os dois enfrentam atração mútua e ciúmes, entrando em conflito repetidamente devido a mal entendidos.', 'https://vz-c2303ad7-0af.b-cdn.net/e8fb9787-3c67-49ec-acb3-728a0e844d9f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-28T03:29:26.410342+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Contrato de Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ac4f8a8a-0fa1-441a-99fc-792705a50a71', 'O Punho do Jovem Abala o Mundo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5dd8f2e1-44da-4a5a-848e-cce611095b7d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T03:27:40.878662+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Punho do Jovem Abala o Mundo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '44ffa3ed-c46d-4d81-bad4-08a06d989558', 'A Vingança da Esposa Desesperada', NULL, 'Sinopse: Lucy deixou sua família para se casar com Daniel, mas ele se recusou a tratá-la quando pensou, por engano, que ela tinha leucemia, e ainda tirou o dinheiro que poderia salvar sua vida... Agora, Lucy decide se vingar.', 'https://vz-c2303ad7-0af.b-cdn.net/e92c61e6-88a6-487d-bf37-7f6424325995/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T03:26:47.479428+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança da Esposa Desesperada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '37633bf4-c53a-494a-856b-38434bd4c1b8', 'Uma Noite Só... Para Sempre', NULL, 'Sinopse: Viviane Santos, uma legista brilhante, mas constantemente julgada por sua profissão, acaba passando a noite com Enzo Vasconcelos — um bilionário misterioso e, para piorar, tio de seu ex-namorado. O que deveria ser um erro de uma noite vira um casamento por contrato... com consequências inesperadas. Entre laudos forenses e salas de diretoria, os dois se veem envolvidos em segredos perigosos, disputas familiares e uma paixão incontrolável. Enquanto enfrentam preconceitos, mentiras e feridas antigas, Viviane e Enzo precisam descobrir: o amor pode sobreviver quando tudo ao redor está prestes a explodir?', 'https://vz-c2303ad7-0af.b-cdn.net/f8eb82b1-fb59-42b3-b74b-d14337b1eeb9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-28T03:25:28.314331+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Noite Só... Para Sempre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '623b6f0d-52f5-4e3c-a268-9d3dd7c47a1a', 'Eu Beijei Um CEO e Ele Gostou Assim', NULL, 'Sinopse: Gabrielle fica publicamente arrasada com a notícia do casamento de seu ex... então bum! Um beijo espontâneo com um CEO poderoso a lança em um mundo de segredos, ambições e romance inesperado. Qual caminho ela escolherá quando a traição espreita em cada esquina?', 'https://vz-c2303ad7-0af.b-cdn.net/dfeab93c-4189-45b9-82d9-5f80a302d10e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''relacionamento-tabu'']', '2025-07-28T03:24:00.744572+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Beijei Um CEO e Ele Gostou Assim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7b5dbdb9-7737-4910-ae1c-08c64b4c2ab4', 'Invadindo a Sala Secreta do Ceo', NULL, 'Sinopse: Anne, que havia acabado de entrar no mercado de trabalho, foi enviada à casa do CEO para entregar documentos, mas acidentalmente invadiu a sala de jogos SM do presidente...', 'https://vz-c2303ad7-0af.b-cdn.net/66d2cd72-ccb0-485f-b178-3634058d8063/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T03:22:31.101329+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Invadindo a Sala Secreta do Ceo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ae9e2d4-115a-449a-a4f3-34b9d2b887e8', 'Mil Perdões e Um Incêndio', NULL, 'Sinopse: Márcia é uma ginecologista, vive um casamento estável com Reinaldo até que, após um acidente com uma gestante descobre um segredo devastador a mulher ferida tem o mesmo nome que ela, e quem acompanha Reinaldo. Diante da traição e da humilhação Márcia se recusa a ceder ao desespero. Entre a dignidade e o caos ela escolhe se reerguer enfrentando o passado e defendendo o seu espaço', 'https://vz-c2303ad7-0af.b-cdn.net/f99f8f7c-d15b-4bae-97d5-78a4bd8c9831/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-28T03:21:19.0199+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mil Perdões e Um Incêndio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '71084d5d-4b60-4755-9ad7-5c13c22c8f71', 'Rei Dos Punhos', NULL, 'Sinopse: Em 3045, Thiago Costa renasce no passado como criança. Usando o nome "Anônimo", ele derrota o maior lutador de IA no mundo virtual, chocando o planeta. Nas competições, humilha rivais como Hector Ribeiro e Gonçalo Marques, revelando sua verdadeira identidade. Na Associação de Combatentes, ele enfrenta Lucas Martins, ex-campeão mundial, defendendo a honra de País de Dragão. O ápice? Resgatar seu pai das garras do Tirano, salvando o legado da família. Uma jornada épica de redenção!', 'https://vz-c2303ad7-0af.b-cdn.net/90bdca58-8fba-4286-b7b2-7e74fb3af57b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T03:19:50.787733+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rei Dos Punhos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0e39c2c6-aa80-4bc1-8ef6-5135038c483d', 'Noiva do Inimigo', NULL, 'Sinopse: A vida de Annie muda quando ela descobre um segredo—seu pai é um chefe da máfia, e agora ela deve se casar com seu inimigo, Daniel. Ele é frio, poderoso e perigoso. Ela é apenas parte de um acordo.', 'https://vz-c2303ad7-0af.b-cdn.net/f636c545-e1a3-4e00-8520-821e492f7dd1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-28T03:18:18.371034+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva do Inimigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '27eb2396-3649-4c3a-a58b-3cb4955e5dab', 'Amor ao Primeiro Voo', NULL, 'Sinopse: O bilionário Gabriel Neves foi confundido com um funcionário de terra ao embarcar num avião da sua própria companhia aérea. Durante o voo, ajudou a chefe de cabine Alexa Lima quando ela foi assediada. Após a aterragem, Gabriel concordou em fingir ser o namorado de Alexa para a ajudar, mas isso levou a um mal-entendido com o seu filho Caio. Gabriel e Alexa uniram forças para resolver os problemas familiares dele e uma crise na empresa, mas Gabriel teve de enfrentar uma última prova para poder casar-se com Alexa.', 'https://vz-c2303ad7-0af.b-cdn.net/2ce0e680-26e6-445d-aa28-6beed4ca41a0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T03:16:59.445881+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor ao Primeiro Voo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd96040f5-8f46-4f44-b637-14e3092421a0', 'Amor Cego da Herdeira', NULL, 'Sinopse: Com a ajuda de um médico, uma mulher cega recupera a visão - apenas para descobrir a traição de seu marido. Logo, ela descobre que é filha do homem mais rico do país, decide lutar de volta e acaba se apaixonando pelo médico que a salvou. No entanto, seu marido nunca finalizou o divórcio - e está escondendo um plano ainda mais sombrio. Será que ela conseguirá escapar antes que seja tarde demais?', 'https://vz-c2303ad7-0af.b-cdn.net/9bb025b6-897f-4822-9f92-7ccab2061fd7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-28T03:14:30.802771+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Cego da Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cfe4008d-deb4-4078-b62e-751266179f20', 'Esposa em Fuga, de Novo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9f11bbbe-329f-4194-b623-84e9e346ca3e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T03:12:41.975342+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa em Fuga, de Novo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eac472df-6a35-4b3e-8183-47e0c53793ac', 'O Lendário Pai Retorna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9bb2e8aa-0e83-4b7b-a70c-e15c7fe1700e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T03:10:36.156446+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Lendário Pai Retorna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '694c1f0b-5943-472e-9360-d31a641f7cec', 'A Vingança da Esposa CEO', NULL, 'Sinopse: Flora Gomes e Diego Costa estiveram apaixonados por 7 anos. Nos bastidores, ela ajudou a empresa de Diego se alistar na bolsa como fundadora do Grupo DK. No dia do casamento, grávida, Flora planejava revelar sua verdadeira identidade e a Diego, mas não esperava que ele, para agradar seu amor real, Luna Cabral, humilhasse Flora publicamente, até permitindo que a lona usasse um vestido de noiva. Flora havia suportado em silêncio por diversas vezes, mas descobriu que Diego tinha um caso com Luna, e acreditou ainda mais na mentira aquilo na disse que era fundadora do Grupo DK.', 'https://vz-c2303ad7-0af.b-cdn.net/8ce3a51d-efe0-426c-bb1b-ae6c92d5241a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-07-28T03:09:12.556755+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança da Esposa CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd773e1d5-565d-4eb9-a5b7-4842221e02f8', 'Atração Proibida', NULL, 'Sinopse: Anna , uma garota doce, porém forte, criada por seu pai xerife superprotetor. Tudo o que ela quer é liberdade — e talvez seu primeiro amor de verdade. Mas quando seu pai se casa novamente, tudo muda. É quando ela conhece Jack — seu novo meio-irmão. Jack é perigoso. Ele é cheio de cicatrizes, silencioso e se esconde de uma gangue. Mas há algo em Anna que o atrai. E mesmo sendo totalmente proibido , a química entre eles é incrível.', 'https://vz-c2303ad7-0af.b-cdn.net/fbee721a-41b3-44c6-a93c-fbdce65badb0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-28T03:07:15.959007+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Atração Proibida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b78e78a8-df94-4c8a-a2f2-762cde36356c', 'Quem é o Pai de Um Triângulo Amoroso', NULL, 'Sinopse: Catherine, ex-editora-chefe de uma revista de moda, abandonou sua carreira para se tornar a esposa perfeita depois de se casar com o magnata dos negócios Stephen. No dia de seu aniversário, ela se prepara para uma noite romântica com ele, mas depois descobre fotos incriminadoras de Stephen em intimidade com sua secretária. Furiosa, ela procura consolo na casa de sua melhor amiga Amy, mas acaba acidentalmente passando a noite com o filho de Amy, Alan, que secretamente nutre uma paixão por ela desde os 13 anos. Um mês depois, Catherine descobre que está grávida, mas como as linhas do tempo de seus encontros apaixonados com Stephen e Alan se sobrepõem, ela não tem ideia de quem é o pai. Enquanto ela se debate com esse dilema, Stephen, que havia desaparecido por um mês, volta para casa de repente...', 'https://vz-c2303ad7-0af.b-cdn.net/6a96e0ca-b184-43f0-97fc-131e7dd13b41/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'', ''bebes-e-gravidezes'']', '2025-07-28T03:05:22.08554+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quem é o Pai de Um Triângulo Amoroso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd0c172ac-b87e-4625-8583-9bf3fc7358a7', 'Uma Noite Com O Irmão Do Meu Namorado', NULL, 'One Night Stand é um drama emocionante e carregado de emoções sobre amor, traição e a luta pela sobrevivência. Quando a perfeita dona de casa Mackenzie Exford é diagnosticada com câncer terminal, seu mundo se transforma em um caos - seu casamento com um político sedento por poder desmorona e sua última esperança se torna um encontro impulsivo com um misterioso ex-presidiário, Chase. O que começa como uma fuga imprudente logo se transforma em um vínculo poderoso que desafia as mentiras ao seu redor. Mas em um mundo onde a imagem é tudo e o poder corrompe absolutamente, Mackenzie deve navegar em uma teia de enganos, manipulação da mídia e ambição política para recuperar sua vida - se ela conseguir sobreviver a isso.', 'https://vz-c2303ad7-0af.b-cdn.net/69afd1ba-3c71-42e9-9d4d-48eff2748319/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T03:03:24.17472+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Noite Com O Irmão Do Meu Namorado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a069e10b-6eea-4270-85d4-ec2096eb9354', 'Noivo Trocado: Casei com um Chefão da Máfia', NULL, 'Sinopse: Casei com um Chefão da Máfia, nada é o que parece. O que começa como uma troca cruel de noivos vira uma reviravolta digna de novela: Sophia, traída pela irmã Betty, é forçada a casar com Cedric, o suposto pobre que na verdade comanda um império mafioso! Prepare-se para uma história onde a vingança se torna romance, o romance vira poder — e cada episódio faz você duvidar de quem, afinal, saiu ganhando. Se você também ama drama de família, reviravoltas milionárias e aquele gostinho de ver o vilão quebrar a cara, essa é sua nova obsessão.', 'https://vz-c2303ad7-0af.b-cdn.net/1627c8f4-0d6b-4d0b-b514-94594b47fe0e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T02:59:40.728178+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noivo Trocado: Casei com um Chefão da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4f27f61c-ab70-4ac1-b9d7-ed6f7a238fef', 'Teachers Pet', NULL, 'Sinopse: Quando David Winters, um professor de literatura cínico e sedutor, encontra Catherine Hudson, uma aluna brilhante e protegida com metade de sua idade, o flerte intelectual entre eles acende um fogo proibido. O que começa como uma orientação acadêmica se transforma em um perigoso emaranhado de sedução, obsessão e traição. À medida que Catherine descobre os segredos por trás do exterior polido de David, ela é forçada a confrontar seus próprios desejos e as verdades obscuras enterradas em seu mundo de elite. Mas a paixão tem um preço - e quando as mentiras, o ciúme e a vingança irrompem, o amor se torna um jogo de apostas altas sem final garantido.', 'https://vz-c2303ad7-0af.b-cdn.net/6d19f88c-f07e-4c33-8726-ab3cc1a143e4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-28T02:57:07.458765+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Teachers Pet'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '70c5523f-34c1-4086-afee-108db8dd9805', 'O Retorno da Filha Indesejada', NULL, 'Sinopse: Manuela filha biológica dos ricos Almeida, é maltratada pela irmã adotiva Stella. Após uma reencarnação ela foge e se torna programadora criando um projeto conectada já. Com o grupo Menezes lança mente sábia. Quando os Almeida descobre as mentiras de Stella Manuela revela sua nova identidade como senhora Costa e corta laços.', 'https://vz-c2303ad7-0af.b-cdn.net/ff8365bb-ad1d-4fbc-81fd-7ab088551738/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T02:55:11.072151+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno da Filha Indesejada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2e7a32d6-2f57-4b23-9df5-8399871b0a8f', 'Mais Espada, Menos Batom', NULL, 'Sinopse: Ela trocou o salto pela espada e mostrou que força também pode ser feminina. Treinada para lutar, marcada pelo passado e guiada pela honra, essa guerreira não tem tempo para romance… Agora, entre batalhas e dilemas do coração, ela precisa decidir: lutar contra ele ou ao lado de quem mais ama?', 'https://vz-c2303ad7-0af.b-cdn.net/f8f863fe-39c8-426a-b787-eed20ed6e1f9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-28T02:53:41.360112+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mais Espada, Menos Batom'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd5ebb868-1f63-45b7-8b02-43b667728193', 'Quando Eu Fui Embora O Arrependimento Começou', NULL, 'Sinopse: Sophia, traída pela própria filha adotiva Olivia, foi sequestrada pela poderosa família Grayson! Três anos de prisão injusta, acusações falsas e um passado cheio de segredos sombrios... Até que ​Tristan, seu misterioso mentor, aparece com uma chance de fuga. Cinco anos depois... Ela voltará para se vingar? Ou seu novo esconderijo será descoberto?', 'https://vz-c2303ad7-0af.b-cdn.net/d5a0265b-44a3-49c7-bd7d-5e6b4af33eb3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'']', '2025-07-28T02:51:59.623148+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando Eu Fui Embora O Arrependimento Começou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7f84486f-1b56-4dc3-985e-1cb013238622', 'Rainha da Bolsa Está de Volta', NULL, 'Sinopse: Louise, a deusa infalível das ações do Grupo Alice, casa-se em segredo com David e o ajuda discretamente a a abrir capital. Após ser sabotada por uma rival, decide se divorciar e revelar sua identidade para se vingar. É quando Simon surge como sua nova esperança - o que ela vai escolher?', 'https://vz-c2303ad7-0af.b-cdn.net/f8e60902-62c1-41af-a25c-4e750f211c40/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T02:50:28.560356+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rainha da Bolsa Está de Volta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f70ae431-5987-4fea-81bb-625c66f990e5', 'Retrocontagem do Amor', NULL, 'Sinopse: Leila foi deixada de lado pelos pais, traída pelo marido e até rejeitada pelo filho. Sem mais esperanças, ela aceitou a oferta de um sistema misterioso de trocar de identidade em três dias. Quando acorda, recebe um pedido de casamento de Érico, o rival do ex-marido. Ele sabe tudo sobre ela, sempre a protege e enfrenta todos por ela. Leila acha que é só uma substituta… até descobrir que sempre foi o verdadeiro amor de Érico.', 'https://vz-c2303ad7-0af.b-cdn.net/59be5145-4419-492e-b16d-d8b6e236f491/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-28T02:48:47.597468+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Retrocontagem do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c761568b-6ffa-48df-8932-28e0eee1bed6', 'Noiva Malvada VS. A Sogra Secreta', NULL, 'Sinopse: Beth, uma influenciadora renomada, estava prestes a se casar com um dos herdeiros da família mais rica do país. Mas na véspera do casamento, ela cometeu um erro fatal: confundiu sua futura sogra com a amante do noivo. Tomada pela raiva, Beth decidiu se vingar imediatamente, sem imaginar as consequências devastadoras que sua louca revanche traria para sua vida...', 'https://vz-c2303ad7-0af.b-cdn.net/5b4f7a5b-3c03-4d9d-8326-3f28eadf4f6d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T02:47:02.634152+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Malvada VS. A Sogra Secreta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74e9b27c-dad2-4605-be7e-ed899ae95cab', 'Últimos 190 Minutos', NULL, 'Sinopse: O renomado médico Mário Ribeiro recebe uma missão crucial da poderosa família Mendes: transportar um rim vital de Valia para Xonos em apenas três horas, salvando a vida de João Mendes. No voo, ele cruza com Júila Alemida, a futura nora dos Mendes. A tensão aumenta quando Júila e sua mãe abusam da influência da família, colocando a vida de João em risco.', 'https://vz-c2303ad7-0af.b-cdn.net/197b402c-ebe6-4b7a-afa6-80190be17ec9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T02:45:34.354365+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Últimos 190 Minutos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3d5ea6e7-089c-4102-b207-2bf8f6e50fe7', 'Mentes Perversas', NULL, 'Sinopse:
Arrastada para um mundo sombrio de homens perigosos e caos, Eliana se vê forçada a suportar coisas que ninguém deveria...Mas e se, no fundo, ela começar a gostar?', 'https://vz-c2303ad7-0af.b-cdn.net/9b7a259f-0ed8-4757-99c5-0184091d9eac/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T02:43:38.838452+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mentes Perversas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e2ab8699-bebf-4c66-9dab-f71c3e58a8c3', 'O Marido Frio, O Amor Ardente', NULL, 'Sinopse: A famosa dançarina Alice sofre um acidente e acorda nos anos 80, no corpo de uma mulher grávida rejeitada por todos. A antiga dona do corpo usou métodos vergonhosos para se casar com o reservado comandante Lucas. Após a chegada da Alice, ela conquista o respeito da família do marido com seu esforço e sinceridade. Ganha o carinho das cunhadas com receitas modernas e encanta os vizinhos com histórias da série ""O Palácio da Concubina"". Sua dança impressiona a sogra e, com astúcia, ela desmascarou a armação de Camila com inteligência. Com o tempo, a Lucas se apaixona por ela. Fora de casa, é um oficial frio e disciplinado; em casa, torna-se um marido gentil e dedicado. Quando a Alice percebe, já está completamente envolvida por esse homem, sem chance de escapar.', 'https://vz-c2303ad7-0af.b-cdn.net/391c3d6f-e0a3-42ec-8f65-c38b13271f92/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-28T02:39:40.34585+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Marido Frio, O Amor Ardente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2888e752-a0d6-4a3b-9d1f-f7cbbfdd2c58', 'De Sem-Teto À Esposa De Um Bilionário', NULL, 'Sinopse: A bondosa Daisy percebe que venceu a luta pela sobrevivência nas ruas quando cruza com o milionário Adrian, rejeitado por sua namorada mimada. Decididos a lutar pelo amor, essa dupla se torna os heróis de seu próprio conto de fadas, atraídos por uma paixão irresistível.', 'https://vz-c2303ad7-0af.b-cdn.net/ace38bdb-6db1-4854-98af-ecb4b8306422/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-28T02:22:01.076586+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Sem-Teto À Esposa De Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '97211b0d-7be5-42de-ad1e-cd8c4f52e69b', 'Segredos do Pecado', NULL, 'Sinopse: Depois que a mãe de Marcella Sinclair morre, ela não consegue deixar de se sentir um fardo para o irmão de dezoito anos. Então, quando ela recebe uma oferta para ganhar muito dinheiro como stripper, ela aceita. Ninguém pode saber... principalmente seu irmão, que está decidido a manter sua pureza e inocência para o resto de sua vida.', 'https://vz-c2303ad7-0af.b-cdn.net/e447e319-6762-44e8-8bef-a54294d8f126/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-28T02:20:49.639528+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segredos do Pecado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '84ff32c8-420d-45f4-a3c7-ef5243c33c4f', 'Uma Entrega do Bebê Ao Bilionário', NULL, 'Sinopse: Precisando pagar seus estudos, Rosa trabalha como entregadora de comida e, devido a um mal-entendido, acaba passando uma noite com o bilionário Jonas. Ao descobrir-se grávida e “traída”, ela resiste e não cede às pressões. À medida que a verdade vem à tona, Jonas decide protegê-la, e o amor entre os dois nasce em meio a adversidades e traumas antigos.', 'https://vz-c2303ad7-0af.b-cdn.net/36a2616f-5901-440b-834d-591394e4d29f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-07-28T02:19:21.350825+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Entrega do Bebê Ao Bilionário'
);


COMMIT;