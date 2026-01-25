-- PART 1 OF 5
-- ==============================================
-- DRAMIO IMPORT SQL - Generated at 2026-01-25 19:13:30.065061
-- ==============================================
ALTER TABLE filmes ADD COLUMN IF NOT EXISTS descricao TEXT;


BEGIN;


-- 1. Create columns if not exist (Description is missing usually)


INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '19f7bf11-9beb-4464-97e5-cae719efe7a2', 'PAPAI É O REI VAMPIRO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5719bbca-34ec-40a5-9ddc-7967300b87f4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''vampiro'']', '2026-01-25T06:40:36.511+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PAPAI É O REI VAMPIRO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b6f90b3f-93c3-43c4-95ba-8bbf4a161726', 'MAIS FORTE QUE O DESTINO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/25627c66-a4b6-4693-88e2-7f3c26ae3fe2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-25T06:38:43.978+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MAIS FORTE QUE O DESTINO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '201e3d6d-64f0-4f6d-82dd-69487cd5a277', 'CORDAS DO CORAÇÃO DA FADA CAÍDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/67dae280-9211-4f86-8221-40e8067c171f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-25T06:36:58.34+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CORDAS DO CORAÇÃO DA FADA CAÍDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '421e0672-9736-47f0-9763-f2804c0e7a5b', 'Destinada Ao Meu Alfa Amaldiçoado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/68d9fddc-c3e7-49c7-a29a-ab4d73322595/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-25T06:05:47.135+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destinada Ao Meu Alfa Amaldiçoado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '263dafa0-a400-45de-9cf9-50160ab6cc04', 'MEU PRÍNCIPE ALFA SOB O LUAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/39726675-87a2-46c8-8221-b7e6b9e771a2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2026-01-25T06:04:40.345+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MEU PRÍNCIPE ALFA SOB O LUAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fc068ad9-0327-43dd-9d29-a5a2e7875d6b', 'A MÃE PRESIDENTE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/11b9094f-2f2d-4611-8641-a14a0132afd3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-25T06:03:43.37+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A MÃE PRESIDENTE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '23cc76db-4c2c-44e2-b4e7-5fe4f75dd959', 'AMOR PROÍBIDO COM O TIO BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3523484e-5d4d-4474-b017-7608a52de97b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-25T06:03:06.059+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR PROÍBIDO COM O TIO BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ada6040-4190-48f2-a9b1-f9f4581788ea', 'ANOS 80 A GRANDE MUDANÇA DA ESPOSA GORDINHA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d40b568e-bc46-469e-b79f-31b71eee23a8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-25T05:40:56.183+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ANOS 80 A GRANDE MUDANÇA DA ESPOSA GORDINHA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0b3b1431-8509-4a00-9236-cc68c800389d', 'DE INVISÍVEL A IRRESISTÍVEL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a7e50882-fa50-4aac-86ad-c3be5b3968a7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-25T05:30:49.096+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE INVISÍVEL A IRRESISTÍVEL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4e0828c9-12db-4fd0-9588-8da65d2c4bac', 'ERA TARDE DE MAIS PARA NÓS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5fff486a-e1c8-40bb-b2ae-c9617fb06f27/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:44:48.174+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ERA TARDE DE MAIS PARA NÓS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '277a7ec5-e535-4599-acd9-ee91149fa954', 'UAU MINHA ESPOSA MENDIGA É UMA LENDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d5009dad-911b-482c-9f5a-37ac2b461e4f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:43:49.322+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'UAU MINHA ESPOSA MENDIGA É UMA LENDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5539aeb9-2891-4dc0-959a-8e23de051909', 'NOITE PROIBIDA AMOR QUE NÃO SE APAGA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/130483d3-0ee7-4d60-b27e-5c8b43d9af18/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:40:18.106+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NOITE PROIBIDA AMOR QUE NÃO SE APAGA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bc496723-c4e1-410d-86ef-5065f7c0364e', 'EXCITAR A ESPOSA VIRGEM DO MAFIOSO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/60f09df3-7d5b-455c-ae46-f99b707efcf4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:33:08.472+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EXCITAR A ESPOSA VIRGEM DO MAFIOSO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2db201eb-dc04-4731-95d1-417117c9f8e1', '7 ANOS EM 7 DIAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4129a732-6267-46a3-b6bd-3da99b4d4a1b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-24T17:32:27.462+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '7 ANOS EM 7 DIAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ad1f62f7-0ee5-49c2-8011-6b9fcbad4f0e', 'AMOR A TODA VELOCIDADE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/98d70b57-423a-4d96-b285-e49f150ae0fe/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-24T17:31:29.63+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR A TODA VELOCIDADE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4b1ef19f-2cdd-4f78-92f9-14d2e1387439', 'ARMADILHA PARA O CORAÇÃO DELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e6f0bcd4-63cd-4d89-abca-7591fb653ca4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:29:54.915+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ARMADILHA PARA O CORAÇÃO DELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '515933a0-afd4-412f-b057-cd3e8d87b272', 'COMO CONQUISTAR UM COROA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6b99c55f-9e26-4ad9-91d2-c9e08522a630/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:28:52.122+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'COMO CONQUISTAR UM COROA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6ee045c0-cd6b-4eb3-9825-ddd26dcb5ef3', 'DE VOLTA AOS MEUS BRAÇOS MEU AMOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ab3d678a-51b5-46c4-958e-fe80b3015d61/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:28:05.107+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE VOLTA AOS MEUS BRAÇOS MEU AMOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '20a7d489-b19d-4ff9-95c7-897bb078e02d', 'COM O TEMPO TUDO PASSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f070729b-12a6-4f95-9dad-59d95840ce52/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:26:54.177+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'COM O TEMPO TUDO PASSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b53194bf-64e0-4bbe-96b7-f2c189f06fbf', 'PALAVRA DEFINITIVA ESSE MALANDRO MANDA EM TUDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/babc48a7-699b-4def-9e5d-1aaa5c1c6f76/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:11:24.777+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PALAVRA DEFINITIVA ESSE MALANDRO MANDA EM TUDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0ade83b2-e53d-4824-ae17-60824090c95e', 'PRÍNCIPE ROSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4d2573cf-b4f7-4267-9d66-c820386c686c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T17:03:13.29+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PRÍNCIPE ROSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ff60f591-c88b-4f8b-a9ef-14b553a56c74', 'DESTINADA A SER IMPERATRIZ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/122abf5c-7400-47bd-92fc-7c8038115a1d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T16:59:01.868+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DESTINADA A SER IMPERATRIZ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0805c87e-d49f-4a1b-87d5-214c069ff5ed', 'CHAMAS DO AMOR ESTELAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/90c5b6a0-d6da-4de4-9b5c-eb13ccccfd5d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-24T16:19:33.579+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CHAMAS DO AMOR ESTELAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ecb18951-fddc-4fb5-bc9f-0ef8bcd6629d', 'DE VOLTA EX SECRETO VENHA BUSCAR O HERDEIRO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/55432efe-3b0a-454b-be28-aa20bf5668b7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T18:47:08.131+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE VOLTA EX SECRETO VENHA BUSCAR O HERDEIRO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '662a6b4f-ab13-4233-a794-aea6792e89f6', 'O CAMINHO DA LIBERDADE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/564d1320-66e8-4421-9c80-48af8aa29b8e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T18:46:26.347+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CAMINHO DA LIBERDADE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ead4ec4b-f201-4237-8b10-6f3bd2af3a2b', 'MAIS FORTE QUE O DESTINO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ae49cb63-f9d6-4ee3-9508-a37c37d38909/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T18:45:39.29+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MAIS FORTE QUE O DESTINO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eba89e0b-8d34-4748-ad2a-be5ed272f612', 'AMOR NA MESMA ALIANÇA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e38c0c65-fec3-40bc-901c-e94b2cd66656/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T18:42:57.832+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR NA MESMA ALIANÇA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0dd153d0-3b48-473a-b241-c0bc11bb5684', 'DE VOLTA EX SECRETO VENHA BUSCAR O HERDEIRO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1adb82a6-2a92-42e4-8f0f-fef861f165c5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T18:41:41.083+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE VOLTA EX SECRETO VENHA BUSCAR O HERDEIRO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4d19ad0c-13f5-4915-b70c-21879d96dc7e', 'RENASCIDAS A ESCOLHA DO DESTINO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9f210541-9a73-4273-9801-17d60725654d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T18:40:30.101+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RENASCIDAS A ESCOLHA DO DESTINO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '42d7e2f2-9a94-4143-92c6-aece84139c6b', 'ELA CAIU MAS REINOU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/28b100bd-2226-4635-a00f-99bcfc7868b5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T04:22:48.433+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ELA CAIU MAS REINOU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '97fb6b05-c707-4825-9e2c-f8b27cc51ab6', 'POR SANGUE JURADO A ROSA ESPINHOSA DA MÁFIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b33b36bb-ab18-42d4-aed1-bfd564ee410d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-22T04:11:06.012+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'POR SANGUE JURADO A ROSA ESPINHOSA DA MÁFIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4453e986-bfd2-485b-92e5-4bbf86e1f1a3', 'EU NÃO QUERO O DIVÓRCIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d690f748-ce54-4ac8-8531-5ef3157d8366/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T04:09:42.477+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EU NÃO QUERO O DIVÓRCIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '88e05d0b-c6ca-45cb-a8ce-eaf0c7227130', 'DE PLANO B A AMOR DE VERDADE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e10fffa8-a486-4a34-9f75-a00b4b62965e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T04:08:40.391+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE PLANO B A AMOR DE VERDADE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e08367d9-1ed7-48aa-8f7e-0c708b8cdbc9', 'ESSA DOUTORA É BRABA DEMAIS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4d90086b-847e-4274-a09b-3c2e50d20a90/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T04:07:04.222+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ESSA DOUTORA É BRABA DEMAIS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fd0c1afc-d7b7-4983-b553-9466d9658f5e', 'CONTRATO DE CORAÇÕES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ab0a1653-4d3b-4939-a10f-de180445d556/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T04:06:04.25+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CONTRATO DE CORAÇÕES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3ac1c691-aef5-40e5-b18e-6375f57324a5', 'O PREÇO DA OBSESSÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0fb74769-8f3b-49ab-8b9a-7a1685103062/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T04:05:00.798+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PREÇO DA OBSESSÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8d0006f0-e3af-4faa-9a0f-a630d2012879', 'O AMOR QUE NÃO SOUBE CUIDAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2f13d1e3-5ff6-4d43-aae3-209cc867acb9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-22T04:03:51.837+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O AMOR QUE NÃO SOUBE CUIDAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b1c98575-c99c-42a2-ac08-2bb83c0d7a9e', 'A TUTORA E O REBELDE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/94c7df8e-a67b-4875-a85a-533da72e8374/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T04:02:54.338+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A TUTORA E O REBELDE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b858a7c0-11ba-49b3-b74f-e0e9d04d817a', 'QUANDO MEU EX SE TORNA MEU GINECOLOGISTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9a40c9a2-1564-41f8-aa19-f8c43e48046a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T04:01:49.218+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO MEU EX SE TORNA MEU GINECOLOGISTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd1765b55-660d-4387-80ed-a55e8ebdae20', 'Frequência Do Amor a 30000 Pés', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c0a45fc9-7c79-4529-891b-86992b72122b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T04:00:35.62+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Frequência Do Amor a 30000 Pés'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4bc2d1e5-b394-4c50-aa13-d071c494d198', 'MEU CHEFE O GAROTO DE PROGRAMA DE NATAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/35d7b4ee-3b9f-4bd1-bf33-31707c333b97/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:59:20.034+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MEU CHEFE O GAROTO DE PROGRAMA DE NATAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7efd34f4-665e-487e-be07-3f3008e69fe1', 'DANÇA DA VINGANÇA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/efb162df-74d1-4d87-8b60-77a7570e3f46/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:58:21.663+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DANÇA DA VINGANÇA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f5cf3ee4-7953-4e34-913a-54a26ad770fd', 'NOS BRAÇOS DO CHEFÃO DOMINANTE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5fd02715-4070-4fe8-971e-7c06dbc7aeac/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-22T03:57:10.934+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NOS BRAÇOS DO CHEFÃO DOMINANTE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '686ca4bc-6316-43d6-8b66-3160ff29e9c9', 'O PLANO DA SENHORA NAN PARA ESCOLHER UM MARIDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0bda4c84-19d9-4303-a02b-97f5fc3ebd69/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-22T03:56:06.582+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PLANO DA SENHORA NAN PARA ESCOLHER UM MARIDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5b92da36-8c1f-4a14-b2f1-759dd02463ae', 'AS PALAVRAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ac91a06c-e3b1-4b70-b47d-0fec8f8f9ff9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-22T03:54:43.425+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AS PALAVRAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dc70b2bc-6213-4973-8de9-e375b64cdf38', 'Call me Stempmom Fxxkboy', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de54fbc9-5f77-43e3-b587-a91bb022864e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:53:35.075+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Call me Stempmom Fxxkboy'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c4daf819-c1b9-4ffd-b43c-5236f2b7e180', 'ELE CHEGOU TARDE DEMAIS PARA SUA MAJESTADE DA MÁFIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1303a9d6-f431-4179-84aa-5dc2e7d3b56f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:51:59.331+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ELE CHEGOU TARDE DEMAIS PARA SUA MAJESTADE DA MÁFIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b9364b56-520c-4a8f-85dd-8c88552f2a41', 'Dont Lecture Me Kiss me', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9f5c32ef-b477-4694-8c57-fb21112f1f48/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:51:10.851+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dont Lecture Me Kiss me'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f0e5e62a-8801-4a28-8731-aa0705b2e195', 'ENTRE O DESEJO E A DOMINAÇÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8def97e5-dd8e-455d-b586-48533529179c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-22T03:49:44.45+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ENTRE O DESEJO E A DOMINAÇÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e8e66b79-7fc2-4b77-ab78-5a42d00a9d3e', 'O REI FADA É O MEU PAPAI SOMBRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3dcb0b4c-4538-450b-8d37-35e61cdb0d2c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:48:45.04+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O REI FADA É O MEU PAPAI SOMBRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a67112f5-da2d-40d5-913e-0ad4baf5b8ed', 'My Poor Husband Is The Real Boss', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/239981bc-2878-4e46-8831-bda15f8ec8d4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:47:37.711+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'My Poor Husband Is The Real Boss'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'baebe379-1a6d-470f-af03-cb77de3c7416', 'A VINGANÇA DA ESPOSA DESPREZADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2994cf8b-93af-47ea-a7eb-c3fa9c7c8c22/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-22T03:44:34.4+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A VINGANÇA DA ESPOSA DESPREZADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '199f00f9-7d2d-4653-9abe-22823422720f', 'A DEUSA DOS FIOS NÃO OLHA PARA TRÁS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/05a74d7e-ccef-4995-bfcb-56b67d2a40c5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-22T03:42:44.153+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A DEUSA DOS FIOS NÃO OLHA PARA TRÁS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '70f7e47e-7e75-4024-ae52-011aec6b5a1c', 'A MENTIRA DE TRÊS ANOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cb0d9953-fc7f-4815-8568-54f11e4e70be/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:41:47.223+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A MENTIRA DE TRÊS ANOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dcccd556-1395-4f32-86f8-f225feaaf983', 'FRAGMENTOS DE LUA NUMA TERRA PURA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8a57ba8d-a609-48f3-b358-fde2308c8eab/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:40:52.071+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FRAGMENTOS DE LUA NUMA TERRA PURA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd03fa8d0-9cda-4ddc-891e-47662f195f05', 'EU NÃO QUERO O DIVÓRCIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/63a93a78-1609-4b17-bf44-6e0517ed827f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:39:47.396+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EU NÃO QUERO O DIVÓRCIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '96f2fc5b-45ac-4ee1-83bf-a675bd76a53a', 'ADEUS AOS VELHOS SONHOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f3c4f972-8a16-4fce-8c60-83d28100187b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:37:13.762+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ADEUS AOS VELHOS SONHOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f5f679a2-226f-4946-94f7-8187e0566918', 'CASAL RELÂMPAGO NOS ANOS 80', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/60f625bd-3561-4db3-9ec0-24600cb069c4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-22T03:35:55.278+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASAL RELÂMPAGO NOS ANOS 80'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '795d8454-4098-488e-a4a3-de4ed8338123', 'UM CASAMENTO ENTERRADO NAS MENTIRAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/58eef9ec-1ab3-43a3-b0ac-4ac3adb1eacf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:34:57.954+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'UM CASAMENTO ENTERRADO NAS MENTIRAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e337c844-ef17-4a16-aca4-77af710ee6a0', 'É TARDE DEMAIS PARA A MAJESTADE DA MÁFIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7c3fea0b-7f72-4fdc-99a4-e36ae2428ef6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:34:00.466+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'É TARDE DEMAIS PARA A MAJESTADE DA MÁFIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ad98ebe8-1125-44d3-9071-c2179c1d21c8', 'A ÚLTIMA LIÇÃO DA AVÓ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/49877510-f15e-4d16-adb0-1726dcab5dc5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T03:31:39.575+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A ÚLTIMA LIÇÃO DA AVÓ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'deb2e980-917a-42ba-af5c-5c7f79e7f583', 'Kissing The Wrong Brother', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/09737abc-940c-4016-8b48-0b014a76ce85/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-22T01:05:58.962+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Kissing The Wrong Brother'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '71e1807e-fb66-4bb2-a1a1-1f6858672e2a', 'SETE IRMÃS PODEROSAS UM POUCO AQUÉM DO MEU PODER', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bde9ae45-a9c9-431b-91cf-f1507ef46edd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-21T00:21:33.906+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SETE IRMÃS PODEROSAS UM POUCO AQUÉM DO MEU PODER'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'abe6ee60-2256-49f3-9d0b-b6dab1deabf0', 'AURORA EM CINZAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f6b2944c-7f7e-45c6-a7e9-6cab5a2a6dcb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-21T00:20:22.275+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AURORA EM CINZAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '392013b0-d2ae-4a0f-9137-07a3793d7397', 'DESTINO IRREVERSÍVEL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/23b33d5a-9bbd-4771-bd3e-19c8e6fe745f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-21T00:19:44.641+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DESTINO IRREVERSÍVEL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd3fb8109-795b-4348-b8cb-b80bb14d11b9', 'ESPERANDO POR UM NOVO COMEÇO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3e5193d1-6f9c-45b7-8667-11eacae9cd07/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-21T00:18:59.926+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ESPERANDO POR UM NOVO COMEÇO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f2b727e3-aeea-4188-be74-e092b6ea9f8a', 'The Single Mom and Her Mr. Swipe Right Full Movie', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c56036e3-ab62-426f-ac9a-c1754a43c03f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-21T00:18:03.712+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'The Single Mom and Her Mr. Swipe Right Full Movie'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '90d053c4-378b-4f00-9e24-58dfac6c4183', 'The Thorn in His Rose/O ESPINHO NA ROSA DELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e1cf2abb-20b0-4d0f-9f2c-0001f3f67edd/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-21T00:16:54.51+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'The Thorn in His Rose/O ESPINHO NA ROSA DELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3c5e7c0f-7815-4b12-a3ad-94f244db4be5', 'O PASSADO NÃO PERDOA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/00e6f308-d6fc-42e6-bc86-b13b7166daf0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-21T00:14:05.267+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PASSADO NÃO PERDOA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '25808b26-04de-43be-8d0e-c471eaa187fa', 'Marido 200 Kg De Ódio Para Calcular', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/28d52a3e-9ce9-4d16-a564-d9b1ed90019e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T21:48:47.245+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Marido 200 Kg De Ódio Para Calcular'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '21f2702a-1014-48cf-bc77-385d97cb6d82', 'HERDEIRA OCULTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d24d146d-b9f4-4245-919c-7c209589958f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T21:48:08.561+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'HERDEIRA OCULTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c08d36f3-e7f3-4e62-8d82-fe02a1bd6f9f', 'QUEIMANDO DE PAIXÃO PELO HOMEM QUE ELA AMAVA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3c977f17-7f6d-4de4-a728-3778dbc22902/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T21:47:12.395+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUEIMANDO DE PAIXÃO PELO HOMEM QUE ELA AMAVA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bf8cff91-df4e-4c03-a95d-f1532864974f', 'VOZ INTERIOR DO BEBÊ AGARRA SE AS ABAS DO PAPAI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d81e338e-bbae-4622-98e3-6db0659befb7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2026-01-19T21:46:24.143+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'VOZ INTERIOR DO BEBÊ AGARRA SE AS ABAS DO PAPAI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4228745d-08ca-4580-84b7-34dbe6335531', 'O MUNDO ME DEU VOCÊ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/58247852-51ef-4f00-941c-ed151b5789cd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T21:45:11.495+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O MUNDO ME DEU VOCÊ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd77c4707-3bb4-4725-9fa9-3cb46d17daec', 'CHEGA DE FINGIR NA VERDADE SOU SUA SOGRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/af6fbe10-f3e5-44fb-9f79-45f10de7da1c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T21:44:25.624+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CHEGA DE FINGIR NA VERDADE SOU SUA SOGRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8a8a42af-e9db-4a39-bb9c-bb23cf7aae33', 'AO SEU LADO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/db575fc0-248d-4532-85a9-f86d30b31a44/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2026-01-19T21:43:11.025+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AO SEU LADO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '86076eb9-55b2-423c-950b-a7165997f083', 'A VIRGEM PROIBIDA DA MAFIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bfb74e11-9ac5-44c5-955c-18f592ab862b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T21:37:46.642+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A VIRGEM PROIBIDA DA MAFIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '94a883ea-8ae0-488e-93ce-1bd247569f99', 'VOCÊ ME IGNOROU MAS AGORA TODOS ME ESCUTAM', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c10d740d-5f65-4b41-8e41-28f71f128cfe/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T21:35:12.459+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'VOCÊ ME IGNOROU MAS AGORA TODOS ME ESCUTAM'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8e50ef85-efa0-4435-b1e8-c3bc85c72e39', 'VINGANÇA DE UMA NOIVA ENGANDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b4c24b83-5ad0-474a-a13f-b6ffdab6abf3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T21:34:28.277+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'VINGANÇA DE UMA NOIVA ENGANDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cfeb875d-e37a-4578-8a95-d9ed443d4a36', 'Eu Sou A Lenda', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1ec0ca49-81e1-4708-8ec7-7881e274f4ef/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T21:32:46.296+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Sou A Lenda'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6aaec47b-9cf7-4e2b-ac27-311d395f1fe7', 'DE PLANO B A AMOR DE VERDADE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/768bfa34-8900-47be-8531-9ea29ca74bfa/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T20:30:26.365+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE PLANO B A AMOR DE VERDADE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cc61939f-995a-464d-a17c-dd68ce481b76', 'CASEI-ME COM INIMIGO DO REI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5908ccd9-fd2f-413b-b100-de250093f3a4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T20:19:02.158+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASEI-ME COM INIMIGO DO REI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '783c6b9a-7738-4e7e-8549-676a672e4342', 'RECOMEÇO NOS ANOS 80', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f37ac08b-1e13-4a60-92e0-3369272d3a54/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T20:17:52.108+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RECOMEÇO NOS ANOS 80'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd0538494-0a67-43dd-9e10-1b9192f78a68', 'PLUMA DOURADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c4f6bec9-442b-4bfb-a246-d77789255688/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2026-01-19T20:16:24.661+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PLUMA DOURADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8dd08240-87c9-436b-815c-71cb20429a29', 'DO SUBMUNDO À SALA DE AULA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8f91f02a-5ad8-4118-b58b-376d53997241/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T20:15:39.558+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DO SUBMUNDO À SALA DE AULA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '58894d7b-f9cd-4678-b0dd-ffbe0cf8acb1', 'QUANDO A AMIZADE DE QUEBRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8463f6dd-613a-4a21-a7ba-d2c93d2a0133/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-19T20:14:54.892+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO A AMIZADE DE QUEBRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2906fd62-c984-4198-9d38-16c738d61ec5', 'OLHO DIVINO PODER SEM LIMITES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ee73562a-9f51-45a5-a55a-a10a5c522cbd/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-18T01:37:58.279+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'OLHO DIVINO PODER SEM LIMITES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b7a4cb60-35c5-4925-8db2-89f83f44bdfa', 'DEPOIS DO LEILÃO CASADA COM O INIMIGO DO MARIDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1bad4448-de89-45c0-96af-7850cd7d071b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:36:50.804+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DEPOIS DO LEILÃO CASADA COM O INIMIGO DO MARIDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f3e6fa08-c680-4272-9389-ebb67c7158ef', 'Retorno aos 18 O Meu Reinado Sobre mil Terras', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eb007526-d631-4c7b-94a7-8260f7e5a4b3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:35:32.741+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Retorno aos 18 O Meu Reinado Sobre mil Terras'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5a32c623-5baf-4461-b6b3-c779ced0d9f1', 'PROMESSAS DE AMOR DO CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/63fb656a-ed3c-479d-bc79-b1034fb75e91/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:34:38.206+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PROMESSAS DE AMOR DO CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fb68549b-7fe6-47fe-87d5-af2c187b260b', 'FLECHAÇO ENTRE LUZ E ESCURIDÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d245d1d6-c88d-4568-8ea7-86fb4951407f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:31:49.164+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FLECHAÇO ENTRE LUZ E ESCURIDÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '27ba406a-5d2c-4f31-b433-1cb0556f2bd9', 'MINHA ESPOSA SUPER PODEROSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ad389385-12aa-42c6-acfb-6ea17477c6fa/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:28:59.503+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MINHA ESPOSA SUPER PODEROSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1f64f268-cdb6-48c3-95fa-41d558c31408', 'MINHAS LÁGRIMAS SÃO ÁGUAS PASSADAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b408c6fd-c937-409c-b055-79b60579182b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:28:01.572+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MINHAS LÁGRIMAS SÃO ÁGUAS PASSADAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bf85364b-f8bd-49c9-afc3-85aa86f59492', 'A LUNA PERDIDA DO REI LYCAN', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ba85fa59-6617-456f-95b2-3822b7380ade/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2026-01-18T01:26:55.359+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A LUNA PERDIDA DO REI LYCAN'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e7ef73e8-0b54-4d1e-b0f7-3a18dcecbc5e', 'OLHO CELESTIAL ABERTO TUDO SE SUBMETE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ee73562a-9f51-45a5-a55a-a10a5c522cbd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:25:43.55+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'OLHO CELESTIAL ABERTO TUDO SE SUBMETE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '83e87aca-8232-44a6-a14b-3b9aa2902ee8', 'O APOIO DE UM PAI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c4289989-27b0-4cc0-8855-8eed46c78a26/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:23:55.105+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O APOIO DE UM PAI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '24771e19-5859-4308-a029-402212484b3a', 'PAPAI ESSA CRIANÇA NEM É SUA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/80c81567-7b68-4180-9672-a42f887e0eeb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:22:08.321+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PAPAI ESSA CRIANÇA NEM É SUA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6be80e60-dbd9-4bdf-ae7a-9c96c5241f67', 'CAPTURADA PELO JOGO DELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1dfad165-f316-474a-9ca5-862612c45b60/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:19:59.85+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CAPTURADA PELO JOGO DELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7765f053-55e9-438e-b449-1cc58f4879a8', 'O DRAGÃO E SUA RAINHA PERDIDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3f1654bf-a6f0-48cc-a9fa-853bb21153d1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:18:53.849+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O DRAGÃO E SUA RAINHA PERDIDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8371c7d5-25d7-4414-8e03-d9ddb3d5c5d8', 'PATRIARCA CRIADOR MEU SANGUE INVENCÍVEL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/40be1205-65ad-43a2-832a-f16fedff28ed/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:17:54.762+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PATRIARCA CRIADOR MEU SANGUE INVENCÍVEL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9bc7d8db-7fd2-45d9-9e5d-2c3d9a73da73', 'QUANDO EU TINHA 18 ELE 30', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/62b93f8c-1c7a-4ca3-a4b1-c61e71bbdf61/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:16:22.442+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO EU TINHA 18 ELE 30'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd33fc68d-599e-492c-984a-5e1f4e105b1a', 'A CADEIRA MISTERIOSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eb0c5b31-807a-4ced-a927-e14f6cfee3e5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:15:39.146+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A CADEIRA MISTERIOSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3e29d508-c853-42c0-bdbf-a0a43d6a4c02', 'O PAPAI ESQUECEU MAS A MAMÃE LEMBRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8d2e55f3-fbed-408b-a225-82737ffa15ba/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:14:53.607+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PAPAI ESQUECEU MAS A MAMÃE LEMBRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c13413c5-2935-41be-8759-d79343eb23f6', 'SR RYAN O BEBÊ NÃO É SEU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2249e94d-e2ce-402e-979a-aadf660c6564/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:13:53.932+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SR RYAN O BEBÊ NÃO É SEU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bafe0ba8-a6d6-4e52-9655-5bcf68d4b0ff', 'TESOURO INFINITO NO APOCALIPSE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3e457b07-3ae6-4abe-bdbb-233b61c49f2f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-18T01:12:05.897+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'TESOURO INFINITO NO APOCALIPSE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2523a684-932f-432c-8ac8-eee08a31a5ad', 'A Brisa Que Não Espera', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/550585ad-fb3a-4aad-9779-db11b62f9af5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:11:13.856+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Brisa Que Não Espera'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '28bd9e8e-9d4a-4747-bd75-805d8535b265', 'HERDEIRA TROCADA PELA MELHOR AMIGA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8aa24fd5-5fd4-4183-93b9-232978f9db7f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:09:46.857+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'HERDEIRA TROCADA PELA MELHOR AMIGA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bcf77c19-078b-48d0-929c-5578ae8b8284', 'ALGORITMO DA VINGANÇA DO GÊNIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/232f1d0e-702f-473f-82e9-826a14b346e7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:08:44.328+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ALGORITMO DA VINGANÇA DO GÊNIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2f396063-6dec-43d8-a7a2-3953d42a8437', 'OLHO CELESTIAL ABERTO TUDO SE SUBMETE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9f41151a-5405-4fdb-ac5d-479150a16883/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-18T01:07:13.61+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'OLHO CELESTIAL ABERTO TUDO SE SUBMETE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4275c48b-bee2-4542-96c6-f62953f2296d', 'O OUTONO EM QUE EU NÃO VOLTEI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/967773fe-d91b-4100-bee3-59bc0756076c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-18T01:06:25.463+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O OUTONO EM QUE EU NÃO VOLTEI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c1ec420e-2fd1-492f-a231-8d0ed598fad6', 'I Thought You Were Him/EU PENSEI QUE VOCÊ FOSSE ELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cdd514b9-b36a-41ad-935b-767dc7e995d9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:05:30.627+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'I Thought You Were Him/EU PENSEI QUE VOCÊ FOSSE ELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a6aaff7b-9e03-4aff-ae36-42baf8b9ec44', 'Amor Em Palta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ec5f8f85-3d53-4c64-8547-6928575c5409/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:03:53.464+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Em Palta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '15a45d96-f4f6-49bd-82be-37ac02a6269c', 'A PREDILETA MALUCA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1b98cc05-cf43-4964-aa6c-bbcaa9065bbb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-18T01:03:04.293+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A PREDILETA MALUCA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '13408b02-2d5f-47e8-bb06-559497a0efe9', 'DIGA ME O QUE VOCÊ QUER', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/13c3ed2a-596d-43da-af39-8c56f6c234ef/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:02:10.891+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DIGA ME O QUE VOCÊ QUER'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '257b9bcf-c98b-4ff2-b22c-8dfc02a482de', 'Divorced Then Find My Mr Right', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2ded2b73-1bbe-4908-bd23-ea205d367243/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T01:00:51.112+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divorced Then Find My Mr Right'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '76f5b155-d4f8-443c-b5fb-2ac5855fa9b3', '99 PROMESSAS DE AMOR UM ADEUS EM UM SEGUNDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/09acad64-0970-47bc-90e4-702f6d25c382/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T00:59:17.896+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '99 PROMESSAS DE AMOR UM ADEUS EM UM SEGUNDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ed6d3d4d-2261-45c1-aa44-b1dccbf30866', 'AMOR APÓS AS GRADES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b14e08ee-b6d6-48fe-8f39-0745c7cb8a86/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-18T00:57:23.631+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR APÓS AS GRADES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd5852cf7-4c4c-47ef-98ef-a537879ae5e9', 'DIÁRIO DO ENSINO MÉDIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/35bc08aa-9464-4f24-96f2-249e7efd2a17/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-18T00:54:10.147+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DIÁRIO DO ENSINO MÉDIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba6addcb-7d76-4386-b8f6-0faa64b0e764', 'OLHO DIVINO PODER SEM LIMITES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9ca675bb-fe0a-4ec1-9691-a94e2edfb584/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T00:53:04.959+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'OLHO DIVINO PODER SEM LIMITES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd6b1c9fa-aed0-4eaa-ad4b-9d1dc15e8474', 'SOB O FEITIÇO DO DESEJO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3f97a7fd-152f-4973-ab76-a2ef6d58eddb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T00:51:26.445+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SOB O FEITIÇO DO DESEJO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4008139f-9f20-4e60-9d19-60aa047fffd8', 'O NOIVO FUGITIVO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ffc5b2f1-44c9-4e07-8b0e-19460fe5163c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-18T00:47:41.084+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O NOIVO FUGITIVO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1047fc3c-1bb3-4733-b001-2a3bce74dffd', 'AQUELE BEIJO ME ACORDOU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/576e972f-3d80-4e26-bae3-da3807fd3a12/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-18T00:45:59.146+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AQUELE BEIJO ME ACORDOU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd1d10ac6-e04a-4c1c-a76d-e15af3e05a78', 'Moonlight Rust', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f89cafd7-0d3a-4828-bc7e-4d3e39cc22fd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-17T00:23:27.648+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Moonlight Rust'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a2f3d9ec-dc62-4bbc-9f98-0b53809ddd06', 'Mafia Daddy  Next Door', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/30704a7e-d844-4770-a03a-eb66e5b95ab6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-17T00:22:35.33+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mafia Daddy  Next Door'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b3da66e8-20df-48ce-9ce3-7a7a7845e237', 'DE FALSO A ETERNO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eae10ce5-e391-406b-a2b8-420619ef9174/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-17T00:19:11.937+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE FALSO A ETERNO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '695daded-712d-469e-9b6b-4eae87c19ed4', 'O ENGENHEIRO QUE ELA TRAIU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e464c1d7-ef90-4ca2-a236-1724b8828d96/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-17T00:18:35.555+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O ENGENHEIRO QUE ELA TRAIU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f2aa45c1-dd27-4b01-801c-183debe6cb75', 'ELA ESCOLHEU ELE PERDEU TUDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f8755de6-c42f-49c1-8305-9f3bb4571507/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-17T00:17:55.319+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ELA ESCOLHEU ELE PERDEU TUDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1188d725-27ba-4ec7-b1bb-82a7b2c4d714', 'SR LORDE QUE DESAFIOU O SANGUE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/95deb12e-2631-440f-8621-56f34038aa77/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-17T00:17:07.966+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SR LORDE QUE DESAFIOU O SANGUE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8d6a9a6d-3286-47f7-9451-7fecc4a23b70', 'A LIÇÃO MAIS DOLOROSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/41948888-96e0-40d4-aa9d-e8c02ebd2482/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-17T00:16:00.644+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A LIÇÃO MAIS DOLOROSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6dda4fc4-8dbb-409d-aeb5-2738bd6119d0', 'SAIA DA MINHA FRENTE A RAINHA DA MÁFIA RENASCIDA ESTÁ AQUI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dc2c7a5a-312f-478a-aba4-17e82193518d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-17T00:12:12.795+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SAIA DA MINHA FRENTE A RAINHA DA MÁFIA RENASCIDA ESTÁ AQUI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '85c8222b-b7b6-40b7-914a-b490d877171c', 'Sem Ela Meu Mundo Desaba', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/69c0163f-5fc0-40c6-899b-6a41db2f405b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:49:16.054+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sem Ela Meu Mundo Desaba'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3747a360-6e30-4029-87b0-c2b6f9e98f1f', 'THE ONE I WAS MEANT TO MARRYA/A PESSOA COM QUEM EU DEVERIA ME CASAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b7e33170-e057-450c-92b9-c302af1a32b5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:48:17.74+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'THE ONE I WAS MEANT TO MARRYA/A PESSOA COM QUEM EU DEVERIA ME CASAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c0576c1-04e1-4c3b-8b72-5b47e96490ec', 'SUBSTITUTA MAS QUE RENASCE NA SOMBRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bcd4d6f4-89ce-4b0b-9132-39cd0844d29e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:46:38.124+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SUBSTITUTA MAS QUE RENASCE NA SOMBRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f31dc587-301d-4369-af53-146ad4dc3035', 'SOMBRAS DO PASSADO LUZ  DO AMOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7476fffe-08b0-4477-bab9-42999afdb933/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:45:14.809+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SOMBRAS DO PASSADO LUZ  DO AMOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7253931e-21dc-40ad-9138-b5285dd8fd32', 'Atormentada Pelo Amor Dele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9c745ccf-9897-4e2a-8567-67dec8f346be/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-16T23:44:28.471+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Atormentada Pelo Amor Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '83e91322-b680-4979-8c59-bbacc3aba748', 'NOSSO LAR NOSSO AMOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/28938aaa-dc8f-41f6-b974-70dc26e140cb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-16T23:43:33.426+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NOSSO LAR NOSSO AMOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e25c0d8f-bdfc-48d9-971e-f2c6105ff3d0', '99 PROMESSAS DE UM AMOR UM ADEUS EM UM SEGUNDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/edfc7cca-eda1-48c6-87fe-e79152b0f80a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:42:42.996+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '99 PROMESSAS DE UM AMOR UM ADEUS EM UM SEGUNDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1601e92f-8921-4484-a7c0-f053fb187237', 'LUA BRILHANTE NO ALTO JÁ ME ILUMINO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9d000a0c-72bf-4044-b903-27b7b91ff09f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:41:07.683+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'LUA BRILHANTE NO ALTO JÁ ME ILUMINO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7a69414a-3338-40c7-bda5-44ef1bd293e1', 'UM CASAMENTO FALSO CINCO ANOS REAIS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a45beb44-3df3-40d7-be5d-61bdc4d48941/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:30:52.491+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'UM CASAMENTO FALSO CINCO ANOS REAIS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '363bc265-8084-4a8b-9503-71ffbc2c54f8', 'TRAÍDA PELO MEU EX CASEI COM O IRMÃO SECRETO DELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/80aa28a0-e901-40d6-93ca-15d25d5c8a84/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:30:16.048+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'TRAÍDA PELO MEU EX CASEI COM O IRMÃO SECRETO DELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e8d37730-bf70-4fb9-afae-df7af6f60770', 'SOB A LUZ DA LUA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4423baeb-6616-47f9-9c55-d9ad56081780/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:29:40.713+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SOB A LUZ DA LUA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '845310d3-3a93-4c67-9060-a8e01921cba7', 'ANIMAL DE ESTIMAÇÃO DO PROFESSOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1917f79f-ca1d-42c2-b4d2-4243cfd4fcbc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:29:00.756+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ANIMAL DE ESTIMAÇÃO DO PROFESSOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a1fd258e-484e-4650-a44b-c32602008fea', 'NOITE BRANCA EM QUEDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/453340aa-b28f-4b4e-9bc3-0cab0d19a398/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:18:38.842+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NOITE BRANCA EM QUEDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '683e9646-00db-4b0d-9327-460f61d570a0', 'O CASAMENTO E O FUNERAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0cf993ec-e683-4269-a0ce-1734c4d9ac2d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:11:19.071+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CASAMENTO E O FUNERAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '883cf06e-87ca-476b-9d28-98b2fca226fa', 'PRIMOS DE APARÊNCIA AMANTES EM SEGREDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/15b05193-6b56-4939-aaa0-10f32da59049/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:10:41.587+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PRIMOS DE APARÊNCIA AMANTES EM SEGREDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7e2efbe8-1790-41d7-a356-06837faa7cc4', 'O DEUS DO BILHAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2c6d1e80-6dcd-4b42-b04d-6cf1283d36a2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-16T23:09:51.537+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O DEUS DO BILHAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7733c52f-769b-4d99-9318-fc7f49733a1a', 'A BOLSISTA QUE CONQUISTOU A ESCOLA DAS ELITES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/33934bb0-f941-41ed-b8f6-3a1be28b920b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:49:59.252+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A BOLSISTA QUE CONQUISTOU A ESCOLA DAS ELITES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c640507f-f886-420b-bd55-c30283653326', 'O Arquiteto Do Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a6bc1cd2-4f98-4fe7-b7e0-9b74c8dd619f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:49:16.171+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Arquiteto Do Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'de57c06c-dfd0-437a-9cf0-1e176bae3e0f', 'HERÓI DEVE NUNCA REBAIXAR-SE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/59636150-081b-4b6f-a193-4a11fafc3b11/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:47:49.82+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'HERÓI DEVE NUNCA REBAIXAR-SE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '58848a80-0e28-41de-b2ca-a9cf2b0e1cd7', 'VÍNCULOS PROIBIDOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6b296199-e32b-44ea-ba02-dbbfd3654548/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:46:54.195+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'VÍNCULOS PROIBIDOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1a0282e4-b3a1-4d13-9047-c09f0d491696', 'PAI DO MEU NOIVO ME QUER', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e58add78-79a6-4ef8-833d-2ea8d361c328/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:45:53.961+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PAI DO MEU NOIVO ME QUER'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f69c93f0-40b5-4a46-ad01-81674bff4fb7', 'UM CASAMENTO DOIS DESTINOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7a9e1aa3-6e9e-4fbc-95ca-83f646b1282c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:44:54.73+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'UM CASAMENTO DOIS DESTINOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9d5facb3-9fc5-4bae-b5d9-d23fce5e776b', 'HERDEIRO DO PARAÍSO PERDIDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/994d499d-85d7-4514-bf22-8ac7c91aa227/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:44:17.022+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'HERDEIRO DO PARAÍSO PERDIDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bab2212a-063c-4ce5-9453-78457a7af6bc', 'A CEO ENLOUQUECEU APÓS SUA DEMISSÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/05c8c13d-6d22-4c81-9dcb-8315f765b417/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:43:38.896+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A CEO ENLOUQUECEU APÓS SUA DEMISSÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f289f791-f610-4f06-ae76-61d06d1040b9', 'A MISSÃO DE PROTEGER MINHA MÃE.', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e1f1afc5-b468-4161-b0b5-130bcd36e654/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:42:55.816+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A MISSÃO DE PROTEGER MINHA MÃE.'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cb140a2d-5d68-40b8-8e6b-d2551cd53e52', 'RENASCIDO NO CLÃ SEM EMOÇÕES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1af4fea8-3f72-46ce-8fde-010624c7ad22/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:42:07.498+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RENASCIDO NO CLÃ SEM EMOÇÕES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c9c0062d-b408-4a1c-b928-a46674319728', 'A ESPADA QUE ABRE OS CÉUS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4325dfc0-415b-4f37-9269-c1d7af993453/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:41:22.843+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A ESPADA QUE ABRE OS CÉUS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5aa267c8-cf3a-41c6-870e-62d2ac93cb6f', 'A RIQUEZA OCULTA DOS MEUS PAIS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/86ce0694-a17b-4c3c-936e-4b7252c7ad7f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:40:32.111+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A RIQUEZA OCULTA DOS MEUS PAIS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '325441e6-60b8-4004-b646-7cda3033c98b', 'Encontro Marcado Com o Passado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f83bdce7-b2a3-4614-882c-ac9e25e171de/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:39:35.303+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Encontro Marcado Com o Passado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4cba02d5-de8d-42d5-9f24-01a6905014cf', 'PENSAMENTOS REVELADOS A VERDADE DA FILHA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e8acc86a-29f2-48f7-b056-4bb2bf1aa196/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:38:48.467+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PENSAMENTOS REVELADOS A VERDADE DA FILHA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'be407274-1111-4f86-b06a-4407aa79ad38', 'DEPOIS DO AMOR NASCE O IMPÉRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2520d9ef-e838-4d70-b3b7-f84f4d10e138/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:35:11.312+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DEPOIS DO AMOR NASCE O IMPÉRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8b8cb7eb-dd29-43a3-ba93-9c227c294b8f', 'AMOR COM NOME ERRADO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8336ff32-3f36-4f9b-b895-97bf0f37d34c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:34:19.686+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR COM NOME ERRADO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd034a0ff-ff4b-4c5b-956e-08fc90a8f9d9', 'De Caso Com o Chefe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ca0d8cfa-78c7-4d98-974b-219f64b18381/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:33:35.203+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Caso Com o Chefe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '172d2070-126a-4f95-9047-02996976d9fe', 'APÓS O DIVÓRCIO CONSTRUÍ UMA VIDA FABULOSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aed3efec-377f-4948-88a9-d6027ce9c76e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:32:43.949+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'APÓS O DIVÓRCIO CONSTRUÍ UMA VIDA FABULOSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6596677f-a712-4670-b80a-1de7c9ad6ec6', 'O PREÇO DE TE AMAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/02bfe286-bc6d-4f9c-9750-24d0f92d9959/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:31:51.469+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PREÇO DE TE AMAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f466a83c-7717-4d87-954f-c2ce8c755945', 'A SPLÊNDIDA RENASCENÇA DA EX ESPOSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3cc96563-3e33-464b-b0de-2e488dc9182e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:31:07.635+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A SPLÊNDIDA RENASCENÇA DA EX ESPOSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '26f94fd0-8488-4e2e-a050-0484a0375d4c', 'Esposa Gordinha De Sorte e Os Cinco Tesouros Do Céu', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/49e4437a-9e40-4998-8b07-53f4fb6b03f8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-15T21:30:21.469+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa Gordinha De Sorte e Os Cinco Tesouros Do Céu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd0783bf3-2343-4e63-9704-b090cb952cdc', 'BEIJO DA MEIA NOITE OBRIGATÓRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ec0ed24c-4362-4b03-97e3-719b5c57d72e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:29:06.09+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'BEIJO DA MEIA NOITE OBRIGATÓRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fd71a797-9daf-46b2-b39c-1589dafec4df', 'COMO SE LIVRAR DE UMA ESTRELA DO FUTEBOL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/167806c0-9ff3-4a4f-83db-5134838ed559/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:28:01.104+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'COMO SE LIVRAR DE UMA ESTRELA DO FUTEBOL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f12bf521-36ca-421a-85be-e420f9fbb5f9', 'ERA TARDE DEMAIS PARA PEDIR PERDÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4394ba03-a081-4e08-91d7-26813010dd40/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:27:15.784+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ERA TARDE DEMAIS PARA PEDIR PERDÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '48580bbd-dab2-45fd-ac9f-3596d7dc06e6', 'MEU SEGREDO DE DRAGÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6d17de9a-9632-490d-9568-392e50572b95/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T21:26:31.217+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MEU SEGREDO DE DRAGÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0b127503-1c4f-4fd0-ab0c-0eb35beb3bd6', 'JURAMENTO DE PARTIR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/972d34fe-aadc-450e-8cdc-4c751bac9bb2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-15T20:17:48.823+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'JURAMENTO DE PARTIR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd4306888-5983-4713-923e-6a015aabfef6', 'O MAGNATA QUE FINGIU SER MENDIGO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b76ecd74-c64a-4f9c-b72e-f67984cd1dfb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T01:18:18.794+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O MAGNATA QUE FINGIU SER MENDIGO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '02c90822-d5c1-4c4b-beb9-d90a7ae14d8e', 'SUBI DE VIDA AO TER OS FILHOS DO CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0ed328d7-70c8-4a55-b79d-acf9b3d78188/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T01:12:29.274+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SUBI DE VIDA AO TER OS FILHOS DO CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '510f7dc6-d06d-4b84-a9e9-0584d25c97bf', 'UMA VÉSPERA DE ANO NOVO REAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d120aae4-5427-46f7-ad82-41fac14f06bb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-15T01:11:39.943+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'UMA VÉSPERA DE ANO NOVO REAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fab1edb8-4932-47cb-89e2-39f6d11189ba', 'Outro Amor Fora do Tempo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/71adcd23-ecd3-46be-9117-5fa552c2e9f2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T01:10:51.878+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Outro Amor Fora do Tempo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5a8b6480-6d87-449b-af31-dccdbfa99fcc', 'QUANDO O AMOR SE FAZ PRESENTE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2049b9e8-41e4-42ed-9d90-95db7eb961c0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:53:16.935+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO O AMOR SE FAZ PRESENTE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '64fea31c-8129-4eaa-a39b-abd07009d947', 'GENRO NÃO ELE É GUARDIÃO DOS TRÊS MUNDOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/594426bc-720d-49d5-85bb-e42d2d9a1de8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:50:57.649+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'GENRO NÃO ELE É GUARDIÃO DOS TRÊS MUNDOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e93ff9f3-ce3a-439f-9f7b-5f64c9d0af0b', 'MARIDO PEDE PERDÃO APÓS A TRANSFORMAÇÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/85257845-0d2e-4c82-9b3a-02e907e28db7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:50:18.293+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MARIDO PEDE PERDÃO APÓS A TRANSFORMAÇÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '89d71076-95f0-40db-beb9-6f12df04ae7a', 'NOIVA TROCADA DO REI ALFA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8403de22-7a1e-4d5c-b02f-07b20dd21ef2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2026-01-15T00:49:26.331+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NOIVA TROCADA DO REI ALFA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '82a95452-c182-458c-8b09-7af8448221c0', 'Um Encontro Feito No Inferno', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3fd0af12-f480-41f4-8e0b-aec9e9f6db80/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:48:31.192+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Encontro Feito No Inferno'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2496faa3-1cbe-499e-9be3-759e376ebc05', 'TE AMO TODA SEMANA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/535e05e9-533f-4c25-9759-5b730bd79932/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:47:50.682+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'TE AMO TODA SEMANA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1251f559-b2b4-4165-964f-8cd1516023a8', 'O ARCO ÍRIS DEPOIS DO CHORO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/14badcfa-1f7f-4f99-a77d-e44b07b35429/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:47:05.626+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O ARCO ÍRIS DEPOIS DO CHORO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '85139fac-87cd-4afb-a942-79b7a464c8ce', 'PROTEGENDO MEU JOVEM GENERAL DE ROSTO FRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b9faa70f-b5ba-472d-80a9-ce37b6a79e65/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:46:21.328+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PROTEGENDO MEU JOVEM GENERAL DE ROSTO FRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e729c398-7744-42e0-a88c-c32bb7c7dd30', 'LÂMINA NO CORAÇÃO DE INVERNO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ff0fbeb1-e4a5-4b48-b673-c2dca9f9095d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:39:50.082+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'LÂMINA NO CORAÇÃO DE INVERNO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f13505c1-24c1-4b8e-9409-d894ec48ab9d', 'Núpcias Erradas Combinações Perfeita', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e2d1d3de-997b-4f8c-8459-45eef351b133/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:38:57.841+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Núpcias Erradas Combinações Perfeita'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '793ca076-4f9d-4f6d-ada6-cdf8584fe256', 'O RETORNO DA EX-ESPOSA E DO FILHO DEIXA O CEO FU FURIOSO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3527f6b3-975e-4c33-99cf-317b2ecc6601/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:38:05.873+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O RETORNO DA EX-ESPOSA E DO FILHO DEIXA O CEO FU FURIOSO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '373524c6-c9bf-419e-83d4-f546591732fd', 'CORAÇÃO EM CONFLITO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a9b7ef17-1890-40d6-97ef-9540820bf0a2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-15T00:13:07.977+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CORAÇÃO EM CONFLITO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba552a96-f5eb-4056-a7d2-8ec9e9bac9cd', 'EMPREGADA PARA AMAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ffe46d92-f5c5-45cc-919d-19100c104cbf/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-15T00:12:18.084+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EMPREGADA PARA AMAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cbfe9122-0cd9-41ce-8232-0de3b40dc5e9', 'AMOR SOB DISFARCE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/26770012-0938-497c-aadd-a02a34458693/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-15T00:11:34.017+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR SOB DISFARCE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2a2be61f-0e56-492b-8115-d4f152393035', 'VOANDO COM VOCÊ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9c15c94c-d188-4ce2-a876-95fa81f54b48/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T23:32:49.117+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'VOANDO COM VOCÊ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '666ad780-3405-4a72-a179-1f41e5b85ba8', 'MARIDO POBRE ERA BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2cbfa194-03c4-4501-b253-8680f5e43d44/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T23:30:34.665+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MARIDO POBRE ERA BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bee1a43c-1094-428b-8603-c15c89f011f4', 'FRIO NA ALMA  APÓS O AMOR E ÓDIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/56927e2d-fdba-44cc-b481-a559a6a637fc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T23:28:25.779+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FRIO NA ALMA  APÓS O AMOR E ÓDIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '644b4ca1-00ff-4d8b-b02b-c5a95ef4631e', 'Casamento relâmpago a preferida do ceo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a50c35d0-ca51-47a6-b21a-f11049a17320/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-13T23:16:37.035+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento relâmpago a preferida do ceo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a6a8b07b-f373-4319-be76-183b68f76eb7', 'PRIMEIRO AMOR ÚLTIMA ESCOLHA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fddea5f7-44c1-4d44-a079-525d0368148f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-13T23:14:37.941+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PRIMEIRO AMOR ÚLTIMA ESCOLHA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a9b99fc8-fd84-41f0-80ad-3426bedc89b3', 'DEPOIS DO FINGIMENTO A PERDA ETERNA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b2eca145-ada2-425d-920d-70a22c6735d5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-13T23:11:50.745+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DEPOIS DO FINGIMENTO A PERDA ETERNA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd2f44413-c447-4457-b2c4-78cb8d47ce02', 'FALSA ESPERANÇA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d317034f-7830-4d4c-bbb1-87e796004cdc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T23:07:31.078+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FALSA ESPERANÇA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5070a911-77fb-4caa-87ae-b9719f80ec6a', 'DESTINADA AO PAI ALFA DO MEU RIVAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/72ac6862-2ca8-4b01-83d6-591e6cbfe991/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2026-01-13T23:06:47.607+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DESTINADA AO PAI ALFA DO MEU RIVAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '27a8ceb9-a961-444a-a0db-b3c70d5cbdda', 'ELA NÃO É TÃO BOAZINHA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5fcd71be-3837-466e-ac5a-376792dd8bf4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T23:06:04.267+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ELA NÃO É TÃO BOAZINHA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0bb81983-1136-49e3-a03c-9174ed877183', 'O RETORNO DE BRUNO FERREIRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8949590e-9d25-4c91-bb38-76743874012e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T23:05:07.134+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O RETORNO DE BRUNO FERREIRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8c58ebcc-413d-42d6-838b-ddd3322c7f76', 'Do Peso a Glória', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cae85c68-4235-4fd6-8f0c-aab474e0fb2b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T23:04:05.035+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Peso a Glória'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '61cb0db0-a8f9-4ea2-8436-648194853fad', 'OOPS EU TE AMO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4a7d03eb-1abc-460f-9a71-c984b8613007/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T23:02:52.152+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'OOPS EU TE AMO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4ff59af7-e314-4d61-8f1d-a7e31643e530', 'PRESA AO MEU PLANO O RIVAL LOUCO POR MIM', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0f42d865-9776-4ddd-bb80-4a3113a31230/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-13T22:59:51.834+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PRESA AO MEU PLANO O RIVAL LOUCO POR MIM'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c2fb5cd8-8a04-469c-8494-a977ff9d2504', 'MINHA IRMÃ É A RAINHA GUERREIRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f23ed08a-a3e6-43ad-8ba8-aa8ef012a3d5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T22:58:34.909+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MINHA IRMÃ É A RAINHA GUERREIRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9b245a28-67e1-4b7e-89bb-ecc6028b1f1d', 'SOCORRO MEU CHEFE GOSTOSO TEM MINHAS FOTOS NUDES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/804f99bd-4d7b-4ce8-a0af-31b9bb3de776/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T22:57:33.796+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SOCORRO MEU CHEFE GOSTOSO TEM MINHAS FOTOS NUDES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bee814bf-33df-4ace-ac4e-eab1eb5bc57c', 'O CEO E A GAROTA DO INTERIOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9cbf95b3-ecb5-4270-9be9-132ab62841dd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T22:56:29.298+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CEO E A GAROTA DO INTERIOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e0263141-06ef-43ff-8e36-74bde4482dd3', 'RENASCIDA NAS RUÍNAS DA MENTIRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f971c691-cfcb-4a78-ad22-afc442c47b4f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-13T22:55:43.781+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RENASCIDA NAS RUÍNAS DA MENTIRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5c0090e9-6061-4191-bd99-8adf7c3fbf1d', 'SEM ESCAPATÓRIA DO ABRAÇO DO REI MAFIOSO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f14ad09d-6693-467c-8ff1-a5270c7ff003/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T22:04:47.683+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SEM ESCAPATÓRIA DO ABRAÇO DO REI MAFIOSO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7c33bb10-5a04-4a37-8f50-2392f8c54519', 'RENASCIDA PARA REINAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f58c1bd6-0a8c-4eb2-84a3-4986b02826f4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T22:03:55.188+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RENASCIDA PARA REINAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fd0c7058-bd9f-42c1-8949-a6fa4b7485ab', 'A MULHER MANTIDA DO ALFA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/50618b87-e65f-4bbd-876c-363d12d7c895/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2026-01-13T22:02:13.655+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A MULHER MANTIDA DO ALFA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e4b7e21b-bd8a-4296-9c4c-03dd9f26ed66', 'SURPRESA EU SOU A ESPOSA DO PRESENTE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2d17c8d4-321d-4d2d-a149-3a3174ccb3cd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T22:00:45.668+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SURPRESA EU SOU A ESPOSA DO PRESENTE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '582b00b3-5655-4bc4-906b-f3311656d076', 'A VINGANÇA DO MÉDICO GÊNIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fbf13c87-5cef-4828-a600-a44767a69160/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T21:08:54.432+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A VINGANÇA DO MÉDICO GÊNIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0ec750c1-4aac-48f0-945d-5baa5a4c6b38', 'CEO CHOCADO QUATRO FILHOS BATERAM À PORTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/03ab85c6-5d94-48c9-bf40-7261b8791c5e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T21:07:33.883+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CEO CHOCADO QUATRO FILHOS BATERAM À PORTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '44febf5d-0ce7-4a22-b7d8-dce142b30a0d', 'A CONSORTE DO LIVRO E O IMPERADOR RENASCIDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bd632a7b-eac1-4aa8-9bb3-075f6cb759a2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T21:03:27.438+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A CONSORTE DO LIVRO E O IMPERADOR RENASCIDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6167e332-203e-4564-b510-b32bbb6cb5ae', 'FERRUGEM AO LUAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5e2a1e74-5315-4bff-8bec-a006371d20f0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T17:27:37.815+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FERRUGEM AO LUAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e072ae4e-d65e-4ec1-a33b-16c12ba32570', 'Ninguém Me Para', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/05b6e4c9-3ace-4a00-a9d0-2a25165f14cd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-13T17:26:39.5+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ninguém Me Para'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2874ea07-7f0a-46d1-8b06-d71a45e80038', 'Último Pedido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0e4fa0cf-9699-48f5-ab1e-e783c04303ec/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T04:06:27.379+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Último Pedido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5811154f-9fb4-4b08-a1ee-91711e453986', 'ATENÇÃO GAROTOS A BISAVÓ CHEGOU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7f4b7eb7-ff91-475e-9d36-3886ad44a9b5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T04:05:40.793+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ATENÇÃO GAROTOS A BISAVÓ CHEGOU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9c01d0c1-b384-4b08-9d15-9c2950bb9d64', 'ADEUS AO QUE FOMOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6565656c-26a6-40eb-8704-3fe967cae42a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T04:05:02.639+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ADEUS AO QUE FOMOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '51584e79-3d26-4d53-aaed-24f94c8aeb7f', 'EM NOME DO SEU BEM', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/37ded7d0-d0c0-4489-9ec6-cc835f72e2c7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T04:02:46.577+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EM NOME DO SEU BEM'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '65ba25c4-6299-4d77-8ccb-777d7e019764', 'BRILHANTE VINGANÇA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/25b489fc-b123-4068-812d-1079ede2fc6d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-12T04:01:03.625+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'BRILHANTE VINGANÇA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dc601594-3204-4f04-9c43-ab844aabcad0', 'A CIRURGIA DA ÚLTIMA CHANCE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3aabc4e7-cc6f-4235-8f25-ea7c723d2eff/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-12T03:59:34.89+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A CIRURGIA DA ÚLTIMA CHANCE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4823ade7-4bb5-4082-afba-061abaecd783', 'O CONTRATO COM O MEU MINI EU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4550431d-50b3-4a55-921a-a6a4627841e7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T02:49:33.78+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CONTRATO COM O MEU MINI EU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '64e25399-f276-4c26-b46a-aa5b65c97cb0', 'REENCARNAÇÃO SEM PERDÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ceac6601-2b94-467a-b7d3-7d49c8eb23ca/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T02:48:52.312+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'REENCARNAÇÃO SEM PERDÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bfdf9038-3213-4db0-86da-5b4863dee3c7', 'A NOIVA QUE NÃO PODE ESCAPAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c6723488-3aab-40c7-9398-a12e3d359290/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T02:48:16.481+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A NOIVA QUE NÃO PODE ESCAPAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '393274f0-b790-44a3-bf04-b427767467a7', 'Reencarnar Nunca Imaginei', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e8876886-f8e1-418a-b39f-d631208d3112/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T02:38:47.334+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reencarnar Nunca Imaginei'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1fe12bc9-daac-4bf3-af24-58dcf52922f1', 'MEU PROTETOR INVENCÍVEL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/96de5c4c-f76a-42d3-9098-6eb05f8128bb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T02:38:02.607+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MEU PROTETOR INVENCÍVEL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '98d45fc1-6d82-4f4c-99c5-ecc16588ec88', 'A RAINHA DA CIÊNCIA DEIXA O EX CHOCADO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f217f831-1d17-42d5-8ee0-8cc5ba71cfdd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T02:36:56.351+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A RAINHA DA CIÊNCIA DEIXA O EX CHOCADO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '694cb8dc-400f-4763-b0bf-5348e805add6', 'A ROSA ESPINHOSA QUE ENCANTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a7c9b3aa-5cf1-4a4b-9cce-143eb5eaf7b5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T02:06:04.422+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A ROSA ESPINHOSA QUE ENCANTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dfb71424-5572-4e47-a6c2-29d7d7f2c72e', 'NOS MEUS BRAÇOS AMOR SEM LIMITES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e4931111-8acd-4590-a127-bb6e7b9da01e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T02:05:17.58+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NOS MEUS BRAÇOS AMOR SEM LIMITES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '86a7ad4d-a2e4-43b2-b38e-46d606588a64', 'RENASCIDA A ASCENSÃO DA CINDERELA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b2ee0668-810e-4f1c-b4c4-4c96091570f5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T02:04:40.218+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RENASCIDA A ASCENSÃO DA CINDERELA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '015c7e8d-a931-4e9d-8d2d-9b9157c51958', 'GRÁVIDA INDESEJADA E VIROU O FAVORITO SUPREMO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/203c8c09-89b0-466c-b4df-e5b0d20802f0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T01:35:43.497+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'GRÁVIDA INDESEJADA E VIROU O FAVORITO SUPREMO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9eb6eb39-d0b3-47e8-bc2e-ff0d39906a88', 'O PRIMEIRO AMOR DO PRÍNCIPE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f8626c21-630b-4a9f-916a-a4c0783652fa/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''blgl'']', '2026-01-12T01:34:48.612+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PRIMEIRO AMOR DO PRÍNCIPE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8a4ef465-8a3c-462e-a7d8-99ae08074bfc', 'QUANDO O DESTINO ASSINOU POR MIM', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a59b7746-f1ce-46ba-bd57-850e66e8cd0e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T01:33:50.497+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO O DESTINO ASSINOU POR MIM'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5d1dde3c-e3e7-4810-98af-670c2fc908c2', 'HERDEIRA DE IRMANDADE ASSUME SEU TRONO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1019ac39-cd30-4472-a312-8d87a0930aa4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T01:04:40.82+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'HERDEIRA DE IRMANDADE ASSUME SEU TRONO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1cfb5fd2-54b1-40ef-b9b7-181acd533a4d', 'Meu Diário Enterrou Meus Inimigos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/835b54f2-0213-4f08-ad0b-144fd3f40f79/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T01:04:01.021+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Diário Enterrou Meus Inimigos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9c499fda-3892-4dcb-949f-059b5c440376', 'O AÇOUGUEIRO O SENHOR DAS ARTES MARCIAIS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e93f7c8f-6a63-4962-b34b-af871d2755a3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-12T00:46:48.537+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O AÇOUGUEIRO O SENHOR DAS ARTES MARCIAIS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b9c06f15-8e29-4ece-8431-b45c3aa7ca3b', 'MINHA ESPOSA QUATRO FILHOS E EU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e7bfe232-37f3-4b96-a0d4-2a6f36d9a64b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T00:22:12.694+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MINHA ESPOSA QUATRO FILHOS E EU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7aad3776-f279-4be5-958a-9ec393a5afe1', 'QUANDO NOS REENCONTRARMOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/22963bd8-9145-42d6-b5b2-cb7b6aad1243/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T00:21:19.464+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO NOS REENCONTRARMOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9b53df8c-2f5d-4ee9-8bd2-1164db513112', 'CASAR SE COM MILIONÁRIO APÓS DESPEDIR SE DO AMOR TÓXICO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e40d7c6e-9bf5-4f34-972b-f31b087c52f5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T00:20:31.611+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASAR SE COM MILIONÁRIO APÓS DESPEDIR SE DO AMOR TÓXICO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ab703629-e306-449c-974a-ec1685389b96', 'CASO ENCERRADO O RETORNO DA RAINHA DO DIREITO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/77968e55-de11-434a-b444-f0f532e026f1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-12T00:18:58.906+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASO ENCERRADO O RETORNO DA RAINHA DO DIREITO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e4bbe743-8c1b-4cfd-9590-024eb3b4c84b', 'MEU MARIDO ERA MEU AZAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8ec99fb7-4114-4d12-a7c8-babe0a1f1889/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:44:42.708+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MEU MARIDO ERA MEU AZAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ec25f0f2-feaf-4bdd-a0fb-82861f9a6990', 'A VERDADEIRA ESPOSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dc0187aa-f12b-41eb-a8ca-d699e4f1681f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:43:02.439+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A VERDADEIRA ESPOSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '49ea017d-1112-4281-b3d1-f9e408b90d58', 'A Pequena Espiã Submissa Do Chefão Da Máfia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d8ab2e2f-1224-49f3-84c0-b6011c83f551/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:42:21.97+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Pequena Espiã Submissa Do Chefão Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '875cf932-f6e9-4c18-9c40-f94b1051914c', 'O MAGNATA FRIO CAIU NAS MÃOS DA ESPOSA ERRADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/23ff9a54-9950-40c5-9a8c-fea519d6e3ac/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:41:36.391+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O MAGNATA FRIO CAIU NAS MÃOS DA ESPOSA ERRADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9cc7d507-0f71-47bb-90d1-c1a125772a91', 'O BAD BOY E EU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/230e9d7c-4008-4496-b532-c09f3e76af5e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:39:52.464+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O BAD BOY E EU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '37e65ef1-dc7c-4191-b979-580eab5798c4', 'Siga Minha Voz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e749195d-6161-4207-aaf4-5745afd55ed6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:26:22.275+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Siga Minha Voz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e82815a4-4bc9-47ca-b6d0-89e579ed63c0', 'FELIZES ENTRE FLORES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/48775e88-cd7a-42c2-824e-5d7d699b4d4d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:25:44.968+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FELIZES ENTRE FLORES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '761acf0b-7116-44d9-a959-0816c141465d', 'SÓ RESTAM AS ROSAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bf1821ea-a937-4bbc-ad08-acbe19bdf499/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:22:59.159+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SÓ RESTAM AS ROSAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '006df85b-2317-40b7-af71-2bd66e45dd6a', 'REENCARNEI E CASEI DE NOVO MEU EX NOIVO SURTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9d8b9e7e-17a7-446a-bcb8-08d13b72d588/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:20:06.287+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'REENCARNEI E CASEI DE NOVO MEU EX NOIVO SURTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '99a0d9e9-82fd-4a05-a867-5ac9246d0b99', 'AMOR CALADO ÓDIO FINDO E O RESTO SEM LAÇO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e6658074-814d-4ecb-abe6-b55b1ee58d01/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:19:22.155+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR CALADO ÓDIO FINDO E O RESTO SEM LAÇO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '03353ba3-bb6c-4435-b848-55c794aa566b', 'SERÁ ISSO AMOR OU PURA COINCIDÊNCIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7928f8fe-ce30-422e-960f-87656d9eaada/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-10T14:16:27.536+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SERÁ ISSO AMOR OU PURA COINCIDÊNCIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '06706480-2fe4-4499-9106-58eadeb55f8f', 'GENTILEZA SOB FOGO CRUZADO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/67618da6-e91a-4823-bb82-670010233dc1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:15:49.971+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'GENTILEZA SOB FOGO CRUZADO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '352b2b20-f678-4d2a-8ae3-3a2826f185e6', 'A CHEFE CHEGOU COM MEU FILHO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3b328dfc-1813-4331-937b-7f700452eb73/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T14:15:12.406+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A CHEFE CHEGOU COM MEU FILHO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1384cd07-2786-497d-a100-940e88433e10', 'AMOR SOB DISFARCE O JOGO DAS APARÊNCIAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e71c6171-8278-4a31-9f52-a07686f53f29/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-10T13:14:44.926+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR SOB DISFARCE O JOGO DAS APARÊNCIAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f2299d69-5f72-4ba6-a661-8002a3d74ff4', 'ELA VIRA A MESA ELE DOMINA O JOGO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f4c17257-07c3-4e13-bfd3-b2dd12d224af/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-10T13:14:01.343+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ELA VIRA A MESA ELE DOMINA O JOGO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '664e7b73-79d4-45aa-b8ec-6e0bdff6ada2', 'UM OCEANO DE DISTÂNCIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/789b21a0-5785-4c30-b4b0-85fc157d8464/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-10T03:23:03.422+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'UM OCEANO DE DISTÂNCIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '63c90d76-b814-4f43-9224-3eafa59133e5', 'RENASCIDA PARA O REI LYCAN', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8954c4c7-1b1b-4860-9c1a-2a7aed130676/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2026-01-09T13:18:52.582+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RENASCIDA PARA O REI LYCAN'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd90f344c-368f-404b-9341-9799e74b71b5', 'QUANDO MEU EX SE TORNA MEU GINECOLOGISTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0b8b4f77-8c72-449e-9839-179096aaed0c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T13:18:00.997+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO MEU EX SE TORNA MEU GINECOLOGISTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8906c5bb-3e84-4586-a8c1-97579285378e', 'A FILHA DE ZEUS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/07cae38b-2421-478b-8315-e9e0a0f55979/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T13:17:25.978+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A FILHA DE ZEUS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '18721f19-264a-4657-9b20-790ab39fc265', 'QUEDAR SE DE VONTADE NO NOSSO CARMA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8e04b2dc-014d-4b81-8e33-d2f19a4bb644/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T13:01:24.392+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUEDAR SE DE VONTADE NO NOSSO CARMA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ec9cb0ef-9d2c-4ded-b682-f297b005c4ee', 'VOCÊ JÁ SE DIVORCIOU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a47b4859-bdaf-4510-88e5-964ee60dfa3c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:42:52.028+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'VOCÊ JÁ SE DIVORCIOU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '39360def-4c92-47e8-bf29-2575c15eaf63', 'O PONTO DE VIRADA DA MÃE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/148bb48a-73da-492e-874f-8f1163985bc7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:40:26.631+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PONTO DE VIRADA DA MÃE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '73e7567e-8724-4b62-a2ef-709c6bb041ce', 'ACRIMONIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6de8d345-a84a-4fdf-9864-f784df5b2cf1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:39:00.352+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ACRIMONIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7170ec84-fe51-4bac-9b90-1747766d79ef', 'A JORNADA DE UM HERDEIRO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a9c95f0f-9e29-4b7a-b7ba-b39d0c409fdf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:38:10.473+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A JORNADA DE UM HERDEIRO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'de70928e-0eb3-488a-92dd-bc95ca06855b', 'SEGREDOS A LUZ DA LUA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e37a4139-6f82-4e73-bf0a-f7e2a6971f51/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:34:22.412+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SEGREDOS A LUZ DA LUA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cce0d50c-d562-40ef-9a69-67882a6d9ad0', 'Desire Under Our Uniforms/DESEJO SOB NOSSOS UNIFORMES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f78923bb-1c8c-4b17-8ef1-86f080d57cc7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:25:16.251+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desire Under Our Uniforms/DESEJO SOB NOSSOS UNIFORMES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b984680d-e7f4-47b1-8b92-3ebc3394dbe2', 'O CORAÇÃO QUE DEI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ffbe771c-e68b-493e-98f5-54c923e58584/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:24:36.449+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CORAÇÃO QUE DEI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7eabfa3a-9338-456a-a503-041d9d088700', 'A PRIMEIRA NOITE DAS NOIVAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fc7f12b4-2731-4946-ba79-9c2cfa8bf698/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:14:21.458+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A PRIMEIRA NOITE DAS NOIVAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5eb9a015-275a-48cb-8099-1d0db18e770e', 'NOITE DA ROSA ACORDADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b6bd0e83-6c52-45a8-b992-0dc572b48d6f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:13:27.608+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NOITE DA ROSA ACORDADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9820395a-2f7c-4229-9a28-f3f7baf42e41', 'O RETORNO DA FÊNIX', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/73bceaeb-fd09-4663-bd0e-e4f7fd9abca1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:12:50.192+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O RETORNO DA FÊNIX'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '29a4d0e4-d3ca-4eb0-9a4f-0b79ebdf1f5c', 'AMOR APÓS A MORTE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/19000be2-d8a6-4ffd-a55d-424152093187/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:09:46.103+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR APÓS A MORTE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '008a1451-c3e9-441d-ad3a-db35918c7602', 'MINHA AVÓ VIAJANTE NO TEMPO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d5b9491a-7b0d-461b-a00e-ca2c72195b31/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T12:09:09.771+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MINHA AVÓ VIAJANTE NO TEMPO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'be6a3d98-8d08-40e8-af82-465fdb931824', 'A EX ESPOSA GÊNIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/116884b4-7fd4-4afc-bf8d-450e845a0a5a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T11:37:56.639+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A EX ESPOSA GÊNIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '22e47da8-e4d1-4046-ba85-19f17b197121', 'EXCITAR A ESPOSA VIRGEM DO MAFIOSO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bff8d314-77ba-44c2-8317-faf196ab14d7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T11:37:06.431+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EXCITAR A ESPOSA VIRGEM DO MAFIOSO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ca55ffc-b3bb-4094-9660-01ee123f440c', 'BATIDA MAS NÃO POR VOCÊ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3c50bffb-a626-4632-9bfa-320a4bc20bc0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T11:33:46.542+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'BATIDA MAS NÃO POR VOCÊ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d99abec-77d0-4546-a92f-6f1ae5a0c92f', 'A VOZ INTERIOR DA FILHA DO LOBISOMEM', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bda48fb3-6711-4465-8d95-6b32c21a9e0f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T11:28:13.357+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A VOZ INTERIOR DA FILHA DO LOBISOMEM'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f09e3351-2bd3-4bab-ae46-793e526333b9', 'BEBÊ BILIONÁRIO FOFURA E FORTUNA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b13a0a1c-c95c-41b7-b9f1-91ff419114e9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-09T11:27:27.116+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'BEBÊ BILIONÁRIO FOFURA E FORTUNA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a76baf22-5245-46fc-b509-436443b835f1', 'DOMANDO O DESEJO IMPLACÁVEL DO MEU BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ffd14c46-2c22-4483-b521-037c5d3718c2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:39:29.254+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DOMANDO O DESEJO IMPLACÁVEL DO MEU BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ad6e123c-ccb5-4c71-a8e7-b1148c6096da', 'MAMÃE SOMOS QUADRIGÊMEOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/060efe21-42cb-4790-a4ae-30599202b99b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:30:53.237+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MAMÃE SOMOS QUADRIGÊMEOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7ceaa133-a671-453e-a08d-f74c01a0d987', 'A Ascensão Da Princesa Traída', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e05b5f1f-70c3-4b4b-92f1-b580ccdc0ddb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:30:16.391+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Ascensão Da Princesa Traída'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c8489576-d780-4a0b-9de5-339c381d3206', 'O AMOR DE PAI QUE A LEVANTOU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4845422e-104f-4f49-abbd-b3357d0173f9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:29:33.326+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O AMOR DE PAI QUE A LEVANTOU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c845b298-95c3-450a-8f18-8158f779075f', 'QUEM ME DERA QUE NÃO FOSSE VOCÊ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9eaa508d-36bf-43d8-b4cf-85f573ff51c6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:28:46.192+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUEM ME DERA QUE NÃO FOSSE VOCÊ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e0d5b952-ca62-41ba-9ce8-2682d31c5a6b', 'SONHOS QUE MATAM', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/630c736c-fe37-45f0-ac8b-ad45861932b2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:27:09.398+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SONHOS QUE MATAM'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3c6b49e9-57b1-4b84-a737-e7980c6d7a3e', 'TROCA DE NOIVOS O CEO INDECISO E O BILIONÁRIO SECRETO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fcad5ced-f6d6-45a8-8a82-e1d3bb9d4049/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:26:24.025+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'TROCA DE NOIVOS O CEO INDECISO E O BILIONÁRIO SECRETO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bb8757ba-3809-424c-a296-7d810a757b1c', 'A NOVA ESTAGIÁRIA SEGREDO PROIBIDO COM O CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e40fc9dc-38f2-4031-b716-7d491364fdbd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:12:18.086+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A NOVA ESTAGIÁRIA SEGREDO PROIBIDO COM O CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '51941449-9485-489e-b83f-f610fd421109', 'HERDEIRA VS IMPOSTORA NO JATO PRIVADO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/be097382-c497-4941-ad18-3eb8fd4de4ff/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:11:26.696+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'HERDEIRA VS IMPOSTORA NO JATO PRIVADO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e336e4e7-89d7-4d7a-a668-f6398409a3b8', 'RENASCIDO EM TEMPOS DE GUERRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8ccf4bbc-e9d7-40f9-9fe6-afd649c70ca8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:05:48.122+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RENASCIDO EM TEMPOS DE GUERRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cd136db5-f65e-41ce-b907-0e30c35f7a57', 'FELIZES ENTRE FLORES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cfbb4534-ab08-4802-a089-9607f6242204/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-08T00:03:38.296+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FELIZES ENTRE FLORES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a7237ecd-92d5-489d-86fe-d0ad201adf8b', 'CASAMENTO POR ACASO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/51eb7bc2-8e04-4e8c-ba3e-243e79424814/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-07T23:05:49.723+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASAMENTO POR ACASO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f93f145e-b1b3-4274-a9b4-12485013229c', 'AMOR TARDIO EM CREPÚSCULO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dc0f0476-b448-4454-8951-113df8f85432/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''vampiro'']', '2026-01-07T23:04:10.835+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR TARDIO EM CREPÚSCULO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '07de3187-e69e-4767-a15c-0989259ff912', 'CAPA MAL JULGADA PUNIÇÃO BEM MERECIDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/603553ab-a1f4-48f5-a612-649ab8257ce5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-07T23:03:23.604+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CAPA MAL JULGADA PUNIÇÃO BEM MERECIDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c172357-d773-4f44-8d07-54d7bb647455', 'O NONO DIVÓRCIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a8ed8897-eaf9-4bac-a9c6-3b8007c83fdf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-07T22:49:30.174+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O NONO DIVÓRCIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0c529e13-8e5e-407b-830b-4878fbf25b78', 'A HERDEIRA IMPLACÁVEL ASSUME O TRONO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/237b0e08-0dd4-4f6a-ae68-26fbec29fb2f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-07T22:48:51.165+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A HERDEIRA IMPLACÁVEL ASSUME O TRONO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2afd468c-a9ba-46aa-ad14-aa2b227c8525', 'ÚLTIMO ADEUS DELA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c4d26686-3672-441c-b0fe-1f2031c4e03a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-07T22:48:09.585+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ÚLTIMO ADEUS DELA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4080ec0f-91d9-49a0-b106-445d6e2b2139', 'AMOR PROIBIDO EM TRÊS VIDAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/96de0090-dc56-41e7-a04e-0772354b2585/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-07T22:39:30.285+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR PROIBIDO EM TRÊS VIDAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0a91ad32-06aa-4e62-8c50-f58b383d4b94', 'DEPOIS DA GEADA A ÚLTIMA LUZ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9262042e-4ac1-4d9f-9d59-22cdcfadc075/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-07T22:38:30.866+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DEPOIS DA GEADA A ÚLTIMA LUZ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1a3c64dc-d135-49aa-9a04-9e616aed7e61', 'EU NÃO SOU SUA MADRINHA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a148755a-6b58-4ad1-85ef-e4210cf2f2d7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-07T22:35:50.142+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EU NÃO SOU SUA MADRINHA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f62f7b7d-29f3-4f2c-af28-ea50d5200e97', 'OPPS EU TE AMO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8a048037-5243-4955-9a8a-d7bb5add9fde/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-07T22:27:34.162+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'OPPS EU TE AMO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '544e906b-f94b-4123-86aa-afa7dd66baf8', 'ENCONTRO ERRADO AMOR CERTO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3d4640ae-be21-4e90-8edd-3e2bc4f807ae/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:30:36.823+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ENCONTRO ERRADO AMOR CERTO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '057b2618-b872-4ad4-9c94-93c7e43ae7d4', 'HERDEIRA ÚNICA NO MUNDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/153c5a7f-8b4b-4f31-a4f5-c4b820b20d45/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:29:50.908+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'HERDEIRA ÚNICA NO MUNDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2f9a1b3a-d0ba-4992-9cf1-dd4ba575c9bc', 'PRINCESA INDOMÁVEL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/454bfae1-1202-4959-9070-1e67f4a3f10f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:28:57.656+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PRINCESA INDOMÁVEL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6fb4ffcf-4166-4b90-8d3e-13ce24b28e26', 'A RAINHA DIVORCIADA DA MARINHA DESPERTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/46fec154-006f-46d5-ab49-f005db7456cb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:28:04.319+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A RAINHA DIVORCIADA DA MARINHA DESPERTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cb4eecaa-21f5-4787-986c-e0e8ab50a24e', 'ROSTOS IGUAIS QUEM É A VERDADEIRA NOIVA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f30857c3-3fe2-4186-bd00-ba809095cd7f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:26:59.673+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ROSTOS IGUAIS QUEM É A VERDADEIRA NOIVA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cd566539-c292-4097-a289-81ed3001fdc7', 'FILHA SORTUDA PAI NO TRONO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5da25515-8b05-4fba-8aaa-b1c7eae36ebe/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:25:42.487+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FILHA SORTUDA PAI NO TRONO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'df73b3d9-e91a-4b72-8c67-a0563e5b86d9', 'O AMOR QUE EU PERDI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b873e317-16be-4b85-bd54-19947c4df1a2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:24:56.202+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O AMOR QUE EU PERDI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c84ff28f-04f4-4ad8-ab5e-0b3b2c6697a9', 'FARSA NUPCIAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dce7699b-ed07-4b65-ad78-164f13d5f538/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:23:59.92+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FARSA NUPCIAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '18a7e3e5-f762-4506-a47a-95dc4760d89a', 'EU ESQUECI QUE ME CASEI COM ELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5e84491f-2ebe-4a24-a526-523409e53c12/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:23:09.312+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EU ESQUECI QUE ME CASEI COM ELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e7b7d30f-171d-4ade-94ea-f39185068eb9', 'A VINGANÇA DA HERDEIRA DO BALLET', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5009669a-2be7-4192-9b7d-4506ffcd5510/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:22:31.674+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A VINGANÇA DA HERDEIRA DO BALLET'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c323fcad-80b2-4d83-9f6a-159468e420b0', 'QUEM ME DERA QUE NÃO FOSSE VOCÊ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e69a7755-1302-4e8c-9723-72079dbca9a9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:21:47.195+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUEM ME DERA QUE NÃO FOSSE VOCÊ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a36a0bb5-dd0b-45e1-aea9-a36a2b8a1eb1', 'A 99 Prova De Um Amor Superado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/50c841cf-5230-4bac-a174-b3192e34c384/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:21:00.404+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A 99 Prova De Um Amor Superado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1afddf65-0b42-45ea-805e-44b41c73cfe0', 'RETORNO PARA PEGAR A MINHA COROA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/98052f9d-a7cd-4362-8e47-3da21bf328a2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:20:20.223+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RETORNO PARA PEGAR A MINHA COROA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '458a1fa8-496f-44b8-98b7-48363bf72265', 'CASADA COM MEU MARIDO ALFA POR CONTRATO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/879d758c-062b-4408-a24a-bf35f4db8012/playlist.m3u8', '[''homem-lobo'', ''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:19:05.036+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASADA COM MEU MARIDO ALFA POR CONTRATO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '51691bda-fb9a-41c1-993b-3d511ce7146c', 'OBCECADO POR VOCÊ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3a417eb8-fb24-480b-939e-139efdebeef7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T15:18:03.888+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'OBCECADO POR VOCÊ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '540d3184-94aa-4b20-876c-feb85d3ce866', 'QUANDO O AMOR MUDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f7bb0ea3-1908-4991-abd9-d4299511a662/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T14:53:43.84+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO O AMOR MUDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fadd1823-9c7e-4ddf-b9e7-c59e79b141cb', 'ATENÇÃO GAROTOS A BISAVÓ CHEGOU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cb74660d-87ba-4199-b509-11f8024c439c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T14:52:50.761+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ATENÇÃO GAROTOS A BISAVÓ CHEGOU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '466f6824-8642-4ea7-a9ea-778427b736d8', 'DA BOBINHA A BOMBA A RAINHA DAS MÁSCARAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6fd30d11-6bda-4f5e-9599-015093243785/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T14:52:05.963+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DA BOBINHA A BOMBA A RAINHA DAS MÁSCARAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f7774f13-7c9e-4571-8602-9bad98ea843c', 'A LUNA AMALDIÇOADA DO ALFA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/942fe7d8-ed92-4b3c-9bcb-fb6120a4eeb7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2026-01-06T14:50:49.042+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A LUNA AMALDIÇOADA DO ALFA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '55728ea3-f82f-486a-8fbd-ea6d76bfc564', 'ENCANTOS DA LUA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/350768ad-40d8-4dea-9b2b-50ebff5dd646/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-06T14:40:40.025+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ENCANTOS DA LUA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2d064c0e-c3f7-433a-9297-07b3adc3dec7', 'DEPOIS DO TÉRMINO CASEI  COM O CHEFÃO DA MÁFIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cd22b85c-922f-4e50-89f0-915acd5cab65/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-06T13:54:17.15+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DEPOIS DO TÉRMINO CASEI  COM O CHEFÃO DA MÁFIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '564229c8-1c77-4c22-9d50-990c7c7eda5f', 'DE MADRASTA A MÃE DE VERDADE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1fb81136-d3c2-47ba-8350-40c497a4d8ab/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-05T15:24:26.733+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE MADRASTA A MÃE DE VERDADE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '037c956c-5d32-47bf-a869-e1239c1dee1f', 'Adeus Minha Tentadora Esposa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d8dcb441-06fb-4c34-94a6-f1240f44493a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:23:20.899+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Adeus Minha Tentadora Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8906e88c-0e07-43ab-a4cf-b81fb924128f', 'IRMÃS RENASCIDAS MARIDOS TROCADOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5381e86c-3072-41ac-a65c-c8a3c2c4da40/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:22:34.201+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'IRMÃS RENASCIDAS MARIDOS TROCADOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4cd87f4a-8868-46af-9b12-044a7d4f096b', 'Casamento Relâmpago', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/65ff284f-509f-4c1d-9c73-7201ff1cb1f4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:21:54.7+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Relâmpago'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '87224533-ac04-4754-a963-e25f5e5942b5', 'GRAVIDEZ ACIDENTAL ROMANCE COM O CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/21d90ce8-a7cd-4c8c-bb4f-e608cb5497ed/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:21:01.264+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'GRAVIDEZ ACIDENTAL ROMANCE COM O CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8b524946-62eb-438f-a46c-4d2a36f9c9cd', 'DEPOIS DA GEADA A ÚLTIMA LUZ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0cb97905-0e54-4074-a52b-d51ba49349fb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:20:09.626+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DEPOIS DA GEADA A ÚLTIMA LUZ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '316da0f7-786c-468c-bf15-ca65cffa9fb3', 'DISFARCE DESASTRADO DE UMA QUEDA SECRETA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f81aa53d-e2f8-4139-adf1-13e9d0fa37d5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:19:32.616+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DISFARCE DESASTRADO DE UMA QUEDA SECRETA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '15c773b7-54e1-4913-acfe-72abbbb8e4c5', 'APAIXONADA POR UM PAI FAZENDEIRO SOLTEIRO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a1e45371-179d-4f8a-9a4a-9fae6bec5c34/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:18:57.6+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'APAIXONADA POR UM PAI FAZENDEIRO SOLTEIRO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '78f73c6b-78fa-4fcb-8821-00df40ae1eae', 'SEU MARIDO É MEU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3ba8b88a-a77e-4d6a-9241-8f3150836cae/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:18:17.819+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SEU MARIDO É MEU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '98d07f92-ae48-43f2-a7b7-290f49885581', 'WATERBOY', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8abff6ff-6a31-46d7-a2e9-877bb6280f7e/playlist.m3u8', '[''blgl'', ''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:17:10.403+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'WATERBOY'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b03c2740-7aa2-463b-a835-ecdb3b9dbe26', 'Swapped My Ex For His Billionaire Uncle/TROQUEI MEU EX PELO TIO BILIONÁRIO DELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8695ae76-fcaa-4cac-a3bb-9267232dea23/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:15:54.588+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Swapped My Ex For His Billionaire Uncle/TROQUEI MEU EX PELO TIO BILIONÁRIO DELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '164210d9-4618-42df-917b-f3e1ea52954c', 'HELLO AGAIN SECRET EX CLAIM YOUR DNA SURPISE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/59ac15b3-1516-4398-bc2a-26896b023816/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-05T15:15:03.751+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'HELLO AGAIN SECRET EX CLAIM YOUR DNA SURPISE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'de1f30d8-fdaf-4476-a7e4-9d735ed762c6', 'DA CHEFE À MADRASTA FILHO NÃO SURTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3aef77a7-bcba-4fa4-b51a-4b9dc06750be/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:28:19.021+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DA CHEFE À MADRASTA FILHO NÃO SURTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '121a23af-f723-4e7a-a5c2-7db614d057b9', 'PAPAI NÃO VÁ! POR FAVOR SALVE A MAMÃE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/116d5c52-82f2-4914-802e-56122ded4c16/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:26:57.141+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PAPAI NÃO VÁ! POR FAVOR SALVE A MAMÃE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bfdd65df-7e2f-43e3-a985-f0cae591e2d9', 'MAMÃE NÃO CHORE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a53e4611-e859-472c-99ce-18ee6a1bff5a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:26:13.186+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MAMÃE NÃO CHORE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1ad2599a-a6bd-4265-bcbf-3e439a00057f', 'ESPOSA INESPERADA BELA ADORMECIDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/955e5859-e586-4a16-a09b-a5e4d3af3393/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-04T23:25:20.749+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ESPOSA INESPERADA BELA ADORMECIDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bf5c8860-efde-426e-986f-5a15b03c707b', 'CASAMENTO RELÂMPAGO COM ESPOSA LEGISTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8ed2eaf0-db6e-4917-941d-046e4a4aa2e8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:24:17.969+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASAMENTO RELÂMPAGO COM ESPOSA LEGISTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '955560bd-ba3a-49b0-9962-4e73f446a70a', 'FORÇA SECRETA DA ESPOSA GORDINHA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/52b7055c-22e1-4971-b80f-35f01ac0d066/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:22:59.8+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FORÇA SECRETA DA ESPOSA GORDINHA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd36aae20-62f3-4024-affc-e74707d288ea', 'DOULAS DE 20 ANOS ELA VIROU MIMO DA FAMÍLIA RICA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fbf120de-a851-4e8f-b4eb-021f8041e2f9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:22:03.082+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DOULAS DE 20 ANOS ELA VIROU MIMO DA FAMÍLIA RICA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1c9c1090-48bc-4f89-98d6-b780bb4e382d', 'O CHARLATÃO VAGABUNDO QUE VIROU O TEMIDO DE TODO MUNDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c9fadc86-f84f-4b24-86f6-f38301369373/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:21:05.435+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CHARLATÃO VAGABUNDO QUE VIROU O TEMIDO DE TODO MUNDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'aee16d44-9db6-43ac-9c19-6e6e11ce1f1b', 'CIGARRAS CANTAM VERÃO CHEGA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7d545362-61d5-44de-a7da-5d043d87cf91/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:20:28.602+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CIGARRAS CANTAM VERÃO CHEGA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6b05fffa-8244-47ef-bece-1d4614381d54', 'LAÇOS DO DESTINO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/12d6ffc5-3104-4c4f-9055-573420bf02da/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:19:49.465+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'LAÇOS DO DESTINO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '31f92a3c-cdf1-4916-afbf-1ecc67fdf353', 'Uma Noite Com três Papais Gostosos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f0e1cfb6-ff95-45e3-a487-989c3373f627/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:19:14.565+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Noite Com três Papais Gostosos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '81e369ca-23a1-463f-84b3-284ce55f78b1', 'TRONO EM XEQUE SORTE É MEU SUPERPODER', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/64a55611-29cb-4f11-85ae-1c4942e21d65/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T23:00:39.762+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'TRONO EM XEQUE SORTE É MEU SUPERPODER'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '36c86c29-0458-48a3-9478-c68a5340607c', 'MISSÃO DA GENERAL CAÇAR  UM MARIDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5f93fbce-1623-45f6-918b-301a4013fcc5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T22:25:59.272+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MISSÃO DA GENERAL CAÇAR  UM MARIDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'afee7b17-847f-4523-a604-91cb704fe101', 'FINGI SER HOMEM E VIREI O DESEJO DO PRÍNCIPE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/01b5696d-73c8-4afc-984c-bf403f14b964/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T22:25:16.945+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FINGI SER HOMEM E VIREI O DESEJO DO PRÍNCIPE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '88b3be08-f6b9-40a1-93b3-ac8aaf033730', 'A VINGANÇA DO GÊNIO BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/895156ed-ad09-4884-ae0a-7d8c12cdc6b6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T22:02:01.168+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A VINGANÇA DO GÊNIO BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8926ac58-cc73-4d49-8d93-2f9fc81d2bc1', 'A NOIVA DO MAFIOSO DE VOLTA À COROA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/83ec3000-7fb7-4939-a7f0-a86d814f2700/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T22:01:20.616+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A NOIVA DO MAFIOSO DE VOLTA À COROA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a8dd727d-b162-4735-941b-5d0763eaccfd', 'PAPAI É UM HERDEIRO BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b604c822-fa6e-4a51-a96b-3a47c97bd237/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T22:00:35.213+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PAPAI É UM HERDEIRO BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '16287840-ca02-43a1-a92d-01575c042f80', 'ROMANCE EM RUÍNAS AMIGAS EM FUGA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/effd5630-a50c-4918-bdcb-ad49a73ee0e6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-04T21:50:39.07+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ROMANCE EM RUÍNAS AMIGAS EM FUGA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0c4c5e0f-fa48-476e-b765-03bdf99efdb3', 'QUANDO DESCULPAS NÃO SÃO SUFICIENTES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8c49a8cb-5853-4bb4-91c2-0be5ef7f9b0a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-04T21:49:41.953+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO DESCULPAS NÃO SÃO SUFICIENTES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f6766700-1140-462b-8cd2-2356d428a91d', 'O AMOR É UMA DANÇA PERIGOSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9507877e-40ac-4a49-98ed-4866e60a0bc9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T21:08:19.19+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O AMOR É UMA DANÇA PERIGOSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7cc35dd1-c9db-4dd3-981e-8b45045f30a7', 'SNIPER AMERICANO A ÚLTIMA RODADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/84177569-16a9-4d8b-908e-93d69916cf8e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T21:07:46.394+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SNIPER AMERICANO A ÚLTIMA RODADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4e27073f-75af-493e-a0e6-dd202161dee5', 'MATHEUS SILVEIRA O BASTARDO QUE CALOU O REINO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/90d244ec-1abe-4034-8531-74aeeca6e545/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T21:07:11.077+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MATHEUS SILVEIRA O BASTARDO QUE CALOU O REINO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '39bbbd57-f45f-4b90-9d97-6af8010fb4e5', 'BELEZA FRIA NOVA VIDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b854e9f6-995d-4cfd-85b1-9adf16ea6d2f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T21:06:13.233+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'BELEZA FRIA NOVA VIDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f8db29b1-c201-41be-8d12-25bca9ab4dea', 'Seu Amor Foi Um Sombra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0ca968cb-229b-4c1d-9594-7a81c24cafd1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T21:04:03.159+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seu Amor Foi Um Sombra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'df51d262-23dd-496b-99b0-13fdff554024', 'O HERDEIRO PERDIDO UMA VINGANÇA NATALÍCIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/87cd446c-de08-4fed-b7e3-9e003f6e2ac3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T21:02:05.109+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O HERDEIRO PERDIDO UMA VINGANÇA NATALÍCIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '363936e1-6042-41f5-912d-56f31fc5ab02', 'EMPATIA E EGOÍSMO A MULHER QUE CONDENOU A PRÓPRIA FILHA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7855c519-f962-4f7e-a5fb-7e0c3ca1e32a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T21:01:11.412+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EMPATIA E EGOÍSMO A MULHER QUE CONDENOU A PRÓPRIA FILHA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1afd6607-b1ca-4470-bf1d-34cc893acf89', 'FLECHAÇO ENTRE LUZ E ESCURIDÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1c0c5e3d-db77-4dad-8c47-df0e663f6e1f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T20:59:44.843+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FLECHAÇO ENTRE LUZ E ESCURIDÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1ee96a35-0a3d-4631-a74d-ab280abd810a', 'DE NINGUÉM A QUERIDINHA DELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2a66d21d-e52a-424c-a418-d32e484959eb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T18:54:23.135+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE NINGUÉM A QUERIDINHA DELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '63594728-a035-48b4-b33d-03e3bbfe01ea', 'SEIS BEBÊ UM PAI BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5fdfac2c-c08c-4093-8b29-6a9823aa2122/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T18:53:24.632+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SEIS BEBÊ UM PAI BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e5e89189-9b06-4ebf-a4e4-8bf66b7ab3ea', 'CASEI COM UM JARDINEIRO GANHEI UM PRÍNCIPE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/700cb5c3-e090-476c-9029-191dc527c626/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T18:52:39.231+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASEI COM UM JARDINEIRO GANHEI UM PRÍNCIPE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f8d85356-3a6c-4eaa-867b-064de806a274', 'O CHEFE DA MÁFIA DOMINA O INSTITUTO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a94db463-66d9-40d5-ae1f-0ca6f4ef99bc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T18:47:13.865+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CHEFE DA MÁFIA DOMINA O INSTITUTO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '13bacc42-47f1-4165-b1e7-fb48585314e7', 'O CASAMENTO QUE VIROU ESCÂNDALO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/75ef09a2-806e-47a3-89f5-44676be197ac/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-02T18:46:37.845+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CASAMENTO QUE VIROU ESCÂNDALO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0bdff76e-a7ee-4022-9265-088e352fb9f1', 'CASAMENTO OBRIGATÓRIO ME VIRO COM TRÊS DAMAS PERDIDAS 2', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2435d654-0f90-491c-a756-b28358902bfd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T18:45:59.839+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASAMENTO OBRIGATÓRIO ME VIRO COM TRÊS DAMAS PERDIDAS 2'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c932d782-930d-42e8-9f4b-c9fd0e4b8036', 'DIRIGINDO PARA O AMOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/769fdd16-91b6-422c-afbd-a13bf881f02a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T18:45:14.29+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DIRIGINDO PARA O AMOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fb61d413-f8ba-4e69-8f65-3a4ce5eccc95', 'Gravidez Acidental Romance Com o CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6580f265-4aed-4e6b-baef-4ea83487d9dc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T18:44:26.362+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Gravidez Acidental Romance Com o CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bb3905eb-ed56-4d4e-a30a-975038cdd56d', 'DANÇA DA VINGANÇA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aea26742-b928-4f16-9e36-cc4f6b62c26b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T18:43:44.5+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DANÇA DA VINGANÇA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5d1c82c8-964d-4eb5-a832-20bcf9e30367', 'O FADO DA MINHA IRMÃ QUE ME PERTENCE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2037b8d0-39a6-4b28-bdda-fa6728607a1d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T17:03:12.788+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O FADO DA MINHA IRMÃ QUE ME PERTENCE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0f7d6b93-ca54-4cbf-acb5-0e49c734470c', 'TRAPAÇA FINA VINGANÇA DIVINA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a6720a63-dd20-43cd-8b4d-770dd4d540b3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T17:02:16.971+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'TRAPAÇA FINA VINGANÇA DIVINA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '718d86fe-45b9-4dc0-9291-a5b463297062', 'BENÇÃO DE CINCO MÃE FORTE PAI DESCONHECIDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c098edfa-5e68-4c20-9d81-ab8061263abe/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T17:01:35.165+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'BENÇÃO DE CINCO MÃE FORTE PAI DESCONHECIDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '188eed9d-20a0-45f2-9506-b7488c17f778', 'QUANDO O  DESTINO FALA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5099f79f-c2e4-4f73-9e30-7dedc053e054/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T16:14:06.054+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO O  DESTINO FALA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'de9e7969-0921-4e23-a926-30590685cdb8', 'MATHEUS SILVEIRA O BASTARDO QUE CALOU O REINO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/87285d86-6a73-4866-874f-0d2b19ef2d0f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T16:13:32.971+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MATHEUS SILVEIRA O BASTARDO QUE CALOU O REINO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '756996d4-73e7-4b15-8138-329d3cecd623', 'Casamento Nos Anos 80 Amor No Presente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/77c5ca3a-3695-4f11-a7a8-4268eb0baa01/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T16:12:36.847+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Nos Anos 80 Amor No Presente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '57d46616-3513-4ead-a1f8-4380566b7149', 'LINHAS DE SANGUE AO LUAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/757e2367-8a61-4b7f-a4f7-f80ccc660aa8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T16:11:55.092+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'LINHAS DE SANGUE AO LUAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '153dba6a-c84f-4eaa-b4a6-361416d5d4a1', 'FALSO HERDEIRO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1635f4ff-7785-4712-838e-0ed8600cae32/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-02T16:11:07.699+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FALSO HERDEIRO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '29dac8d9-2f28-4efb-a14a-1b46c61fb145', 'QUEIMANDO DE PAIXÃO PELO HOMEM QUE ELA AMAVA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/820c370f-6028-4cec-8d19-6a4248bb1238/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T16:10:16.236+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUEIMANDO DE PAIXÃO PELO HOMEM QUE ELA AMAVA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '44a19196-1cdb-47b4-b56a-387c7b979e3c', 'O APOIO DE UM PAI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1e4f83da-55d4-4fcc-b122-d874b0565cf2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T16:08:51.014+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O APOIO DE UM PAI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c6ac01cb-f097-4bc2-b120-01b01ff82adb', 'DE NINGUÉM A QUERIDINHA DELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cc598b7e-730c-4598-a7aa-a1bd4aa31e5e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T16:08:12.587+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE NINGUÉM A QUERIDINHA DELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7f3ef408-1a1b-4dc2-968f-06fa67673440', 'LIGADA A HONRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/298a4098-791c-4a56-a0d0-380da38b720e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T15:07:02.745+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'LIGADA A HONRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fd6a6bcc-9959-478f-84c3-366adb42cd80', 'A AMANTE SECRETA DO PODEROSO CHEFÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a7a72ded-0340-40ab-8044-57347d21f90e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T15:06:26.705+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A AMANTE SECRETA DO PODEROSO CHEFÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9ab7b9c2-a383-4ff1-81ea-3f84ec678d55', 'Te Amo Sem Razão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ead60252-468d-41a4-828c-725c4a56f667/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2026-01-02T15:05:38.58+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Te Amo Sem Razão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f36bb7fa-a43c-48be-bd24-7c3a40d7f57d', 'DO DEMITIDO AO TEMIDO JAMAIS AO SEU ALCANCE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/931bd796-b5c2-4df2-b8d7-73589dcb3c64/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T15:04:57.538+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DO DEMITIDO AO TEMIDO JAMAIS AO SEU ALCANCE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6f2cbb72-70ed-48fa-a374-5bcbbd46f0ec', 'A NOITE EM QUE NÃO MORREMOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/54cde2d2-930a-4f5b-a433-4ea96e38584d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T14:59:37.737+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A NOITE EM QUE NÃO MORREMOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '40b9e953-cb0f-4a4d-b7b0-cc4c2416a914', 'A NOIVA DO MAFIOSO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e6013d7d-39a4-4c37-9b19-099a7adf3761/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2026-01-02T14:54:47.925+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A NOIVA DO MAFIOSO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bf3193fd-41eb-4fca-9780-40563c6cc6e6', 'ALUGUE UM NAMORADO BILIONÁRIO PARA O NATAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9daab6a9-0a66-43b0-96d8-fa3a87880faa/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T12:26:41.664+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ALUGUE UM NAMORADO BILIONÁRIO PARA O NATAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ad4a5086-5623-455d-b5aa-a4eab2cc5e47', 'O CORAÇÃO CONGELADO PELA MÁGOA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/63c32c64-2186-41b6-8b58-1c9b737566d3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T12:26:01.446+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CORAÇÃO CONGELADO PELA MÁGOA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '306813e4-e6f5-48db-85da-6c7a0a0a1c02', 'DOIS PEQUENOS ALIADOS UMA MÃE IMBATÍVEL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b3cd975d-8782-4dcf-916a-15306f535d6e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T12:03:33.962+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DOIS PEQUENOS ALIADOS UMA MÃE IMBATÍVEL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '07c79a77-0ddc-4237-af3a-8e1631b184a4', 'A MENINA DO POVO TAMBÉM E MIMADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4b9ecc78-17ea-445c-bdfa-53d1f31ff8e6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T12:02:51.066+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A MENINA DO POVO TAMBÉM E MIMADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4db24b30-2790-49f5-b919-cb63a6e582d7', 'CORAÇÃO EM CATIVEIRO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7f6413c6-f8b4-4407-9eef-a70c6ead42cf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T12:02:10.935+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CORAÇÃO EM CATIVEIRO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '95d71616-fdff-4461-8768-7c544d1b5a51', 'IMPLORANDO À SUA ESPOSA HERDEIRA SECRETA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/943b9f30-7cea-4a7e-9b21-4788c0d968c3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T11:55:21.518+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'IMPLORANDO À SUA ESPOSA HERDEIRA SECRETA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5ec7839b-5f05-44f0-8106-9ef9024550ac', 'A CABULOSA HERDEIRA RETORNA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/38928aba-06ed-4d95-aedc-6fdea4827b97/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T11:54:30.676+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A CABULOSA HERDEIRA RETORNA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0a67eea1-3cac-46ea-8059-e58b03abb299', 'MEU PAI É O LENDÁRIO TITÃ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d958f3ef-e004-4176-a380-cfd1706b4a35/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T11:53:53.395+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MEU PAI É O LENDÁRIO TITÃ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0eded80b-66c3-4456-9e82-6b3e26f0c6e3', 'OBJEÇÃO A JUSTIÇA SEMPRE RETORNA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d37f5e9e-7c90-415f-9c50-53198aeab0e8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T11:41:16.886+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'OBJEÇÃO A JUSTIÇA SEMPRE RETORNA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fd8beace-600e-4348-93bc-f5c85e8c9d59', 'Te Amo Sem Razão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5731fec5-f496-4446-879f-3ae6f7d0fe2d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-31T11:40:16.426+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Te Amo Sem Razão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1e9395ed-a2f5-4606-a4b3-b042173af0b0', 'NÃO QUERO MAIS VOCÊ A VINGANÇA DA EX ESPOSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1f17e46b-5b96-4a17-a325-8d45b06e9a20/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T14:14:38.686+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NÃO QUERO MAIS VOCÊ A VINGANÇA DA EX ESPOSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd95e6a3d-ae30-4d75-aae8-f8b211134f31', 'MARIDO PEDE PERDÃO APÓS A TRANSFORMAÇÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a2be54ce-0572-42bc-bc77-75848a5b1c2a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T14:13:53.523+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MARIDO PEDE PERDÃO APÓS A TRANSFORMAÇÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '19c50e1c-a30e-4505-ab39-ac7483dee0f9', 'Amor Que Não Volta Mais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3206fbfd-3d7c-402e-97ca-bcbca00ba722/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T14:13:17.268+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Que Não Volta Mais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2159866d-9be8-4870-8a8f-33bb160d176e', 'CHAMADA PELO MEU AMOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a47b4859-bdaf-4510-88e5-964ee60dfa3c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T14:10:47.004+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CHAMADA PELO MEU AMOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '56671ae3-c398-459a-a9f8-c02667b8d258', 'EX-MARIDO 200KG DE ÓDIO PARA CALCULAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/192c9f45-6ce3-4a4d-9342-a8a84233fe1b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T14:10:08.913+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EX-MARIDO 200KG DE ÓDIO PARA CALCULAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ad15471e-a505-4ec8-aaef-ac982f8052a8', 'SRA. MOURA, SEU EX-MARIDO IMPLORA POR RECOMEÇAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c08504ae-37da-4c3d-83d3-d801f784df23/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T13:58:02.74+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SRA. MOURA, SEU EX-MARIDO IMPLORA POR RECOMEÇAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6bc452a1-67e2-44c6-bedf-c75835a1a9ff', 'Rejeitando Meu companheiro Lycan', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b7476592-a306-4089-8c3a-f4000c091ecf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-30T13:55:23.404+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rejeitando Meu companheiro Lycan'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '148355f4-aa70-4b14-93c6-fd3dacc3b973', 'Mimada Pelo Meu Tio Vampiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6bed0243-600b-4797-ac3d-2b2a37ac985f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''vampiro'']', '2025-12-30T13:54:34.718+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mimada Pelo Meu Tio Vampiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd9a63578-ba89-45c1-a648-20de670f8f65', 'DESTINADA AO PAI DO ALFA DO MEU RIVAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/867d2761-ede8-4d6c-9f10-87e53cad8b3d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-12-30T13:53:27.419+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DESTINADA AO PAI DO ALFA DO MEU RIVAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '876dd84b-48be-41e3-a52c-8b635ddcfe7e', 'DA CHEFE À MADRASTA  FILHO NÃO SURTA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1ddc530e-6cad-4aeb-9964-fe4c4d91ea5e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T13:23:04.834+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DA CHEFE À MADRASTA  FILHO NÃO SURTA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f7b618e7-1e70-453b-a890-e0f09b814735', 'MISSÃO DA GENERAL CAÇAR   UM MARIDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/64186f2e-e866-47b9-b79a-d48218db2379/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-30T13:22:17.163+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MISSÃO DA GENERAL CAÇAR   UM MARIDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '79aaca4e-2b8a-46c4-907c-53344623204e', 'O PERIGOSO ANJO DA GUARDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a1040d92-4d93-4869-81b4-710b227fd94b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T13:21:28.744+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PERIGOSO ANJO DA GUARDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7a9c8621-62a9-403e-9ebf-4fb1ba252bce', 'Quando o Passado Ecoa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b7f9efae-c111-4c6b-ad18-2ff5cf713233/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T13:13:10.283+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando o Passado Ecoa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '00bc5caf-ac1d-48fd-9b50-9c62e4ef488d', 'A MENINA DO POVO TAMBÉM E MIMADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7faa72d9-4fe3-49fe-8c07-92882d3bcab7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T13:11:12.976+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A MENINA DO POVO TAMBÉM E MIMADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fdb49e01-42e6-40f5-acee-ea37dfbbdc32', 'Noite Proibida Amor Que Não Se Apaga', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/50e59986-7a51-4749-a980-53e5c62a556e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-30T12:12:56.882+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noite Proibida Amor Que Não Se Apaga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a6139af8-95ba-4083-a04e-a6e6cf17b78d', 'PAI ENTREGADOR CHEFÃO OCULTO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4ac6b24a-6d59-4b42-a429-53562ab6c03d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-30T12:07:26.402+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PAI ENTREGADOR CHEFÃO OCULTO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7fe55293-c098-4716-8354-39bc80b4e97b', 'A NOITE ERRADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4c8e918d-d85a-49db-b6dd-2da4228691f5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:55:22.651+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A NOITE ERRADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9c07a294-adfa-4352-9e0b-5cc5db3df524', 'Alavancada No Jogo A Patroa De Cozinha Do Ceo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/88b61f86-0e12-4cf2-a9d0-766a7ff34337/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:54:26.822+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Alavancada No Jogo A Patroa De Cozinha Do Ceo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0302d16d-38d0-49ec-bea4-dd2da41e3055', 'MEU GATO BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d12f3e7e-e10a-4e80-80ac-9181b4315a07/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:53:09.892+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MEU GATO BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8936f777-b355-4db7-b385-b9e3cb01248c', 'ANTES DA TEMPESTADE O AMOR A DERIVA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/86191270-1f83-440a-8eb2-f4051ca8703f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:52:17.265+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ANTES DA TEMPESTADE O AMOR A DERIVA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '77438ceb-db2e-4b94-a64f-99ed2c62de0a', 'A PRINCESA REVERSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a6184f01-4620-4d97-ad50-18d1fb1fb9e6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-29T00:51:23.47+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A PRINCESA REVERSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0a039c6d-a2c5-47d5-9da5-a6607dc0c893', 'APÓS A METAMORFOSE, O MARIDO IMPLORA PERDÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/da6511e7-d9a1-4178-b302-a420d884ac80/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:48:46.47+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'APÓS A METAMORFOSE, O MARIDO IMPLORA PERDÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '172d719b-a0e8-4c3c-b561-dba419b28abf', 'UM NEGÓCIO COM MEU DOADOR BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f03a6948-c919-4f9b-8cd3-84ea8e96fdf4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:47:53.43+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'UM NEGÓCIO COM MEU DOADOR BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f3151a30-a448-4c94-a045-a2459fba13ef', 'ME MIME POR FAVOR SPOIL ME PLEASE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ecf08ada-983a-4e31-90b1-0761a636f48e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:47:05.667+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ME MIME POR FAVOR SPOIL ME PLEASE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4af5edda-f049-495c-9aaf-e9fa48c03fd8', 'ELA NUNCA FOI COMUM', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8de30f73-41a9-4940-922b-6572f9b13615/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:17:13.752+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ELA NUNCA FOI COMUM'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '54be1ded-5b3e-45c5-b177-88e1eb19d3d8', 'Quando o Amor Vira Traição', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/893d4eeb-ac0d-4d8e-ae91-feaf4a54e26f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:13:18.334+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando o Amor Vira Traição'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8c54c2f9-8291-4d58-9668-4e318a51d0d7', 'DIAGNÓSTICO AMOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/afcb9f6c-f95e-4d73-87ca-0c0a5c33d87f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''blgl'']', '2025-12-29T00:11:48.5+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DIAGNÓSTICO AMOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '88e17bad-ec02-40b9-82b5-85f2b66af86f', 'AMOR, MENTIRAS E SURPRESA DE NATAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b9349dc6-e56d-4d49-9340-4e7331f8ed8e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:10:04.177+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR, MENTIRAS E SURPRESA DE NATAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '916b9fa7-ff1b-4a55-86ea-33141fd6011e', 'EU DORMI COM MEU CHEFE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/09ccd565-282b-4dc5-b4d8-09995cc97291/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-29T00:09:17.626+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EU DORMI COM MEU CHEFE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '88642781-24bd-473c-a22b-520a70cd613e', 'MARIDO POBRE ERA BILIONÁRIO!', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ab6cfea9-a156-43e0-8528-30e804297f8d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-29T00:08:24.744+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MARIDO POBRE ERA BILIONÁRIO!'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3fcaedbc-562b-44b5-9456-afe321a2bb2a', 'O DEUS DA GUERRA RETORNA, SUAS SETE IRMÃS SÃO EXTRAORDINÁRIAS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8bcd06d2-1c7d-4391-9b9d-a0c6f07e7a4d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-28T22:48:15.071+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O DEUS DA GUERRA RETORNA, SUAS SETE IRMÃS SÃO EXTRAORDINÁRIAS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '22c428ff-7879-46c1-8b2b-ebeb1abede56', 'ELE NÃO É SEU MARIDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5984157a-604c-406b-9099-ccafbf344f7c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-28T22:47:35.939+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ELE NÃO É SEU MARIDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '98a54dc9-63f9-4116-b051-b44c3c2a54a8', 'A FILHA DO INFERNO CHEGOU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e674d84c-5ff8-4558-97df-154ccd9f7fe1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-28T22:46:56.368+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A FILHA DO INFERNO CHEGOU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a8a05932-03fe-41b1-869c-f8be48adae67', 'ALUGUEI UM MARIDO BILIONÁRIO PARA O NATAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3630c8c6-fe03-45d5-b819-8c14db3e7eef/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-28T22:40:39.255+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ALUGUEI UM MARIDO BILIONÁRIO PARA O NATAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c172700-d577-4c76-8afa-da5bf6739f32', 'Meu Ceo Meu Milagre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/025bf07e-529a-4d4e-863e-788be701a6da/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-28T15:51:24.331+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Ceo Meu Milagre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '52a8b268-87ba-4db2-bc47-5faba154abfc', 'Aniversário Fim Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/90bc4e1a-1d3d-4e98-bb14-dc9344196904/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-28T15:50:32.532+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Aniversário Fim Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '464afd05-2f83-4d95-856a-5ce295c72077', 'A FILHA REJEITADA VEM COM FORÇA MILENAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd998cea-019f-4700-93f1-1128c25eca56/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-28T15:49:55.138+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A FILHA REJEITADA VEM COM FORÇA MILENAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '20c5338f-86d8-4c3b-af00-23e36bbcbc5b', 'O VERDADEIRO AMOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7838dc42-b7d5-4d65-b4ea-1c5d0f75f22d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-28T15:48:53.935+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O VERDADEIRO AMOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '519681d3-ae5b-42f6-b510-221bc6d045fa', 'MEU GATO BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d4d712a5-5221-4f18-b0d8-319df648f26f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-28T15:48:01.604+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MEU GATO BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b2eee944-5011-462b-9d0c-83b19a81bb1a', 'A PRINCESA REVERSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c1eadbbe-8b90-4e9d-a291-9a26b5bfa1e9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-27T15:43:57.895+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A PRINCESA REVERSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '20a1ed51-100b-45c1-9da7-4ca45f4a8ee0', 'PEÃO QUE ELE DESCARTOU XEQUEMATE DELA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c8698c8a-8662-4907-b81a-02343694435e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-27T15:43:17.511+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PEÃO QUE ELE DESCARTOU XEQUEMATE DELA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a3c0039f-2eee-4541-bafb-127b9662e66d', 'A RAINHA NO SÉCULO 21', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1614e707-7ed9-4493-80bf-c7261250b059/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-27T15:42:42.837+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A RAINHA NO SÉCULO 21'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3cbb2cce-8c90-4d0c-84de-84c13ea6f704', 'Do Trauma Ao Amor Sob o Mesmo Teto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b586f0d4-e885-45e1-9dea-f4de172998a1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-27T15:41:36.668+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Trauma Ao Amor Sob o Mesmo Teto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '91740b4e-f3af-4ae3-9f50-8d44b4e515a2', 'MARIDO MUDO ESPOSA ALTIFALANTE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8da9d313-561e-45bc-b0c6-6325eab01066/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-27T15:41:01.059+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MARIDO MUDO ESPOSA ALTIFALANTE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e825214a-5fee-41aa-a059-e952f9f3466a', 'DE ENVENENADA A INIMIGA IMPLACÁVEL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e65b654d-9285-4ad3-b7de-9e203ec92397/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T22:13:42.017+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE ENVENENADA A INIMIGA IMPLACÁVEL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d319f81-75fc-4bb9-9417-148afe0933e0', 'O SEGREDO DO ANJO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cf9140d6-4685-4b0d-b39c-6d54e526e994/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T22:12:29.231+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O SEGREDO DO ANJO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '550c9681-e57d-4573-9b0a-624ed51af30e', 'DO TRAMBOLHO AO TRIUNFO O DEVANEADOR POBRE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/feeda94b-e32b-41ce-b20f-4cc6ab656ea9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T22:09:22.59+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DO TRAMBOLHO AO TRIUNFO O DEVANEADOR POBRE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1726ec86-b68f-4b3b-8f7b-a29dcf4fd640', 'VOO FATAL DESTINO REFEITO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fff4ac6b-febc-4f21-96ba-f8fbd19a2b4f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T22:08:09.774+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'VOO FATAL DESTINO REFEITO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6f4db9ca-0718-4b8c-889b-1701362254d0', 'Contagem Da Vida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b60c03ca-6131-4c98-9498-6c2c3b9b0917/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T22:07:16.959+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Contagem Da Vida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '43dda068-a8a2-46fd-b1ab-0d49efa8db2b', 'Dar O Fora Virar a Dama', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/92abad51-19fe-44b9-b9f0-593f7731d643/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T22:05:43.328+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dar O Fora Virar a Dama'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e6f900a6-8f66-4b59-ad4d-3baccf65f1b2', 'CAMINHOS DO ARREPENDIMENTO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c2c3de20-4f09-4677-99f3-00029d1cc47c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'', ''identidade-escondida'']', '2025-12-26T22:05:05.169+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CAMINHOS DO ARREPENDIMENTO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f3a6dde7-16d7-40bf-8ce9-79854992c7ff', 'SEU NOVO AMOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4de411c0-a767-476f-a7cd-1986035166c4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-26T20:32:35.785+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SEU NOVO AMOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '925941d1-0942-4270-bb8f-376f3b7813d1', 'JOGO DE TROCA DE MARIDOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bf0cf008-2c8a-4094-adcf-c06d23c91ec2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T20:17:08.126+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'JOGO DE TROCA DE MARIDOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '608dddeb-4b8e-4d52-8907-d0dfb4e56398', 'Casada com o Rei Lycan Secreto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8545a25e-8f3d-4de1-9c2f-9f9b0c1e598a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-26T20:16:18.114+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casada com o Rei Lycan Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4f6654ac-b38b-4360-971f-7e1d5ab913ae', 'NO LEITO DA VINGANÇA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b0ba1561-6cea-4c66-98f5-fb064b0a6496/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T20:15:33.648+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NO LEITO DA VINGANÇA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '15fc0263-a2c9-4082-940d-4299eda7cef6', 'O ÍDOLO DE HÓQUEI NÃO CONSEGUE ME SUPERAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b3ba881f-b84a-4122-9332-d7eaa47d3375/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-26T20:14:17.421+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O ÍDOLO DE HÓQUEI NÃO CONSEGUE ME SUPERAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fb21ad88-69d4-44ca-8723-46cea7ab2a0f', 'TUDO O QUE EU QUERO DE NATAL É O MEU MARIDO QUARTERBACK', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d8846447-c06e-466f-817d-c6d229437b6a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T20:13:34.85+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'TUDO O QUE EU QUERO DE NATAL É O MEU MARIDO QUARTERBACK'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f174d555-53d8-49cc-b63a-03c18b065e0a', 'VOCÊ É MEU MINHA POR DESTINO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eaa17c8e-4960-4917-b0e8-567ed4757601/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T20:12:29.337+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'VOCÊ É MEU MINHA POR DESTINO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '042aa0cf-cc2a-42e8-ad81-7c6b7f9775ad', 'Meus Herdeiros Inesperados', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/50e59986-7a51-4749-a980-53e5c62a556e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T19:00:08.499+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meus Herdeiros Inesperados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3bb7056e-f794-41b1-aefc-a0afae7b2eb0', 'A VINGANÇA DA VERDADEIRA HERDEIRA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b550c38a-6ac4-4e59-96ca-55f1de91cbc2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T18:44:48.295+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A VINGANÇA DA VERDADEIRA HERDEIRA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '524e96fb-61c0-4f60-a5a9-81fb36ebe2ef', 'NATAL COM MEU REI DA MÁFIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/caf1bae6-1c70-47c4-ab2b-77e5aadfffc8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T15:49:09.11+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NATAL COM MEU REI DA MÁFIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a00c1a87-5a43-44db-8376-04a57f22fc5b', 'LAÇOS DO DESTINO AMOR RESGATADO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4947fc80-2f6e-4881-90fd-70bdfcb1d739/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T15:48:34.34+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'LAÇOS DO DESTINO AMOR RESGATADO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eaff1fa8-b1a1-4584-9c88-33aed5b1b2d0', 'Mãe De Sangue Falso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/76dfbdb6-c32e-4a63-966b-4d1e5b3986e4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T15:47:27.55+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mãe De Sangue Falso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ab5ceb70-67dc-49bc-ba4a-088470f456b8', 'Tempestade a Caminho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a7576fb9-f063-4dd8-8146-410f1c83bf5e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T15:46:42.694+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tempestade a Caminho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1f7eb2f7-bc7d-4603-957f-b6a41a2a92fa', 'Sem Memória Só Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4142f996-04ec-49c3-a499-273336d4a359/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T15:40:15.505+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sem Memória Só Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8772e490-ac52-4899-9630-6caa73d6faf8', 'A Rainha Volta Com Poder', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/64761b84-acf9-4633-a593-6bd87d987bc4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T15:39:22.872+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Rainha Volta Com Poder'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '59d50790-964f-4781-9868-1f5880cd43dc', 'De Invisível a Resistível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d26a1f8f-493b-41bb-a576-69cb89cea4a4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T15:38:41.152+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Invisível a Resistível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c937450d-d88c-4919-8558-d5f206ceaec2', 'Divino Do Olho Celestial', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0c57d68b-e802-4b9c-bea5-cec99cc91a00/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-26T15:38:02.681+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divino Do Olho Celestial'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6f61f4ba-47c0-4aac-95ed-f047890fb4ff', 'FLORES AO AMANHECER TARDE DEMAIS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/be702502-fc4c-4451-833a-b2c0829a2f11/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T20:03:47.505+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FLORES AO AMANHECER TARDE DEMAIS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '265b47cc-296e-4c91-970d-cfcd9300206a', 'O RETORNO DO IMORTAL DA ESPADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3e007db0-c8d1-44f8-895b-94c04b8ba6ef/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T20:03:02.022+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O RETORNO DO IMORTAL DA ESPADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dacb6c22-bce6-4ace-96de-7657065221e7', 'DEI À LUZ O FILHO DA AMANTE DO MEU MARIDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d4b69b3c-d5eb-45ef-b913-a2f6dad61e8b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T20:02:22.74+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DEI À LUZ O FILHO DA AMANTE DO MEU MARIDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '588cebf7-ac34-4f9d-8ea4-2d15dd202c1a', 'DE ENVENENADA A INIMIGA IMPLACÁVEL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eec968ac-92fd-4e24-8f2a-37faecb2c2c2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T20:01:43.741+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE ENVENENADA A INIMIGA IMPLACÁVEL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd5104bb0-ed01-4afe-bdb2-2000c6b5ed0f', 'ROSA NA PALMA DA MÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d913c97c-1200-4608-b744-031f7658a8af/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T20:00:50.812+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ROSA NA PALMA DA MÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5971daf6-cf07-4ca4-8780-55f56733bc1e', 'DESEJOS QUEIMAM DEVAGAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9246b89c-231f-40f0-b436-a66b86b0a90e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T19:59:39.345+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DESEJOS QUEIMAM DEVAGAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '404a7c7f-41c7-4420-8c39-e0617f0ae6c7', 'SOMBRAS DA VINGANÇA AOS LOBOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ecdff039-6681-485c-8c53-626a8b3dddf9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-24T00:15:11.513+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SOMBRAS DA VINGANÇA AOS LOBOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '62ca5a09-e925-4e0f-8704-b8e57bd612f7', 'Lobo Divino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f46f97e7-77c9-4651-8833-9129d17c5b94/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-24T00:14:19.171+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lobo Divino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '91bbc579-68fe-4fa0-9aef-ab1740133e24', 'AME ME OUTRA VEZ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3c535995-4817-43c9-a935-43876a95486f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T00:13:15.859+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AME ME OUTRA VEZ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ddcda4ec-e6cb-43ae-8af6-6eba1e713d2b', 'Odeio o Jeito Que Você Mente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a2ccb8f8-b210-4633-9f3d-4715a0b43c3c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T00:12:29.931+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Odeio o Jeito Que Você Mente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '128879a5-c579-4f37-89f3-87fd2946e6dd', 'TARDE DEMAIS PARA UMA SEGUNDA CHANCE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/25c4937b-e14e-4e4c-9189-56443c2b4d3d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-24T00:11:13.885+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'TARDE DEMAIS PARA UMA SEGUNDA CHANCE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f1f1b878-3e57-4ee9-87bc-bea4f2c6f43e', 'Sem Você Vida Nota dez', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fef5ef2c-e5af-4cc4-baf9-fbc503db36ce/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T00:10:16.621+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sem Você Vida Nota dez'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '76f8cf55-e43d-4ad7-a4af-e04d11972160', 'DORMI COM MEUS TRÊS ENTEADOS LOBISOMENS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4d22704f-4839-4384-b193-ac83b859f2dc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-24T00:08:30.19+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DORMI COM MEUS TRÊS ENTEADOS LOBISOMENS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ec70ea76-7cb7-4c7e-8281-4a20be368fa8', 'O BRILHO DA SRTA JOANA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4124497c-060a-4bc7-8fe7-cdaf49c1a185/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-24T00:05:41.548+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O BRILHO DA SRTA JOANA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '51582911-0155-4411-8b9e-51fd9c2cb8d2', 'O Limite Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3d43646e-be0a-4487-bd0e-f60d3fe6bf2c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-24T00:04:43.774+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Limite Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '452122da-ca53-496e-9567-f65f6fca2e0e', 'CONFUNDIDA COM SEU MATE O ARREPENDIMENTO DA LUNA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c0da423d-24bb-48c4-8eed-6a44c6e44aa1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-24T00:00:19.89+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CONFUNDIDA COM SEU MATE O ARREPENDIMENTO DA LUNA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e87f5141-cc26-4148-b69a-640f57b37a28', 'O PRÍNCIPE DA LUNA REJEITADA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/71d4841a-2fda-4d96-9ef9-a0da0cc69346/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-23T23:59:31.145+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PRÍNCIPE DA LUNA REJEITADA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '16cd835a-1707-48d2-b224-f275b9abc469', 'O LUTADOR QUE ROUBOU MEU PULSO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7f391f59-9da9-4761-828a-722ddbecd817/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T23:46:20.702+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O LUTADOR QUE ROUBOU MEU PULSO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '06097b6b-7fab-42bc-b98c-2711e0873967', 'Desejo Do Meu Alfa Ocidental', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b352cf75-2a6a-48b9-ba56-734dfc96694f/playlist.m3u8', '[''novo-lancamento'', ''homem-lobo'', ''mais-recomendado'']', '2025-12-23T23:45:31.458+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejo Do Meu Alfa Ocidental'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7559249e-0651-4a56-9480-494cae4af86a', 'Cheiro De Destino almas Gêmeas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d17125f8-25e5-427d-a72f-112bb7845a7c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T23:44:20.86+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cheiro De Destino almas Gêmeas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4312f202-361e-4607-a718-13e5de31bde2', 'Quando o Amor Falha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bc8364fc-1a46-4c15-8025-192f12b67db9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T23:42:51.228+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando o Amor Falha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3b6c265c-167a-4277-8abc-5b69736d824a', 'Seu Amor Selvagem: Reality Show', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6d40beca-e664-4137-bead-9e908f25d374/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-23T23:41:51.837+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seu Amor Selvagem: Reality Show'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8a617afd-8877-4515-845e-9bb284e91c07', 'Confundindo Poste Com Luar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/07290bbe-329d-4f9e-a25d-a927493c867f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T23:41:01.751+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Confundindo Poste Com Luar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd1e40f3c-6c68-440a-9e91-a6104211993d', 'MÃE DE ALUGUEL, AMOR REAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6ce8483b-41cf-494d-80ea-3c66a6776748/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T20:48:13.966+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MÃE DE ALUGUEL, AMOR REAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6499ea74-e72e-45f2-8afb-9936f3911735', 'MINHA LUZ ALÉM DELE', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/87ffed27-7268-4560-b407-0ee581042565/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T01:44:42.353+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MINHA LUZ ALÉM DELE'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '691ee249-7002-4abb-a178-5399a6efd975', 'Rei Bastardo da Luta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ea4546c8-8d4c-4b1e-bfd1-f369df9deec6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T01:43:46.858+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rei Bastardo da Luta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e4377b1c-fa57-4f25-be2a-930dcdc6a498', 'APÓS A METAMORFOSE O MARIDO IMPLORA PERDÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e31bbfc9-0587-4ca7-882e-205cab9e26ea/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T01:43:00.888+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'APÓS A METAMORFOSE O MARIDO IMPLORA PERDÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd50ecf33-a950-46eb-8767-18e740ec9789', 'AMOR ENTRE CORDAS BEBÊ FUGITIVO PRESO POR UM FIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5fbf0e62-cde6-4937-a4a5-6a5324c7e778/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T01:42:09.984+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR ENTRE CORDAS BEBÊ FUGITIVO PRESO POR UM FIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5e147ac2-39af-46bc-9b87-a8ae94acd118', 'Um Herdeiro Entre Nós', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ecd6af69-8710-47e6-8130-d2e0b0e4e7ae/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T01:41:17.013+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Herdeiro Entre Nós'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '82fded15-ce60-4182-b52f-02c2e0812587', 'O SOLDADO BRUTAL QUE FICA MAIS FORTE AO SE CASAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5807faca-c76d-4ff9-8a38-0a82ca666185/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T01:13:48.302+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O SOLDADO BRUTAL QUE FICA MAIS FORTE AO SE CASAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '53b7adf9-2ca6-4444-86cd-7b0ace38de64', 'Alérgico Ao Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aeabb52d-1685-46f3-808b-f133a0bb8363/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T00:36:57.272+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Alérgico Ao Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4043c60b-e925-48df-8d6d-66ca9de1f03e', 'A INDOMÁVEL ESPOSA DO CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4ceefba2-ca21-41cf-820d-e1452300a4fd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T00:35:31.66+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A INDOMÁVEL ESPOSA DO CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8356e3eb-d2e7-433f-9771-5e528684c8bc', 'NO DIA EM QUE ELA SUMIU, ELA PIROU DE VEZ', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/16ad42d7-4518-46ed-b4e5-a937b91e21df/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T00:34:51.539+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NO DIA EM QUE ELA SUMIU, ELA PIROU DE VEZ'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1fd2b545-d980-4ca5-ad1f-c93cf2c1d52f', 'LADRÃO DO MEU CORAÇÃO SOB O UNIFORME DE SEGURANÇA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a6ebd61e-60a6-43fa-acc8-49f2a705900f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T00:33:56.267+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'LADRÃO DO MEU CORAÇÃO SOB O UNIFORME DE SEGURANÇA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5b53bb79-a6b1-4dbb-9301-5750450d0a3f', 'MINHA MÁGICA LUNA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d8cc0993-d1a5-4698-a2a1-0b8ea2509287/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-23T00:33:05.756+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MINHA MÁGICA LUNA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bbe598d6-5f39-4ed3-a330-568968610f3e', 'AMOR EM JOGO COM O BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f98fa1fe-9a4f-4e42-a867-e631680e409a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T00:32:22.376+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR EM JOGO COM O BILIONÁRIO'
);


COMMIT;