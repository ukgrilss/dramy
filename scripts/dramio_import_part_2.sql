-- PART 2 OF 5
-- ==============================================
-- DRAMIO IMPORT SQL - Generated at 2026-01-25 19:13:30.065061
-- ==============================================
ALTER TABLE filmes ADD COLUMN IF NOT EXISTS descricao TEXT;


BEGIN;

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2c9608a4-a1f2-4194-9aad-0fe1f224cf56', 'Sou a Obsessão Mais Perigosa Dela', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/00e825ab-ecd9-4243-85ad-e3853c535867/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-23T00:27:03.937+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sou a Obsessão Mais Perigosa Dela'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '936dc0fe-2e1e-4827-bfe6-d13823f3a0a9', 'RENASCIDA EM 1989', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1584a2c8-f8bc-4255-8724-471614f4aa32/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:43:53.534+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'RENASCIDA EM 1989'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bd2b7aca-e7fe-4553-9e0c-15a03d1f3384', 'NUNCA MAIS TE ESPEREI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3f6006c4-45b8-4ac9-922f-fcffbc85e8d0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:43:19.122+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'NUNCA MAIS TE ESPEREI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cf38ef6a-4b4c-49dd-a75b-5786dd89165a', 'AMOR JAMAIS PERDEU PARA MEMÓRIA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2d65b733-080e-47ef-8a55-69b3e0b63783/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:42:34.923+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR JAMAIS PERDEU PARA MEMÓRIA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e694624d-8287-4359-b349-c6f9f165e616', 'DA QUEDA NASCE A ASCENSÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2fd6dcfb-2f03-4e9f-9a95-d8c34f58f2dd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:41:52.366+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DA QUEDA NASCE A ASCENSÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6ef08001-f29c-4a98-b680-09d25dea578c', 'PAIS DESAMPARADOS SOU COSTA QUENTE DELES', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0a9194fd-2508-4d7c-82cc-4fc66a209a04/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:40:58.28+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PAIS DESAMPARADOS SOU COSTA QUENTE DELES'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bdfbddfc-d26d-4789-85ca-ca5b92177c84', 'IMORTAL CAÍDA O ARREPENDIMENTO DO IMPERADOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2e4255d1-a316-49c7-bdde-4e215776e294/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-21T19:40:10.962+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'IMORTAL CAÍDA O ARREPENDIMENTO DO IMPERADOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a2ce939d-68a5-42ff-8f63-34e56dd9bf07', 'DE BILIONÁRIO A PAI EM TEMPO INTEGRAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2e4f9297-376c-4be6-acc5-3f3cd74c343d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:39:16.648+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE BILIONÁRIO A PAI EM TEMPO INTEGRAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '41f5a0dc-c414-4608-8ab8-f0cb0c476b10', 'Pai Segurança Pai Magnata', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/303d8528-0d23-4a53-b227-a44dc188b6b4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-21T19:38:18.411+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pai Segurança Pai Magnata'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5b20bfa0-b3e7-4671-9e56-c816237760b6', 'O PREÇO QUE PAGUEI PELO MEU AMOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1cd1ffa8-d4c9-406c-af3d-72b2ac237bda/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:34:13.27+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O PREÇO QUE PAGUEI PELO MEU AMOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '905679bf-0192-4fac-9e27-66faf81ea633', 'MÃE DIVORCIADA ACABA COM TODOS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d11dea22-7a1e-4634-acc8-f054bf05cd96/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:32:39.988+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'MÃE DIVORCIADA ACABA COM TODOS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f13819e8-a76c-43d7-8df3-6ee50862c1cd', 'QUANDO CORAÇÕES PARTIDOS VOLTAM A BATER', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/57b930d6-a732-4ad6-aed4-5f5b716109e3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:26:39.166+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'QUANDO CORAÇÕES PARTIDOS VOLTAM A BATER'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd5d787bc-4d26-4232-b382-d22dfff18532', 'Amor Imparável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de7b014e-4045-480e-abdc-aedfd4e510a4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:25:46.074+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Imparável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ed537806-94fa-4759-a1e0-6dd11170ccdc', 'ELA LARGOU O MARIDO BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b4b5c3b9-fdd4-44f0-ab09-fab0b9470302/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-21T19:24:58.945+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ELA LARGOU O MARIDO BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74e7a9fa-07f8-4d6c-a975-77e45d71ede7', 'O DIVÓRCIO É O MEU MELHOR PRESENTE DE NATAL', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd17652b-c0a0-4157-9849-9d33d845e595/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:23:55.223+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O DIVÓRCIO É O MEU MELHOR PRESENTE DE NATAL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e4e88953-80b6-4957-8a5b-85af9c801e5f', 'DESTINO ENTRE NÓS', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/557a31e8-629d-46d0-94da-913518942b81/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:22:03.89+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DESTINO ENTRE NÓS'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6b1d17f7-ac62-43f0-81bd-ef5f9df03489', 'Após Minha Morte Ele Desmoronou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7da24d53-f5a0-4c08-a8b5-929c5c13606a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-21T19:21:11.834+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Após Minha Morte Ele Desmoronou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ab056dd1-98a4-4a8d-ac93-7a16eb3a1e12', 'Da Sombra a Rainha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/968b6e50-506c-4553-b549-cd8d4080494a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:52:13.236+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Da Sombra a Rainha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9667d0e8-5b66-49c6-b966-d3ddfcde0304', 'No Dia Do Casamento Eu Desisti Dele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cd6f977e-7ea8-44fa-9106-9e7371c20f3d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-19T23:49:12.749+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'No Dia Do Casamento Eu Desisti Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1cc83a74-ba99-4c26-8342-2cc48798e6a5', 'Reunião Não é Retaliação', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/85b461c2-a567-48a4-8894-d56e9f96ac6d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:48:18.196+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reunião Não é Retaliação'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b795a74f-f5df-4925-a391-8064c7a80d52', 'Meu ex marido não para de me mimar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/45f07a92-568d-4071-b1d6-29135126ebfd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:45:43.84+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu ex marido não para de me mimar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd6eda91e-d293-43d8-a8ba-89f56d718055', 'Amor Nunca Mais a Salvação', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b8745314-9b8e-4467-b15f-863096c8c352/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:45:07.199+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Nunca Mais a Salvação'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '912123d0-1f0a-4865-baba-f38d1cb586be', 'A Lógica Falha o Amor Não Atrapalha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c5c8be69-ec6e-45a8-b75f-d4d5984ab6f5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:44:22.294+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Lógica Falha o Amor Não Atrapalha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9eff2926-8ed0-437e-845d-525c81e28d2a', 'Frio Na Alma Após o Amor eo Ódio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6d11487e-193a-4bf3-b630-9936efe75d02/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:43:37.682+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Frio Na Alma Após o Amor eo Ódio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '292093ba-732b-41c2-af65-a4643cc6c0c4', 'Garota Do Escritório', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fc8c3bdd-f70f-4dff-9532-841c4b9098e4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:33:10.913+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Garota Do Escritório'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd9693bc5-cfe9-4557-807a-813a38c50eca', 'Uma Noite Pelo Meu Filho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5a1eee79-520a-411e-97bb-80435da006eb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:32:29.531+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Noite Pelo Meu Filho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8e004d90-a257-418f-86c2-7f3f71cde5d9', 'Papai a Mamãe Está Esperando Por Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9dc88993-389e-45ba-8daf-accbf4195224/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:24:48.825+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Papai a Mamãe Está Esperando Por Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ac7e1087-4286-4b0c-9cfd-643d6e84569e', 'Amor Mentiras e Vinganças', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/21ad5deb-f6e4-4900-8e61-a9807d56bb95/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:24:06.95+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Mentiras e Vinganças'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4a339966-3da9-4a11-bbac-e31bcbdc13dc', 'Te Desejo Alegria Sempre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4ab1fc5c-87a9-4aaf-a158-4a4e0cda5044/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:22:36.532+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Te Desejo Alegria Sempre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '58408f91-acd3-46bb-84da-7574293c9be0', 'A Noite Que Perdeu Seu Encanto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/847682c1-01c1-42c1-8a30-186243ff4cc2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:21:45.061+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noite Que Perdeu Seu Encanto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1792e936-6bcb-401d-84f9-7418d3084113', 'Splendida Renascença Da Ex Esposa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/66c20c2f-8cd6-430a-8501-71b241ef0e0b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-19T23:20:44.732+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Splendida Renascença Da Ex Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2e28f58e-2f3f-4c79-af59-bb110c8b0fa6', 'Atenção a Lenda Viva Saiu Da Prisão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c223b164-6cdd-4d86-93ff-97dc0a4e7175/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-18T14:09:44.243+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Atenção a Lenda Viva Saiu Da Prisão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4edb84bd-8fb5-4680-ba33-bcdccf9c92da', 'Sai Da Frente Sou a Ex Intocável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c2f1b6b3-b217-4ae3-8dc3-538fed7c85ca/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-18T14:07:12.978+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sai Da Frente Sou a Ex Intocável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fbe22361-cd19-45b6-9a76-57ec47a650c8', 'Taxa De Cambio Do Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a0d4a17b-c645-4a22-a41e-ea4e19365bb8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-18T14:06:19.068+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Taxa De Cambio Do Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1928d48a-078f-448f-b24e-afff0078bd6d', 'Um Final Feliz Com o Imão Do Meu Noivo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/578d6c5d-4e80-454e-820c-230e4c8d1665/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-18T14:05:24.123+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Final Feliz Com o Imão Do Meu Noivo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f944e314-86da-42d1-920e-2d32c8643339', 'AMOR É UMA DANÇA PERIGOSA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9a6d169b-b983-47d4-a5b3-390ff043c542/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-18T14:04:22.501+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR É UMA DANÇA PERIGOSA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2dfe13dc-056e-4e32-b95d-f95be3f89cbd', 'BEIJO DE DRÁCULA ENFEITIÇADA POR UM DUPLICADO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f8cf8818-6376-4c5f-9966-8f565a725ebc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''vampiro'']', '2025-12-18T14:00:10.395+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'BEIJO DE DRÁCULA ENFEITIÇADA POR UM DUPLICADO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '60b890d3-fdcd-4d1d-ac66-e8fc82c60f61', 'Falso Amor Verdadeira Felicidade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9572e01c-75bb-4ece-a50e-c5109677753c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-18T13:59:22.832+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Falso Amor Verdadeira Felicidade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0c1f6b32-a136-4213-9f83-1ef4eb27aeb8', 'Esperei Duas Vidas Pelo Amanhecer', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/84edcf23-7f3e-43f5-a614-0bb50acda12b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-18T13:46:57.22+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esperei Duas Vidas Pelo Amanhecer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f457519f-717e-4cf8-9c51-5bfe274279d1', 'Meu Rei Alfa De Sangue Frio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4b7e56ff-d006-4e14-9bf6-18449d5a357d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-18T13:46:05.37+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Rei Alfa De Sangue Frio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9ab133d0-96e1-419b-846f-af11ced98501', 'Pluma De Junco Voa Como Neve Cobrindo O Barco Que Retorna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1b8058cc-e719-48f6-b9ee-f6e75f436f60/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-18T13:45:21.649+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pluma De Junco Voa Como Neve Cobrindo O Barco Que Retorna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '09deb3ce-e46f-40ad-bd44-b1970860b0cd', 'Ame Me Outra Vez', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d3755dc5-2d92-451e-a675-c94b99741cec/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-18T13:44:27.997+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ame Me Outra Vez'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '98fae188-e165-42ca-9ec2-817d137cb42d', 'Chamas da Juventude', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8b70d44e-6e67-4eb2-942f-b609a836a452/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-18T13:43:25.042+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chamas da Juventude'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dd892600-e1b8-4c5b-8b16-1238bae51a6f', 'BAD BOY DA MÁFIA É MEU SALVADOR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d3ddbd8a-fdf9-4280-8959-c07830a7eb4f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-18T13:42:23.353+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'BAD BOY DA MÁFIA É MEU SALVADOR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0175cadf-6045-4a5b-a51a-104a8a3dffd1', 'PEGUEI O HERDEIRO AGORA É MEU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e2180082-76f8-4821-9422-b999975f2a9c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-18T13:39:31.837+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PEGUEI O HERDEIRO AGORA É MEU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '224ef2fd-6ab1-419c-8ac0-bbfbc96fd0c4', 'ESPOSA É INCRÍVEL, O FRIO CEO FU ESTÁ CHORANDO DE NOVO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a1d8e06b-f909-467a-a06c-268d6125ef84/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-18T13:38:25.624+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ESPOSA É INCRÍVEL, O FRIO CEO FU ESTÁ CHORANDO DE NOVO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fbd3b9bc-b2d4-479d-86f2-0afc8f643af5', 'Amor Verdadeiro Sem Magia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/35eb4fb7-face-43b7-8b26-9e4121b1a52e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-17T00:29:41.464+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Verdadeiro Sem Magia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '07f55a52-125d-4d67-a924-817d619095b7', 'A vingança Do Genro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4fed5b09-de0c-49aa-9a44-ae0ae321a74b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-17T00:28:52.879+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A vingança Do Genro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c97322cd-e184-4517-8254-8a3d661188da', 'Herdeiro sob Cerco', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f2d9b645-71e1-4d3b-b2f3-ce8ea49e1cef/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-17T00:27:56.919+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeiro sob Cerco'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7111702b-92c7-4caf-9752-e09afa111944', 'Herança Em Tempestade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/214ee407-4ef0-4c80-a20f-f552173eff05/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-17T00:20:33.469+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herança Em Tempestade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'de444688-864f-4c63-8bfa-9028a6c8aad5', 'Aulas Particulares', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b73f051e-b65f-47b6-9b1c-f66eeb49d00c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-17T00:19:29.799+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Aulas Particulares'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '98da32ba-9584-459f-86fc-cf58d738e9c7', 'Mudar Para o Interior Casar Com Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2da0f0e2-f469-4682-a9c5-c7a481f17a4c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-17T00:18:10.28+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mudar Para o Interior Casar Com Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '267ed7f3-2aa8-4ef2-91cf-b5667b454d16', 'CINDERELA E O SEGREDO DO POBRE MILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8a2bd94d-b004-4fb3-ae0d-265a4e07cd77/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-17T00:17:14.472+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CINDERELA E O SEGREDO DO POBRE MILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '96624f3d-0e37-4f03-8eda-5d9e6fb36b77', 'DE PÉ MEU MARIDO BILIONÁRIO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/71b4c4ab-fb30-47b8-be4a-eb37d5a18f45/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-17T00:14:25.361+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DE PÉ MEU MARIDO BILIONÁRIO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9464204c-9c59-4188-858b-5b9a795e38f6', 'Um Amor Desperdiçado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c2fc5362-6105-4ba1-beb1-db1db8038fe7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-17T00:13:45.531+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Amor Desperdiçado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b72f1d42-386e-46da-a9fb-bb812bb9b312', 'Cicatrizes Do Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6f4b6e71-7592-44bf-9409-9c3b70e9c3dc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-17T00:05:43.235+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cicatrizes Do Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eed700e2-78f2-4a9d-859f-360d75b5fe3e', 'Na Armadilha Da Vaidade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a27fddb9-798f-4430-a51b-d2d11fe3d01a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-17T00:02:56.533+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Na Armadilha Da Vaidade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8b764307-c172-412d-b9a5-83b677d5f941', 'EMPATIA E EGOÍSMO A MULHER  QUE CONDENOU A PRÓPRIA FILHA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/72b3988a-275a-47e5-8c8a-7e2f378feb3c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-16T23:57:08.897+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'EMPATIA E EGOÍSMO A MULHER  QUE CONDENOU A PRÓPRIA FILHA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '854bfc1f-b0aa-4897-8153-b8bac72d0fb4', 'Um Laço Perfumado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/527dc682-78ed-4992-a584-282b990501c6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-16T23:56:21.132+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Laço Perfumado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '94ba8dc4-d7ac-4a90-a0cd-1fd51d845fb7', 'OUVINDO O CORAÇÃO DA FILHA  VIRO MINHA VIDA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d3e68c35-3d5e-4e8f-a86a-211a8931107b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-16T23:26:37.835+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'OUVINDO O CORAÇÃO DA FILHA  VIRO MINHA VIDA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '276f65ce-f212-434e-aff9-76b66b724ff1', 'Quando As Coisas Desmoronam', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9edec256-e640-4e7e-ae60-165317dce7c5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-16T23:04:02.131+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando As Coisas Desmoronam'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5d04d8d6-9ae8-4da5-920a-d9e3b31b29ce', 'DA CONCUBINA À SOGRA: A  DELÍCIA SUPREMA AO TRIUNFAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cf9c0221-0ef4-406e-b5c9-39bc968d0987/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-16T23:03:17.701+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'DA CONCUBINA À SOGRA: A  DELÍCIA SUPREMA AO TRIUNFAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eec50dc3-fa8a-4742-bcc5-914e494a830d', 'Perseguindo a Rosa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/77ea6717-120b-458d-a16a-b8f7cab9bdf8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-16T22:54:44.679+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Perseguindo a Rosa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d0c7373-2242-440c-8783-b29d7503d7b7', 'Aquele Que Nunca Esqueço', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c1ad08c8-ae12-4878-a5cb-f89c71e93349/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-16T22:28:09.851+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Aquele Que Nunca Esqueço'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fce7e4c1-2893-4fe3-9bf2-88145d5b6b7e', 'A Vingança Da Rainha Da Lei', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/727c15b5-ab8d-4013-ae3b-2c7846b18008/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T23:15:04.598+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança Da Rainha Da Lei'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '415579fd-3201-47d5-94f3-59e2e64b3de0', 'Encontro Destinado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c9a7139a-616b-4e48-a314-e68024380996/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T23:14:08.687+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Encontro Destinado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd0115017-cdca-458e-bd4e-0e35177eb62e', 'Quatro Natais e Um Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/375a0363-d71c-4b20-aa1e-b06f55a70dac/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-15T23:13:21.762+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quatro Natais e Um Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '96b8d0ec-109e-4fba-abed-ed3b20416cf7', 'A Arte De Libertar Se', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8da778c6-eadd-4eb8-b304-6fd4c5a4665e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T23:12:13.499+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Arte De Libertar Se'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c21edc62-920d-4b7d-b4e8-a541e13ff1e4', 'Em Nome Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7987ba38-21ab-4524-900b-d0e9671230c3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T23:10:31.641+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Em Nome Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f0f8e48d-a6a7-440c-9ec6-c4db6d128fe4', 'Amor Entre a Névoa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7dc1a806-0a9c-4fbd-964e-034424d0b3cd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T23:09:27.518+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Entre a Névoa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1b657ad7-2442-4c9b-9198-fcf56672e838', 'GRÁVIDA DO REI LYCAN SEM CORAÇÃO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7f3b5269-87b7-47c2-a7f2-ad6943fdf359/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-15T23:07:57.886+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'GRÁVIDA DO REI LYCAN SEM CORAÇÃO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4968db95-a04d-4714-80be-df0b7d456ac2', 'Mimada Pelo Meu Chefe Frio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a7bf0097-28dd-446d-ba4f-62015f6f5cb0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-15T23:06:10.221+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mimada Pelo Meu Chefe Frio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6e2efb4b-5dc7-4371-8692-70077f98a704', 'Devoção Ardente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/df897f76-c4d6-413b-9958-1daa567991d4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T23:04:39.171+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Devoção Ardente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b093d674-3820-4234-818b-5c247a9cef29', 'Meu Impiedoso Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1f295575-e6ab-4aa8-be8e-9f8ec5536d13/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-15T23:03:51.318+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Impiedoso Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bb8120be-0e83-4364-bf8e-ef280f1be8e6', 'Rosto Fofo Punição Implacável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1418d4cb-6681-416c-b0aa-b900b2681208/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T22:15:22.733+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rosto Fofo Punição Implacável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c59a5b1c-02db-421d-9611-838d220592d4', 'Eu Te Deixo Nas Minhas Cinzas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e953419d-b3e3-4a06-b213-5ed497d3b094/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T20:58:27.952+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Te Deixo Nas Minhas Cinzas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1f27987a-20a2-4504-92e4-4f6cc01083c7', 'Sniper Americano A Última Rodada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3d3f516b-78af-4710-a431-a1ce603640e4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T20:57:33.627+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sniper Americano A Última Rodada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '80f4287c-e815-4405-867b-04c384c144ed', 'Destina Ao Meu Alfa Amaldiçoado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/65ac4475-d441-4aa5-9f04-841c5a169556/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-15T20:56:34.446+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destina Ao Meu Alfa Amaldiçoado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1dbf0ee8-d760-46a7-ad9a-448e144c5e58', 'A Luna Perdida Do Rei Lycan', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1498eb07-51ba-440f-b03e-60f0405b1870/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-15T20:55:41.58+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Luna Perdida Do Rei Lycan'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a9c05a4e-6271-4a6f-968f-29c17ec91050', 'Armadilha Para o Coração Dele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f481c81e-efed-47e0-91b8-071ef7c48784/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T20:54:41.734+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Armadilha Para o Coração Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ec436660-a419-4ea2-a3ad-5f39a9e9751c', 'Par Perfeito Inesperado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/156742b0-63ce-4e66-8704-19e046d75088/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T20:53:57.562+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Par Perfeito Inesperado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1c9a550a-954f-4b1b-bb5d-c149366a331a', 'O Centésimo Adeus Ao Marechal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/55acf42f-c004-4905-a2cc-3b67dbb305de/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-15T20:53:03.068+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Centésimo Adeus Ao Marechal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1cc8b365-0639-4c3b-99e3-8964d749e972', 'Diga Sim ao Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aa529331-d435-4b23-9792-4b22375ec9f4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-15T20:51:44.883+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Diga Sim ao Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7e845d8a-d73c-483e-93ca-5b5eb8cd984d', 'O Último Adeus Ao Ente Querido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/93bb5965-682f-4501-b8dd-8b602f67bd9a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-14T17:49:16.81+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Último Adeus Ao Ente Querido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ea0b81b3-6f0b-47bb-911a-4a362cd3f34c', 'Marido Trocado Erro Concertado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4fbc6551-6b3a-4c10-b3ae-9032e094cb24/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-14T17:47:27.356+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Marido Trocado Erro Concertado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b884f6cf-6be6-4c78-b3d5-c093e6dec1d1', 'Eu Armei o Jogo Ele Ganhou Meu Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/df1e9340-f835-47be-b063-8a0e0f44b075/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-14T17:46:51.279+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Eu Armei o Jogo Ele Ganhou Meu Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '61dc41d2-1731-48cb-930a-2d82bebf462e', 'Divorciada Dedicada e Dominante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c6f6aa78-dd3b-4b79-9ef3-fed511578e83/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-14T17:46:06.538+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divorciada Dedicada e Dominante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '15d7583e-0592-4c76-8313-6bc2e6de583f', 'Mamãe Somos Quadrigêmeos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/048bd89c-7234-460d-955b-46d1eb2be3ce/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-14T17:41:10.089+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mamãe Somos Quadrigêmeos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9196b7ab-0d26-48c4-9c84-720ed605c5da', 'Casamos e Agora?', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/18d05378-4ba1-4860-9316-d86f6921af17/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-14T17:40:25.361+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamos e Agora?'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '70ead84a-c626-49ce-a451-55e12f595032', 'Refúgio Nos Braços Do CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7a92f464-98ec-4c7c-b942-7ac1046786a6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-14T17:39:22.098+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Refúgio Nos Braços Do CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5e196f66-e661-4bc9-9c06-40cf26a083a5', 'Meu chefe O Garoto De Programa de Natal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8ec927d5-cdbf-4148-af9b-49501618ae2b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-14T17:38:20.27+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu chefe O Garoto De Programa de Natal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '60845319-7e0a-4e90-95ff-8409f831123a', 'Acerto De Contas Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/919313ac-0db3-420e-b4bc-a81a3ea06c7f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-14T17:15:09.282+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Acerto De Contas Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f5a2be86-d417-4be7-b510-34b0534cd007', 'Meu Pai Don', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8585e515-c714-4ebf-92aa-4634578f6dbc/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-13T20:48:36.186+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Pai Don'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a1ab96d4-5893-4b07-8a38-0be57f129424', 'Como Domar Uma Coroa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a6805501-17e9-49b4-bc73-cd689c4f12ce/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T20:47:01.966+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Domar Uma Coroa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd8d55323-7ca5-4b7f-ac0c-8839c1952851', 'O Anjo No Espelho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ce01f0ad-9145-4fa7-be9c-38bbc7a2a4c5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T20:45:38.658+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Anjo No Espelho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '35662ca9-47c0-4d4f-b791-0d9c75979428', 'Crédito Roubado Amor Perdido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/99c3bb56-4b7b-4552-85f7-a11b69f379ac/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T20:43:57.682+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Crédito Roubado Amor Perdido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7d27e3df-aa7d-45f7-9c78-a8fcba2daf05', 'Até Morrer e a Eternidade Adiante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1977347b-da91-4ded-9794-58fb649fd906/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T20:43:16.629+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Até Morrer e a Eternidade Adiante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ebe544b4-fb3d-4985-9b64-dd3693a4edf8', 'ENTRE A VIDA E VOCÊ, SR. SU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/835eaaae-f32c-452c-9f5e-34d9a851180e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T20:41:59.602+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ENTRE A VIDA E VOCÊ, SR. SU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2dc744db-8dfe-49b2-a042-c51dab455915', 'No Fim Da Névoa Ninguém Retorna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e7cc5b7a-c476-42a0-b100-7db2bebb882f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-13T20:41:09.705+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'No Fim Da Névoa Ninguém Retorna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e7419907-1622-4ffe-bc7a-60b1f1440955', 'Me Tornei Madrasta Do Meu Ex', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/48abe9bd-4327-46bd-8276-26ba9b6f0c5e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T20:39:24.516+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Me Tornei Madrasta Do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7ba66fc1-794f-40b5-bd4e-f12c47472750', 'A Tutora e o Rebelde', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/36730e28-a3f7-4356-a0f0-97bdceb88a61/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T20:38:33.202+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Tutora e o Rebelde'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '91d38245-7f76-42eb-a810-99af6d6accd6', 'Princesa Verdadeira VS Rainha Falsa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/95c15fdf-8959-411e-8ee1-1a99672084ce/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T20:37:48.254+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Princesa Verdadeira VS Rainha Falsa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bef81523-cb8b-4381-b429-5236697ae063', 'Receita Secreta Para Conquistar Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/38955ee1-87dc-4dd2-b97f-ae85fd2c239c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T20:37:01.559+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Receita Secreta Para Conquistar Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'aaa92037-166e-45b8-a254-4848e40ee7bf', 'O Segredo Do Pai', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eb96c3b9-f15c-4933-a679-ca99375f3adf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T03:56:29.45+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Segredo Do Pai'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b4f69ff5-a84f-4e99-bb48-a52880c2b884', 'Vingança Da Senhora', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/82a84a48-d7be-4552-8b70-a2a03c0d4a12/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T03:55:45.918+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança Da Senhora'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bbe0baca-88a3-4c46-afc5-6f5051371129', 'De Capricho e Carinho Uma Aposta Bilionária De Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/67b81f16-edb0-499b-9ab5-0193c41e0825/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T03:54:56.516+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Capricho e Carinho Uma Aposta Bilionária De Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c5c579d6-f11e-4b6a-8a63-5aaab02a503e', 'Nove Caudas De Cinzas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/64101049-4843-430c-8788-78e6393712ae/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-13T03:54:00.116+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nove Caudas De Cinzas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'be225280-9ef9-4621-af83-8ecca6f10dbe', 'O Amor Nos Uniu De Novo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/194e166f-5d02-4547-90d8-5f8c3ba1aa06/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-13T03:53:13.467+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Nos Uniu De Novo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '48e33ec8-8456-4dd1-916f-2acf995c19ec', 'Sua Doce Bela', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9f8de89a-e202-4bb1-b678-668775552b8b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T03:52:13.184+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sua Doce Bela'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f7d91758-8d9b-4ff8-8951-4dde3931ae6e', 'Meu Pai Voltou todos Estão De Joelhos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1cf08c2c-ad79-489c-a9f9-4c6008c33dc9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-13T03:51:09.751+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Pai Voltou todos Estão De Joelhos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '18d36924-5745-44ce-96b8-a6a870bdce87', 'Ascensão Do Pequeno Mestre', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/022f5197-6048-4815-8713-a2fcbcb2ee03/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T23:08:21.989+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ascensão Do Pequeno Mestre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '508732c9-47c1-43d7-adf8-ce39d51206a7', 'Supremo Mestre Demônio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a0aeccf2-fd8a-47e2-ab52-082db2dc3246/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T23:07:10.588+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Supremo Mestre Demônio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '83495412-5100-4c5d-9d8f-aab77691c064', 'Reencarnação Sem Perdão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/09035d2b-f5c0-4a4e-bc14-63f53c2fb718/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-12T23:06:19.014+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reencarnação Sem Perdão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd421b67d-0458-4423-a069-19dfffdb3677', 'Amores Que Nunca Se Cruzaram', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7c3bc51b-3b29-436d-9b23-e2d1ae96c6ec/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-12T23:04:42.369+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amores Que Nunca Se Cruzaram'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f04883d2-5f5c-465e-8539-3c2fd84d76b6', 'TRÊS ANOS DE GUERRA FRIA A TERNURA SE FOI', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6d85ee92-c64d-4933-84ec-a08ad6c56b0f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T23:03:14.349+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'TRÊS ANOS DE GUERRA FRIA A TERNURA SE FOI'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a3895c63-bfbb-43b8-bcc2-ba8cbc3bdab3', 'FORA DO ORFANATO, O MUNDO INTEIRO VEIO ME BEIJAR', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b4ed1d16-75e4-44a3-9c50-0af8590415cd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T23:02:24.725+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FORA DO ORFANATO, O MUNDO INTEIRO VEIO ME BEIJAR'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dd3bb41b-43e1-4b6b-b0b1-34384b42666f', 'Madrasta Feia virada Perfeita', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a98e229b-e0a7-4e8a-bcd4-c52d15fcdd0c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T23:00:38.899+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Madrasta Feia virada Perfeita'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'aacae236-68e1-466a-ad95-5f0bf0586641', 'Meu Vampiro Ceo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/897514c3-905e-4827-9821-93f784cc9546/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-12T22:59:32.068+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Vampiro Ceo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '06ece6a8-758f-4699-9e16-33b9268067b8', 'Psiu Ele Não é Meu Marido Ele é Meu Alvo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/33b942d0-dc17-41d2-9934-eaf4ebf2dd56/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T22:58:39.88+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Psiu Ele Não é Meu Marido Ele é Meu Alvo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3f0a2182-a44d-4e15-861e-5d440dac1177', 'FIRST TENDER SPARK/Primeira faísca eterna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0541ae12-e721-4bef-981b-b16e21c3b756/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T22:57:50.349+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'FIRST TENDER SPARK/Primeira faísca eterna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '87524a19-5452-461f-a9b1-19cf81aaf491', 'A Escolha Do Bilionário Par Perfeito', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/060aa42e-9e0f-4154-b6ce-0709fc2dd745/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T22:56:42.059+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Escolha Do Bilionário Par Perfeito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3a0f5d4f-aadc-4c70-bc20-e00b894cc6c7', 'Quando O Coração Reacende', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/628c92be-7d27-4fa2-bfa4-09369f1b8f15/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T22:55:41.284+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando O Coração Reacende'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5d54141c-bcd3-4470-8cdd-04e8a75c9fd5', 'SWIPE WRIGHT ENCONTRO 101', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fe57617c-88e7-433c-8dce-b99ce6eae6c3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T22:53:53.507+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'SWIPE WRIGHT ENCONTRO 101'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e8b8acda-b9d5-4254-8f3a-aad68abe56fc', 'A Herdeira Tola Contra Ataca', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c76e671c-16ac-4e8a-a18c-c38f63688767/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-12T22:52:52.57+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Tola Contra Ataca'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a12bfb9d-e6d1-4780-8515-8d9402cff535', 'AMOR E ÓDIO SE DISSIPARAM, CONCEDA-ME MEIA VIDA DE INDIFERENÇA', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7df2545e-aa02-4df7-941c-81cd05e2be1b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T21:49:46.347+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'AMOR E ÓDIO SE DISSIPARAM, CONCEDA-ME MEIA VIDA DE INDIFERENÇA'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f5d21087-f5c3-42f8-8963-540f6ef81e4f', 'Um Pirralho Mimado Estraga Tudo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ce4a2f11-e6a7-49a3-bbff-a621205a99c1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T21:48:56.221+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Pirralho Mimado Estraga Tudo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b2fc56aa-4990-45e3-b4f6-5ab03360e7fe', 'O Piloto De Oito Anos Rumo Ao Céu', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4022d8c2-e81d-4d36-9340-0f1b17e86b2e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T21:48:02.615+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Piloto De Oito Anos Rumo Ao Céu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f48501ac-31ff-44f7-a553-224d583c76d6', 'A Menina Encantada Do Regente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/13e5e0cd-e205-4b2f-8400-b6be2cda3b55/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T21:47:06.639+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Menina Encantada Do Regente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a2fcd6dd-5f16-43df-b6d1-ce30acc2f430', 'Seis Bebês Um Pai Milionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1996ca66-822d-49f8-8675-6b93a34a9bd9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T21:46:06.083+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seis Bebês Um Pai Milionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '38e69b4e-a047-4ba8-b07b-08568cdaa9e0', 'Dessa Vez Eu Escolhi Mafioso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b543e7c1-af19-40d1-92ce-820b93786c02/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:34:28.775+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dessa Vez Eu Escolhi Mafioso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd4b8dfc9-a708-4171-92ef-953e5c833ce5', 'Refúgio Perigoso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/49304447-cf5b-45a9-a058-f5c7f5c92055/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:33:51.424+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Refúgio Perigoso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0e7a0dc2-4005-4f53-85b9-ae871db768d4', 'O Resto Da Minha vida Será De Solidão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aba105bf-9ae8-4b06-9133-ab4b4234ca67/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:33:11.091+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Resto Da Minha vida Será De Solidão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '60b05f7d-1cb4-4af8-99cd-174fdedf007b', '99 PROMESSAS DE UM AMOR, UM ADEUS EM UM SEGUNDO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/877508e1-0893-40c2-895a-7fd9536b32c0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:21:06.548+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '99 PROMESSAS DE UM AMOR, UM ADEUS EM UM SEGUNDO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '97869132-7b64-4424-a1c4-dd7c2bd36c42', 'Quando a Substituta Some', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/408bea61-b71a-40c4-9f61-0da89ba52943/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:20:21.698+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando a Substituta Some'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f3ae7ede-cd39-46d0-afb9-fc54e6e0286b', 'Meu Amor Secreto Era Meu Inimigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bb31b478-c773-4d4e-aece-0fdef162d522/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:14:27.578+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Amor Secreto Era Meu Inimigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2efac714-85cb-42b3-8664-b27f08a80f11', 'A Médica Do General', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4e49e7d9-aa84-493e-addc-caf9429af18e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:13:32.24+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Médica Do General'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1e3f4a33-2ea3-46f8-b2d6-1a05cd8faab4', 'Vingança Conjugal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/972d7ef8-56cb-4878-a7f5-ee22b4831637/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:12:47.414+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança Conjugal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fdcf8141-56f0-4807-ac55-7a0c50b2c4c1', 'APÓS CINCO ANOS FINGINDO A MORTE, REENCONTRO COM O EX-MARIDO E ELE CHOROU', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cca5378b-c837-40fe-a43f-354f53f3a436/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:06:01.293+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'APÓS CINCO ANOS FINGINDO A MORTE, REENCONTRO COM O EX-MARIDO E ELE CHOROU'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6773557a-4cbb-4025-96ea-32f2c0452bce', 'Cicatriz a Luz Da Lua', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/20d44dbd-29b5-4d35-807e-300f59a5614f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T03:05:17.17+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cicatriz a Luz Da Lua'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'df1afc29-f479-4b32-b40c-ddd57297edcf', 'Corrida Selvagem Com O Perigoso Kian', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bb4393bc-ae45-4c5c-a48e-9a9b9f88e9eb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:58:55.788+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Corrida Selvagem Com O Perigoso Kian'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ca510df1-c03b-47e0-b33d-993b85e95e8d', 'Correndo Atrás Do Prejuízo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/06e17843-b5ec-4745-aab0-f511498b417f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-12T02:58:12.815+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Correndo Atrás Do Prejuízo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5de5f370-6e20-4266-9472-747b185aac24', 'Minhas Lágrimas São Águas Passadas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/045f8977-08a7-42ca-bd73-5e1c355f9d40/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:57:19.613+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minhas Lágrimas São Águas Passadas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '79c605e8-4af6-4283-be22-912554d1777e', 'Corações Conectados', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cfb3ee7e-85a2-40fe-affd-bf8f0994ca27/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:48:30.638+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Corações Conectados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0d2f5623-972f-42ee-9a83-36bef6429dd2', 'ACerto De Contas Do Meu Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fb4a6d7b-0bca-4b9b-998d-a16806d87a91/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:47:43.363+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ACerto De Contas Do Meu Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cfc7e953-78e6-420b-876b-6da6c4471aa6', 'A Noiva Reserva Do Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/73c922f6-2ebd-4afa-ae79-bde5e89ed9e2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:47:03.174+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Reserva Do Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3cd70e08-c203-4437-afb4-b4f49b7d09f7', 'Sete Noite Com Meu Ex', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/55110a9a-3957-4573-b7dd-dee9e3c277e7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:34:36.386+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sete Noite Com Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5ea75d32-ae89-40bd-9f5f-935075682186', 'Destinada a Encontrar Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8c87df9a-f01a-4c94-8768-acd74e360e2f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:34:02.072+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destinada a Encontrar Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '550c77c1-9bd8-4126-9d2d-f31224dadab6', 'Amor De Espera Na Hora Certa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1a30d73d-dc87-40e7-8759-3c011cfc6630/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:32:03.079+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor De Espera Na Hora Certa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '99755623-f4af-4d04-87cc-476a14cf8d0d', 'A Vingança Da Herdeira Abandonada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c5f8aa3c-7e63-4b0a-83ad-5aa4033f4fe7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:29:51.756+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança Da Herdeira Abandonada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '059d9b3e-42c7-403e-85dc-a62f62922a81', 'Abraça Me Na Escuridão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e6b4a277-ede2-4110-9bc4-596d9cf45154/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:29:13.744+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Abraça Me Na Escuridão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0159adf2-a0ef-449d-8c04-88821bc26521', 'Amarrada Pelo tio Do noivo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5dbab9ce-41e2-4d4c-a5e4-2f9382553f52/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:28:22.132+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amarrada Pelo tio Do noivo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c4d16de3-a9ae-4372-b22c-5c3cf138bcd2', 'Querido Professor Você é O Pai Do Meu Bebe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9f09e7a0-58fe-4d63-be54-e9ebcf90f078/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:18:26.888+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Querido Professor Você é O Pai Do Meu Bebe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cb3eb65c-6596-47c5-8676-1093ba7c3f65', 'Frequência De Amor a 30000 Pés', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/526a1725-3a6d-4d5e-846b-159cbc1b46ac/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:17:44.36+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Frequência De Amor a 30000 Pés'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3d041c16-7d86-4bff-8ff8-136057385f00', 'Anos Fugazes Memória Eterna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5bdff263-b231-4a98-93ca-eebbe389a6ac/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:15:42.11+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Anos Fugazes Memória Eterna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e5dcbf4c-db54-4ce8-98a4-5f23288688bc', 'Mamãe eu Trouxe o Papai Pra Te Salvar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dfcea74a-85f8-49fa-8cf3-63649c4e99fa/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:01:31.484+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mamãe eu Trouxe o Papai Pra Te Salvar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a688ff7d-8936-4e8e-b69b-ca7df39d275f', 'Meu Amor Secreto Era Meu Inimigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0ec54f2a-f929-4908-b8f8-9ce6cfd73b73/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:00:51.968+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Amor Secreto Era Meu Inimigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ecdc52d7-79ff-45d7-827c-811dc7d1e64a', 'Sr Fu Sua Esposa Quer o Divorcio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7a4fb850-034e-48f2-95b3-da0b922e3ab2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T02:00:13.771+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sr Fu Sua Esposa Quer o Divorcio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6c5a7cb3-7b38-4279-ab3f-2a3081f9ccb3', 'Imparável Após a Prisão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3872dd36-1dfa-49c8-9b3f-ad6f7fa6c227/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-12T01:59:36.852+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Imparável Após a Prisão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9d244c71-6d72-4163-8281-c35b4d2c37b5', 'O Melhor Amigo Do Meu Pai Me Fez Sua Esposa Bilionária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8e2912c5-2423-4aaa-8207-0a85314b0148/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-11T02:43:40.547+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Melhor Amigo Do Meu Pai Me Fez Sua Esposa Bilionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '43caf32b-b2ab-4934-8c44-645b3dc61274', 'Noivo Errado Amor Certo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0f020c38-af43-4cf4-a37c-2609c7c40b73/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-11T02:42:46.298+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noivo Errado Amor Certo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '227673cd-9a2c-4651-8dfd-3ac9ee4cc83a', 'Amor que Nao Volta Mais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4cd966dc-3164-4f3e-b928-1067fb612d42/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-11T02:42:03.17+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor que Nao Volta Mais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1cc0fda2-0bfc-4ada-8d54-0b6c259b7918', 'Ela Nunca Busca Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/67326828-977d-4088-af1d-1433f48a4ab3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-11T02:41:14.753+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela Nunca Busca Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cacdfe9b-578b-436e-9295-7f539f2b2e5c', 'Ela Irresistível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/08b45a93-d35f-4896-a290-b545f3e0a8ad/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-11T02:40:18.231+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela Irresistível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dc83767f-c7ec-4b8b-9ef3-813a57e63702', 'Segredo Do Meu Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ddece148-3001-466a-ab0b-a498a7728f5b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-11T02:39:15.107+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segredo Do Meu Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e084832b-0e4b-4c79-a0fc-c10bc996b8e4', 'Família Do Livro a Revolta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/550be1e3-78be-4594-892b-9c3ca0925cfb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-11T02:38:33.399+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Família Do Livro a Revolta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2a96ef0c-9f9a-42cf-b8a9-37feefc0af68', 'CASO ENCERRADO: O RETORNO DA RAINHA DO DIREITO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/14126f9e-ca8f-4c1e-a24b-e2754246ee55/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-11T02:37:42.548+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CASO ENCERRADO: O RETORNO DA RAINHA DO DIREITO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '19a77ffd-6ca1-4417-b31c-00d9d8d1f5be', 'Paixão De Alto Risco', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/500158c2-ed8e-443e-ac1b-9644eeb67f83/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-11T02:36:57.434+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Paixão De Alto Risco'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '272208d2-de85-44da-bd0a-7bef34ea7548', 'A Noiva Dos Alfas Vagabundos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cbadaaa8-13de-47af-ab90-8d3a19078f52/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-12-11T02:36:11.252+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Dos Alfas Vagabundos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ecfcaa08-9053-483d-bc8d-0745531244cc', 'O Rei e o Peão Amor Ou Sacrifício', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/be59f6ce-30d6-4a20-b933-d7c430a1c615/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T22:01:42.7+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Rei e o Peão Amor Ou Sacrifício'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4906fb7b-53ab-4f3d-b36d-d1d3a9568087', 'Desejo Irresistível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/83df6976-8568-4b91-bb49-2d03ab1b37d3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T22:00:59.571+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejo Irresistível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c74f69ea-479f-418c-9ae9-722b581a74ac', 'O Retorno Do Herdeiro Oculto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4daf6b2b-b606-419b-a72f-57d94811e61b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T22:00:06.701+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Do Herdeiro Oculto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fded1dcc-53b7-44c4-b7aa-defd07e6f0f4', 'A Noiva Esquecida O Violino Do Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/68724abd-b4f8-473c-aa04-4fad5158ce0e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T21:59:06.974+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Esquecida O Violino Do Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'df446790-766c-444a-9603-ce8195d5ac5b', 'Não é a Gaiola Dela', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d68facd4-cab6-4677-8d50-0f1f9e0666b9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T21:58:01.045+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não é a Gaiola Dela'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e4a9d919-75e1-4ef2-9fe0-bebf63e0b185', 'Amor Nas Areias Selvagens', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6a28c404-1782-4d35-beed-02cbd985bf42/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T21:56:58.503+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Nas Areias Selvagens'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '89268dcf-e33c-4de1-b5bc-e7eb38a82092', 'A Flecha Cega', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b2ebb23b-a121-48a1-9901-4c3a0d4e32bc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T21:56:08.206+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Flecha Cega'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '942d6c33-6c18-4108-8020-44afb7b0244d', 'A Fé Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9bb6cc59-884f-42b0-ae45-a04c2ceb9a38/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T15:28:02.802+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Fé Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd76c6e6f-56b6-48e0-9485-59291bcffdf8', 'Amor Falso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3c47abf0-1699-4980-a5b9-a6acce28d318/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-09T15:27:18.621+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Falso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '60892d56-af62-4628-a5e3-afde9a284a5f', 'Quebrando Acordo Com o Badboy do Hóquei', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/72c67b4b-ff79-411f-b1c5-6d01872b49f1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T15:25:37.344+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quebrando Acordo Com o Badboy do Hóquei'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bf9d0400-1b65-4811-af09-a02a80ad13d1', 'Chamada Pelo Meu Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/32182890-1370-4ec6-bd1a-b65c67fd38b3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T15:23:20.925+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chamada Pelo Meu Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b48efee0-0c1e-4037-844b-91e52e990375', 'Renascido Em vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6a2e34df-4442-4f71-bece-56cd6641868c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-09T15:20:25.086+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascido Em vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ae5c91e-f65b-45a6-aef9-23bbf855e07b', 'Beijei Um Sapo Consegui Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/414eff67-301f-4850-8678-9944c50c43a9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-09T15:19:34.233+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Beijei Um Sapo Consegui Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '17d59a6b-3a0e-42a8-a7d9-df4e74bed415', 'O Homem Que Estava ao Teu Lado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f7842d47-99ca-42cf-8053-c4806f687d9a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-09T15:18:46.571+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Homem Que Estava ao Teu Lado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c1bd3220-ce92-4b41-83fe-88b730a905ce', 'A Bela e o Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5f0f1bea-c905-4267-a23e-c0fc819a2417/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-09T15:18:00.989+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Bela e o Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '52de9918-f32b-4a1c-bcf2-91f7bd25031b', 'Esposinha Mais Nova', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6ba6c61a-1fd3-44d5-b5af-a9ff15b38537/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-09T03:05:11.548+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposinha Mais Nova'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'adef1b7f-5c09-4de4-8404-0af7c4a855f3', 'Máscara Vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ca5ba527-e6e8-40c7-bdbb-ae430e500153/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-09T03:02:49.618+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Máscara Vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '745eda0f-763e-457c-99a5-06fd54eee3e6', 'A Vingança Da Esposa Renascida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c431a2c0-7964-417d-a347-a105f18f61e0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T03:01:08.96+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança Da Esposa Renascida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '50d80b89-848e-4d8d-88ba-d81e82997288', 'O Melhor Amigo Do Papai Me Fez Sua Esposa De Um Bilhão De Dólares', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8073c332-c862-48c7-8376-23e8284cd9f3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T03:00:25.216+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Melhor Amigo Do Papai Me Fez Sua Esposa De Um Bilhão De Dólares'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4ef9b214-dfcc-49bb-af09-71a334b08e58', 'O Amor Na Luz Que Se Apaga', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c017d67d-185d-4f5b-9e69-416daf203582/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T02:59:37.701+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Na Luz Que Se Apaga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5c222be9-ac01-424b-946f-5114d002b99b', 'Meus Gêmeos Gênios Da Matemática', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c5049128-eaf2-41ca-878a-d2f58c222064/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T02:58:42.329+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meus Gêmeos Gênios Da Matemática'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '78b51648-f59b-4311-94af-808662513ecd', 'Esposa De Fachada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/be81f1c8-6eea-49c5-a0df-8ae4b7a61332/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-09T02:52:14.986+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa De Fachada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '11f7f758-e42e-4894-9c9c-6020b8f14f4e', 'O Açougueiro O Senhora Das Artes Marciais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d1210fcd-5e0b-4efb-b71d-3f49a796a839/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-09T02:51:35.012+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Açougueiro O Senhora Das Artes Marciais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8c3b12e2-bbff-4898-a470-a49ec2f1f30a', 'Meu dom Da Riqueza', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fcc03c69-79ca-4e0f-b330-3d4fb15a472b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-08T23:14:44.17+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu dom Da Riqueza'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '56f65818-6045-4ad7-a43e-f595b61d4c19', 'Mordida Do Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/02ed98b0-39fb-49cf-a16c-76d704607bf1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-08T23:10:16.134+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mordida Do Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e01f87ef-6d25-41d2-ac63-8ab81ba2d63e', 'Vida Trocada Destino Na sua Mão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/52083a16-bb74-4f94-8066-e4590c9e5164/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-08T23:09:29.352+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vida Trocada Destino Na sua Mão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8271e219-b555-4ca4-8e52-7906be4f1d9e', 'O homem Que Estava Ao Teu Lado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/70c85005-8a68-49ad-829a-81ac8b66870e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-08T23:08:46.34+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O homem Que Estava Ao Teu Lado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c756febb-bb67-4df6-814f-bb381a80debe', 'Reencarnação Do Imortal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/55c9321f-b6c0-453c-a829-e4c706530a77/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-08T23:07:07.243+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reencarnação Do Imortal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '53a56476-4bcb-4ce8-9f8f-7b4ed57b36f6', 'Florada Na Estação a cidade imperial Ressoa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/26a9e07f-c7c6-4c42-b632-b668b27367db/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-08T23:05:52.613+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Florada Na Estação a cidade imperial Ressoa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f3a8e28d-8e8c-4d9d-becf-5c5c2109af0d', 'Romance Secreto com O Pai do Meu Namorado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/27d15dd3-adcb-4298-aea8-37a8895b62ae/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-08T23:04:16.427+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Romance Secreto com O Pai do Meu Namorado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fe23062b-2828-48ee-a0d7-71d7e3b6ca4b', 'Faça Me Sua', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/11e1615c-4542-4834-be5f-f6d1c493dcaf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-08T23:03:31.54+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Faça Me Sua'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9e43bfca-9124-444d-b0b5-41e0edb3054a', 'Escondida No Chuveiro Dele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/32a271b0-4864-419a-b326-de0dfa1f6d83/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-08T23:02:52.909+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Escondida No Chuveiro Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bfe27401-04cc-42ce-b2b8-5b84bd2850a6', 'A Virgem e Seu Patrão Rico', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c7d681a3-aa97-4870-9313-8d7df1012401/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-08T23:01:36.527+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Virgem e Seu Patrão Rico'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4d691870-5c90-4a18-aacc-ad858951d551', 'A Esposa Do CEO é a chefe Secreta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1c8fad21-d3ca-4466-8def-10b295e81f9c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-08T23:00:47.109+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Do CEO é a chefe Secreta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd14b5d99-1ff8-48cc-989a-eb55723f331d', 'Tio Não Me Acalme', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b418e8f3-4fc0-49d6-8772-9e5d6986af1d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-08T22:59:37.467+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tio Não Me Acalme'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'de0a4cb0-f62d-492b-92d0-6be38ad83ba0', 'Adeus Vou Me Casar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8db7212a-efe5-4fd8-b866-8e457afc135e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-08T22:32:17.546+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Adeus Vou Me Casar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b683e6ba-f5ae-4cc7-b118-9c7b36450c13', 'O Desejo De Natal Da Virgem', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/06ae9f2e-a920-4d57-893d-53c0b870005f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-08T22:30:37.804+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Desejo De Natal Da Virgem'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f971297d-aed9-4b7d-a0d9-1ae0125968aa', 'Paixão Tabu Meu Meio Irmão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e990d177-5cfa-4806-b508-37baf5098fa2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-07T23:42:40.257+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Paixão Tabu Meu Meio Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3e3a8439-149c-45c5-b7f9-8c8fce845c31', 'Amante Secreta Do Poderoso Chefão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/09049432-b1b9-4a99-82e5-ab8aa876180a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T23:41:48.215+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amante Secreta Do Poderoso Chefão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0c83a603-b220-49fe-a50a-65d1722950b2', 'Efêmero O Amor Em Breve Páginas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c590734b-994e-4f13-838e-688665de2e53/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-07T23:39:31.398+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Efêmero O Amor Em Breve Páginas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '283c468d-c0b5-4d02-a65c-6664f2d1a2d5', 'Chefe a Sua Estagiária é a Sua Esposa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d6e93205-3757-4311-ab9d-b27e7b89dbc9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T21:01:04.029+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chefe a Sua Estagiária é a Sua Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '70050c2f-6a9a-47d2-a3fa-e823b39989bb', 'Querido Você Está Frito', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ff2af35a-e621-4778-b27c-f80aa75a35fd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-07T21:00:05.008+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Querido Você Está Frito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '64c5cae5-49a6-4ba2-8d57-5ef9561abfff', 'Na Ponta Da Faca O Retorno Do Rei Da Culinária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4cd9ae61-88f6-4136-bd21-3190eabc46ae/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T20:59:22.121+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Na Ponta Da Faca O Retorno Do Rei Da Culinária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'aa2a69f9-e86b-42ac-87e2-cfc9d887e3bc', 'Como Me Tornei Uma Herdeira Bilionária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d2b07356-a40e-4d9b-a548-bbf6d526705f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-07T20:58:28.505+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Me Tornei Uma Herdeira Bilionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '42b83319-40c1-4352-8c03-78aa84e7df2a', 'Melodia Do amor Fim Da Dor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ffdf15f7-592e-4a80-a16a-71ee66ceacfb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T20:57:22.19+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Melodia Do amor Fim Da Dor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1be1f691-ed51-4888-8c8d-7fa75c9b04cd', 'Quando Nos Reencontrarmos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0a9d9d8b-3a9a-4eeb-a8ab-820350046371/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T20:33:52.876+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando Nos Reencontrarmos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2e1c2ffb-a08b-44f1-b86d-a014699bf279', 'Odeio O Jeito Que Você Mente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd7ab596-2cae-4bfb-8f7a-01c630fb5c3f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-07T17:41:08.966+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Odeio O Jeito Que Você Mente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a766c176-c788-4600-9110-dd187f14ce27', 'A Noiva Trocada Do Rei Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6eb038bd-d40a-40a4-8395-8b7760950a16/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-12-07T17:40:22.344+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Trocada Do Rei Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e6d52724-e9ba-42b9-955b-269902a9c076', 'ERA UMA VEZ UM TÉRMINO/ Once Upon A Breakup', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a9fbc9d7-bf77-43ca-9767-6e4f77fa6d2b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-07T17:31:27.514+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'ERA UMA VEZ UM TÉRMINO/ Once Upon A Breakup'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '12d31f0c-d305-45be-86c4-cef4be2d7e0a', 'Herdeira Vs Impostora No Jato Privado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eabbd486-4dff-4176-a830-56c031b34c57/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-07T17:28:52.882+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeira Vs Impostora No Jato Privado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '02f2218b-572b-4eb1-a712-7c38d68d9ade', 'Casamento Primeiro Amor Depois', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dfd99ff8-074e-4a38-9210-f6e2e46b919a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T17:28:02.739+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Primeiro Amor Depois'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '57ece561-b9a4-4329-9c32-e4881054a189', 'Casada intocável Ponto Final', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/db956710-8d1d-4b03-afbc-7290151defa5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T17:27:14.435+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casada intocável Ponto Final'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ee34928a-282d-4838-9ee9-c0acefa54b9d', 'Papai Malvado Você Tá Frito', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f33e1775-fd84-4278-8be0-15c2c4ec868c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T14:44:01.36+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Papai Malvado Você Tá Frito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0e3f39d6-8565-44ab-b9d1-26345f8f08cc', 'A Mentira Que Espanjou Meu Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/92095413-5082-4169-b031-968690df69f4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-07T14:43:18.006+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Mentira Que Espanjou Meu Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0a7c31a7-abd8-40fd-9448-e189163f0329', 'Ela Parecia Um Anjo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1fe5fc2f-6ad6-40ad-bf81-c77ee00e7894/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-07T14:42:33.271+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela Parecia Um Anjo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '42cf03d7-e8dd-44ef-8911-55c0aded66cf', 'Voltar Com Meu Ex', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de7e8a84-e2a2-4515-8477-02f529bd2105/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T14:41:48.321+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Voltar Com Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '917b7699-c21c-4234-881a-de8395d3ce4e', 'Mr. & Mr. Ace', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9cb23e7e-348d-4a64-867f-eddc43fcfa77/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''blgl'']', '2025-12-07T14:41:01.175+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mr. & Mr. Ace'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b3ee48ef-eebe-407a-bc81-1d4b03b080a5', 'O Retorno do Deus Da Espada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ddb6c50a-776d-4177-932c-3fe0cddd2fba/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-07T14:40:05.385+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno do Deus Da Espada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9a55f586-385c-4093-961d-2eadbd92df8f', 'Quando a Princesa Decide Viver Para Si Mesma', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2a17483e-2b06-450a-8787-3d13f8efdaf8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T17:23:01.055+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando a Princesa Decide Viver Para Si Mesma'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f78a88a1-b1c7-481e-aa00-8bc367055a70', 'BABY DADDY THAT''S NOT YOUR KID!', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2567160e-a9e9-4599-b285-a4aec0e095c5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T17:16:50.284+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'BABY DADDY THAT''S NOT YOUR KID!'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dbc162c7-68ed-426a-9ebd-4e5aac9cc271', 'Destino Levado Pelo Vento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e0e1adac-10ca-46f6-adff-238f2786b3ba/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T17:16:10.932+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destino Levado Pelo Vento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '743480f0-ddf8-4475-a101-c195523fdf9b', 'Amigas No Livro Fuga e Pânico', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/835453d3-f62c-476a-a1ed-1af92490e354/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T17:15:26.493+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amigas No Livro Fuga e Pânico'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '30b0fdbf-1383-4800-97b9-d023555d1e38', 'Cuidado Eu Sou a Chefona', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bb365eda-427b-4b24-aa76-233d4354101e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T17:14:04.006+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cuidado Eu Sou a Chefona'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '796e73e9-4455-403c-b9c2-dcf489e7a11a', 'O Código Da Vingança do Hacker', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7da901e8-6b29-47d9-9377-c2c8eca31477/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T14:49:51.271+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Código Da Vingança do Hacker'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd828229c-a975-4737-a355-b60e3a7edfbb', 'O Dia Em Que O Amor Morreu', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/19e77136-fe0c-4a9a-a1c5-356ef0812f4d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-05T14:48:46.237+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Dia Em Que O Amor Morreu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f8f26bf3-d11a-4f25-af5e-a717f2c771db', 'Noivas Trocadas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/22a586ff-8be2-45af-9e10-6c5cd1e8c018/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T14:47:38.547+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noivas Trocadas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b3c2d0a3-639b-4e69-b198-12abbeba002e', 'Desejo Proibido Do Intocável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6bd6823b-147f-41bf-ad71-db1988e073f0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-05T14:46:58.131+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejo Proibido Do Intocável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5b5e3b8d-efdc-406a-9ea2-1ed85ac3656e', 'A Jovem Que Queria Ser Juiz Para Se vingar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f32aadf1-586b-4c3e-bc9b-dc37fd3833c6/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T14:45:57.789+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Jovem Que Queria Ser Juiz Para Se vingar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '977c8d75-de6b-4287-bac9-94f7ef9b477c', 'A Noite Errada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/780cd6c5-a498-4877-9b89-d849d71cce5d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-05T14:15:13.832+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noite Errada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '41a26448-3a1e-4433-b311-a47dbf7a3d39', 'O jogo Da Herança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0997fc31-2467-4f43-ae41-8d6633d68ab5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-05T14:14:26.377+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O jogo Da Herança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '15494e7f-5977-4cb6-bf72-d3cf644e1806', 'Ela Enlouqueceu O Pescoço é O Próximo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ff86e851-d0bd-4f4a-87a0-2c37f02a1ee0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-05T14:13:35.849+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela Enlouqueceu O Pescoço é O Próximo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '72814d2b-2048-472b-bd42-9c9e3a2d89f1', 'Fumaça Suave No Entardecer', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4c54d14b-5735-4512-9a81-5e568f76f304/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-05T14:12:15.643+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fumaça Suave No Entardecer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '737a29c9-ee3b-4324-85ef-fd40d561cf87', 'Sem A Luz Da Lua Na Minha Terra', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/30fbbe22-c85d-4161-b8ff-cad64747509c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T14:11:30.687+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sem A Luz Da Lua Na Minha Terra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e468489d-1b7d-410d-be1f-83467036d04c', 'A Queda Do Abusador/Abuser’s Dowbfall', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/72baa560-9b08-411b-9e2d-4498511eb197/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-05T14:10:44.284+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Queda Do Abusador/Abuser’s Dowbfall'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8dc56975-185e-4c2c-8780-33d416363ee9', 'A Herdeira Foi Trocada Ao Nascer', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dee09b06-fdb3-4b2f-b48d-0a16cb86c4a0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T14:03:33.218+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Foi Trocada Ao Nascer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74cfa7b1-0923-447c-990a-e4732ff93233', 'A Santinha Psicopata', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9becbd9b-b457-4fd0-97c7-363fb8aed08b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T13:57:39.85+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Santinha Psicopata'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '44886a0b-72ce-43b2-b943-659ca5d06521', 'A Deusa Que Abriu Mão De tudo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b33c5f67-c487-444a-9bfd-590bf3c9db45/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-05T13:57:01.772+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Deusa Que Abriu Mão De tudo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '827f1813-8909-4826-a50b-d4ee4ccde467', 'Vem Para Meu Abraço', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ef194130-a042-442a-8c65-2f969e64fac8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-05T13:09:39.058+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vem Para Meu Abraço'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'de8c0339-3a78-460e-842b-678943363d64', 'Traído Pelos Que Amava', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a0c10aa6-6141-40ce-b47c-fafaf5c3b1a7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T23:02:41.301+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Traído Pelos Que Amava'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '003583e9-4a7b-4e3e-947b-ebda22969607', 'Bad Sister Irmã Do Pecado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/721076da-b19b-4242-a159-8b9e56f6a3eb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T22:23:34.631+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Bad Sister Irmã Do Pecado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bed83842-b3d4-4b3d-874e-3cc9a5a66f54', 'Largando o Astro Das Corridas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fc7a5a6d-a232-4c30-bc29-d7e5da947c59/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T22:22:46.742+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Largando o Astro Das Corridas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0944b3af-8359-4c5a-9ea8-2a312b1dd8a8', 'Jurei Te Amar Aprendi Te Largar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/553a7322-035f-4816-8e5e-7837e0aa43aa/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T22:21:46.155+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jurei Te Amar Aprendi Te Largar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f082a766-89e2-4432-8448-7d67b93e6de0', 'Senhora Não Fuja', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e3e4ff7f-2ea5-4050-89ca-fc59d6143eed/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T22:20:21.641+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Senhora Não Fuja'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '35c88088-d731-4606-8fa9-f9cf5ab60a26', 'O Amor Que Ele Deixou Desaparecer', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b4b8c637-b856-44c1-98a3-2dc91fe29db2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T22:19:39.039+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Que Ele Deixou Desaparecer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '521d68ff-ab61-435d-9c05-7a3160458b4c', 'Amor Impossível De Se Proibir', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f5f475ea-c3fc-41de-bd6d-b2d384b20e55/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T22:18:36.22+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Impossível De Se Proibir'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8d4eef6b-5ac4-4786-9f19-26b7c63a7f4a', 'Esplêndida Renascença Da Ex Esposa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bd9ff663-77ef-40d8-981c-dea73c184627/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T22:17:55.87+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esplêndida Renascença Da Ex Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5820603c-41f2-4460-8e3b-99b205953197', 'Lágrimas e Encontros Nunca Provoque a Esposa Do CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/42dd62eb-ec01-4b48-b1cc-bfa152c81bab/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T22:17:01.873+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lágrimas e Encontros Nunca Provoque a Esposa Do CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '49421809-8fe2-4d9c-a4c0-c3723ca9cf7d', 'Sorte Divina Para Meu Pai', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a08cbcca-ac84-4592-9b99-5757c17c0f74/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T22:16:00.419+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sorte Divina Para Meu Pai'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3129fe1c-93b6-4154-adbf-c4c1a0d04e4d', 'Ligada Ao Lobo Rebelde/Bound to The Rebel Wolf', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/40b2c6ae-19b8-42d2-ac6d-e97863525846/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-12-03T21:45:11.844+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ligada Ao Lobo Rebelde/Bound to The Rebel Wolf'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd196604e-23ea-4e65-a63c-42687964f337', 'De Madrasta a Mãe De Verdade', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/abf6b543-4632-4365-8163-48b8a0846c7c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T21:43:45.409+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Madrasta a Mãe De Verdade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5e1760bf-8e09-4fcd-b871-bc3166d3389f', 'A Vingança Da Fênix', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/78a10f4f-755d-4722-b5ab-67a5220c9c6a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T21:42:52.241+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vingança Da Fênix'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '122da615-533b-435c-9bbb-15b7e098ce78', 'Amor Na Palma Da Mão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/79daa9aa-a6a4-4f97-8e72-3c7f75b9d416/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T21:41:20.87+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Na Palma Da Mão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '67990ce7-977e-490d-ad41-062d30c8eaef', 'O Limite Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d9470a53-9537-48f6-b693-2246d395d7a5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-03T21:06:29.812+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Limite Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4e3b2207-d23a-4599-902c-1c37638b7c6b', 'Vingança Secreta Do Irmão Gêmeo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/59a03563-daf3-409e-8d86-1c80102acd05/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-02T17:58:08.646+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança Secreta Do Irmão Gêmeo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eef1dbea-3e12-4217-a212-2ac74d190003', 'Meu Bilionário Implacável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/73f4246c-9e62-4e0b-b4ef-335343ddacc4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T17:57:24.294+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Bilionário Implacável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fe23fda5-8405-4958-8633-4c5d9b772076', 'Justiça Para a Minha Irmã', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4e7e5586-695a-41fb-a49d-8dac7df6c93f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T17:55:01.35+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Justiça Para a Minha Irmã'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '16227c06-c344-4422-a445-3b50f544667c', 'Sr Fábio Que o Destino Decida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bf636b8b-45bf-4fad-81e7-cb1eea5054d6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T17:54:22.787+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sr Fábio Que o Destino Decida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '01cf66b6-ceb4-49af-b190-a8d468d009ad', 'Herdeiro Sob Disfarce', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f3a1f7c7-bfb6-45ff-b725-9f586d626d08/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T17:53:41.583+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeiro Sob Disfarce'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba969693-ab8c-436e-926a-232fcf3dfeff', 'Mimada Pelo Caçador Feroz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/340972ac-0761-46c9-b11a-6a3224701c31/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T17:52:53.6+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mimada Pelo Caçador Feroz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '986044c7-c3b3-4b9e-b747-157bafa819f7', 'Meu Amor Inesquecível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/363cef44-cedb-4274-97ad-f469ab82fd84/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T17:18:20.181+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Amor Inesquecível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e83b9151-3713-4f10-9874-ba2a6455e5bd', 'Filho Nao Quero Mais Trabalhar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/680f0528-556c-4867-8ee8-4a4e639b4d91/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T17:17:36.451+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Filho Nao Quero Mais Trabalhar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e6ba1af2-e0fc-43ce-b884-4d0d9a5620c1', 'Drifit Tio Mecânico 2', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/726f92cb-0e9f-42c5-b4c0-4ee4dc01f238/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-02T17:16:37.557+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Drifit Tio Mecânico 2'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ec6a1539-c58a-4b49-bedd-42d22cc8f4ae', 'A Princesa e o Pai Babão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cbbc110f-bb54-49de-969b-cc17463ea080/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T01:28:28.806+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa e o Pai Babão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ab8c9c15-bae5-43a9-9613-1f52efb2c7a5', 'Amor Emprestado Ela Devolve Com Lucro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1449b5f1-0d05-4bac-8ab8-c01f81b98f08/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T01:27:26.601+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Emprestado Ela Devolve Com Lucro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1e18757b-559e-47e8-be77-326a1b56cbb8', 'Minha Irmã e Eu  Amamos Os Irmãos Mercenários', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a3b8d6f8-1b1c-4d5d-ae74-c6d65a416e12/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-02T01:26:35.958+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Irmã e Eu  Amamos Os Irmãos Mercenários'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6693e105-9bd8-4074-8829-b45dfb879138', 'Meu Marido Matou Nosso Filho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8d8ad8d4-7217-496e-8f59-211c6a2f7ea6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T01:25:48.969+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Matou Nosso Filho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4543957d-4a76-49c9-a758-fbd5f9a3fee9', 'Queime O Amor Antigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8523122f-92c5-42a4-844a-3ce0bca67d71/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-02T01:24:34.422+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Queime O Amor Antigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5cf8063b-f467-4d53-80c4-85f54b174335', 'Minha Luz Além Dele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8099a986-c727-4427-9005-e0f702fe834e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T01:23:23.538+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Luz Além Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6f3fddfa-0784-4f1e-856b-3d8b823b7c40', 'A Herdeira Retorna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0f3f58fa-0789-4d2d-8115-3059ab3584b4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T00:45:32.948+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Retorna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7233a091-2c2c-4b5e-a3a3-96cc49c40046', 'Amor Que Chega Com Gravidez', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9377dcba-439b-4f18-8710-c493fad5b8b8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T00:44:36.517+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Que Chega Com Gravidez'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ed249b5b-c0c3-46b6-a021-2755e6e38d35', 'Adeus Sr Protetor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c0b0573a-be69-4576-9e7c-261909ab26b1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T00:42:43.901+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Adeus Sr Protetor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '612023d9-2ea5-40b9-950b-b956f0eb189e', 'Pare De intimidar a Garota Dele, O Rei Do Box Está De Volta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/52124821-378e-4a41-bd60-551bda42d1ae/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T00:41:57.762+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pare De intimidar a Garota Dele, O Rei Do Box Está De Volta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bf3a52b1-32aa-4a71-9b93-8f3c41a31ea2', 'Bisavó De 18 Anos Que Restaurou a Família', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a7b71d2c-b97a-46ca-922f-531545640465/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T00:41:04.272+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Bisavó De 18 Anos Que Restaurou a Família'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c0186682-e539-4e8c-85fb-6d2d58b4c448', 'Após a Amnésia Meu Luar Branco Se Tornou Uma Substituta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d23533cb-1c59-4267-a1d8-714d8c061c80/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T00:40:12.319+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Após a Amnésia Meu Luar Branco Se Tornou Uma Substituta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1f81e40b-ad1a-4809-b73b-c5572781c54a', 'Nao Mexa Com a Pequena', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/59ae807b-099e-47f7-96db-1a693017ea5d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T00:39:14.887+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nao Mexa Com a Pequena'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6b349db8-97bb-4820-94f5-f98a6bd5d782', 'Amiga Falsinha Chegou a Vez De Pagar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0eb0634f-c22d-4dab-9148-36718f025851/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T00:38:26.94+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amiga Falsinha Chegou a Vez De Pagar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5f756074-4a40-4ac2-90c0-2a1e3fe61e20', 'Paixão Proibida e Segredos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c35d5dca-8c36-4620-80f6-cde367d3e5dd/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-02T00:37:31.679+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Paixão Proibida e Segredos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '637b9d55-567f-43d0-a873-daaf88c85665', 'Até Você Me Deixar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7072d722-ef4e-4e64-a490-67b905b7ed11/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-01T20:39:08.455+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Até Você Me Deixar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fa7eac6f-f186-4116-a324-34faabe6c7f4', 'Justiça', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6782c43f-4dcd-4a37-9baf-bd6b4f7e25eb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-01T20:38:02.226+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Justiça'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2798e6a8-bfe2-4cea-a479-9d37abad6eea', 'Goleada Pelo Rival Do Meu Irmão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d440241e-882d-4cd3-a839-de0709f3c15f/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-01T20:37:23.659+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Goleada Pelo Rival Do Meu Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c5e0820d-7f39-42d4-97f2-185575f04d2c', 'Meu Namorado Secreto De Cinco Anos Me Enviou Me Um Convite De Casamento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/746b5b2b-0a22-43cf-be55-1da399a4dafc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-01T20:36:40.13+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Namorado Secreto De Cinco Anos Me Enviou Me Um Convite De Casamento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c7196408-b46e-49bf-8331-587dd505b547', 'Kusunoki Em Direção Ao sol', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0ec056e4-639b-4f7a-8ab5-1b782d62143c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-01T20:35:51.399+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Kusunoki Em Direção Ao sol'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '04178324-752e-46b3-9186-a8d11f1dd32c', 'O Resto Da Vida Sem Você é Um Deserto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2e572293-e898-4f8a-8020-9bb2ba88d214/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-01T19:06:30.924+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Resto Da Vida Sem Você é Um Deserto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eab072ed-d3ce-4b5e-91c4-1138e5956b2a', 'A Fera Que Ele Criou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/33c68468-9702-4f3a-b1e7-451bce93a349/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-01T19:05:39.957+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Fera Que Ele Criou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '81283385-51df-46d1-80b0-f03320459333', 'Queime Minha Gorda', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d7856b60-358e-4946-a833-23cf7bb4fdfe/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-01T19:05:00.253+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Queime Minha Gorda'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd452cb8c-3328-4063-8e6c-e4f366256baa', '180 Dias Para Virar a História', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dce45770-78ef-417b-b5a4-4460ca3e5359/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-01T19:04:20.093+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '180 Dias Para Virar a História'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0cc6d925-51c3-419c-8b75-02d5b1f9486b', 'Encontrei Um Marido Bilionário e Sem Teto Para O Natal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dff78571-3f4a-45e3-a8c7-a6d79da6197b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-01T14:15:26.557+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Encontrei Um Marido Bilionário e Sem Teto Para O Natal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '22f6e8a1-0357-4e44-830a-c314a9766fd4', 'Brilho Da Nova Herdeira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/45cc063a-7a22-47a0-a3ef-641686c2f1ed/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-01T14:14:40.274+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Brilho Da Nova Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'db508d6f-2423-4c00-9d70-a7c02e9069ad', 'Marido Em Casa? Melhor Supremo Imortal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c330f075-091d-4dd8-bf15-e5f8e03adaee/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-01T13:16:06.44+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Marido Em Casa? Melhor Supremo Imortal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd3012eb5-78ec-4d25-b641-a3c5b09849ec', 'O Segredo Do Nosso Passado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c5d95ed3-bef2-45e7-b35e-fb3152e27ec9/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-12-01T13:15:21.508+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Segredo Do Nosso Passado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3da202a4-608d-4acf-89c5-e8f5873d9182', 'O Grito De Um Mãe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c3341095-7df0-417c-92b2-50aa332baf6d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-12-01T13:14:34.307+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Grito De Um Mãe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ae59f34a-ec5f-49eb-8444-84fa5bc04612', 'Sobrenome Meu Glória Minha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cadc0ef2-6f29-4e47-812c-a9e8f8201a38/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-30T15:50:07.171+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sobrenome Meu Glória Minha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e29acc01-7fa1-4855-b024-bb3cd24856d1', 'O Seu Amor Passou Com O Tempo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a763f4ac-fe9a-4a21-91da-3a8f7154dcca/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-30T15:47:34.061+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Seu Amor Passou Com O Tempo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5056b494-0a42-44f6-b27b-0aad05883564', 'Princesa indomável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/57040033-9237-46cf-9cef-14c4f05ec2bc/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-30T15:42:29.134+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Princesa indomável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8db45c99-375d-41d2-868c-004c10324d05', 'PS: Meu Barco De Amor De Amor Zarpou Sem Ti', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/11d8e098-a4b2-40ee-9536-65df1bd75038/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-30T15:38:41.894+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'PS: Meu Barco De Amor De Amor Zarpou Sem Ti'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '54b1818d-1c1d-4a57-a963-f43132f9248c', 'Ligados Por Sangue A Querida Do Rei Da Máfia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1976fd99-b573-4f10-a438-70d6965996a7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-30T15:38:01.579+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ligados Por Sangue A Querida Do Rei Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f6930992-b011-4a0f-b073-541178e214f2', 'A Música Não Terminou e Não Voltará Mais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0780ae8c-3f04-4667-b9ad-febeee836e45/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-30T15:13:38.856+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Música Não Terminou e Não Voltará Mais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '89ff2fa8-065a-4e8c-9392-4e79f79f1193', 'Meu Sim Ao Rei Da Mafia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/35b3d05c-2b3b-43e6-93b0-65ccc461ef39/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-30T15:12:33.525+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Sim Ao Rei Da Mafia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3f5c2ca8-68fd-46ab-8360-937f46012afe', 'Grávida Do Ceo Mimada Pela Família', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/75506dd0-f9d9-4d45-b085-c97888e96e80/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-30T15:06:22.076+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida Do Ceo Mimada Pela Família'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '69b5b1a0-335d-483f-8309-888b52272a97', 'A Babá Secreta Mãe Do Filho Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/eb8779ca-7ef2-4685-8835-d1c44b59f38a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-29T03:00:37.988+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Babá Secreta Mãe Do Filho Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '38c44748-ae94-4ba2-9178-d9df39ad9cdf', 'Minha Cura Começa Com Ela', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b7a0e987-e443-4e87-a338-3cbebda64482/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-27T02:12:22.246+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Cura Começa Com Ela'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '67b00103-a2b0-474e-a657-98b85dde7816', 'De Agora Em Diante Flores Para Mim', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f4220f7b-5fe1-4c71-a8c8-8baa06e83485/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-27T02:04:46.686+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Agora Em Diante Flores Para Mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8e9d70f1-cd00-436e-9117-88a9436cfa38', 'Seduzida Pelo Pai do Meu Ex', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/adb426cb-d285-4777-b4d2-0e26b610a986/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-27T01:59:32.489+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seduzida Pelo Pai do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c81caa82-f1d8-430e-8fdc-10dbdfd1aaba', 'A Noiva Prisioneira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/097109c7-ad84-4d9c-9989-8792bb2cfcb0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-27T01:58:00.747+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Prisioneira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1777b9ae-b89b-4676-a5c1-574cefcc5061', 'A Outra Na vida Dele Era Eu', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cea971aa-ccec-4ded-b089-ced5b36cf797/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-27T01:37:32.874+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Outra Na vida Dele Era Eu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '69bf9da8-e4de-48d6-a5af-b3a7707e4776', 'Quando o Amor Se Faz Presente', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/15078089-b391-4bec-a1b6-ea037df59039/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-27T01:32:09.418+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando o Amor Se Faz Presente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e66eb1f3-4f02-4165-974a-4440bef4dd18', 'A Sogra Tigresa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aa21b544-7613-4874-bbfc-7888dc274da7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-27T01:31:08.435+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Sogra Tigresa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f0a6398d-96b6-4806-84bf-7161b2a57bdd', 'A Obsessão do Ceo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ebf219be-233a-4b2c-b266-ec35587692b7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-25T05:08:57.962+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Obsessão do Ceo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '08178fd0-265b-4e15-8fd6-1e45975ff512', 'Pensamento Revelados', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d6d44c99-fca1-47b8-8dfc-1ae3da4ce4f8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-25T05:01:17.047+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pensamento Revelados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7c160e45-355e-489d-855f-8bfaea5eb841', 'A Princesa Da nova Família', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4e889be0-126c-468f-bf2f-e9b6a44c3c77/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-25T04:57:34.181+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa Da nova Família'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '331df392-57eb-4519-8937-9f9d79c62506', 'Ele Veio Por Mim', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7fd35a44-ddd5-417c-a4eb-7c78125f1b8a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-25T04:56:34.546+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ele Veio Por Mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6da2758a-b8ef-4269-a11f-18ff24408fc6', 'Agente Secreta Que Enriquecia Com a Família', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/25a2bc0e-a424-48f2-b0d3-8668591ed160/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-25T04:55:40.163+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Agente Secreta Que Enriquecia Com a Família'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd7c4c736-d19f-42ff-8356-16f1ca123b3a', 'A Princesa e o Pai Barão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/80070ae2-f7eb-454f-8b59-6e07d854c818/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-25T04:54:11.218+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa e o Pai Barão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '992fa5c6-d8f3-4d7f-8162-878c3da8c307', 'Sangue e Prata a Ascensão Da Companheira Rejeitada Pelo Alfa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e15563de-63f1-4dfa-9d59-53d608745bb2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-11-25T04:53:20.032+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sangue e Prata a Ascensão Da Companheira Rejeitada Pelo Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b753931b-a282-4a0e-a769-8bfc9f0e8370', 'Noiva do Poder', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de4565da-550e-47e9-b25d-384ecc6a7058/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-25T03:17:10.245+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva do Poder'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3847dd11-5790-408b-9b38-9b5033bd7b71', 'O Segredo do Anjo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8deb682e-a7f5-47d2-8451-a9935008285d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-25T02:28:42.098+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Segredo do Anjo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '69ee6bfc-eb11-443c-91aa-3da6d2dc0979', 'O Herdeiro Que Me Perseguiu', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4892d1da-95cb-4957-9be5-a67314fd35d3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-25T02:01:37.048+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Herdeiro Que Me Perseguiu'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e00ad955-19c2-4894-953e-ee5808be7d0d', 'Quando O Passado Vem Queimar Tudo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ee5e8910-5c2f-410b-bcb1-fb5985ef7de4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-25T02:00:24.634+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando O Passado Vem Queimar Tudo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8479ba7f-f57f-410d-9c82-c667143fd504', 'Tive Um Bebe Sem Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8f8633bd-d25e-454a-afdc-a05a18e7ebbb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-24T03:38:36.958+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tive Um Bebe Sem Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ca5c1e37-525b-4919-910d-217015ecacc6', 'O Julgamento Da Rainha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5038b960-5a6a-4854-80c0-35ac1100ca65/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-24T03:37:31.758+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Julgamento Da Rainha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6c91f920-d174-48ff-adcd-666b2a2ab3a0', 'Herdeira Oculta Da Fábrica', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/47965583-532c-408a-a235-cb0401ae7881/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-24T03:36:15.089+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeira Oculta Da Fábrica'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c15086b2-a7ee-4540-bf77-b002c43f3bce', 'Nos Limites do Sacrifício', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7505e412-690b-4380-84b1-c9dd92657693/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-24T03:35:17.141+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nos Limites do Sacrifício'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ee8f43d7-464a-4659-9e79-0b4d1dfdca3f', 'The Fake Debutante And The True Billionaire Falso Iniciante e o Bilionário Verdadeiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1cb4ebd7-53b9-4e14-a053-99bb490b6a69/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-24T03:34:12.592+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'The Fake Debutante And The True Billionaire Falso Iniciante e o Bilionário Verdadeiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '93cd0c4d-829a-47bf-b6a4-0ea10bebca58', 'Guerra De Vaga', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f4dea301-41a4-4665-a48a-d296db44ed2a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-24T03:22:52.788+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Guerra De Vaga'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eda1ec78-78d6-4b3b-9713-8b1741881abe', 'Tolerância Zero', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/496a26c7-83d6-465e-9691-74139524d41e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-24T03:14:41.052+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tolerância Zero'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '97ed36fa-13fa-479d-ac4b-24462d4acdc2', 'Ainda é Você', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e82dbe99-f1eb-4418-ba2c-a746173d8db0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-23T04:12:03.024+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ainda é Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '30d0ad41-c3d4-4089-90bb-4b9ce633747b', 'O Mestre Oculto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c7868597-3457-480c-84cc-fbf3b04f32a3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-23T04:11:06.528+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Mestre Oculto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '27a4015c-7546-4a69-a9f3-d9c246010395', 'Ela é Só Minha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a99f6d9b-578d-4deb-8256-dc4270a2ca5e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-23T04:08:33.498+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ela é Só Minha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '93a3d0d6-0e00-496f-a50d-8fe5dd328fca', 'Fora Da Prisão Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/078ab0fb-d5ee-4455-9f32-d461e2b22230/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-23T04:05:58.487+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fora Da Prisão Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '809f86b6-8cb6-43dc-ab65-ac71b14a1005', 'Chega De Ser Usada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1a1b85a9-dd8a-4013-a1cf-889c86015e25/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-23T04:03:12.635+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chega De Ser Usada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a5d8f91e-d901-4294-a3ac-a9cb3199c82d', 'A Princesa Dos Laycan Não Será sua Luna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c766bed1-1ede-4953-b6d6-0cb1bd1649bf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-11-22T04:07:05.657+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Princesa Dos Laycan Não Será sua Luna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0505c87d-00f9-48b5-b06d-44deb574786d', 'Tolerância Zero', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/496a26c7-83d6-465e-9691-74139524d41e/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-22T04:06:17.825+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tolerância Zero'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e2c85e31-e7bb-45fa-8cf4-4bdfeea1e712', 'Ação De Graça Em Família', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a900e2ba-a1e2-4b32-af95-80da6c0c6244/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-22T04:05:31.752+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ação De Graça Em Família'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '414dfbf4-d75c-487a-8b87-a594e7145341', 'Ex Snob Eu Renasci', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/12300b0d-7d11-4589-87f3-ea27954e15b1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-22T04:04:13.921+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ex Snob Eu Renasci'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '272cea96-2ac6-40a7-9c39-a2780af5afaf', 'Dispensada Por Um Traidor Mimada Por Um Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5e8dd600-486c-498d-b8b1-d9135e41619e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-22T04:01:36.434+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dispensada Por Um Traidor Mimada Por Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a52fba5a-5f0b-4f55-ba91-f1078d4d4506', 'Esposa Troféu Ela é a Própria Fortuna', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/26faee44-0598-4fed-acea-3e63e3690e23/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-22T04:00:42.319+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Esposa Troféu Ela é a Própria Fortuna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7fb446a5-b9b3-4f2c-8a28-7a48c6cc05da', 'Casei e Fui Mimada Por Todos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/437c990a-f5af-47c1-8199-382c1b564c08/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-20T04:33:51.387+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casei e Fui Mimada Por Todos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dfecd98a-ed6a-4b53-842e-4a612b603321', 'Do Serviço Ao Sucesso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/77dcc158-ce1c-4346-886e-15c6b5c7c195/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-20T04:29:46.015+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Do Serviço Ao Sucesso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '773ca236-c47d-4d6c-bf93-db7b8a0670a0', 'Vingança Silenciosa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a16c9ffd-86b2-499d-969d-d27072918b8c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-20T04:28:59.746+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança Silenciosa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '137be781-2ace-4bbb-81cb-2977d3bb174f', 'A Rainha Divorciada Da Marinha Desperta', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/bd9bf49c-e44d-4f03-a5a3-a00b895efa12/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-20T04:26:41.716+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Rainha Divorciada Da Marinha Desperta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ff2c977-c484-4d8d-877b-9ebf0c352872', 'Não Sou Princesa Sou Rainha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/885500cc-04f4-4d5f-b4a8-bb19df5d180a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-20T04:25:53.2+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Sou Princesa Sou Rainha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f063e1f7-b869-47b6-a0d2-98a1b7f3f2a7', 'Riqueza Oculta Oculta Dos Pais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b278a034-8021-41fd-8f86-06626cd5e540/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-20T04:24:45.964+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Riqueza Oculta Oculta Dos Pais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '15853bf1-5140-45e9-ba8e-d0cc370a3d06', 'A Tinta Do Reencontro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/493e9c6a-80d4-475e-8833-3c038222890e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-20T04:23:54.586+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Tinta Do Reencontro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eed119e6-9b42-4dc5-8021-c74f656587a8', 'Além Do Trabalho O Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dc05ae82-683d-472a-b2d3-523b657eaf05/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-20T04:16:55.273+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Além Do Trabalho O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a7be04e3-bc75-4ca8-b988-a140d48f4e27', 'Mente De Vila Coração Doce', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/15e84e62-7f46-49bc-9140-c5ae703f891c/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-20T04:15:15.523+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mente De Vila Coração Doce'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e1487ddd-8dfd-4206-9556-80cfc95c2cc1', 'O Jogo Do Destino Amor Após a Morte', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/463c55c8-af33-48fb-870b-0bf954c3e303/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-19T05:47:05.548+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Jogo Do Destino Amor Após a Morte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f26a1ca4-cbe5-42cd-b642-d577a1dd9912', 'Traído Pelos Que Amavam', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9b5d5a47-a95a-4b88-9481-f27830eed8fc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-19T05:46:20.341+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Traído Pelos Que Amavam'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f2dece99-6398-4e75-83fb-d6736f398011', 'Maldição e Traição', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d0444ba4-0816-4e97-bd96-b853f1ea87be/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-19T05:44:18.863+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Maldição e Traição'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ec491d21-6059-44a6-bea7-1f5defddfef4', 'Jamais Te Deixarei', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/df9b0654-1da5-4b52-8c63-289efd4dfb35/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-19T05:41:36.568+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jamais Te Deixarei'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '88fe8730-27da-42ea-b81a-7ff1dc39618b', 'Entre a Viúva e o Guarda Costas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1a9bd1d4-80ac-43d0-afcf-99264abd8eb2/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-19T05:40:37.9+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Entre a Viúva e o Guarda Costas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3d287ad4-2321-4a93-986d-4a9a22b72ef5', 'Under The Royal Rule Sob o Domínio Real', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ad1bbf9c-d8ef-4ad5-916c-04fe016ac170/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-19T05:39:50.853+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Under The Royal Rule Sob o Domínio Real'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '15a8545b-7d56-4ee1-9f05-cf7dd13035fc', 'O Monarca', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d2a09e0c-9b9a-4939-ab25-7174c06702ce/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-18T00:58:15.966+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Monarca'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a46a10ce-c017-4437-a483-8578394ecbce', 'Encontro Do Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e441fd4b-9d36-48ea-b49a-b8f8f7ece3b3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-18T00:57:29.08+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Encontro Do Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ec45a6af-9e5d-44dd-bede-d996067bc38c', 'A Doutora e a Imperatriz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d06307e0-59ce-4c6a-8319-2ebc2192fbf7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-18T00:56:23.483+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Doutora e a Imperatriz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '87011077-90fa-435f-b16b-1d14c206c4bd', 'A Esposa Virou Rainha Do Tribunal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/237fdaee-4046-4ee7-bb34-be1e07985cf4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-18T00:55:39.166+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Virou Rainha Do Tribunal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3279fb8e-f290-4d47-aa07-d2249d0b4195', 'O Jogo Da Herança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f4f56e4d-3f78-428f-83f2-df9ce015a445/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-18T00:54:53.513+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Jogo Da Herança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '100e6bee-f971-4beb-9f3f-8551b62c6c5e', 'Prometida ao Erro Rainha do Amor Verdadeiro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5a5fe2f8-ec4d-436e-a3a9-f520a3794672/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-18T00:54:03.36+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Prometida ao Erro Rainha do Amor Verdadeiro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '88230179-ef68-4eb1-9dba-52d5ec402ffa', 'Jogo Perigoso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2197bc46-f680-46ab-b01f-f3c6ad3e7229/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-18T00:13:44.95+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jogo Perigoso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '778caf5d-759d-4f4d-a7fe-ec46a91c0c33', 'Meu Namorado Deficiente é Bilionário', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/19b828e9-d192-47e2-a6f9-92c6b0c67125/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-18T00:13:02.847+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Namorado Deficiente é Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '51aae4c1-8482-429a-a82b-74bfa1531274', 'Protegendo As Cunhadas Em Plena Fome', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dfa189b8-7905-4af3-8194-bddda7a33ee1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-18T00:12:14.428+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Protegendo As Cunhadas Em Plena Fome'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '54373063-3f50-46a4-80d9-c5d61a09678e', 'Quando a Rosa Murchou Em Agosto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/409c64a2-96d2-456d-ab61-aed6be419f9b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-18T00:11:28.047+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando a Rosa Murchou Em Agosto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8f1af0c6-b343-4d17-ab09-cc7d090eb33a', 'Voltei Mas O Amor Nunca Foi Embora', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a18227f1-d005-4f1d-8c9e-0618ac7abaa1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-17T23:54:37.754+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Voltei Mas O Amor Nunca Foi Embora'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e9ec204e-1d8c-4001-8e3c-d3bab14e8473', 'Entre a Neve e a Mentira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a75bb320-3683-4e79-ab36-a2a3ba45b857/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T23:53:56.906+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Entre a Neve e a Mentira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e7d74492-228c-4603-8920-fe00e6ddcf67', 'O Bilhete Que Ela Me Roubou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/91ce28b6-0cfc-4d65-adc5-54117d4b34c1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T22:25:10.319+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Bilhete Que Ela Me Roubou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c8d0d082-bf55-4ae8-a51f-d505e46100ee', 'Como Era Pra Ser', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f16b22f5-dd98-416a-b7ae-6e988e213510/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T22:23:53.295+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Era Pra Ser'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b4dc8d08-dc13-4840-956e-050db95f50bc', 'Amor Sob Contrato', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/36473846-d2fd-4308-84a0-aafc09676bea/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T22:22:50.438+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Sob Contrato'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4abea2fd-342f-4372-9e18-711abc603191', 'Corretora De Imóveis De Ouro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b5e77f97-30d0-49e1-a79f-6d6b02d460ac/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T05:14:55.695+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Corretora De Imóveis De Ouro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2152ea97-9fa7-42b5-b9f6-e56ec490382e', 'A Helena Transmingou Para Um Romance', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd9b0cc0-3f7d-4481-9318-a8c19982a4f8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T05:14:03.165+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Helena Transmingou Para Um Romance'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3774419f-4336-4ba9-83b7-66310e5bdd7f', 'Últimas Palavras do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/69f89263-79e7-408e-8bb1-31a3841ec0cb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T05:13:00.851+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Últimas Palavras do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '45667107-70f5-4abb-a23d-a10828f60ca1', 'Capturada Pelo jogo Dele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fd578dc4-4f73-46d3-acb7-02c5aa0d65ba/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T05:07:40.904+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Capturada Pelo jogo Dele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '697766ce-3c32-4e19-b5f7-eb119c2a9ba5', 'Desejo Irresistível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a94d79d6-6919-46a3-b8ad-18172a6d938e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-17T05:06:40.226+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejo Irresistível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'da4e66ec-f600-4d5a-b228-80d76c223e1e', '17 Quebras De Coração Quando o amor Cala', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ff6d71e9-addd-4dc4-8ab1-28ce8c6ed05c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-17T05:05:29.46+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '17 Quebras De Coração Quando o amor Cala'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0db5f0d3-d519-40a2-a106-af50d1bd0c38', 'No Apogeu Do Esplendor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d5536591-a819-45a5-a18b-c9c1736b7cc0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T05:04:36.234+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'No Apogeu Do Esplendor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b75c99bf-afb3-4aba-a0cf-1ea151969f86', 'O Anjo No Espelho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fc45fcb3-9c8d-4ecb-b483-cd04b9ffa0f5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-17T05:03:42.551+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Anjo No Espelho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4cef6bec-a544-4347-b4f9-3ec758c42f48', 'O Preço do Desejo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/031141e6-0d18-415f-90fb-1280bd65e155/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T04:57:57.178+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Preço do Desejo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '91227652-a98d-444c-806d-3ffb59b49e97', 'A Arte Da Vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b71974a6-ec0a-460b-ac1a-cd3a9145a888/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-17T04:55:17.454+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Arte Da Vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b53cb8ec-64d1-4584-8626-1fdedad1f9e1', 'Casar longe Difícil Voltar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9779c7b6-a06b-45d9-85a5-79be6c4c4aeb/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-17T04:54:20.176+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casar longe Difícil Voltar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eb4ade95-635e-451a-817d-ad532d616af8', 'O Clamor Na Escuridão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9a7a5a13-3dbf-4ed3-8f5c-65c55f2ed44a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-17T04:51:23.764+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Clamor Na Escuridão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cb2bf03e-3530-4d05-ae4c-4f133ab920c8', 'A traição De Justiça Da Esposa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7b25321e-e54c-437b-a36e-3eac9e376c10/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-17T04:49:52.047+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A traição De Justiça Da Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '832b3f80-92fe-42db-bb37-9b21079e749a', 'Amor Rebelde', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2e82a3ee-de4c-4f44-a728-4bd8191e656a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T19:38:29.434+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Rebelde'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6dfbcc83-1aaf-404f-ab7d-81b912747715', 'Reivindicada Pelo Irmão Alfa do Meu Ex', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9ba81a54-5e15-4eeb-bf36-1025fe1d882e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-11-15T19:37:29.527+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reivindicada Pelo Irmão Alfa do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9a11f138-91a9-4a76-9cec-806a08f47f47', 'A Amante Inocente Do Mafioso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a68c96c5-ad9b-4b48-a218-db81bd20b446/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T19:36:30.834+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Amante Inocente Do Mafioso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '999aab5b-99c2-44ba-a782-1ae73c035a8f', 'O Sopro Primordial', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/507e7606-f161-4a0d-8c59-8f496000d4cc/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-15T19:35:45.46+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Sopro Primordial'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '49406219-6de5-4052-a821-e0e2c37aec87', 'Por Favor Amarre Me tio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/404463df-e854-4be3-9f88-52a02b47a44a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-15T19:34:45.622+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Por Favor Amarre Me tio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eb275455-5438-4613-972a-e1256ee7800e', 'Doce Esposa Dos Anos 80', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cd22b85c-922f-4e50-89f0-915acd5cab65/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T19:32:36.688+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doce Esposa Dos Anos 80'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74deaad0-40c8-4045-80ab-51e8d4e9e1ce', 'A Herdeira Renascida Das Cinzas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8163e597-ef1e-47bb-a93f-088c50b28715/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-15T19:31:53.306+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Renascida Das Cinzas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e0bd18c5-7dc0-4bba-84e0-53eaa338f726', 'Sonho Dentro De Um Sonho', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fbd6bef8-e00d-4cf6-8a8b-152b2f6bf261/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T19:30:47.867+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sonho Dentro De Um Sonho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a7ad0418-beb9-41e8-a821-646ab8116506', 'Ola Quanto Tempo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3c51611d-0cbd-4fb3-a0d2-136f13216eff/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T19:29:42.029+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ola Quanto Tempo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '645e2390-ea7e-4c8c-a5b0-ea64e7293317', 'Ops Casei Com Meu Inimigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/267fd4a1-1f54-4b69-bbc5-e732611eb8d3/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T19:28:45.998+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ops Casei Com Meu Inimigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e1a8c8e5-3d47-4f91-adcf-cbf7e87d4243', 'O Amor Bilionário Em Perigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/94face2b-ea31-4293-ac81-170c500e83d8/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T19:27:27.093+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Bilionário Em Perigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '33d764fe-5f9f-45a2-92d8-7d0a34f5300f', 'Realização Tardia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dced9555-64b3-4e6d-b224-ee7c8061e8da/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-15T19:26:37.407+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Realização Tardia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fc83b51d-1578-4bed-88de-ec46043fb0c9', 'Mimada Ao Extremo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9ce89c85-eac2-44f7-9cbc-c9ce3d6d018b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T18:25:23.017+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mimada Ao Extremo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9e28c97c-984e-4774-a385-f5bf9a48a3e6', 'Superando Meu guarda Costas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/31337fdb-c1d0-42be-bf2e-283d2190619d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-15T18:23:57.143+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Superando Meu guarda Costas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a1d67ef0-d529-493f-b43d-e361299fa65b', 'Atração Fatal A Princesa Híbrida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/cb1b52ad-edef-4103-9235-5e23be337a0d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T18:22:38.947+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Atração Fatal A Princesa Híbrida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6f928b47-d073-4183-9b75-f062d3889083', 'Meu Ancestral Tem Poder Que Ninguem Esperava', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6c34f262-0876-4ba2-9821-fde78f6ea274/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T18:21:11.984+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Ancestral Tem Poder Que Ninguem Esperava'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9ba50167-fe86-40e4-8a2b-8e8bc3f8257c', 'Passaro Enjaulado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5130d3a1-3823-4fdf-b0e5-2220d52ab679/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T18:20:28.461+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Passaro Enjaulado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e92309f9-4ce1-4835-8353-055894646950', 'O Heroi Nunca Deve ficar Abaixo/ Hero should Never Stay Low', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e402e444-9233-449f-a2d4-a3291dc03e25/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T18:19:46.999+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Heroi Nunca Deve ficar Abaixo/ Hero should Never Stay Low'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1fbabc68-0b88-49c4-a796-f84b67ecca46', 'Meu Marido Paquerador', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/701dfe46-0875-4352-9abd-4ace8d743337/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-15T18:18:48.981+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Paquerador'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '82474fcb-0b09-4ee9-affe-a15a1c0bddbf', 'Difícil De Consolar o Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/904682ef-e549-45dc-ba44-0407a03aa2ed/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-15T18:17:15.923+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Difícil De Consolar o Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2acfc738-0f86-419d-a42b-dc7eb462b48a', 'Último Suspiro De amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8af0899f-d9be-4c83-8ebf-14b5f0db7113/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T18:16:15.572+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Último Suspiro De amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0395b52e-37e7-4b56-b713-0e8acb36ef83', 'Mamãe Eu Trouxe O Papai Pra Te Salvar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/005ffe99-a869-4411-808f-f80b74390a51/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-15T18:15:07.396+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mamãe Eu Trouxe O Papai Pra Te Salvar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'baee7bf1-6f87-4223-93dc-d073fb4c988b', 'A Grande Vingança Da Liza', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/914d2aa3-d65d-497c-9f79-37adeaff3387/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-15T18:14:08.617+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Grande Vingança Da Liza'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fe8aa8c0-648d-4ed1-ba31-0678885a2494', 'Deixando Meu Marido Alfa Em Um Frio Arrependimento', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/53da9cbc-fb2a-43aa-84a6-827a520ce98d/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''homem-lobo'']', '2025-11-15T18:13:09.768+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Deixando Meu Marido Alfa Em Um Frio Arrependimento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '46781245-df25-46e2-8505-a82faa5b0ca2', 'Segunda Chance Para a Vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a95f7ccd-174f-4110-8687-ecb4200b8e67/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T17:49:19.032+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segunda Chance Para a Vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8513f388-7adb-4037-8f89-5c704d677ba0', 'Jogo Do Desejo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f14538dd-4e22-4d35-a7f0-bd528a4955fe/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T17:48:21.951+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jogo Do Desejo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cc88c71a-7392-4863-995d-97a775d60b90', 'O Amor De Estrelas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/31decf5a-4147-42e2-a758-434620e302f2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T17:47:35.645+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor De Estrelas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '816e84ac-97f6-4201-883a-8b782c04636e', 'Caminho Entrelaçados', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ba86c2bc-3c44-4b7b-80d7-a2c2ec3efd81/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-14T15:26:42.657+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Caminho Entrelaçados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'acb61ddd-0d3b-476b-917c-5c8a5b5a2d98', 'A Fenda Proibida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1df11271-b724-4c6f-9ab8-5f7cd981aa8f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T15:25:38.175+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Fenda Proibida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c0ce5cb2-806b-4cb1-8d70-40540dd03669', 'Minha Vida De Viúva é Perigo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c187d137-5465-4c98-841b-eb4ef72df77c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T15:24:20.546+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Vida De Viúva é Perigo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ff106bda-c9a1-46cb-bd4f-b5df20e4695c', 'Dessa Vez Eu Escolho o Sr Mafia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/edc9440c-4756-416a-b366-c22e3b284756/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T15:23:36.307+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dessa Vez Eu Escolho o Sr Mafia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd080648f-b778-4943-a555-20d166e32713', 'Querido Você Está Frito', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/63fe9616-c272-42c9-a483-4a21f3d97d0e/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T15:22:50.225+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Querido Você Está Frito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '76ee48e4-365e-419c-b8db-366b41a2886f', 'Tutora do Bad Boy', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/48ef9c79-a589-44a2-adcb-192931be8fb0/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T15:21:59.258+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Tutora do Bad Boy'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3624176b-512f-445f-a874-a14d49155104', 'Exame Errado Pessoa Certa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/06e012cd-d427-4f1f-9980-2118c9749342/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T14:50:09.658+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Exame Errado Pessoa Certa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e0731eda-804c-4b19-a1df-8a153ee76304', 'Marido Implacável Quer Me Conquistar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3da1b447-9674-4b97-9c5b-9cb216fb8603/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T14:49:19.444+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Marido Implacável Quer Me Conquistar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '41aa3349-6b71-449a-b35a-f0890491ec6c', 'Amor Rebelde', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/918b9d7d-3655-4a7c-9cd5-3a3f6a96d2b6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T14:46:35.77+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Rebelde'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ef555f68-b02c-4f5c-9b90-701e6892f12b', 'How To Break a Dilf/ Como Conquistar Um Pai Gostosão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7b653b7e-1cf2-4a69-bf8c-85dddcef9274/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T14:43:44.985+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'How To Break a Dilf/ Como Conquistar Um Pai Gostosão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8585b85d-5547-4a6d-952b-0b695f77d2d9', 'O Brilho Da Sra Joana', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ad555a50-86f5-4948-89a2-e9b4f04e4969/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T14:41:34.781+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Brilho Da Sra Joana'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4f84c9d7-226a-4914-9b75-88bf84d9fdf5', 'Coroa Reivindicada: Ela Ascende Da Traição', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/b8a871a6-83f1-40d5-8589-18983a0e232f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T14:40:08.186+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coroa Reivindicada: Ela Ascende Da Traição'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '61056868-25b8-4ffe-b71b-f430d7ab3fd9', 'Depois De Sair De Casa Ela Dá Uma guinada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/91e6547b-33d3-4288-a1e3-4a5d071ad70b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-14T14:39:12.522+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois De Sair De Casa Ela Dá Uma guinada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ce2dbbc5-1297-4c5d-abab-d046888a4cc2', 'Fio Do Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ce8658f6-9238-4cb0-94e0-5b3fce94b69d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-14T14:38:27.075+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fio Do Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0c56372b-dc1d-41df-a40c-8326fff1931e', 'Destinados a Perder a Luna Em Seus Sonhos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9c2df1e3-2232-47e2-a6c8-c42a5ff803db/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-11-14T14:37:41.085+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destinados a Perder a Luna Em Seus Sonhos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7a3fd849-0715-43e8-9a16-45a1427fab77', 'As Provas Do Amor no Tribunal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0419ff86-c25b-4b36-9ead-475e202807a1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:39:25.617+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'As Provas Do Amor no Tribunal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2ec50b60-4e2f-42f7-b02e-f49a71174222', 'Caseira Expulsa: A Caipira Retorna Vitoriosa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2980746c-a262-460b-9c81-2a0cb03093b0/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-13T05:38:19.513+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Caseira Expulsa: A Caipira Retorna Vitoriosa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '112c0036-7b53-4ee0-b41a-c4e53e2f3ba8', 'A Imperatriz Esquecida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/af582df8-5a04-46e4-87c3-901b97886458/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:37:16.275+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Imperatriz Esquecida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5ed91660-46b3-4433-a9a3-8d93a52bb60b', 'Nao Intimidade A Irmã Da Mestra Das Artes Marciais', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/66cba9a8-5781-4dbd-97be-85399127f863/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:33:58.345+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Nao Intimidade A Irmã Da Mestra Das Artes Marciais'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e76f79ba-35e5-4df8-8be5-d0b6e87fc0fd', 'Casados Num Piscar De Olhos e Totalmente Mimados', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/96f0b0a4-8b1c-45b1-b4ac-56258ed6fda7/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-13T05:30:30.517+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casados Num Piscar De Olhos e Totalmente Mimados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b77e8fc6-4235-417a-88d9-708c20217c4e', 'Inatingível', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/91278108-8503-4f79-b131-589a6c480f1d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:28:46.219+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Inatingível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '01ecb84d-a8a2-4c3e-8db8-a28e7f6505d5', 'A Escolha Do Livro: Mentes Revelas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/4594c3b7-ea99-459e-8289-1e8521833a38/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:27:38.721+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Escolha Do Livro: Mentes Revelas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fbad6293-30a8-4c02-a45f-c924807e5ec2', 'O Tio do Meu Ex Pirou', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fe424e54-b3c2-453d-aac1-f4b519dec829/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:20:53.634+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Tio do Meu Ex Pirou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '595e4f27-280d-4f5c-9ab3-d66972b2d5be', 'Como Me Tornei Uma Herdeira Milionária', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/61b887df-2774-479f-b13a-6af3a1e0bc1d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:19:09.678+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Me Tornei Uma Herdeira Milionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ddf4c6f4-4c8c-4505-9320-94bed9ca4e8a', 'Queimando Pontes', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8ae1156e-67b9-49de-9125-d26be4656221/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:17:59.757+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Queimando Pontes'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cc42e1a0-02cd-43bd-9cc3-49895b12d13b', 'Fortuna revelada Meu Marido é Um Estouro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/65306b10-b438-4415-8a90-f155f6f031a7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:17:05.504+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fortuna revelada Meu Marido é Um Estouro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9083d841-c1f2-4a1a-8c54-213f8624ea7d', 'Segunda Chance Para a Vingança', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/00804edf-cebc-49b6-9f33-ebee925617d3/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:15:56.977+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segunda Chance Para a Vingança'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '18ff20a6-a8c0-429f-ba34-981dad4475a0', 'A Tímida e Os Alfas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ba019401-4357-4bff-af1e-57c8d3a03dd6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-11-13T05:14:55.639+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Tímida e Os Alfas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ade8d77f-dce5-4bec-996f-e9133bde1db3', 'Algemada Ao Meu Capitão Raposa Prateada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5d4087cd-72cd-4c3c-9a01-189fe514dac7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-13T05:13:51.359+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Algemada Ao Meu Capitão Raposa Prateada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '947332a8-99ef-48a0-96d9-894aebff414c', 'A Gorda Que Mudou o Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a5920919-8fe3-4b52-96a9-937e74284d42/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-12T20:26:03.601+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Gorda Que Mudou o Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4162f463-43b7-42c5-af81-5de3ed1f2e3d', 'Por Amor Acidente Adeus Por Destino', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/07e58741-ac2e-4c15-aed3-28390b45be23/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:25:13.978+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Por Amor Acidente Adeus Por Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dcd7c85b-a8c1-4b42-94ea-cbc9ec59be9f', 'a última Gota De Sangue', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ed21036a-01b8-44bb-9d3a-8724c029a59d/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:24:04.389+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'a última Gota De Sangue'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '247de957-ef65-483d-adbe-a3f7fa0328d3', '99 Amuletos 99 Desilusões', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f278504b-5fa0-41da-a004-7e90cc4cacb5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:23:15.777+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '99 Amuletos 99 Desilusões'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8d4494d0-98b0-4748-aeb8-7666a037122d', 'Ex Mulher Rainha Da Ciência', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dcb09239-3c12-4dc7-a6c4-ee93dfcbbc51/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:22:11.629+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ex Mulher Rainha Da Ciência'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f743a5ba-bb1f-4d04-b243-4901c2aa38c5', 'O Retorno Da Médica Genia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0c3a32a4-b3ef-41d8-aeed-063526ad7ea9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:20:44.761+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Da Médica Genia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c6bf70f0-71eb-4030-9561-c57f57a023a6', 'Apaixonando Se Pelo Marido Da Outra Mulher', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/edd53da8-bfd7-4403-98f8-f5c2119ae7c7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:20:01.603+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apaixonando Se Pelo Marido Da Outra Mulher'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e8366f2c-72ac-448c-8c87-e918c94523a2', 'Apaixonando Se Pelo Marido Da Outra Mulher', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c481c9a3-f8b7-417f-b6e2-ccf4b6d783ce/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:19:07.521+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apaixonando Se Pelo Marido Da Outra Mulher'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '82211871-1411-4c22-8448-e3d7e1a0e977', 'Irmãos Traidores Justica Minha', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7ff2fd3e-9a63-4baf-942c-10b4d9c7a6f1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-12T20:17:40.627+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Irmãos Traidores Justica Minha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0b1962fa-47cb-456a-a536-fe1a4299ef54', 'O Espelho Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2ed24ea9-a0b4-4a03-a368-a626e6981e3f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:16:58.37+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Espelho Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9b2ed6a6-bf2a-44db-8ba6-0ec4dd6293c9', 'A Primavera Sabe O Sonho Não Percebe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/495c74ba-fba8-419e-a93a-9519cfaf25db/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:15:59.599+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Primavera Sabe O Sonho Não Percebe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2eabfe44-3845-4d22-b874-29ea498018ef', 'O Abraço Do Ouriço', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/03e74c07-8e7c-4bd3-8279-295eb1091791/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-12T20:15:09.52+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Abraço Do Ouriço'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '180448d0-2e36-441b-9de9-776801dd8354', 'Finalmente Alguém Me Dará a Luz', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2081da98-1441-4d06-b4b8-a44cea6979e7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T23:24:44.78+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Finalmente Alguém Me Dará a Luz'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '639914ae-c08c-410e-83d3-4ec02b126be2', 'O Último Eco Do Dragão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/58ab37dc-ecc8-4e9d-bcba-b07e82db8d78/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T23:21:07.385+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Último Eco Do Dragão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '71dfe3ae-f9e7-4c13-94ad-1d22d361fef6', 'Alma Delicada Coração Quebrado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/1afd5b10-a55e-4c67-b490-12bea226d209/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T23:19:43.81+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Alma Delicada Coração Quebrado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '30943364-bc1b-4fbe-93c8-f0ac09d6acdd', 'Desejo Proibido', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/34015d9b-84ad-4f18-bd6d-f7c115d654d2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T22:55:11.314+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejo Proibido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c5db9566-2684-4227-b70c-56ad45afb617', 'Amor e Dor Que Sentimos Na Pele', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0e43978a-4205-4615-a607-338abe5dbf11/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T22:49:38.535+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor e Dor Que Sentimos Na Pele'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a8bab22a-54f8-4cee-b9a6-f2f8cb1329d8', 'Rasgando a noite', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/542d1a7d-cef7-4752-bfb6-3693c07e38e5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-11T22:26:50.473+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rasgando a noite'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7e26317c-1fe0-4711-b44f-075a68134dd0', 'A Espada Do viajante vinte e Quatro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/896194d2-4f2b-45ec-b268-854194db7842/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-11T22:26:03.44+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Espada Do viajante vinte e Quatro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '093d04a2-d90c-4375-a008-a67764ebf758', 'A Missão De Proteger a Minha Mãe', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/414b4b19-a806-4d5b-bd84-f287bec59174/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T22:08:13.383+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Missão De Proteger a Minha Mãe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4b7348ea-9301-4363-8624-c49a14e1c526', 'A Fé Do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e8d90f9b-3cac-49c7-a446-92b5f633b2bf/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-11T22:07:27.493+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Fé Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5e39bf07-aadd-4e23-a869-7a2bc3a7709f', 'A Falsa Herdeira Da nobreza e a Verdadeira Felix Da Nobreza', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e8835cbf-0d93-4b6e-837a-f463b83d8df2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T22:06:42.225+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Falsa Herdeira Da nobreza e a Verdadeira Felix Da Nobreza'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1d79ed5d-6d9b-45b0-8cb1-d070b9bad3e3', 'Não Se Meta Com a Herdeira Verdadeira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/9b5692be-e0c7-4f3e-a2a0-503135db3565/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-11T22:05:59.597+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Se Meta Com a Herdeira Verdadeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '141a3f95-8c66-4295-ac66-6072e1fe7375', 'Refúgio Perigoso', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/462ea128-ab8e-4669-8d8d-c9e437051613/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T14:13:58.943+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Refúgio Perigoso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd5dcc6ca-7cf2-4e95-8443-72b937db00db', 'Ele Era Meu Guardião', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/0a8c0532-70d8-4dae-8ee2-01dfda1259b1/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-11T14:05:42.358+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ele Era Meu Guardião'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '31d7eb33-a00f-47df-87d6-1266ebea848a', 'Ex Mulher Rainha Da Ciência', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/d40ffe2d-a4b3-4187-910e-0381f2db9ba2/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T14:00:00.918+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ex Mulher Rainha Da Ciência'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '62cbdd6f-6b09-4453-9f5c-28b41cfa4693', 'Amava Odiava e Já Era', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/ac0fb43e-f827-4b82-86e6-cdeb873829d4/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-11T13:59:06.663+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amava Odiava e Já Era'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f9599c8c-9c1c-4af8-8625-43c8879f1834', 'Amor Inevitável', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/266c3ac5-b164-4fa1-b58b-cdd3fda90127/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T13:58:19.252+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Inevitável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '852f2f95-f0d2-483f-b7a2-c6301561e2bf', 'Vingança Silenciosa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/90230488-bc26-4932-a1d0-9fd58ae2ae11/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T13:50:45.606+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança Silenciosa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e7dac2d7-95c9-420d-b370-c130888e2a36', 'Laço Do Lobo', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/02dfeb6c-bd27-4530-acd4-769cb579af6f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-11-11T13:49:57.676+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Laço Do Lobo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '64020b61-b0c3-44d9-b201-66cdb0c52c3f', 'A Noiva Sereia Do CEO', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/04db9da6-a6ee-46de-b185-74faae636efc/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-11T13:44:27.608+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Sereia Do CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '614eca86-deef-47a9-b802-ce4d309273a8', 'A Rainha Alpha Traída Resurge Das cinzas', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e302da0f-53b7-45ae-ad0a-6645f30208d8/playlist.m3u8', '[''homem-lobo'', ''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T13:41:09.862+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Rainha Alpha Traída Resurge Das cinzas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b806dfd7-4cf4-4a3d-a14c-628b622d20ce', 'Reencarnação Do Imortal', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/794cfec1-9a08-4373-9f7a-caa1e0981da9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-11T13:32:35.485+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reencarnação Do Imortal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3b1a6bc3-3f97-4da7-9751-b7a04c0d4df1', 'Entre Cinzas e Desejos', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e62dec49-2ef7-420c-9634-0963cf3ac370/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-09T04:04:24.425+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Entre Cinzas e Desejos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '856b7d1d-fa5c-43fc-b555-ee29fc8fcc1c', 'Quando a Substituta some', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3c865302-5073-4b65-bf0d-79a1f85f1040/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-09T04:03:14.403+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando a Substituta some'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '579aa838-9607-4ff3-92eb-accd15c18a79', 'Queime Minha Gorda', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aeb65b27-6f34-409a-88f0-465dbd57eef4/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-09T04:02:26.217+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Queime Minha Gorda'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'efaf64a6-458d-426d-b9f9-9d97000df426', 'Você Chama Minha Mãe De Amante', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f430cda4-0ab9-4494-abda-fdc8871b36be/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-09T04:01:10.023+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Você Chama Minha Mãe De Amante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ac47fd70-a527-4cf5-9b4f-610b819975cb', 'A Arte De Deixar Ir', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/fc3a0e16-d56f-4712-9c09-72c92b6ab62f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-09T04:00:28.116+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Arte De Deixar Ir'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f0abcbfb-efed-43b7-911e-746b955e9579', 'Marido SemiMaduro', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/a19fde30-2a50-4fbe-bceb-2e6c46c3bcd6/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-09T03:59:44.234+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Marido SemiMaduro'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fc6eaf2f-ee35-4394-b817-fa34625effd4', 'Depois do Término Casei Com o Chefão Da Máfia', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/06018a93-7cf2-4e8c-af3c-cbc6bd0a106a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-09T03:59:01.236+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois do Término Casei Com o Chefão Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a7f897c8-a70d-4633-a81c-09fa9b790b81', 'O Retorno Da Herdeira', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/6a6a7bd6-5d38-498f-8743-96894f2aefcb/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-09T03:56:59.421+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Da Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '98486f52-e44a-437e-b290-c6ae5297c24a', 'Domando o Senhorio', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/e5335c66-1094-4b87-91cb-729c197edc31/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-07T23:22:41.683+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Domando o Senhorio'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '189be385-90bf-44ef-8541-0003f78c9d6f', 'O Filho Do Meu Ex Marido é Meu Prazer Secreto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/5a2e5d7c-b21f-47f2-a9b3-0092ee1a6616/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T23:20:14.931+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Filho Do Meu Ex Marido é Meu Prazer Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ef78ec99-c329-4afa-8214-bececbd000a4', 'Quem Vai Envelhecer Ao Seu Lado', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/3c5eb6bf-6459-42f1-ab9e-094ad952c64b/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-07T23:19:03.782+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quem Vai Envelhecer Ao Seu Lado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '89b018f8-2253-4f65-8d0e-6b631d46ca3b', 'A Esposa Poderosa Renascida', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f7b6dba7-a8bd-472a-86c7-cf9cf5f8a97a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T23:18:17.663+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Esposa Poderosa Renascida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '01b630be-040f-45b8-a5eb-b0ead6c18d2b', 'Seus Alfas Desejados', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/887e20be-b08b-4b2b-adee-438455a75883/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-11-07T23:17:25.951+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seus Alfas Desejados'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f997e008-cb49-4cc4-959e-3a2561b393f0', 'Amor Eu vou Me Casar', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/37fbc556-10c4-4819-9e48-d020feb718dd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-07T23:13:08.808+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Eu vou Me Casar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd2a17e00-0512-4c24-a723-e8ea0b1fc6d2', 'Herdeira Retoma Seu Trono', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/48937909-03c0-4209-a3e6-1b83ff2fd931/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-11-07T22:49:06.071+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeira Retoma Seu Trono'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd1880453-a4b2-4139-b49b-0b3fd9d13203', 'Afogamento De Paixão', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/59d0ef24-2b1a-4763-82f7-5c0b66dd6117/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:47:24.095+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Afogamento De Paixão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bb6c7616-c187-473d-a957-61b0644a6b4d', 'O Preço Da Traição', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/f15f6cc0-f68d-4c61-87d7-008e8750cbe5/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:46:34.623+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Preço Da Traição'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5d35f941-b3fd-420f-8eba-542fc9d5e2df', 'minhas Versões De Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/56c4987b-d8a9-4ae6-9909-f26021cbe26a/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:44:44.815+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'minhas Versões De Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e32cef98-ef1e-494a-8846-01c76157a1cb', 'Últimas Palavras do Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/8e2f9bc5-0efc-448f-b90b-ea2c4927ada9/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:43:06.88+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Últimas Palavras do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '139b65c8-de5a-49b0-8a8e-0866484b402f', 'Desejada Por Dois: Vampiro e Caçador', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/dd207b03-07f3-4326-a458-ce3a63930264/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:36:53.699+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Desejada Por Dois: Vampiro e Caçador'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ee0338f1-571a-4d2e-bbdf-958736f3455f', 'De Volta Ao Amor', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/aa3d5f16-1a9c-4b4d-9d43-2e582c6aa8fd/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:36:05.284+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Volta Ao Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '034a88b1-54f8-41d6-add5-bfc8fefc99e9', 'Protegendo Seu Corpo Reivindicando o Seu Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/de44ffb3-c8b2-4e76-a9e6-1926e8631cf8/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:30:54.615+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Protegendo Seu Corpo Reivindicando o Seu Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2d731742-4923-4eca-bec3-c213e18b1675', 'Destina Ao Meu Bilionário Alfa Sem Teto', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/7b60fe58-ce79-48db-844b-76a87fabf9d1/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''homem-lobo'']', '2025-11-07T22:29:42.363+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destina Ao Meu Bilionário Alfa Sem Teto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a7534a47-0b1f-42fc-93c3-0cb04e6e2e03', 'Treinando Seu Coração', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/91b9905e-4e3d-482c-90a8-81c8536e18ca/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-11-07T22:25:58.394+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Treinando Seu Coração'
);


COMMIT;