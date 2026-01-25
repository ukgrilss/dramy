-- PART 3 OF 5
-- ==============================================
-- DRAMIO IMPORT SQL - Generated at 2026-01-25 19:13:30.065061
-- ==============================================
ALTER TABLE filmes ADD COLUMN IF NOT EXISTS descricao TEXT;


BEGIN;

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c9ad1b0c-d503-4e71-a2de-9a845f7efb59', 'Diga Para Eu Não Te Amar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/be9c361c-a714-4394-90c6-a7ce42338408/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-07T22:22:14.98+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Diga Para Eu Não Te Amar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3dc0b41d-fcab-43a8-801c-baf2ca413940', 'Casamento Em Ruínas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/edf23b7c-9e71-45e3-896f-c99e086bb1e0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:10:46.589+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Em Ruínas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7abb8f47-9aee-4eab-a60d-28eee32bbeb3', 'Música Do Pecado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b102e5da-4eee-4381-b38c-9425e4b43f47/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:08:50.508+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Música Do Pecado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b3279887-823a-4761-8094-dd1d8f91ebfc', 'A Décima Chance Para o Adeus', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/da618a90-d370-495c-9740-b6afc2e9921f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:07:32.697+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Décima Chance Para o Adeus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f34abada-2061-41e9-b13a-c0cc1c938b05', 'Meu Marido Surpresa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/576ec894-64f4-4e08-abed-8bf63cc32825/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:04:45.007+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Surpresa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e4166194-f7c2-436d-9f12-9a4192eb9423', 'Casamento Apaixonado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/85076fd6-6096-40f5-9f56-758cf462dccb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T23:45:33.959+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Apaixonado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '286d5459-42c5-4231-9593-aaa6116a7859', 'Papai Gélido Não Fuja', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8db866f0-5f41-4184-be1b-745a98eb2729/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T23:43:55.994+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Papai Gélido Não Fuja'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '184bfa75-cc5b-469d-8554-773c85752871', 'Nova Vida Minha Liberdade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f43a1bd0-18ee-491e-8ec4-b17fc6b71783/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T23:42:32.41+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nova Vida Minha Liberdade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '73257abc-3f3c-437e-ac65-69ccf2df9836', 'O Bilionário e a Amada Grávida Desaparecida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd33682e-5c97-4a79-a0ab-f0ce05c2ad73/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T23:41:29.222+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Bilionário e a Amada Grávida Desaparecida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '91cc0155-df0c-4d63-a99d-1179ab2dba4c', 'Criando O Filho Bastardo Do Meu Marido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c019e6f5-0b10-46e5-a075-c734a35e76d4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T23:40:36.023+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Criando O Filho Bastardo Do Meu Marido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ec5dcdd-5b3d-45a2-8ae6-bcc9d9007631', 'O Amor Que Perdi', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/88a3fd12-ba80-4349-8249-f7f917e84da6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T23:37:59.85+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Que Perdi'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '410f3267-f0dd-4f15-b0a1-1a207911d954', 'Seduzindo Melhor Amigo Do Meu Pai', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d4ad15c9-0a4c-41e5-b975-b266e2b90dcf/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T23:35:28.688+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seduzindo Melhor Amigo Do Meu Pai'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6e45fcc7-5f97-463f-bfa3-1a7fba917a6a', 'A Ex Esposa De Face Dupla', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d4c0ca63-1775-4fb4-a605-868dfe71f34d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T23:29:58.94+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Ex Esposa De Face Dupla'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '240d879b-f000-42a0-8110-231cc6c4bf08', 'Mistério Da Senhora Rica', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/edea1073-ab74-4256-b535-784b64eb8bd4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T23:02:18.021+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mistério Da Senhora Rica'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5030c896-fe8d-4b76-9111-9b4fb6bf3829', 'Jogo De Coroas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/da701d05-6139-47dc-bd26-85882b4ec243/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T22:56:26.406+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jogo De Coroas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6dff8385-c00f-48ef-828c-98962ca21b3f', 'A Exceção As Suas Regras', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1ad7295a-1bb9-46f0-aefb-3d46c5099a53/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T22:55:41.857+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Exceção As Suas Regras'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e6b9e7cf-df54-404c-ad27-aae5bca3851a', 'Depois Da Dor Eu floreci', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1b5747c8-4740-48d3-b81f-24d660e4366f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T22:54:58.073+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois Da Dor Eu floreci'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f5ffa068-e948-416f-b3d8-ccadff373dfa', 'Irmãs Renascidas Marido Trocados', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/65a22401-e058-464c-a738-20ea94c627d9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T22:41:19.678+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Irmãs Renascidas Marido Trocados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8f501280-c2a6-475c-8ecc-0989d032c2c6', 'A Princesa Da Nova Família', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c195f2bb-e218-4ce6-83d2-80575f5baefa/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T22:40:34.733+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa Da Nova Família'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '606050a4-ac84-43d5-9bfa-c8ccb32008c3', 'Ligados Pelo Desejo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/658f0ec5-3a9b-4fc5-a981-4a693f5bc600/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T22:38:53.329+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ligados Pelo Desejo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7c6494af-ef6e-44c5-89dd-fb3f201a1c49', 'Adeus Ao Meu Ex Que Falhou Três Vezes', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/273f6aa8-bb09-480e-86d0-14e0a7cc66b3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T22:38:05.215+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Adeus Ao Meu Ex Que Falhou Três Vezes'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'edfdf9ed-68c9-4384-a2df-7b692d2e8bf1', 'A Benção do Príncipe Caído', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9214d29b-0782-40d1-91a5-007c55d5b4b0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T22:37:09.78+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Benção do Príncipe Caído'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a35d8870-1b64-492e-8c6f-cca69e1443b5', 'As Flores Chang’an Murcharam', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aea7ac42-d311-48ca-ab66-36c581cac00b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T22:30:11.478+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'As Flores Chang’an Murcharam'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74bcd2f1-1f04-4c76-ba1a-e5d619522869', 'A Décima Chance Para O Adeus', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3a33e090-bc86-4e4b-993b-3e4f65fc4f06/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T17:53:39.393+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Décima Chance Para O Adeus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fbf1a72b-052d-424d-9b2c-c3703cca9b0d', 'Sr Fertil De Maldição a Benção', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c772b57f-3c66-4c9c-94cb-9f8e91fd9a84/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T17:28:53.17+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sr Fertil De Maldição a Benção'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dd764465-5e14-452a-afba-d5223ce4585e', 'Legado Do Monte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b98ff803-bc37-4f1f-b682-b48905e76182/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T17:28:12.061+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Legado Do Monte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e376195e-521a-4958-8297-bdf4ca9e2a84', 'O Santo Marcial', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3c2c1397-e0a2-43e5-85c5-c0aed445f059/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T17:27:23.726+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Santo Marcial'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ca0b3a0-fe43-4dcd-9ed2-304a70f78812', 'Sorte Perdida Seita Em ruínas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/771010fd-9f29-4add-a0d3-bc3950bcb4d1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T17:25:33.108+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sorte Perdida Seita Em ruínas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ded52e1a-d41f-44a5-90d7-11f6a75e7032', 'Nosso Novo Amanhã', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/32b74749-0474-4f84-9b6a-1cd5eb742c19/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T02:50:32.87+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nosso Novo Amanhã'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '08571fae-6d07-463b-b9f0-3e91dcc60e17', 'Sou Nada Mais Que Um Mortal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d086ec18-9260-4acf-977a-d22066f0a24c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T02:42:58.368+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sou Nada Mais Que Um Mortal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2c864c71-954d-48e6-955b-9a22542f1d3a', 'A Rosa Do Presidente Gustavo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7d11a5dc-815e-42b0-b66d-e777dc247df7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T02:34:23.588+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Rosa Do Presidente Gustavo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c362970-4cc1-4c63-8084-91b74891a417', 'Esperma Errado Amor Certo ll', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/26ccf9fc-38f5-465c-bbeb-3f2db4a8bdae/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T02:32:37.599+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esperma Errado Amor Certo ll'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9fd0e5d6-cdc1-4d11-8f30-9b50eda0129d', 'A Esposa XXl Do Prefeito e Seu Retorno Incrível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cb66b252-5d4c-47e5-a83e-73a114b271e6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T02:31:29.156+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa XXl Do Prefeito e Seu Retorno Incrível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a82210a4-69b2-4530-ad23-20c09bee23b2', 'Um Amor Em Silêncio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8e344516-c939-4614-8313-4826f892c159/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T02:30:36.51+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Amor Em Silêncio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2c685519-2e35-4334-9913-2f5c8d043dea', 'Eu Tive Um Bebe Sem Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/86456497-6c5e-4073-be63-43c0e0266281/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T02:29:54.187+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Tive Um Bebe Sem Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c24f7bba-1297-42ab-998a-dd5841588402', 'Jogo Da Mentira Virou Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6e867174-e206-4a26-aed4-7c9a0548d014/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-06T02:29:08.638+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jogo Da Mentira Virou Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '63850a3c-a364-41bc-a72a-19a91fdaecb4', 'Ligada a Honra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a2f46540-ead1-45ac-894e-876eb0faa064/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-06T02:28:12.424+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ligada a Honra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '022724e6-8287-40ca-84ad-2e9770c99753', 'O ANIMAL DE ESTIMAÇÃO DO PROFESSOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f050d840-9553-4e57-b140-1c8486cd03fd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-11-06T00:03:25.912+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O ANIMAL DE ESTIMAÇÃO DO PROFESSOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ed329f8a-711b-4c71-9015-33f4e6f3c9ef', 'Meu Ídolo Virou Meu Marido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d168a7e6-8cd0-4687-b757-99402cec9b57/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:44:29.798+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Ídolo Virou Meu Marido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '302e6fa2-680d-4db4-b4da-e1e8e7f3d0f5', 'Um Acordo Com Meu Doador', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/677b63b2-6e73-4913-8021-0f34bc3ab8a8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:42:46.23+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Acordo Com Meu Doador'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a1337403-cb42-4e57-9b06-881080d3c28b', 'Coração Não Escolhido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8277bfaf-d59e-48a3-86a1-7172f866ad94/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:41:54.403+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Não Escolhido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'da3f3d25-6461-46ac-a89f-06502b67b945', 'A Médica Da Alcateia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2f4a2ec2-4857-41e0-9767-8ae998792214/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:41:03.99+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Médica Da Alcateia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4f5d1243-10f9-464d-afd9-709bcee96278', 'Casada Com Um Tiozão Quente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9dad2ef4-e1f2-4309-a4dd-c1096cab0056/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:40:08.446+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casada Com Um Tiozão Quente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '25eb7655-23ce-4d11-be3a-e77a0a4186a5', 'A Esposa Cega Indesejada Da Máfia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/42820dbf-7113-43bf-82f2-414e8267614b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:38:53.538+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Cega Indesejada Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd6096755-eb7b-4a7a-bd9f-377ee304acf7', 'Cintilação Cósmica', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e93e33da-12cc-4f77-ab3f-0968e78ab0a8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:37:50.121+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cintilação Cósmica'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3a2d2a6a-3ede-4da2-a30a-12d4d6142c9f', 'O Preço Da Obsessão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2b0091cf-c43d-4f66-9cde-4576906663c0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:36:04.305+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Preço Da Obsessão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5bd542d9-9932-498f-96d1-2125199147c8', 'A Graça Da Luna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b5b9d03c-153b-4621-b6f6-9be546fe29f3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-11-05T20:34:32.451+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Graça Da Luna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f049d6e9-4fde-46b3-9310-f7e9a04d1db8', 'Minha Mãe CEO Meu Pai Kung Fu', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4f836aa0-7093-45ae-9272-7a7c836f2222/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:33:40.151+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Mãe CEO Meu Pai Kung Fu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0571a47d-80b6-49b8-9996-885b26d2c308', 'Meu Marido Agente Secreto II', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/992a0593-2f08-4038-8254-3f099e913611/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:25:07.358+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Agente Secreto II'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e024237f-75fa-4547-8d10-fad2cda2b6b1', 'Chantagem De Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4ae34d08-dc42-4b81-9910-b9e8127dba42/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T20:23:55.28+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chantagem De Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '33e159ab-8781-4622-bc58-a6454e0e0bc0', 'De Bilionário a Pai Em Tempo Integral', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/65180415-d696-4e5d-a43d-532ae83c453b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T04:27:24.224+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Bilionário a Pai Em Tempo Integral'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4a7b32ee-397e-48df-8c11-5ec5a2511020', 'Pai do Meu noivo Me Quer', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6af88a2b-ba4e-45c1-8c61-f1471374cca4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-05T04:26:29.384+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pai do Meu noivo Me Quer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e56c0f6e-5f33-49b7-8255-4f421ffa5ccb', 'Amor Entre a Névoa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3a0c60ad-c379-4d73-9af6-188ef7898655/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-05T04:25:36.507+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Entre a Névoa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b624643c-a0a7-43d1-b9d1-f08189bf4323', 'O Amor Ignorado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b7d24ac8-2570-489b-868f-775d1cd66e5a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T02:22:38.463+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Ignorado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3ca1bab3-5ece-43c4-8352-e75e9ee017f9', 'Laços Perigosos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dd70df24-8698-4422-a238-1b81c3ebe2aa/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T02:21:44.766+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Laços Perigosos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c2331b6a-ad34-4fb5-aeb1-362e095e97ba', 'Arrependimento No Espelho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/70155c6c-4aa1-4d9c-8f62-9a70e44f832b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T02:20:41.434+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Arrependimento No Espelho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '135083ba-a3b7-4d99-872e-4f19b51d42ec', 'Promessas Quebradas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b81ebd49-5a40-43bd-9eae-b136d070b656/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-05T02:05:59.981+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Promessas Quebradas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3369498b-67e8-4fef-8ae0-4d555c9feb27', 'Inabalável violinista Ella', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/67667047-9e76-4e1c-906a-0b0716e5df36/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T00:16:40.961+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Inabalável violinista Ella'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a5080f37-fc38-4c98-be9e-f7ad1e29c3cb', 'Traga De Volta Meu Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/af87eddb-18df-4176-baf0-6e28bce9a141/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-05T00:14:50.888+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Traga De Volta Meu Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5cccc6cf-7bce-42f8-afbe-bae6a5df2a99', 'Me Ame Até Seu Último Suspiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b2796884-dc5c-4e3b-9d4b-3d07d691b312/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T23:41:29.722+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Me Ame Até Seu Último Suspiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9a5b2b71-ceb8-4a97-b640-4df1e192e672', 'Sedução Escarlate', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/87534554-1010-4fe9-90ea-6010bf618b88/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-04T23:40:06.01+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sedução Escarlate'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8d773f2f-db1a-4c4d-957e-e7a1a2220ce9', 'Apaixonada Pelo Meu Ceo Astuto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3fd545ee-f038-40b9-a932-1458a42316b6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T23:37:38.059+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apaixonada Pelo Meu Ceo Astuto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e57c3bbd-fe9c-4fd6-a406-39d62640beda', 'Presa No Abraço Do Chefe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/866e0143-dc0e-43b1-9f49-620340fc511d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T23:36:38.238+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Presa No Abraço Do Chefe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '90649f43-6b4b-469d-af16-d173c499023b', 'A Helena Transmingou Para Um romance', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/51947237-6898-4ce7-9faa-92af9c430fa0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T23:34:10.018+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Helena Transmingou Para Um romance'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c3d599fa-7d4b-4099-94a3-cce333adfbd1', 'Amor Em Chamas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1d2829a9-1de4-44a1-a060-b23307ea6617/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T21:07:43.29+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Em Chamas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6934b7a6-bfa1-45e6-bd21-2e248ad1fb3b', 'Menina fica Viral Família Pede Perdão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/85ed1d61-e7f4-4fc6-ab8a-445cddaf2b63/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T04:48:38.864+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Menina fica Viral Família Pede Perdão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b5c78cde-e874-4e57-b758-7f170abaf410', 'Minha Cura Começa Com Ela', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ee916527-3dd1-4cb0-9283-25b4f0759f2a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T04:45:15.339+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Cura Começa Com Ela'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '204f4e89-6ef3-426c-bf5a-f71494fa1eb6', 'Não é Gaiola Dela', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8b7df1fd-7c65-42e4-b22b-b2179b977490/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T04:42:42.621+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não é Gaiola Dela'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f0b4f4ab-0a8c-4b0a-ba34-737d78656ab4', 'Destino Selado Pacto Com O Rei Da Mafia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e6ab7625-fa3f-4013-9a1a-c147d117268d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T04:35:31.17+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destino Selado Pacto Com O Rei Da Mafia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8f345062-ee84-4817-96a8-3246a8c2cfc9', 'A Tortura Delicada Da Mafia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f4336b36-1dfa-45fe-a0c7-dbc54c6d3167/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T04:26:08.294+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Tortura Delicada Da Mafia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8d77561e-bace-43f8-8728-908026a3d3ff', 'Mudar Pro Interior Casar Com Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e88891f6-4b25-4669-8340-685eb39d8121/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T04:24:31.278+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mudar Pro Interior Casar Com Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '09eedd5d-567c-4dc4-aa08-0590e3b87ba3', 'O Amor Que Eu Perdi', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8e730713-2b08-4260-8748-ee4d550f2982/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T04:11:44.584+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Que Eu Perdi'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f6f8d3da-b92b-43f3-9e38-63e7f01a0107', 'Armadilha Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3da19101-7894-4d76-ac58-d954cd1867d3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T04:10:53.685+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Armadilha Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'da30c193-0488-490d-a6a6-88390649de88', 'Entre Cinzas e Desejos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b1cd173c-71f0-41d6-bbb5-eb161dce4abb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-04T04:10:00.357+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Entre Cinzas e Desejos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c3fde9a8-a7e2-4df3-aaa0-fbdedf82db6e', 'Esposa Secreta Do Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ee54af7b-5308-4f13-be9a-f1fb027e220d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:58:26.048+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa Secreta Do Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '713e6c8b-5cef-4239-94c9-2277e24f6bae', 'Minha vida Na Máfia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/df41a7a0-5c3c-4ec2-89cb-c19432368cb8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:57:16.88+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha vida Na Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2d76759d-bcfe-4e70-942d-833bd740abdc', 'Depois Da Tempestade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8b2c8d93-5b25-4efa-8644-7e3bc64d2d15/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:56:04.035+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois Da Tempestade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2fe4256a-c627-4506-8753-cbebcbdb4bea', 'Casada Por Acidente Com O Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/69bbc259-afd5-49bf-a04a-7e26329a50c5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-11-02T14:54:34.498+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casada Por Acidente Com O Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '31805f57-a7ad-4b89-a379-cd4137e532cc', 'O Jogo Da Criada Astuta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b8ab3230-15c0-468c-88e7-1502159f57fe/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:49:53.456+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Jogo Da Criada Astuta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2aa692c5-860d-4f67-b21e-e3e9c8b3302b', 'Neto Falso? Não Verdadeiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/00dbf8a2-d945-44a5-9a35-86771df09d7d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:48:54.255+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Neto Falso? Não Verdadeiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd4444ead-c8ce-4aa8-8c50-37ccd56d5a40', 'A Flor Caída Já Tem Dono', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e80ae442-9eff-477a-b6e9-b3cfd2fc563f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:45:06.979+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Flor Caída Já Tem Dono'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '18bb051a-5306-46a5-934b-d9fd632fe63f', 'Uma Coelha Que é Boa Em Camuflagem', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/34594662-1796-476f-a28d-63d6d7f565f7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:42:31.46+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Coelha Que é Boa Em Camuflagem'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '61f58d89-a2ab-46e2-b883-01f50ad19c9a', 'Tu És O Vento Eu Sou As cinzas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b0497231-c961-4e8d-a298-6742d6cecb7d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:41:30.642+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tu És O Vento Eu Sou As cinzas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6987ff86-defa-4611-929f-40ae3ab34057', 'O Chefe Da Máfia Substituto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b45dadd8-59b5-43a9-9236-ebea2db529e2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:40:42.897+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Chefe Da Máfia Substituto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6aaa3249-46e8-46ca-a7a1-4e6a177466c9', 'Refém do Amor Renascido Da Dor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/90d2c0fe-042c-49ee-932c-2a7edb1e0bd2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:39:49.432+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Refém do Amor Renascido Da Dor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6feb53ce-8e74-41dc-a3c0-f2dea71fc336', 'Madrasta Feia Vira Perfeita', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ce64b72d-4933-48b7-a999-9457ded2900e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-02T14:38:30.758+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Madrasta Feia Vira Perfeita'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6c863715-1486-43d6-a145-fbe774dc69d3', 'Grávida De Gêmeos Do Bilionário O Amor Começa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d8750869-2d6a-4129-ad71-ad8f5d482cb5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T13:39:48.243+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida De Gêmeos Do Bilionário O Amor Começa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '77ba30df-e451-491b-afd2-7921c912a745', 'Capitão De 8 Anos comando', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6496c6e3-f469-4b22-87b3-799a7143f962/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-01T13:36:28.904+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Capitão De 8 Anos comando'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '97fb78d8-82ef-4679-9361-a8c39231b28d', 'A Bela Adormecida e Os Três Irmãos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/06f6e31a-545a-49a9-adda-b01e76d43538/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-01T13:34:39.659+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Bela Adormecida e Os Três Irmãos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '34349c45-2cb9-4cf6-bd0e-5fc5c0c8dab5', 'A Santa Da Vingança [DUBLADO]', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8e4ccfd7-34de-46ef-a8b1-4cc8b65b4f93/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-01T13:32:32.211+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Santa Da Vingança [DUBLADO]'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b275f832-8dc2-484a-a66b-528fe6d98009', 'Por Favor Amarre Me Tio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b3bb3bb4-79f6-4c34-a6ca-906fe4290674/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T13:29:56.599+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Por Favor Amarre Me Tio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '95ec9d5a-9267-4b39-b674-f5cf9a7d5f28', 'O Último Adeus ao Ente Querido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/673313d4-2342-4fff-bb8a-46b512f9d478/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T01:05:00.13+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Último Adeus ao Ente Querido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7334c7a6-7af1-4ca3-b7a9-599d1ad22330', 'Fortuna e Poder Em Minutos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b08cacc8-1fe5-49a7-bd60-8ee6980a1c66/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T00:19:18.648+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fortuna e Poder Em Minutos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1a6fa638-78b2-4e46-aea1-dc51da3213bf', 'Meu Professor Meu Vício', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7b96d13a-d0ae-4e18-8ff2-fd1cc218bc37/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T00:14:27.159+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Professor Meu Vício'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9dad2000-d0f5-4e5f-aa85-a999cb89604b', 'Boa Menina Do Daddy Dom', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4401aa24-4635-4c7b-8688-05d90639791b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T00:13:19.652+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Boa Menina Do Daddy Dom'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '92313ce3-af62-4214-a775-fe93d93a0673', 'Namoro De Mentira Com Meu Rico Inimigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2ce6fe40-5f16-4c3f-baec-ef933b6f3b44/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-01T00:12:29.722+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Namoro De Mentira Com Meu Rico Inimigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9c0b6434-e769-4bee-b82c-df07b8b8d2ac', 'Virgem Do Vôlei De Praia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e83a0953-7a20-4d80-bc07-1d15ca7f98ca/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T00:11:29.636+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Virgem Do Vôlei De Praia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3ed260ef-35f5-4bf3-a380-3e58b4863231', 'Boa Sorte Bebê Halloween Do Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a920b888-c650-4ce7-a7e0-b012fe4b2a6a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-11-01T00:06:49.704+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Boa Sorte Bebê Halloween Do Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1b7e9d79-87ab-482d-80ba-cd5651589ebe', 'Amor Desajeitado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f203ef9a-fbf6-4e8e-8b31-02298145432b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T00:05:37.648+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Desajeitado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b32e7ddb-8d65-47b4-a0eb-a1c89f5563be', 'O Pacto Da Bruxa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/401e940d-74a3-4690-b2c4-68218d98bce5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T00:04:12.047+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Pacto Da Bruxa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9f72514a-e83b-4dfe-ab97-7c69e7acd45c', 'Largado O Astro Das Corrida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5a4c7f00-b65f-4100-bf5c-11854df6c925/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-01T00:02:51.966+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Largado O Astro Das Corrida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9992b2ed-803d-47e6-a774-c1552d3b99a0', 'Coração Em Movimento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5b75d76b-2257-468c-9b91-ca964d6f1ab4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-31T22:50:35.791+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Em Movimento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4b328647-ceb8-4b40-ab93-6caa90d8889e', 'Quando a Promessa Se Rasga', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bd663815-7dd6-4190-a473-aa64d9c95db1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-31T01:33:23.147+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando a Promessa Se Rasga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '70a7c49d-98df-401a-a0b3-15a3facefda3', 'Adeus Ao Passado Ola Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/39a99fa6-180b-4cf7-a802-50510efe6aca/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-31T01:32:08.216+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Adeus Ao Passado Ola Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '16f7f4ea-cbed-4622-9485-ff81de6f8aa8', 'Do Camponês ao Marido Da Imperatriz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4006fb8c-6c80-4eef-971f-b12729ba341f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-31T01:29:38.614+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Camponês ao Marido Da Imperatriz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a6713ba9-419c-4601-9ef7-e671bbde0bbf', 'Diante Da Rosa Silenciosa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/55dedbeb-28be-47f5-a434-cc7d7bc849b9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-30T22:48:28.943+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Diante Da Rosa Silenciosa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '621b5eac-6c7b-4573-8c76-8cffb6605c7c', 'Amor Eu Vou Me Casar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/87fcff91-aff5-4801-92c9-348a2de57b6b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-30T22:43:39.237+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Eu Vou Me Casar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '558a33de-8b58-40a2-97bf-a27e3aa92303', 'Meu Pai Voltou todos Estão De Joelhos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/049c2de8-4f1d-4d6f-ad7c-cc507b8c5a74/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-30T22:33:49.372+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Pai Voltou todos Estão De Joelhos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7cfa73d4-8b2c-4408-b9da-ff10ef6ef3bc', 'Amor Jamais Perdeu Para Memória', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1d2cc887-6570-457d-bef3-3f74304f53ce/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-30T22:32:49.93+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Jamais Perdeu Para Memória'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f8d386fb-115d-4b20-bdaa-abaafa9e8fa4', 'O Noivo que Valia Bilhões', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3d7c1fd7-5058-4129-a176-7d60b9e26ff4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-30T22:31:45.638+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Noivo que Valia Bilhões'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '19408813-bcea-4c7c-b711-669cf1c55773', 'Trampolim Para o Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4e79e632-c526-4347-b1d6-8f958e2cd962/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-30T22:29:59.375+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Trampolim Para o Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3dd1bbf6-0959-4f9e-add4-901ed34aaa3b', 'O Amor De Sempre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/be166e3e-4823-412d-ba54-606bcd3adbaf/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-30T22:23:56.52+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor De Sempre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dab590b7-7a55-4084-ad8f-9aeb55fe2ae0', 'No Limiar Da Loucura', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7423b835-3730-400c-b39c-cce6a18939f1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-30T22:22:17.297+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'No Limiar Da Loucura'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a6eb94ea-4ae1-445f-857c-a10a16cc0d42', 'A Vingança Da Esposa Congelada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a271a45b-d7c3-4f73-a9db-b08ec7f060d9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:52:37.259+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança Da Esposa Congelada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '02612d03-74ab-443e-a187-9ae0d17828a6', 'Amor a Margem', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/03d177b9-3245-4d6a-b903-24ac496b3d36/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:49:17.883+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor a Margem'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'aea43a58-29a7-4188-82d4-264012d7dccc', 'O Segredo Do Bilionário Acompanhante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/609f9828-248f-46b2-a278-fd8b7d9c3622/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:42:51.315+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Segredo Do Bilionário Acompanhante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '278e82be-330a-4928-b476-fa69659ee8a1', 'A Esposa Injustiçada Do CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8522bf95-ce79-4100-bc13-759263f15a5f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:38:48.402+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Injustiçada Do CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6b63babe-37f4-4671-8a0e-4215cf71afd4', 'Jogo Do Destino: Amor Após a Morte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/556825d5-fad8-4275-aa9a-138128bc6857/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-29T23:37:39.305+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jogo Do Destino: Amor Após a Morte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f7ba61bc-97b7-4355-9a48-d6315cfcf8b2', 'A Herdeira Deslumbrante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b6537ad3-30c4-4813-a28a-2f274e55636f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:36:27.15+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Deslumbrante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ed70e7f1-db0d-474c-b472-64c2357b6dde', 'Sonho De Saudade Do Harém', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a35b3b4a-cef5-4bfe-b205-2b0fcb10d8ae/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:34:43.686+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sonho De Saudade Do Harém'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cf23153a-30cc-45fd-aa83-7fc382c22fb7', 'A Vida Dupla De Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3d998ff6-5f83-4bbc-9884-65dfb41e055e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:33:49.646+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vida Dupla De Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1a869484-e6c1-46e2-8fdf-72325a334db5', 'Favoritismo mortal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/84c3f236-d8fc-4f69-8e8c-c8b185a8b34a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:31:23.994+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Favoritismo mortal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '26ed8a63-75b9-4030-8604-3e9a25aa0be8', 'Um Encontro Às Cegas Com Meu Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2c1215a2-1b57-4534-9dec-e99d0b479702/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:27:15.263+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Encontro Às Cegas Com Meu Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cb4f7246-7f44-4e14-bf65-926dfd79e48b', 'Camponeses e Serpentes: A Fortuna Vira As Costas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/85bd0c60-72ac-4d98-82b8-7d9812265f04/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:26:28.567+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Camponeses e Serpentes: A Fortuna Vira As Costas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '461210d6-2828-486f-bcd7-daa631f22bef', 'Inverno Quente Vira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2f2f5a40-4af3-4c21-bc30-58d9010da93c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:23:46.45+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Inverno Quente Vira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '64e4b81a-10e7-4c62-8db9-2d1183a7ab2b', 'Desejo e Arrependimento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/15d11858-5aee-406f-9f07-39fff07e91a0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-29T23:22:42.648+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejo e Arrependimento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1e90e703-45d9-408f-9f6b-06e1e348a8d1', 'A Filha do Inferno Chegou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0bfe5ce2-9a6c-4e59-b4cb-fd7d4d2a4d21/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T23:20:52.327+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Filha do Inferno Chegou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ed71188d-392d-4de2-813f-e0279c277ca9', 'Em Nome Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ece19165-3349-42b9-9db7-8fe11ec757b8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T21:49:56.932+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Em Nome Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'db63d2fe-3770-4a07-9e7d-80bf96b1b389', 'A Moça Impressiona Todo Campus', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f602bcd2-249c-4096-a792-d9178de0caa2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T21:48:10.398+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Moça Impressiona Todo Campus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6b6fe7b4-4e3b-4139-8317-875b9914086f', 'A Herdeira Retorna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/35c7b1a5-5e87-4049-aac5-8bc6e3300416/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T21:45:47.637+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Retorna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'da761b06-153a-4a8b-8ba4-f7d01910d4b0', 'justiça', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/609fa5ec-089a-4326-82b8-eb4f8891b0d0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-29T21:44:00.607+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'justiça'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f6c32e20-afee-4fe6-a45f-f9b6e416b87a', 'Paixão Taboo Meu Meio Irmão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a081be80-d611-45c5-95da-91f88158bf3e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-29T21:42:05.404+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Paixão Taboo Meu Meio Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6ff80d1e-2469-47bf-a652-43a6580c1450', 'Depois Da Névoa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6162ee5a-3d3b-4272-8fa2-97ea34fb12e5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-28T22:03:19.256+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois Da Névoa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c63ee8af-e8ac-4a27-83c2-4b5b62e13eeb', 'Clara Entre a Dor e a Liberdade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ee187586-500d-47d4-8c4f-e8deb5612acc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-28T22:02:23.243+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Clara Entre a Dor e a Liberdade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '57a5b8c7-fdef-4bfe-b7a6-dc3270aee47c', 'O Jogo do Destino: Amor Após a Morte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d4ef9411-23c2-4553-b492-a616868defd7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-28T22:01:10.012+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Jogo do Destino: Amor Após a Morte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '83be6e3c-02cc-4891-b17d-c6d56867c617', 'A Santa Da Vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b4296586-a4ed-4846-8d05-a76df099b2ac/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-28T21:57:32.758+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Santa Da Vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c02898b-84c8-4c78-bfbf-f0814e123ef9', 'Encurralado Com a Herdeira Mimada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6580b614-be84-489f-be51-62cb7a00fbd1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-28T21:54:46.688+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Encurralado Com a Herdeira Mimada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f63d55d0-2b5e-4138-b1b7-491877616f75', 'Recordar O Que Foi Esquecido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/45e1e3aa-68a2-4ea5-b4a7-73da39a01c1c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-28T21:53:10.578+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Recordar O Que Foi Esquecido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bd4be685-7120-4d9f-95b5-3876ed39ea81', 'A Recompensa De Uma Boa Ação', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bac3097f-2b8f-4cc9-b7e5-bfc49c0c9b9f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-28T15:21:41.19+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Recompensa De Uma Boa Ação'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '87ebca2b-524b-4be7-b31c-2615fb005734', 'Herança e Vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b75b7326-31c2-471a-9b1e-6b06ef33b392/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T23:49:57.721+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herança e Vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '277158d0-4a6c-427d-abab-800a117a0d88', 'fingindo Ser Pobre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a399c0c4-c261-4b8d-92eb-db24769d97cb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T23:37:26.864+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'fingindo Ser Pobre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '97ade21d-436c-46c5-85a8-53c19474a6b2', 'Sai Da Minha Vida! Meu Primeiro amor acabou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c5784599-7129-4380-8c22-9a48d30f7f71/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T23:36:14.668+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sai Da Minha Vida! Meu Primeiro amor acabou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3380694a-7ab5-4ba0-a8f4-ee07ad51ac1f', 'Espera Inalcançável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/41fde794-eaf3-4d31-95c4-de19cd853112/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T23:14:05.435+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Espera Inalcançável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3b8d0ab0-4561-4220-b6f2-ce807c2e4496', 'Perdido No Teu Abismo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6693e60c-ea8e-491f-83ba-1a9683fddf5c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T23:13:07.4+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Perdido No Teu Abismo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bea2c058-52f4-4a37-b3da-adfc31ed8fe0', 'Lar Doce Lar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3a70c3c6-089a-43e4-ab4c-828be08d4963/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:53:56.578+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lar Doce Lar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '155f4926-dcdf-4916-84d2-53ba77694c0a', 'O Ramo Extra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4b843d89-53ff-4341-8584-57abb403ee1e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:52:09.617+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Ramo Extra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd9d37796-b3f1-47dd-ac2a-261fa98c45f5', 'Minha Segunda Chance: Voz De Vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7b4ea677-3156-4572-89ae-a3f4a87ca30f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:50:44.909+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Segunda Chance: Voz De Vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '21051700-a64c-4564-8e53-14e8337ee0ca', 'O CEO Infértil Tem Um Bebe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e2e3c8da-1afc-4f7d-80c7-fc8215389369/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:49:55.706+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CEO Infértil Tem Um Bebe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dfc81c55-e08d-47db-8f16-72c2b35bd651', 'A Herdeira e Seus Quatro Irmãos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/08e09f11-3384-4c09-855e-322f1f64ff00/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:49:07.826+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira e Seus Quatro Irmãos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7a248f49-e35f-49ca-be9e-0085da56256b', 'Do Contrato Ao Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/70a358ee-9bff-42ad-9b7a-c28632768c04/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:45:21.117+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Contrato Ao Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a275e1e3-bea6-4325-b02b-11a266ce5139', 'Sonho De Saudade Do Harém', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aa51e59b-b044-439f-9e7e-e7e2925596b4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:44:33.824+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sonho De Saudade Do Harém'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '22a7da8f-1ece-4700-8cc3-5a513672a9ea', 'Vida Nova Com a Minha Filha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/32b74749-0474-4f84-9b6a-1cd5eb742c19/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:38:24.266+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vida Nova Com a Minha Filha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '16950fb8-d078-4499-a260-c36f46580a67', 'Nova Vida Novo Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7cdc71df-9a7b-4b25-ad2a-c1826dc8ee90/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:23:37.954+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nova Vida Novo Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '63c40246-1597-46c7-a9b2-f74547b74452', 'A Pirólise De Um Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c6c9079c-d2f6-4e11-a64d-3f396fb2b620/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:22:17.574+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Pirólise De Um Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7e2005ad-cbae-4ccf-a1cc-6816871e97b9', 'Apenas ao Vento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dee95c74-3022-43d0-ace9-a7b819b94488/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-27T22:12:51.805+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apenas ao Vento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '305d4396-db0b-46de-b18e-6b2d47d500ee', 'Meu Filho do Sangue Dourado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/82f86036-28f2-47e3-a7ea-62427fa98bbd/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:11:31.309+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Filho do Sangue Dourado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '303d4006-7e86-4ec2-ab12-9f236388e66b', 'Sete Dias Para Esquecer Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ce4698b8-273e-4b44-88c1-465a283a58b7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T22:09:59.016+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sete Dias Para Esquecer Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b1fd06aa-11b0-4abd-bb30-bbd5808ec752', 'Fingindo Ser Pobre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b7567fab-5b8b-4945-815e-d646ba64e95b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-27T13:32:13.087+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fingindo Ser Pobre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d0461eb-c375-4cbd-9a31-a8e35baf5a45', 'A Herdeira Deslumbrante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/65dac8ef-0c51-4c21-bdc9-56658e91619a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T13:31:26.994+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Deslumbrante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7c4bac95-ce96-42c8-9ff8-1a947a38051b', 'Ele Veio Por Mim', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2e53acb7-a930-4c94-91ea-51833310bca3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T01:23:26.696+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ele Veio Por Mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fed65a48-9092-4175-93c6-6362d11cce87', 'O Último Eco do Dragão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b3aeb49d-1a61-4e41-8f00-faf8ca22a53a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T00:38:39.899+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Último Eco do Dragão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e7623550-92b0-49cb-abe0-b5bd494df050', 'Juntos Para Sempre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/452e4c14-caa9-48f4-81da-dc07af91a4e3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T00:37:51.8+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Juntos Para Sempre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '598d095d-ab8b-4362-9f81-245ec6d8f669', 'Laços Além Do Escritório', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f06e8aab-0cfb-440d-bfa8-cdd0dee71374/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-27T00:37:04.236+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Laços Além Do Escritório'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '99646f3e-a859-4b9f-b8d4-eb6c6ef2a2ec', 'Charlotte e Os 7 Gostosões', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4ff4945d-ff5b-4d9f-873b-8a7fc273dcb0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-26T00:07:10.493+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Charlotte e Os 7 Gostosões'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '596bb40d-365f-4543-87bd-62b83cf0d2c8', 'O Capitão Deslumbrante Em Casada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f4f60d10-d8f3-46a3-be20-11ec741b19be/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-26T00:06:04.627+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Capitão Deslumbrante Em Casada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c03f692d-cb0f-4c95-9ba3-acc9a6b21657', 'Um Beijo Uma Facada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/91b8dae1-c8b8-440e-9806-8c8c0ada0e3e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-26T00:03:43.312+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Beijo Uma Facada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f3e160e6-e387-4ae2-97fe-33dcbddd2cb5', 'Primavera Que Não Voltou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/09eb4dae-ed06-41f7-960d-0cf422bce845/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-26T00:02:20.724+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Primavera Que Não Voltou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0254f570-fd16-4f8f-b10e-3a5e41634a54', 'Casamento Blindado: Um Contrato De Natal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ff95dab8-1a18-49c5-8b64-67a63381c26e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-26T00:01:13.773+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Blindado: Um Contrato De Natal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e4c87ab9-db55-4761-90c2-bbe71608fa9a', 'Eu Beijei O Filho Do Meu Ex', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f7d6ecdf-6006-4b02-aace-b2a1330df78a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-25T23:57:54.613+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Beijei O Filho Do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5bd042e5-dbd7-469b-bb4c-3c1bd0d931ca', 'A Vingança Da Filha Libertada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7da870fa-e5fe-41b6-afbe-5bad81907531/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T23:35:10.658+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança Da Filha Libertada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8c75e35a-fe48-4c7c-916b-75ca67ed249a', 'Tons De Outono Esmeralda', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dbb886cb-04ae-4bd2-bf5c-731e9f6deda5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T23:34:11.206+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tons De Outono Esmeralda'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fb6a3815-190e-4960-ad3d-771f3aeb5212', 'A Noiva Predestinada Do Rei Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/abfb8a86-e6cf-4e9d-8d7e-349320d449ea/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-25T23:32:36.884+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Predestinada Do Rei Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cfca31f8-f7c3-471b-a9c4-9b6cd95fb270', 'Amando O Melhor Amigo Do Meu Irmão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6f28078d-cf24-4ec9-831e-8cf61c3a62b3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T23:31:16.962+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amando O Melhor Amigo Do Meu Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5477fe89-b66c-4085-94df-2fd4a26050f7', 'Esposa Troféu a Bilionária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/474be8c9-3885-412d-b9a7-f4611d9bccda/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T21:03:52.133+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa Troféu a Bilionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '62cd08bf-5913-4fc6-8288-077889faaa74', 'Meu Amor Virou a Sua Ruína', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b634a93c-9502-440c-b5ef-d225eaf6e626/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-25T20:30:56.73+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Amor Virou a Sua Ruína'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f03f6bc7-cbb0-4f22-a027-594f126113a1', 'Marido Em Casa? Melhor Supremo Imortal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d1750c40-21e3-4e55-a40b-56014697336f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-25T20:28:40.858+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Marido Em Casa? Melhor Supremo Imortal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '095fef16-ead6-45cb-b641-cf6035b4e861', 'Reality show Encenado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd1cf9fa-e9b3-4305-ab42-874d5a4ce412/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T20:27:31.042+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reality show Encenado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '395dba2e-8d1e-4665-9f8d-d1c0bdd8722f', 'Filho Do Alfa Segredo Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bea9377f-c1a6-45d9-840b-31b0751ceea2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-25T20:26:26.827+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Filho Do Alfa Segredo Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7cb0b8fe-9490-4bae-9b4e-08c9f824e1f6', 'Amor nos Uniu De Novo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cb4aefa7-5b42-4996-addb-7264fc7b2a0d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T04:12:05.527+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor nos Uniu De Novo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5f80d546-e80a-4205-9ace-77e67d85fd3e', 'Amar Você De Novo. Meu Irmao Adotivo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/65338bdc-f153-4b31-af12-1255fa2970f1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T04:10:43.446+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amar Você De Novo. Meu Irmao Adotivo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1f6d0cbc-fc4f-4060-9ce0-f343b4f167ef', 'Noiva Virgem Do Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a840872d-721e-4662-9274-f99e7bddd64c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-10-25T04:09:46.467+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Virgem Do Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd034b555-79ce-470f-8e61-dd60c97b875d', 'O Segredo Do Domínio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/389c0e5d-9d47-4b18-a994-4fa2b8ba3be8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T04:08:47.616+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Segredo Do Domínio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f8dd9cbc-db82-498c-a82d-c7b86d871e6c', 'Chefe Legista Largou Tudo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/43c85ede-70a9-4603-9de7-21c35b1ba1a9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-25T04:05:56.669+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chefe Legista Largou Tudo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd76b6dc9-6703-4170-ba5c-dcafdda23f0d', 'Ele Veio até mim', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cfba435c-fd5c-4747-9c85-ec77b0913897/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T04:03:37.858+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ele Veio até mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74afee04-2a8d-49ec-88ab-5edaa61a7dfa', 'Além do Rio o Fim De Nós', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/84af2b9f-96b5-4ea1-868c-f5b5f643c389/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T04:02:37.571+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Além do Rio o Fim De Nós'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '62d0e370-2bbf-4f30-8628-938a36025efa', 'Missão: Amar O Inimigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/430cd947-db8e-4230-96fd-af4ed5f05339/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T04:00:35.209+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Missão: Amar O Inimigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9582605e-1b38-4c99-adcc-83cbeb4b1c17', 'Meu Marido Meu Chefe Secreto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d14cf3a0-742f-449f-920e-da2dca342908/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-25T03:59:19.994+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Meu Chefe Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '380f6932-c061-47b0-9943-281114243931', 'A Corda Que Mudou O Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b90885f0-53c0-45db-9766-1f7ceaa4f2a4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T03:57:37.565+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Corda Que Mudou O Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f427e046-81e9-4d26-9623-39a01e3b9fed', 'Coração Aprisionado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e9a2dfd1-ff7d-4e98-bd18-60a52c0c065b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T03:55:31.213+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Aprisionado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e935cb03-1a89-4007-ab90-b1035464000e', 'Meu Amor Meu Orgulho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/87304355-cd46-47d0-860d-a4da4ee26d8d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-25T03:54:21.419+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Amor Meu Orgulho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'af91b98f-f065-4504-a590-65a3bc2aacd7', 'Fogo Entre nós', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2d693178-e2de-4f3f-89f7-37b16cc69be5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-24T02:03:26.152+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fogo Entre nós'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b234827d-7fa9-47fd-8bcc-91943d593b7c', 'Do Portão Ao Coração: Meu Papai é Um Abre Olhos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7f003452-c0a9-4cc9-b5a1-2418ab6739ac/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-23T22:45:01.721+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Portão Ao Coração: Meu Papai é Um Abre Olhos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9bcfa792-b650-40c9-b1ce-e8af2f8da5c9', 'A Noiva Fuja do CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a85e0f1a-ea76-46ce-871b-8ac2dde66ecb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-23T22:39:46.824+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Fuja do CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c53de10d-898e-4953-962c-2bad291331dd', 'Amor Moderno Do Conde Vampiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a82e6a83-f122-4724-8871-803ec6977f88/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''vampiro'']', '2025-10-23T22:24:46.453+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Moderno Do Conde Vampiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b97e0911-ab1c-4934-8999-10dbc5f5a7b7', 'Alice Unchained', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/376f63ce-a65d-43ef-9085-a7e349217e96/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-23T22:23:38.774+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Alice Unchained'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ca8d3d4-9fc8-4720-9c8d-e3cb24c7a2c6', 'A Noiva Implacável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/519959f6-0798-4daf-8b12-c61406a45559/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-23T22:22:53.786+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Implacável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '35c6154e-b57f-4bde-9bea-9af0a9d5bf58', 'Cair No Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6db7bf96-b0b6-40ed-b718-56735820b538/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-23T22:04:52.745+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cair No Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '624b99d8-b08b-4aab-b2c7-32b935279dd3', 'O Mestre Do Tabuleiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ca563a51-14f5-403b-a1d0-4967b05b17a3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-23T22:04:06.642+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Mestre Do Tabuleiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2dcf58a3-510d-4e49-9ea6-fdd99984a877', 'Essa Menina Solta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/80056ca3-1c3a-4300-af12-369b7f164c47/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-23T21:36:34.462+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Essa Menina Solta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd114db0f-45b3-4943-8602-ea04131bb5d2', 'A Princesa e o Pai Barão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/19c18b42-e947-44af-9848-8fbf3682878f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-23T21:32:54.126+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa e o Pai Barão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4680d039-d4ba-4564-aa9a-39865313cf4b', 'A Lenda Da Lua Sangrenta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/95f5e549-2550-45a1-ae67-f2a203d8878d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-23T21:31:21.857+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Lenda Da Lua Sangrenta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f19bf953-d182-4e4f-b17b-80a4e4b2aabd', 'O Último Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9f6c82f8-e779-422f-97a3-25b29f66fb90/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-23T21:30:21.555+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Último Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '490260c3-8494-405e-acaa-cc82c10d4043', 'Meu Rei Alfa De Programa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6a033b71-021d-4aac-a750-b70c2a70faab/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-23T20:46:16.627+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Rei Alfa De Programa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c25bcb70-11fd-41b8-84c5-e4d6458b31a4', 'O Olhar De Luz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a5c22778-5321-421c-a7c2-3899aa29033e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-23T20:44:36.44+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Olhar De Luz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd95ffcd2-f666-48ab-baca-09dafefd967b', 'A Irmã Voltou Ajoelhem Se Todos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4e38b5d1-2e88-4bc8-a7ca-7e9f4834d787/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-23T04:26:24.047+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Irmã Voltou Ajoelhem Se Todos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9c6be373-004c-4ca5-9d07-d38e1171f005', 'O Bilionário e a Amada Grávida Desaparecida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/55ca8468-c603-45ce-91c4-dc80905bbc56/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-23T04:25:31.67+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Bilionário e a Amada Grávida Desaparecida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9758d38e-ffa2-40df-b5db-10bf6b74f8d5', 'Onde Termina o Contrato Começa O Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f41186a9-c29b-4773-bd27-904778bf22a1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T22:38:08.959+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Onde Termina o Contrato Começa O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd2033467-9798-455c-8e4e-d5d82792db5e', 'O Retorno Da Garota Banida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5119bf73-1857-4abb-8d10-249509457de1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T22:37:16.028+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Da Garota Banida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '510a5197-0934-480a-8c39-ce53ee946273', 'Para Ficar Ao Meu Lado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de83e795-d7ed-4c8f-9045-6fe9d8ea719d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T22:36:23.169+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Para Ficar Ao Meu Lado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '72d70563-448e-46a2-807c-b35758d451db', 'Você Era Meu Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/44466e2d-045d-4691-ab20-38b6678ad877/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T22:35:20.544+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Você Era Meu Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '609b906e-a12a-43de-a93b-427552f5eb68', 'As Regras Da  Cowgirl Agora', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/467613dc-609c-466b-927e-aa78fd739668/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-22T04:13:46.579+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'As Regras Da  Cowgirl Agora'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fce38cb4-3bbe-4551-8ad5-516d3038c6d1', 'Flor Proibida Minha Inimiga Meu Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b5a9e70e-56f5-4931-971c-0a6cdbbe51a0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T04:11:11.026+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Flor Proibida Minha Inimiga Meu Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba8454b7-3f12-4693-a970-8cabaaa88a5f', 'Amor Por Promessa Acidental', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4eae4da3-d3bb-4616-ba4a-cddc1a7aaff0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-22T04:07:58.846+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Por Promessa Acidental'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6ac4ec60-5286-45bb-9c96-2069fddfb68c', 'Jogo Do Desejo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cf523549-2a41-4f70-8963-8badb509a7d9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-22T04:05:56.38+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jogo Do Desejo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0ff9ac27-dd44-4601-946f-c0286260dc09', 'Grávida do Meu Inimigo Mafioso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e766c324-02aa-40fc-b227-9776991bee49/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T04:05:11.51+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida do Meu Inimigo Mafioso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'edf26c9a-52d5-4e35-971f-f3b8775d9ac7', 'O Desejo Oculto do CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a8ba1aea-cbae-417c-9c0e-84e3748582f8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T04:04:05.292+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Desejo Oculto do CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2b3bc46e-6e42-4815-a74e-fe07be68947a', 'A Noiva Fugitiva Do Chefe Da Máfia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/45ea768c-3746-40e7-b860-3ce9b7b105fa/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-22T04:02:07.745+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Fugitiva Do Chefe Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '35b26735-c254-4176-af04-96d6ddf07b4b', 'Casada Com Um Estranho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e5df40f0-00ed-4945-8934-e62a41bc6e20/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T03:37:55.051+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casada Com Um Estranho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd7b2dc72-f17f-44b9-94b9-624dfbe4bdd8', 'O Amor Silencioso Perdurável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6af36c43-372b-457c-b9bb-a66fd21a082f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-22T00:18:28.634+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Silencioso Perdurável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c483e10c-a984-4dbf-a194-24c0b65e31be', 'Eles Me Ouvem Mas Eu Venci', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1327a4e2-efdd-46de-b4f3-723f29e44894/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T00:17:29.884+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eles Me Ouvem Mas Eu Venci'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4dc372dc-2d11-48f7-9979-070b2a2d5a6a', 'Vira Esse Maldito Ônibus', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/21389e46-17ba-48d1-9fd0-efeb15844a03/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T00:16:02.601+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vira Esse Maldito Ônibus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2219054d-e9a6-4919-a562-045b21834c31', 'Verdades Ocultas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0cf1fdbd-defc-48cb-8889-f6b58768a95c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T00:15:14.883+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Verdades Ocultas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd109ad5c-1d95-4512-a297-06b833b7c60d', 'Inocente Amante Da Máfia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/95bc802c-004d-4300-ad68-8478ce983a3c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-22T00:14:08.128+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Inocente Amante Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '34415fb5-080c-4f3b-a3ee-da573a3894ce', 'Amor Além Do Tempo e Do Espaço', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/028866f2-c333-4172-a948-1e8287fa48d7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-22T00:13:06.482+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Além Do Tempo e Do Espaço'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7cff5f41-75ff-47f6-83e8-fb7c15414127', 'Camponês e Serpentes: A Fortuna Vira As Costas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5a7b1235-a6ac-407a-9999-1c31ec1d223b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-22T00:12:01.536+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Camponês e Serpentes: A Fortuna Vira As Costas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'be5b2498-8d45-4436-8df7-eccd98e3c875', 'Quando Faltam 15 dias De Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6f51296b-be1a-4471-9a3c-c9e512304cee/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-22T00:10:49.978+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando Faltam 15 dias De Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1678d61b-213a-4567-8f8f-0ee53fb21287', 'A Esposa Poderosa Renascida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c6a398c2-20e2-4ae4-9a16-c618f88631ee/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-22T00:09:54.291+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Poderosa Renascida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b0b47f87-7c0e-40b9-917a-76c4ba15a088', 'O Pix Que Mudou Minha Vida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2e64ec3f-ea8e-43b5-8cd7-691a6550a8d8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-21T06:16:41.956+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Pix Que Mudou Minha Vida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7bc97600-e805-443b-86f4-be99d304f5e8', 'O Retorno Da Herdeira Gênio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/03ea70b8-7819-496d-833e-c3155e70d2b7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-21T00:36:02.093+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Da Herdeira Gênio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '799efcea-5b62-470e-be69-c51dc76a92fc', 'Eu Era Hetero Até O Beijo Dele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1895f356-31b1-4e08-9af0-a1f6026e7b50/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''blgl'']', '2025-10-21T00:29:57.544+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Era Hetero Até O Beijo Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b18e467b-a87f-4f4e-9ccb-d5c1abcd5cb1', 'Quando O Amor Apaga Memoria', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c97986b6-558d-4689-97d9-251bc6646ff7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-21T00:23:18.853+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando O Amor Apaga Memoria'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fd2d132f-2a16-4a13-8a7c-1341db2d4b36', 'Casamento Secreto Com a Doce Esposa Da Sorte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1bc31fec-43e3-4cb0-a4d9-5c011eb5aae3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-21T00:22:34.743+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Secreto Com a Doce Esposa Da Sorte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd0e646f8-758d-4245-906f-6fa2bbea703e', 'O Fim Da Dona De Casa Maldita', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6e3e0278-db68-4240-ae24-d3584f5f5227/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-21T00:21:19.824+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Fim Da Dona De Casa Maldita'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f45209c0-0dac-4efd-b83c-6d24aad89604', 'Paz No Reino Caos No Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b999b03e-2cce-4322-bd93-f74852c455c0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-21T00:20:31.204+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Paz No Reino Caos No Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3b254595-4938-41fb-8f8f-0641c14fbf8a', 'Sou a Mãe Dela Ajoelhe Se', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4fd35c30-a005-43b1-89e4-3e1c18f7129d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-21T00:09:29.422+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sou a Mãe Dela Ajoelhe Se'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '57905604-e11a-4d25-aef1-606e641d54f6', 'O Último Testemunho Da Irmã', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5f6a2dfb-d963-4b30-9302-0c33cdd2975d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-21T00:05:54.24+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Último Testemunho Da Irmã'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'de362d56-09bf-4199-9950-d9a9e65e09e4', 'O Jogo Do Carma', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0a48e008-ead7-4365-b13d-6830589147c1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-21T00:04:53.922+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Jogo Do Carma'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '53327bf6-2ff0-4a6c-a6d6-521d838debbb', 'Casamento Ilusório: O Preço Do Segredo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8c44d74e-14c9-45e3-a121-a7e4839de626/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-21T00:03:40.751+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Ilusório: O Preço Do Segredo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a244f165-c60e-474e-9c7a-5f874d325d36', 'Nascido Para Mestre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d9e04bfd-ce56-43f6-a7c4-4f810927c33a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-21T00:02:36.83+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nascido Para Mestre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dee0f7e8-7adb-4b4a-8c8a-32dad39958b0', 'Agradecendo Por Seu Engano Juvenil', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/181484b1-f387-4e84-a15d-881f40da6862/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-21T00:01:24.633+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Agradecendo Por Seu Engano Juvenil'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '53bfd3aa-251b-4053-9a98-5efcba2c30bc', 'Ele Sempre Me Encontra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/076ffb4b-74b8-47db-bf4d-b6d49d1e2e5f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-20T23:04:22.313+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ele Sempre Me Encontra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3a363a1b-7061-41ea-a59d-6b758b627828', 'Coração Secreto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de9a7dd7-a2fd-443b-9526-cab70b3331a6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-20T23:03:39.767+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1e0b0d23-cc24-41c7-9e63-649a818f6ef2', 'Quando a Promessa Se Rasga', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/70fa4980-6485-4e9a-87b0-f9514b9a6ae6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-20T23:02:56.075+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando a Promessa Se Rasga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '59e82471-13b8-4fa1-bc57-f3a8940d79d5', 'Rainha Da Quadra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f5bfb981-848d-40d8-a9f9-54543dc4e3da/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-20T23:02:06.758+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rainha Da Quadra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3b7e7a1e-6fc0-43f2-8f7a-919517cbceae', 'Finalmente Te Encontrei Grávida Do Nosso Bebe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2520f543-4dae-4ab6-9ceb-f3279ba9d0b1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-10-20T22:43:30.022+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Finalmente Te Encontrei Grávida Do Nosso Bebe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0def4975-839d-48bc-9935-a26fb8190be0', 'A Conspiração Da Coroa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4e34b79e-8e95-4f19-b3e0-d6fe477ab567/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-20T22:42:24.447+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Conspiração Da Coroa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '88df743b-5357-4ab7-9ab4-fd64ae743372', 'Eu Sou Maria Sangrenta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/235ebb25-afac-4a34-976b-3fe57ffb52d9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-20T15:10:16.279+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Sou Maria Sangrenta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8a12ae59-adb9-4b92-9de7-9571d6bc3125', 'Ódio Sem Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fafdbb71-e425-41f7-a868-df61b834d2a7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-20T15:08:44.595+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ódio Sem Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '61cf0fec-bec5-4549-bdec-01e466228648', 'Ninguém Como O Que Foi', NULL, 'ATENÇÃO: Esse Drama é De Apenas  26 mim, não tem continuação', 'https://vz-c2303ad7-0af.b-cdn.net/d15420f8-3fd7-4c0a-903c-9cd7544437bd/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-20T14:58:52.506+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ninguém Como O Que Foi'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '477b142d-de4b-4fa0-8d6a-c3ca3832abcd', 'O Amor Que Me Condenou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/32f3299e-f08c-47c8-9889-b4d22b0faef6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-20T14:56:40.872+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Que Me Condenou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b043c800-f443-4d7d-9443-c3bfb4cd649c', 'Vício Proibido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/40c00d8b-9aa0-44fe-8aeb-f14d5e52e4d4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-20T14:53:37.585+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vício Proibido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '394b6974-4bb2-4ec7-bf2d-3b84b9918dc6', 'Quando o Amor Surge Da Dor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f07bd6fd-bb02-42ac-8441-0139af534480/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-20T14:52:06.886+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando o Amor Surge Da Dor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b1e51ce0-3894-4eba-adb8-b59b34781dc3', 'Quando O Amor Apaga Memoria', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f02e8231-a57d-425a-9de2-fabbcf9a8065/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-20T13:49:45.972+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando O Amor Apaga Memoria'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2f3c343d-3b6c-44be-a865-791d325c7cf0', 'O Despertar Da Eliza', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/51adfbfa-4ade-49e8-9491-5f7e6c7d7da5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-20T13:48:33.234+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Despertar Da Eliza'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7f2b9b75-647f-4bd0-8073-0ab9ca973279', 'Rosas Do Abismo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5d86705f-8a63-499a-a846-48e3870d902d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-20T13:47:45.501+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rosas Do Abismo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0575925e-f792-42be-9372-7579272e05fa', 'Como Fiz O Alfa Ser Meu', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4bf83b86-30ba-4528-87ab-8e2dd9f7f675/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''blgl'', ''homem-lobo'']', '2025-10-20T13:45:07.8+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Fiz O Alfa Ser Meu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ea61f4a8-aa46-4963-8e7a-4b6fccaea17d', 'O Servente Supremo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e33fa5d8-8bc0-42ff-b52f-e65f9bada056/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-19T04:24:41.743+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Servente Supremo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '67942002-2cba-4d99-a7a7-3dffc82b2dad', 'Um Amor Que Brilha Mais Que o Sol', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9259242e-381c-428a-94c8-b39e2d96d7f2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-18T19:56:46.305+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Amor Que Brilha Mais Que o Sol'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd88f43ac-c059-427f-84fa-92a7ee0f2375', 'Sobrenome Meu Glória Minha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/32d83566-28f0-4145-85ec-bb39d8fc9878/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-18T19:55:56.607+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sobrenome Meu Glória Minha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a3b23755-3718-4e6a-8440-558a938e75c0', 'Criada Exclusiva De Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/73043849-200b-4609-93f0-5baaf3524534/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-18T19:54:52.989+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Criada Exclusiva De Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f5caa2fb-3cf1-4a41-9214-7ef155c73b88', 'A Vida Dupla De Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4a5be4e1-a72e-441d-be77-c65dbc743ccd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-18T19:53:05.91+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vida Dupla De Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9a0240cb-f663-4dbe-94a8-b4aa218b304d', 'Domando Meus Agressores', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/799d257d-8bc3-47fe-9b0a-2a3ef0a96ccf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-18T19:27:57.978+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Domando Meus Agressores'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8be31430-d593-4f6e-b8d6-659289ed2b80', 'A Faxineira Milionária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ec520aca-9bf9-4911-bca8-675b21053a15/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-18T01:05:16.028+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Faxineira Milionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1c2b9311-d101-4948-9e2d-7915b7326256', 'Mais Uma Amostra do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/92ca9aa3-2c83-4008-9403-699076179d3c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-18T01:04:14.01+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mais Uma Amostra do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '37de02d8-cb9f-4e5b-930b-5f78d8775b68', 'O Retorno do Rei Mendigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7f741a0b-87aa-4bf0-8dd2-890e352f6529/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-18T00:59:03.043+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno do Rei Mendigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9a1b3c25-c022-404f-8af0-fd89346bbab3', 'Acordei Casado Com a Minha Paixão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2337c729-4d60-4f1f-a631-dc69edceef0b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-18T00:44:55.596+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Acordei Casado Com a Minha Paixão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '53be241e-3248-4211-8075-ea10c5dbc1dd', 'Queimei 99 Cartas E Parti', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/adc93dce-7d3f-44e9-8409-6c490d145ec9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-18T00:43:49.113+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Queimei 99 Cartas E Parti'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5f5349c6-ac43-4b98-9f53-b3770174945a', 'Alfa Companheiro Desencadeado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1ad5cfa9-2509-47b7-9c95-5a5c42555b1b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-18T00:14:52.044+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Alfa Companheiro Desencadeado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'deaff796-2b96-491d-915d-1ab7140b3a3d', 'Te Amando Da Lateral Do Futebol', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c4c9ac90-1956-40b2-b2b9-52bd104a890f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''blgl'']', '2025-10-18T00:13:55.763+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Te Amando Da Lateral Do Futebol'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74e4ba52-daf5-4ec0-b13d-4427c35090db', 'Obcecado Em Ser Sua presa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5b87bc1b-5639-49f2-a2a8-576226eaaa14/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2025-10-18T00:13:12.583+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Obcecado Em Ser Sua presa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '835e6199-5a14-4dbf-a3e6-895fc8ac2f5c', 'Domando O Senhorio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2f47368d-799a-44c2-b2b0-8e75fc95a38e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-18T00:12:18.931+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Domando O Senhorio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c243bc78-e770-4d9f-a477-7543468f23b2', 'Te Achei Minha Luz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1448ffb9-be27-4830-8ef9-7bbf7d22318c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-18T00:11:29.479+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Te Achei Minha Luz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9c83d9c5-a5c2-48b6-893c-f6154b4b73bb', 'A Espera Do Vento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a245c7ae-45b7-4fff-b9c9-81b17505f995/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-18T00:09:25.609+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Espera Do Vento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9caba27c-c694-492c-94ee-199a2b5b7d29', 'Masmorra Do Êxtase', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/03fd0b15-2e96-4f38-8f5c-0b42cba1ae6b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-18T00:07:06.771+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Masmorra Do Êxtase'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '27433f04-7de1-4556-9c1e-74960f6679ca', 'Amante Ladrão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4a171ddd-ba11-475e-9775-6cd4e9248153/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-17T03:56:35.754+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amante Ladrão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b264a50e-ac55-4c22-adbe-d44b92ec5564', 'Nossa Culpa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a9673845-d80b-4c6f-867d-860852cc6b04/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T03:55:47.187+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nossa Culpa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd7caae2f-782b-45a5-899f-43b05aec24dd', 'Eu Te Amo Mais Do Que A Vida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/75e27fbb-4546-46b0-acee-d006c0f5969a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-17T02:00:29.284+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Te Amo Mais Do Que A Vida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6b32be90-69b6-4b42-b526-00d20158d318', 'Desejo Proibido Do Intocável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/87715053-ffec-4e4a-9583-adc1ebdd1053/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-17T01:59:51.049+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejo Proibido Do Intocável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '27d96fb9-cd31-45d5-9e48-4b4ff67c856e', 'Aroma Da Minha Luna Predestinada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dcbae43b-0edd-42aa-85c7-0b13e7dc2ff1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-10-17T01:56:10.078+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Aroma Da Minha Luna Predestinada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '654aaf23-ad5c-46a6-90ae-ff112eb43dc9', 'Acordei Casada Com a Minha Paixão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/668a7a2d-20f5-4667-949e-9cb90d49415a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T01:55:07.464+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Acordei Casada Com a Minha Paixão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '30cf3e7d-bba7-466d-b820-727e24caee95', 'As Regras Cowgirl Agora', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/055b2912-b7f3-4b10-ac17-ce5f9bf6f07a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T01:54:18.078+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'As Regras Cowgirl Agora'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bb9a4e71-3ffe-4705-a165-489dcadb6108', 'Irmãzinha Contra Ataca', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2bfe5b59-0ceb-4044-b5dd-a5e9fbd47b87/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T01:50:59.696+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Irmãzinha Contra Ataca'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0f65970f-c4e5-4364-a39d-208d7daab657', 'Nosso Último Desejo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b566b706-bd69-406b-99be-40fa48173350/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-17T01:50:16.58+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nosso Último Desejo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '532e9784-6ba4-4c5a-920d-7deccb725602', 'Deixar Ir é O Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fc2fdb3e-6962-4abc-9e9e-d245df6db08a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T01:49:03.079+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Deixar Ir é O Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '49615e38-b98c-4822-8889-59da79640ec7', 'Engravidei Do Meu Ex Chefe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3c60a5e5-2dca-4552-a067-7f7a83a9e137/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-17T01:24:43.853+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Engravidei Do Meu Ex Chefe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8f9a6d20-95c2-433f-beb5-0a21c9a0fc55', 'Doce mordida Do Rei Zumbi', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5bb80613-a4fd-4c47-92f2-a7077f6dce0a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-17T01:24:02.667+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doce mordida Do Rei Zumbi'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b762d5e5-adfa-40b9-9614-e238243a7c6f', 'Além Do Trabalho O Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/44fcbdc2-8eb9-433d-8a1f-275746a96fbd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T01:10:51.566+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Além Do Trabalho O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '791b4113-ea39-4b5d-b609-5efd8f5fa4d6', 'Perseguindo Sua Esposa Alfa Rejeitada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7d1d7096-b134-44ab-8b53-37786b23e4df/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-17T00:57:35.793+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Perseguindo Sua Esposa Alfa Rejeitada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9c5ede75-15e1-4f14-be4c-33bab74053c1', 'O Ataque Do Tubarão gigante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/37e547b9-bc40-4753-a873-7f4741903961/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-17T00:56:45.189+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Ataque Do Tubarão gigante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '71208ac8-82b2-4c37-b5eb-a7dd46e8125e', 'Noiva Trocada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/31122aab-aaac-4a5b-9585-c019f2866c00/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T00:34:55.903+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Trocada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bbcf01d8-0b6a-4ab9-adb6-ceee64cfba08', 'Sinto Tanta Falta De Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2903ccfa-e0ab-4070-a0a4-c68886ffcaa9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T00:34:13.181+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sinto Tanta Falta De Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b1194acc-dddc-473a-96b9-5c06dc3c34d8', 'Quem Vai Envelhecer Ao Seu Lado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1c3fbdad-aa5f-4513-b0e1-ee88effa6f9d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T00:33:25.313+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quem Vai Envelhecer Ao Seu Lado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3dbd78fd-0c1e-48fa-b385-d826b41bf6b0', 'Renascida Para Reinar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ba5acb48-cf5e-4de2-a6a6-2733a8b771e7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T00:32:31.265+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascida Para Reinar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba83199d-376c-40ce-a14d-e430d6694d7d', 'Quando A Esposa Não Perdoa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/44bd3084-aff7-4734-9013-74924fdce09b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-17T00:31:14.412+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando A Esposa Não Perdoa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '936c261e-d3e4-4790-9fc7-74a7af9dd77f', 'Reivindicada Pelo Meu Ex Irmão Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a795b5fd-0fb6-43ed-9244-c123051efd93/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-17T00:30:09.51+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reivindicada Pelo Meu Ex Irmão Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c0b68f23-0ef1-424b-b206-1cba32a5e74b', 'Despedida Após 99 Vezes Perdão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d8f81a4a-055a-472d-8acf-7e8b59b7ef2e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:49:31.979+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Despedida Após 99 Vezes Perdão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '77874b89-27d9-47fa-bff6-bc30346002f4', 'O Herdeiro Perdido Nas Vésperas De Retomar Tudo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/34753c56-13f8-4de5-a26e-5b9f297cdb9a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:47:37.755+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Herdeiro Perdido Nas Vésperas De Retomar Tudo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3fb73e73-7cc0-423b-b1da-21edacc4e568', 'De Volta Ao Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a5ea5347-d033-4200-9338-3580c9bacf6d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-16T00:41:26.251+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Volta Ao Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '83b858c9-a4f5-4699-a206-664fce5a513e', 'Gatilheiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f5ed3355-e390-4dbc-8276-4281db90eb34/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-16T00:39:05.297+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Gatilheiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7bfbe36a-607f-486b-84e7-27a944e76a15', 'Após o Divercio a Dona De Casa Virou CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/87c8eaca-01c2-4dab-923e-010d6a8f8915/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:38:07.275+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Após o Divercio a Dona De Casa Virou CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fe59735b-ab97-4365-9d60-cc2033c8a62d', 'Electra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6834b1b7-24fa-4a4e-b447-1ad6adc67d38/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:34:35.105+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Electra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '42514fff-ab0c-4463-ab1c-f68af0d1f390', 'O Guardião De 5 Anos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e9732689-4ea1-48a2-818d-ca4e6f5fd9eb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-16T00:31:34.251+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Guardião De 5 Anos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5501336a-59dd-4628-b994-4b8681f0d91f', 'Alfas Ao Serviços Da Rainha do Lobo Branco', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/14ba7bfb-9816-46a5-9901-b5594d4f2288/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-10-16T00:30:30.766+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Alfas Ao Serviços Da Rainha do Lobo Branco'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '12320fb1-f02e-4001-a145-7736d2e9ad87', 'O Galã Apático Se Apaixonou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8b40854b-aaa8-4da4-acf9-5ef393fdb51c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:28:49.75+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Galã Apático Se Apaixonou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d8e2d23-03a8-4cc3-8b3d-d37e79ab44c5', 'Goleada  Pelo Rival Do Irmão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f66cbb82-4de1-481e-998e-71b6733095e1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:27:35.179+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Goleada  Pelo Rival Do Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fe5df3bb-0ad9-4a77-9c97-4994714c4ac5', 'De Zeladora a Senhora Bilionária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/88c62b99-4cbf-48a8-89ed-77d76196d25f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-16T00:25:42.141+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Zeladora a Senhora Bilionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '97367b67-b592-4620-add2-b9955d993369', 'Superando Meu Guarda Costas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/45460a3a-ed89-49a3-b1d8-b6f6f59cde7e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:24:27.284+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Superando Meu Guarda Costas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b0e6efe6-2eaf-4524-8c07-19aea9bb23b1', 'Bem Vinda a Sua nova Vida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/52b9a01a-2e97-4bbb-9026-1ebded05879b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-16T00:23:40.759+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Bem Vinda a Sua nova Vida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0497de6a-ef9a-4b4d-a5d1-99a357bc2084', 'Gelo e Fogo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a454ffb5-5884-40b2-ad41-24920e2093d8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-16T00:21:58.54+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Gelo e Fogo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '43ed27e1-6ac2-436b-99d8-24579e3f9a33', 'Papai Malvado Você Tá Frito', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b2f4619d-0321-4857-b569-f83f6f98c9ec/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:20:57.316+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Papai Malvado Você Tá Frito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '83e4c032-d18a-4591-9e55-5b9934b74d47', 'Meu Último Testamento De Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/94d82ea2-42b0-4c1d-ad47-7e2c34e9ac45/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-16T00:16:59.946+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Último Testamento De Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '314186ef-8446-48b1-9e4c-1c86b6a61d88', 'Sequestro Nupcial Armadilha Do Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7d61ddaa-a575-4b2b-96ca-ba6383c7b125/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-16T00:16:08.042+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sequestro Nupcial Armadilha Do Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0702179f-2373-4a57-a46d-7e8fb844ea45', 'Pelo Sangue e Traição Eu Reergo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0ac2e789-2aaf-4b0b-a55d-bfe0516e2f78/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:14:53.88+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pelo Sangue e Traição Eu Reergo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3a818c55-1856-4c22-9ef8-ae02701d930a', 'Quando a Família Se Quebra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/70536b87-f3a5-4388-933e-6dff08d12c07/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-16T00:11:00.491+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando a Família Se Quebra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '32f9f91b-a0e7-4536-ab6e-05e996e5490a', 'Rebelião Dos Mortais Contra Os Imortais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/88570798-d310-4b1c-83c8-43bf098c8e80/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-14T23:45:00.937+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rebelião Dos Mortais Contra Os Imortais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e332c6f6-76e1-4f73-b828-510df74d70dc', 'Esposa Feia Do Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a416c1b2-4c75-4642-815a-ede54790e878/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-14T23:43:42.068+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa Feia Do Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '587e2c34-d0ab-4b29-8c4b-9a77ceb20636', 'Meu Protetor Meu Pecado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/55460bd7-1ef5-4ca7-93f7-2c0e6f3dc50d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-14T23:42:36.319+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Protetor Meu Pecado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b9b5af57-ca61-468c-8199-1b807e8f6684', 'Garota Do Interior Vs Dono Do Crime', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0fffd09b-9c12-44b4-a31c-4d6ad59093df/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-14T23:41:51.575+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Garota Do Interior Vs Dono Do Crime'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd0abd33e-0020-4e7f-8546-09cd12c64214', 'A Fera Da Máfia Me Ganhou Com Uma Aposta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/02be7ab4-5086-48d7-8897-a21ff5ffe782/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-14T23:40:54.855+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Fera Da Máfia Me Ganhou Com Uma Aposta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fd856690-2f44-44c5-8979-d37e8b647895', 'A Esposa Injustiçada Do CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6b7255bd-a608-4a68-8ec7-6d1f10b8a5d8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-14T23:39:53.41+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Injustiçada Do CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cf986e69-1aca-4537-9e3e-964441a6eccf', 'Amada Pelo Meu doce Patrão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6e3c3720-792b-4320-a483-4352c1fbe44b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-14T23:38:59.692+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amada Pelo Meu doce Patrão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd5264174-d574-4961-a47b-f20417b998a9', 'Cuidado Eu Sou a Chefona', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/df4dabaa-243f-40c9-9b49-60b8a7c32a38/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-14T23:38:04.474+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cuidado Eu Sou a Chefona'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '789d4f01-f42a-4878-b381-461c3afc68c5', 'O Ouvinte Inevitável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ba11b74a-8a10-414b-8d06-adda2110c0a4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-14T22:37:11.928+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Ouvinte Inevitável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cc4c235b-631c-49fd-b293-783a9b8974e0', 'Casamento Secreto Com a Doce Esposa Da Sorte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/98b1bb59-3b56-4ec5-931b-7267616326d2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-14T22:27:37.419+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Secreto Com a Doce Esposa Da Sorte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '94c11bcf-d7d4-40bc-91d4-f3c4d63187d4', 'Renascer a Princesa Retorna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1e30b4f1-295c-4579-906d-ad8c450c3f9b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-13T22:41:29.965+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascer a Princesa Retorna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '10539dd0-f74d-485a-95e6-b28c18acef19', 'O Pão Vence o Ouro Cai', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e27ac1a4-b512-472f-b870-793b452b3231/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-13T22:40:23.02+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Pão Vence o Ouro Cai'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5c6d6a7c-47b7-4ae3-8871-9fbf07282570', 'Submetendo Ao Pai Da Minha Melhor Amiga', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2a12db71-cf88-456c-ae17-8078d1364e20/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-13T22:39:38.522+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Submetendo Ao Pai Da Minha Melhor Amiga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '52fb397b-fd61-428a-8f86-6f5326a8dfb8', 'Perigo Profissional', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/06f33ec3-7527-4c50-8e30-c627e5bafe7b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-13T22:15:51.487+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Perigo Profissional'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a2313ebb-5532-4c95-8128-8fa8adf6e6ff', 'Amor Desbotado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0849e4de-c61b-4096-945d-7d8117519b41/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-13T22:14:54.781+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Desbotado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '83b75415-cc42-46a4-931b-660bf228ea69', 'Das Cinzas Do Passado eu Escolhi Minha Musa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/04606f92-4bc7-46c7-9881-714a27caa18a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-13T22:04:35.432+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Das Cinzas Do Passado eu Escolhi Minha Musa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7be859aa-0d54-4e96-ab46-5031f5c2dfb4', 'Superando Meu guarda Costa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b154e7f8-d783-42cb-b861-ec35ec930b48/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-13T22:03:26.259+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Superando Meu guarda Costa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'efc5d4dc-11a9-4091-95eb-b4a239b548b5', 'Da Sombra a Rainha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7a1c3bbf-142d-49f2-a3fe-ebff6be616e4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-13T22:02:35.827+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Da Sombra a Rainha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '61e96404-1e5f-4b70-8c2f-aeff38fcedbf', 'Papai Da Implacável Da Máfia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f6b34a0d-728d-4173-b3d7-e6489fddfeb5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-13T21:59:06.291+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Papai Da Implacável Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0bb68a4f-9f2c-4f34-9b1e-0d54f3a16b9d', 'A Herdeira Foi Trocada Na Maternidade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/625205fd-a9ab-4add-b898-c7ae1f45b069/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-13T21:56:45.457+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Foi Trocada Na Maternidade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c728cb59-f8e9-4ac1-9bab-febd9bfe83d5', 'A Imperatriz Veio Trabalhar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4f58096b-02be-4812-b23f-a82fb06893bc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-12T22:20:40.476+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Imperatriz Veio Trabalhar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '58bb0828-20b4-42c3-83bb-6fa174154c17', 'Olha O Que Você Me Fez Fazer', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/60621681-0d03-4d07-bd71-c8cc71e493b2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-12T22:19:40.189+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Olha O Que Você Me Fez Fazer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f64bfe80-09ea-47b6-9cb3-a9c053837a11', 'Ficar Com Outras Mulheres Traz Poder', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/42e9049e-773f-468f-906d-9d0943391ce8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-12T22:18:25.044+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ficar Com Outras Mulheres Traz Poder'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0e44b02e-f661-4e6f-ab4b-aafd8ab381b4', 'Casou Se Pela Irmã e Enlouqueceu', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/139c82db-bfe0-42c6-bbc9-1882b326d550/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-12T22:14:49.742+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casou Se Pela Irmã e Enlouqueceu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '711258e0-06a7-469c-b8bb-23d4a54746d4', 'Vingança Secreta Do Irmão Gêmeo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/42d88e95-266d-4660-a4e9-54e13be402cf/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-12T21:48:23.087+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança Secreta Do Irmão Gêmeo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b06b76f5-1047-4201-81e3-563dd1a0c483', 'Capturado e Vinculado Pelo Meu CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a57d8270-9fc3-4853-84ca-3471e71be6a8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-12T21:28:05.863+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Capturado e Vinculado Pelo Meu CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '388e8e0a-a451-44ba-892a-c9a01544c6f2', 'Laçada Pelo Amor De um Cowboy', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4d8702b6-f858-493a-bbfd-b487fe206b2c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-12T21:25:16.969+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Laçada Pelo Amor De um Cowboy'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a00036d2-fd4b-4d4c-839d-7dbd85e96ebb', 'A Virgem Cativa Do Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ff6fbffb-1098-4968-a987-65295f5964cf/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-12T21:24:22.468+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Virgem Cativa Do Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e9174051-0e17-446d-90d1-fdb0053f4a8a', 'Reivindicada Pelo Alfa Que Eu Odeio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f341e875-6abd-4541-bc9e-cbc8557f80fe/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-10-12T21:20:27.18+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reivindicada Pelo Alfa Que Eu Odeio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9306fb8b-89eb-493e-b182-9ab6d2a78ffd', 'O Arrependimento Do Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/74049fe0-5e55-45da-bed7-2d8adc7324d0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-10-12T21:19:05.551+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Arrependimento Do Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a9363ea1-1cbd-47e0-842b-33b5a335bae8', 'Noiva Muda Do Alfa Amaldiçoado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/16cb0b5e-88a9-42d3-9a3b-a80730601ce2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-12T21:18:03.834+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Muda Do Alfa Amaldiçoado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '44d35cf2-b743-4922-b53d-430673dc88a6', 'Castigo Por Seu Amor, Repouso Em Seu  Ódio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/99414828-fe7b-4b37-bbfb-5ad80492e047/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-12T18:42:03.782+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Castigo Por Seu Amor, Repouso Em Seu  Ódio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '764d89ae-58ca-4720-9b3f-8e64d9920063', 'Três Chances Para Te Amar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d875314c-dcf0-418e-9d57-3a2be36c9476/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-12T18:40:47.626+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Três Chances Para Te Amar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '64a3b5a2-956a-4c96-ad05-030dab7051b9', 'Defendida Por Ele, Contra Todo Mundo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d630a3b6-83a9-4377-894c-8ec412320483/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-12T18:13:58.575+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Defendida Por Ele, Contra Todo Mundo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e64791aa-b7b8-4762-86de-5428176a0bf2', 'Sra Dragão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/03dc88ad-60f4-44b8-a427-7c70dbf34168/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-12T17:34:57.723+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sra Dragão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c99389c8-71f3-4bfb-970f-9690a659afca', 'O Novato Mais Forte Do Mundo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/23250858-1735-4fde-abfe-7af2b283560d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-11T20:40:13.121+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Novato Mais Forte Do Mundo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '52ac8eeb-7052-4bb9-b515-8f8a7964b6c3', 'Eu Salvei O Marido Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/338394d3-af8a-4e05-9289-89c6e76873b5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-11T20:39:03.223+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Salvei O Marido Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e443dd5e-e853-496b-ad6d-85d556ddceca', 'Renasci Após 8 Anos Para Fazer Meu  Pai Rico e Feliz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a4d22fd0-5383-412a-8c6d-eac48b0cd761/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-11T20:36:06.561+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renasci Após 8 Anos Para Fazer Meu  Pai Rico e Feliz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c5bb9d57-e5dd-4c6a-b5c6-08a94580dda2', 'Amor Perdido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/845e318e-e736-4725-93d3-449e7d64df9f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-11T20:34:35.087+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Perdido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9436aed7-e4e0-4edc-8432-7315039f05c3', 'A Perda do Amor Familiar e a Verdade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5ae0e579-9268-4d37-8387-8b19b6eb7571/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-11T20:32:49.06+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Perda do Amor Familiar e a Verdade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ebf7b17d-7101-4be0-9095-389226b850f9', 'Laços De Champanhe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/06e0e238-4fcc-47a8-8ea3-d7e5bbba00e5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-11T20:29:14.386+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Laços De Champanhe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a2e6291b-0050-4424-8f28-5a206169ac48', 'O jogo Da Luxúria: Seduza Me Se For Capaz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cf840901-b423-40a3-a1fe-2d93dc8500fd/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-11T20:28:29.167+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O jogo Da Luxúria: Seduza Me Se For Capaz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd1c9c4d1-8f8b-4c99-9f85-2dc329e2b0f3', 'Do Peso à Glória', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7be67ec7-ff36-45e0-a05a-9b146742a3c5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-11T20:27:37.639+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Peso à Glória'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8b030a50-cd8d-43ea-aa17-93bed31a92b4', 'Minha Sugar Baby Bilionária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1a4a16ef-ced9-4981-ab1b-ce4331b9cca5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-11T18:48:01.64+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Sugar Baby Bilionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '93ab4d72-93a6-4475-b6a2-c481ec37c23d', 'O Preço Do Arrependimento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4409f53f-c892-4714-b103-b39c8cfbb8cc/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-11T18:46:04.35+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Preço Do Arrependimento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bfaea858-09b4-492f-bbc2-a15f23600902', 'Arrependimento No Espelho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6b3c0001-5654-4bb6-ae3e-cbb9f4306612/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-11T18:43:09.06+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Arrependimento No Espelho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '627a8e5b-d20c-48c1-9ace-ce11a26cb171', 'A Senhora Koi é Indomável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1de52cb9-0177-4224-a4b6-3105ef01be4b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-11T18:42:16.727+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Senhora Koi é Indomável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e0d5c8dc-3c6c-4091-92b0-828ca9a07550', 'Saia Da Frente Ex Intocável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1074ee94-51cf-4467-b525-448455dee9f2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:46:28.801+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Saia Da Frente Ex Intocável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f3e67e67-ae94-4f07-bc5a-af4303ed9943', 'A Vingança Da Herdeira Descartada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9c903467-c898-4a3e-a8a4-35f635b9423f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:44:31.825+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança Da Herdeira Descartada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '17a9e6bc-f84d-4ba2-ae84-930b7e313736', 'A Doçura Amarga De Vê la Divorciada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d5bc6d76-69b5-445d-9e7c-48bce3f6c7d7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:43:32.86+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Doçura Amarga De Vê la Divorciada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '35d5a08e-273b-451b-b64c-b8f86dad0ef4', 'Vendida Como Reprodutora Como Rei Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0fbd3bb4-4250-4375-aff6-84c4151239cc/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-10T23:42:29.836+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vendida Como Reprodutora Como Rei Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b76cafdd-61f4-455d-aa8b-d4886d49dba4', 'DOIS REIS ALFAS E A  VIRGEM DESTINADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2fcb52a9-e2be-44eb-9408-d83708b93d4a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-10T23:41:44.061+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DOIS REIS ALFAS E A  VIRGEM DESTINADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4553df95-e174-4d4b-8369-a034cb134b3f', 'Meu Professor Ficante é Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/953c1862-f35c-48f5-bc1e-4de53ae24f6a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:40:55.796+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Professor Ficante é Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fce71e8f-a0e9-484e-9f01-1b6c781b29c0', 'Corte Limpo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/75378606-ce54-4ee5-91fb-07cfe42ee932/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:39:21.622+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Corte Limpo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e5c4a439-e978-4101-b6af-53e33565df75', 'Manual Da Ex Senhora Perfeita', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4aaebef8-c61e-4e3d-b67a-a2714366664d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:37:57.51+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Manual Da Ex Senhora Perfeita'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74427cbe-2b41-4c63-8b79-d9a16a6606ec', 'Bilionário Inato o Amor Rejuvenesce', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f58cec5d-726f-4b1b-895d-93f2718afffa/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:36:05.828+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Bilionário Inato o Amor Rejuvenesce'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8d195d1d-c519-4d62-83c6-de232a70e065', 'O Amor Não Tem Vaga', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b4e5197d-0e90-4838-bb97-96cd99b7d733/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:34:02.869+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Não Tem Vaga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2af7dc88-37b4-41f1-bbe2-a92cb2ba5563', 'Minha Irmã é Comandante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/df3901e7-fe09-4c90-ace4-64e9c49713fb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:32:28.131+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Irmã é Comandante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd2177fff-41a2-47a2-b50e-aad8859ca030', 'Me Esconda no Teu Armário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/85954cbc-5d0a-4fec-8619-91e3f7a08e8a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:30:16.119+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Me Esconda no Teu Armário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '967bb1f1-f37a-48e4-b2dd-59e20479e7f7', 'Sr Duan Seja discreto Ao Mimar Sua Esposa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/035c5aff-1ce3-4542-b148-5956ee662df5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:28:16.492+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sr Duan Seja discreto Ao Mimar Sua Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74ccb95c-eaea-447f-8b2a-fc88a39a4f01', 'Meu Chefe Bilionário Me tornou como Prêmio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9fa10b38-9598-41bd-96b5-487f73d464a9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-10T23:25:40.18+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Chefe Bilionário Me tornou como Prêmio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '67daa680-1ad6-4fd0-a924-c726367f525b', 'Pequeno Gênio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/33207cc9-e52c-4724-a194-00af8ef4aa28/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-09T21:52:32.9+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pequeno Gênio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2bb62a20-9bc0-4576-a388-aa8237a9f1e0', 'Amar Uma Vilã', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d55ca2d9-ba3f-4368-a240-ee40fa70d957/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-09T21:50:12.439+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amar Uma Vilã'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9cf0a855-1953-4999-8224-36fcb23d6719', 'Sr Dragão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/92b468ed-17fa-4d5b-a156-4f2c9f7ae51a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-09T21:38:00.566+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sr Dragão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5a3d84e7-8637-401a-8df6-7d766bafca24', 'Reunião?, Não é Retaliação', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1e493a59-3e0b-4ea5-9cf9-dafa4dd05716/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-09T12:00:54.73+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reunião?, Não é Retaliação'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '44483d72-d65b-46e6-96a8-48b6f4882613', 'Chefão Nao Agora so Quero Estudar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7dca3542-3176-4c52-aafb-4a288c702ad9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-09T00:47:31.929+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chefão Nao Agora so Quero Estudar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f7e821d7-10ea-44e3-9a38-46ac68ad6fab', 'Prometo The Dias Felizes', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0bfb3e80-fd6f-414f-8e17-2e6afba44b4d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-09T00:46:39.521+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Prometo The Dias Felizes'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b41519f8-5a98-452a-859f-4060ce2286f2', 'Quebrando a Quarta Parede', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b4fe5826-3db1-4889-ba79-dcf01eea9a50/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-09T00:45:46.604+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quebrando a Quarta Parede'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a3ba6061-5cd3-4fd8-b066-b7b2eb07a1cc', 'Amando O Melhor Amigo Do Meu Irmão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7f6fa40b-3b75-431c-b2ad-08634f88301b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-09T00:44:57.786+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amando O Melhor Amigo Do Meu Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '529ad821-c290-4873-ac17-9300ab0be82f', 'Jornada Do Rei Dragão Por Sua Esposa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b069df89-a43d-444d-8305-1d1f1623c2b3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-09T00:32:04.465+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jornada Do Rei Dragão Por Sua Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c22511cf-9b88-4de9-9fb9-1689b013f0b7', 'Amor é Uma Doce Tortura', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/635e082e-af6a-4858-9edf-40c4f079c41f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-09T00:30:59.999+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor é Uma Doce Tortura'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba3383d5-1153-4233-a485-14934bd90dde', 'Como Treinar Um Macho Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/837e0390-28d5-4502-bb1d-057b6ace5f58/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-09T00:29:45.519+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Treinar Um Macho Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dfc9d5ff-7b65-4f84-b0ed-3f0b4cec33ed', 'Lua No Barco', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2e7b0e19-9032-4825-9735-60e9df39f584/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-09T00:28:47.542+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lua No Barco'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1a19f323-c153-4822-82d9-629aab4135fe', 'O CEO é Igual', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/daf9a50f-565b-4871-8da9-0ae20adfd450/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-09T00:11:38.619+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CEO é Igual'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd04294b6-c043-4b15-9faa-e2967b220577', 'Voa Comigo Capitão Marido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e302f1e6-0758-46cd-8638-27feef0fd68f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-08T23:55:24.231+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Voa Comigo Capitão Marido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f2a0008f-d94a-401d-9c1d-98a2b20f587c', 'Orgulho Encontra O Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/02ed2ec3-8fed-4f89-aaf2-5b3fdb60476f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-08T23:54:12.548+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Orgulho Encontra O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4cdecd7e-25f8-4893-b16a-506024ada9e5', 'Cinderela Grávida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f5856eca-1895-4e2b-a2e2-e862a6daf58b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-08T23:53:10.913+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cinderela Grávida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5fc6884e-914a-4ad1-ad27-8e32022a7c27', 'Casamento Arranjado Marido Secreto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6cbcf107-a646-4da9-a42c-342bd944b132/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-08T02:13:45.872+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Arranjado Marido Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '75764dff-a8c3-45a1-984f-94058222850c', 'Depois Da Florada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ec9b1630-b934-47c4-9df0-0eb235620a39/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-07T22:56:14.566+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois Da Florada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b94416cf-3078-4fd6-ba2f-fc9e04297ade', 'Domesticando O BadBoy do futebol', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6a22835d-5ec4-415e-b8d3-441f5d15500a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-07T22:55:07.9+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Domesticando O BadBoy do futebol'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '61378f2d-441e-4f06-aadf-2b18b83027f8', 'Meu Único e Verdadeiro Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d9d225a9-8087-48b5-b063-8e4bea21943b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-07T22:49:00.134+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Único e Verdadeiro Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7c3dd4f9-7969-48f6-815a-7e94fd7e057a', 'Chamada Final Para O Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5e2e0e16-64ea-4067-93f1-d7290ffed62e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-07T22:19:51.765+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chamada Final Para O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '011b96ff-258d-43d6-a0bf-269d35c7a520', 'É Ótima A Esposa Arranjada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/211cd6fa-113c-48c2-9254-1097720430b0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-07T22:18:03.684+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'É Ótima A Esposa Arranjada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0a3cd5a1-4c0d-40e1-badd-f24d3fba5ada', 'Sempre Estive Com Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/886e5026-88f5-498d-9945-5f1733259a11/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-07T22:17:15.068+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sempre Estive Com Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4ddf9587-a4b1-4755-8344-c01b0b525614', 'Traição Revelada Amor Perdido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/74e97701-738d-4523-bbe1-d5c25d976e03/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-07T22:14:53.883+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Traição Revelada Amor Perdido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd499162f-5a1b-4b1b-be27-9f59f076bc4d', 'Me Deixe No Seu Coração Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1c47bbe6-b309-498e-9474-8505123ae36d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-07T21:19:27.946+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Me Deixe No Seu Coração Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a3737494-eaf1-46af-9c78-373569fc6e08', 'Preso Com a Herdeira Mimada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b70f7b9f-b5a7-4dd3-92f5-83bac7abaa45/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-07T21:18:52.302+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Preso Com a Herdeira Mimada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0523e372-dac5-4b16-9924-162dfd35af36', 'Jamais Remoa  O Passado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0ae7905f-2e2c-4848-bc55-4fc32f283041/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-07T21:18:02.362+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jamais Remoa  O Passado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f286c68f-d368-49dc-b6fe-97d813e8794a', 'Renascida Para O Amor e Vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a0f7fbfa-8c09-4b7a-affc-d8f585d35b63/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-06T23:47:05.565+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascida Para O Amor e Vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c1590f2d-7335-45c6-8483-5b1f744b7f40', 'Neto Falso Não Verdadeiro', NULL, 'Em meio a uma guerra sangrenta, ele arquiteta uma farsa ousada para salvar sua família. Mas quando a verdade vem à tona, o que será mais forte: o sangue ou o amor?', 'https://vz-c2303ad7-0af.b-cdn.net/df69a1b2-9c71-40dc-8b18-28b02cce88eb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-06T23:40:30.566+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Neto Falso Não Verdadeiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '029847d2-ba1a-46f3-8872-6b3930097733', 'A Esposa Gorda Voltou Irreconhecível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b0de64d1-bf8e-4244-850f-a5ec3a84e84b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-06T23:37:23.564+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Gorda Voltou Irreconhecível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e245a4b9-5182-450e-a060-49973aef80c9', 'Um Beijo Que Faz Falar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b66bed90-6e58-4c7a-bfb8-7df96d3f9448/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-06T23:36:35.207+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Beijo Que Faz Falar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f04da44e-9380-476b-8e29-fc2e96692fbe', 'Caçador No Ringue: Punhos De Justiça', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/06c1dfde-3877-4ac0-bc56-47346cc70803/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-06T23:30:37.473+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Caçador No Ringue: Punhos De Justiça'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cbf3c97a-cfca-4c12-a8d5-d09f3284606e', 'Amor Proibido: Vendida Ao Meu Melhor Amigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1d88762a-4148-4991-bb7a-431df6a38b64/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-06T23:16:58.429+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Proibido: Vendida Ao Meu Melhor Amigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6358dfdf-6ebd-4ac3-bd7d-45213ddb2af7', 'O Amor Sem Volta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9d7ebec4-48ea-4d70-802d-19a4c5a5eb1c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-06T23:15:39.962+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Sem Volta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2533b8fd-d480-4425-b793-c0763b99328d', 'Com Sorte Plus Size: Brilho Imbatível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e6af1289-4436-484f-b003-52b45a73e7b8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-06T23:14:31.081+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Com Sorte Plus Size: Brilho Imbatível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1f95d58e-a63d-4dda-8322-e6b94833c64f', 'Amor e Vingança Sob Chuva', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/92d3485a-1ba1-4a15-bdbd-2d1385e11d8a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-06T23:13:05.514+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor e Vingança Sob Chuva'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd21c931d-610c-4b68-abe2-5035f6ef3089', 'Ela Armou Ele Apaixonou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f8bc1b5d-8e4c-4fba-befe-6867eab080af/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-05T17:53:03.507+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela Armou Ele Apaixonou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '42a5e725-32a0-453d-8102-0bd26e2a538d', 'Retorno Do Desaparecido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/01a8ea54-996f-42aa-9127-9a8fc4512f6b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-05T17:51:18.453+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Retorno Do Desaparecido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e1bb3eed-3940-4c6e-839e-8f94e97b7bd2', 'Devolva Meu Carro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/26b8ed68-7859-45b8-8043-706765ff58c7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-05T17:49:25.943+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Devolva Meu Carro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3fbf56eb-b849-4220-be23-8efca66c5a36', 'O Poder Do Conhecimento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/03ea70b8-7819-496d-833e-c3155e70d2b7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-05T17:45:57.526+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Poder Do Conhecimento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0bb7410f-c4f9-4cef-9215-9b41c5119a0f', 'Rainha De Copas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3643c8e8-2e74-4d93-a77f-be9374cc234c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-05T17:43:44.09+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rainha De Copas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3c393d77-54c7-44de-9d11-30bd5a9e4a70', 'Seu Nome No Meu Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/03605df1-0350-4475-a458-abc7129be49e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-05T17:36:35.454+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seu Nome No Meu Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '706954f5-6a19-495e-8853-654f6e79b17c', 'Meu Senhor Das Trevas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c399bcdf-5790-4afc-b743-e96e3b4f7856/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-05T17:35:45.957+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Senhor Das Trevas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '53cecaf9-9c13-418e-b55e-111454ffbc0c', 'Encantado Pela Princesa Curadora', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5fd01892-a479-45a1-b598-603b9222bb59/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-05T17:19:29.47+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Encantado Pela Princesa Curadora'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b0610cac-4c01-4c3f-b465-bf5d24b4272f', 'Pinte Me Como Seu Sra Beijo Ruim', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e8d6df36-29f0-483c-97f0-17ad3d8821db/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-05T17:14:19.485+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pinte Me Como Seu Sra Beijo Ruim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c23cb9d2-ab48-41c3-bc0d-9ab4a81d5748', 'Destinados à Primeira Vista', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d438397e-5a06-4630-856d-98345b37ccff/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-05T16:01:32.758+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destinados à Primeira Vista'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c37fc6a6-93c8-44e2-bbf0-414a1d43b2af', 'Rainha Quebrada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/997cdf5d-1ea3-4246-bf6f-1d9abe8030af/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-05T03:49:41.08+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rainha Quebrada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '79210b78-223b-4d9a-a33b-821a840d06a3', 'A incrível Luna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4ce3afe5-a686-484a-8a88-e290b82f887e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-10-05T03:38:33.166+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A incrível Luna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4cc3aa3c-5fa7-4951-af44-d7207067b7d8', 'Segunda Chance Primeiro Mimo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/57abe188-ccb0-472d-b989-c13f19225378/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-05T03:11:51.077+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segunda Chance Primeiro Mimo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '978c95c0-0669-40d1-a48d-50168e47ba54', 'Seu Garoto Perdido Seu único Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/911385de-e9d9-4137-bb7b-69af533a4253/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''blgl'']', '2025-10-05T03:10:18.76+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seu Garoto Perdido Seu único Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6d5f73db-a073-409a-9d37-b01528157cac', 'Entre a Filha e a Guerra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c3ac74d9-cad3-4388-9511-249a5137588e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-04T20:13:49.39+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Entre a Filha e a Guerra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5c5e98c8-6526-4044-9e99-941fec5b60b8', 'Garotos De Estocolmo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8e19a55d-f594-4ce3-84c7-f75047113814/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''blgl'']', '2025-10-04T20:12:48.183+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Garotos De Estocolmo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd9347cb9-af56-417a-ad8a-1290679d9e86', 'PoolBoy', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/64fac2eb-1fd6-4ea7-b9a5-6608bc6c146d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''blgl'']', '2025-10-04T20:11:48.372+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PoolBoy'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3a790ed2-d302-4c93-86c7-93cb71740ef3', 'Despertar Do Amor Perdido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/afe6b182-197d-44a7-9121-7f9f953f07c3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-04T20:09:43.077+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Despertar Do Amor Perdido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ebd116d3-1ad0-4667-845f-ca96487153b4', 'Grávida De Gêmeos Bilionário O Amor Começa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1f1e55a3-e5d1-4f14-877c-aa77859ebac7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-04T20:07:15.754+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida De Gêmeos Bilionário O Amor Começa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8481f528-e60a-4990-b9d5-0e8fd2c17e4b', 'Casamento Relâmpago Mimada Pelo Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c2fd54d8-665b-47ca-8e89-6f03a079b86f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-04T20:06:21.757+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Relâmpago Mimada Pelo Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd1b1cccb-d306-4fc2-90b7-6769b06e28f3', 'Além Do Abismo Escuro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3482182b-2400-48cc-aff0-672079149f38/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-04T20:05:01.327+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Além Do Abismo Escuro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e27c53a7-5fec-43ed-9feb-2577e94e384e', 'Seu jogo Perigoso Da Sedução', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1089f863-7d99-42e7-87e7-baa6c7cc4f96/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-04T20:04:07.571+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seu jogo Perigoso Da Sedução'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '534f6c05-3a7e-4e43-bb17-493d9fc15d39', 'Sou Filha Do General', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/25ab9aeb-97ff-4662-974b-89fceaea70c7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-04T20:02:59.268+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sou Filha Do General'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1e051323-f315-4cc6-a8ec-b8a13a0ef161', 'Raposa Da Fortuna Da Grande Fome', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/37631754-1421-4cc5-9fe1-9f0005af281e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-04T20:02:07.551+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Raposa Da Fortuna Da Grande Fome'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b68cb7b3-8e9d-417e-bc83-01d4b5afe21c', 'Amor Cego Do Comandante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f93b3691-d562-436b-abfa-ec67f0653ea1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-04T20:01:03.384+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Cego Do Comandante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f0d56ebf-1480-467e-b4f0-f659918ea67a', 'O Esplendor De Um Pai', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/64114161-d472-4f2a-8abd-ab00a2a52d52/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T23:50:29.689+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Esplendor De Um Pai'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3914d627-d29a-4090-8bdb-8753a40aca31', 'Doce Herdeira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/97ade650-e0c3-49ed-a09a-717745c235b3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T23:35:55.984+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doce Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fed37220-e47b-4e9d-ad11-e3d97c7c8d2e', 'Renascida para o Amo a vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a5afee11-9143-4573-ae2a-265c02b3da4b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T23:25:50.432+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascida para o Amo a vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '047d5d1a-ecef-48f6-b147-2e4ffb140fee', 'Foi Amor à Primeira Vista', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/db52d4d5-4a86-48f7-8792-19206f715e9f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-03T23:24:25.091+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Foi Amor à Primeira Vista'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '60f17171-d2ca-4541-bd2a-4706d1790017', 'A Curadora De Desaforos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1ac6fb62-0471-4d32-a77b-c5c56cfaa2b3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-03T23:23:21.908+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Curadora De Desaforos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '31453e59-e522-4dba-952d-8b00a75422d8', 'Amor Na Brisa Do Crepúsculo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d3115827-2f81-4e63-a620-1e588d3c4630/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T18:38:13.961+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Na Brisa Do Crepúsculo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '671a05db-4b5e-4d3e-8496-28e259322b56', 'Perseguindo Minha Esposa Congelada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e79806c9-f85d-46ca-9ed3-99817254ebce/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T18:37:08.222+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Perseguindo Minha Esposa Congelada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e1954199-7cf0-4a40-8ede-0ce4e4d5d32b', 'O Retorno Da Deusa Chef Oculta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bfee6543-81db-4bd2-b2aa-786c8420b921/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-03T18:35:26.177+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Da Deusa Chef Oculta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '846f5dcf-8126-4d0b-84b3-b17608ab1b14', 'Caiu Na Armadilha Dele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/33239609-fb37-4c28-822e-9eb359e0cc0f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T18:34:20.432+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Caiu Na Armadilha Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '250cfb2c-247a-4c70-bb3e-5ead7a8a36ed', 'Esposa e Buff absurdo: Subindo Para dominar tudo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f586cb36-082f-4a2e-913e-099828039192/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-03T02:26:38.953+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa e Buff absurdo: Subindo Para dominar tudo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '88c3a885-a552-41ef-86c0-efdb6d3cbeb1', 'Lapd Abra Seu Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7bbebf66-73d0-4726-97ae-4471b9d0b287/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-03T02:25:15.138+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lapd Abra Seu Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8a4368d9-1ab8-4f2b-9446-ee834eea561d', 'Os Brothers Da Minha Ex', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/30063d1b-cd75-47dd-bafa-0f33f2cfed7a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T02:15:30.002+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Os Brothers Da Minha Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cfc5c1d7-ed6d-4453-b9fd-3e250b4ff88a', 'Por Ela Eles Me Mataram', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4e6e891b-99f7-4baa-9f33-f42d5713c686/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-03T01:54:35.225+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Por Ela Eles Me Mataram'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9e1f53c0-75a0-47f0-bfb1-938810542272', 'Laços Proibidos Com Meus Irmãos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eeb2debb-73d5-4923-916f-9896fa3c6691/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T01:24:34.721+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Laços Proibidos Com Meus Irmãos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c9f61841-e215-4bd2-840b-82f7224608b5', 'Mãe Corredora Implacável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1b6785ed-39ac-4450-b0f2-71d76993180f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T01:23:07.4+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mãe Corredora Implacável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ee9cf5aa-5b24-4d3d-ac11-98ff6c2ffe8a', 'Só Restam As Rosas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a9868a25-e4ce-463b-8530-3c71d4285597/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T01:03:32.381+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Só Restam As Rosas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6378db04-7014-4848-a4cf-d2a4a52a6742', 'Dança Das Lágrimas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c1b5ff37-1bf3-4d02-b269-0f2c900fa31d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T01:02:37.37+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dança Das Lágrimas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b533c56f-8adb-4bea-a98d-e0a8d8507ab7', 'Encontrada Pelo Rei Lycan', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bf5e6a1e-33e2-4497-b4b9-edbc872e2a48/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T00:49:28.808+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Encontrada Pelo Rei Lycan'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '23e697c6-009e-4785-a52a-fe16a5c06c15', 'Te Amo Nesse Pleno Dia De Sol', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5d418d6e-03b6-46bc-aaec-078dca7316ab/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T00:41:46.049+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Te Amo Nesse Pleno Dia De Sol'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2eca2961-05c3-4ef4-9bf8-eadca5930c05', 'Quando o Amor Salva', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/334719ee-1647-4389-9a89-0dce0f050e5d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T00:40:55.63+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando o Amor Salva'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd94efc5c-202d-43ce-9505-bdc0efdbc7b0', 'Cuidado Meu Ex é Ciumento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fa9acee5-4a3d-40b6-bf0b-227a6872d181/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T00:38:42.614+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cuidado Meu Ex é Ciumento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '72323e61-6418-48ae-8aaa-67bde9c89e20', 'Ascensão Do Pequeno Mestre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/62f7eb99-8de7-44e9-a935-3e8f6b1cf5df/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T00:35:40.001+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ascensão Do Pequeno Mestre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '54a536e8-5136-4384-9a25-727be671fcb2', 'Imortal Caída: Arrependimento Do Imperador', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bb10152c-f12c-47c5-b0cc-c52b931b932d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T00:34:31.12+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Imortal Caída: Arrependimento Do Imperador'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9c9fffad-396b-4a48-99f1-415f53a01b79', 'Inimigos Encantadores', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/81ba2e2f-7e18-484d-9fd7-d3b966e02ffe/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-03T00:32:46.893+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Inimigos Encantadores'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2beb30e8-b08b-4f1b-82a5-89ecd5f4d4d8', 'Sol Após As Cinzas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8c76b3d7-cbdd-4912-9420-60db4873e63e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T20:18:36.191+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sol Após As Cinzas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'aa283ee3-451f-4ee7-8005-0d3c3a2ad7a0', 'Renascer Para Amar O Senhor Perfeito', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/11b2920b-cf4b-4a2a-bd19-e6cf336061f6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T19:58:05.08+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascer Para Amar O Senhor Perfeito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0c7f1cde-0bc8-4e45-a547-40f22ad93280', 'O Mistério Das Águas Termais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8f9f6e00-94c7-4e96-89af-0d88ad4e138f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T19:47:56.854+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Mistério Das Águas Termais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8677b7e4-f1a0-4397-b803-adaa1a9b6ff8', 'Meu Companheiro é Um Licano De Rua', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8dc0a942-c92d-4512-af43-44284b7421af/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T19:43:56.49+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Companheiro é Um Licano De Rua'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '98e924da-8e67-4388-a07e-9ef50c70c026', 'Meu Ex Mágico Entre Presas e Garras', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8b159f23-4fe2-42b5-9586-adc02f8aae1d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T19:40:55.738+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Ex Mágico Entre Presas e Garras'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '22fbfe0a-99fc-401f-9c83-fb3283702b13', 'A Menina Que Fala Com Os Animais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2958726b-70b1-4db7-8bef-a6817d119dc8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T19:36:24.84+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Menina Que Fala Com Os Animais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7f55f86e-8e95-4c97-9a4b-05a5e3ddaca2', 'Coração Em duas Promessas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9cb89853-83e6-4f02-a7cc-968fbb4170ff/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T19:32:29.075+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coração Em duas Promessas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd21ad385-9714-4131-8d4d-1c7431058255', 'A Rainha Não Ama Só Conquista', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/19991b56-b4cf-4e3f-8971-fa4d32c0b258/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T19:25:22.417+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Rainha Não Ama Só Conquista'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7fd55fda-e85e-432a-a734-fd3786c0db7b', 'Professor Sou viciada Em Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2ef1a6f3-417a-4e5a-a090-15bc7fd1e08f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T19:23:12.997+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Professor Sou viciada Em Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '283a12fc-01b5-48d6-bede-640cf245b038', 'Chefe a Luz Marido a Escuridão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e0036edf-13b8-4c68-ae68-786ba718263c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-10-01T19:18:52.975+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chefe a Luz Marido a Escuridão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bd268418-9953-4297-82bd-6a2af407db34', 'Minha Paixão Pelo Meu Senhor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c5354bb5-da97-4f69-904a-bd483bbd0c1c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T19:14:09.253+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Paixão Pelo Meu Senhor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2c3afd0e-71f1-430b-84ba-e63f7c1839e8', 'Renascimento a Esposa do Padrinho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f2a90544-3c90-4225-91c0-d017d09bb955/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T01:40:57.855+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascimento a Esposa do Padrinho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4ec4f14b-151a-4800-9205-c25c73edb4eb', 'Meu Cunhado Meu Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/14390126-653e-4e42-bd49-f5052bd1aeea/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-10-01T01:38:31.26+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Cunhado Meu Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a1c0a4e0-c9c2-4c04-9908-c5fca0d081af', 'A Presa Pelo Amor Que Me Salvou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f6993af8-c160-406a-a08b-9ebcb90dd174/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-30T23:41:29.59+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Presa Pelo Amor Que Me Salvou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '37b97415-da19-4f86-97ec-d6de8fd2832a', 'Dívida Paga Lenda Nascendo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2c943f41-785f-4a7c-9ed0-e1fccd5fa896/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-30T23:40:29.772+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dívida Paga Lenda Nascendo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2c5033a9-3907-4a7a-a38f-993f0be6c02a', 'Não Se Esqueça De mim novamente Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9cf8bc17-9b38-47c8-9dae-735801373b6d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-09-30T23:37:54.422+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Se Esqueça De mim novamente Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dd823334-ab04-447a-b8d7-546e2b9b4b64', 'Amor Traído A Vingança Do Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/48c0db1d-71bc-4092-90f8-a834df7d6138/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-30T23:33:36.795+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Traído A Vingança Do Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b20bbb9d-3167-4b43-b9c7-7a8b34361803', 'Lua Da Meia Noite', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cf8e057b-a1a7-41c8-a184-42d3111543b0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-30T23:28:39.38+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lua Da Meia Noite'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '268eae42-bf6b-491e-a131-ecd0e057464e', 'Renascimento a Esposa do Padrinho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b122305f-5df8-47ff-98f3-3002988ff1c4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-30T23:27:53.346+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascimento a Esposa do Padrinho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '41ff6f38-6ab3-40bc-871d-144b935deaa3', 'Segunda Chance Do Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dd04026b-b50b-4c07-99b6-c727f3f0c688/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-30T23:27:02.423+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segunda Chance Do Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '187554cd-c285-40d4-8b8f-a8e9c726676d', 'Meu Cunhado Meu amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/da1e3dca-7343-496e-95fd-89106e04c507/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-30T23:25:41.839+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Cunhado Meu amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6789210a-cbf8-48da-bd06-30d29d8cd63c', 'A Menina Que Fala Com Os Animais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/820f0f98-0bc2-492c-b3c1-8db833a63809/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-30T23:24:59.653+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Menina Que Fala Com Os Animais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '19e420e3-b32c-4359-baa6-71b4ff3b7a33', 'Doce Como Tina', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/828a0087-e924-41ef-bdc9-bd8231c4087a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T23:33:32.873+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doce Como Tina'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2f7d726f-2a98-4015-b1db-d946106378f2', 'Ela Já Se Casou De Novo Sr Lúcio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/182df450-dfe2-4f61-b114-adff8974a0d1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T23:23:12.565+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela Já Se Casou De Novo Sr Lúcio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'da02c76e-0001-4571-a82b-0547b8d425ea', 'Jogo Do Desejo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c90124a4-1532-4433-bd83-42c4f6b9e27c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T22:16:49.326+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jogo Do Desejo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '275aaa51-f4fe-425e-91c3-7f7a6df2c1d4', 'A Herdeira Impedida De Voltar Para Casa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6f6ddbb9-3ed5-497d-8652-663f849d9526/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T22:16:01.406+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Impedida De Voltar Para Casa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e2844609-7ff3-4c57-a0fa-7be3d35a44c3', 'Meu Amante inimigo Que Paga De Durão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fabd2c91-eee1-4730-8363-9411e453ac94/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T20:46:20.128+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Amante inimigo Que Paga De Durão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '380be751-fbfd-46be-85c4-68456411347d', 'Casei Com O Homem Errado e Amei /Ele é Selvagem', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4b867ba9-60bb-416c-8532-16ff97ff994d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T20:45:21.548+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casei Com O Homem Errado e Amei /Ele é Selvagem'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6520d2ce-f674-4b08-b255-78c522537c66', 'De Garimpeiro Ao Seu Amuleto Da Sorte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f4e45edd-b3b0-4fce-b5a3-3aa02256aabc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T20:43:19.583+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Garimpeiro Ao Seu Amuleto Da Sorte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba7e5a2b-01c0-400f-8833-803b2eacfb11', 'Ela Deslumbra Todas As Pessoas Após O Divorcio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/af9d26d8-36af-4fce-8a22-002cc99e3424/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T20:42:06.261+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela Deslumbra Todas As Pessoas Após O Divorcio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '03d30020-49d9-4496-a4b9-4bf657599a42', 'Casei Com Um Garoto Apaixonado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f52e1f42-ce4a-49c5-b07f-94543708ad62/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T20:40:48.132+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casei Com Um Garoto Apaixonado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '34279b33-a937-47f4-b909-2be1b7977192', 'Primeiro Amor Última Escolha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/99498fb1-a236-49a1-997f-5e0c0fcb7705/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T20:01:55.312+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Primeiro Amor Última Escolha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '75caddab-e82a-4ace-b3f9-fb292f55e1ad', 'As Duas Encrencas Da Viúva', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5909e6eb-ce5c-4c3a-8492-78b5913bd550/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T20:00:33.536+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'As Duas Encrencas Da Viúva'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8f0511a4-baff-4f6f-aea3-2b38b183091e', 'Desejada Pelo Craque bilionário/Fim Do Contrato Fim De Nós', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5643a51a-ec23-413f-9746-a788ffb3d677/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T19:59:11.831+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejada Pelo Craque bilionário/Fim Do Contrato Fim De Nós'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd4253ea2-d9f6-49f5-bd5f-9c7d7fea272d', 'Retorno Com Tudo Minha Coroa Minha aliança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a21253ae-641a-4562-a6e8-ae2a972c51cc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T14:43:38.257+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Retorno Com Tudo Minha Coroa Minha aliança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '42a1048f-e90d-490b-86db-f41b388a486e', 'DO TIRO AO ALTAR AMOR PROIBIDO (DUBLADO)', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0f691289-253d-4ac3-a1ab-a29768dc068c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T03:31:10.806+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DO TIRO AO ALTAR AMOR PROIBIDO (DUBLADO)'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '339a3e37-53bd-4650-acfa-80788c27c81d', 'Acordar Casada Com Meu crush', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/46b29323-9544-480a-8bb3-5cb54ab9f0d9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T01:34:24.839+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Acordar Casada Com Meu crush'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'afe1c2e6-27c1-49dc-8e47-639b1aaa47bd', 'Papai Campeão e Suas Filhas Da Sorte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f19197d1-eab2-43b5-ab4c-87610926d93e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T01:31:14.764+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Papai Campeão e Suas Filhas Da Sorte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e48402ae-e909-45a2-a214-04c7e76271c3', 'Punhos De Vingança Ela e Ele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e8a7fd5e-8708-4696-ae27-00e3f8ccba22/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-09-29T01:29:37.422+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Punhos De Vingança Ela e Ele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '06ef612c-8dd1-44fb-a79a-8667f3ddf2d4', 'Fios Do Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0336f1e3-c278-4e5c-a530-ef09cd4f871c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-09-29T01:27:46.356+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fios Do Destino'
);


COMMIT;