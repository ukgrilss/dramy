-- MASS IMPORT DRAMAS (2026-01-06T01:15:18.945Z)
-- NOTE: Video links are Iframe embeds because direct M3U8 links are protected by BunnyCDN 403 Forbidden.
INSERT INTO categories (name, slug, icon) VALUES ('Novos', 'novos', '🆕') ON CONFLICT DO NOTHING;
INSERT INTO filmes (title, description, image_url, video_url, category_id, premium, featured) VALUES
(
    'Casamento Em Chamas',
    'Sinopse: Após três anos em um casamento arranjado, sem amor e sem intimidade, Edith Blair descobre que seu irresistível marido bombeiro engravidou outra mulher e exige o divórcio! Isso, no entanto, significa abrir mão de uma paixão secreta que cultivou por dez anos. Para sua surpresa, ele se recusa a assinar os papéis, a menos que ela aceite fingir ser sua esposa apaixonada por mais um mês…Então que Edith descobre um grande mal-entendido que os separou desde o início.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0d34c44c-6005-4a7d-b45d-db6e98e2f11a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/63035ec1-c526-4276-8758-7a8dffbe37e4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois Da Névoa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7c5159d5-4dbf-4431-b9d1-81b8536cced3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6162ee5a-3d3b-4272-8fa2-97ea34fb12e5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida Do Meu Inimigo Mafioso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/62d29520-cafb-4f27-af17-3606ac25d2cf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/eedd6a77-1a38-440b-b55b-fa06958e9587',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Neto Falso? Não Verdadeiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e532c4d0-ef62-45c7-b87c-0403e19b8585_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/00dbf8a2-d945-44a5-9a35-86771df09d7d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Como Me Tornei Uma Herdeira Bilionária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d63d8668-2b5c-4d7e-aada-b0f00436e142_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d2b07356-a40e-4d9b-a548-bbf6d526705f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Virou Rainha Do Tribunal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1be3c6da-d338-4a3a-8df3-6dc3bd693e16_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/237fdaee-4046-4ee7-bb34-be1e07985cf4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Aquele Que Nunca Esqueço',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/decae380-60f8-473f-a4e3-2b67080a606e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c1ad08c8-ae12-4878-a5cb-f89c71e93349',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Despertar Do Amor Perdido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cb4f3446-f69e-4a97-a34e-b2d10009ae83_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/afe6b182-197d-44a7-9121-7f9f953f07c3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Receita Secreta Para Conquistar Um Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b9410d41-b75f-4a70-9155-927d850f7fc4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/38955ee1-87dc-4dd2-b97f-ae85fd2c239c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Chefe Não Finge Mais',
    'Eva Washington, uma bilionária herdeira, escondeu sua verdadeira identidade para apoiar o marido, Kevin, enquanto ele subia na carreira.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1a381ac0-9891-496f-8dbf-3a29d72c5380_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/172e9cc7-3e57-4a07-85f3-84fd43467583',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meus Gêmeos Gênios Da Matemática',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/972a8e89-1423-4b6e-8a3d-fa050d23e786_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c5049128-eaf2-41ca-878a-d2f58c222064',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Presa Pelo Amor Que Me Salvou',
    'Carregando a dívida esmagadora deixada por seu pai, Yvette termina com o namorado, Archer, fingindo ter dormido com outro homem. Mas, ao persegui-la, Archer é atropelado por um carro e quase morre. Anos depois, Yvette cria em segredo o filho de Archer, enquanto ele conquista o mundo dos negócios. Quando seus caminhos se cruzam novamente, o ódio mútuo e o amor reprimido os consome como chamas ardentes…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6c7b17f4-5800-404c-8fd1-4eadc656fe62_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3f9ddb10-6c59-4e83-8544-9935c1c8bd96',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Últimas Palavras do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b3826ad7-4118-4939-912d-07203f31c772_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8e2f9bc5-0efc-448f-b90b-ea2c4927ada9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ops Casei Com Meu Inimigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b8282431-d74a-4e6d-8597-c540d9ab90b7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/267fd4a1-1f54-4b69-bbc5-e732611eb8d3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casados Num Piscar De Olhos e Totalmente Mimados',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7340dfcb-d602-40b4-bb90-c32bf32ce33f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/96f0b0a4-8b1c-45b1-b4ac-56258ed6fda7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Bela e o Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/35733298-abbf-4df6-9af9-824066ce921c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5f0f1bea-c905-4267-a23e-c0fc819a2417',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Guardiões De Dia Amantes A Noite',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5ae43a34-19ab-43e3-ad23-34ecacbd8f68_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/556db15b-0dc9-4f7f-8df9-f599b569953a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejo Proibido Do Intocável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d73f3d03-509c-4423-8655-bb2f1f1a8a6f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6bd6823b-147f-41bf-ad71-db1988e073f0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Presa Pelo Amor Que Me Salvou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/914ef23b-c90b-43ee-a01b-5162fa015944_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f6993af8-c160-406a-a08b-9ebcb90dd174',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sem Coração Sem Perdão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db31b745-67f8-4e6b-bb0c-58db68ba1c3e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f15bed20-26a1-4852-8c6a-e5c5e226de6f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Retorno Da Herdeira Gênio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2815306a-3f58-484e-99b9-dfda9648c843_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/03ea70b8-7819-496d-833e-c3155e70d2b7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno Do Herdeiro Oculto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c250fa08-c1df-42fc-96a8-d5ba33301518_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4daf6b2b-b606-419b-a72f-57d94811e61b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sol Após As Cinzas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/28d158d5-3e22-4d7d-b96d-866b8a5bb754_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8c76b3d7-cbdd-4912-9420-60db4873e63e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Noite Com O Irmão Do Meu Namorado',
    'One Night Stand é um drama emocionante e carregado de emoções sobre amor, traição e a luta pela sobrevivência. Quando a perfeita dona de casa Mackenzie Exford é diagnosticada com câncer terminal, seu mundo se transforma em um caos - seu casamento com um político sedento por poder desmorona e sua última esperança se torna um encontro impulsivo com um misterioso ex-presidiário, Chase. O que começa como uma fuga imprudente logo se transforma em um vínculo poderoso que desafia as mentiras ao seu redor. Mas em um mundo onde a imagem é tudo e o poder corrompe absolutamente, Mackenzie deve navegar em uma teia de enganos, manipulação da mídia e ambição política para recuperar sua vida - se ela conseguir sobreviver a isso.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7bb8971e-19cf-42e8-84f4-e1c522da8166_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/69afd1ba-3c71-42e9-9d4d-48eff2748319',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'SRA. MOURA, SEU EX-MARIDO IMPLORA POR RECOMEÇAR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7acc31ca-88d2-4473-871b-8b6fed45ec91_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c08504ae-37da-4c3d-83d3-d801f784df23',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Na Luz Que Se Apaga',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/900f4f91-3821-4bf3-b374-0c3cd53fb6f3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c017d67d-185d-4f5b-9e69-416daf203582',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Lenda Da Lua Sangrenta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/df72786b-708e-4559-8206-56bb23622933_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/95f5e549-2550-45a1-ae67-f2a203d8878d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Noiva Esquecida O Violino Do Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/19d577e4-e0fe-46a1-bbca-f4a1287373bd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/68724abd-b4f8-473c-aa04-4fad5158ce0e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Traído Pelos Que Amavam',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d33fc19f-5da8-456c-b076-6dc408310804_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9b5d5a47-a95a-4b88-9481-f27830eed8fc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mimada Pelo Meu Tio Vampiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7b60870d-e37b-4052-b9af-e7f6d34bcffc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6bed0243-600b-4797-ac3d-2b2a37ac985f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Laços Além Do Escritório',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5a534ba0-c44c-4994-87d0-f9656b06a2e7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f06e8aab-0cfb-440d-bfa8-cdd0dee71374',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Atração Proibida',
    'Sinopse: Anna , uma garota doce, porém forte, criada por seu pai xerife superprotetor. Tudo o que ela quer é liberdade — e talvez seu primeiro amor de verdade. Mas quando seu pai se casa novamente, tudo muda. É quando ela conhece Jack — seu novo meio-irmão. Jack é perigoso. Ele é cheio de cicatrizes, silencioso e se esconde de uma gangue. Mas há algo em Anna que o atrai. E mesmo sendo totalmente proibido , a química entre eles é incrível.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bafa437b-e22d-454c-9c23-edb8e9db95aa_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fbee721a-41b3-44c6-a93c-fbdce65badb0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A FILHA REJEITADA VEM COM FORÇA MILENAR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4f09c65c-54d6-4585-a725-60ba56ade7d0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fd998cea-019f-4700-93f1-1128c25eca56',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Melhor Amigo Do Papai Me Fez Sua Esposa De Um Bilhão De Dólares',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/42faa503-5875-4d23-acff-f9d6742d3415_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8073c332-c862-48c7-8376-23e8284cd9f3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Tornado Em Desastre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3b65c756-66af-48e9-b1c4-a746a2b6793a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ae010763-f175-43dc-bfec-ce5dadfa0fa6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vida Dupla De Um Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a657568f-3006-4bbe-9475-cd4c93bc6346_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/4a5be4e1-a72e-441d-be77-c65dbc743ccd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Príncipe Encantado Está Aqui',
    'Sinopse: No dia do casamento, Julia pega o noivo no flagra com outra! Sem pensar duas vezes, ela chama Grayson pra fingir ser seu novo noivo — sem saber que ele é um bilionário procurando pelo amor da vida dele… que é ela!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ef6e8851-9d8d-44ef-9803-253f5d3cc8dd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7e21de24-3539-4591-a388-fc0226dfc368',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Pureza Da Pele De Gelo',
    'Sinopse: Há três anos, Carina, que era filha do bilionário, perdeu sua posição e se casou com Ivan. No entanto, Ivan, devido ao sequestro da Carina no dia do casamento, começou a desprezá-la, considerando-a "impura". Durante esses três anos, ele não obteve a certidão de casamento com Carina, nem sequer a tocou, e ainda manteve um relacionamento com a Raissa. O que Ivan não sabia era que Carina não tinha sido sequestrada, mas estava trabalhando secretamente com uma organização especial para resgatar mulheres sequestradas. Nesse dia, Carina descobre a traição de Ivan, enquanto a mãe e a irmã do Ivan, determinadas a expulsá-la, tentam trazer Raissa e o bebê para dentro de casa.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c06dba71-0a7b-49a0-b000-89b77dec1108_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cf849ac3-c549-403c-88fe-89766bf98e36',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Só Restam As Rosas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/267ae3d5-2c46-428f-a306-75a19d2d3d7a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a9868a25-e4ce-463b-8530-3c71d4285597',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Contratada Pelo Prazer',
    'O que acontece quando uma mentira vira a única verdade capaz de salvar você? Julia consegue um emprego de fachada numa empresa de alto nível e se vê num jogo de amor, chantagem e poder. Com o carismático CEO Richard, precisa manter a ilusão perfeita entre investidores ciumentos e rivais vingativos. Um thriller corporativo em que imagem é moeda e amor é o risco mais imprevisível.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9d9319ce-192e-483e-b0ee-e76733d7bef6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6d9cb2ed-e8bf-43d4-b0be-6dd542bcee9c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Invisível a Resistível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/48b42e34-0e85-4a3e-ad32-3a6199344600_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d26a1f8f-493b-41bb-a576-69cb89cea4a4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Apaixonado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bc2db4b4-8ef5-4ce1-bab1-ddd8d3186d19_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/85076fd6-6096-40f5-9f56-758cf462dccb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando Te Encontrei / Feliz Dia Dos Namorados',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9f06d4cb-34e4-48cf-9954-bd40ad83d9e5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b585a9fd-e214-4b40-b086-f4e621cc3438',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CONFUNDIDA COM SEU MATE O ARREPENDIMENTO DA LUNA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d9f8a7c4-f693-47ce-af3d-80300666e9c4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c0da423d-24bb-48c4-8eed-6a44c6e44aa1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Na Palma Da Mão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/75602206-3914-430a-9061-a3049076a1b8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/79daa9aa-a6a4-4f97-8e72-3c7f75b9d416',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Primavera Que Não Voltou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bdeae12d-5896-4b5b-a054-5aa884fb3902_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/09eb4dae-ed06-41f7-960d-0cf422bce845',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Tolerância Zero',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1ca15546-aba6-40f8-b319-14bf7950b872_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/496a26c7-83d6-465e-9691-74139524d41e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Despertar Do Gênio',
    'Ethan Smith detém o título de cientista mais jovem do mundo. No entanto, ao contrário das expectativas, sua vida é marcada por conflitos familiares e tragédias. Após renascer, ele escolhe se afastar da família e viver por si mesmo. Desta vez, Ethan se recusa a ser fraco. Ele prova sua genialidade não apenas para a família, mas também para seu colega de carteira, sua escola e, por fim, para o mundo inteiro—mostrando que é um gênio que não será subestimado.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c7afe7bf-841e-46b9-b008-4ad8f32606b7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e621e679-3b5d-4bae-b801-25afecc45bd7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois De Sair De Casa Ela Dá Uma Guinada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/394734bb-fdba-4db8-aef3-9591d0b9dd5c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2af9bdf1-f07f-4959-a3d8-74508562062d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Paixão Tabu Meu Meio Irmão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a823f0b1-d9fd-430d-bf94-df530f8f0e70_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e990d177-5cfa-4806-b508-37baf5098fa2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança Da Fênix',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/19070a92-5c3a-40f3-80ed-df32dee7ac81_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/78a10f4f-755d-4722-b5ab-67a5220c9c6a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MARIDO MUDO ESPOSA ALTIFALANTE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/67120700-fc2a-4c14-b470-c41c373c7f83_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8da9d313-561e-45bc-b0c6-6325eab01066',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fadado Ao Meu Vampiro Proibido',
    'Sinopse: Durante toda a sua vida, Heather trabalhou como escrava para uma família de vampiros, até formar um vínculo inimaginável com Theo, um rei vampiro. Agora ela deve encontrar respostas para todos os mistérios: o que aconteceu com suas memórias perdidas de infância? Como aconteceu o vínculo? Theo é a morte dela ou o amor de sua vida?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/31873811-e913-41d3-a67e-1254ff774621_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f43c6806-d72a-4e47-8e50-aca55b9a7aff',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dispensada Por Um Traidor Mimada Por Um Bilion��rio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8e1e74a3-4ff8-48df-89cc-ea5165e72cb5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5e8dd600-486c-498d-b8b1-d9135e41619e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ex Snob Eu Renasci',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/96f6c90e-515b-450a-ba4f-e8cb7d1f7132_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/12300b0d-7d11-4589-87f3-ea27954e15b1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Capitão De 8 Anos comando',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ce017cc9-f972-466b-8128-7338e7deefdb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6496c6e3-f469-4b22-87b3-799a7143f962',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Alfas Ao Serviços Da Rainha do Lobo Branco',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2e7a60b6-9c7d-4541-9396-bbc9a9e70530_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/14ba7bfb-9816-46a5-9901-b5594d4f2288',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Aniversário Fim Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3cee36ee-31fd-4f52-88f3-704216c7b859_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/90bc4e1a-1d3d-4e98-bb14-dc9344196904',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejo Irresistível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b193e29c-22b6-46ba-bf56-17b91e1cd6e9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/83df6976-8568-4b91-bb49-2d03ab1b37d3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esposinha Mais Nova',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8188a331-45e4-44de-87b1-62051188b930_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6ba6c61a-1fd3-44d5-b5af-a9ff15b38537',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sou Filha Do General',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7f2266f0-11de-4c94-97ec-ca580ab8d41e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/25ab9aeb-97ff-4662-974b-89fceaea70c7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Mamãe Eu Trouxe O Papai Pra Te Salvar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f3684f89-b6f3-4c0c-8525-f1a927e4baa8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/005ffe99-a869-4411-808f-f80b74390a51',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ENTRE A VIDA E VOCÊ, SR. SU',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81285f61-dc95-4c7d-84c1-72a491b531d3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/835eaaae-f32c-452c-9f5e-34d9a851180e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Perseguindo a Rosa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b9b10597-2d89-46b2-a138-042622f589b1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/77ea6717-120b-458d-a16a-b8f7cab9bdf8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Encontro Do Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/909748b8-f56d-468a-a5f3-f7eeee927fe2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e441fd4b-9d36-48ea-b49a-b8f8f7ece3b3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Encantado Pela Princesa Curadora',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/62abcc8c-2a84-41b7-9d63-2a7d1631af49_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5fd01892-a479-45a1-b598-603b9222bb59',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Jogo do Destino: Amor Após a Morte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8296712c-c08c-4ed8-a3ff-f705b1d6d6f5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d4ef9411-23c2-4553-b492-a616868defd7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Máscara Vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/97fc2c2a-01ca-4682-b0a0-4a61c048a3cc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ca5ba527-e6e8-40c7-bdbb-ae430e500153',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Código Da Vingança do Hacker',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/12d96cec-5a52-4dd8-bc22-31211f93a813_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7da901e8-6b29-47d9-9377-c2c8eca31477',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'No Fim Da Névoa Ninguém Retorna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c371d405-14ed-449c-95fb-32b04fe2d129_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e7cc5b7a-c476-42a0-b100-7db2bebb882f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sexo Para Reatar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dd460364-b834-42d1-8ebf-e8daceca373b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/03284356-1427-4287-a551-77dd035824ca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sem Perdão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2dc105fc-1228-4fd8-a1be-0988607bdd12_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ad594e20-251c-4ef5-9894-28e9929f914c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Surpresa Do Pai Rico',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a2e7f56f-7787-42df-8f61-e01e4a2c2a24_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c278926e-9cd3-4905-ac08-bda1238c9d80',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor De Estrelas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/233c1e7b-9ccf-4be6-b110-777290bb1bac_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/31decf5a-4147-42e2-a758-434620e302f2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Rei e o Peão Amor Ou Sacrifício',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4582f187-f6a7-4444-92f0-115add7404cc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/be59f6ce-30d6-4a20-b933-d7c430a1c615',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Rainha Não Ama Só Conquista',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/265a3bef-14de-4a32-aac0-aac08dfa1fb1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/19991b56-b4cf-4e3f-8971-fa4d32c0b258',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Amor Meu Orgulho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/296c0b03-c633-4763-84cf-cd5ad740a04d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/87304355-cd46-47d0-860d-a4da4ee26d8d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ligada Ao Lobo Rebelde/Bound to The Rebel Wolf',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6388f8be-bde5-4110-b848-d20867c9a5a8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/40b2c6ae-19b8-42d2-ac6d-e97863525846',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor se Desfez No Jogo',
    '"Clara Mendes fez de tudo para salvar o marido e o filho, ambos supostamente com cirrose. Trabalhou dia e noite, vendeu tudo o que tinha — até descobrir que tudo era mentira. A doença era falsa. A pobreza, encenação. Por trás disso, um jogo cruel: pai e filho disputavam, em segredo, o amor de Clara, tentando provar quem ela preferia. Traída e humilhada, Clara decidiu sair de cena. Mas será que, quando eles notarem sua ausência... ainda haverá tempo para voltar atrás?"',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/76022436-83ea-48f6-947c-bfa5c8a2370b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6affc828-0dff-4ef5-be01-91eb88f5ac26',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Para Meu Abismo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/69496d03-88ee-479a-9e1d-c20b5edd09db_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c541d11a-b528-4389-804f-6ba4666bb770',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Princesa Dos Laycan Não Será sua Luna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/890da871-2c14-45c5-a879-4a964f52cb23_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c766bed1-1ede-4953-b6d6-0cb1bd1649bf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Jogo Da Herança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0ea2bd4d-1d45-4fe8-a3e2-b633f7b0c610_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f4f56e4d-3f78-428f-83f2-df9ce015a445',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vingança Carmesim: as Noivas Desaparecidas',
    'Joana, recém-formada na academia de polícia, volta à sua cidade natal com uma missão: expor a sinistra farsa dos casamentos sagrados. Para se infiltrar, se oferece como a Noiva Sagrada, descobre que o que acontece na caverna é, na verdade uma rede de traficantes liderada pelo prefeito. Entre rituais falsos, Joana usará seu treinamento para libertar a irmã e dezenas de mulheres.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a9157e9f-7d72-4028-a138-bd921d053faa_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b85d5a30-c736-47b2-a941-093f7423cc39',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Deixar Ir é O Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aea62d45-338f-488a-8937-3ebddf0c2a79_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/fc2fdb3e-6962-4abc-9e9e-d245df6db08a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Olho Da Fortuna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/368d7e91-4dca-41fa-bf38-9fee64e0504b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/97702a50-55fc-4ede-b1d6-935452af227a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jogo Do Desejo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4604b11a-cf38-4268-bd65-e447655235e3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f14538dd-4e22-4d35-a7f0-bd528a4955fe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Até Morrer e a Eternidade Adiante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5bfb5af1-b515-4f1c-aef2-086e3be1cb7a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1977347b-da91-4ded-9794-58fb649fd906',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Sob Contrato',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3970decc-d5d1-439f-86be-ab0578c7f079_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/36473846-d2fd-4308-84a0-aafc09676bea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A INDOMÁVEL ESPOSA DO CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6701c101-7faa-4594-b9b0-d3f90d1e6c84_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4ceefba2-ca21-41cf-820d-e1452300a4fd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Voce Tem Punhos De Vingança Ela Ele',
    'Jenny, ex-rainha do combate, vive escondida como "Leyton" até que Lloyd Smith, seu rival, sequestra seu filho. Na tentativa de resgate, ela falha — mas Robert, seu marido, revela habilidades surpreendentes e esmaga os agressores. Lloyd então forma um exército para caçá-los. Encurralados, o casal quase perde as esperanças... até Robert despertar seu poder real, eliminando todos. No fim, descobrem a verdade por trás da vingança de Lloyd.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a3baf4ea-0f3e-4f4d-94cd-6c0ea9f17eaf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e6f3e9a4-5c31-4460-8a13-f5603de6c9e3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Médico Chefe é o Papai do meu Bebê',
    'Sinopse: Quando a interna de medicina Molly tem uma noite de amor com um desconhecido, ela acredita que será algo passageiro, sem consequências. Mas um mês depois, descobre duas verdades chocantes: está grávida do bebê dele... e o tal desconhecido é ninguém menos que seu novo chefe, o Dr. Graham Weston. Assim que o segredo de Molly vem à tona, surgem também rivais, incluindo membros ciumentos de sua própria família e uma figura do passado de Graham. Todos estão determinados a separá-los. Com a pressão vindo de todos os lados, será que eles conseguirão enfrentar o caos e ainda encontrar o amor no meio disso tudo?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a035dd00-24a5-419d-b706-c42c93e22df1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d28aa628-8ee9-4ccb-a202-3bf696f69b87',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejo e Arrependimento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c8f63ccb-37ba-4b3a-93c5-8205e8de1810_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/15d11858-5aee-406f-9f07-39fff07e91a0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Charlotte e Os 7 Gostosões',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4eee6663-ebf5-40c1-84ab-d118730a76bb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9eef68d1-a11f-4b62-b901-479e494fb46b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Dama Chefe Da Traída A Amada',
    'Sinopse: Isabella escondeu sua identidade rica pelo bem de seu amado Luka, financiando anonimamente todos os sonhos dele. No entanto, quando Luka alcançou o sucesso, abandonou Isabella pela sua suposta pobreza e decidiu se casar com a herdeira rica, Vita. De coração partido, Isabella aceitou uma proposta de casamento de Aiden, o bilionário que secretamente a admirava. Juntos, eles juraram garantir que Luka recebesse o castigo que merecia...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b93814f7-496a-497f-accb-a39b084983a0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b7a15976-7a2c-4e67-a72e-c45ce92f8bd0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Adeus Após 99 Perdões',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9b1132f0-425e-433b-a082-54c5d99735bf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/592dfbe7-3a53-4f8c-8409-31868a89e6b6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ela e a Primavera Vem Juntas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/69dbb5f5-847f-4a9d-9788-926ff984f048_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/83178460-765b-4d34-be49-1f8fa6d57549',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Namoro De Mentira Com Meu Rico Inimigo/Falso Namoro Com Meu Nêmesis Rico',
    'Quando uma garota atrevida do ensino médio retorna à Colégio Santo Mar, ela não espera ter um erro de uma noite com o herdeiro Bressani, seu inimigo de infância, e depois se unir a ele para irritar seus ex-namorados. Será que eles acabarão se apaixonando?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5d5bec93-f4c7-4e48-89f1-ad4cc1ee344a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b9b7b478-fea8-4051-85d7-95c9c03c83c7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Chefe Legista Largou Tudo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f2ca175d-50b6-4c97-b33a-dae21f68ecff_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fd2785d1-b77a-4fb6-94fc-7cf71158fa83',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'EX-MARIDO 200KG DE ÓDIO PARA CALCULAR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1d7b705b-292b-4774-b76b-0aadbf9b8c68_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/192c9f45-6ce3-4a4d-9342-a8a84233fe1b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destinado Ao Meu Inimigo Meio Irmão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/42b00321-e364-4553-ba2d-ce29ce182719_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5739ff2f-bafe-4ac3-bb0f-f337085a9f95',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A incrível Luna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bd2f3a24-09ab-4c17-9922-f1355afa8e1e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4ce3afe5-a686-484a-8a88-e290b82f887e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Reconquistando A Minha Ex Bilionária Esposa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/909a501f-39ce-4efc-820d-52ff594dc4be_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6e406ae7-89d2-4dfc-925c-0df5f8825b55',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chefe Da Máfia e Sua Rosa Branca',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/29e849f6-bee5-4691-97a2-7ab67052604b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/de8e7443-922b-4ad6-a03f-2f658cb6f77d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Médica Moderna Vai se divorciar Do Infante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d63ad405-c9e3-4a03-8c25-5c27216ee858_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b60b27ec-6a3c-45a9-86af-18840a42ec12',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'As Regras Da  Cowgirl Agora',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d3b67d96-03b1-4389-b708-f23cc0616232_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/467613dc-609c-466b-927e-aa78fd739668',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quebrando O Taco',
    'Sinopse: Alex nunca tinha sequer segurado num taco de sinuca. Mas, em meio a várias crises, ele surpreendeu a todos com uma habilidade impressionante no jogo. A verdade por trás dessa transformação é...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/39a44ee6-8c18-4ef0-bdca-08c5142bb664_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a53a9985-7b8f-4d50-9ed6-31389775a10f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Caminho Do Recomeço/ O Quão Traiçoeiro é O Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1f5f8f1c-8f9e-4202-a9b8-7bf324e76fd5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c31ff459-0cc2-45d6-ac20-4dbd3f75c054',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ação De Graça Em Família',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f09f7f4a-92e9-4547-a1af-a9b9e20784b2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a900e2ba-a1e2-4b32-af95-80da6c0c6244',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jogo Do Desejo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f6949c2d-e9b5-4d9b-88be-c7961860b80d_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/cf523549-2a41-4f70-8963-8badb509a7d9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Papai Malvado Você Tá Frito',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/182a2d39-704f-495c-a5ff-446e5e790163_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b2f4619d-0321-4857-b569-f83f6f98c9ec',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança De Catarina',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/914c51d3-4e27-4891-9cb5-819faa56b96e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/91deeece-6827-496d-bf8e-2278ceee1ab7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Bilhete Que Ela Me Roubou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1dd5626b-3498-4635-ad85-522e62cef387_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/91ce28b6-0cfc-4d65-adc5-54117d4b34c1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Doutora e a Imperatriz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/60772451-991f-43f8-b134-74428be6ee1d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d06307e0-59ce-4c6a-8319-2ebc2192fbf7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chefe Por Favor Comporte Se',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1fb402a6-af8f-461b-ae90-a19c693cfc67_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d0e7c7a9-6b0d-4665-b625-b4a3291d79f0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apaixonada Pelo Meu Ceo Astuto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/29d75b9a-f28f-4868-bb68-f41cdb3fa91e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3fd545ee-f038-40b9-a932-1458a42316b6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'SNIPER AMERICANO A ÚLTIMA RODADA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1537f643-c862-44f6-9d45-3a77393b147d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/84177569-16a9-4d8b-908e-93d69916cf8e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Que Não Volta Mais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e368815a-8c8e-4259-b5bd-8937b4dea8b8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3206fbfd-3d7c-402e-97ca-bcbca00ba722',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Velocidade Furiosa',
    'Sinopse: O deus do automobilismo, tricampeão mundial, An Wen Yi, caiu de seu pedestal depois de ser traído por seu irmão. A queda do paraíso ao inferno, somada à morte de seu pai, o fez perder a vontade de lutar, tornando-se um mecânico de um clube de corrida. Com o apoio e incentivo da protagonista, Gu Qing Xue, ele ajudou o clube a superar várias dificuldades, retornando ao trono e conquistando o campeonato da corrida de Basiric.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/32018341-27dc-49eb-a64e-89221a184f5d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fe0dfcc8-9910-4c3f-9197-82ad09884af0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Mistério Das Águas Termais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/51da710a-3f7b-4799-bfed-74d297b7c4db_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/29d6f6cd-99ab-4138-a24f-07784e828bda',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meus Três Irmãos Ingratos Voltam Rastejando ',
    'A mãe de Oriana morre quando ela tem só 6 anos e a sua madrasta abandona ela num parque de trailers. Com 12 anos, ela salva o homem mais rico do mundo, Murray Morel, sendo adotada por ele como neta. Dois anos depois, seus três irmãos biológicos encontraram-na e ela decide voltar para a sua família biológica. Por consideração ao ego deles, Oriana esconde a sua fortuna, enquanto ajuda os seus irmãos em segredo, fazendo de tudo para eles se darem bem na escola. No entanto, eles acabem sendo manipulados pela sua meia-irmã malvada e começam a maltratar Oriana. Eles expulsam-na de casa e quase a matam de porrada. Após ser resgatada pelo avô adotivo, ela finalmente enxerga quem seus irmãos realmente são. Ela rompe, então, de vez com eles e decide recuperar tudo o que era seu por direito. Depois de serem castigados, seus irmãos percebem que Oriana era a única família de verdade que tinham e se ajoelham, implorando pelo perdão dela.',
    'https://www.reelshort.com/_next/image?url=https%3A%2F%2Fv-mps.crazymaplestudios.com%2Fimages%2F5c5af2e0-5bc3-11f0-b471-b9eef54adbd8.jpg&w=384&q=75',
    'https://iframe.mediadelivery.net/play/407552/72bcf9b2-9ad8-43a0-accb-a446c44deeff',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Da Queda Nasce a Ascensão/Reunião De Mentira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/736c31df-9cea-4ec4-b1ef-d658a4455ea2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6aabade0-8c8e-4e46-8557-8ffc6b749cc0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Recompensa De Sangue A Herdeira Retorna',
    'Nova Park desaparece num acidente. Sua mãe, Zoe Park, cria o maior conglomerado do mundo e oferece uma recompensa gigante para encontrá-la. Anos depois, ela descobre Nova em um laboratório médico — apenas para testemunhar a filha sendo humilhada por oportunistas. Agora, Zoe fará todos pagarem caro.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/15868753-fb04-44e4-98fc-3df10ef8ff15_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3fe39a77-100b-4f55-8565-6cb411509f68',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vinganca Da Esposa Desprezada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/35ce987f-c49c-4bea-81e8-37455b0dcb2d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1e4d657d-0c5e-475b-ba98-ffa9e8a0b952',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança Da Esposa Renascida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e50731b8-951d-4c7e-83d8-f68c8c746b5e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c431a2c0-7964-417d-a347-a105f18f61e0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Se Eu Tivesse Te Amado Mais',
    'Na véspera do Ano Novo, Jana é internada com recaída do câncer, enquanto o marido se diverte com a secretária. Ele corta a renda dela, gasta com joias para a amante e se recusa a autorizar a cirurgia. Já por uma alergia da secretária, corre ao hospital. Desiludida, Jana pede o divórcio. Só então ele se arrepende.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cfa7f1a3-d043-429f-bc1f-cd37e45b9aac_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3776d17a-f259-4a69-86ee-3d603f2f9ac6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Milionário Disfarçado De Gigolô',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f10c81f2-fb0b-4a2c-a44e-c9b14e3035ef_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ed1e96d8-7a7d-467f-9c05-6c74287941f6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Odeio Como Te Amo',
    'Sinopse: Acompanha a história de Yeo Mi-Ran, uma advogada que tem uma relação conflituosa com os homens, e Nam Gang-Ho, um famoso ator que não confia em mulheres. Embora nenhum deles procure um relacionamento, eles se veem envolvidos em um intenso ciclo de amor e ódio.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0fb68846-fb90-4fe0-90cf-a928c9483f82_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0ca44e16-d2e6-448f-b2aa-ea33267b52d1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Não Desperte O Dragão Dormindo',
    'Sinopse: Domingos, após financiar os estudos de sua namorada Anabela e a ajudar a alcançar o sucesso financeiro, é cruelmente rejeitado por ela, que afirma que não pertencem mais ao mesmo mundo. Enquanto isso, a poderosa CEO Teresinha percebe o verdadeiro valor de Domingos e o surpreendé com uma proposta de casamento, deixando todos ao redor atônitos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c0f76818-9b5c-4925-95e0-2217f7f2d6dc_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c1dbfd96-3205-488b-ab85-6365864003fb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Protegendo Minhas 7 Irmãs',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/21bc9c68-02fb-48cb-a0dc-f6d38b883c94_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/abba0f29-684c-4958-a9f5-1d2698d52bcb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança Da Herdeira Descartada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/37a28f77-9f31-4600-b6ab-1092250f209b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3bd35a2e-8efe-4eaa-9fb9-6732231f9bc6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Forçados A Casar Decidimos a Amar/Fim De Semana Exclusivo: Seu Amor Incessante/ O Caminho Da Silva Até o Seu Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6fcab7bc-dc97-4f4b-8a26-05f542082b9a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7204798c-7c63-41b5-ae4a-dc85731f861b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Em Dobro Pacto Dos Gêmeos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2e7840ea-6ba3-4800-9283-952c6c9ab80b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d3d87797-2b54-4cce-a0ae-0f810077c126',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Segredo Do Domínio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4cd5a1c7-1210-4b9b-86e4-b646f0f4bfb8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/389c0e5d-9d47-4b18-a994-4fa2b8ba3be8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Irmãzinha Contra Ataca',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c523f17b-81bf-4d5f-83ad-6d5533218075_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/2bfe5b59-0ceb-4044-b5dd-a5e9fbd47b87',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Perseguindo Minha Esposa Congelada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/56a6372c-ccff-4d07-b2ec-94f11dbfc355_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/56961705-8b2b-4c61-9f5c-fedf75471ff4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Seu Amor Ardente',
    'Bianca, devido à prisão de seu pai, fingiu ter um caso e terminou com seu namorado, Ricardo. Seis anos depois, ela se torna mãe solteira, mas enfrenta dificuldades financeiras com o tratamento caro de seu filho doente. Quando se reencontram, o Ricardo já é o herdeiro de uma grande fortuna e a vê como interesseira, humilhando-a várias vezes. Somente quando a ligação de sangue é revelada, o Ricardo descobre a verdade e se arrepende profundamente.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/315fe08e-9326-46f1-9e81-1bc041f415be_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/46f018b2-2b62-4dc6-b7c5-70eb39f71cc6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Votos Sob Ondas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2760a5ff-40ff-4346-a0e4-948bbaab465a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/844ca327-2fda-40ca-9215-bcbe34570c7b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Esplendor De Um Pai',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a6811677-bab2-4dd9-b179-20438d9bae56_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/64114161-d472-4f2a-8abd-ab00a2a52d52',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Volta Da Herdeira Caida',
    'Sinopse: Antes chamada de "namoradinha pobre", ela volta como a dona da festa e do crime! Revelada como herdeira milionária... E chefona do submundo. Agora, quem vai rir por último?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8e1a6cd2-b5b8-42e3-9002-4bca1335cf07_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/910cee5c-7180-459d-b8d7-613d13cd17fc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Última Faísca Entre Nós',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f6e821a0-f301-4513-aade-92c0f350c730_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/157d3390-d4bb-4dd1-99d3-750952f3d3ee',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Mestre Do Tabuleiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a09c13e7-5c97-4626-81ae-d442c00ba522_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/ca563a51-14f5-403b-a1d0-4967b05b17a3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Protesto eu Não Sou Gay',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9fb954f0-df09-456e-a44c-c95a48aad346_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c760e45b-b4c4-4118-b08e-d88f4b45a1ba',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segredos Do Coração ',
    '',
    'https://i.imgur.com/5lk2ypO.png',
    'https://iframe.mediadelivery.net/play/407552/3f593801-eef2-4281-ad58-99b27a9ab500',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chefe Legista Largou Tudo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d037e0f1-c8af-4be4-86a5-fe9b0439aef0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/43c85ede-70a9-4603-9de7-21c35b1ba1a9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mãe Corredora Implacável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e978f4a6-9c47-49e3-bab7-b8aee7a9b40b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1b6785ed-39ac-4450-b0f2-71d76993180f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Marido Fique De Lado A Chefe Voltou',
    'Sinopse: Callie foi casada com Andrew por três anos, sendo uma esposa dedicada durante todo esse tempo, atendendo a todas as suas necessidades..',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5e10ac5b-66ac-46f0-8a76-25c3b275895f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/760bdba1-4ce7-4d6d-8288-0e44ddcdc34f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Laços Proibidos Com Meus Irmãos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ab4fef98-bad6-46ac-9aae-f2e86ec2e677_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/eeb2debb-73d5-4923-916f-9896fa3c6691',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Eu Posso Ouvir Seus Pensamentos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7c2a9ee3-ef90-4f64-bc1b-65a9ded34607_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/265b5097-7115-44d5-9ca9-99e08154d5ab',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Olho Da Fortuna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7a329295-d67e-4c8d-ae9f-49e8ecb0eb37_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f169ed12-804c-4536-beb9-878354f4a77e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Laçada Pelo Amor De um Cowboy',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a861aa50-b5c9-427a-b5be-0f1b812faf0d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4d8702b6-f858-493a-bbfd-b487fe206b2c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Lâmina Perdida',
    'Segurava uma lâmina afiada, com o coração cheio de amor, ódio, sangue e lágrimas. Anseia por justiça, mas o caminho que tem pela frente é longo. Quando é que o seu desejo de vingança estará em paz?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2ed20c2e-459d-47d8-8361-4ddb2a521cee_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/13c27535-f89b-4c82-9dc5-542c85bc5d88',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Do Demônio',
    'Julia era vista como azarada por sua tribo e jogada no lago para ser a noiva do diabo. Mas suas preces desesperadas acidentalmente despertaram Isaac, o demônio. Sob seus cuidados, ela se apaixonou, sem saber que era uma armadilha - ele queria o amor verdadeiro de uma humana para recuperar seu poder. Porém, nem mesmo Isaac esperava se encantar pelo amor puro de Julia... Quando seu poder se esvai, ele arrancará seu coração... ou se sacrificará por ela?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c0d272e9-9c15-4357-a9d8-c48037f57a0a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5465f819-5c49-4206-aced-1f76bd06101e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Mimada Do Figurão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6e28ad99-241c-4da3-9585-90defc22ae16_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/da7a7dfa-4fea-4fdf-bfc5-466f965bb7ce',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Caminho Para A Felicidade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d9103353-84dc-4804-8665-52e2ba7384f8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7733eca6-5e3d-4d83-9105-19a9fed745ef',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'fingindo Ser Pobre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/60168e59-4dc9-4a70-9227-12391ca2c9a5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a399c0c4-c261-4b8d-92eb-db24769d97cb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Paixonite Do Interior: O CEO Quer Meu Tutorial De Novo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4909b18d-9a2b-4da8-9e04-0f042a674ead_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e30136d3-5a9c-43bf-9af2-74265cc4a65e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cair No Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fd4be6dc-061d-495e-ae7e-9cab8ea6ce9b_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6db7bf96-b0b6-40ed-b718-56735820b538',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'CASEI COM UM JARDINEIRO GANHEI UM PRÍNCIPE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b675a121-95ab-4a6c-bde3-69580f7c4a4f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/700cb5c3-e090-476c-9029-191dc527c626',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DEI À LUZ O FILHO DA AMANTE DO MEU MARIDO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a499bf3f-3549-40f2-9a86-41d4e4c5353d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d4b69b3c-d5eb-45ef-b913-a2f6dad61e8b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Tempestade a Caminho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c297d730-1ef9-4ba8-bc4d-7fa51af44d8e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a7576fb9-f063-4dd8-8146-410f1c83bf5e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sr Fu Sua Esposa Quer o Divorcio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a2d02e32-f4aa-4f3c-8c98-41a203ef9702_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7a4fb850-034e-48f2-95b3-da0b922e3ab2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Marido Cego é Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5ef877b4-965b-4981-85c0-4a820536306b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fc59bced-f0d1-474c-b82f-1d7c31815422',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Casamento Falso De Dois Chefes',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f4fa1ffd-a5dd-4698-bf06-48850d76d9d2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d8d100a2-71dc-4eb2-99ca-bace8ba5f753',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Paris Errada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f1920021-2f4c-4acd-a499-002c1701b8a8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/04a88fdb-a617-45f3-97d6-cccc13425b94',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Seu jogo Perigoso Da Sedução',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/53166a00-d83d-4b47-96d0-a3abfa52d730_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1089f863-7d99-42e7-87e7-baa6c7cc4f96',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'DA CONCUBINA À SOGRA: A  DELÍCIA SUPREMA AO TRIUNFAR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3efcc576-0b63-49e0-b50c-f336018ea4c2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cf9c0221-0ef4-406e-b5c9-39bc968d0987',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Acordei Casada Com a Minha Paixão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/886965fa-b8b7-467f-858b-17ec56007017_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/668a7a2d-20f5-4667-949e-9cb90d49415a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Irmã e Eu  Amamos Os Irmãos Mercenários',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4f4cb3a7-07c6-4c30-b5f3-e7ada321e17b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a3b8d6f8-1b1c-4d5d-ae74-c6d65a416e12',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Derruba a Família do Descarado com Minha Sogra',
    'Joana, guarda-costas com medalha de ouro, protege vítimas de violência doméstica. Casou-se com Miguel, ocultando a identidade. Quando família de Miguel comete violência, Joana coleta provas e luta pela custódia dos filhos. Crimes de Miguel ficam públicos, sua licença é revogada. Quando Miguel ameaça a filha de Joana, ela decide não se divorciar e enfrenta-o. Miguel descobre a identidade de Joana. Susan, mãe de Miguel, rompe com ele. Joana e Susan começam uma nova vida com a filha.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4241d30e-f0d7-4aec-b17c-5927f979423b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/75cd9275-cb17-4bb1-a8e5-5d4d3e53e980',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando O Amor Apaga Memoria',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ad78d6b6-a61a-424f-93ec-d8a03ea32b54_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f02e8231-a57d-425a-9de2-fabbcf9a8065',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Sem Memória Só Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fa5195b7-4597-478b-8bd3-61a714383422_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4142f996-04ec-49c3-a499-273336d4a359',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Desejo Oculto do CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a4072edd-ee12-4818-a7a8-efe57bf68300_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a8ba1aea-cbae-417c-9c0e-84e3748582f8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascer Para O Amar O Sr perfeito',
    '',
    'https://v-mps.crazymaplestudios.com/images/4372c7c0-5237-11f0-860b-97fc2eb1c6d9.jpg',
    'https://iframe.mediadelivery.net/play/407552/1a35bfa0-4778-4eeb-9dce-b5494c03c5c4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segredos do Pecado',
    'Sinopse: Depois que a mãe de Marcella Sinclair morre, ela não consegue deixar de se sentir um fardo para o irmão de dezoito anos. Então, quando ela recebe uma oferta para ganhar muito dinheiro como stripper, ela aceita. Ninguém pode saber... principalmente seu irmão, que está decidido a manter sua pureza e inocência para o resto de sua vida.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/16cf637b-2743-42f0-978a-aca9348ac125_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e447e319-6762-44e8-8bef-a54294d8f126',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Fugitiva Do Chefe Da Máfia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f0995688-3c0d-4661-999a-0c20eed36fac_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/45ea768c-3746-40e7-b860-3ce9b7b105fa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Sogra Tigresa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e5fde926-4946-42ea-95f1-e1747e04ac34_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/aa21b544-7613-4874-bbfc-7888dc274da7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mimada Pelo Meu Marido Bilionário Protetor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/91214b0c-d018-4895-88b1-07c02e6990f3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5c86d882-0bcb-4ae5-bfa3-680b75b513ca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Pai Imbatível',
    'Sinopse: Ele acabou se envolvendo em um encontro às cegas e acabou casando com uma bilionária. Ele vai no casamento de seu irmão e seu irmão arrogante e orgulhoso acabou humilhando, o que seu irmão não sabia é que ele casou com a CEO da empresa que trabalhava. A CEO querendo agradar o marido, manda entregar uma pequena fortuna como presente de casamento ao cunhado, mas quando sua secretária viu que o marido da CEO foi humilhado, cancelou o presente. Com raiva o cunhado começa uma briga com irmão,para se vingar da humilhação e a perda do emprego A CEO também começa a briga com seu irmão que quer ocupar seu lugar. Eles vão conseguir vencer toda essa disputa?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ac55007f-59dc-4ddb-9e0a-9c2d5558b213_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/df9eea88-9d33-437d-8689-61336b3672f0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Amor Secreto Era Meu Inimigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/112e319e-f790-494d-b563-0c6af0677dce_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0ec54f2a-f929-4908-b8f8-9ce6cfd73b73',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rainha Quebrada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81e419d1-b4c2-45d4-b1de-f88ec5592f07_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/997cdf5d-1ea3-4246-bf6f-1d9abe8030af',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Noiva Implacável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9184e2b3-8558-486b-8fa3-fdd237496c6c_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/519959f6-0798-4daf-8b12-c61406a45559',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Prometida ao Erro Rainha do Amor Verdadeiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b886a295-624c-4f6f-b4a3-38df4e4fc6bf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5a5fe2f8-ec4d-436e-a3a9-f520a3794672',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Guia para Destronar a Abelha Rainha do Ensino Médio',
    'Ela é rica, misteriosa e perigosamente subestimada. Mas quando a abelha rainha da escola a elege como seu novo alvo, essa aluna recém-chegada pode revelar segredos surpreendentes.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4f30b6e1-2758-49e4-bbd3-c5943c89db19_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/90dbc152-685b-4804-bd50-2b6c0f4e2452',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira perdida',
    'Quando criança, Robin foi sequestrada e, como resultado, perdeu a memória. Ela foi salva por Ron, um homem sem dinheiro, e criado como sua filha. No entanto, 13 anos depois, a mãe biológica de Robin, Anna, aparece, uma mulher implacável que não vai parar por nada para recuperá-la. Será que Robin dará as costas Ron para poder desfrutar de sua herança?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/93a770b7-474f-4da0-86e3-e32b6f51a28b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/78fb56de-4caf-42f1-881a-263fde2e9e7d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Conspiração Das Sombras',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/87935563-907e-4f69-a87f-c338bc9750f7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c5303e9d-6d25-487c-9d96-e6d6a6e0cd54',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Paixão Pelo Meu Senhor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4f421c16-1d79-41f8-8016-40870cc03fe5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c5354bb5-da97-4f69-904a-bd483bbd0c1c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Retorno Aos 18 Meu Reinado Sobre Mil Terras',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f085baa5-469a-4865-aacf-fd12a3a4dcd0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6d30e4a4-05c2-4e4c-8a29-fc85640179bf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Pão Vence O ouro Cai',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/440ac68a-689f-4840-90fb-cddb5ca44e21_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/68c8b747-407d-45ec-a9f8-07466bae1773',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segunda Chance Com Meu Amante da Máfia',
    'Sinopse: Nadia engravida de Renzo, mas o pai mafioso dele a força a separação para salvar a vida do filho Nunes...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5b967c91-5b7c-4ee0-91ba-38484d6eaa36_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ed14af2c-984a-47c3-b181-15c60096631c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sorte Divina Para Meu Pai',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8873f386-db97-4bbd-b3b1-2b549deeb817_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a08cbcca-ac84-4592-9b99-5757c17c0f74',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Falsa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b9f8a111-e7eb-4939-be73-d1392beeb01e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/43f8a565-0a64-4f9b-a603-023dbb844bf5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança Da Empregada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/019f18a4-9a1e-4664-8573-a8c5d69af36e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7cc1f40b-2456-49de-a2bf-f2c3285e0b34',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Afogamento De Paixão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/88d03814-023a-4529-b003-10ee84713c3e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9440087f-3058-4253-8e51-9dd08c54412f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Faxineira Milionária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9f1c395b-ae7c-49dd-8713-3331d69c8290_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ec520aca-9bf9-4911-bca8-675b21053a15',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Outra Na vida Dele Era Eu',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8768715a-dbc0-49e5-a3b9-7f48d0f20c9b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cea971aa-ccec-4ded-b089-ced5b36cf797',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa e o Pai Barão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/80c6be1b-f266-4acf-ad9a-d1e8d9b073ba_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/19c18b42-e947-44af-9848-8fbf3682878f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ex Esposa De Face Dupla',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ee6a5aae-c562-4d81-bd30-0f6b34c284d2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cd56865e-6e7d-48ca-8950-9de3c2f96543',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Seu Garoto Perdido Seu único Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eeea2914-e5c5-4031-842f-105bb0970b64_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/911385de-e9d9-4137-bb7b-69af533a4253',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Jovem Que Queria Ser Juiz Para Se vingar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e6f5ffd6-1ac6-4bc6-9ac9-c248addd7ed3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f32aadf1-586b-4c3e-bc9b-dc37fd3833c6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'LAÇOS DO DESTINO AMOR RESGATADO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b8f7388c-4639-4f87-9a8e-db84b7a5c471_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4947fc80-2f6e-4881-90fd-70bdfcb1d739',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Taxa De Cambio Do Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/875de037-9ed4-4681-bba4-543111fb7fb9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a0d4a17b-c645-4a22-a41e-ea4e19365bb8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Punho do Jovem Abala o Mundo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f8e0605d-07b9-4e7b-a742-942c551a42a7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5dd8f2e1-44da-4a5a-848e-cce611095b7d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Te Achei Minha Luz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b402a561-84d4-45db-88c1-7e02b3a3992a_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1448ffb9-be27-4830-8ef9-7bbf7d22318c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Doce mordida Do Rei Zumbi',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4b3aaafe-d751-49d1-a003-b2bc8165e3fe_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/5bb80613-a4fd-4c47-92f2-a7077f6dce0a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascida Para Reinar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fb218f71-6dd1-4c8b-9198-0a587bf199cf_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/ba5acb48-cf5e-4de2-a6a6-2733a8b771e7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'In Die Liebe Gefallen/​Rush Into Love',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ea8a0920-af75-430f-a05e-382da9faa4fb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/89cd7834-04e0-49a8-bb8f-0eb9a13658e1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Nascido Para Mestre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b7a8d0ea-84be-491b-83bb-5725c1af48a3_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/d9e04bfd-ce56-43f6-a7c4-4f810927c33a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Queimei 99 Cartas E Parti',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6207574f-4ca3-4d63-a1d2-8239c17e7472_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/adc93dce-7d3f-44e9-8409-6c490d145ec9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Alice Unchained',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/777227b7-77c5-43bd-a2aa-651ac5baa9ce_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/376f63ce-a65d-43ef-9085-a7e349217e96',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando o Amor Se Faz Presente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5ce62fe2-e337-4ff5-835e-4622749f0a27_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/15078089-b391-4bec-a1b6-ea037df59039',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Volta Ao Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/03c3d040-38dc-4373-9183-a2b8d506b0b7_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a5ea5347-d033-4200-9338-3580c9bacf6d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esposa Troféu Ela é a Própria Fortuna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/99fa25e8-4b23-4719-b460-36de1f68cad0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/26faee44-0598-4fed-acea-3e63e3690e23',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Segunda Chance Com Minha Amante Secreta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3920c353-7b5a-470b-b0cf-bfa58a0cf4f7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f6e5eea9-bde3-474b-9182-ccba15bc98f9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Querido Professor Você é O Pai Do Meu Bebe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2bf67a21-1013-445e-840d-17446b1c63b5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9f09e7a0-58fe-4d63-be54-e9ebcf90f078',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Sou Sua Tempestade Marido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/254f4c7c-64d8-4fdc-92c4-d9d45430cc6b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6b423439-6ebd-40d0-a888-9584f78fe435',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divorciada, Diretora De Volta',
    'Estava casada com ele há três anos. Para manter o casamento, desistiu da sua amada carreira de realizadora e concentrou-se em apoiar o marido. No entanto, o marido obrigou-a a ajoelhar-se e a pedir desculpa pela pessoa que amava. Frustrada, pediu o divórcio. Depois de recuperar a sua identidade como a misteriosa diretora internacional da medalha de ouro e filha única do Banco Mundial, chocou toda a indústria do entretenimento.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/35822f9e-d726-4129-b1a2-c59b1b3f98b7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/973782be-f631-4056-a13c-b9c094674533',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Acordei Casado Com a Minha Paixão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ef7843f0-dcd9-403c-ac3b-34b89ce29ff6_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/2337c729-4d60-4f1f-a631-dc69edceef0b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Retorno Com Tudo Minha Coroa Minha aliança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aacd9aac-c11b-4bd2-ab0b-2e9c157fff11_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a21253ae-641a-4562-a6e8-ae2a972c51cc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Te Amo Com O Coração Difícil De Tocar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9f779f10-3543-4ab5-a7ba-493ebab8d532_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1f145120-201e-49cb-be22-d2f7a7c9aff9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'OUVINDO O CORAÇÃO DA FILHA  VIRO MINHA VIDA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2494f708-fc8b-4e2e-8dc3-c49286b6f027_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d3e68c35-3d5e-4e8f-a86a-211a8931107b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Engravidada Pelo Pai do Professor do Meu Ex',
    'Sinopse: No primeiro dia de aula, Emily flagra o namorado a traindo. Naquela noite, ela tem um encontro casual com um estranho chamado Charles. No dia seguinte, os dois ficam chocados ao descobrir que Charles é o novo professor de Emily. Eles mantêm uma relação profissional de aluno e professor, mas há uma tensão inegável entre eles. Justamente quando Emily pensa que tudo vai voltar aos trilhos, ela descobre inesperadamente que está grávida...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7943c26f-8ef4-40af-b8bb-3327f5ac8014_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1456580b-5454-4c9e-909c-7ac26f6579fe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Moderno Do Conde Vampiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4aee37e5-a8c9-4e84-a769-adbc8248998c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a82e6a83-f122-4724-8871-803ec6977f88',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Anos Fugazes Memória Eterna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/26c0313c-a3b4-4a22-815e-af0cce9ccf02_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5bdff263-b231-4a98-93ca-eebbe389a6ac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Prisioneiro Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/40b2724c-a5bd-4671-beb4-1b65871525fe_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1c1f1e0b-8abf-4437-8007-bc30168920f9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Helena Transmingou Para Um romance',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ae9ab871-877a-486b-a989-e110e850c4d6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/51947237-6898-4ce7-9faa-92af9c430fa0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'MEU GATO BILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/11f08b1d-34d2-4816-97c0-b61fa47cdd8f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d4d712a5-5221-4f18-b0d8-319df648f26f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ceo Quer Meu Pequeno Rascal',
    'Sinopse: Anos depois de um caso de uma noite, ela retorna com um filho—o amor reacende, e segredos se desdobram..',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3df4c330-d127-4919-8a74-f379c02e0fae_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/abe1c279-593f-4f94-87cb-80c39a030266',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Verdade Sempre Vem Á Tona',
    'Sinopse: A especialista em ginecologia, Milena, casada com o marido infiel, Rafael, por dez anos, sofre abusos de sua sogra, Fernanda, devido à infertilidade. O Rafael trai a Milena com a jovem amante, Elisa, que fica grávida, e a Milena descobre a verdade acidentalmente no hospital. Enfrentando a traição do marido, os desafios da amante e a opressão da sogra, a Milena passa da paciência para a conscientização. Usando a lei, a opinião pública e sua competência profissional, ela dá uma resposta imbatível e, finalmente, expõe as más intenções da família Carvalho, recupera sua propriedade e dignidade, e começa uma nova vida com o paparazzo André, que sempre a amou secretamente',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec0f33d3-ef22-4a76-b80d-52b4ddcee47a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ee05061b-b3d3-4464-abea-400641f3b207',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Desejo De Natal Da Virgem',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3d43a9dd-69e1-427c-83a9-6f53dd1a300a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/06ae9f2e-a920-4d57-893d-53c0b870005f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Rainha Nunca Chora',
    'Sinopse:  Há sete anos, Nicole deixou a fortuna da família para trás por amor ao marido, Ethan. Ela achava que era a esposa e mãe mais feliz do mundo — até que Ethan e sua melhor amiga, Elaine, a colocaram na cadeia e tiraram sua filha dela. Agora que enxerga quem eles realmente são, Nicole decide recuperar seu posto de herdeira, trazer sua filha de volta e mostrar a todos o que é ser uma verdadeira  rainha.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fb30b9f0-1574-441d-92fa-8ceef7c20d78_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d19ad360-4c5c-41b6-bd07-e0aa6bd3c8dc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Ela Voltou Por Mim',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dcc9a6cd-ead3-4fa1-9544-381a775f87aa_pt.webp',
    ':https://iframe.mediadelivery.net/play/407552/811a67e5-f4cf-429f-8399-01d1bce72b8d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DE ENVENENADA A INIMIGA IMPLACÁVEL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e57c2cc0-3abf-4a6b-aa8c-7119787b4a58_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e65b654d-9285-4ad3-b7de-9e203ec92397',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chefão Nao Agora so Quero Estudar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/505a2c64-0874-47f7-8503-dc1bfbc846e6_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/7dca3542-3176-4c52-aafb-4a288c702ad9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Frequência De Amor a 30000 Pés',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2ebf60a9-91be-407d-867b-efc0b8dd35c4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/526a1725-3a6d-4d5e-846b-159cbc1b46ac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Foi Amor à Primeira Vista',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/28efa315-bc9d-4f77-9028-9cca70c27917_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/db52d4d5-4a86-48f7-8792-19206f715e9f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Fui Criada Para Isso',
    'SINOPSE: "What Was I Made For" é um curta-metragem de drama e romance sombrio, uma prequela da famosa série Under the Royal Rule . Esta história mostra o início distorcido de uma relação de amor e ódio entre duas pessoas muito diferentes: uma mulher orgulhosa de uma família nobre desestruturada e um homem poderoso que quer usá-la... até que ele começa a se apaixona',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/38d1de15-50eb-424a-8db6-9baa58094189_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3aca4c53-103d-48a7-8b57-3649c5bf62d0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divórcio No Dia Do Parto',
    'Scarlett, herdeira da fortuna dos Walton, escondeu sua identidade para se casar com Kane, um pobretão que ela sustentava. Manipulado pela maldosa Victoria, Kane obrigou Scarlett a ter um parto arriscado em casa mesmo com uma gravidez de risco.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/68946697-2acb-4aa4-aef5-f10d6f6aad55_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a3810dde-170d-4f13-9573-7b2957e323b9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DEPOIS DA GEADA A ÚLTIMA LUZ',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8b49fb1e-1cd1-47b9-b9ac-5d73e6e99b09_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0cb97905-0e54-4074-a52b-d51ba49349fb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Retorno Do Desaparecido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7c9d970a-3420-4d62-802d-08c917fb41d3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/01a8ea54-996f-42aa-9127-9a8fc4512f6b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Garota Do Interior VS Dono Do Crime',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f4b1263b-c5e6-4729-8a75-af62ac3889e8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/798a2a43-8c79-4fc0-8df4-f497ee225e6d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cativa Na Sua Gaiola',
    'Durante três anos, Adriana viveu um amor proibido com Nathan. Mas agora ela vai se casar com outro homem — e Nathan está à beira da loucura.Adriana parece ter uma vida perfeita com um emprego dos sonhos, uma melhor amiga como chefe e um namorado amoroso, Victor, que está prestes a retornar após três anos de relacionamento à distância. No entanto, revela-se que ela viveu um inferno durante esse período, envolvida em um caso secreto e proibido com Nathan Blaine, o novo presidente da empresa, que carrega um ódio profundo por ela devido a eventos passados envolvendo suas famílias. Nathan lembra Adriana que seu caso secreto está prestes a acabar, mas ele não parece disposto a deixá-la ir.Adriana conseguirá escapar do controle de Nathan e reatar seu relacionamento com Victor, ou o passado sombrio a alcançará?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/57a67b55-f261-40df-93d0-d7dc136668f5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/117242ac-0759-4ee2-9dc0-8d9d1eca3029',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Esposa Amada Ceo Retorna',
    'Ela já foi uma princesa amada que o amava até o âmago e insistiu em se casar com ele, independentemente das outras mulheres em seu coração ...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a0826013-8fca-43ac-803e-a1c8a9c48d0f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9441a768-1f3c-49e2-9385-32637324e543',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Madrasta Feia Vira Perfeita',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/33b04b0b-9f59-4dc3-94f8-e74eb0fe96bb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ce64b72d-4933-48b7-a999-9457ded2900e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeira Ou Amante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c397199d-06c2-4fa4-aed5-1937062779b0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/987df965-b401-4ec9-a862-980cae39434e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mãe De Sangue Falso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/88577094-fe8e-441d-bb98-992c312d9e95_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/76dfbdb6-c32e-4a63-966b-4d1e5b3986e4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Como Era Pra Ser',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e9bf22bf-9460-4521-91f4-98e587394d17_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f16b22f5-dd98-416a-b7ae-6e988e213510',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ame Me Outra Vez',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3ceea8b6-7b75-49c7-a14f-95a8405cc510_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d3755dc5-2d92-451e-a675-c94b99741cec',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Paga Com Dor',
    'Para salvar sua mãe, ela traiu seu amado e a CEO se envolveu novamente com seu antigo amante',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/133ef2ea-7b24-4cf0-90ca-6c99097d2ccc_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d03bb43c-fbf2-4936-9b71-a368b48916aa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Filho Perdido Voltou Como Duque',
    'Sequestrado ainda criança, Arthur retorna à sua terra natal anos depois como o poderoso e temido Duque da Mércia. Seu único objetivo é reencontrar a família que lhe foi tirada.Mas o que ele encontra é uma realidade brutal. Seus pais e sua irmã vivem na miséria, sofrendo humilhações diárias nas mãos de parentes e vizinhos cruéis.Mantendo sua identidade em segredo, Arthur jura vingança. Ele vai usar todo o seu poder para destruir, um por um, aqueles que ousaram maltratar sua família. ',
    'https://v-mps.crazymaplestudios.com/images/da7ef3b0-5236-11f0-860b-97fc2eb1c6d9.jpg',
    'https://iframe.mediadelivery.net/play/407552/cb57f619-af38-4683-b523-e5bb4ea96454',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno da Herdeira',
    '',
    'https://i.imgur.com/7WFtA0c.png',
    'https://iframe.mediadelivery.net/play/407552/3e6e18c0-aba4-4553-b3da-987f1505ce99',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Há Lar Para Os Corações Partidos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a727b903-a77e-48c5-8e2f-5e61c64080b3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2d20ed9c-970b-4bfe-a006-2ef5f53b9be3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida Do Alfa Raposa Prateada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8326d972-d017-4f72-a604-f07377bef5ed_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c1bde5c8-b9a1-4461-a384-7ee765ccaa59',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Armadilha Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a40cbcf0-955d-412e-96f5-570807fda47c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3da19101-7894-4d76-ac58-d954cd1867d3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Escuto Sua Voz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1cffbc37-0814-414d-8fe0-43d6fa711ede_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fc48738c-4091-446f-9e37-b2a626e7246d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Segredo Do Meu Domínio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e3d67bc5-c6f4-401b-b634-b393fd814f1c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/31908503-b39b-43c2-858d-324dc4d14a18',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Deixando Meu Marido Alfa Em Um Frio Arrependimento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b8171e52-1470-4f39-bdfb-1577918261c7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/53da9cbc-fb2a-43aa-84a6-827a520ce98d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Legado Perdido Do Chef Divino',
    'Diego Lima, tricampeão mundial de culinária, abandona a fama em busca do verdadeiro significado da arte culinária. Vagando sem rumo, é acolhido por Nina Alves e vira ajudante no Restaurante Casa do Bambu. Quando um plano maquiavélico ameaça o restaurante, Diego aceita um desafio culinário extremo para salvar o legado da família e honrar a generosidade de Nina, colocando sua vida e o destino do Casa do Bambu em jogo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9a9bcd71-e30e-4fef-b21d-c6f7e62359d0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9ce90e75-5bbb-4944-a7aa-b1bef16c4c6a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Adeus Vou Me Casar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c4888182-5851-42a2-b7d7-131ddd1ccd11_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8db7212a-efe5-4fd8-b866-8e457afc135e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Refém do Amor Renascido Da Dor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ae7be28e-6509-49fd-aaaf-fb980c99ab01_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/90d2c0fe-042c-49ee-932c-2a7edb1e0bd2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança da Esposa Desesperada',
    'Sinopse: Lucy deixou sua família para se casar com Daniel, mas ele se recusou a tratá-la quando pensou, por engano, que ela tinha leucemia, e ainda tirou o dinheiro que poderia salvar sua vida... Agora, Lucy decide se vingar.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eaaf89ee-a70a-4916-928a-5d1ce209ff3c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e92c61e6-88a6-487d-bf37-7f6424325995',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Professor Sou viciada Em Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/59a77abd-180d-4e8e-b71b-7d02ca2064ef_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2ef1a6f3-417a-4e5a-a090-15bc7fd1e08f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amarrada Pelo tio Do noivo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/085f7dbd-3e97-4acc-8b62-38242c5557ba_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5dbab9ce-41e2-4d4c-a5e4-2f9382553f52',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Sou a Mãe Dela Ajoelhe Se',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6304958a-92f2-49fc-9dbb-82c1402877de_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/4fd35c30-a005-43b1-89e4-3e1c18f7129d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Alma Gêmea Indesejada [DUBLADO]',
    'Sinopse: Uma garota humana vê seu companheiro destinado ser roubado por outra, supera inúmeros obstáculos para resgatar seu companheiro destinado e descobrir sua herança de lobisomem...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d797863a-bd78-419c-bdd8-4708589a7ff5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b513d506-ac97-4449-b5e0-44014b5bce30',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CEO, A Senhora Tem Um Filho Secreto',
    'Sinopse: Seis anos atrás, ela se divorciou do marido CEO sem que ele soubesse que ela estava grávida. Agora, ela vive sozinha com seu filho. Quando se encontram novamente durante um encontro às cegas, será que eles podem esclarecer mal-entendidos e reconciliar seu relacionamento desfeito?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/251c2308-eb16-4908-916b-c704bd734322_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/00d65cae-5eb7-4262-8ad3-764edecf2e0a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Marido Inesperado Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/97a8143c-9bee-4583-90de-3ecc917412ee_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a5cff01d-cc7b-46c4-9128-9cc5d6d8a8bc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Aprisionado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3849973e-c0e2-4f6d-95aa-0b161e24d8b9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e9a2dfd1-ff7d-4e98-bd18-60a52c0c065b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Gênia E O Bad Boy',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c900e074-9498-40e3-bef3-0821735c9345_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ac2c89eb-d5f3-486a-8287-9f833120499c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sr Dragão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/38f88a02-c31b-4a58-bc3d-a026669811dc_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/92b468ed-17fa-4d5b-a156-4f2c9f7ae51a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Amor De Sempre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c88a55ed-f000-44bf-af4b-f33a657955d5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/be166e3e-4823-412d-ba54-606bcd3adbaf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Marido Surpresa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cca46de5-9f89-41e5-a153-b26c2af9b176_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/576ec894-64f4-4e08-abed-8bf63cc32825',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Abraça Me Na Escuridão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/95aad2c7-582c-41ef-838d-672c396043f0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e6b4a277-ede2-4110-9bc4-596d9cf45154',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Quase Sempre Triste',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d0c98e61-35fe-40a6-916a-114b48d9c080_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ef2e0595-5f54-4d4d-a95d-5b6032576a34',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chantagem De Um Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f6d5123d-7cdc-42fe-8b63-edf4d077f008_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4ae34d08-dc42-4b81-9910-b9e8127dba42',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Noiva do Poder',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f588cb4d-6117-4026-8d59-23a159c4292a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/de4565da-550e-47e9-b25d-384ecc6a7058',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esperma Errado Amor Certo',
    'Dayse descobre que já está grávida após uma troca de espermas com Alex, Bilionário do tráfico de armas. Ela se muda para sua casa como noiva e futura mãe de seu filho - mas os dois querem mais do que apenas isso...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bf790564-04aa-4b0f-93da-2a9b01db95c7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e766c324-02aa-40fc-b227-9776991bee49',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Ex Mágico Entre Presas e Garras',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/390a4964-7629-49b0-9a06-be6b6ade7606_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8b159f23-4fe2-42b5-9586-adc02f8aae1d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor a Margem',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/de301a5a-7304-4a95-bcdd-e4e2f68619ca_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/03d177b9-3245-4d6a-b903-24ac496b3d36',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Entre A Filha e a Guerra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f871275a-7f5e-4b4c-a0d7-6c135207928b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/377b98c7-a194-4f50-ab0d-bed18a74a02e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ele Veio Por Mim',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c2e4c957-8d41-4c8b-a080-540b78fd98d2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7fd35a44-ddd5-417c-a4eb-7c78125f1b8a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Flor Caída Já Tem Dono',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fe50de61-5d19-464b-b298-96fd5311790b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e80ae442-9eff-477a-b6e9-b3cfd2fc563f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Flores De Sangue Véu De Mentira',
    'Numa vila isolada chamada Vila Santa Florência, dizia-se que o Espírito escolhia, a cada ano, uma jovem para ser sua Noiva da Florência, em troca de proteção e riqueza. Criada na vila, Natália Cardoso, agora formada pela academia de polícia, nunca esqueceu o que aconteceu com sua irmã Patrícia, levada à força no último ritual e desaparecida desde então. Para encontrá-la, Natália se ofereceu como oferenda e entrou na Gruta de Florência. Mas o que encontrou lá dentro não era fé — era algo muito mais sombrio. A cada passo, mergulhava não só na escuridão... mas na verdade.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/01b3d3ab-0fef-478d-91d6-cf5d6ce9360b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/901aefd6-ec39-4796-ad13-6a9ee3474bc4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sem Você Vida Nota dez',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3057134e-770e-4331-b1a5-5e385319df0d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fef5ef2c-e5af-4cc4-baf9-fbc503db36ce',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Fera Na Coleira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/295d1958-a0b5-4ab7-9b11-2ac4e2df9ecd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/aadcc4b7-1505-4bf9-9702-ea5478a8a5cf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Vingança Da Esposa Congelada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d85ed18b-1198-4e62-be94-46a7e6a852fa_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a271a45b-d7c3-4f73-a9db-b08ec7f060d9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'BENÇÃO DE CINCO MÃE FORTE PAI DESCONHECIDO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4166ff29-5b02-4542-9c95-fff9ea89f232_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c098edfa-5e68-4c20-9d81-ab8061263abe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A doçura Amarga De Vela Divorciada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2af49cdd-7492-47cf-8782-2c1ecc72ec69_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/191bd5b7-cfbf-4676-926b-36aea68e449c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Volta Após Volta, Volto Pra Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e6ba4ad9-cc2a-4536-957b-1d149b34eb0b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/30c0baf8-7738-4723-9829-2871d9786b4b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O CORAÇÃO CONGELADO PELA MÁGOA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1aed6639-6559-4077-b5c7-4ff9c4bf291a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/63c32c64-2186-41b6-8b58-1c9b737566d3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Deslumbrante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6aca99a7-3eb9-4a5a-b56c-76683813fe24_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/65dac8ef-0c51-4c21-bdc9-56658e91619a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Que Ele Deixou Desaparecer',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4312c9b3-2ef0-41d8-95ff-d53fb6e9d97b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b4b8c637-b856-44c1-98a3-2dc91fe29db2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destino Selado Pacto Com O Rei Da Mafia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0a2dd9ee-35e5-410b-a97b-899db68afca2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e6ab7625-fa3f-4013-9a1a-c147d117268d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Prisioneira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3caccff7-0591-4e74-9d91-079a825401fd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/097109c7-ad84-4d9c-9989-8792bb2cfcb0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Amante Secreto é Filho Da Minha Melhor Amiga',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/895ad0c9-860d-4797-84ac-8aa7494d76ec_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5536a433-16eb-47ae-b319-6b419f683bc3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Curadora De Desaforos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3f24b8bd-f04c-41da-a8be-eeea2fbbfba8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1ac6fb62-0471-4d32-a77b-c5c56cfaa2b3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'De Agora Em Diante Flores Para Mim',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eed95d8d-104e-4129-b1df-96a95729219e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f4220f7b-5fe1-4c71-a8c8-8baa06e83485',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Coelha Que é Boa Em Camuflagem',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/79f8e356-7dec-4297-bd37-ea59ecfd9db5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/34594662-1796-476f-a28d-63d6d7f565f7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando a Promessa Se Rasga',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/45d5c1f0-6210-4bed-a5d1-42f93be7a563_pt.png',
    'https://iframe.mediadelivery.net/play/407552/70fa4980-6485-4e9a-87b0-f9514b9a6ae6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fingindo Ser Pobre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8fe87ccf-168a-4a99-9eb7-f6e856e194c6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b7567fab-5b8b-4945-815e-d646ba64e95b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amar Uma Vilã',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/43dc215e-695a-4802-a045-9121bd809318_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/d55ca2d9-ba3f-4368-a240-ee40fa70d957',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Fuja do CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4789eadb-7f84-406a-9ce9-ed21b893c1ff_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a85e0f1a-ea76-46ce-871b-8ac2dde66ecb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vendida Como Reprodutora Como Rei Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/06c070c4-3257-4a2b-ae7a-d512e9c7bfd1_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/0fbd3bb4-4250-4375-aff6-84c4151239cc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Corda Que Mudou O Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/807350dc-02ca-4dd5-bd37-37c81a76ebb9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b90885f0-53c0-45db-9766-1f7ceaa4f2a4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Proibido Em Três Vidas',
    'A Raposa de Nove Caudas Alice Costa dedicou sua alma ao mestre Carlos Silva que a criou... mas ele, aliado a uma mulher manipuladora, fez ela sofrer por séculos. Com o coração em pedaços, ela se jogou nos braços do Deus do Massacre Gabriel Silva - que agora a trata como um tesouro, mimando-a sem limites!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/34d9c11e-25b2-4f53-a124-511afa8c0991_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/77a5d885-a925-4b99-8674-98cddd70c1f9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'NUNCA MAIS TE ESPEREI',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/24f19ec4-e4bd-4cd5-a368-a9a0b56a6283_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3f6006c4-45b8-4ac9-922f-fcffbc85e8d0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Predestinada Do Rei Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a3abf54b-6836-4bb1-9b06-68112a2f3e6f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/abfb8a86-e6cf-4e9d-8d7e-349320d449ea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mentes Perversas',
    'Sinopse: Arrastada para um mundo sombrio de homens perigosos e caos, Eliana se vê forçada a suportar coisas que ninguém deveria...Mas e se, no fundo, ela começar a gostar?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cfb3a36d-6a81-46a3-afcc-1ed801154738_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9b7a259f-0ed8-4757-99c5-0184091d9eac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Tons De Outono Esmeralda',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/65211a49-b2b6-4fcb-bdf6-75bce43a0293_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dbb886cb-04ae-4bd2-bf5c-731e9f6deda5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rei Da Prisão Disfarçado',
    'Após herdar uma prisão privada corrupta, o ex-soldado Troy Poe decide se infiltrar como recluso para expor os responsáveis. Mas, quando o chefe dos guardas, um homem em que ele confiava, se revela o líder de uma rede criminosa, Troy precisa encontrar uma maneira de convencer as autoridades de que não é um prisioneiro, mas sim o dono da prisão… ou, então, fugir. No meio disso, ele deve ainda proteger aqueles que estão em perigo, incluindo um prisioneiro idoso e fraco, cuja pena foi falsamente aumentada, e uma bela médica que foi apanhada no meio do fogo cruzado. Será que Troy vai conseguir escapar? Ou vai se tornar apenas numa vítima mais da sua própria prisão?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/437a563f-0ff4-4c40-94be-13d757862a05_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bccf3789-87d1-4e86-9172-f60944ce985e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ex Implora Outro Me Conquista/Depois Do Divorcio Meu Ex Marido Se Apaixonou Por Mim',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c207f506-3e2b-4502-b6d2-fda6b2dc7402_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bf85b1f2-bcff-416a-b319-e83c4adef00c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destinada a Encontrar Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/24546c8a-efc8-4acb-814b-81f88ceef273_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8c87df9a-f01a-4c94-8768-acd74e360e2f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quando O Amor Se Foi',
    'Sinopse: Com foco em Teresa, uma jovem que perde tudo com a falência da família na infância e é acolhida por uma nova família, vivendo ao lado dos irmãos Gláucio e Vinícius. A história acompanha a vida de Teresa e os desafios que enfrenta, especialmente com a chegada de pessoas que a trazem à memória da família Passos e a remetem para o passado.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6e6beaab-c625-419a-9b79-12ad9971c316_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5e4f19fd-8220-44f9-b050-e8e8f4857d03',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Acidental Com Meu CEO Pobre',
    'Sinopse: Lila precisa de dinheiro para salvar um orfanato, então ela se casa às pressas com William, pensando que ele é apenas um cara pobre. Mas depois de se apaixonar por ele, ela descobre que ele é na verdade o CEO mais rico da cidade... o problema é que ela odeia mentirosos mais do que qualquer outra pessoa.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/93c217be-db43-40c8-a0d6-23ec5d6d5c9e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e6d9add1-0f3d-4155-adb3-332e2a5450d6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Papai Da Implacável Da Máfia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/383acf63-3689-4d20-9d00-50f109c3f9ff_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f6b34a0d-728d-4173-b3d7-e6489fddfeb5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Yes Chef',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bafa13bd-8aaf-4d01-b38f-efa09966d8df_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d7b39cc0-c6e0-4b1a-908a-aefecadc6049',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Missão: Amar O Inimigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c959f599-2fd7-4bf5-9248-3cd897413673_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/430cd947-db8e-4230-96fd-af4ed5f05339',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DA QUEDA NASCE A ASCENSÃO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a77423b7-d249-4b82-9d5e-0ecd74a484bd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2fd6dcfb-2f03-4e9f-9a95-d8c34f58f2dd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Bilionário Inato o Amor Rejuvenesce',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/51d663d5-284f-4e45-b5cc-25d93cfeaae2_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f58cec5d-726f-4b1b-895d-93f2718afffa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Décima Chance Para o Adeus',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/95b16632-9030-4a56-bf0b-2ad513fc503c_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/da618a90-d370-495c-9740-b6afc2e9921f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Você é Tudo Que Eu Quero',
    'Roseli, uma violinista corajosa salva Damien dos bullying do Eliseu deixando-lhe uma pulseira preciosa como recordação. 10 anos depois o destino reúne-os através de um casamento contratual orquestrado pelo avô de Damien. Apesar dos conflitos e mal entendimentos',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e9a1d106-1e8b-43a8-96d1-08cf9a772a1a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5a6e6b6a-12dd-4bb9-b9cc-60c9de6ec553',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Que Eu Perdi',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e94d0444-000c-4374-8798-f4ecaff9305a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8e730713-2b08-4260-8748-ee4d550f2982',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Protetor Meu Pecado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2f3ce808-20f8-4168-9af1-02405c78fdae_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/55460bd7-1ef5-4ca7-93f7-2c0e6f3dc50d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O CEO Que Comprou Meu Destino',
    'Para pagar a cirurgia da mãe, Nina, uma estudante universitária, vende sua primeira noite por uma quantia alta a um estranho chamado Ian. Mas o destino prega uma peça cruel: pouco depois, sua mãe piora e precisa urgentemente de um transplante de rim artificial. Desesperada, ela aceita a ajuda de Evan, um pretendente, que a leva até seu tio — e para o choque de Nina, o tio é ninguém menos que Ian, o homem com quem ela passou aquela noite inesquecível...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/569d04d3-bdbf-42d1-899f-cca4bbb8948f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/be4d086e-8070-4bac-8fc4-1a1d3b8f18a6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Ouvinte Inevitável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/87b6dc09-0777-4c8d-a0b3-cb0688aa889b_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/ba11b74a-8a10-414b-8d06-adda2110c0a4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa Curandeira Do Campo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ecc54695-8161-4529-bf86-5f3632eabc88_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/20ccf87f-b27f-4c55-bbb1-248563262063',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Vingança Secreta Do Irmão Gêmeo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/afc22d39-1982-49b2-a73d-3156e3b5c1a2_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/42d88e95-266d-4660-a4e9-54e13be402cf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sete Noite Com Meu Ex',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4bc6f609-9fdf-49d6-aa9e-006e1ccb1caf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/55110a9a-3957-4573-b7dd-dee9e3c277e7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Recompensa De Uma Boa Ação',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/18632c03-9b07-49e1-852d-3c6302b20ae7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bac3097f-2b8f-4cc9-b7e5-bfc49c0c9b9f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Trancado Novo Começo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a328b0a8-874c-463e-8469-9995d6d201ca_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/476ae288-ea1d-438b-be33-3a8564503b5b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Jogo Da Criada Astuta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3141acc0-f20d-4ddc-9576-cd397e0d58e4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b8ab3230-15c0-468c-88e7-1502159f57fe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Largado O Astro Das Corrida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cf71112c-0b46-47e2-8f31-9af3fab0d362_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5a4c7f00-b65f-4100-bf5c-11854df6c925',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando O mundo Era Do Passado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ecddfa2c-e961-44c8-a711-39c027936a90_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/847cceaf-a786-4c3e-a51f-4ecad72c7031',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Sempre Estive Com Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5d7182f0-e2cc-4fde-a83e-ea5bfc69f7e2_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/886e5026-88f5-498d-9945-5f1733259a11',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Anjo No Espelho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7a049839-4bc3-45ce-bed0-3bee672fd7ec_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ce01f0ad-9145-4fa7-be9c-38bbc7a2a4c5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Amor profundo Como o Oceano',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/76a1588f-62d7-4234-a696-7e06a2f826c5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ec52c3eb-65a3-4204-b892-b5f8a04e691e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O CEO é Igual',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4b40d14a-b01c-402d-8ea6-613a012c5e39_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/daf9a50f-565b-4871-8da9-0ae20adfd450',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeira Sheeran Retorna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/18eb9e99-c62e-4b2d-a1f6-cd88bddf91c8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fd62928d-ba1b-4abc-97e3-71e91028a6bb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ninguém Como O Que Foi',
    'ATENÇÃO: Esse Drama é De Apenas  26 mim, não tem continuação',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b7bdeeef-a838-4915-ae05-24adc77179e6_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/d15420f8-3fd7-4c0a-903c-9cd7544437bd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Noiva Trocada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/84060e80-bae2-48ef-8be0-1c54e830e35c_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/31122aab-aaac-4a5b-9585-c019f2866c00',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Entregador Que Virou Um Deus',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ee0c2480-3598-4e78-bcac-fa0761cf5136_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f5e14f23-4dbe-4ee7-9aa7-13149f3cf066',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor é Uma Doce Tortura',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/30138880-c777-4900-9ce6-57cf5a5900f1_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/635e082e-af6a-4858-9edf-40c4f079c41f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Imparável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/65779e48-cff6-4163-98df-9b14627de8b2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/de7b014e-4045-480e-abdc-aedfd4e510a4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destino Levado Pelo Vento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81e57892-8bf7-48a7-99af-8f0e0788e036_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e0e1adac-10ca-46f6-adff-238f2786b3ba',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vingança No Banquete imperial',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1ab0369f-e636-4f9f-b202-373ff4f1a92f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b5de6826-9806-4ab3-b4ec-3e5b6348d1c2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Renascida para o Amo a vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bb7fdeff-f45f-4797-903d-5d7c05abef61_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a5afee11-9143-4573-ae2a-265c02b3da4b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Jornada Do Rei Dragão Por Sua Esposa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f53918c0-dda1-48be-8fc7-f65196d2a8b0_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b069df89-a43d-444d-8305-1d1f1623c2b3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Noiva Reserva Do Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/921c0609-7984-43ff-901b-77fbd62b1aba_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/73c922f6-2ebd-4afa-ae79-bde5e89ed9e2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sete Dias Para Esquecer Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/69362391-2cf6-42bd-9159-b8bb680083d1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ce4698b8-273e-4b44-88c1-465a283a58b7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O VERDADEIRO AMOR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/83ab863a-22c1-468c-92fd-c442ac181a98_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7838dc42-b7d5-4d65-b4ea-1c5d0f75f22d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Por Vingança Doce Amor',
    'Sinopse: A irmã de Cate, Rebecca, não só roubou seu namorado, Ethan, como também a fez perder sua herança. Impulsionada pelo desejo de vingança, uma Cate embriagada decide impulsivamente seduzir o belo tio de Ethan, Shaun, que mais tarde foi seduzido por Cate e se apaixonou loucamente, apesar de seu jeito frio. No entanto, quando ambos perceberam que Shaun estava sendo confundido com o tio de Ethan, ele percebeu que ela se aproximou dele apenas para se vingar de Ethan…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aabe477c-2c3e-4527-916d-bf804746dbcf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/184eb413-2fac-408b-8370-31d7dd780c2f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Criando O Filho Bastardo Do Meu Marido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9be36d34-f234-4085-8eec-e93355856b83_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c019e6f5-0b10-46e5-a075-c734a35e76d4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Em Ruínas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e5c9c934-30b6-44e5-8688-8e352db6cf2c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/edf23b7c-9e71-45e3-896f-c99e086bb1e0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apressadamente Para O Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f42eb074-0bd2-4a03-8146-5dabdc45bf13_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8a2edca8-de0e-4b9f-af55-30ef74ac6962',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Diga Para Eu Não Te Amar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dab7d887-c164-4eb5-83ff-6b6e67572966_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/be9c361c-a714-4394-90c6-a7ce42338408',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Os Herdeiros Do CEO: A Fuga Da Esposa',
    'Depois de uma noite de paixão, Evelyn Tomas dá à luz sêxtuplos. Seis anos depois, um rapaz encantador detém o bilionário Ethan Huntington e entrega-lhe um teste de paternidade. Ele encurrala-a e obriga-a a dar-lhe o bebé.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8fcbcff5-8bf2-4750-9854-8d4bd8acfc6f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e0bdee70-7f6b-44ea-a4c7-b57b6a56e343',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Falso Casamento Dois Chefes',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/73fcfb66-c3f5-41b2-969c-af63dfa9618b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8d59e636-82c6-4d40-8f47-4c66782e9b3d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Atração Fatal A Princesa Híbrida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9a752e59-76a3-49ea-baf9-230cac81345a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cb1b52ad-edef-4103-9235-5e23be337a0d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rainha Não Amante',
    'Sinopse: A mulher mais rica do mundo, Sarah, volta aos Estados Unidos para participar da cerimônia de casamento de seu único filho, Teddy. Mas ela é confundida pela noiva do Teddy, Lucinda, com a amante dele, e Lucinda a agride, insulta e tira fotos indecentes dela. Até que o Teddy chega e grita furioso, a Sarah é minha mãe!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/797be9fe-f9b7-4df9-8d26-7913329862bf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bb7d0aed-6c24-48f2-a1e8-71f9e2996b6a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Filho do Sangue Dourado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c86a8bc6-df74-4f82-8527-ce261d85640f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/82f86036-28f2-47e3-a7ea-62427fa98bbd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fugir Do Meu Marido Destinado',
    'Depois de flagrar a traição do ex cafajeste, Eve faz o impensável: pega um garoto de programa na rua e... casa com ele na hora! O que ela não imaginava é que esse desconhecido era, na verdade... seu verdadeiro noivo!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ba930ff4-bfb1-4d1d-8095-364be105629a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/64cb7b89-3eb8-48ce-a183-406d0eca12e3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Encantadora é a Herdeira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8a3cd084-eeb7-470a-aa8e-f03cac1f8003_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a14b312b-243d-4f19-ac3f-9f9e3582de7a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Até Que A Verdade Nos Separe',
    'O casamento relâmpago de um CEO e uma barista se transforma em um caos à medida que agendas ocultas, um ex ciumento e um segredo de família chocante são revelados. Será que seus corações sobreviverão às mentiras - ou se chocarão com mais força do que seus apressados “sim”? Drama, calor e humor garantidos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a8e0d53a-7d6f-49f6-b7fe-dada99226ab8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/314a7197-39c9-4938-88ee-6e31bf7d1bd4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Armadilha Do Tutor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/42d8fee2-238e-4e01-9f50-bae3f1e9a80e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/edb90897-5ad6-4f03-8bab-15d7d0687af2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não é Gaiola Dela',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6283a69c-ed69-4312-a8d4-b09e7311a83e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8b7df1fd-7c65-42e4-b22b-b2179b977490',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ele Veio até mim',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/50dd5811-760f-4454-8446-e2425a33615e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cfba435c-fd5c-4747-9c85-ec77b0913897',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Diga Sim ao Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6135b1c2-5b79-494a-94f7-33e4d6a556ff_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/aa529331-d435-4b23-9792-4b22375ec9f4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Senhor Das Trevas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b15ec075-cc22-48f1-9768-e4747d68ee9c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c399bcdf-5790-4afc-b743-e96e3b4f7856',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Seu Amor Foi Um Sombra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8f1247a1-daa6-4197-b9ac-0176972e05ed_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0ca968cb-229b-4c1d-9594-7a81c24cafd1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amando O Melhor Amigo Do Meu Irmão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/275550f9-b1d9-4623-babd-7371b2574c19_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6f28078d-cf24-4ec9-831e-8cf61c3a62b3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Alfa Implacável Sem Saida',
    'Uma mulher com um coração falhando se torna o centro de um perigoso quadrilátero amoroso, dividida entre seu amor de infância amnésico, um bilionário frio que esconde seus verdadeiros sentimentos, um herdeiro playboy implacável e um senhor do crime obsessivo com um coração transplantado, enquanto ela navega por um labirinto de contratos secretos, identidades falsas e paixões distorcidas em um jogo de amor e sobrevivência de alto risco.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ac7bc4eb-5ee0-4202-a43d-8fc2ba866186_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b06ab62b-7cb5-4d2f-af24-c89ec33940f2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Corações Conectados',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ffd7ff82-9ccb-4576-9709-1535d493eacd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cfb3ee7e-85a2-40fe-affd-bf8f0994ca27',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quando a Princesa Decide Viver Para Si Mesma',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/93c2ad00-b307-4bf2-bff9-7bb652bf5ce1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2a17483e-2b06-450a-8787-3d13f8efdaf8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Magnata Desmascarando: O Genro Dominante',
    'Após se conciliar com o seu pai biológico, Tiago Souza logo se torna presidente do grupo. Porém quando vai ao rio pra celebrar o aniversário do sogro, nem mesmo tem dinheiro a se sentar à mesa. Sua esposa sofre desprezo o rival amoroso tenta usurpar o seu lugar, e a casa ancestral de sua família é demolida a força por um incorporador. No final Tiago revela sua verdadeira identidade e cobra pesado aos vilões',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e43a6384-9312-4abe-8b3c-4545927eb18f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fafbda78-4771-4e88-be77-119871028b7c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Ex Mágico Entre Presas e Garras',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6ee202ce-6263-4653-bb12-bdc64f73b836_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/610411b6-398d-44a9-a2d0-75af852c3b84',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Nosso Último Desejo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/03730a2f-d8bf-478d-beff-a11f94e2fbcf_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b566b706-bd69-406b-99be-40fa48173350',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Treinando Seu Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/abea1c6c-2232-4eb6-bca1-fbd1de5f30ef_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/91b9905e-4e3d-482c-90a8-81c8536e18ca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Imortal Caída: Arrependimento Do Imperador',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/57871af6-4243-4004-b15d-1c89686224eb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bb10152c-f12c-47c5-b0cc-c52b931b932d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O DIVÓRCIO É O MEU MELHOR PRESENTE DE NATAL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f42726ef-6661-4fe2-b201-65d37206addc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fd17652b-c0a0-4157-9849-9d33d845e595',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mamãe Somos Quadrigêmeos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9c71c982-4e54-4e4d-accd-c76f8fe24f8e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/048bd89c-7234-460d-955b-46d1eb2be3ce',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Armadilha Perfeita',
    'Sinopse: Lily Brown, após o parto, descobre a traição do marido David, com sua melhor amiga, Emilly Wilson e o fato do material genético de sua Fertilização in Vitro ser do casal de traidores. Ele fez isso, a fim de evitar que sua amante sofresse os danos da gravidez e garantir herdar a fortuna de Lily Brown, através da criança. Lily silenciosamente suportou tudo, criou a filha de seus inimigos e planejou sua vingança com frieza e precisão. Após 7 anos, ela revelou a verdade publicamente e fez com que David e Emilly pagassem por suas ações.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b260da72-b123-4f14-95aa-b5b7b04d6d66_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c00f1c93-037e-4dec-9829-562a1e29b453',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chefe Em Onda',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b5848425-5822-4c71-92b1-627b479a24f1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5d082e80-8a7b-4805-8d69-7447904ba08a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O HERDEIRO PERDIDO UMA VINGANÇA NATALÍCIA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/02d54590-bfab-46a7-857d-abd767f9897c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/87cd446c-de08-4fed-b7e3-9e003f6e2ac3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sangue Do Meu Sangue',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7844fd19-b46e-498e-a8b5-56b7f76fc694_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dd8a90e0-9c04-4d86-8c6e-d5ef02268aee',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Herdeira Impedida De Voltar Para Casa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d5d174a1-09ff-4f63-9149-3ddda4ebb02e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6f6ddbb9-3ed5-497d-8652-663f849d9526',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quando a Rosa Murchou Em Agosto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/905b7098-1608-4941-aed2-658b84112080_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/409c64a2-96d2-456d-ab61-aed6be419f9b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ELA LARGOU O MARIDO BILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a8fb7e1d-eadc-4012-b78e-c7757a2ab9e1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b4b5c3b9-fdd4-44f0-ab09-fab0b9470302',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascida Mãe Poderosa e Imbatível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/df70f72a-5c09-4e9a-bae2-17850f66d5df_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5fa4d974-78fb-437d-8a98-8551e7a1a6bc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Largando o Astro Das Corridas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f10ea274-d714-4897-bbda-a7a22558ae18_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fc7a5a6d-a232-4c30-bc29-d7e5da947c59',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Doces e Desforra/ Reencarnei Como Um Bebê  Fiz Meu Pai Virar Magnata',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a087397c-f6cc-4d38-97c0-e7c7a3d9a6f9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/985d94d4-90bf-45b2-8c30-74386c1dc69b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Voltei Mas O Amor Nunca Foi Embora',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b7c8fe32-1a44-498d-97ca-1896aeaa9667_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/24b934b3-9bcc-4b1b-b1c4-819db032cf80',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MÃE DIVORCIADA ACABA COM TODOS',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0bc136b1-6414-4b2e-afa6-2edb7bdbcc9e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d11dea22-7a1e-4634-acc8-f054bf05cd96',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Aterrissando no Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5a503f28-8da9-4961-9cb2-10c041a41ba2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1f4be129-b32e-4dfa-9ae4-01b0acf83288',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Cunhado Meu Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fd8f4ba6-fc9d-46aa-b0a1-e61e66373eff_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/14390126-653e-4e42-bd49-f5052bd1aeea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Vilã Que Virou Queridinha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0259e4ac-9be6-449d-8553-5dfa2ca0cfaf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/046b8671-be22-4bb2-9b5f-3dc59b43ce0f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destina Ao Meu Bilionário Alfa Sem Teto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/54384f09-c3c9-4c40-8519-c7ad45a9339d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7b60fe58-ce79-48db-844b-76a87fabf9d1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sob O Mesmo Céu Longe De Você',
    'Felipe Gomes ceou do grupo Gomes vê uma família virar alvo do de perseguição, após assumir a presidência da Associação Comercial, atraindo inimigos perigosos. Para proteger os filhos Ana sua esposa grávida se sacrifica numa fuga desesperada e salta de um precipício. Após a queda ela é resgatada por um médico rural mas acordada desfigurada e sem memória. 20 anos depois Lisa a filha que ela trouxe ao mundo no anonimato no campo, conquistou uma vaga na seleção de design do poderoso grupo Gomes. Enquanto isso Matheus o filho que anda deixou pra trás cresceu alimentando por falsas esperança de reencontrá-la e se tornou um homem frio e amargo. Num concurso marcado por intrigas por causa de um mal entendido armado por uma rival Matheus humilha lisa sem imaginar que ela é quem ela é.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/66c03a2a-4633-48fc-815c-df7552fc1d77_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f428f7d6-317b-4a13-9306-fe22d7586eaa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Pluma De Junco Voa Como Neve Cobrindo O Barco Que Retorna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/881772b9-dcc8-4afd-9b1c-3ccc560697c9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1b8058cc-e719-48f6-b9ee-f6e75f436f60',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Do Portão Ao Coração: Meu Papai é Um Abre Olhos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b3d1f154-cd37-43c5-a771-cc63d51ba7a1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7f003452-c0a9-4cc9-b5a1-2418ab6739ac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vida Nova Com a Minha Filha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/83f1ac0b-92cd-4a5e-b60e-a00659c22cae_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/32b74749-0474-4f84-9b6a-1cd5eb742c19',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Marido Meu Chefe Secreto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6890aa19-e326-40bb-83ae-0e59f2ca4d0b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d14cf3a0-742f-449f-920e-da2dca342908',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Comandando o  Palácio e Os Filhos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4d7258f8-86c4-4afd-965c-64d7ae4756a6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c0fece9b-2c7c-445d-ab6f-875e88ad4c35',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MÃE DE ALUGUEL, AMOR REAL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7ac5a804-f30a-4fba-8191-9ca3584cbd24_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6ce8483b-41cf-494d-80ea-3c66a6776748',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Protegendo Seu Corpo Reivindicando o Seu Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/42798aab-c74c-43c6-a61d-ebadf77ee3f0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/de44ffb3-c8b2-4e76-a9e6-1926e8631cf8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Você é Tudo O que Eu Quero',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b2a42945-3933-4c5d-9147-ccf18fbd1b9d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fef9a5b6-9b8a-4f02-9961-4294279e84df',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rejeitando Meu companheiro Lycan',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/67407104-c137-43d8-932c-4d5a6e748b72_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b7476592-a306-4089-8c3a-f4000c091ecf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Silencioso Perdurável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/56e4732f-d7bf-4326-9f88-1dd11641de0e_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6af36c43-372b-457c-b9bb-a66fd21a082f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amar Você De Novo. Meu Irmao Adotivo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6a273190-7a4d-457f-a79d-7ef37f769d09_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/65338bdc-f153-4b31-af12-1255fa2970f1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dança Das Lágrimas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b137b410-7240-4fe8-9882-68bd86835b08_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c1b5ff37-1bf3-4d02-b269-0f2c900fa31d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Ele Sempre Me Encontra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e9d3e9d9-1ad7-4bc6-9bab-c6f719a0af18_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/076ffb4b-74b8-47db-bf4d-b6d49d1e2e5f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Te Amo Mais Do Que A Vida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3c2f2b4a-40be-4c5c-9def-576356938c17_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/75e27fbb-4546-46b0-acee-d006c0f5969a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Grande Vingança Da Liza',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/154b75c3-90b3-46fc-babf-f6d6d15a3c8d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/914d2aa3-d65d-497c-9f79-37adeaff3387',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Volta Ao Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3c940c0a-5b71-4a0b-a755-006c099bd93d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/aa3d5f16-1a9c-4b4d-9d43-2e582c6aa8fd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Drama Do Banquete  De  Noivado',
    'Kim Bo-young retornou do exterior para o casamento de seu filho Shin Jun-seok. Devido à sua juventude e beleza, foi confundida pela futura nora, Park Min-sook, com uma "amante", apesar de nunca tê-la encontrado antes. Ela sofreu agressões e insultos repetidos da filha de celebridade e de sua família, quase perdendo a vida. Com a ajuda e proteção de seu filho, Park Min-sook teve sua verdadeira face revelada, e uma reviravolta dramática ocorreu no banquete de noivado, com reviravoltas a todo momento...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1f0646a8-7b91-4678-971e-92677d64174e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/78b27b66-ab18-4615-983a-ff102b7e6f3d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O PREÇO QUE PAGUEI PELO MEU AMOR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e09b7042-9eb5-477b-abb7-cec532de0e00_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1cd1ffa8-d4c9-406c-af3d-72b2ac237bda',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Difícil De Consolar o Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a0dd14ee-2443-44c7-848d-19015996e0f5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/904682ef-e549-45dc-ba44-0407a03aa2ed',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Chefe Bilionário Me tornou como Prêmio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/881306f8-27b9-4121-b185-ea41bb8d12ea_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/9fa10b38-9598-41bd-96b5-487f73d464a9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cuidado Eu Sou a Chefona',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6b5007be-c859-4d9a-bf64-8d974622c7f7_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/df4dabaa-243f-40c9-9b49-60b8a7c32a38',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fortuna e Poder Em Minutos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d6908fb5-4886-4cc8-8af0-379610274193_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c48e46ef-cc94-45af-a7ee-470e71f5d9ed',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Mistério Das Águas Termais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8dff8741-d725-464e-84dc-7a736a0d9a35_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8f9f6e00-94c7-4e96-89af-0d88ad4e138f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Nova Vida Novo Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a6a0c383-980f-4884-8529-29bb9eec4dfa_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7cdc71df-9a7b-4b25-ad2a-c1826dc8ee90',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Goleada  Pelo Rival Do Irmão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ca91ce5d-8040-4c6a-9e0f-845da534f794_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f66cbb82-4de1-481e-998e-71b6733095e1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O BRILHO DA SRTA JOANA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ebb0ba63-e607-4a07-b304-4e671d3b3d7a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4124497c-060a-4bc7-8fe7-cdaf49c1a185',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Laços De Sangue',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5c6dcedf-09c8-438e-b118-6babb036709c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5200c561-4ac8-45e4-b264-9be87b0c5653',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Escondida No Chuveiro Dele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3560b43e-ad7f-429a-a767-aaf250173da8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/32a271b0-4864-419a-b326-de0dfa1f6d83',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jogo Sujo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1cb7d651-de97-4b45-afd0-c6ed787a1deb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e672f021-12c6-470c-b4c9-e07e2291893b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Odiosamente Sua',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/15e18ef7-e8d3-4fe5-b2e0-1db7716ae1ad_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/092f3168-7a2a-4de7-833a-b71a54638747',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noivo De Mentirinha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/972ab67d-091e-44d6-85c5-99bf74c5b944_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8ab088f4-449f-4fa1-8fed-2b76a89f1270',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Passaro Enjaulado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a3c752ec-3cc3-47ca-91db-89523e1d4994_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5130d3a1-3823-4fdf-b0e5-2220d52ab679',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minhas Lágrimas São Águas Passadas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c545a0ec-619c-4183-a86b-1f4b7718c51a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/045f8977-08a7-42ca-bd73-5e1c355f9d40',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quebrando a Quarta Parede',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/62f3ee9c-7f2b-47f6-af8b-c4c9bd91dc82_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b4fe5826-3db1-4889-ba79-dcf01eea9a50',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Meu Bebê Gângster Papai Me Mima até o Paraíso',
    'O pai da Fiona é viciado no jogo e mergulha a família na pobreza, tornando ainda mais difícil para Fiona sustentar a mãe acamada. Fiona não tem outra opção a não ser trabalhar em um clube. No entanto, por obra do destino, Fiona conhece o chefe dos gângsters Leonard e salva sua vida. Mas quem poderia imaginar que ela engravidaria naquela noite...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5acfb8f3-7467-442e-8ce0-dc6e0c2098a8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e198f4c5-c85e-40d4-a65c-206819a7f15c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Marido Trocado Erro Concertado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b873d1cb-3a85-4361-a8ed-34203e6c4b06_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4fbc6551-6b3a-4c10-b3ae-9032e094cb24',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejada Por Dois: Vampiro e Caçador',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5b004073-9609-431e-b16e-266f2c050d42_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dd207b03-07f3-4326-a458-ce3a63930264',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Beijo Uma Facada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/234392ce-e9c7-4e39-98e2-77c599ba883e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/22808784-fed7-4c98-9752-9ceb78b994c6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Olhar De Luz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2602583c-3491-494f-b7f8-136e8479e85f_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a5c22778-5321-421c-a7c2-3899aa29033e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Corte Limpo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5b06028a-d570-4f75-811a-1252e272d51e_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/75378606-ce54-4ee5-91fb-07cfe42ee932',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Limite Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c1429bff-c886-46e8-8df8-cd7e960ba42e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3d43646e-be0a-4487-bd0e-f60d3fe6bf2c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Chefe Da Máfia Substituto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/27ac630e-5442-443a-ab08-d37aaaaaf5a4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b45dadd8-59b5-43a9-9236-ebea2db529e2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Rei Alfa De Programa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ffd2a094-2442-486e-8360-e304ec614d4a_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6a033b71-021d-4aac-a750-b70c2a70faab',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Além do Rio o Fim De Nós',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/24153bf0-5041-433b-9c94-7ab328aedd51_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/84af2b9f-96b5-4ea1-868c-f5b5f643c389',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Marido Bilionário De Duas Caras',
    'Sinopse: Ela foi obrigada a se casar, mas encontrou um amor que nem sabia existir… ou será que tudo é uma mentira? Entre cicatrizes do passado, segredos devastadores e provocações sedutoras, Mia precisa descobrir a verdade sobre o homem que agora chama de marido.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ddd5c0d6-a27c-40a2-9f69-c42cebc10e5c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5b8d6d51-5048-4e65-a13c-5896b4a954ff',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Paixão Taboo Meu Meio Irmão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/72632dee-fbae-4ea2-a913-60b85c25b398_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a081be80-d611-45c5-95da-91f88158bf3e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Doce Esposa Dos Anos 80',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ad9b1524-c03c-49b3-be89-4c1934d20f8a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cd22b85c-922f-4e50-89f0-915acd5cab65',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sonhos De Divorcio De Princesa Pesada',
    'No século XXI jiang Ruoshu, uma cientista famosa pela internet se vê transportada para o mundo de um romance! Ela acorda para descobrir que se tornou uma princesa com sorte não amada sobrecarregada com 200 libras determinada fazer o melhor de suas novas circunstância, Jiang Ruoshu coloca o seu objetivo em expor homens enganosos e mulheres traiçoeiras, usando seu conhecimento moderno para criar invenções que conquistaram toda família imperial. Ela ganha títulos e honras transformando uma situação aparentemente sem esperança em uma situação triunfante, e sobe ao auge do sucesso',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/885f174a-aa61-408f-8d2d-6ef562325f5d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3a825dc5-e48c-4900-9c0f-edefd6a1b643',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Da Sombra a Rainha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/87e718d7-553c-4fab-aa4d-2de17eee285c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/968b6e50-506c-4553-b549-cd8d4080494a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Correndo Atrás Do Prejuízo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b0082fc0-f83b-439b-ad46-97190d130388_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/06e17843-b5ec-4745-aab0-f511498b417f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Mãe Solteira Por Engano Esposa Do CEO Por Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b2d48422-7db1-4119-ab9d-fe58fd37c773_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d309aaa5-8d6f-417b-bc6b-2b31fbed3ddd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Armadilha Para o Coração Dele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c9de4332-6369-4e04-aaa5-4798c79084a2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f481c81e-efed-47e0-91b8-071ef7c48784',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sr Duan Seja discreto Ao Mimar Sua Esposa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/747cdfcb-9e9f-44bd-8deb-1df2f327c48b_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/035c5aff-1ce3-4542-b148-5956ee662df5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Como Treinar Um Macho Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0200ddae-5d9b-4a88-baaf-94dfc38fe38b_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/837e0390-28d5-4502-bb1d-057b6ace5f58',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quando a Promessa Se Rasga',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/440ddfe1-55b9-4b06-b105-e8159ae4ce99_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bd663815-7dd6-4190-a473-aa64d9c95db1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Onze Anos Após a Minha Morte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fd17c510-4803-46ff-8db6-92bba77d1f7d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d4fcbc41-4667-478a-8f71-a1571054a0de',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Protetor Meu Pecado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fe6a8ce8-2d48-48af-a31d-4037b13967e7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3cba645d-84c6-4a8d-88db-2e7a735094e9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Olha O que Você Me Fez Fazer/',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/281a698c-f82d-4635-af46-a29d045b77e6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6429a5f8-61af-42f9-a524-4d4bba25f058',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Corrida Selvagem Com O Perigoso Kian',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7489bfb5-a68f-4389-b9e4-8e0bd1fbb1ea_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bb4393bc-ae45-4c5c-a48e-9a9b9f88e9eb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mordida Do Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4147beaa-307a-49a1-b6c2-8f6b4c48472f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/02ed98b0-39fb-49cf-a16c-76d704607bf1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Faça Me Sua',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8375c19e-b453-4d16-931c-58835ed8d151_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/11e1615c-4542-4834-be5f-f6d1c493dcaf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Lendário Pai Retorna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9d38374c-12cb-4de6-bb7f-5fdee8d19e5c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9bb2e8aa-0e83-4b7b-a70c-e15c7fe1700e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cores Românticas Do Casamento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e06b7fd6-c8c0-43c8-9e16-6744b9c6538b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/34373f94-1619-4814-bf6d-aa47cceea921',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Estragada Pelo Meu Papai Bilionário',
    'Na luta contra o vício de seu irmão e as dívidas da sua mãe, uma garota em dificuldades, busca refúgio em um relacionamento contratual com seu carismático CEO. Mas, à medida que seu vínculo se aprofunda, ela percebe que é apenas uma substituta para a ex-noiva dele.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8fff5f74-6b09-41ef-9269-b8e67ed6cb78_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7f7fc8d8-aa8f-41e7-927d-456b462a0d7c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A VINGANÇA DA VERDADEIRA HERDEIRA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/49670cbd-b847-4af3-a5f8-7419f64f474a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b550c38a-6ac4-4e59-96ca-55f1de91cbc2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'QUANDO CORAÇÕES PARTIDOS VOLTAM A BATER',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/27a00205-15d4-4783-8ba5-2e1e312aef2a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/57b930d6-a732-4ad6-aed4-5f5b716109e3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva Virgem Do Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/19475b07-6013-4655-93c2-034d9d24c5e9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/aa0ffc12-100c-4f42-8a6a-4c304edab201',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Virgem e Seu Patrão Rico',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/56c08b5e-aba5-41a3-9228-db21e818aabe_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c7d681a3-aa97-4870-9313-8d7df1012401',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jurei Te Amar Aprendi Te Largar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b1e5754f-890e-4dc3-944b-4c7ce911e398_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/553a7322-035f-4816-8e5e-7837e0aa43aa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Bad Sister Irmã Do Pecado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1f3cb16a-92f6-403b-8bdb-1124ee9341f5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/721076da-b19b-4242-a159-8b9e56f6a3eb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha vida Na Máfia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e7fcc8e2-c86c-43fe-8018-0c997688e38f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/df41a7a0-5c3c-4ec2-89cb-c19432368cb8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apenas ao Vento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b6c28dc2-6f27-4ab1-8485-92b622ab98e4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dee95c74-3022-43d0-ace9-a7b819b94488',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Untitled',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/245a25c5-352f-4691-892a-fc01aed527fc_pt.jpg',
    '',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Mentiras No Amor Verdades No Ódio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b017fc04-1086-4347-ad59-7f91d3e8e8c9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/625994e9-236d-48c8-9339-44528a4217ab',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apaixonando Se Por Uma Superstar',
    'É sobre uma pessoa que se apaixona por um músico, quando foi no segundo show da banda favorita, e assim, quando ouve no rádio suas músicas, fica iludida esperando que a pessoa vá encontrá-',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2cd7e0fa-9400-4916-ae4d-63f23788a842_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fd395cb5-f58f-4d93-9a08-6ebaae930424',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Superando Meu guarda Costas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/985e332f-423c-49e8-8e73-d0012c06bd16_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/31337fdb-c1d0-42be-bf2e-283d2190619d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Médica Moderna Reencarna Na Corte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/22ba6ae9-d7bc-4100-a8c5-dde289dd486c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d1eaa128-9c33-4e5f-8c50-c2a41fef7c2c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Tutora e o Rebelde',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e4fb1efe-3dd5-4e7f-a30b-363bbd19b5bb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/36730e28-a3f7-4356-a0f0-97bdceb88a61',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Romance Secreto com O Pai do Meu Namorado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/63ca2791-0278-457b-b4c4-b5d904aa2a94_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/27d15dd3-adcb-4298-aea8-37a8895b62ae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Sexta Feira Mais Louca Ainda',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/56b04234-93c9-4b53-b26f-1a346554425b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/acd069b9-432e-4c21-ad3b-08bfc8de2b0d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ódio Sem Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a84a9032-e400-40b6-a592-8a2c1f52aca9_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/fafdbb71-e425-41f7-a868-df61b834d2a7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Lua No Barco',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/058f9d72-9274-407f-8df3-f408113dbe23_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/2e7b0e19-9032-4825-9735-60e9df39f584',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Inverno Quente Vira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/147156e6-36bc-4a20-9433-c3e58eb98e33_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2f2f5a40-4af3-4c21-bc30-58d9010da93c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Perda do Amor Familiar e a Verdade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/08ca5ae1-7757-4957-a8bf-616e5c59dffe_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/5ae0e579-9268-4d37-8387-8b19b6eb7571',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destina Ao Meu Alfa Amaldiçoado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b2644897-2e0c-4781-8d73-01e219d04b54_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/65ac4475-d441-4aa5-9f04-841c5a169556',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Pão Vence o Ouro Cai',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/57d070ef-ff38-4adf-a0af-aa21b13e8bc9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e27ac1a4-b512-472f-b870-793b452b3231',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Pacto Da Bruxa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/199c4659-a5ff-4aae-8495-1df95a6fa447_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/401e940d-74a3-4690-b2c4-68218d98bce5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cicatriz a Luz Da Lua',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5c064b29-33be-472f-813e-f8b09506a0e9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/20d44dbd-29b5-4d35-807e-300f59a5614f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Gatilheiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8b338fdb-bffc-4c6a-8dcf-edf33bec8faf_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f5ed3355-e390-4dbc-8276-4281db90eb34',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Virgem Do Vôlei',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fb357675-6015-448b-99b6-1385642dfe1b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4b6f36ef-2bb1-4479-904a-e191feef8c30',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Renascida Das Cinzas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2807b864-c413-4778-be4c-c0d080805c73_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8163e597-ef1e-47bb-a93f-088c50b28715',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Queimando Pontes',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8ac25e69-de4d-4010-b28b-3c8fe378a44f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8ae1156e-67b9-49de-9125-d26be4656221',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Algemada Ao Meu Capitão Raposa Prateada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/28daa5c1-5a8f-488f-9a13-04929737b966_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5d4087cd-72cd-4c3c-9a01-189fe514dac7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Pai Don',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/df138d2f-415f-42d4-9296-b2622bcfa038_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8585e515-c714-4ebf-92aa-4634578f6dbc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Submetendo Ao Pai Da Minha Melhor Amiga',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/090d52ca-8795-4b71-bb0a-657159f87ddf_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/2a12db71-cf88-456c-ae17-8078d1364e20',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Tímida e Os Alfas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/69ac7b0b-aa45-4834-89bb-f7a796b0fe2b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ba019401-4357-4bff-af1e-57c8d3a03dd6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Casamento Secreto Da Enfermeira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9f687c86-d65a-4543-8111-4d420a451cea_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/66db6260-de86-43d0-aee8-347dbd5827d2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sniper Americano A Última Rodada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c03076d9-16c3-4490-bb4f-fc31e65c5108_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3d3f516b-78af-4710-a431-a1ce603640e4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Pai Voltou todos Estão De Joelhos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/57442bb2-d8d9-4045-9ca2-95717fe1afcc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/049c2de8-4f1d-4d6f-ad7c-cc507b8c5a74',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DORMI COM MEUS TRÊS ENTEADOS LOBISOMENS',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8cb759fa-c45f-4891-a66f-ba573385798f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4d22704f-4839-4384-b193-ac83b859f2dc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cuidado Eu Sou a Chefona',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/251f1bb0-9e93-4bdc-9502-924716ce8a51_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bb365eda-427b-4b24-aa76-233d4354101e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'APÓS CINCO ANOS FINGINDO A MORTE, REENCONTRO COM O EX-MARIDO E ELE CHOROU',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/21617fa2-9ebd-457f-a85d-2ba39b26d5db_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cca5378b-c837-40fe-a43f-354f53f3a436',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeira Bilionária Confronta Seu Marido Assassino',
    'Introdução: Apesar da traição do marido, que tramou sua morte com a amante, Lisa sobreviveu ao atentado. O que eles jamais poderiam imaginar é que ela é, na verdade, a única herdeira do homem mais rico do planeta. Em silêncio, ela planeja sua vingança.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/96d50158-f28c-41f4-8d1e-33207099fee2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cbea38d8-ae16-4abb-ae79-b3961f63ca2b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rainha De Copas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ef0fa790-7cf6-45e6-83f0-b868cfcd6d0c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3643c8e8-2e74-4d93-a77f-be9374cc234c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Arrependimento No Espelho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4f43bd93-1ef7-4065-a033-3ac5cbc6ca2a_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6b3c0001-5654-4bb6-ae3e-cbb9f4306612',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Entre a Filha e a Guerra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/392e5ffc-e9da-412f-8e50-31efe250ee2e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c3ac74d9-cad3-4388-9511-249a5137588e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Música Do Pecado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3b3d8efb-696d-47d2-9cf9-371f3d018cf8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b102e5da-4eee-4381-b38c-9425e4b43f47',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fim Da Dona De Casa Maldita',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bac44553-f6b3-4343-9b71-75687d23432b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6935d2da-ac16-412b-be67-a30ef5948c1c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Florada Na Estação a cidade imperial Ressoa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6dc1d263-41c4-41aa-8ce7-01d9e1bbfc07_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/26a9e07f-c7c6-4c42-b632-b668b27367db',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'É Ótima A Esposa Arranjada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d93d4d87-3ff7-46d1-b29d-674fe5e5bcef_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/211cd6fa-113c-48c2-9254-1097720430b0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Contratada Para Obedecer',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/08f53553-9b35-48b6-9ec0-9029d8135413_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a0c28115-9331-4bee-bf29-0583d68d3982',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento de Mentira Com O Bilionário',
    'Uma noite de erro, um destino entrelaçado… e um amor que ninguém esperava',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/41b7076d-ccf9-45aa-aab6-e0c3a953b512_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/094c6c1c-158a-4d75-8521-907d759b4cf9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Se Meta Com a Herdeira Verdadeira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7220e232-a9cb-4ab2-af1f-5ea63251882e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9b5692be-e0c7-4f3e-a2a0-503135db3565',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Promessas Quebradas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6ddff854-0606-4ab3-988a-ef7cf7ac8bc8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b81ebd49-5a40-43bd-9eae-b136d070b656',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Nao Intimidade A Irmã Da Mestra Das Artes Marciais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6a5bbfb0-9720-497e-85c0-2142940117d1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/66cba9a8-5781-4dbd-97be-85399127f863',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Senhora Não Fuja',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a8c8b30b-2860-4481-b3e2-c3b4c4d93b91_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e3e4ff7f-2ea5-4050-89ca-fc59d6143eed',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Pobre Ex, A Herdeira Bilionária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bb99357c-b7a0-4a68-ac87-ebcebf27447f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7c03faf2-149f-4a71-bea6-66d15c005c51',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A filha Da Casa Guardiã De Reinos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/88762c7c-282a-40b9-9fcb-0a9d28e9f660_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0f3a885c-d543-452c-9c89-7ec783632a2e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejo Sombrio Da Elise',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5a3b5e4a-fa3e-45a5-99b5-f014f03304c8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d5975ad6-a899-45f9-a9ea-2fce91e492a7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Par Perfeito Inesperado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cfca978c-f2bf-4c0c-8edd-4f516bed0ddb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/156742b0-63ce-4e66-8704-19e046d75088',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois De Travar o Coração',
    'Henrique perseguiu Maria por anos, mas só ganhou desprezo. Decidiu fechar seu coração, até salvar Beatriz, uma mulher misteriosa. Agora, Maria o importuna, e Beatriz adverte: "Ouse tocar meu homem e você verá!"',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/94cf83a9-cfed-4578-8e06-b1f0066628aa_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/53ab5d96-d2e9-4a0a-ad70-54071e29c840',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando a Substituta Some',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/465d7569-7655-4850-8a24-de5f70204e3a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/408bea61-b71a-40c4-9f61-0da89ba52943',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fortuna revelada Meu Marido é Um Estouro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d3e2e6ad-4017-4753-927d-47515e44201c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/65306b10-b438-4415-8a90-f155f6f031a7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Rebelde',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0098d357-ad89-42ce-a949-1da84ba57d5e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2e82a3ee-de4c-4f44-a728-4bd8191e656a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Paz No Reino Caos No Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aa825647-3a94-467a-8199-44e4370b8b49_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b999b03e-2cce-4322-bd93-f74852c455c0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Volta Ao Passado: Amor Eterno/ Renascida Em 1989/ Voltei No Tempo Para Ficar Contigo/Casamento Trocado Amor Garantido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9b4d3f48-74e9-4612-b45f-382cae13a697_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/da74e52c-34ef-4a70-b8da-fa16eab20163',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Cura Começa Com Ela',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/85a08993-fa2b-4731-9a03-ff0c1cd8b021_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b7a0e987-e443-4e87-a338-3cbebda64482',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segunda Chance Para a Vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c7c96d75-7fb4-4f48-ae6c-db7c2cf161ff_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/00804edf-cebc-49b6-9f33-ebee925617d3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Falsa Herdeira Da nobreza e a Verdadeira Felix Da Nobreza',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6bc529e8-448b-4be7-b302-2b8af9616957_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e8835cbf-0d93-4b6e-837a-f463b83d8df2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Médica Do General',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7d9ac641-579e-42d5-a3fb-a2956dfef6d6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4e49e7d9-aa84-493e-addc-caf9429af18e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Sem Volta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aa2503df-c0a6-431b-b290-d522f897debf_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/9d7ebec4-48ea-4d70-802d-19a4c5a5eb1c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Desejada Pelo Craque bilionário/Fim Do Contrato Fim De Nós',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9e962714-6446-44cc-aecb-06639deeb76d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5643a51a-ec23-413f-9746-a788ffb3d677',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'DESTINADA AO PAI DO ALFA DO MEU RIVAL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2d9344f0-7a7c-407f-ae23-78be2c41c96a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/867d2761-ede8-4d6c-9f10-87e53cad8b3d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Bilionário Em Perigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9e69d239-35a7-48ff-903b-bbb889985d58_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/94face2b-ea31-4293-ac81-170c500e83d8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva Do Mafioso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bfdbd303-8a3f-46b8-9bea-62784f052cac_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1cc27389-cfde-4d64-b8a4-cd61df54dbc1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Não Tem Vaga',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/48d515b1-c428-406a-bb42-a60c788dc4a5_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b4e5197d-0e90-4838-bb97-96cd99b7d733',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor e Ódio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f42ed7c4-8e17-4335-ad7a-3ff09a30376b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7e8b5f70-860a-4f63-8291-7709d337a5e3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Nerd Dele',
    '',
    'https://i.imgur.com/qabEBdO.png',
    'https://iframe.mediadelivery.net/play/407552/3b709413-8323-4857-8a11-4c3077a9ab7a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esposa e Buff absurdo: Subindo Para dominar tudo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/37746899-4ecc-40d4-8049-625b8079a045_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f586cb36-082f-4a2e-913e-099828039192',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Do Amor A Solidão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a23f686e-1f35-46a9-b4ef-0e04f0dcbd40_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c6de2927-2dce-4517-be1b-04b407592c59',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Preço Da Culpa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ccee7058-b233-4278-b7fa-387246d96cea_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b3ebfe4c-1ef8-45ee-a2e8-8b4de1f38c21',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Espera Inalcançável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f032594d-7dbc-435e-9286-10fd04dba6b9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/41fde794-eaf3-4d31-95c4-de19cd853112',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Com Sorte Plus Size: Brilho Imbatível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c2f7f913-f3d6-41bd-95e4-53d224fa2ac5_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/e6af1289-4436-484f-b003-52b45a73e7b8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Como Me Tornei Uma Herdeira Milionária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a87dca3f-03cb-48e9-a047-c54fac74e4f2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/61b887df-2774-479f-b13a-6af3a1e0bc1d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'justiça',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81698064-b8ae-4889-9615-f013b39f87c7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/609fa5ec-089a-4326-82b8-eb4f8891b0d0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Fim Da Dona De Casa Maldita',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9f0e53ad-feb5-4271-832a-89db0d39c83c_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6e3e0278-db68-4240-ae24-d3584f5f5227',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Marido Agente Secreto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/135acd64-ad77-402c-90ae-46eca16889b6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3be3affd-b64b-458e-80de-f2cfb525ad58',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Tio do Meu Ex Pirou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5e72f805-d0a4-491b-a63a-f257aed74376_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fe424e54-b3c2-453d-aac1-f4b519dec829',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Tu És O Vento Eu Sou As cinzas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c9102cdb-f6d0-44c9-a9d8-ecfa6203f5cf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b0497231-c961-4e8d-a298-6742d6cecb7d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segunda Chance Para a Vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/de70ae25-6cbd-47cc-93c6-37bcf4aca567_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a95f7ccd-174f-4110-8687-ecb4200b8e67',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Beijei O Filho Do Meu Ex',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6ab7b12d-55dd-4a18-afcd-cb52609ec603_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f7d6ecdf-6006-4b02-aace-b2a1330df78a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'AME ME OUTRA VEZ',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7fbd9b37-2ca9-4753-aa50-9a35f51b7a87_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3c535995-4817-43c9-a935-43876a95486f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Os Brothers Da Minha Ex',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/779f1b08-c095-405b-a4d9-14644519ad29_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/30063d1b-cd75-47dd-bafa-0f33f2cfed7a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Ola Quanto Tempo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f747c18a-068a-486b-9d79-127f47a07b75_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3c51611d-0cbd-4fb3-a0d2-136f13216eff',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Estaca No Coração',
    '',
    'https://i.imgur.com/5qgK35z.png',
    'https://iframe.mediadelivery.net/play/407552/9f7db2b7-d5d4-4f86-a94e-76fd77407efd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando O Destino Atinge O Amor',
    'Quando o Destino Atinge o Amor é uma narrativa envolvente que nos leva a refletir sobre as complexidades das relações familiares e amorosas. Lacey, a protagonista, cresceu em um ambiente onde os filhos eram mais valorizados que as filhas, o que moldou sua vida de maneira significativa. Desde jovem, ela enfrentou desafios que testaram sua resiliência e determinação. A única constante em sua vida era Felix, um garoto por quem ela nutria uma admiração silenciosa, mas profunda. Já adulta, Lacey se vê pressionada pelas expectativas familiares e acaba aceitando um casamento arranjado. O que ela não esperava era que seu futuro marido fosse ninguém menos que Felix, o amor de sua juventude. Este encontro inesperado com o destino traz à tona sentimentos antigos e novos desafios, especialmente porque Felix estava em um relacionamento complicado com Erika, uma mulher que sua família não aceitava devido à sua infertilidade.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0d3196c0-e020-4dde-b2f7-46d6292fa709_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/22cfa6e2-a380-4e68-b53f-1306e65e600c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Relâmpago Com o CEO Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8ed45743-7a0b-4207-a18e-54e8c7ad9a17_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a4ff7bf6-2aff-40a5-bda1-a50b265cc22f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Nos Anos 80 Amor No Presente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3cd39992-e0f3-40ed-ad4e-fa1a287dc79f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/77c5ca3a-3695-4f11-a7a8-4268eb0baa01',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sra Dragão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c529bde4-abf6-4c17-8eb1-6c095233495a_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/03dc88ad-60f4-44b8-a427-7c70dbf34168',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rosa De Diamante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/296f8f23-d814-4e12-88ad-5dee7c13441f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0ccd7b82-4c03-4428-a3b7-9e99efe501ec',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Amor Secreto Era Meu Inimigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c00ea4d4-f01d-41aa-b2b2-815fbbbf9d38_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bb31b478-c773-4d4e-aece-0fdef162d522',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Doceza Perdida',
    'Sinopse: Lisa Souza, a filha mimada da família Souza, descobre que não é verdadeira herdeira. Após ser trocada por Melissa Souza e falsamente acusada, é enviada para uma escola onde sofre três anos de abuso que a deixam com sequelas. Ao voltar, já não é mais a mesma garota alegre de antes.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1968c4af-37d7-4bcb-8e2e-418c66ad820c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1dafa201-edea-45e0-bfe2-720ad09d61d5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Troca Destinada: A Fofa Substituta',
    'Vânia, a verdadeira herdeira da família, foi criada em condições cruéis no campo, mas é trazida de volta ao império de luxo para substituir..',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7f550a9d-9d68-47e0-9883-299d3630d8b6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a9b4ab26-8033-424f-9997-83bc13ed1048',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'PAIS DESAMPARADOS SOU COSTA QUENTE DELES',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7e590f5a-6d53-4ae5-b9d3-782d20d5e09a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0a9194fd-2508-4d7c-82cc-4fc66a209a04',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Traído Pelos Que Amava',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e4a0146d-58ee-4d18-aaeb-726533b0beb1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a0c10aa6-6141-40ce-b47c-fafaf5c3b1a7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Escolha Do Livro: Mentes Revelas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/22ae85a4-76d0-4807-aef5-186744fd4dbe_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4594c3b7-ea99-459e-8289-1e8521833a38',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno do Rei Mendigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6f8c5aec-44ec-4f83-8b39-d5a1918762b8_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/7f741a0b-87aa-4bf0-8dd2-890e352f6529',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Fé Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7fa49cd2-6bd4-484c-995d-3076e76fc30a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e8d90f9b-3cac-49c7-a446-92b5f633b2bf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Missão De Proteger a Minha Mãe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/13bcd865-4e64-4ed6-9a12-6b6dd5aea53a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/414b4b19-a806-4d5b-bd84-f287bec59174',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Realização Tardia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c6467178-704f-4467-9966-e088297a3a5d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dced9555-64b3-4e6d-b224-ee7c8061e8da',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Bilionário Implacável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4e5568ab-a6a6-4a2b-be0c-a2bad96946bf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3d112139-f068-4e4e-b8a3-341480f1efa1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'minhas Versões De Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5af306aa-7946-40b5-a30b-c29601e25391_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/56c4987b-d8a9-4ae6-9909-f26021cbe26a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Pirólise De Um Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9a2149b6-09d8-42af-a3b4-25e30a77e9e4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c6c9079c-d2f6-4e11-a64d-3f396fb2b620',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vida Trocada Destino Na sua Mão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f2cbeafb-8e0b-4c21-856f-55c8248584a6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/52083a16-bb74-4f94-8066-e4590c9e5164',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Trampolim Para o Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/348dc320-681e-4a00-8b1b-08cca8ddb9d9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4e79e632-c526-4347-b1d6-8f958e2cd962',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'SEU MARIDO É MEU',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6d5c0533-f1c2-4ce2-b4a3-86fecad283ad_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3ba8b88a-a77e-4d6a-9241-8f3150836cae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destino De Traição',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aed8ac70-eeae-400e-b948-655e2c0a407e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0fbc1b68-1a71-4b11-9e18-91bc6109ca5e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amando O Melhor Amigo Do Meu Irmão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4e3b668b-079c-481d-b1d6-01dffcc9680e_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/7f6fa40b-3b75-431c-b2ad-08634f88301b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Para Ficar Ao Meu Lado',
    'Há 10 anos, Aurora Martins esperou a noite toda na chuva por um amigo por correspondência que nunca apareceu destruindo a sua fé no amor. Agora ela se casa Shinn amente com um ex marinheiro honrado, Diogo Gaio… apenas para descobrir que ele é o homem porque quem ela esperou. O destino os reúne mas será que a confiança pode sobreviver a verdade?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7a47b2f9-c0cb-4b5c-a5cc-61788a5549ff_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8d5fbf7f-8ea8-4286-a8af-37ef2981b212',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Moça Impressiona Todo Campus',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/41dbe584-5040-4a54-8582-6accd56d43d3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f602bcd2-249c-4096-a792-d9178de0caa2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Na Brisa Do Crepúsculo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cd951cbd-ec07-4e7d-9dab-17d9be3861ee_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d3115827-2f81-4e63-a620-1e588d3c4630',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Inatingível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b690c9e5-8729-42ec-b4c6-69c6df91b280_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/91278108-8503-4f79-b131-589a6c480f1d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Volta Pra Ela',
    'Após perder tudo, Luísa Jardim aceita viver ao lado de Jonas Peres em um acordo por três anos. Quando o tempo termina e ela vai embora, . ',
    'https://i.imgur.com/axBOUgI.png',
    'https://iframe.mediadelivery.net/play/407552/2f11965c-4f7b-4ffb-92bf-0e8f58217694',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segredos de Uma Boa Moça',
    'Durante dez anos, ela viveu sufocada sob o controle da família, obediente e calada. Quando conhece um homem que parece ser sua rota de fuga perfeita, ela o usa para escapar. Mas o que era apenas estratégia se transforma, a confiança e o afeto incondicional dele começam a curar suas feridas. Em meio à liberdade recém-descoberta, nasce um amor inesperado e a força que ela nunca soube que tinha para recomeçar a própria vida.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4a728e49-819b-4911-9ed2-e22390e57282_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a053000f-ec6f-4b7e-b411-2e76445b290f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Corrida De Volta Para Mim',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c1269931-6be1-47fe-a67f-de7a504e7a7d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b6cc46c7-0204-4c4b-97dd-647936b5d4a7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Gelo e Fogo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/08c326bf-42f9-4f6b-ae94-3d88652350df_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a454ffb5-5884-40b2-ad41-24920e2093d8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'RENASCIDA EM 1989',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/570a111a-f532-4dfa-8b7f-83c3ca73949a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1584a2c8-f8bc-4255-8724-471614f4aa32',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Único e Verdadeiro Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b7855809-a9ab-47b8-bd26-3d4b7e3ba474_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/d9d225a9-8087-48b5-b063-8e4bea21943b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Retorno do Jovem Mestre',
    'Sinopse: O Diogo Silva nasceu em uma família rica. Três anos atrás, o Diogo começou a namorar a Luana Moreira sob a identidade de uma pessoa comum. Durante esse período, ele entrou em coma por um acidente repentino. A Luana fez tudo para cobrir as despesas médicas do Diogo, que finalmente acordou. Para retribuir a Luana e sua família por todo o sacrifício, o Diogo reassumiu sua identidade de herdeiro e começou sua jornada de contra-ataque.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8f39bacf-5023-475a-8961-34eec8a42993_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5256e2e5-e99b-4575-a7c0-52ad4e3630aa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Sonho Dentro De Um Sonho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6a7f7a52-d8ed-4127-9972-0e623ed50e08_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fbd6bef8-e00d-4cf6-8a8b-152b2f6bf261',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Deslumbrante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ce61ae2f-9418-4444-922c-d1369160e14c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b6537ad3-30c4-4813-a28a-2f274e55636f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Caçador No Ringue: Punhos De Justiça',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a366ffbe-c111-4ae6-a682-2bb5efeda6dd_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/06c1dfde-3877-4ac0-bc56-47346cc70803',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Pelo Sangue e Traição Eu Reergo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c8c55879-00e1-4b0c-9463-617b056034f2_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/0ac2e789-2aaf-4b0b-a55d-bfe0516e2f78',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vingança Secreta Do Irmão Gêmeo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/df09f273-a311-4abc-a49d-a6762f405daf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/59a03563-daf3-409e-8d86-1c80102acd05',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Primeiro Amor Última Escolha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9d5f7f6b-00c5-43af-aac6-798de1d3bc2e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/99498fb1-a236-49a1-997f-5e0c0fcb7705',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Três golpes E Uma Pena De Adeus',
    'Sinopse: Poliane dedica anos de seu juventude a Sebastião, sendo sua assistente leal e amando-o em silêncio. Uma noite de embriaguez muda tudo, ela engravida e os dois se casam em segredo. Pensando ter finalmente encontrado a felicidade, Poliane logo percebe que sua vida vira um pesadelo. Sebastião nunca deixou de amar Julieta e, obcecado, não hesita em magoar Poliane e seu filho para agradar sua amada do passado...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/861b4d54-33f5-4898-a9a4-6f2515b47dc1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fa4d19a7-795c-4d49-b82b-a29f50389d3a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Caçada Por Kiarra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/113996fb-61c4-4b85-a6f9-ae9494058ddf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7622e158-0c48-47ce-87ec-6e9adf510391',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Arrasada A Raiar: Sou De Mais Sem Vocês',
    'Letícia, uma aluna exemplar de medicina, era adorada por todos no laboratório. Mas tudo mudou com a chegada da caloura Carolina, que manipulou os cinco colegas de Letícia, fazendo com que ela fosse abandonada por todos e morreu na prisão por acusações falsas. Ao renascer, ela decide mudar o destino. Ela muda de curso e reconstrui sua vida longe dos antigos erros, enquanto os cinco colegas perdem estruturas em uma roubada...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d3705ee6-935a-4ac8-bbec-c9b823fda2f0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8c867ae5-16d0-493a-b47f-58ea21d64be7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Resto Da Minha vida Será De Solidão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/47a80437-3cae-4b9a-ab53-f10877328f3c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/aba105bf-9ae8-4b06-9133-ab4b4234ca67',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reunião?, Não é Retaliação',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/459ed406-e678-4959-9912-060ca19db0aa_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1e493a59-3e0b-4ea5-9cf9-dafa4dd05716',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sequestrada Pelo Diabo',
    'Quando um implacável traficante de armas sequestra uma noiva após seu noivo falhar em uma prova de amor em um jogo mortal de roleta russa, ela se vê dividida entre seus princípios morais e a crescente atração por esse homem perigoso, que fará de tudo para tê-la ao seu lado.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/210b712d-2428-42b3-ae72-a036e78cb2e3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/69226d1c-2ab4-4b5d-972e-fe0b04c42f95',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Luz Dentro Da Escuridão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c3b4d433-93b7-47ec-b59b-48277b651316_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e5693dfa-112c-4299-b5c1-e51346d69dea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sem Retorno Sob As Estrelas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/097fe4ea-750d-43e3-b6f7-ebab357fcbb2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c659250d-ad9f-4be8-aea1-2b1d4699499b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'As Duas Encrencas Da Viúva',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/998cbfd0-a951-4da4-9bff-4812dbe714db_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5909e6eb-ce5c-4c3a-8492-78b5913bd550',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Casados Num Piscar De Olhos E Totalmente Mimados',
    'Seu noivo é roubado pela irmã, então ela se casa às pressas com um trilionário e é inundada de amor!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1ec1d93e-57ba-4098-afac-5254179ed6f2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8743f4bd-3ead-4adb-ac83-f83e96d78fc6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Casamento Improvisado/A Esposa Do Bilionário Oculto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/78307dfb-843b-44e6-ae33-77910b7131ae_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/01b0135b-afff-4b1c-81a6-7fb04c8b01c5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Afogamento De Paixão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b1da27ac-620f-4dfd-9648-b67be1556e2e_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/59d0ef24-2b1a-4763-82f7-5c0b66dd6117',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Ataque Do Tubarão gigante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/89d78313-f005-4f11-8816-a9033604a996_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/37e547b9-bc40-4753-a873-7f4741903961',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Meu Professor Minha Obsessão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0aaa4a6b-e09e-4cf6-907b-41c72457cc36_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/401f8960-c324-4c30-8fc8-770b92c27e29',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando O Ódio Vira Amor / O Dia Em Que O Amor Morreu/ Presos a Um Amor Impossível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3b0baf98-ac85-42b9-87ee-30f0bed8d1d2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5e7bb7f1-2acf-4494-b141-310c3372eaca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Blindado: Um Contrato De Natal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6530660f-bf35-4a60-9198-5b6ae6eb33f8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ff95dab8-1a18-49c5-8b64-67a63381c26e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dois Reis Alfa Uma Companheira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e8d2b4d1-9786-42bd-b4c3-50ef5df3ac86_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/2fcb52a9-e2be-44eb-9408-d83708b93d4a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Em Nome Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/869cf0c0-147f-4a86-b488-6a81532e4eb9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ece19165-3349-42b9-9db7-8fe11ec757b8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Destinado: Case Comigo Novamente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2e66db8a-b0a4-49be-bfbd-489018d07375_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f30f75f8-bc8e-4c77-8a34-e5a6a8a2a058',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Aroma Da Minha Luna Predestinada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/02ba0e50-055e-49ba-9b77-55081254931b_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/dcbae43b-0edd-42aa-85c7-0b13e7dc2ff1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Prometo The Dias Felizes',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3d979de4-6d27-47fb-89b9-d65c74474f95_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/0bfb3e80-fd6f-414f-8e17-2e6afba44b4d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casada intocável Ponto Final',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1d954509-a772-4d5c-b770-e4341fa0dd5a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/db956710-8d1d-4b03-afbc-7290151defa5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Mexa Com Minha Irmã',
    'Sinopse: Tina e Alan escaparam de um orfanato quando eram crianças. Anos depois, o reencontro dos dois desencadeia ciúmes, traições e segredos há muito enterrados. Conforme verdades sombrias vêm à tona, Tina é forçada a encarar o passado e a abandonar tudo o que achava que conhecia. No fim, os irmãos reencontrados se erguem juntos, mais fortes do que nunca, prontos para enfrentar o futuro após vencerem as mentiras, as perdas e as mágoas que quase os separaram para sempre.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a2807ee5-c0cf-4dd5-b021-cbd28c60ae5a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0fac6ae8-d8eb-4a82-af68-468352b73ead',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sequestro Nupcial Armadilha Do Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/512d12e8-2db9-43ad-8240-7af53a99b563_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/7d61ddaa-a575-4b2b-96ca-ba6383c7b125',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Divorciada Dedicada e Dominante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/43ccfa9c-f3dc-4fbc-840d-332c4d8666bf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c6f6aa78-dd3b-4b79-9ef3-fed511578e83',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Já Tivemos Uma Casa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1304d577-c03f-49bf-be99-01d83b9d1bd6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2a727643-75c4-4818-8a78-33756631ce89',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Perdido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/32d95803-003a-422a-9f2e-022edc51c942_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/845e318e-e736-4725-93d3-449e7d64df9f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Papai é o Rei Vampiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9f2ce133-db5c-410d-951c-d1c9374be0f9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7e1d0d8c-7a19-44aa-b588-e315cade5636',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Galã Apático Se Apaixonou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5a6f921f-2f24-4207-a8d2-094bc806cb78_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/8b40854b-aaa8-4da4-acf9-5ef393fdb51c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Vendi a Minha Virgindade Para o SR Dantas',
    'Sinopse: Quando Bella decide se tornar stripper para salvar seu irmão acamado e é humilhada por seus colegas, ela conhece seu herói, o cavalheiro e belo magnata Sr.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f23f8661-10f4-4d24-8a72-491fd5face19_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0638fb0c-3685-4e07-9473-ac0eb1ef57de',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'DIAGNÓSTICO AMOR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6ce329e8-1b30-4146-b17b-5a854b66aca0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/afcb9f6c-f95e-4d73-87ca-0c0a5c33d87f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Voando Com Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/90c3d967-546f-4c3d-b2cc-556a52b0ed01_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0c06796d-cefd-4fff-8afa-99a95652f39a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apaixonando-Me Pelo Pai Mafioso Do Meu Ex',
    'Sinopse: Fay Alden flagra o seu namorado, Daniel, em plena traição e termina com ele. Logo depois, Fay conhece o pai de Daniel, Kent Lippert, o Rei da Máfia. Kent não apenas revela que o verdadeiro pai de Fay é o Mafioso Don Lorenzo Alden, como também lhe faz uma proposta: casar-se com o seu filho para unir os dois clãs, prometendo proteção contra crimes violentos para Fay e sua família. Fay aceita, e Daniel fica bem animado com a ideia pois assim vai poder distrair o seu pai de uma verdade incômoda: ele é gay. Enquanto tenta se adaptar no novo mundo da Máfia, Fay não consegue negar a sua atração crescente por Kent, pai de Daniel. Os dois acabam vivendo um caso de amor secreto, intenso e marcado por práticas de BDSM. Contudo, Don Alden não é quem aparenta ser e a sua intenção é utilizar Fay como moeda de troca para selar uma aliança com o chefão russo Ivan Kozlov. Fay e Ivan acabam flertando, o que abala ainda mais o noivado de fachada com Daniel. Fay acaba compreendendo, já tarde demais, que não só o seu pai e Ivan estão trabalhando juntos para destruir a Kent, como também que Ivan é um policial infiltrado que quer prender Kent, para depois ficar com a Fay só para si. Grávida de Kent, e depois de ele ser preso por ação de Ivan e Don Alden, Fay decide fazer de tudo para libertar o pai do filho que carrega na barriga. Com a ajuda de Daniel, ela derruba Don Alden e obriga Ivan a limpar o nome de Kent. No fim, Fay e Kent se casam e vivem seu final feliz.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b24da541-f73d-4a0a-be14-dc6ff0572041_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6ef54409-166b-4667-8d22-48b1b1a0c6d2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Por Favor Amarre Me tio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1d5712b1-b2ef-4c9c-bbb9-c61e4bb56133_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/404463df-e854-4be3-9f88-52a02b47a44a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor dos Jogos: Despedida para Valer',
    'Sinopse: É um filme de comédia romântica que segue a história de Mack, uma jovem que planeja um jogo de conquista para atrair o seu crush. No entanto, ela acaba se apaixonando por um dos seus alvos e tem que aprender a lidar com a complexidade dos sentimentos e a jogar para valer.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c0746137-6a74-4b4a-9b07-5b8c155948f4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6b274d9a-b335-41f0-845b-d0f5e08ed85b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Secreto Com a Doce Esposa Da Sorte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ebb89b98-adfe-4e61-b608-25ea51f27f93_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1bc31fec-43e3-4cb0-a4d9-5c011eb5aae3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Preço Da Traição',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f9b6054c-e07d-4ebd-a88b-0a820b2fe498_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f15f6cc0-f68d-4c61-87d7-008e8750cbe5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cláusula Proibida',
    'Endividada até o pescoço, Evelyn aceitou um casamento de fachada só para aguentar três anos de União sem intimidade enquanto o marido trazia amantes para trans** em casa sem vergonha nenhuma. Quando o avô exigiu...',
    'https://i.imgur.com/kAVfCyK.png',
    'https://iframe.mediadelivery.net/play/407552/2c6528cb-0deb-404b-b7af-5baf596772df',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Diabo Veste Desejo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81a8a6f6-d40e-4086-bee1-8572d6133781_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6e1c520f-ec30-4fc1-b5f2-13b8d265efba',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Charlotte e Os 7 Gostosões',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8cec3028-1522-484d-91e0-a2963eed6496_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4ff4945d-ff5b-4d9f-873b-8a7fc273dcb0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Retorna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8014443c-4cd4-4a71-96b9-83a6088caaf4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/35c7b1a5-5e87-4049-aac5-8bc6e3300416',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor nos Uniu De Novo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/98a07cd1-8953-46bd-a477-b6bb296d7da2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cb4aefa7-5b42-4996-addb-7264fc7b2a0d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Me Ame Como Você Faz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6e92d741-de19-42ba-8151-30468eaa3677_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e6a31922-0e54-47cc-89b5-c04182cd5d03',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Lapo Abra O Seu Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7d23eaa3-507d-4bf9-927e-0006b376d10b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9f3a66f7-7b47-4aaf-b5ed-cc06fc69a8e1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chamada Final Para O Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec59aae3-f6de-4238-abff-2867b35f7065_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/5e2e0e16-64ea-4067-93f1-d7290ffed62e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Um Passo Para Trás Três Para Frente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4bef51d3-ffbe-44db-82fb-933b851537b6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9e5b3953-22d6-4582-adf8-9028b4aaaf22',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Implorando para que eu volte para casa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4cb00664-1707-47c6-8ce0-716241a9ed3c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d6334671-6a26-4658-a851-2c85aa862251',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa Dos Lycan Nao Sera Sua Luna',
    'Alyssa, a princesa perdida do poderoso Obsidian Pack, desperta a sua herança Lycan escondida após sobreviver a um ataque brutal. Durante anos, ela suportou a humilhação como a Luna sem lobo da Alcateia da Lua Prateada, casada com o Alfa Alaric num contrato para estabilizar a sua Alcateia amaldiçoada. Quando descobre a traição de Alaric - a sua amante grávida e o desdém da sua família - Alyssa vai-se embora, reivindicando a sua identidade real. Reunida com o seu irmão, o Rei Lycan, descobre uma conspiração de bruxaria que suprimiu os seus poderes e os de Alaric. Enquanto confrontam o seu passado e uma bruxa vingativa, Alyssa tem de escolher entre reconquistar o seu amor ou trilhar o seu próprio caminho como líder. Uma história de traição, destino e redenção feroz.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/661d6e5c-fe70-4adf-a4f7-363e8b3f515a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6ebcc4fe-b11d-40ba-8205-35dc28e4b26c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Garota Do Interior Vs Dono Do Crime',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d2ce2ea2-bfec-458c-b13f-d21f6fd2fb57_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/0fffd09b-9c12-44b4-a31c-4d6ad59093df',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Pôs O Marido Na Lista Negra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f35ae819-8212-47a8-8bb9-84667da968ef_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c306cce0-5290-4731-81e0-770a770e2ccb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Corações Roubados',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a9db286e-996c-4291-a41b-a40a773fcf17_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/504f0d44-0cda-4ab1-ac62-ce558190f198',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Beijo Que Faz Falar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e1560201-935c-4eef-ad5e-357d701c77e2_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b66bed90-6e58-4c7a-bfb8-7df96d3f9448',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Impossível De Se Proibir',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e048b9fe-b1e8-44cb-81d0-d88aa1db81f8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f5f475ea-c3fc-41de-bd6d-b2d384b20e55',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno Da Deusa Chef Oculta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/56ce11fd-23ad-41c6-9ae5-9a963ce7b900_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bfee6543-81db-4bd2-b2aa-786c8420b921',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Mimada Pelo Meu Chefe Frio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e53e22f0-5817-4e5f-ba0c-97d8d3c52c51_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a7bf0097-28dd-446d-ba4f-62015f6f5cb0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fugindo Da Máfia Me Caso Com Um Bilionário Sem Teto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2cb5a70f-df93-4f80-9096-7990b350c944_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1c7f1199-35c1-448a-995b-ade7e95ed046',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor e Dor Que Sentimos Na Pele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5348e421-8e18-4c0c-abc9-560b1c7cfb89_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0e43978a-4205-4615-a607-338abe5dbf11',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mulher Grávida, Mimada pelo Marido Rico',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/18a50508-c6fb-41e9-9fd2-d9d0f3138690_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c2a686df-876b-4918-a131-8857974346cf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Do Camponês ao Marido Da Imperatriz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3f5bfea7-fa95-4ad3-b7f5-6e63793d41d6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4006fb8c-6c80-4eef-971f-b12729ba341f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Para Sempre Ao Seu Lado',
    'A garota do campo, Elisa Rocha, cresceu na família extremamente tradicional, onde prevalecia a mentalidade de valorizar os meninos em detrimento das meninas. Quando ainda era muito jovem, os seus pais a impediram de continuar os estudos e a mandaram trabalhar para sustentar o irmão. Depois, para que o irmão se casasse, a Elisa foi vendida por $100.000 para um homem da vila que havia matado as duas esposas. Coincidentemente, a sua melhor amiga, Daniela Silva, também estava prestes a ser forçada a se casar com o idiota da vila. A Elisa e a Daniela fugiram para Rosalândia, com a intenção de recomeçar e se estabelecer. Elisa, com o seu esforço, foi subindo na vida até que, por um mal-entendido, conheceu o bilionário Thiago Costa. O que começou como um encontro inesperado se transformou em um romance que mudaria as suas vidas para sempre',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5fdeb5f7-1366-4314-b232-16a32aded409_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e516d690-f64f-465c-86d4-bbe1c2e9ab1c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Traído',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/585ff473-75f8-4c88-8630-3757738cbf6d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bec4edc2-09df-45c2-8e71-9baf57986a3e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Gorda Voltou Irreconhecível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aa5f312c-2f00-411f-a1ca-4025cd79b3cb_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b0de64d1-bf8e-4244-850f-a5ec3a84e84b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Princesa Se Casa Com O Tio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/214c8e55-035f-4ee0-80f3-ceabe800cc15_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2d71cdb8-b760-4d05-bf91-d97152aa86ee',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CINDERELA E O SEGREDO DO POBRE MILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db939418-d3f7-46cc-b9ac-a369815c614d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8a2bd94d-b004-4fb3-ae0d-265a4e07cd77',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mamãe eu Trouxe o Papai Pra Te Salvar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7bed3722-807d-44ee-9a2d-4edb3eb561d0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dfcea74a-85f8-49fa-8cf3-63649c4e99fa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Marido Agente Secreto II',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ef25c9b7-165b-4d05-a4ac-07f586289dfe_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/992a0593-2f08-4038-8254-3f099e913611',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Ela Já Se Casou De Novo Sr Lúcio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b9c10f12-3836-4d4d-8387-fed3822b6e69_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/182df450-dfe2-4f61-b114-adff8974a0d1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quando As Coisas Desmoronam',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1bf5b7e9-fc28-4da2-bdf7-0969454b6788_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9edec256-e640-4e7e-ae60-165317dce7c5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ACerto De Contas Do Meu Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7bdf18c6-a93f-458d-8e33-3500dc25cd98_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fb4a6d7b-0bca-4b9b-998d-a16806d87a91',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Meu Marido Paquerador',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1c2ae92c-f989-499b-a31b-1fbddf5a64c3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/701dfe46-0875-4352-9abd-4ace8d743337',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CHAMADA PELO MEU AMOR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/35a2c566-7a93-4497-a2fd-16dfc7b5d88b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a47b4859-bdaf-4510-88e5-964ee60dfa3c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Par Perfeito Rejeitado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/afe904fd-4db9-4a37-b17d-13cdee4d4723_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2eacdd82-9490-4c97-9685-c6761ed75988',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor De Espera Na Hora Certa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a204e131-6a66-466c-be09-68eefe49aafe_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1a30d73d-dc87-40e7-8759-3c011cfc6630',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ele Veio Do Outro Lado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d4ae5a02-a178-4267-a6f5-fa31b4994e6d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2a05331b-cd45-4e64-97a6-dee2c1072463',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Perseguindo Sua Esposa Alfa Rejeitada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ab05a25e-c567-4a1c-a2b2-8f10ec2f3687_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7d1d7096-b134-44ab-8b53-37786b23e4df',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Senhora Koi é Indomável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0ddafc82-47fb-4601-99f3-6c035651d585_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1de52cb9-0177-4224-a4b6-3105ef01be4b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Você Tem um Homem',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c0bc4bc9-a4aa-47fa-8404-dc87de3c2250_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/059c6f50-8d3b-4c56-94bc-369efeb41924',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Encontro Às Cegas Com Meu Novo Destino',
    'Sinopse: Jessica é uma mãe solteira que luta para sobreviver e perde a filha, Lola, para os serviços sociais. Anos depois, ela se casa sem saber com James Parker, um bilionário que é justamente o pai adotivo de Zoe. Com o passar do tempo, os segredos vêm à tona, e Jessica descobre que Zoe é, na verdade, sua filha desaparecida. Juntas, elas enfrentam traições, ameaças e corações partidos para se reunirem como uma verdadeira família.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3762d836-bc76-4144-85bc-c106d9a56901_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2c1215a2-1b57-4534-9dec-e99d0b479702',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Conseguir Um Marido Inestimável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cfdb61c3-bb77-46ad-b3a4-fefb83d28845_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9b2d9a76-bec3-4c2b-8d5a-3e8c70da8d07',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa e o Pai Barão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ed3554ca-a8cd-401a-be56-8afa3f2cec49_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/80070ae2-f7eb-454f-8b59-6e07d854c818',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desculpe Eu Sou O Lider',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81c59978-de9b-4f28-aea6-0beb5d72e590_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/60f3ce8d-bb3f-413f-b31e-76df1e84da36',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Sopro Primordial',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a821e1a6-8b79-41a2-be15-5ad20f3207bf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/507e7606-f161-4a0d-8c59-8f496000d4cc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejo Proibido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c0524dc9-9359-46c4-9556-931b352e63a9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/34015d9b-84ad-4f18-bd6d-f7c115d654d2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Papai Campeão e Suas Filhas Da Sorte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/725ff363-23cd-49bf-82a3-1dca9245da4f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f19197d1-eab2-43b5-ab4c-87610926d93e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DANÇA DA VINGANÇA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/067eba13-66a0-40b9-bd5b-29e0427d1e6e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/aea26742-b928-4f16-9e36-cc4f6b62c26b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segunda Chance Primeiro Mimo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9a418abe-7e50-48ad-8d73-9d25b215c583_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/57abe188-ccb0-472d-b989-c13f19225378',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Garota Do Campo A Noiva CEO',
    'Emma, uma garota simples e empreendedora do interior, que fugiu a uma vida difícil, acaba trabalhando numa cidade grande. Tudo muda quando ela confunde um desconhecido bonitão, chamado William, com outra pessoa e acaba sendo forçada a se casar com ele sem saber que ele é o CEO da Irving Corporation. Emma e William até pensam em se divorciar com brevidade, mas a química entre os dois fala mais alto. Agora, eles têm de confessar o amor que sentem um pelo outro e impedir que a Irving Corporation caia nas mãos erradas. Para tal, terão de enfrentar muitos obstáculos e gente querendo atrapalhar.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/03fe3b67-ac3f-4f34-8556-2b5e0f755ced_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/48204b95-4f21-4cf4-b38a-7dee41006871',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Queime Minha Gorda',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4a2d5389-efce-4644-bbeb-8dc1f85e45fa_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d7856b60-358e-4946-a833-23cf7bb4fdfe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Primeiro Amor Depois',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e2496a2e-ba5b-4d18-b9c3-06bddb753fd0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dfd99ff8-074e-4a38-9210-f6e2e46b919a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois De Toda Aquela Dor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cd73d2ba-a86c-40d4-b4af-39e2cb4e77c9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0e46aca7-7898-4bb8-856d-079c93c4940d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Que Me Condenou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b5a3bacb-b9e8-4694-bdb0-04bfab287425_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/32f3299e-f08c-47c8-9889-b4d22b0faef6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Atrevida Impertinente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e9b5bbf0-739c-4e51-8d21-32141f6cbb22_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/50557e31-46e7-4073-9d35-290832d19b2f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Felicidade Do Casamento Errado| Casamento Em Chamas| No Olho Da Tempestade| Armadilha Nupcial',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dcdceba6-fb16-4a6c-931e-2421e8d97f33_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5b293a68-b5b4-4700-b5ac-6a2a0939af35',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Além Do Sol',
    'Sinopse: Luana Silva, filha de um grande advogado e formada em Yale, vê sua vida virar de cabeça para baixo após a morte de seus pais e o ferimento de sua irmã. Sebastião, herdeiro da família Rocha, a contrata para lutar pela herança e ser sua namorada secreta. Luana aceita para investigar a morte de sua família e buscar vingança, mas ao seduzir o irmão caçula, Ricardo, descobre que está grávida de Sebastião. Segredos sombrios aparecem: Sebastião pode ser o culpado pela morte de seus pais, e Ricardo também não é o que parece. Entre disputas e mentiras, eles se apaixonam, mas Sebastião não consegue resistir ao seu jogo de poder.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/464fbae2-acd7-4e38-8aba-ba220dfcb4eb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/32f383a1-54dc-4dc3-8bbc-b38df77e8d3b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Noivo que Valia Bilhões',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/80daa62c-3558-4066-95df-5e2327c27f6d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3d7c1fd7-5058-4129-a176-7d60b9e26ff4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Doce Veneno Chamado Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/35ec7228-26df-4fa5-85ef-a79573d260cd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c5fc3e89-2be4-4cf3-ae2d-af971b4610be',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Acordar Casada Com Meu crush',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/26b2aa81-c936-4487-a69b-9252f9d2758c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/46b29323-9544-480a-8bb3-5cb54ab9f0d9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'BAD BOY DA MÁFIA É MEU SALVADOR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f7e636c6-5597-44ff-9e70-fe147634fe13_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d3ddbd8a-fdf9-4280-8959-c07830a7eb4f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Raposa Da Fortuna Da Grande Fome',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e0e3c986-2fcf-47b8-a829-34ab377a48b3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/37631754-1421-4cc5-9fe1-9f0005af281e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Aja Como Você Me Amasse',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0059b613-4808-42ea-986e-089d0cf21f11_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8a6efc64-9419-4d94-b1ec-4af32412c35c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Agente Secreta Que Enriquecia Com a Família',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9e8a836d-600e-46ce-a569-3c544173356d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/25a2bc0e-a424-48f2-b0d3-8668591ed160',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Fera Que Ele Criou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/83df61d1-9770-4bc9-a196-fa74b99058f5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/33c68468-9702-4f3a-b1e7-451bce93a349',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Aurora Oculta: O Governante Ascendente',
    'Sinopse: Diz a lenda que qualquer um que conquistar o favor de Don Alaudio, o inalcançável, terá sua ascensão meteórica. Mas ninguém esperava que Adriano, um simples entregador, invadisse a sala de reuniões do Grupo Prenhor sob o pretexto de "precisar entregar um pedido urgente" e, com poucas palavras, resolvesse uma crise comercial. Trinta anos atrás, Dona Salles me disse: "Se alguém te desprezar, esmague-o, use-o como degrau e prove que você nasceu para reinar!"',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/775cc24b-ee5c-4745-a3e4-a780fcda01cf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1ec0ca49-81e1-4708-8ec7-7881e274f4ef',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois da Geada, a Última Luz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c5234e0f-055b-494c-ac78-dc83e906b9e5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/22d9eb87-35d7-4205-997e-6d9c96bd3908',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Tolerância Zero',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b6c3dcc2-63d8-4039-b3c7-c6dd24e82f55_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/496a26c7-83d6-465e-9691-74139524d41e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeira Vs Impostora No Jato Privado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f67a9bee-9c6c-4055-b6bb-8f7e8943f12b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/eabbd486-4dff-4176-a830-56c031b34c57',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Criada A Dona',
    'Adeline, mãe solteira divorciada, trabalha como empregada do bilionário Eric, 50 anos, solteiro sem herdeiros. Após um acidente romântico, engravida acidentalmente. Perseguida pelo ex Jason, Eric a protege e se apaixonam. Com seu apoio, Adeline se torna executiva na empresa dele. Anos depois, Anna, irmã do amigo morto de Eric e apaixonada por ele, retorna e tenta separá-los usando chantagem emocional. Quais tempestades ainda ameaçam a calma da vida que eles construíram?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9a038ad7-6767-49da-80e7-faf4b497a040_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5f3537c0-30d5-481e-a3ba-150e9d4afe03',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Entre Segredos e Mentiras',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c870d786-2137-461c-9da9-2b23c4145079_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/451d55f2-597d-456b-829e-3227a386839c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fios Do Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b8a12c8f-9c45-4a3c-9409-d9148c6b3e1c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0336f1e3-c278-4e5c-a530-ef09cd4f871c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Noiva Caipira Do Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8dd02393-72aa-42eb-abb0-be94f94b0f25_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6fd5032c-9639-4e00-a484-03d2cddc8074',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Superando Meu guarda Costa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4a46e7aa-d64b-415b-b5b2-a363306af173_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b154e7f8-d783-42cb-b861-ec35ec930b48',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Bilionário a Pai Em Tempo Integral',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f7d13559-7192-4935-8526-5f5d3f26c8ca_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/65180415-d696-4e5d-a43d-532ae83c453b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Resto Da Vida Sem Você é Um Deserto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5fc6ab50-f6b9-45df-9a27-d797f297cd8e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2e572293-e898-4f8a-8020-9bb2ba88d214',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Filho Do Meu Ex Marido é Meu Prazer Secreto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81d7a228-ec55-4b49-8619-650e7760981a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5a2e5d7c-b21f-47f2-a9b3-0092ee1a6616',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Lua De Mel De Verão Com Meu Bilionário Secreto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3ca6f67f-fd6f-4127-995f-4ef51e87d986_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4a9d7224-80e6-4688-a012-61f98f57eeb7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Guerra De Vaga',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/50df8f1e-e04b-4144-a9ab-7dde61791b3d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f4dea301-41a4-4665-a48a-d296db44ed2a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renasci E Agora Eu Mando/ Novo Amanhecer/ Determinada E Forte',
    'Elisa Moura foi uma estrela do mundo dos negócios — até ser traída pelo irmão Caio e pelo noivo Henrique Vidal. Entregou tudo à cunhada Bianca Lacerda, sem saber que seria o início de sua ruína. Assassinada de forma cruel, Elisa renasceu decidida a se vingar. Na própria festa de noivado, rompeu com Henrique e destruiu o plano de Bianca de entrar na alta sociedade. Mas Caio ainda estava cego. Cabia a Elisa abrir seus olhos… e provar que uma mulher forte só cai uma vez.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/37ce08b3-3b93-433b-a3f7-5a9d738eaa57_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8c12d7a1-a01a-4347-a5d6-da24a0b10de1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Defendida Por Ele, Contra Todo Mundo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6cf1f75f-7c5f-41ae-b27e-d46d36222b15_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/d630a3b6-83a9-4377-894c-8ec412320483',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    '180 Dias Para Virar a História',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1d35def7-e195-4835-a06d-4c437cb8660f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dce45770-78ef-417b-b5a4-4460ca3e5359',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Último Testamento De Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/12f10e5b-476b-4574-b57f-373d33944754_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/94d82ea2-42b0-4c1d-ad47-7e2c34e9ac45',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Seus Alfas Desejados',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4766b5f5-4a7c-45c3-baa9-83613608af9b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/887e20be-b08b-4b2b-adee-438455a75883',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Professor Ficante é Um Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8f410fae-aa5b-4925-a7b8-4ca7e064fec0_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/953c1862-f35c-48f5-bc1e-4de53ae24f6a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor Perdido Na Neblina',
    'Cesária foi recolhida por Mauro quando tinha sete anos e ia se apaixonando por ele com o passar do tempo. Todo ano, ela confessa seu amor a Mauro aproveitando o pedido do aniversário, mas ele, por ser dez anos mais velho, se sente culpada por seu sentimento igualzinho por ela, e opta ficar com outra. Em uma bebedeira, os dois têm um caso e Cesária fica grávida. Esquecido do ocorrido, Mauro acusa-a de sem compostura. Com coração partido, Cesária decide largar...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7b142f6b-e76e-4d5c-b960-1d0354ed576f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5f2a37e0-75a2-4f6f-ac26-02a88729fc21',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa Da nova Família',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/af37e11a-b424-47bc-84d4-e1c5453a9224_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4e889be0-126c-468f-bf2f-e9b6a44c3c77',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Do CEO é a chefe Secreta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/380d3688-1cfd-48b4-a3c2-59248d87b6ef_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1c8fad21-d3ca-4466-8def-10b295e81f9c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Plus Size Do MVP',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9daa6bcf-af90-4380-bad0-36fa41558b74_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7ade0dd2-4e7a-4e55-a6ab-00c9822714e4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ja Que Você Nunca Foi Minha',
    'Quando a mãe de Júlia adoece, ela finge trair Bruno com Dirceu para não ser um fardo, justamente quando Bruno estava prestes a pedi-la em casamento. Desmoronado, Bruno decide construir seu próprio império com o apoio de sua família. Cinco anos depois, agora como CEO do Grupo Monteiro, Bruno reencontra Júlia, agora funcionária no seu grupo, trazendo de volta lembranças, mágoas e sentimentos nunca resolvidos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/906d257a-0fa0-425b-953e-25f0ee7f7b7b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3c5bb2c1-bc39-4c64-8ba1-370b9a7ee4c8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor e Vingança Sob Chuva',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5746ea73-32d0-4916-a23c-da9d67d524c9_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/92d3485a-1ba1-4a15-bdbd-2d1385e11d8a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Estação Sem Ele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/33ca74cd-cd01-40fb-8ab4-44394b1dcb21_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/18e3385f-a80d-4d0a-a94c-9c369db188c9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Sombra Da Lua',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3816e498-aed3-44bc-b37c-c3a949182262_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c4d45b7c-fc2a-4afc-8b7e-e4f419002517',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Caseira Expulsa: A Caipira Retorna Vitoriosa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2056b1b3-51de-487d-a6b9-c7b13dd9524c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2980746c-a262-460b-9c81-2a0cb03093b0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Obsessão do Ceo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/23ded839-120f-4c36-9128-7e71916d3092_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ebf219be-233a-4b2c-b266-ec35587692b7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Secreto Com a Doce Esposa Da Sorte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81693703-74b0-4265-8975-9f1e0fb73521_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/98b1bb59-3b56-4ec5-931b-7267616326d2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Adeus Ao Passado Ola Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0302b32b-9458-428a-87aa-442ba4810d4c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/39a99fa6-180b-4cf7-a802-50510efe6aca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chefe a Luz Marido a Escuridão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/41362c08-a7eb-467a-bd66-e8dabc36f1fd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e0036edf-13b8-4c68-ae68-786ba718263c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Entre Cinzas e Desejos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/12210917-fa4b-435e-ab24-78addbe1f5f2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b1cd173c-71f0-41d6-bbb5-eb161dce4abb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Espada Do viajante vinte e Quatro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/25f8f071-d587-4052-b7f5-e675364117ad_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/896194d2-4f2b-45ec-b268-854194db7842',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Assombrado pelas Lembranças De Você',
    'Renata se apaixonou por Roberto à primeira vista e, após seis anos de dedicação cega, finalmente se casou com ele. Mas em dois anos de casamento, nunca foram verdadeiramente marido e mulher. Um dia, Renata descobre que Roberto nutre uma obsessão doentia por Patrícia, sua irmã de criação. Cansada da dor, assina o divórcio e vai para a Alemanha, onde reencontra Fabiano, seu admirador secreto há dez anos. Mas é só então que Roberto percebe: foi Renata quem ele amou o tempo todo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c35db22b-caf3-4629-8509-d74ede17ce86_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e5c332a7-463a-4a34-97f0-638ae6bde715',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Poderosa Renascida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/99c14b87-28df-4ade-aa66-18df9cd8c1d0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f7b6dba7-a8bd-472a-86c7-cf9cf5f8a97a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'SOMBRAS DA VINGANÇA AOS LOBOS',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3916be5a-ebc1-4065-a951-d9cdf8dc9bb0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ecdff039-6681-485c-8c53-626a8b3dddf9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Faxineira Milionária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/15aa2254-4b45-4f34-a547-9108a7011dc7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d7e66189-4b80-43ce-8ff7-36f28db39ed0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Menino Bonito Da Máfia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1f60bd98-b95e-4ac8-b99b-b4a1083eb59b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9778549b-b34a-4cff-95ba-c25865dbcad3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Vida Dupla De Um Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c5b611e3-22cf-4572-bae0-995117fac545_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3d998ff6-5f83-4bbc-9884-65dfb41e055e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Pensamento Revelados',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2c41ff7e-50d7-4901-b376-bb3987ce571b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d6d44c99-fca1-47b8-8dfc-1ae3da4ce4f8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva Para Lúcifer',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e1cdfee1-f499-4d9e-836d-625a466b51fe_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9030f81b-076e-4986-88b4-426cd0445049',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Estrela Cansou de Esperar',
    'Sinopse: No dia do seu aniversário, Ivana Costa é traída: seu marido casa com a ex, Ana Lima, e até seu filho prefere a nova madrasta. Cansada de sofrer, ela volta como Serena, uma famosa violinista, decidida a viver por si. Num torneio, ela desmascara Ana em público e chama atenção de Ivan Pereira, um homem que sempre a admirou. Juntos, eles enfrentam o passado e mostram que a verdadeira volta por cima é viver bem.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5bf50a1d-b8ff-47ac-90ed-a2fc442ca3c2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b9d2f750-0824-49f9-a437-93f4e77a4e49',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O CASAMENTO QUE VIROU ESCÂNDALO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b14b34c7-8563-424f-9c72-e3df8e2732f2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/75ef09a2-806e-47a3-89f5-44676be197ac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Poder Do Conhecimento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dfe24113-fb5f-42a2-9799-ee8cc2a45f02_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b9d7406d-53db-4247-8229-49fd3692c641',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Companheiro é Um Licano De Rua',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ca476f8b-4fdc-4ccf-a176-3474c71c3ed9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/464c0980-c477-4c2a-896e-756541c40e87',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Tio Não Me Acalme',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/05765310-9db6-423c-af8e-8bd468231db9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b418e8f3-4fc0-49d6-8772-9e5d6986af1d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mais Uma Amostra do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/896d0e3c-95be-40eb-9d07-b8ec912b8285_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/92ca9aa3-2c83-4008-9403-699076179d3c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Herdeira Retorna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ca99d517-b70d-4f31-9052-06bad8242f4c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0f3f58fa-0789-4d2d-8115-3059ab3584b4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Encontrei Um Marido Bilionário e Sem Teto Para O Natal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1e41abfe-945a-467c-a2ee-66cff0f802a0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dff78571-3f4a-45e3-a8c7-a6d79da6197b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sonho De Saudade Do Harém',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/15c8b6c8-0952-49a4-a3db-e98f7484b833_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/aa51e59b-b044-439f-9e7e-e7e2925596b4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Noiva Dos Alfas Vagabundos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/47c4e691-04c7-4db5-8ddd-82bccb1bd504_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cbadaaa8-13de-47af-ab90-8d3a19078f52',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ela Armou Ele Apaixonou',
    'Grace, órfã e prisioneira da própria família adotiva, foi criada com um único propósito: ser vendida a um oficial corrupto. Mas ela tem um plano. Determinada a fugir com o irmão deficiente, a jovem joga tudo em uma última cartada, seduzir o bilionário Jackson Carroll. Grace decide virar o jogo e usar Jackson como sua arma.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5c4ebaa6-d54e-4c01-bb50-87d344f5b002_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/acb4c826-e766-49d4-accd-6854d329ff3f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    '3 O Número Perfeito',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/95d5f7cd-7284-4f5b-b769-a9a9e98c7215_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c9831666-1b41-4203-a4db-b8f7c8784624',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Princesa indomável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/417f6afa-4415-48b6-a7db-617a17ca1d00_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/57040033-9237-46cf-9cef-14c4f05ec2bc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A NOIVA DO MAFIOSO DE VOLTA À COROA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/259d61dc-33b7-4fc6-818f-45ea6c5a4181_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/83ec3000-7fb7-4939-a7f0-a86d814f2700',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Papai, Por Que Me Deixou Morrer',
    'Quando um tornado atinge a cidade, William faz uma escolha devastadora — ele salva a ex-mulher e o filho dela, abandonando sua própria filha, Fiona. A menina não sobrevive. Rachel, destruída pelo luto, carrega uma verdade que não consegue revelar. Com o funeral de Fiona se aproximando, será que William descobrirá o segredo antes que seja tarde para reparar seus erros?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5a2e998e-22a9-4947-8b56-f69a36ff5985_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c7066528-397e-4af3-bc42-9d909decebf8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Melhor Céu Que O Supremo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/beceaf5d-1799-43ed-ba06-f5595da73e84_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/71b36162-486a-40d6-a9ce-0a4ee4f36ffe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Pinte Me Como Seu Sra Beijo Ruim',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8ed3a598-302d-4b54-b3f0-1233857f6490_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e8d6df36-29f0-483c-97f0-17ad3d8821db',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casou Se Pela Irmã e Enlouqueceu',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2d891769-23e5-4836-9966-b26b162b01b4_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/139c82db-bfe0-42c6-bbc9-1882b326d550',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Primeiro Amor do Quarterback',
    'Após ser traída por seu noivo quarterback, a vida de Maddie desmorona. Até que ela conhece Cameron, um jogador misterioso com um rosto estranhamente familiar. Mas enquanto a paixão entre eles cresce, surgem três inimigos: um ex obcecado, uma líder de torcida disposta a tudo e uma mãe ciumenta. Será que Maddie vai ter uma segunda chance no amor?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/29e0411f-7311-43c4-8735-2da5363b1198_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d17cdcd5-d538-4e0a-bc44-2329df5248ea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Novato Mais Forte Do Mundo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3d8c2924-6bb3-4b39-9a01-1d8d804217bd_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/23250858-1735-4fde-abfe-7af2b283560d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Garimpeiro Ao Seu Amuleto Da Sorte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cb358ce1-955f-467b-b99c-277be5c28466_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f4e45edd-b3b0-4fce-b5a3-3aa02256aabc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Último Suspiro De amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/86786844-f63b-4b4e-94c9-69e7ea9f0304_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8af0899f-d9be-4c83-8ebf-14b5f0db7113',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Paixão De Alto Risco',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5fef368a-06da-438b-a132-c9336e8d61eb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/500158c2-ed8e-443e-ac1b-9644eeb67f83',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Três Chances Para Te Amar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/49c7ec35-caf9-4107-88f0-34976ef84c0d_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/d875314c-dcf0-418e-9d57-3a2be36c9476',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quem Ama Acaba Se Encontrando',
    'Ana Lima e Pedro Silva estiveram juntos por três anos, mas Ana foi forçada a terminar o relacionamento sob pressão do pai e da família Silva. Três anos depois, Pedro retorna como um executivo de Wall Street e implora por uma reconciliação, demonstrando um amor...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9537e3b3-d9f2-4ea5-9aa8-80eb97cda228_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/08b35fe5-5d27-4909-a1ff-95421c351d3a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Relacionamento Indefinido Com Meu Amigo Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dc248a30-ae36-45ed-ab0c-4f5d8048af7f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4ead10f2-42d3-47ea-9181-a2cf0efdfc66',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jamais Te Deixarei',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/46debcb3-5aa0-47de-81a7-b0473c6e1ad0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/df9b0654-1da5-4b52-8c63-289efd4dfb35',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Como Domar Uma Coroa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8932c666-ac66-414b-a414-f1e52c29b4cc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a6805501-17e9-49b4-bc73-cd689c4f12ce',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sr Victor Me Ama Em Segredos',
    'Victor Neves, o Playboy mais famoso da capital, surpreende a todos ao aceitar um casamento...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9b327652-53d0-4e84-ae87-35b194c3d8d4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/230eb25c-ff70-4c8a-9048-527aed4f1c11',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Laços De Champanhe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/67b5ca91-d8f6-4d60-a563-fef0eb68bf8f_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/06e0e238-4fcc-47a8-8ea3-d7e5bbba00e5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Princesa Verdadeira VS Rainha Falsa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cec5811c-cc54-4640-9518-a2d6816c2d48_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/95c15fdf-8959-411e-8ee1-1a99672084ce',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Eu vou Me Casar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b1ed98d2-7629-4827-a045-6f48f003576d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/37fbc556-10c4-4819-9e48-d020feb718dd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Zeladora a Senhora Bilionária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6a3dcc01-684b-48a9-ac12-0e3d5598c664_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/88c62b99-4cbf-48a8-89ed-77d76196d25f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Do Contrato Ao Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/58806731-0dfe-45cd-bd11-bb499590df8e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/70a358ee-9bff-42ad-9b7a-c28632768c04',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Secreto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/46ae4df9-fe3a-4a00-8b0c-92703a3bc0b1_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/de9a7dd7-a2fd-443b-9526-cab70b3331a6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Menina Que Fala Com Os Animais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1f81ff2c-da9b-4c83-ac10-d948e54fa5e0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2958726b-70b1-4db7-8bef-a6817d119dc8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mamãe Tá Doendo, Cadê O Papai?',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4e35b1ed-5670-451e-b20f-3c5a689b3da5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d8b14070-ce91-4534-8446-1b649d8c703c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Por Ela Eles Me Mataram',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2602302b-c077-4166-9d05-d3c26d9bc030_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4e6e891b-99f7-4baa-9f33-f42d5713c686',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Entre Amor e Desprezo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4b5f219c-8c4e-420c-b10f-5d9ab4f75809_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/80553bca-8743-4972-a4a1-862fb3bedec7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quem Vai Envelhecer Ao Seu Lado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/86f681a6-b98f-4bd1-83bf-ec1bf43332b5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3c5eb6bf-6459-42f1-ab9e-094ad952c64b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Guerra Em Casa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9f8e8a48-0996-43a5-ad54-4e7c27c9a5c4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a8a30ecf-0fac-4d9e-96c9-2b342f3fe345',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Memória Perdida: A Vingança da CEO',
    'Sinopse: Depois de sobreviver por pouco à tentativa de sua família de matá-la e enterrá-la, uma poderosa CEO perde a memória e fica com a mente de uma criança pequena. Vagando pelas ruas como uma pedinte, ela é acolhida por um CEO aparentemente frágil, mas influente. Os dois entram em um casamento relâmpago, enfrentando constante humilhação por parte da família dele. Um confronto intenso com a madrasta dele restaura inesperadamente suas memórias, mas ela decide manter sua verdadeira identidade em segredo...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7c89d0ba-c283-4711-af17-6fe1da60fabd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ba18f5cb-a98a-4d9e-82ac-f4e5bae5fa80',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amante Nunca Amada A Herdeira Mandona',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bcedb504-e8fe-4afa-90af-c8beb7ea855c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3945d05c-04a5-4604-9589-09d90afdd296',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Meu Mundo Termina Com Você',
    'Sinopse: Para vingar a morte do pai devido a negligência médica, Lucas retalia contra Sabrina, a filha do médico assistente, jogando-a em um hospital psiquiátrico para tortura e humilhação. Mas o que seu coração continua lhe dizendo é…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f8c6417d-786e-4e66-bfdd-13ec56a86866_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f58d4842-71d4-4f5e-8685-89da7cbc848d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'No Limiar Da Loucura',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3888e6fa-579b-49fe-b296-fc6a845d9cff_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7423b835-3730-400c-b39c-cce6a18939f1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'The Fake Debutante And The True Billionaire Falso Iniciante e o Bilionário Verdadeiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8651fa64-26c9-4a39-af5e-78c7c5016c4c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1cb4ebd7-53b9-4e14-a053-99bb490b6a69',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Heroi Nunca Deve ficar Abaixo/ Hero should Never Stay Low',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/368159e3-cd5d-46b9-bfd4-0d572236c598_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e402e444-9233-449f-a2d4-a3291dc03e25',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Nos Limites do Sacrifício',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6e83b8d2-793a-4b15-aed0-b4813e4eb487_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7505e412-690b-4380-84b1-c9dd92657693',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CASAMENTO RELÂMPAGO COM ESPOSA LEGISTA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e74f1145-82bd-4df3-9901-086e0709f745_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8ed2eaf0-db6e-4917-941d-046e4a4aa2e8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O CHEFE DA MÁFIA DOMINA O INSTITUTO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2c6b0f72-ce23-46e3-ab09-1131551ca9ea_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a94db463-66d9-40d5-ae1f-0ca6f4ef99bc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Aprisionado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/66e7dc0d-0710-4b8f-892a-43282fddbf3e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d93b3d35-de0d-4013-ad8d-1a0ad7921545',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Irmã é Incrível',
    'Angela, a primeira General da fronteira do Norte, retorna de uma missão para participar da festa de noivado de sua irmã mais nova, Ana. Por vestida com a roupa de faxineira na missão, ela é desprezada. Ana, ignorando as críticas, defende Angela com determinação, revelando a forte ligação entre as duas irmãs. Angela, por sua vez, dá o troco com seu talento, humilhando a família do noivo de Ana e apresentando a ela Pedro, um homem ideal e de alta qualidade, como novo namorado. Mais tarde, Angela e Ana acabam encontrando, por coincidência, seus pais biológicos, que as abandonaram no passado devido à preferência por filhos, Angela decide dar o troco no dia do aniversário de Ana, lançando um plano de vingança para fazer com que os pais arrependam-se amargamente pelo resto de suas vidas.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d391ed4e-1f74-4fd0-8e74-3e56985b36b8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cca3da68-39e0-4707-960c-58e9ca8bf688',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quem é o Pai de Um Triângulo Amoroso',
    'Sinopse: Catherine, ex-editora-chefe de uma revista de moda, abandonou sua carreira para se tornar a esposa perfeita depois de se casar com o magnata dos negócios Stephen. No dia de seu aniversário, ela se prepara para uma noite romântica com ele, mas depois descobre fotos incriminadoras de Stephen em intimidade com sua secretária. Furiosa, ela procura consolo na casa de sua melhor amiga Amy, mas acaba acidentalmente passando a noite com o filho de Amy, Alan, que secretamente nutre uma paixão por ela desde os 13 anos. Um mês depois, Catherine descobre que está grávida, mas como as linhas do tempo de seus encontros apaixonados com Stephen e Alan se sobrepõem, ela não tem ideia de quem é o pai. Enquanto ela se debate com esse dilema, Stephen, que havia desaparecido por um mês, volta para casa de repente...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5651a482-e2e8-416a-827f-5f3707b8ea81_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6a96e0ca-b184-43f0-97fc-131e7dd13b41',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rosas Do Abismo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b88e4551-de37-4a03-ad73-395c5845e7cc_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/5d86705f-8a63-499a-a846-48e3870d902d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Amante inimigo Que Paga De Durão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5c725173-67a4-4d21-a231-14594a330102_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fabd2c91-eee1-4730-8363-9411e453ac94',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Coroa Além do Túmulo',
    'Sinopse: Ex-supermodelo que já foi um fenômeno, agora reduzida a vítima de traição e conspiração. Porém, em seu próprio funeral, ela surge de forma deslumbrante — o que parecia o fim de seu destino revela-se, na verdade, o ponto de partida de um renascimento...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/be567ce6-1a3c-49c4-969e-42d7c08cce4d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/72cf9af7-13d3-4f90-ba93-e66aa8d48de7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Segredo do Anjo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/82c3f7ea-ca9c-417a-abbf-62f6acbc2ab4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8deb682e-a7f5-47d2-8451-a9935008285d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Lar Doce Lar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fa59f3fa-665a-4b22-b757-9293a6d7db8b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3a70c3c6-089a-43e4-ab4c-828be08d4963',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando O Amor Apaga Memoria',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8331a9ec-2644-48e5-aa35-73d4a9e03859_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/c97986b6-558d-4689-97d9-251bc6646ff7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'QUANDO DESCULPAS NÃO SÃO SUFICIENTES',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f74da416-3d80-45a0-9e37-d7760c4a1d4e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8c49a8cb-5853-4bb4-91c2-0be5ef7f9b0a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Crédito Roubado Amor Perdido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5bb13584-e2b8-4fec-9f21-4569431ace58_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/99c3bb56-4b7b-4552-85f7-a11b69f379ac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Domando O Senhorio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/adb1d6c2-7e3a-4f20-9110-e444baebe498_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/2f47368d-799a-44c2-b2b0-8e75fc95a38e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Pix Que Mudou Minha Vida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b0f31a48-60b8-4ddb-8eda-3dbcc664b8b0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2e64ec3f-ea8e-43b5-8cd7-691a6550a8d8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Despertar Da Eliza',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/455853aa-01a5-4204-abe0-597dde35d899_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/51adfbfa-4ade-49e8-9491-5f7e6c7d7da5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Último Adeus ao Ente Querido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8d56490b-7312-4bb2-b3d4-cbfcdfa5c124_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/673313d4-2342-4fff-bb8a-46b512f9d478',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segredo Do Meu Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cfe2bb06-ff08-41f3-9df6-5170155c9088_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ddece148-3001-466a-ab0b-a498a7728f5b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vá Torcer Bebê',
    'Jane, mascote do time de líderes de torcida, sofre bullying na escola. Após um tornado destruir sua casa, ela precisa morar com seu antigo inimigo de infância, apelidado de "Gordinho". Para sua surpresa, ele agora é o alto e bonito capitão do time de basquete.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a973922d-9512-4008-a7c1-1496a0c8502d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/93a7247c-ae1b-4733-8d55-5695e6ae8497',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Três Bênçãos Imperiais A Ascensão Da Fênix',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ad7b282a-e2b7-4d17-82b2-ada4a6086387_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2e5794e2-0515-4cd0-9e19-1ddeae263bca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A vingança Do Genro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d99a195d-3b48-46fe-b056-eaf84c6524f6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4fed5b09-de0c-49aa-9a44-ae0ae321a74b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Princesa e General A Jornada Da Heroína',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eeaae943-da2a-4cec-a8bd-26686d4330d9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/22671f7c-7f6e-4b92-ad9e-1d8e893a9ec2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Seu Nome No Meu Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3ad0c681-9004-4f65-b325-5a209476836e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/03605df1-0350-4475-a458-abc7129be49e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O DEUS DA GUERRA RETORNA, SUAS SETE IRMÃS SÃO EXTRAORDINÁRIAS',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/671663b1-85a3-44d2-ac99-ebd172c35b09_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8bcd06d2-1c7d-4391-9b9d-a0c6f07e7a4d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apaixonando Se Por Meu Guarda Costa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8eadb7d7-c3ec-4c1d-be14-4c782357eb21_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0e3ff54b-f6fe-4bab-8776-31ddaac81159',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeira Oculta Da Fábrica',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/077b56c7-23c8-428e-986b-c6a169ea0da8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/47965583-532c-408a-a235-cb0401ae7881',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Punhos De Vingança Ela e Ele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db4510f3-9916-4cdd-89b0-7a4a2caa82ee_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e8a7fd5e-8708-4696-ae27-00e3f8ccba22',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Mr. & Mr. Ace',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/93b81eaf-345d-447a-833d-a04722918a13_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9cb23e7e-348d-4a64-867f-eddc43fcfa77',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Menina fica Viral Família Pede Perdão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/30ff327b-341e-4404-bab3-f8383a8919f3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/85ed1d61-e7f4-4fc6-ab8a-445cddaf2b63',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Como O Sol Nascente/ Aurora Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1e6f1f3d-a078-4397-937e-4bbd9ec7fe7e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/af090622-a5c9-40b4-b995-87688b370dde',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jogo Do Desejo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec9fa0df-e37e-4466-8d8b-07263e42e2d0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c90124a4-1532-4433-bd83-42c4f6b9e27c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Herdeiro de Seis Anos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/222037b9-bcd3-4f51-a12b-14936cf07df6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fdaff7a2-393b-4674-9311-d38d03490d2e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Eu Vou Me Casar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/09b2915a-d783-467b-a625-bd9cd9240699_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/87fcff91-aff5-4801-92c9-348a2de57b6b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Como Largar Um Astro Do Roquei',
    'Renee abre mão de sua vida de herdeira bilionária para ajudar o marido a se recuperar do estado vegetativo e a perseguir seu sonho de jogar na Liga Nacional de Hóquei. Mas, após sofrer um aborto devastador, ela se depara com uma verdade cruel: o homem por quem ela sacrificou tudo… pode ter escolhido outra. ',
    'https://v-mps.crazymaplestudios.com/images/de71ad60-42ae-11f0-b65a-27549cd2a91e.jpg',
    'https://iframe.mediadelivery.net/play/407552/ba6cd453-7788-48a0-bdbc-6a9a41869d6a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O CEO Infértil Tem Um Bebe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/003389f2-c318-46d4-9dd5-2c3754cc9d0a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e2e3c8da-1afc-4f7d-80c7-fc8215389369',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Juntos Para Sempre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a8d7c000-315c-480b-908c-39bd870b5c02_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/452e4c14-caa9-48f4-81da-dc07af91a4e3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Julgamento Da Rainha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/803a2cb7-4fcc-43c1-b3c3-105af909931b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5038b960-5a6a-4854-80c0-35ac1100ca65',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Mexa Com a Mãe Bilionaria',
    'Quando Emília, a herdeira da milionária família Almeida, vai defender os direitos da sua filha Lilia no inventário, descobre que o seu marido, David, tinha outra família com uma mulher chamada Sara.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/70054e50-0719-4a50-af08-1023996dc8e9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/60cc26d3-dd9c-45e8-a6bc-bfd6dfca7774',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Além Do Trabalho O Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/589a6cfd-17e1-492b-a4e7-9e4f3e4a3d42_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/44fcbdc2-8eb9-433d-8a1f-275746a96fbd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Perdão Morreu Com Meus Pais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d0cd0701-6e0e-4319-9154-e7c6348b5fa0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/78824572-042d-4905-b699-30c7b120a15b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ela Deslumbra Todas As Pessoas Após O Divorcio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/74876373-6e5f-4e09-97fb-d9692b66bf59_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/af9d26d8-36af-4fce-8a22-002cc99e3424',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Meu Ex Marido Bombeiro Queima De Arrependimento',
    'Sinopse: Após a trágica morte de sua filha Alyssa em um desabamento de um centro juvenil, Hazel busca justiça e vingança contra seu marido bombeiro Jace, que preferiu salvar sua ex-namorada Candace e a filha dela, Kimberly. Consumida pela dor e pela raiva, Hazel considera Jace e Candace responsáveis pela morte de Alyssa. Enquanto lida com sua tristeza, Hazel transforma sua dor em uma campanha de caridade, criando uma fundação para ajudar crianças. Carregado de culpa, Jace tenta se redimir de suas decisões, o que o leva a um exílio autoimposto. Por fim, Hazel segue em frente, encontra um novo amor e deixa Jace para enfrentar as consequências de suas ações.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/07a13896-c62e-42a7-b66b-a29df7cf8a04_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/93a00d17-5b99-4cfb-b036-f87bf25b2930',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sedução Escarlate',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8c100586-93db-4aaf-b0e7-31711178ff4f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/87534554-1010-4fe9-90ea-6010bf618b88',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Seu Amor Passou Com O Tempo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e90dc2d0-0c10-41d4-9033-449cf496a53a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a763f4ac-fe9a-4a21-91da-3a8f7154dcca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sendo Madrasta, De volta Aos Anos 80',
    'Sofia Neves acordou do avesso: ela voltou aos anos 80! Agora ela é uma falsa herdeira expulsa de casa para se casar no lugar da verdadeira herdeira com um homem velho e divorciado que tem dois filhos. Sofia decide se casar, mas não esperava que o homem fosse tão bonito, sempre disposto a agradá-la com dinheiro. Ela enfrenta habilmente os insultos, desdéns e intrigas vindo dos parentes e da antiga família adotiva. Desculpem! Mas o que não me mata, me fortalece.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1893fcbc-c7f3-479c-9380-f7be30b0d6da_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a7c6585a-2403-4cae-81b1-06d057c7fc84',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segunda Chance Do Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d96b6705-cc9e-4ee0-b86f-0b918b825d14_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dd04026b-b50b-4c07-99b6-c727f3f0c688',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Diante Da Rosa Silenciosa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/95f4f4e3-4f73-4689-b621-86fcfb44ce44_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/55dedbeb-28be-47f5-a434-cc7d7bc849b9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reencontro Com Uma Paixão',
    'Sinopse: Após um grave acidente de carro  que o deixou temporariamente paralisado, ele acreditava que sua namorada o havia abandonado no momento mais difícil   Cinco anos depois, o destino faz com que seus caminhos se cruzem novamente  e a verdade que ele descobre é muito mais profunda e emocionante do que imaginava   Uma história sobre amor, perdão e recomeços.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2d49399b-8eb3-4319-9e8c-67a5b817f336_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f3b2e24b-630e-4b65-b473-62120c955cfc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando Eu Fui Embora O Arrependimento Começou',
    'Sinopse: Sophia, traída pela própria filha adotiva Olivia, foi sequestrada pela poderosa família Grayson! Três anos de prisão injusta, acusações falsas e um passado cheio de segredos sombrios... Até que ​Tristan, seu misterioso mentor, aparece com uma chance de fuga. Cinco anos depois... Ela voltará para se vingar? Ou seu novo esconderijo será descoberto?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1cd3046b-c6c1-4f81-a133-317619d7a756_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d5a0265b-44a3-49c7-bd7d-5e6b4af33eb3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Predestinada Ao Rei Alpha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7ddbf2f1-accf-4469-966c-a482d083547d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2da757f2-ea4e-4815-b192-4650e18eebed',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Tive Um Bebe Sem Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bf189e5b-88f8-4b8f-b7a6-bb27da7fd52a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8f8633bd-d25e-454a-afdc-a05a18e7ebbb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Encontrada Pelo Rei Lycan',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4b002087-1173-4370-9f11-1b348ab6d4cf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bf5e6a1e-33e2-4497-b4b9-edbc872e2a48',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'DE NINGUÉM A QUERIDINHA DELE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/13221a95-10be-4dc7-805d-8395bbe82a80_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cc598b7e-730c-4598-a7aa-a1bd4aa31e5e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Marido Falso De Nocaute',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a00664a7-eec5-4840-a6d6-3b70f20bb483_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d64fdb4e-4466-4aca-8530-086aadf62d93',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ascensão Do Pequeno Mestre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/783f3868-6f15-40ed-8238-129057707de2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2e192204-dfd4-48d9-af1e-e7bc0e6c4e42',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ela Nunca Busca Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f09a9c0a-3d50-436d-bbb1-bd0485facdb6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/67326828-977d-4088-af1d-1433f48a4ab3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Doces Mentiras E Amor',
    'O grande sonho de Lydia sempre foi se tornar uma confeiteira e adoçar a vida das pessoas com suas criações. Mas sua própria vida é marcada por amargura e sofrimento. Tudo começa a mudar quando o bilionário Scott aparece em seu caminho e, com uma pequena mentira inocente, transforma o destino de Lydia. O que ela nem imagina é que tudo isso teve início há cinco anos, graças a um gesto de bondade que ela mesma esqueceu...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8e5e9ccc-8be5-4f65-9501-1dfae4f0b7eb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ea606e74-8cd6-46a3-842b-0e98c492e8b8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O APOIO DE UM PAI',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a3728e34-e395-4c30-af87-dded1bf48e29_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1e4f83da-55d4-4fcc-b122-d874b0565cf2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Guardião De 5 Anos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f8402a45-5d51-4b0a-9fe7-987b4458f5ae_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/e9732689-4ea1-48a2-818d-ca4e6f5fd9eb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando Faltam 15 dias De Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/05e5d99e-c85d-4579-974b-57fb9926e908_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6f51296b-be1a-4471-9a3c-c9e512304cee',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Longo Verão Queima Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9ba5a576-cab4-4c2a-82ff-bebe671ab7ba_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9c66f62d-db73-449f-9d8c-df567d8dcd2a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor que Nao Volta Mais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/359d3a2b-5d17-4ffa-87af-2c1474002e02_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4cd966dc-3164-4f3e-b928-1067fb612d42',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Por Promessa Acidental',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c92efe5d-7a65-4de9-9e62-8bf77c5eff25_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4eae4da3-d3bb-4616-ba4a-cddc1a7aaff0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Tire Meu Folego',
    'Esta história intensa acompanha Annabelle, uma jovem que faria qualquer coisa para salvar sua irmã doente. Ela concorda em se casar com Henry Livingstone, um misterioso príncipe real com segredos obscuros e um passado perigoso.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c3728e89-d189-4b14-8b8e-5165b57cbb72_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2ae129af-2c8f-4df8-86b6-7d1747e8deca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Foi Trocada Na Maternidade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/63a79f02-4eb0-4e58-972a-2504f1087569_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/625205fd-a9ab-4add-b898-c7ae1f45b069',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Trigêmeos Acidentais Com O Bilionário',
    'Desesperado por um herdeiro para garantir a sua posição na empresa, Oscar recorre a uma barriga de aluguel. Mas, acidentalmente, o esperma dele é injetado em Phoebe, que apenas tinha ido ao médico para fazer um exame ginecológico. Para garantir que ela leva a gravidez até ao fim, Oscar propõe um casamento por contrato. E assim começa uma jornada cheia de desafios... ',
    'https://v-mps.crazymaplestudios.com/images/43c016e0-3c5e-11f0-b65a-27549cd2a91e.jpg',
    'https://iframe.mediadelivery.net/play/407552/efdffc70-80a0-453a-9650-75b3d8e6a6bb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sobrenome Meu Glória Minha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8d432d86-92f2-490b-bccd-43193b26f127_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cadc0ef2-6f29-4e47-812c-a9e8f8201a38',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fogo Entre Nós',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dbf051e5-3781-428f-b8ec-47b2b236eff5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/92cb444b-8dac-4501-a134-98b1a6a5955f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida Por Acidente Mimada Para Sempre',
    'Sinopse: Julia quase perdeu a vida pelo marido Klaus. No entanto, descobriu que Klaus a traiu e teve um filho com outra mulher. Desanimada, divorciou-se e recuperou a sua verdadeira identidade de neta do homem mais rico do mundo… Klaus sempre amou profundamente Julia. Pensou que Julia se tinha apaixonado por outro homem, por isso fingiu deliberadamente trair e divorciou-se, dando-lhe liberdade. No entanto, ele nunca poderia realmente deixá-la ir no seu coração…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/914acf33-0811-4158-bca6-b4ddf7c7561c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/eb76e093-472e-48ee-9fd4-c0d21bcd3179',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Capitão Deslumbrante Em Casada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ee4c26c2-559d-49ed-9240-47814a25ee59_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f4f60d10-d8f3-46a3-be20-11ec741b19be',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'QUEIMANDO DE PAIXÃO PELO HOMEM QUE ELA AMAVA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/86383abb-5e1d-43d7-86c6-cc228a905aca_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/820c370f-6028-4cec-8d19-6a4248bb1238',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Último Eco do Dragão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/958be523-b2d2-4d74-8856-0e6444759819_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b3aeb49d-1a61-4e41-8f00-faf8ca22a53a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divórcio General De Rosto Frio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/47f988e7-f685-40b8-82cd-ee2429dbc9a4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1ebe6244-a0de-4818-84bc-2ecfe2965863',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'FLORES AO AMANHECER TARDE DEMAIS',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f068d397-a2ec-4ab4-adbc-8998ab85ae83_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/be702502-fc4c-4451-833a-b2c0829a2f11',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascimento a Esposa do Padrinho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cce00e80-aedf-4e3e-adc2-742299773e08_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b122305f-5df8-47ff-98f3-3002988ff1c4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Me Casei Com o CEO Misterioso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/900680b4-d87f-493e-b36a-2d3ef098da64_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a52f5d71-3244-46d5-91ed-75cb7443c078',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rotas Paralelas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/107d890b-ff91-4792-a07d-e3b39cab7e32_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3bb272fc-c152-4684-afdf-d644024fb77f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reivindicada Pelo Alfa Que Eu Odeio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/12b6a16b-4ae4-4892-9ed2-8f599ddb6c87_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f341e875-6abd-4541-bc9e-cbc8557f80fe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Arranjado Noiva Errada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3894394e-f623-4d22-a1c4-0619e08de187_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8acca6b8-6394-490b-89f6-542023c7e5ed',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rosto Fofo Punição Implacável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/319b0b02-d840-405f-af5d-d1374de436c0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1418d4cb-6681-416c-b0aa-b900b2681208',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Inimigos Encantadores',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6d05a158-a175-4d74-be60-86706424ccca_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/81ba2e2f-7e18-484d-9fd7-d3b966e02ffe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Perdido No Teu Abismo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/839bb401-bc48-42ed-8e51-eb1f668d9f7d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6693e60c-ea8e-491f-83ba-1a9683fddf5c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'As Regras Cowgirl Agora',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4b01d844-b8c1-44e0-ad2d-895b0f6007cc_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/055b2912-b7f3-4b10-ac17-ce5f9bf6f07a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Herdeira e Seus Quatro Irmãos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/00919876-f5dd-4e6c-a10c-c6800d4413fd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/08e09f11-3384-4c09-855e-322f1f64ff00',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Amante Inocente Do Mafioso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/311a0a83-092c-436b-9a43-08757977ca6b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a68c96c5-ad9b-4b48-a218-db81bd20b446',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casada Com Meu Amor Secreto',
    'Sinopse: Após uma noite inesperada, Larissa se casa com o irmão mais velho de sua melhor amiga, por quem sempre foi apaixonada. Achando que o casamento não duraria, ela se surpreende ao ver o quanto ele a mima — tudo fazia parte do plano dele. Larissa sempre foi o amor da vida dele.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d1f371ac-1383-4dc6-b864-035553660dbd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0532ecc5-e4b5-4cbf-96cd-13d72a3468eb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento De Repente Filhos Do Segredos',
    'Crianças fofas ao resgate! Gêmeos adoráveis encontram a mãe ideal para o casamento do pai, um CEO bilionário, para o casamento do pai por impulso, apenas para descobrir que ela é, na verdade a mãe biológica desaparecida!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e0c48f05-2355-45fd-a929-0932478af579_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ee86e6b0-764e-43e2-a22c-b1cf187eef47',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Espera Do Vento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3c7bf157-0fbb-426b-bc8d-c3192a5fa3fe_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a245c7ae-45b7-4fff-b9c9-81b17505f995',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'ERA UMA VEZ UM TÉRMINO/ Once Upon A Breakup',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec55f4bf-ea14-47cd-be64-41e1f5c8c3ad_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a9fbc9d7-bf77-43ca-9767-6e4f77fa6d2b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chega Não Caso! Quem Liga?/Tarde Demais Para O Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/67365602-4a33-4f06-b9c2-dcc3b8912149_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2865d0fc-5b67-435b-9380-a673ca5e703e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Luz Na Escuridão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c8e8d89f-bcff-4d0d-a56e-1857163b5466_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0ddb8ee2-3890-4cf3-8c4e-1e17127e228c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cinzas Do Amor',
    'Isabel perdeu a mãe no parto. O pai perderia Clara, a irmã da Isabel, e a enviou ao exército. Isabel apaixonou-se por Alexandre, que só a usou para chegar à Clara. Desiludida, Isabel foi para um casamento político, deixando Alexandre arrependido...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/54f00d6f-888d-495d-9e4d-e0ffb7a2e10f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5735f17f-896a-4baf-b712-7dd45d550482',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Gênio Médica Não é Alguém Para Mexer',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c3f2cba2-9a32-4e83-8c96-cc0a748891fe_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8c3df87d-7846-4f82-b582-66206fbbedfe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Volta Ao Coração Dela',
    'Sinopse: A esposa do CEO volta para casa para se reconectar com sua família, mas foi ridicularizada e atacada impiedosamente por sua irmã adotiva. Normalmente ela é discreta, mas chega ao seu limite e decide revidar!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e407c4b8-bfb4-49a0-a258-223ced387cb3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9b460d2c-a618-4537-be3f-1066918c9ca7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Deixe Me Em Paz, O Amor Perdido Não Volta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/86559113-a97d-4624-9bce-394b0e053a07_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2db0255e-cb05-4304-a3b7-1a9145d645c0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa Odiada Pelo Rei Alfa',
    'Lucien a despreza porque ela é filha do rei que destruiu sua família e o escravizou. Ele a tornou sua escrava para se vingar de tudo o que o pai dela fez com ele, deixando cicatrizes que o transformaram no rei danificado e poderoso que é hoje. Assombrado pela insanidade, aversão ao toque e incapacidade de dormir ou de produzir um herdeiro, Lucien está determinado a fazê-la pagar. Mas a Princesa Danika não é nada parecida com seu pai. À medida que Lucien busca vingança, ele descobrirá o quanto ela é diferente. O amor nasce de um ódio profundo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5c226bb5-c7f0-44d9-a1fb-6a1c617bea44_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/be84e274-f725-40dd-8f54-90f77503f0c2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A NOIVA DO MAFIOSO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ddfb2bb0-b22b-45d9-bc50-dafde37cf0ab_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e6013d7d-39a4-4c37-9b19-099a7adf3761',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Substituta Acidental Para Alfa',
    'Ella tem um medo mortal de lobisomens; agora ela está grávida de um. Forçada a um casamento por contrato com o bilionário alfa Dominic Moon, ela precisa esconder sua identidade para sobreviver.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/453b7d62-b178-4948-84b2-166632bac3aa_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/94aa1fc3-1848-41ea-b695-92b6c60f936c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Detetive Secreta Tem Queda Por Criminoso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b140cb9c-4a63-4c59-a3d2-bd1d7d2b39e1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cd50013f-0074-49ef-bcca-a438519c9841',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Laço Perfumado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6e745f23-12bb-4184-8275-4cfb96deaeb1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/527dc682-78ed-4992-a584-282b990501c6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Bebe Secreto Do Chefe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/114f13af-d9a6-4a2c-859c-6444fcc6b443_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/21a6f518-c35f-4c50-8742-9170918e0aa7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Minha Sugar Baby Bilionária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/adbce763-2f00-41fb-8153-f084ae894ae4_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1a4a16ef-ced9-4981-ab1b-ce4331b9cca5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Senhorita Renascida',
    'Sinopse: Lindsey, herdeira da família mais rica de Los Angeles, esconde sua identidade para se casar com Bruce e apoiar seu negócio. Depois de ser traída e assassinada por Bruce e sua amante, Jenny, Lindsey recebe uma nova chance no dia do casamento... ela está determinada a recuperar seu poder e reputação.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cf0b8b77-e0b5-47ad-8da6-b2eef3ee6f4c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/46a77abf-34ce-4356-9846-9e9a7adbcb9c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa Do Futuro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7cabc54b-2920-497f-a1ba-fd3b6aa9c66a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7d17640f-1a30-408f-80dc-f37f0e514688',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Em duas Promessas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/46411a8f-cc38-42db-bf64-eb44bc63cba4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9cb89853-83e6-4f02-a7cc-968fbb4170ff',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'EMPATIA E EGOÍSMO A MULHER  QUE CONDENOU A PRÓPRIA FILHA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f1a6fb94-b04f-4f74-959e-95ad9cb49791_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/72b3988a-275a-47e5-8c8a-7e2f378feb3c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Milagre Minha Luna',
    'A órfã sem lobo, Rita, se cansa do amor tóxico com o canalha do Ali, seu primeiro companheiro. Desiludida, ela o abandona e escolhe Wagner, seu companheiro de segunda chance. No caminho, desperta seu espírito de lobo, enfrenta aqueles que a machucaram e se torna uma Rainha Alfa.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/064bfeb6-dde8-45a1-aad2-475883eb1476_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/714b3cee-d14a-49fe-b374-cad6153fc569',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva Malvada VS. A Sogra Secreta',
    'Sinopse: Beth, uma influenciadora renomada, estava prestes a se casar com um dos herdeiros da família mais rica do país. Mas na véspera do casamento, ela cometeu um erro fatal: confundiu sua futura sogra com a amante do noivo. Tomada pela raiva, Beth decidiu se vingar imediatamente, sem imaginar as consequências devastadoras que sua louca revanche traria para sua vida...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/07f0b8aa-6abb-4cf4-b6a8-b8441e3c0770_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5b4f7a5b-3c03-4d9d-8326-3f28eadf4f6d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Por Promessa Acidental',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cb15ced2-f0ab-4826-bb08-c51a9a54c7bc_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e9780ec5-6d8c-4ec4-a240-08f8d18b7ad3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'QUANDO O  DESTINO FALA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dbf1c2ba-b3d9-4dd6-9b88-3aef396a2d12_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5099f79f-c2e4-4f73-9e30-7dedc053e054',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Esposa Desconhecida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e576faa6-2f30-49b5-bc25-660d0a3fc1bb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/63ff9609-921d-49f3-af4b-82fdf55a1fa7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'UM NEGÓCIO COM MEU DOADOR BILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6004e2bc-20c1-4d48-b59b-fcfbaf64c37d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f03a6948-c919-4f9b-8cd3-84ea8e96fdf4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segredo Do Nosso Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5d36c7c2-436b-4e49-ad4e-0bfffa07ef44_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/78214ce2-4542-431b-b7cd-d0cd367c98c4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Bela Adormecida E Os Três Irmãos',
    'Sinopse: Stella, filha adotiva querida dos Newsom, era amada por seus três irmãos - até ser descartada quando encontraram a filha biológica, Luna ponto para retribuir a bondade deles, Stella, decoração partido, se oferece para um experimento criogênico e desaparece por 30 anos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ac6c2dca-839b-413a-a899-47669b72bc2a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/72cd6b88-448d-42f5-b3e7-1f26e59ff295',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A RAINHA NO SÉCULO 21',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f543afb3-36cb-4a61-bb7c-82f099dc08d2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1614e707-7ed9-4493-80bf-c7261250b059',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Poderosa Renascida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/33efc918-4e36-48b9-8301-5f53d9eb1c93_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/c6a398c2-20e2-4ae4-9a16-c618f88631ee',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O jogo Da Luxúria: Seduza Me Se For Capaz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/42695ed6-ef7d-4a64-a7fe-1da62264f649_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/cf840901-b423-40a3-a1fe-2d93dc8500fd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sol Após Cinzas/Promessas De 7 Anos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f5fbde5d-07b6-40a0-8970-4548a7bbeed9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/99ca64ea-baf0-43aa-8d56-49e256a15a49',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    '7 Dias Quentes Com O Gangster',
    'Durante um tiroteio entre gangues, a enfermeira Violet salva Mattia, um poderoso chefe do crime. Seu ato de misericórdia a envolve em uma teia perigosa de obsessão, amor e traição. Enquanto Mattia se aproxima, Violet precisa escolher entre manter sua promessa ou se render ao charme fatal dele.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/473a7b47-3cc2-41a3-85a7-1b95ed6d41bd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1aa3631c-700f-4b68-9108-806b5550c15d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Traído A Vingança Do Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0dd1873a-8eac-460a-ad89-0b7083675d34_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/48c0db1d-71bc-4092-90f8-a834df7d6138',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CASO ENCERRADO: O RETORNO DA RAINHA DO DIREITO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ba669d7e-354e-446f-8ca8-6bce3dff635d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/14126f9e-ca8f-4c1e-a24b-e2754246ee55',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascer Para Amar O Senhor Perfeito',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/339e36f2-9c86-4ead-b58a-613e6e77ff9e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/11b2920b-cf4b-4a2a-bd19-e6cf336061f6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vira Esse Maldito Ônibus',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c09c2ff4-f76c-472f-a99d-1754723ce8c4_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/21389e46-17ba-48d1-9fd0-efeb15844a03',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Do Tiro Ao Altar: Amor Proibido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5f7c47cc-e4a4-46e1-b082-aea763829914_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3fc52a05-612c-47a6-8f6b-5d6510b193b8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Finalmente Te Encontrei Grávida Do Nosso Bebe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bfcd55fa-7890-4785-aceb-405c31c1866c_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/2520f543-4dae-4ab6-9ceb-f3279ba9d0b1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MATHEUS SILVEIRA O BASTARDO QUE CALOU O REINO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9797fde4-f9cc-4c79-9cf8-fd4f09f8a3bb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/87285d86-6a73-4866-874f-0d2b19ef2d0f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eles Me Ouvem Mas Eu Venci',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/09ef927f-3974-48ad-971d-13a601389ac2_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1327a4e2-efdd-46de-b4f3-723f29e44894',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Além Do Tempo e Do Espaço',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a186fcff-0749-461a-9653-acb663997395_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/028866f2-c333-4172-a948-1e8287fa48d7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Paixão Proibida e Segredos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/78ac6038-df0a-4965-a322-168cd8118115_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/c35d5dca-8c36-4620-80f6-cde367d3e5dd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Pai do Meu noivo Me Quer',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b6846224-629f-4966-8883-342bec7a4804_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6af88a2b-ba4e-45c1-8c61-f1471374cca4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Sou Maria Sangrenta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2319db8e-2a92-4372-ad0b-19ef1db3405e_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/235ebb25-afac-4a34-976b-3fe57ffb52d9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sobrenome Meu Glória Minha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/214478c4-eb5f-419d-a7b5-a838afcc07c8_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/32d83566-28f0-4145-85ec-bb39d8fc9878',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A CEO Bilionária Do Parque Trailer',
    '"Elise Gray foi chamada para servir seu país no dia do seu casamento, desenvolvendo aviões de combate de ponta para o exército. Ela também conseguiu fundar a Lockheed Gray, o maior contratante de defesa aeroespacial e militar do mundo, tornando-se a bilionária mais rica do planeta. Quatro anos depois, ela retorna para casa, para dar ao seu marido Cato o casamento que nunca tiveram, escondendo sua identidade para surpreendê-lo com o casamento dos seus sonhos. No entanto, ao voltar para sua cidade natal, ela encontra problemas - Beatrice tem perseguido incansavelmente Cato, tramando para destruir seu casamento. A família de Cato, especialmente sua mãe Stacy, também está tentando pressionar Elise a se divorciar de Cato para que ele possa se casar com Beatrice, recorrendo até a humilhações para conseguir o que querem. A lealdade de Cato e seu amor sincero por Elise dão a ela forças para lutar até o fim. Elise não vai desistir - não importa o custo, ela defenderá seu casamento e reconquistará sua dignidade."',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/38c37609-0d9f-42d1-9142-7cf365e0decf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ae992e4b-4af5-42d6-89d2-1a01d7923690',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Reality show Encenado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5fdd6a64-6d45-4144-aa01-85b2fc8ddcbc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fd1cf9fa-e9b3-4305-ab42-874d5a4ce412',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Secretária a Mãe Do Bebê',
    'Sinopse: Quando o CEO bilionário Finn Vanderbilt descobre que seu esperma roubado foi usado para inseminação artificial, ele se decide a encontrar o culpado. Sua busca o leva a Jasmine Thompson, uma mulher em dificuldades que enfrenta seu próprio choque: uma gravidez inexplicável. O primeiro encontro explosivo deles — um mal-entendido caótico no elevador — desencadeia uma série de eventos repletos de intrigas corporativas, ex-namorados vingativos e segredos perigosos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db6528c7-d6e4-4314-87d3-63fa3157f227_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a22b161a-3920-4415-96ad-332537968ac4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Ramo Extra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/864b8609-5e2f-4c58-b6c8-0cc4ac0e4e70_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4b843d89-53ff-4341-8584-57abb403ee1e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Criando o Filho da Amante',
    'SINOPSE: Meu marido e a amante dele perderam o meu bebê e ainda tentaram roubar tudo o que me pertence. Mas eles não sabem… eu já descobri cada joguinho sujo que estavam armando. E agora? Eles vão pagar.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8eab3192-e74f-4c6f-8812-a8cde8019e35_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6097b3ee-acd4-4b5c-a69a-0350c14d057a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Além Do Abismo Escuro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c71311e7-211c-4f3d-a087-dcf0b53293f1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3482182b-2400-48cc-aff0-672079149f38',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amo O jeito Que Você mente',
    'Sinopse:  A irmã de Molly não apenas pegou seu namorado Connor — ela também levou sua herança, deixando Molly sem nada. Movida pelo álcool e pela vingança, Molly elabora um plano ousado: seduzir o atraente tio de Connor, Adrian. Mal sabe ela que seu plano mal pensado dá muito certo, pois Adrian logo se vê completamente apaixonado por Molly.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/95689b43-ed95-4afb-952a-f6a7b6756b71_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8303b172-4937-40e4-b9d8-08fe7e59eee9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ascensão Do Pequeno Mestre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5d6f0471-9d23-4875-b96d-bf50a45f6c68_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/62f7eb99-8de7-44e9-a935-3e8f6b1cf5df',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amiga Falsinha Chegou a Vez De Pagar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a3b89953-e5c2-4db4-913f-aefe1eaafa2a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0eb0634f-c22d-4dab-9148-36718f025851',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rainha Da Quadra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d79349ad-e36f-4e6e-9e9f-1e2b262baf6f_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f5bfb981-848d-40d8-a9f9-54543dc4e3da',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Chuveiros Frios/Cold Showers',
    'Sinopse: Quando Jayda Wright, uma arquiteta doce, mas subestimada, flagra seu marido em uma traição, seu mundo desmorona - mas sua transformação começa. Movida pela traição e por um coração partido, ela mergulha em uma noite de desvario imprudente, cruzando o caminho de Max Miller, um bilionário magnético com um gosto por controle e segredos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a2b19859-1a02-4e78-89b4-3a6af6887421_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b4866fab-310a-4978-a963-9139e6af7e1f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Irmão Bilionário do Meu EX',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b04b37af-45fc-4780-86c0-50e5259f3dd0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8989f3a1-663d-4b14-ad7d-e5208803e47f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Solitária A Princesinha Da Casa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a9ed08ad-fc15-4d40-bed0-6f946e488b10_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/16b82ce8-3b24-4185-8a7c-9f9ede86e8fd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Família Do Livro a Revolta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0ba519f4-3150-44db-86de-f94d1b4f01e4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/550be1e3-78be-4594-892b-9c3ca0925cfb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Como Treinar O Seu CEO Bonzinho',
    'Sinopse: Fugindo de seu marido abusivo, Liz Bolin assume uma nova identidade no mundo do BDSM - a dominadora Hydra Lily. Lá, ela conhece o enigmático e autoritário Sr. Raven, e, pela primeira vez, transforma um dominante em seu submisso. O que ela não sabe é que, por trás da máscara, está seu chefe na vida real, Reggie Wayne, e que o contrato no playroom acaba se transformando em amor.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4e3ea594-82bf-4507-b834-cdc396d25dc9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/71fba23d-846c-46f3-8d24-3186da61747c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Nao Mexa Com a Pequena',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6f897a16-72b9-4415-a723-1825f9177965_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/59ae807b-099e-47f7-96db-1a693017ea5d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração De Ouro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b1c03778-ccfc-4ecd-bad1-16dc87f56e52_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bac3097f-2b8f-4cc9-b7e5-bfc49c0c9b9f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Virgem Cativa Do Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2150d109-787b-4ac3-b780-8b283e891f44_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/ff6fbffb-1098-4968-a987-65295f5964cf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Cativo Do Chefe Da Máfia',
    'Sinopse: Após o assassinato de seu pai e a descoberta de que ele havia assinado um contrato com a perigosa gangue TOREX, Malissa se vê forçada a se casar com o herdeiro do chefe da máfia para quitar as dívidas da família e garantir o tratamento de sua avó. Em meio a ameaças, luxos e paixões proibidas, ela descobrirá que o amor pode florescer até nos terrenos mais sombrios...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bdb30836-6442-450b-97e3-60465ba34d4a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/01caa710-8ed6-4ab5-a3e8-ac901a35ae5e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Bilionário e a Amada Grávida Desaparecida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/df110762-6982-4e7e-8ca4-046d35ba5c86_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/55ca8468-c603-45ce-91c4-dc80905bbc56',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cego De Paixão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d921df5a-ea9c-4388-920c-33877cf11a41_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d211ef48-3ffd-4ec0-9f3b-31d9288ff970',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mãe Guerreira Desencadeada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b839ffba-31d3-48ad-af1d-3976dfb38d33_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/de2c7f28-4d0e-4484-9200-ee9e4432c952',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divorciada Com Um Bebê Secreto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0231872e-f731-422e-a9f2-5a40682df294_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4e47fc25-ce5c-40a6-8e91-78fe7607f19a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Ternura Desvanecida',
    'Sinopse: Xu Qi, a filha amada da família Xu que havia sido mimada em todos os sentidos, descobriu que não era a verdadeira filha da família Xu. Desde que a verdadeira filha, Xu Mingzhu, foi reconhecida e retornada à família, seus pais e irmão mais velho, que sempre a haviam consentido, começaram a acreditar cegamente na versão unilateral de Xu Mingzhu. Acreditando erroneamente que Xu Qi tinha empurrado sua avó downstairs, causando-a a entrar em coma, os membros da família Xu a enviaram a uma escola de virtudes femininas para que se arrependesse e melhorasse. Como resultado, Xu Qi sofreu três anos de torturas inhumanas e adquiriu deficiências permanentes e irreversíveis. Três anos depois, Xu Qi foi recolhida pela família Xu. Os membros da família Xu descobriram que a Xu Qi que costumava ser radiante e amante da risada agora se afastara de todos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b853a2a3-794e-462e-8e49-cb40af5f9843_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3d3f8609-ba5a-4ce7-bb61-7c86d7086de3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Reencarnação Do Imortal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1e8b586d-adcc-44de-adc4-a65676c0f4a8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/794cfec1-9a08-4373-9f7a-caa1e0981da9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Amor Fora De Serviço',
    'Sinopse: Para pagar uma dívida de gratidão, Luciano aceita um contrato com a mãe de Heloisa, acompanhar e cuidar da filha, ajudando-a a superar uma decepção amorosa. Durante esses anos, Luciano oferece tudo de si, mas sempre como sombra do inesquecível Alfredo, o amor ideal de Heloisa. Quando o prazo chega ao fim, Luciano parte em silêncio, deixando apenas uma carta e os papéis do divórcio. Só então Heloisa percebe o quanto ele a amava. Luciano, por sua vez, segue em frente...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b03960a1-b5ee-4948-b823-e3e66a789c9a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9d42c745-5f8a-44f1-bbce-91d5e012acc6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva Renegada',
    'Após ser vítima de uma armação da sua irmã e dormir com um desconhecido um dia antes do seu casamento, Charlotte perde tudo, seu noivo, sua família, seu status e é mandada para o exterior. 10 anos depois ela retorna, agora com um filho e encontra Ethan Wright, um CEO bilionário que é ninguém menos que o desconhecido daquela noite e o pai do seu filho.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/71da74b3-1cc1-476d-a509-08ef77e987d3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/09514986-c0ed-46c8-ae1a-9a40fe5c7d2d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sangue e Prata a Ascensão Da Companheira Rejeitada Pelo Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9cbccf11-804f-477b-b2bf-cf357fe78d0e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e15563de-63f1-4dfa-9d59-53d608745bb2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ela Armou Ele Apaixonou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ae02f577-b2b6-4a6d-a0f3-b45ff017c099_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f8bc1b5d-8e4c-4fba-befe-6867eab080af',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Atravessa Meu Coração Meu Dono Mafioso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b3d17306-c933-4dba-a160-3f5cc639f591_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/53723ab5-7ef0-417d-89d6-66cafc4e0eb9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segredos Sob Luvas De Seda',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d28a51fa-77c1-42c6-8db4-236337d087c5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/84b64305-ca5a-4845-a004-9bf1a4beb0b8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Injustiçada Do CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/28e6fac3-0b63-4f0e-9578-a878baf168d6_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6b7255bd-a608-4a68-8ec7-6d1f10b8a5d8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chamada Final Para o Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/272ba2b5-e2f1-47b5-af47-e0e7c3a83d32_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8a22195f-8a5e-4faf-b2a6-6e3985d02820',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Lapd Abra Seu Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/27e4dfdb-c6e2-4f4f-84d2-d25462f9387c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7bbebf66-73d0-4726-97ae-4471b9d0b287',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Após a Amnésia Meu Luar Branco Se Tornou Uma Substituta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db057b85-1218-462d-94b5-d9d58b37b81f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d23533cb-1c59-4267-a1d8-714d8c061c80',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Trocada Do Rei Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8616f814-6491-42ab-937b-5aa8287cd621_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6eb038bd-d40a-40a4-8395-8b7760950a16',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Grã Mestra',
    'Após presenciar o assassinato de seus pais durante a Páscoa, uma jovem é salva pela Imperatriz e criada para se tornar a mais letal entre os Cavaleiros do Império. Quinze anos depois, Elsa retorna para proteger sua família e descobre uma conspiração sombria envolvendo um soro capaz de dobrar a vontade humana. Quando o inimigo ressurge e ameaça tudo o que ela ama, Elsa terá que escolher entre a rendição… ou a destruição. Traições. Sangue. Destino. A batalha final começa agora.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4a02d172-96a3-4672-8cbd-aa95fd79db79_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/271befbe-2a72-48cc-82c2-ae5831331abd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Relâmpago Minha Segunda Chance Aos 40',
    'Sinopse: Samantha, uma mãe solteira de 40 anos, se casou com um homem estranho que sua filha encontrou no Tinder! Parece que seu marido de casamento relâmpago foi forçado a aceitar esse casamento, então ele propôs ficar apenas como um casal legal, preferindo permanecer um estranho para Samantha. Nenhum dos dois se preocupou em lembrar o rosto do outro.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cdd67600-026a-4361-adc2-f9ee60788be5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/94aa0470-17f3-4b15-bb7b-84fc123f2223',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Tão Frágil Tão Cor De Rosa',
    'Ana foi cortejada por Pedro e eles se casaram rapidamente, mas ela não sabia que o casamento feliz que esperava era na verdade uma farsa. Ela se esforçou para ser a namorada e esposa ideal, mas quando a verdade veio à tona, suas esperanças se desfizeram e ela decidiu se divorciar. No entanto, nessa altura, Pedro já estava profundamente envolvido.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b886f838-53c6-43a8-a287-9e4d8d98f28d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7cfbea31-7f4f-4173-8c46-b3b8fb0f957f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esposa em Fuga, de Novo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d3decfda-0808-4fce-8901-fb0e00097974_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9f11bbbe-329f-4194-b623-84e9e346ca3e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Era Hetero Até O Beijo Dele',
    'O estudante de medicina Miles flagra sua namorada influenciadora o traindo. Para se vingar, ele arma um "caso falso", mas acaba beijando por engano o charmoso CEO, Hunter. Ele jurava que não gostava de homens, e Miles também sempre achou que fosse hétero. Mas um beijo mudou tudo…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2e79e64c-d705-4351-b3d0-b6b738895019_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b83352d6-9e2d-4a1b-a2ab-fc2aa0a2a7ca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Marido Em Casa? Melhor Supremo Imortal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fc50ea52-5e34-4994-91c4-8d11d111d403_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/d1750c40-21e3-4e55-a40b-56014697336f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'NÃO QUERO MAIS VOCÊ A VINGANÇA DA EX ESPOSA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d4cf9431-1b80-4f3a-97eb-67f86459fb63_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1f17e46b-5b96-4a17-a325-8d45b06e9a20',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'imortal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9a45ed04-c056-4d0b-a258-4fdc0a1462fc_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7c5b52e3-4cfe-4ae9-b4d7-00d79de13f32',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    '28 Dias Com O Alfa',
    'Hayley está falida e desesperada quando Damien Noble, um alfa amaldiçoado, lhe faz uma proposta irrecusável: beijá-lo todas as noites em troca do pagamento de suas dívidas. Dinheiro fácil… até deixar de ser. Até que suas mãos demoram um pouco mais. Até que ela começa a desejar o fogo em seu olhar. Tique-taque, tique-taque, o tempo está se esgotando. Ela conhece a regra — não se apaixone pelo monstro. Mas e se o verdadeiro perigo… for desejar que ele a morda?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a6be75e6-7afb-45af-a0fb-3fd936ae5aa1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4a0c0273-a1a1-4c90-9592-e085bfeea92b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Corações Em Contagem Regressivas',
    'Maria José ouve seu namorado, Bruno Eduardo, falar sobre buscar sua ex, Elisa, no aeroporto. Magoadas, ela decide estudar no exterior. Enquanto Bruno espera por uma surpresa, Maria conta os dias para a separação. Com o tempo, ela se afasta e Bruno não entende. Quando Maria desaparece, ele percebe que ela é a pessoa mais importante e decide buscá-la.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/09b69394-71d5-4e0a-9e88-bef748b8edca_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7ffa9267-b347-4ff7-b4cc-8dddcd16e20f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divorcio Para Ser A Herdeira',
    'Sinopse: Uma mulher que busca vingança, seduzindo o filho do inimigo, mas acaba se apaixonando por ele. A trama explora se o amor deles resistirá quando a vingança for concluída.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5ab3666a-be4e-4d25-8f4e-d232e67b252d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4110a3d9-377d-42b7-9ce8-37323939f472',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Namorado Jovem é o Herdeiro Bilionário',
    'Clara Souza, uma das melhores assessoras de imprensa do país, descobre que talvez não consiga ter filhos. Depois de uma noite de fraqueza, ela se envolve com o Rafael, um gato sete anos mais novo. Mas o plot twist? O ele era o filho não reconhecido do CEO do Grupo Ferreira!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/07cfb98b-804a-4ca7-881c-9a7bbcead50d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/93bb51b0-5927-49d3-aa77-30b42a9a7b7d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Rainha Alpha Traída Resurge Das cinzas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/76f9a563-3dcd-45b2-8e69-8b2520ced054_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e302da0f-53b7-45ae-ad0a-6645f30208d8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noivo Errado Amor Certo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/af1ea4fa-3599-4b32-9985-7518d8ecfe03_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0f020c38-af43-4cf4-a37c-2609c7c40b73',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Te Amo Nesse Pleno Dia De Sol',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81b383af-159b-4a58-844e-a154ac43dbeb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5d418d6e-03b6-46bc-aaec-078dca7316ab',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Bisavó De 18 Anos Que Restaurou a Família',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/703489f8-b899-43fa-b3c3-52041c5fc3ed_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a7b71d2c-b97a-46ca-922f-531545640465',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dívida Paga Lenda Nascendo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e3c4701c-d6ba-4a6d-8ece-ee6556a4689d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2c943f41-785f-4a7c-9ed0-e1fccd5fa896',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Agradecendo Por Seu Engano Juvenil',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8391991f-4d6b-4779-8aeb-d15d35616db3_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/181484b1-f387-4e84-a15d-881f40da6862',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amar Você Alem De Seis Meses',
    'Sinopse: Narra a história de Sarah Milton, uma faxineira, e Daniel Rodney, um bilionário, que são forçados a se casar e depois precisam aguardar seis meses para o divórcio, conforme a lei de Los Angeles. Daniel, para recuperar sua empresa, esconde sua verdadeira identidade e propõe um contrato de casamento de seis meses usando o nome Daniel Brown, criando uma situação inesperada para ambos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2434b9c0-6ab0-49cf-b909-4f871eb28c7f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fbaf664a-5f6d-4d5f-893f-5032e5055582',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'No Coração Dele Sou Selvagem',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7b19fa9f-0da1-4368-9345-b381e12af9c7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/de268176-9b0a-42cc-9358-71a0f35c93f2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Três Chances e Um Adeus Para Sempre',
    'Karla sacrificou tudo por Erike — fortuna, saúde e até um rim — mas foi traída e trocada por Cíntia. Disposta a dar só três chances, ela se reergue ao lado do bilionário Landon. Quando a última acaba, sua compaixão também.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/32f59377-d023-496c-a367-7cc15d28f1c9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4066d09e-73b8-491c-bf72-1a9465fb20b7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando O Passado Vem Queimar Tudo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0d61947f-41ab-4ab0-81bf-9185a74c1fbf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ee5e8910-5c2f-410b-bcb1-fb5985ef7de4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Queda Da Noiva Mercenária',
    'Beth era uma garota ambiciosa que finalmente conseguiu que Edward a pedisse em casamento. Mas, pouco antes do casamento, sua amiga o viu abraçar a Sra. Brown, sua mãe. Beth pensou que a Sra. Brown era a amante... e planejou vingança. Sem saber que esse era o primeiro passo para sua ruína...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f8c7a005-bcd7-40e4-ab29-cc23a469986e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4082b753-0a87-4c0e-a3db-0cc33ca050c6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Finalmente Alguém Me Dará a Luz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a63df63f-8fb3-4575-8915-d07696ee8921_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2081da98-1441-4d06-b4b8-a44cea6979e7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A PRINCESA REVERSA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/338e0de6-fcc7-41fd-b0ee-7a57a9f78d4a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c1eadbbe-8b90-4e9d-a291-9a26b5bfa1e9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu amante Agente Secreto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/50b3c25f-ee60-4a90-8d4d-dfe4b460c404_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/92f0d0be-6830-455d-a579-2d69744c582e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Lágrimas Que Libertaram Os Deuses',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ab91b88a-408e-4b70-94e5-a879e9681723_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d3db0d0e-d46b-4a66-866b-bf8a45ebbe28',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quando a Família Se Quebra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/34fe4d95-612e-465f-80c8-5bb158be7bce_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/70536b87-f3a5-4388-933e-6dff08d12c07',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Abraço Do Ouriço',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3e00aec1-4ae7-4485-ae0f-cf4109edb177_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/03e74c07-8e7c-4bd3-8279-295eb1091791',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Refúgio Perigoso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2323a207-1dbe-4326-aa6d-66f2a682e5fc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/49304447-cf5b-45a9-a058-f5c7f5c92055',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Melhor Amigo Do Meu Pai Me Fez Sua Esposa Bilionária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5bbf6823-403e-4b91-b275-36c0c570d02b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8e2912c5-2423-4aaa-8207-0a85314b0148',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Inocente Amante Da Máfia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/610e9cb8-3604-4740-aad6-09d47a6e18d3_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/95bc802c-004d-4300-ad68-8478ce983a3c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Das Cinzas Do Passado eu Escolhi Minha Musa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c3e6be7c-5333-4c25-ac64-f06ab8932355_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/04606f92-4bc7-46c7-9881-714a27caa18a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois Da Tempestade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/350a3f78-a5fc-47d9-834b-7b302cc1d9b3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8b2c8d93-5b25-4efa-8644-7e3bc64d2d15',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destinada ao Meu Alfa Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cdd5b7ca-d7b9-4df3-8316-d2be0a59863c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/acfc8a04-c440-4a89-87ef-d86b354d890f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Traga De Volta Meu Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/425eb2ac-8d70-4315-b11e-6ce767810d35_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/af87eddb-18df-4176-baf0-6e28bce9a141',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Relâmpago: Máscaras Caindo',
    'A Amante de Ricardo Gomes apareceu com sua filha, Matilde, na mansão da família, levando Isabela Gomes...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/918c1ec9-c09c-42d1-a33e-264674959068_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/535321b1-8a0e-4edb-9150-93c9ef4c2e65',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Beijo Uma Facada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6ba9228a-cc1b-4283-9b0d-108f0f924bfe_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/91b8dae1-c8b8-440e-9806-8c8c0ada0e3e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Camponês e Serpentes: A Fortuna Vira As Costas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5da2d1de-424e-4806-bdf8-8d14d0ec1bba_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/5a7b1235-a6ac-407a-9999-1c31ec1d223b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Masmorra Do Êxtase',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/68df8a44-6701-4f5a-9223-8ca10c5d69cb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/03fd0b15-2e96-4f38-8f5c-0b42cba1ae6b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Mais Espada, Menos Batom',
    'Sinopse: Ela trocou o salto pela espada e mostrou que força também pode ser feminina. Treinada para lutar, marcada pelo passado e guiada pela honra, essa guerreira não tem tempo para romance… Agora, entre batalhas e dilemas do coração, ela precisa decidir: lutar contra ele ou ao lado de quem mais ama?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e06b829e-c66b-4466-9c69-eabe30e2759e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f8f863fe-39c8-426a-b787-eed20ed6e1f9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Herdeiro Que Me Perseguiu',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c749d8a0-6043-4143-8986-09d981888f81_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4892d1da-95cb-4957-9be5-a67314fd35d3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Essa Menina Solta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/786342f0-e434-4de8-9a51-eb69c19d8c35_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/80056ca3-1c3a-4300-af12-369b7f164c47',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Herdeira Retoma Seu Trono',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/270edf8e-bd0c-469d-994e-37dca642f734_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/48937909-03c0-4209-a3e6-1b83ff2fd931',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Substituta Errada para o Bilionário Implacável',
    'Sinopse: Lulu Bridge pegou seu marido Alex traindo-a justo quando ela estava prestes a contar a boa notícia de que estava grávida do filho dele após inseminação artificial. Então, ela descobriu a troca de sêmen que a fez carregar a criança de uma pessoa poderosa.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/086904e8-8c5b-4298-a6dd-ee7182201c5c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1a2a7baa-52fb-4b0a-bccf-ea88a99ea166',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Médica Da Alcateia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1a75b9e0-6339-47d1-b692-8700af2eb37d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2f4a2ec2-4857-41e0-9767-8ae998792214',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Saia Da Frente Eu Sou O Chefe Final',
    'Sinopse: Kingsley é o rei secreto da Empresa King e o homem mais rico do mundo, mas quando volta da guerra, a sua namorada de infância o abandona sem dó nem piedade, achando que ele não passa de um palhaço. O que vai fazer o rei de todos os homens para que ela se arrependa?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9406f64d-3d1a-4ae7-908f-af3a37aeb532_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a2d8b576-0671-4616-90ba-53297db6c8c4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Amor Desperdiçado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/47337657-82a6-4c08-a23a-1ccb855ec8c2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c2fc5362-6105-4ba1-beb1-db1db8038fe7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casei Com Um Garoto Apaixonado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bd85403c-842b-4b80-a784-2d3c83fb0062_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f52e1f42-ce4a-49c5-b07f-94543708ad62',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Doce Como Tina',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/38f7d06d-9d57-4241-8d9f-30070c7b722d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/63d2ebb5-8777-42e4-9a52-b717194bdeea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno da Filha Indesejada',
    'Sinopse: Manuela filha biológica dos ricos Almeida, é maltratada pela irmã adotiva Stella. Após uma reencarnação ela foge e se torna programadora criando um projeto conectada já. Com o grupo Menezes lança mente sábia. Quando os Almeida descobre as mentiras de Stella Manuela revela sua nova identidade como senhora Costa e corta laços.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/62c83d21-edd4-418b-9a70-49d5688fa0f5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ff8365bb-ad1d-4fbc-81fd-7ab088551738',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança Da Herdeira Abandonada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dadcd5b0-0696-4606-aafd-0ad8b7ac12d1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c5f8aa3c-7e63-4b0a-83ad-5aa4033f4fe7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Deusa Da Música',
    'Scarlett, a lendária cantora mascarada, abandonou a fama para viver como anônima. Por 20 anos, compôs músicas pro marido medíocre - que, ao ser descoberto por um programa musical, a trai com a empresária e humilha o ''fracassado'' dela. Agora, com a máscara e o microfone na mão, a Diva vai desmascarar os ingratos ao vivo!  ',
    'https://i.imgur.com/p4Uv1SA.png',
    'https://iframe.mediadelivery.net/play/407552/edcc52aa-031b-4fb8-8c50-533db2dd8807',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Irmã Voltou Ajoelhem Se Todos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3dac3d7f-097d-4a6c-bee1-a595589be560_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/4e38b5d1-2e88-4bc8-a7ca-7e9f4834d787',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rasgando a noite',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fdb8352a-69b7-456a-986d-658db5bf54e1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/542d1a7d-cef7-4752-bfb6-3693c07e38e5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Adeus Que Sacudiu O Trono',
    'O Chanceler Enzo, favorecido pelo Imperador anterior, dedicou-se ao trabalho, envelhecendo prematuramente e temendo não ser suficiente. Com a ascensão da Nova Imperatriz Rosalina, ela passa a confiar no bacharel corrupto Evaristo, querendo substituir Enzo. Enzo prometeu ao leito de morte do Imperador anterior que iria suportar Rosalina cem vezes, e só restam três agora. Após isso, pedirá demissão e se afastará para sempre.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ab6e6247-6f22-482d-84f0-3adc3e917d53_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/144dfda0-91c3-4eee-896e-9c5e2690ce44',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Legado Do Monte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c7db5ec5-6edd-4f39-95b6-29339a454ec8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b98ff803-bc37-4f1f-b682-b48905e76182',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Minha Segunda Chance: Voz De Vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b01fe6bd-41ba-4ee1-824a-566d0dc908d1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7b4ea677-3156-4572-89ae-a3f4a87ca30f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Bilionário Implacável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d6067f54-76d0-49b1-9d7f-0e6edab77e80_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/73f4246c-9e62-4e0b-b4ef-335343ddacc4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Música Não Terminou e Não Voltará Mais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6764b37f-fc0d-4821-a52e-96d3a2ce07e8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0780ae8c-3f04-4667-b9ad-febeee836e45',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mimada Pelo Caçador Feroz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e8a1c3c0-5daf-4e7b-89af-660e1feeaa11_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/340972ac-0761-46c9-b11a-6a3224701c31',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Herdeiro Perdido Nas Vésperas De Retomar Tudo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/325bf74c-162b-4297-8af6-fb67740e4e14_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/34753c56-13f8-4de5-a26e-5b9f297cdb9a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Primavera Sabe O Sonho Não Percebe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9c1230d4-38e2-4927-9bb1-88d569e16d9b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/495c74ba-fba8-419e-a93a-9519cfaf25db',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esposa De Fachada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/96c80446-ebe7-4a12-93a5-d1058b487b51_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/be81f1c8-6eea-49c5-a0df-8ae4b7a61332',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jamais Remoa  O Passado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b3c1e551-94a6-4faf-bc81-cd3e6abdb6ed_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/0ae7905f-2e2c-4848-bc55-4fc32f283041',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'PEGUEI O HERDEIRO AGORA É MEU',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2f83862b-0539-4efc-b753-ba860be413bc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e2180082-76f8-4821-9422-b999975f2a9c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Amor Inesquecível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d8911b2c-3901-44be-ba41-170b97695ef2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/363cef44-cedb-4274-97ad-f469ab82fd84',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Na Armadilha Da Vaidade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/270bb22e-283b-406f-b67a-db7299e95ba9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a27fddb9-798f-4430-a51b-d2d11fe3d01a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cartas de Amor Não Valem Nada',
    'O marido de Clara, Rodrigo, foi para o exército, alegando que precisava cuidar da viúva de seu irmão mais velho, Helena, e dos filhos que ela deixou. Ele entregou à cunhada a única vaga de acompanhante militar, deixando Clara sozinha no interior. Por fora, Rodrigo enviava três cartas de amor por mês para Clara, mas, na verdade, todo o seu salário ia para Helena... e os dois escondiam um segredo sombrio. Até que, num ano de fome, Helena e os filhos estavam confortavelmente na mansão de Rodrigo, comendo pão recheado de carne, enquanto Clara e seu filho... morreram de fome, abandonados. Mas o destino lhe deu uma nova chance. Clara voltou no tempo. Desta vez, ela não vai mais se calar. Desta vez… ela vai lutar!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a1fdc2be-e72f-4f7f-9915-2ee6edd6268f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9862f6d1-c088-4fce-9726-ad01bd7fe092',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jade Foster é Minha',
    'Depois de um trágico caso com o magnata Aslan, desencadeado por um casamento forçado, Jade jura acabar com ele. Mas quando conhece o seu gentil irmão gémeo, Lucas, Jade não consegue evitar apaixonar-se novamente. Mas depois de ir viver com Lucas, Jade descobre uma conspiração obscura por detrás da família que a coloca em grande perigo. Ela tem de confrontar Lucas e descobrir a verdade sobre o seu suposto "amante gémeo".',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c3c4afb9-6058-4ba2-98e0-d037251ad9c8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7e9a2f53-53a5-4f61-89f7-52a4ff0d6456',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois Que A Sra Tirzah Brilhou Sozinha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1a33792c-a084-4494-9fe5-a836e4b1def7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6155b7a5-582b-4d1c-826c-70059ec9a1c2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herança Em Tempestade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/adffb6d6-67c5-4017-91a9-cb1bfdfa119b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/214ee407-4ef0-4c80-a20f-f552173eff05',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Em Velocidades Perigosas',
    'Sinopse: No dia do seu casamento, Violet foge de um noivo abusivo que a via como um troféu e a mantinha sob controle rígido. Buscando liberdade, ela encontra Marcus, um carismático piloto de corridas clandestinas. O que começa como um acordo por proteção em troca de um beijo se transforma em uma paixão intensa. Porém, Marcus guarda um segredo sombrio relacionado ao seu passado. Enquanto isso, Courtney, uma amiga das pistas e obcecada por Marcus, faz de tudo para separá-los. Violet se vê dividida entre um amor perigoso e a possibilidade de retornar à vida controladora que deixou para trás. Será que ela conseguirá perdoar o homem que roubou seu coração e enfrentar os fantasmas do passado?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3e5d1c3e-81a2-4f79-be45-2fb4b3ba0d67_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0908ad8b-9798-49b9-b01c-a383ff28485c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Boa Sorte Bebê Halloween Do Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b84de772-ff06-4a8c-8904-62ce1075bce7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a920b888-c650-4ce7-a7e0-b012fe4b2a6a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeiro Sob Disfarce',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8ddfe72f-a08d-43c4-a02d-39db3ef17bd2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f3a1f7c7-bfb6-45ff-b725-9f586d626d08',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Último Eco Do Dragão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f43a0408-56d9-477f-be86-086fb02cf585_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/58ab37dc-ecc8-4e9d-bcba-b07e82db8d78',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Fera Da Máfia Me Ganhou Com Uma Aposta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a1a6fc7e-4aa3-4eab-9b1d-44142df08abe_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/02be7ab4-5086-48d7-8897-a21ff5ffe782',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Coroada De Amor: Sua Volta Por Cima Com Três Filhos',
    'Sendo mãe solteira e discreta, Lídia cria três filhos brilhantes nas suas respetivas áreas, o que faz valer todos os seus suores e lágrimas engolidas esses anos. Num festival da celebração do 70º aniversário de seu pai, Lídia infelizmente enfrenta hostilidade e desprezo de suas irmãs ingratas e até mesmo de seu pai. Mas Lídia supera todas as discriminações com dignidade, encontra um novo amor e uma nova chance de felicidade.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/23db7a56-5825-41ff-b31d-c4ff17f903ee_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f6acb98c-7885-4d40-a488-9c2c9ed5bb6c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Capturado e Vinculado Pelo Meu CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5a0e60c2-8e85-4ec5-8b46-362cf8ce1860_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a57d8270-9fc3-4853-84ca-3471e71be6a8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Boa Menina Do Papai Dominante',
    'Após flagrar a traição do namorado, Olívia se vê atraída pelo pai poderoso e dominante dele. O que começa como vingança se transforma em um perigoso jogo de desejo, segredos e controle - onde ela pode perder mais do que apenas o coração.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9dac0c8d-527f-4311-8f57-0c6d2f15538a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e3de66a9-28a2-4fb5-987e-2a7280ea5007',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Under The Royal Rule Sob o Domínio Real',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/081c742e-5aa8-4626-af0c-ac3a2f70d2f4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ad1bbf9c-d8ef-4ad5-916c-04fe016ac170',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'IMPLORANDO À SUA ESPOSA HERDEIRA SECRETA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e3e01774-428d-4f5e-b50f-2150db15ff6b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/943b9f30-7cea-4a7e-9b21-4788c0d968c3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascida Para O Amor e Vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4949441d-1f3e-4ada-bb81-01c36af083f8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a0f7fbfa-8c09-4b7a-affc-d8f585d35b63',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Adeus Sr Protetor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c78e4547-a630-4fd0-be18-e056a9858a09_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c0b0573a-be69-4576-9e7c-261909ab26b1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casada Com Meu Chefe',
    'Elisa Valente, uma simples orçamentista do Grupo Monteiro, sempre trabalhou com extremo cuidado, com medo de cometer qualquer erro. Mas, numa viagem a trabalho, acabou bebendo demais e, por uma reviravolta do destino, passou a noite com seu chefe direto, Luciano Monteiro. A partir daí, as engrenagens do destino começaram a girar. O pedido repentino de casamento feito por Luciano, a pressão das despesas médicas da mãe doente, e até o mistério por trás da própria origem de Elisa… tudo começou a empurrá-la cada vez mais adiante, sem volta.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1408737a-8544-498f-bb97-a33ebd43aed2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/528dbd6f-08f6-47e5-86b7-8fd1f92b6881',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Lua Da Meia Noite',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eae1be1b-aabe-4efe-9fd5-4f6fbe6c5d32_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cf8e057b-a1a7-41c8-a184-42d3111543b0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Pare De intimidar a Garota Dele, O Rei Do Box Está De Volta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e201225c-a929-45d4-833c-ef98d86a2c87_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/52124821-378e-4a41-bd60-551bda42d1ae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sr Fábio Que o Destino Decida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/110d03cd-b889-4e8e-9cef-ebf286f23838_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bf636b8b-45bf-4fad-81e7-cb1eea5054d6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Do Lixo Ao  Luxo: Pais Bilionários Caindo Do Céu',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c30e01c1-0cf9-49fd-ae4e-2c80cfa124ff_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/04001a88-ead8-40ba-87ae-d5889a57764e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Caiu Na Armadilha Dele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9774ff1f-2fa3-4a46-aa7b-4bc1a23068cb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/33239609-fb37-4c28-822e-9eb359e0cc0f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Seduzida Pelo Pai do Meu Ex',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f9b7dc54-2715-4d4d-93f9-7feaa1b587cd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/adb426cb-d285-4777-b4d2-0e26b610a986',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Carregando Seus Bebês, Roubando Seu Coração',
    'Ella Reed é uma estudante universitária passando por dificuldades. Desesperada para pagar a faculdade, aceita um acordo de uma noite com Sebastian Harrington, um herdeiro bilionário infértil. Quando descobre que está grávida de gêmeos, ele a leva para seu mundo de luxo para garantir uma gestação tranquila. O que era apenas um contrato, se transforma em uma jornada cheia de emoções, descobertas e amor.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/27982f99-9de4-4a63-84d6-9838373e3dc5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a2f04a54-337c-44ba-87ea-9ebd718467ae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A todo Vapor Rumo Ao Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b27bc4e0-02e9-4ea8-b150-4714c930b203_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/23c4c721-ceac-48d4-b32d-ac3d440d8dcb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Entre a Viúva e o Guarda Costas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2f7f09fa-4327-4e76-b336-66e95092dc37_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1a9bd1d4-80ac-43d0-afcf-99264abd8eb2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Irmãos Traidores Justica Minha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/700ee793-ec9d-4db9-a781-e1bc6864a747_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7ff2fd3e-9a63-4baf-942c-10b4d9c7a6f1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'TUDO O QUE EU QUERO DE NATAL É O MEU MARIDO QUARTERBACK',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aac59560-223d-4746-a73b-965229d3fdd1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d8846447-c06e-466f-817d-c6d229437b6a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Imperatriz Esquecida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dd600b28-cc8d-42c4-9b57-d7e8616303e3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/af582df8-5a04-46e4-87c3-901b97886458',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Justiça Para a Minha Irmã',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f1934be0-3195-41de-a431-6996235895e6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4e7e5586-695a-41fb-a49d-8dac7df6c93f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Laço Do Lobo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fb5b1191-6c17-4178-8be7-f0bdc674cd7e_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/02dfeb6c-bd27-4530-acd4-769cb579af6f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vingança Silenciosa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/25216731-1233-4f5c-bb1b-1627571fa6f3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/90230488-bc26-4932-a1d0-9fd58ae2ae11',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Sereia Do CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a4e0e32b-8a61-48aa-bd1b-7332902281a8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/04db9da6-a6ee-46de-b185-74faae636efc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Pequeno Gênio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/37d582fa-88f1-4ea1-8d74-cce3b3af12f4_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/33207cc9-e52c-4724-a194-00af8ef4aa28',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Entre a Neve e a Mentira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/69557fe3-7c6c-4e48-9b45-6657151a31fb_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a75bb320-3683-4e79-ab36-a2a3ba45b857',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Obrigatório ? Me livro Com Três Damas Perdidas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/77a2a63e-2534-418b-8783-30bc281b6907_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d3fd4d57-7c92-4f86-a9bd-bc1f6906512b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Apaixonado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/73c43b7c-328a-40e5-90b8-02655e8063e3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d4ac828d-326e-4c8c-9472-1f64014306f2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apaixonando Se Pelo Marido Da Outra Mulher',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cc1138e0-aad2-43f2-9c1f-e785253fc584_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c481c9a3-f8b7-417f-b6e2-ccf4b6d783ce',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Proibido: Vendida Ao Meu Melhor Amigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/73427214-8d40-480a-85e6-81a399f24fa8_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1d88762a-4148-4991-bb7a-431df6a38b64',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Código Da Herdeira',
    'Claire, herdeira da família Costello e hacker lendária, leva uma vida discreta como dona de casa — até que uma traição brutal vira seu mundo de cabeça para baixo. Após um divórcio doloroso, ela aceita um casamento por contrato com o misterioso Daniel, determinada a buscar vingança e descobrir a verdade por trás da tragédia que destruiu sua família. Entre o amor e a justiça, até onde ela está disposta a ir?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/17a570e6-4e86-4c31-8df0-14a62a68fa82_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/45a2ebd7-7165-4dd5-89cb-f9c644a206ef',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Centésimo Adeus Ao Marechal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2056c31d-b809-4b87-acee-fc8ab6465f1b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/55acf42f-c004-4905-a2cc-3b67dbb305de',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Odeio O Jeito Que Você Mente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/091055cd-70bb-492d-af07-0df1b67eb4e8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fd7ab596-2cae-4bfb-8f7a-01c630fb5c3f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Menina Que Fala Com Os Animais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/551b37d0-5db6-4095-adba-e5a7d957a7ed_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/820f0f98-0bc2-492c-b3c1-8db833a63809',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Cinderela Grávida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3d1f951e-b693-42e6-bfa6-32e0d9eb39a5_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f5856eca-1895-4e2b-a2e2-e862a6daf58b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Seu Pleno Poder Nos 50',
    'Sinopse: Diogo, Mestre do Remígio, vive como varredor após a aposentadoria. Um dia, ao voltar do trabalho, descobre que sua nora e a mãe dela tomaram sua casa e o expulsaram. Vagando sem rumo, de saia uma jovem, que decide retribuir apresentando sua mãe, uma poderosa empresária, a ele. Para testar Diogo, a empresária arma uma cilada, enviando sua melhor amiga para seduzi-lo, mas Diogo surpreende a todos chamando a polícia e acusando a mulher de ser uma garota de programa',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eab4f5fc-8c9c-4a28-a387-c708fbe3b899_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1d792a30-1535-4190-8255-bf3fd81e4602',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divórcio Definitivo Seu Remorso Começou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c4ae9e84-f59d-4e65-ad5c-9d7dfdeeaf68_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bef2d6fc-e2f1-44eb-9afc-6d9b7e5bfb30',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vício Proibido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4b268714-0455-46ff-bb5b-bc13491737c4_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/40c00d8b-9aa0-44fe-8aeb-f14d5e52e4d4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cicatrizes Do Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1b9de13f-57f4-45a5-afab-3e4e1b932821_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6f4b6e71-7592-44bf-9409-9c3b70e9c3dc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Perigo Profissional',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d5e4ad56-48cb-463a-8856-e6c07aeedd7d_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/06f33ec3-7527-4c50-8e30-c627e5bafe7b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esposa Inesperada Bela Adormecida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/25cf5814-c6d9-409c-bbe6-7a690acf34cb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fef4e009-b22d-48b7-85ca-04c4c6714cc6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Voa Comigo Capitão Marido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6b5cd770-5ce3-4bf2-b493-9975d2826466_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/e302f1e6-0758-46cd-8638-27feef0fd68f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Casei Com O Homem Errado e Amei /Ele é Selvagem',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/72cd044e-6ea5-4c60-816e-97a0e2f54266_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4b867ba9-60bb-416c-8532-16ff97ff994d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor Médico',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b0b1c184-c23e-45aa-8099-278c8ff89337_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5a13b41b-58e9-4af5-9aae-95bd452a1b88',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Orgulho Encontra O Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/03201793-5405-4e2b-a417-7c704c971b7c_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/02ed2ec3-8fed-4f89-aaf2-5b3fdb60476f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Noiva Muda Do Alfa Amaldiçoado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6edd0a3a-fc01-4388-a454-e1913dbe1c83_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/16cb0b5e-88a9-42d3-9a3b-a80730601ce2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Do Peso à Glória',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9b793ee4-a559-4642-b858-de2843938850_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/7be67ec7-ff36-45e0-a05a-9b146742a3c5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Eu Beijei Um CEO e Ele Gostou Assim',
    'Sinopse: Gabrielle fica publicamente arrasada com a notícia do casamento de seu ex... então bum! Um beijo espontâneo com um CEO poderoso a lança em um mundo de segredos, ambições e romance inesperado. Qual caminho ela escolherá quando a traição espreita em cada esquina?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/16107039-9f17-41ba-9398-7b9bf18f2bad_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dfeab93c-4189-45b9-82d9-5f80a302d10e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Marido De Contrato é Um CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8df7daa3-ce71-4974-a304-dc01580e5762_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/505b20a9-a696-4cd0-81ec-080a2200ea59',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Perseguindo Minha Irresistível Ex Esposa',
    'Três anos de casamento. Nunca se encontraram uma vez sequer. Uma noite de paixão embriagada enredou Ethan e Mia em uma teia de desejo e engano. Determinado a se divorciar, Ethan nunca imaginou que a nova funcionária misteriosa era...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/90b16e02-d20f-44d4-aaeb-88d5ed0b5c7f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/81d614e3-2f29-4408-8a79-7e77fa4ffee9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Posso Esquecer Me De Ti',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/364af573-8eb9-46c4-b90f-563981514ec9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1f2881e0-95ba-4cbe-9405-e023a6679b71',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Operária Que Conquistou O Sr Cordeiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/27a5f20d-e6a0-4df1-886a-ec639d04723e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fd5a2a2f-a4c1-4dc8-8807-eae506694b66',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Sob O Gelo Do Amor Floresceu A Dor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ce5db742-e1e0-45fd-a5a2-8b8f26d3c90a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/333c05a0-7909-4e34-959d-8be823e48d50',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Graça Da Luna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c032b093-f9b4-480d-a70e-e06279cd06da_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b5b9d03c-153b-4621-b6f6-9be546fe29f3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Após o Divercio a Dona De Casa Virou CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f500cad2-be9c-4b00-b7fa-66dbcf7b06d5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/87c8eaca-01c2-4dab-923e-010d6a8f8915',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amava Odiava e Já Era',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c6f49cac-b523-43f9-ac09-88cd45585253_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ac0fb43e-f827-4b82-86e6-cdeb873829d4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'PAPAI NÃO VÁ! POR FAVOR SALVE A MAMÃE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b83c9b9b-a373-4cfb-8fae-8056b53907ca_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/116d5c52-82f2-4914-802e-56122ded4c16',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Jogo Do Destino Amor Após a Morte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/31a1685c-b84e-4b16-86c5-6ce4faac81d2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/463c55c8-af33-48fb-870b-0bf954c3e303',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida Do Ceo Mimada Pela Família',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/40a52d98-09fa-4bac-b985-642567be903b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/75506dd0-f9d9-4d45-b085-c97888e96e80',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Invadindo a Sala Secreta do Ceo',
    'Sinopse: Anne, que havia acabado de entrar no mercado de trabalho, foi enviada à casa do CEO para entregar documentos, mas acidentalmente invadiu a sala de jogos SM do presidente...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ebc011bb-aad1-4d03-bf53-a67148362df4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/66d2cd72-ccb0-485f-b178-3634058d8063',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando o Amor Salva',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d57950c3-9199-4698-be36-8281bcafb81a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/334719ee-1647-4389-9a89-0dce0f050e5d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quebrando O Acordo Com O Bad Boy Do Hóquei',
    'Jane Wellsy guarda um segredo inconfessável: está apaixonada por seu meio-irmão, Nate Duncan. Mas quem descobre tudo é seu pior inimigo, Zach Gates, o malvadão do time de hóquei da universidade. Para piorar, a nova namorada de Nate é ninguém menos que Melissa, a mesma garota que infernizou a vida de Jane no colégio. Quando Melissa encontra uma história picante escrita por Jane e desconfia que seja sobre Nate, Zach entra em cena para salvá-la, iniciando um namoro de mentira para proteger o segredo dela. Mas, conforme os dois passam mais tempo juntos, Jane descobre que, por trás da pose de bad boy frio, existe um coração gentil e generoso, pronto para curar suas feridas e enfrentar o mundo ao seu lado.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bf76b349-e6ee-427b-8c9a-17b567d202f1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/84758439-78f9-4edc-9cf2-105924141dd5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois Da Chuva Não houve Reencontro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e259f44f-cb91-4369-91c0-7e1f8ec5feab_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/83f31a8e-31a3-4ff6-99f4-1ab0d8b16efc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Inevitável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1819f057-3aef-478b-ae42-0000177940fb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/266c3ac5-b164-4fa1-b58b-cdd3fda90127',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Sim Ao Rei Da Mafia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f16926f7-59fd-4277-b695-3478ed202fc7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/35b3d05c-2b3b-43e6-93b0-65ccc461ef39',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Superação e Ascensão: Rompendo os Céus',
    'Heitor José, treinado por três mestres lendários, sempre acreditou ser fraco devido à falta de elogios e sua posição inferior na família. Porém, durante um teste na seita, ele revelou um poder incrível, surpreendendo a todos. Sua força despertou a inveja de inimigos, que atacaram seus entes queridos. Determinado a protegê-los, Heitor ativou uma constituição única, derrotou os vilões e garantiu a segurança de sua família.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/528d1d57-add7-4220-af79-7131d3594f65_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9a91bdfc-afe9-4e8d-8016-34b424efe012',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jogo Do Desejo Cama Compartilhada',
    'Julia entra na última hora num reality de namoro 18+. Aqui o contato íntimo é obrigatório e os seus parceiros de cama mudam toda noite. O ex-namorado Heitor o carinhoso Marcos e o sexy Eduardo já estão esperando por ela na casa. E para complicar as leis deles também começam a chegar… os participantes se aproximam dela seguindo regras inconvencionais. Romance ou dinheiro? Instinto ou razão? Júlia fica cada vez mais bolada tentando decidir o que fazer',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/992e8cb2-5987-4a33-9e52-694daeb0957e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a6696079-0ea7-4635-a303-cdb1d2d15839',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Declarando Amor Através Da Névoa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/27acf7bf-9381-4d91-be1d-bb35e5e03310_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d984deeb-3ccd-4bb4-a9d6-6bf21716b0df',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Laços Perigosos',
    'Sinopse: Ela fez uma escolha que a ligou a um poderoso bilionário. Treze anos depois, seus caminhos se cruzam novamente sob o mesmo teto - presos entre mágoas não resolvidas e uma chama que nunca se apagou de verdade, enquanto o garoto entre eles guarda o segredo mais perigoso de todos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eaff1d1f-5dd4-4c57-a788-bab2fc71553d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d18fa8d5-053f-4c9e-ac1c-1bd11fb67381',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apaixonando Se Pelo Marido Da Outra Mulher',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ff1c02c4-8f11-49cd-ae38-afe0acbae225_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/edd53da8-bfd7-4403-98f8-f5c2119ae7c7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'FALSO HERDEIRO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/324f5376-7e1f-4fca-9e83-d94bce3bd77b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1635f4ff-7785-4712-838e-0ed8600cae32',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Traição Revelada Amor Perdido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/697434ea-20af-42dc-aa2e-c9dc83371f95_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/74e97701-738d-4523-bbe1-d5c25d976e03',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Maldição e Traição',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/055b8344-53cc-4938-8f30-c81b9db17009_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d0444ba4-0816-4e97-bd96-b853f1ea87be',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Em Vão',
    'Sinopse: Sofia, grávida, marca sessão fotográfica com Lucas, que a trai ao fotografar Isabela (seu amor platônico) e a filha Valentina. O estresse da traição causa aborto. Sofia se divorcia e entra na USP. Arrependido, Lucas descobre que Isabela manipulou tudo, mas Sofia já tem novo amor.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/47c01ea2-2167-401a-ae7f-31877681624e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3b87b1e7-2e50-437d-a822-5c5471c66175',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reparando Um Amor Destruido Indesejado',
    'Depois de suportar um relacionamento por sete anos, o casal termina por causa de vários mal-entendidos e traições. Posteriormente, Richard perde Luana completamente para um amor perdido, levando a uma profunda realização. Determinado a fazer as pazes, Richard tenta reconquistá-la de várias formas.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2874b75b-8c91-46f8-8a98-67c6e258736d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/347df251-92d5-4cb0-9459-ebce80fea9ae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A traição De Justiça Da Esposa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7f687e0a-8da1-4d3e-b9e0-190e633cb058_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7b25321e-e54c-437b-a36e-3eac9e376c10',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeiro sob Cerco',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/86b7a230-cd67-46c4-abc4-86308f2aee07_pt.png',
    'https://iframe.mediadelivery.net/play/407552/f2d9b645-71e1-4d3b-b2f3-ce8ea49e1cef',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Alfa Companheiro Desencadeado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2c0737e4-5f77-4ac3-bac0-5838222fcc5a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1ad5cfa9-2509-47b7-9c95-5a5c42555b1b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Spark Me Tenderly',
    'Sinopse: Floris Blossom precisa desesperadamente de dinheiro para salvar sua mãe. Sem saída, ela bate à porta do impiedoso bilionário Sr. Brighton. O que começa como uma entrevista logo se transforma em uma história de sedução e poder. Será que ela estará disposta a fazer qualquer coisa para salvar sua família? E será que ele conseguirá resistir a essa mulher única?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aa0ac852-1238-41c6-979b-b475b72abebe_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b027e7e8-8c93-4e76-83fe-f62b6671963a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Arte Da Vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9e17c748-61ec-43dc-b0f7-8f596bb26f42_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b71974a6-ec0a-460b-ac1a-cd3a9145a888',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Superando Meu Guarda Costas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2277bbb5-83da-4a2e-b003-4ea75f3d3e47_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/45460a3a-ed89-49a3-b1d8-b6f6f59cde7e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Cura Do General',
    'Naomi Chapman foi atormentada como testadora de venenos por 10 longos anos, até que sua madrasta a trouxe de volta para se casar no lugar de sua filha. Naomi tornou-se o antídoto para seu marido Samuel Hunt, o general mais reverenciado de Highvale. Ela encontrou amor em seu novo lar e aprendeu a se defender.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b3111ed7-3899-4553-b3af-c6fedefcf19e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b2ab4645-ad31-4052-b5e5-92475cfd14f0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A mãe CEO e o Pai Incrível / Mamãe Ceo e o Papai  é Lider Da Guilda',
    'Sinopse: Um jovem pobre leva sua filha a uma competição de artes marciais para encontrar uma esposa. A bela CEO olhou para ele como um mendigo e olhou para ele. Contra todas as probabilidades, o pobre rapaz poderia matar todos instantaneamente com um estalar de dedos. Acontece que sua verdadeira identidade era a Invencível Imortal, e a beleza foi conquistada na hora.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8ec45274-bbda-4c35-8b56-179a6110198e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/46d85478-2e15-4512-9b19-dfbb13124e03',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Gorducha a Arrasadora',
    'Sinopse: Ele é um jovem CEO bem-sucedido, e eu sou a mulher gorda que todos desprezam. Nosso casamento era motivo de piada, e ele nunca me respeitou. Cansada das zombarias e humilhações, decidi me transformar. Quando voltei como uma mulher sensual e deslumbrante, todos, inclusive meu marido, ficaram chocados.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e3846070-5362-44a1-a1bf-0d2e2fce704e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/52a28f65-7eef-46fc-bff0-6bbea70ef895',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Contrato de Coração',
    'Sinopse: Para salvar sua mãe, Rose assina um contrato de mestre e serva com Harry, herdeiro de uma família nobre, sem saber que é a mulher que ele ama e admira há anos. Os dois enfrentam atração mútua e ciúmes, entrando em conflito repetidamente devido a mal entendidos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7915ab11-5ff5-46ab-b2d6-b5e239512b13_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e8fb9787-3c67-49ec-acb3-728a0e844d9f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois De Uma Noite Quatro Bilionários Me Mimam',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/832fac8b-82da-41f9-9141-bd98b16b0649_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4434af78-183d-4ca4-8dee-c9389ae580d0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Electra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9ed6fa8e-af14-4f2f-8e31-3c10f9c67b24_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6834b1b7-24fa-4a4e-b447-1ad6adc67d38',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Cega Indesejada Da Máfia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9cdb81e8-6e9a-4f01-9573-8ae2149b13dd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/42820dbf-7113-43bf-82f2-414e8267614b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Clamor Na Escuridão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/98643cd3-8cc8-459b-91ee-e6b67e357e61_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9a7a5a13-3dbf-4ed3-8f5c-65c55f2ed44a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Obcecado Em Ser Sua presa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4e8b3031-8c36-4e4c-a652-be0350225d0d_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/5b87bc1b-5639-49f2-a2a8-576226eaaa14',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divorciada Agora Uma Princesa Lycan',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f620e77b-e900-437f-9cf9-1f524ec57d4d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cf780d9a-8015-4512-a0df-b32708109842',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ALUGUEI UM MARIDO BILIONÁRIO PARA O NATAL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e9df1e73-9249-4593-b5de-183a23d65ee0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3630c8c6-fe03-45d5-b819-8c14db3e7eef',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amante Ladrão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5c4016c1-2b98-4507-a857-b537c3ed425b_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/4a171ddd-ba11-475e-9775-6cd4e9248153',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Preso Com a Herdeira Mimada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bc1e4136-9b6d-4e20-b7ce-98460a989da4_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b70f7b9f-b5a7-4dd3-92f5-83bac7abaa45',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'a última Gota De Sangue',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/949d1deb-42c6-4bb6-9550-dfd1757a028e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ed21036a-01b8-44bb-9d3a-8724c029a59d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Por Amor Acidente Adeus Por Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/afe09c74-07bc-4b4e-a5d2-7a0deb03d926_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/07e58741-ac2e-4c15-aed3-28390b45be23',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Mentiras e Vinganças',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a1fd69b1-fffc-4fa7-b92d-bcb0cc9c3431_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/21ad5deb-f6e4-4900-8e61-a9807d56bb95',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Cunhado Meu amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/20c9d974-fbbf-4173-a8f6-29b683fe21b1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/da1e3dca-7343-496e-95fd-89106e04c507',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quando A Memória Solta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2017fe9e-e7a1-4d2e-91f8-d7db2920cf32_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3b82c96e-ed0a-4356-b395-c141ebfc8e07',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Casar longe Difícil Voltar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/82a5340a-0b9b-4086-bd09-c15562ca3a4c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9779c7b6-a06b-45d9-85a5-79be6c4c4aeb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejo Proibido Do Intocável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ba7834b3-bc3a-4172-9c93-096c75cbf03e_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/87715053-ffec-4e4a-9583-adc1ebdd1053',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Preço do Desejo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d802138b-1302-4076-9812-ca29bcbbd145_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/031141e6-0d18-415f-90fb-1280bd65e155',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Me Deixe No Seu Coração Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/12736e11-b601-408a-9daf-0b2015aa1458_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1c47bbe6-b309-498e-9474-8505123ae36d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Nossa Culpa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/07a44bad-f888-4c7e-9f28-d854a775eabd_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a9673845-d80b-4c6f-867d-860852cc6b04',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MARIDO PEDE PERDÃO APÓS A TRANSFORMAÇÃO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/71f195fc-4bcd-4a9a-979c-ef093ca12c82_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a2be54ce-0572-42bc-bc77-75848a5b1c2a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno Da Médica Genia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fe050de5-d004-4e04-aa8b-7522a475f3b4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0c3a32a4-b3ef-41d8-aeed-063526ad7ea9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Amor Que Brilha Mais Que o Sol',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/34f7e7ce-7e77-4008-9440-ca7fb0046b4b_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/9259242e-381c-428a-94c8-b39e2d96d7f2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Final Feliz Com o Imão Do Meu Noivo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8e2121a8-610c-472d-9cbd-5f3b0a0e33d0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/578d6c5d-4e80-454e-820c-230e4c8d1665',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ele Era Meu Guardião',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/048fe392-e431-42f8-b3d0-d70438e25026_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0a8c0532-70d8-4dae-8ee2-01dfda1259b1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Verdades Ocultas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9f78d6be-d43d-46e7-bdff-4ccda35e8d63_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/0cf1fdbd-defc-48cb-8889-f6b58768a95c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando o Amor Surge Da Dor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ef1c0b5d-498d-401d-ad4d-dc5100a9f46d_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f07bd6fd-bb02-42ac-8441-0139af534480',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Alavancada No Jogo A Patroa De Cozinha Do Ceo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec45af96-a195-4fd4-a2c3-430adf170b0d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/88b61f86-0e12-4cf2-a9d0-766a7ff34337',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Anjo No Espelho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6450888e-3e02-4c41-b26b-c84ff665fe4a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fc45fcb3-9c8d-4ecb-b483-cd04b9ffa0f5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Com licença Eu Sou O Big Boss',
    'Kingsley é o rei secreto do Corpo do Rei e o homem mais rico da Terra, mas quando retorna do campo de batalha, sua namorada de infância o dispensa brutalmente, achando que ele é um palhaço. Como o rei de todos os homens fará ela se arrepender?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/07aefbbd-5d50-4099-bf77-0cf04cc85848_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/891bd840-d01b-4e3e-82cb-bc216e46acde',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'AMOR E ÓDIO SE DISSIPARAM, CONCEDA-ME MEIA VIDA DE INDIFERENÇA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c732a805-5d4a-4266-9e72-3c5d28b0cb92_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7df2545e-aa02-4df7-941c-81cd05e2be1b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Além Do Trabalho O Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4e1ad961-f26e-42b4-9fc7-93844fab4267_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dc05ae82-683d-472a-b2d3-523b657eaf05',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Todo Poderoso',
    'Lucas Costa é o herdeiro da Sala de Dragão. Em gratidão por Carolina da Silva ter salvado sua vida, ele se manteve discreto, apoiando silenciosamente a família Silva. Mas quando Carolina atinge o auge de sua carreira, é ela quem pede o divórcio primeiro! Que segredo é esse que faz até o prefeito se curvar a Azul? A verdadeira história está apenas começando...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fdecbe4b-284a-4867-8bb6-c4541b9bd1d0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/508461f4-4153-44d7-8488-0e8ebbcfbc83',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A NOITE EM QUE NÃO MORREMOS',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d2714265-eafc-4a4b-8690-cc478e5d06d1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/54cde2d2-930a-4f5b-a433-4ea96e38584d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Mente De Vila Coração Doce',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8702a2de-1839-4720-9517-0d2fa329283b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/15e84e62-7f46-49bc-9140-c5ae703f891c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Desbotado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/78296ab0-8fa5-4876-8823-ac6db81ba8ba_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/0849e4de-c61b-4096-945d-7d8117519b41',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Volta Ao Meu Brilho',
    'Mia já foi uma designer talentosa, mas largou uma carreira por amor ao se casar com Tyler logo após a formatura. Três anos depois, o casamento chega ao fim com um vídeo doloroso. A frieza de Tyler faz Mia perder as esperanças — até que ela decida retomar sua paixão e reconquistar o espaço no mundo do design. Ao brilhar novamente na profissão, Mia desperta em Tyler sentimentos que ele julgou ter esquecido... e os dois terão a chance de redescobrir o amor...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9853b4ce-7f1b-4f04-a4ea-e32a6173ed49_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d70ac443-06d8-4e70-954c-407830e198ea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Ex Mulher Flores Apos Divorcio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e52fab47-1c36-4cd8-910f-bec114525b4c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/40ff9254-c83c-4712-a25a-169063700c00',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Keily',
    'Sinopse: Em uma escola preparatória de elite, a novata Keily enfrenta panelinhas e triângulos amorosos enquanto lida com as duras verdades do bullying e com sua autoestima.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fb35631a-e2cc-4655-87c4-a0964a5f1932_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/45ab84c6-2f62-4b18-9818-1c20dad911e1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Falso Amor Verdadeira Felicidade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e4572cc4-bba9-4a35-9fa5-60bb1924f07f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9572e01c-75bb-4ece-a50e-c5109677753c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Ilusório: O Preço Do Segredo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aec51ba0-6541-4fc8-98a5-05af02466f09_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/8c44d74e-14c9-45e3-a121-a7e4839de626',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Papai a Mamãe Está Esperando Por Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8c8685c7-87ef-4eb0-a62a-67ccbcab63c2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9dc88993-389e-45ba-8daf-accbf4195224',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Acerto De Contas Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/43ed4e0d-7e08-4603-bf9a-7b37b0ea7da1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/919313ac-0db3-420e-b4bc-a81a3ea06c7f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Capturar o Pai Milionário',
    'Agildo, disfarçado como taxista para investigar a morte da mãe, vive uma noite inesperada com a poderosa CEO Hilda. Anos depois, ela reaparece com uma filha, Emília, e propõe casamento. Mas a vida da menina é posta em risco pela própria família de Hilda, e Agildo a salva no último momento.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4a899bf7-da9d-4254-bd94-699d3471b3bf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/69d8d852-05d7-456b-af49-6d096b1e2c5e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Camponeses e Serpentes: A Fortuna Vira As Costas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d088e9b0-9103-4262-9d90-14d5eaea7a83_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/85bd0c60-72ac-4d98-82b8-7d9812265f04',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Namoro De Mentira Com Meu Rico Inimigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2eaa7cce-cf48-4317-8010-a9e62305053a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2ce6fe40-5f16-4c3f-baec-ef933b6f3b44',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'BEIJO DE DRÁCULA ENFEITIÇADA POR UM DUPLICADO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/337c3e15-9b78-4489-860b-242b207cfd49_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f8cf8818-6376-4c5f-9966-8f565a725ebc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Ajustador',
    'Após a morte de sua irmã por ter sido rejeitado o plano de saúde, Matteo Leone - um homem arrasado - decide fazer justiça com as próprias mãos, assassinando o Ceo da segurança. Mas sua motivação vai além da vingança: seu objetivo maior é expor as empresas corruptas de seguros de saúde que exploram injustamente os clientes mais vulneráveis. Matteo mantém-se sempre um passo à frente da polícia, deixando pistas pelo caminho para transmitir sua mensagem. Logo, ele se torna um herói para aqueles que os Ceo''s sem escrúpulos acreditavam silenciar o poder.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f0fe16f8-1abf-4955-be86-970ca0956042_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dffacfbe-1364-4ab4-a135-91b8284d2d75',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'No Apogeu Do Esplendor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/782baf46-b358-4b25-ab05-2b14425e9a4d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d5536591-a819-45a5-a18b-c9c1736b7cc0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Laços Perigosos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/05a54678-3a47-4ea8-8ae8-c93baa68dd9f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dd70df24-8698-4422-a238-1b81c3ebe2aa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa Está De Volta',
    'A protagonista esconde sua identidade real e se casa com um futuro político, mas o pega se casando com outra. Humilhada, dá a luz prematuramente e é salva por seu ex-noivo. Após o divórcio, retoma seu título de princesa e deixa a família do ex cheia de arrependimentos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/86555263-40d3-4bdd-8874-431a6d69ce71_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3057ddec-4094-4831-8ad3-dc098fb5af93',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Últimos 190 Minutos',
    'Sinopse: O renomado médico Mário Ribeiro recebe uma missão crucial da poderosa família Mendes: transportar um rim vital de Valia para Xonos em apenas três horas, salvando a vida de João Mendes. No voo, ele cruza com Júila Alemida, a futura nora dos Mendes. A tensão aumenta quando Júila e sua mãe abusam da influência da família, colocando a vida de João em risco.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/11ca0dee-c233-4647-8f23-ccb726312bef_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/197b402c-ebe6-4b7a-afa6-80190be17ec9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Um Pirralho Mimado Estraga Tudo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e01a5109-a63c-49f9-948b-047b01965db1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ce4a2f11-e6a7-49a3-bbff-a621205a99c1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Supera O Seu Marido',
    'Sinopse: Em uma maratona de identidades conflitantes, Lily terá que enfrentar seu ex infiel, a amante dele, suas mães, seu novo pretendente real, a mulher que busca conquistar seu verdadeiro amor e, por fim, sua sogra dominadora! Será que Lily conseguirá vencer todos eles?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ee552a54-aa8e-4794-8235-f232c2b67293_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e5fee5a2-6159-458c-90e6-93fa491462e5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'mortal? Já Estive Lá, Fiz Isso',
    'Ronaldo uma das figuras mais poderosas de jacobina está à beira da morte. No entanto, algo impede de partir deixando a família Menezes preocupada. No auge da atenção uma mulher misteriosa, Silvana bate a porta da família, todos acreditam que ela seja descendente do grande amor de Ronaldo. Mas quando Silvana e Ronaldo finalmente se encontram, algo inacreditável acontece ele se levanta milagrosamente e revela um segredo que muda tudo',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/67723ad4-2fd1-4a5a-82a3-12f7ebfa12f2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ff3e69c8-48e0-48fc-b2c0-6160befc72c2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Corretora De Imóveis De Ouro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/62a3679f-ce4c-44c4-9151-b2d3362d99a3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b5e77f97-30d0-49e1-a79f-6d6b02d460ac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sai Da Frente Sou a Ex Intocável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e59cb957-a1ee-49c2-a8ed-a8e8b5720702_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c2f1b6b3-b217-4ae3-8dc3-538fed7c85ca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Abismo Congelado do Amor',
    'Sinopse: Outrora amargurada por traumas, familiares Wei Ran rejeitava a ideia do amor. Mas a perseguição ardente e inabalável de Xu Nuo derreteu seu coração. Casaram-se, acreditando num vínculo eterno. No entanto apenas três anos após o casamento o desejo de Xu Nuo por emoção ou levou atrair sua confiança. De coração partido, Wei Ran dedicou-se ao legado de sua mãe a criogenia transformando-se em sujeito de pesquisa e desaparecendo da sua vida Xu Nuo. Com o seu sumiço, Xu Nuo ficou em pânico percebendo a verdadeira profundidade de sua perda',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1227d896-b29c-4420-83f4-268d9a1610d1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2b23f709-6c90-4094-9474-6e746e4d46ef',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    '17 Quebras De Coração Quando o amor Cala',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/69a42ab6-bce3-431e-9408-b2805a435294_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ff6d71e9-addd-4dc4-8ab1-28ce8c6ed05c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noivas Trocadas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4e356034-a461-4e64-b3ab-95ec541a3356_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/22a586ff-8be2-45af-9e10-6c5cd1e8c018',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Filho Nao Quero Mais Trabalhar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3ca611c2-e07a-4c10-a415-b540419fc377_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/680f0528-556c-4867-8ee8-4a4e639b4d91',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Modo Mae Ursa',
    'Quando Bianca enfrenta um bullying implacável na escola, sua mãe, Lorena, se levanta para protegê-la. Desmascarando mentiras, destruindo falsas acusações e acabando com as farsas, Lorena ativa o Modo Mãe Ursa — e a justiça será feita. Ninguém escapará das consequências. Ela luta. Ela protege. Ela vence — tudo por sua filha.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5cb7adb4-f16c-4282-9e64-7c0709fbc4d5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/43c036e2-2843-4f64-a302-2c30983e6eef',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Poder Do Conhecimento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cea1c912-8188-41fb-aede-34fa414c2904_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/03ea70b8-7819-496d-833e-c3155e70d2b7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascer a Princesa Retorna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/300d5b43-a832-40c7-85f8-d7c6ef638331_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1e30b4f1-295c-4579-906d-ad8c450c3f9b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Menina Encantada Do Regente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c85b9851-9727-488f-aba5-3137bcebace8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/13e5e0cd-e205-4b2f-8400-b6be2cda3b55',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Imperatriz Veio Trabalhar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2f3dd4d9-2056-409c-aa0a-ce4fad0a0121_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/4f58096b-02be-4812-b23f-a82fb06893bc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Refúgio Perigoso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aee4e3b9-4877-4869-96ed-689d61d42826_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/462ea128-ab8e-4669-8d8d-c9e437051613',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Preferência De Deus',
    'Após a morte da mãe e o novo casamento do pai, a avó materna das irmãs mayara e Melissa a mulher mais rica mais discreta, vem requerer a custódia de uma delas. Na vida passada Melissa descobriu a identidade da avó no Diário da mãe e escolheu seguir-la, apenas para acabar vivendo na pobreza do interior. Anos depois movida pela inveja e desespero Melissa matou maíra e se suicidou. Mas agora as duas retornaram aos 15 anos. Com escolha trocada sera que o fim mudará',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/25a602da-15d4-4fb5-97d3-145138364390_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/26949bd8-20a0-4785-a3eb-d2084a3eb2eb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Filha do Inferno Chegou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/19fe4999-2ccf-4fb3-bed7-3863f9482671_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0bfe5ce2-9a6c-4e59-b4cb-fd7d4d2a4d21',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O ÍDOLO DE HÓQUEI NÃO CONSEGUE ME SUPERAR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/13c5900c-ecb2-45cf-8f10-6e7f1b69e8b0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b3ba881f-b84a-4122-9332-d7eaa47d3375',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Te Perdoei 99 Vezes',
    'Pra ajudar na carreira do marido, Damien. Vívianne esconde sua identidade de herdeira e passa a viver com ele fingindo ser garçonete. No dia em que Damien é nomeado ceo do grupo ele dá uma festa e convoca seus melhores amigos para comemorar. Vivienne o flagra furtando abertamente com a secretária. Vivienne já perdoou 99 vezes, mas pela 100ª vez não tolera a infidelidade do marido, e ao mesmo tempo revela sua verdadeira identidade.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d6da97bb-6e0d-430f-a384-9b4603cba0a6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ce316aab-9b77-470e-84d3-23b65eb54422',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor Cego Do Comandante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/39846f02-d656-4615-ab41-184291e6583e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f93b3691-d562-436b-abfa-ec67f0653ea1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Minha Luz Além Dele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d4e517a3-a737-43dd-a7d4-992fbf658351_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8099a986-c727-4427-9005-e0f702fe834e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    '99 Amuletos 99 Desilusões',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d307b67f-2cd9-4552-af57-c8b68df982fc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f278504b-5fa0-41da-a004-7e90cc4cacb5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Ingênua',
    'Sinopse: A mulher foi enviada para as montanhas por sua madrasta desde criança, passando os seus dias aprimorando suas habilidades, enquanto permanecia alheia às complexidades da vida social moderna. Agora, seu mentor queria que ela saísse da montanha e inventou uma história de que casar-se e dormir com seu parceiro a ajudaria a ganhar força mística. Ela sempre acreditou que "dormir" significava simplesmente deitar juntos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/78f6df40-8820-4fd8-8cb6-2adc81467997_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0b49edab-accb-47a6-bfee-c2039cac326e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Meu Marido Matou Nosso Filho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b89e678e-a1cd-43b1-a3e2-8b40be716379_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8d8ad8d4-7217-496e-8f59-211c6a2f7ea6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Últimas Palavras do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3c1b9067-a28e-441a-b218-43c5608a109d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/69f89263-79e7-408e-8bb1-31a3841ec0cb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Domesticando O BadBoy do futebol',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a68553d3-7c56-4fe8-afc2-a962b281f0c6_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6a22835d-5ec4-415e-b8d3-441f5d15500a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Minha Irmã é Comandante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4079c0d8-5189-441e-aaf2-427c75c869f2_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/df3901e7-fe09-4c90-ace4-64e9c49713fb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'DISFARCE DESASTRADO DE UMA QUEDA SECRETA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6d17f3c6-ea08-4a0b-8325-78ffa40a0ec8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f81aa53d-e2f8-4139-adf1-13e9d0fa37d5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Segredos Da Orquídea',
    'Ursula Macedo desistiu do seu estudo e foi para o exterior lutar pelo futuro com seu namorado, Alfredo. Lá, ela fundou o Grupo Orquídea e, em sete anos, o transformou no maior conglomerado do mundo. Com o apoio secreto de Úrsula, Alfredo se formou e conseguiu um emprego admirável no Grupo Cabral. Depois, Alfredo abandonou Úrsula publicamente por vaidade. Mas ele não esperava por uma bofetada de luva branca da sua ex com Faustino, seu chefe no futuro.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ae78b8d0-06e5-4595-a962-e8bd60d85db6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fcd6546e-1ce9-4d12-a5dd-411d8ccec648',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noite Que Perdeu Seu Encanto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec757c82-a678-46f9-82d1-982e8c6f9a30_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/847682c1-01c1-42c1-8a30-186243ff4cc2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'JOGO DE TROCA DE MARIDOS',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f863c9f1-4e72-4928-bac0-b9dba0b6bb98_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bf0cf008-2c8a-4094-adcf-c06d23c91ec2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mil Vidas Por Amor E Uma Morte',
    'Sinopse: Lin Wan se liga por acaso a um "Sistema da Imortalidade" - mas cada morte consome sua força vital. Ela ama Gu Shiyan e o protege sempre, mesmo quando ele a envia para morrer por outra. Ele não sabe que é sua última vida ... Só sente arrependimento quando ela desaparece.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dbc8ebc4-c327-4473-a14b-76d26809640d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9450871b-eebc-4f38-9372-55924c039237',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Engravidei Do Meu Ex Chefe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/92e793d7-24cf-4c35-9834-1bd1029da415_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/3c60a5e5-2dca-4552-a067-7f7a83a9e137',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Queime O Amor Antigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec2e3999-4e44-42d7-9c60-b7d223acd92d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8523122f-92c5-42a4-844a-3ce0bca67d71',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Recordar O Que Foi Esquecido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/dd9b791f-dfc5-45ed-9880-f2f7f793624a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/45e1e3aa-68a2-4ea5-b4a7-73da39a01c1c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Conspiração Da Coroa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ecc883bb-fedf-4aa5-a0d6-ed22dc58b2c4_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/4e34b79e-8e95-4f19-b3e0-d6fe477ab567',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Perseguindo Minha Esposa Congelada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f14382be-1228-4ef7-979a-be9528817c3d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e79806c9-f85d-46ca-9ed3-99817254ebce',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Capturada Pelo jogo Dele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/63bc443c-db33-451a-b1d8-07ac241ef44a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fd578dc4-4f73-46d3-acb7-02c5aa0d65ba',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Ria! Ana Te Fez Assinar O Divorcio',
    'Ana e Lucas foram casados por três anos. Ela foi uma esposa dedicada, permitindo que ele brilhasse como advogado famoso. Quando Mariana, o amor antigo de Lucas, voltou, ele se envolveu demais no caso de divórcio dela e ignorou os sentimentos de Ana. Num jantar, amigos perguntaram sobre o trabalho de Ana. Ao saber que era dona de casa, olharam com desdém. Ela ficou magoada – afinal, fora uma advogada renomada, mas abandonou a carreira por Lucas. Vendo o sucesso dele, questionou sua escolha. Ana deixou uma carta e voltou ao antigo escritório. Quando se tornou um mito do direito novamente, Lucas descobriu que ela era sua maior rival profissional. Ele perguntou por que ela escondera isso. Ana respondeu: ""Abandonei tudo por amor. Mas agora entendi, preciso me amar primeiro para ser amada.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0e48cc0b-45d5-4ce2-a5e6-51507cca21f6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4e5e0c45-4010-42c1-a013-49f4cc378ffb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noite Errada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bc21aac4-3bcc-405f-a7d4-4620757c359c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/780cd6c5-a498-4877-9b89-d849d71cce5d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ex Mulher Rainha Da Ciência',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c9fc20da-1c99-4d05-97fe-260e54b92c21_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d40ffe2d-a4b3-4187-910e-0381f2db9ba2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Rejeitada Luna Voltou Com Um Filho',
    'Sinopse: Sia retorna com seu filho cinco anos após se divorciar de Alpha Reagon, apenas para descobrir que ele nunca a divorciou oficialmente e a odeia, acreditando que ela o traiu. Agora, forçada por Reagon a trabalhar como stripper como forma de vingança, Sia enfrenta o peso das mentiras do passado, enquanto Reagon luta contra seu desejo de puni-la e o amor que ainda sente por ela. O que ele não sabe é que Sia o ama e que o filho dela é, na verdade, dele.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/782d8be5-fb49-4c29-9bf2-f71d53a523cd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/eadbc624-7ff5-46b0-bb46-e9ab6d37bbb7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Criada Exclusiva De Um Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6b7cac46-c9a1-430d-b1f7-82109ab53cff_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/73043849-200b-4609-93f0-5baaf3524534',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MEU GATO BILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2969c5c1-c41c-4ef1-9c9b-a52a5e908bfa_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d12f3e7e-e10a-4e80-80ac-9181b4315a07',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amaranhado de Amor',
    'Sinopse: Em um programa de observação com tema romântico, vários participantes passam por uma série de interações e conflitos recheados de amor, mal-entendidos e lutas de poder. No final, um casal, Bruno Sabala e Sara Meira, se destaca com popularidade avassaladora e o verdadeiro amor prevalece. Eles fiquem felizes juntos...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9079f830-246a-4f47-a43a-5880ea0fdb4f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d42753ce-215f-4724-b0a0-e6d2386bdfe4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando A Esposa Não Perdoa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bbdfb5ae-7f04-44db-b6a3-78ed24aaac47_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/44bd3084-aff7-4734-9013-74924fdce09b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'SEU NOVO AMOR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/33e8cde4-ae4b-4ab3-9249-f905357c4f62_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4de411c0-a767-476f-a7cd-1986035166c4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Em jogo',
    'O herdeiro de Porto Nova, Igor Braga, fez uma aposta com seus amigos, conquistar a simples garota Marília em um mês. E para testar a sinceridade da Marília, ele fingiu ter um tumor cerebral para enganá-la. Marília, para salvar o namorado, trabalhou em oito empregos diferentes por dia para juntar dinheiro para o tratamento dele. No entanto, durante um trabalho no KTV, a Marília encontrou Igor em sua festa de aniversário e, sem querer, descobriu sobre a farsa dele. Ela ficou chocada ao ouvir tudo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/99ab965d-d3fc-440e-9c23-286b477583f0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0b4f5368-0983-49ea-87da-9ad28f23769e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ESPOSA É INCRÍVEL, O FRIO CEO FU ESTÁ CHORANDO DE NOVO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9e5d4b73-a179-4ea4-9249-48aa92303450_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a1d8e06b-f909-467a-a06c-268d6125ef84',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamos e Agora?',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/00e9387d-8fbb-42ac-b701-4ddf6e0d410a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/18d05378-4ba1-4860-9316-d86f6921af17',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apaixonando-Me Pelo Pai Mafioso Do Meu Ex',
    'Sinopse: Fay Alden flagra o seu namorado, Daniel, em plena traição e termina com ele. Logo depois, Fay conhece o pai de Daniel, Kent Lippert, o Rei da Máfia. Kent não apenas revela que o verdadeiro pai de Fay é o Mafioso Don Lorenzo Alden, como também lhe faz uma proposta: casar-se com o seu filho para unir os dois clãs, prometendo proteção contra crimes violentos para Fay e sua família. Fay aceita, e Daniel fica bem animado com a ideia pois assim vai poder distrair o seu pai de uma verdade incômoda: ele é gay. Enquanto tenta se adaptar no novo mundo da Máfia, Fay não consegue negar a sua atração crescente por Kent, pai de Daniel. Os dois acabam vivendo um caso de amor secreto, intenso e marcado por práticas de BDSM. Contudo, Don Alden não é quem aparenta ser e a sua intenção é utilizar Fay como moeda de troca para selar uma aliança com o chefão russo Ivan Kozlov. Fay e Ivan acabam flertando, o que abala ainda mais o noivado de fachada com Daniel. Fay acaba compreendendo, já tarde demais, que não só o seu pai e Ivan estão trabalhando juntos para destruir a Kent, como também que Ivan é um policial infiltrado que quer prender Kent, para depois ficar com a Fay só para si. Grávida de Kent, e depois de ele ser preso por ação de Ivan e Don Alden, Fay decide fazer de tudo para libertar o pai do filho que carrega na barriga. Com a ajuda de Daniel, ela derruba Don Alden e obriga Ivan a limpar o nome de Kent. No fim, Fay e Kent se casam e vivem seu final feliz.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e59273db-5c80-4daf-a4ff-80d2885b8bda_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6ef54409-166b-4667-8d22-48b1b1a0c6d2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Flor Proibida Minha Inimiga Meu Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0bb792ec-f219-44a8-88e5-a01fbb088b17_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1ca5a7d6-bff1-4b9c-a35a-876cf8851e30',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sr Leo Quer Voltar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3e6f1bbb-cfa9-45ad-ac52-cc8185c6b068_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2f2a1013-8095-4aa0-b5be-04b3cd8c051f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Bela Adormecida e Os Três Irmãos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4e9335ee-cbb0-4c5b-87aa-d494d763237e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/06f6e31a-545a-49a9-adda-b01e76d43538',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Arrependimento Do Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/df407fac-d6d8-4f80-8958-4cf66245c1cb_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/74049fe0-5e55-45da-bed7-2d8adc7324d0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Eu Te Amo Mais Do Que A Vida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d22ce53e-0703-4e5a-ad5f-e6e166f4d2a4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f3638a68-02ae-402a-a945-eb431cda7b16',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meus Herdeiros Inesperados',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e47cf361-8252-4127-b610-0b4502cd4873_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/50e59986-7a51-4749-a980-53e5c62a556e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu chefe O Garoto De Programa de Natal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bb328727-7449-4501-8d90-ad181cd0c3b2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8ec927d5-cdbf-4148-af9b-49501618ae2b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascimento a Esposa do Padrinho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/80158515-a163-4ade-812f-a2e8049c9669_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f2a90544-3c90-4225-91c0-d017d09bb955',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Meu Companheiro é Um Licano De Rua',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ca364058-03eb-4e35-a896-3f8dd91f314c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8dc0a942-c92d-4512-af43-44284b7421af',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejo Irresistível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/64440d9b-b7d9-4363-b09b-db371e70e23c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a94d79d6-6919-46a3-b8ad-18172a6d938e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Como Fiz O Alfa Ser Meu',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81f22db0-230b-4832-a7bc-3a4d6c2c8983_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/4bf83b86-30ba-4528-87ab-8e2dd9f7f675',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sinto Tanta Falta De Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7cef29b6-b43d-4547-8a7d-05e9da6af872_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/2903ccfa-e0ab-4070-a0a4-c68886ffcaa9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Refúgio Nos Braços Do CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bdaf9737-d8b2-4bc4-bb20-574d2b9ae52e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7a92f464-98ec-4c7c-b942-7ac1046786a6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herança e Vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fb28f991-e84e-476e-abe8-d61a1780733d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b75b7326-31c2-471a-9b1e-6b06ef33b392',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Favoritismo mortal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/05ccd1b7-9b6b-4358-8472-14c8c70b555a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/84c3f236-d8fc-4f69-8e8c-c8b185a8b34a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'SEIS BEBÊ UM PAI BILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9e8f3ee7-4e2d-455c-bb6b-ca4eaa3068f8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5fdfac2c-c08c-4093-8b29-6a9823aa2122',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno Das Gêmeas',
    'Sofia, presidente do Grupo Fênix, passa anos procurando sua irmã gêmea perdida, Vanessa. Quando a encontra, descobre que Vanessa sofre maus-tratos em seu casamento. Sofia ajuda a irmã a se divorciar e conquistar a guarda da filha, trazendo esperança de uma nova vida para Vanessa.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/08c3ec0d-2734-4b8e-8bc8-266af993105c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/650e9ced-e192-47f3-91e5-fdde188a23f8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Rainha Volta Com Poder',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2592c5ec-837e-4687-962f-cd9f9a1d7d6b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/64761b84-acf9-4633-a593-6bd87d987bc4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Devoção Ardente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a0f4e0b0-69b2-46e8-a718-20a6ea044943_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/df897f76-c4d6-413b-9958-1daa567991d4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Castigo Por Seu Amor, Repouso Em Seu  Ódio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4d8c9bea-8df3-4d53-81e0-09916e4ae433_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/99414828-fe7b-4b37-bbfb-5ad80492e047',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno Da Medica Famosa',
    'A filha dela estava doente e hospitalizada, mas o marido veio ao hospital com a amante e o filho ilegítimo e pediu que ela saísse de casa? Ela reapareceu na frente de todos como diretora do hospital, prometendo fazer o canalha pagar o preço.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c4aa374b-983c-4e47-a4ca-b4eb023291b9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4f93b298-3774-4849-ad81-55ba9acdacb3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Impiedoso Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fd3cf8dc-ae71-4b33-9918-ccf8f737a1b3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1f295575-e6ab-4aa8-be8e-9f8ec5536d13',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Liberte Me De Sua Traição',
    'Casado há cinco anos, Juliano descobre que a sua mulher, Zélia, há muito que tem um novo amor fora de casa, pelo que decide cancelar todas as suas informações e ir para longe daqui, para nunca mais ver a pessoa que o traiu.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/98d02fb7-5441-4a03-b81d-8ca930c5b001_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/524338f8-ae6e-4801-bc76-cdf9396ab078',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amada Pelo Meu doce Patrão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1f78f8dc-3c4d-4cc3-9f4a-50cca39ab33a_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6e3c3720-792b-4320-a483-4352c1fbe44b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Do CEO Venho Do Interior Para Te Apoiar',
    'Fu Jingchen, fugindo de inimigos, é salvo por Nian Baicao nas montanhas. Um encontro casual leva a uma conexão fugaz, deixando apenas a lembrança de um saquinho de artemísia.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6bfacd2b-526c-4c80-a2c8-3c247d91eac9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2a2eb40d-9a6a-4b1e-beca-2591f6969153',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coroa Na Poeira a Ira Imperial ',
    'Sheila, uma general valente, sacrifica seu braço para salvar Ivan, que lhe promete casamento, mas foge covardemente. Dias depois, ele retorna com outra mulher, e Sheila, traída, aceita se casar com um príncipe estrangeiro por ordem imperial. No caminho, é humilhada por Ivan e sua nova noiva, que acreditam que ela está tentando roubar o casamento. Quando Sheila está ao pé da morte, o Rei de Flumina, Nando, chega como tempestade para salvá-la.  ',
    'https://sres.dramaboxdb.com/data/cppartner/4x1/41x0/410x0/41000118203/41000118203.jpg@w=480',
    'https://iframe.mediadelivery.net/play/407552/420d4765-9b50-4ca8-9c09-f979962f82c2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Alfa Não é meu Tipo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cd5f3a77-7a27-4680-bebb-78163e22c258_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b204fb63-0ad1-4f89-80ca-fbe4b168d307',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Esposa XXL',
    'Maddy Moss, uma dona de casa de 250 libras, se transforma em uma beldade depois que seu marido, Luke, a abandona pela amante. Para conquistar o interesse de Felix, um bilionário, Maddy se vinga de Luke, de Olivia e da mãe de Luke',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/345c2d41-c235-4532-a2d8-ba01aa519c46_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5218f0d2-c5fa-4031-845b-c72bb1a90233',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reivindicada Pelo Irmão Alfa do Meu Ex',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e3d529ac-2a9c-4022-9fcc-bba12f149ba9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9ba81a54-5e15-4eeb-bf36-1025fe1d882e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Último Testemunho Da Irmã',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/36401b8e-cdc3-4400-8f42-9389ce8f98aa_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/5f6a2dfb-d963-4b30-9302-0c33cdd2975d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Tortura Delicada Da Mafia',
    'Sinopse: "A Tortura Delicada da Máfia" descreve uma jovem, Vanessa, que se vê envolvida no mundo da máfia para arrecadar dinheiro para seu pai, sendo escolhida como amante por contrato de Raimundo, um chefe da máfia. No entanto, Raimundo tem um amor secreto por Vanessa há anos, e a trama explora a complexidade do relacionamento deles e como superar as dificuldades entre dinheiro e amor, incluindo o perigo e segredos da máfia.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4d8559be-844e-42a8-932b-6ca5501c32ed_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b61bc58f-6424-4a32-9ded-447560364410',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Namorado Deficiente é Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/39b3c14c-fe8d-43fe-a619-8ce2e7328ef3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/19b828e9-d192-47e2-a6f9-92c6b0c67125',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Boa Menina Do Daddy Dom',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7b4fc67b-7bca-4210-9bdd-57b2b5748750_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4401aa24-4635-4c7b-8688-05d90639791b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno Da Garota Banida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f91636e8-44db-4135-8b14-070709eaa201_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/5119bf73-1857-4abb-8d10-249509457de1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vingança Conjugal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/04297c11-c56e-4742-88ba-eb9c729429e4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/972d7ef8-56cb-4878-a7f5-ee22b4831637',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Protegendo As Cunhadas Em Plena Fome',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/de964a6f-a3a3-43fe-a200-45d134f48438_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dfa189b8-7905-4af3-8194-bddda7a33ee1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida De Gêmeos Bilionário O Amor Começa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b5977a85-363d-4ddd-aa64-1ff80e0b936e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1f1e55a3-e5d1-4f14-877c-aa77859ebac7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ex Mulher Rainha Da Ciência',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/16a31449-8ad1-4c45-ba9f-ccc5b0efe2b7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dcb09239-3c12-4dc7-a6c4-ee93dfcbbc51',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Splendida Renascença Da Ex Esposa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/24cfe1d6-f83d-4c4e-b06f-bf80f17d8bcf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/66c20c2f-8cd6-430a-8501-71b241ef0e0b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois de Desmascarar a Falsa Amiga',
    'Na vida passada, Letícia Lima confundiu uma falsa amiga com uma irmã de alma, caindo passo a passo nas armadilhas tecidas por Camila Nunes. Ela foi desprezada pela família e teve uma morte trágica, atropelada pelo carro de Camila. Com uma segunda chance, Letícia descobre que sua salvadora de infância não era Camila Nunes. Ao ver a verdadeira face de Camila, ela decide fugir das armadilhas, percebendo que Lucas Ribeiro a protegeu silenciosamente em ambas as vidas. Letícia, então, desmascara Camila Nunes diante de seus pais, finalmente a expulsando da família Lima e garantindo que ela receba o castigo que merece.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a9e0c347-577f-43e6-b5b7-ba4e68c58ba3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ac41b353-5ea1-4e9d-ae51-1446d287d16b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Desajeitado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/120cda17-a4de-49ff-b594-6b0737614456_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f203ef9a-fbf6-4e8e-8b31-02298145432b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Você Era Meu Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b01835ac-331d-491b-9e2a-4166f628f195_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/44466e2d-045d-4691-ab20-38b6678ad877',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sequestrada Pela Máfia',
    'Sinopse: Vendida pelo seu namorado ao rei da máfia, Vincenzo, como sua noiva de contrato, Violet planeja sua fuga. Porém, ela descobre que Vincenzo tem um coração de ouro… que pertence a ela. Quando o perigo surge, Vincenzo salva Violet e sofre ferimentos graves, levando ela a se casar com ele por dever e gratidão. Mas, durante a cerimônia de casamento, um plano de assassinato vem à tona…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/74524b46-442a-4f54-9cb7-1a38663079e2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c89483f3-3ef9-4826-9d79-3babff1dcb7e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Doce Como Fogo, Amor Implacavel',
    'Sinopse: Sete anos atrás, Amanda teve gêmeos com Horácio, mas seu filho mais velho foi levado. Agora, ela volta para encontrá-lo e reencontra Horácio sem saber da conexão. Aos poucos, descobre que Henrique, o jovem igual a Lucas, é seu filho perdido. Entre segredos e emoções, Amanda e Horácio se reaproximam e se tornam a família que sempre desejaram',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0d9fe9ef-06ba-4e8d-8e9a-64b9108b50c6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f47361e0-83c4-4837-acdb-4f148a19bbb2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Pego No Ato',
    'Rachel cortou relações com sua família para ficar com seu marido. Eles se casaram e tiveram um filho, mas ele morreu em um acidente. A partir de então, Rachel passou a ter pesadelos constantes. Ao mesmo tempo, ela começou a suspeitar que seu marido era infiel e decidiu pegá-lo no flagra e se vingar duramente...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b9414dd6-cec0-42da-b7c6-599a000a7387_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/75628c08-5448-4ab7-88b2-59814bd93570',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Que Esta Falecendo',
    'Sinopse: Madissa amava Heitor há 16 anos, mas foi pedida por ele a ser um banco de sangue móvel da Ariane, que era uma menina por quem ele se apaixonou à primeira vista. Heitor destruiu toda a família da Madissa, só para Ariane ser a sua esposa. Um relatório de exame físico de câncer fez Madissa ver como Heitor realmente era , um homem implacável e cruel. Quando ela finalmente não amou Heitor, ela descobriu que estava apaixonada pela pessoa errada há 16 anos',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c115d0bc-dff9-47ce-bac2-f78ded610461_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cf1b80c9-0058-4429-aa4b-659be244b70d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Encurralado Com a Herdeira Mimada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/82821839-2e49-492b-89ed-1b9a7be8d1e2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6580b614-be84-489f-be51-62cb7a00fbd1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança do Ex Marido',
    'Bruno e Teresa fundaram o Grupo de Alves de raiz, tornaram-se marido e mulher quando eram jovens e apoiaram-se mutuamente durante 10 anos. Uma vez bêbada, Teresa estava grávida de um filho de um homem, por razões físicas de Bruno, Teresa queria dar à luz a criança sem contar a Bruno... Quando Bruno descobre tudo, decide divorciar-se e começa a sua vingança...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/edbd7811-0d01-4dff-9b69-da8dc7a87377_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9f55285a-ceba-49e3-b1ca-428b1b62abda',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O bebê Surpresa Da cinderela',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b2f0b4d2-d7af-4979-9bd5-4e44df16b78a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/76d9f6ca-eafe-49c5-a68b-ef5ca7515f6d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Em Movimento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3f1f4e9d-2357-4374-a55e-6e31d89c2753_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5b75d76b-2257-468c-9b91-ca964d6f1ab4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Me Esconda no Teu Armário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/844d38c1-0e6c-4206-a42c-0a6a312c9b12_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/85954cbc-5d0a-4fec-8619-91e3f7a08e8a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Santa Da Vingança [DUBLADO]',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9ca5457f-d8c8-4a66-b5df-cb31ff24e38e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8e4ccfd7-34de-46ef-a8b1-4cc8b65b4f93',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Babá Ex Presidiária, Pai Solteiro Bilionário',
    'Recém-saída da prisão, Grace conseguiu um emprego como babá. Seu chefe, o implacável bilionário Alex Hill só se importa com sua preciosa filha.  Grace passou no rigoroso teste de Alex e aos poucos conquistou seu coração frio, mas Grace guarda um segredo obscuro, que pode destruir tudo o que é bom.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c01d2cb6-2266-4238-b66f-8b11304d8cbb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a5a16985-4071-47c0-b7f2-dc807b5fa138',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Se Esqueça De mim novamente Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/54b38389-f99d-4c10-b426-21963c09fd34_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9cf8bc17-9b38-47c8-9dae-735801373b6d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor Entre a Névoa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8552d0d9-8950-463e-8788-58bdb345004e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7dc1a806-0a9c-4fbd-964e-034424d0b3cd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Ex Namorado E Seu Tio Enlouquecido',
    'Sinopse: Depois de descobrir que seu namorado a estava traindo com sua irmã adotiva, Reina Becker decide dormir com o primeiro homem que encontrar: Grey Winston, que por acaso é o solteiro de ouro mais rico de Los Angeles. Quando descobre que Grey é tio de seu agora ex-namorado, ela propõe um relacionamento contratual com ele, na esperança de irritar tanto seu ex-namorado adúltero quanto sua irmã traidora. Os dois lutam para manter em segredo a verdadeira natureza de seu relacionamento, mas acham impossível conter a paixão ardente que continua a atraí-los um para o outro.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8a2ed362-c2fd-4e8e-bc42-466c53fa8db0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2f7bafb0-1164-46c7-aba7-8b572de39031',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    '30 Anos Congelada - 3 Irmãos Se Arrependem',
    'Após sofrer abusos incessantes dos 3 irmãos, a irmã mais nova se voluntariou para um experimento de criopreservação humana. 30 anos se passaram em um piscar de olhos... e o remorso, enfim, chegou para eles.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/981441fa-3e15-4875-9bd2-cc1ab9800528_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1c94dd2f-e89b-4bd5-a3d4-c367533ab1db',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Acorrentada Pelo Amor',
    'Leslie, uma mulher doce e inocente, desesperada para salvar a mãe, consegue uma entrevista de emprego em uma prestigiosa grife. Mas, em vez de um emprego de escritório, ela se depara com Margaret Akroyd — uma CEO bonita, rica e poderosa com uma vida secreta e obscura. O que começa como uma entrevista de emprego desconfortável rapidamente se transforma em um relacionamento intenso e manipulador, repleto de sedução, controle, segredos e perigos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4366e0f6-1d76-4b6c-9466-31e43796f2de_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/463101c4-8037-4053-b363-146505129856',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Como Conquistar Um Raposa Prateada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/86f023a5-2277-4c38-865e-17a62e9dbd37_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2a0d9be4-24a3-44c9-b7b9-8c706fbc314a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CAMINHOS DO ARREPENDIMENTO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/519885e2-d52f-4bee-8ae5-110433ba5211_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c2c3de20-4f09-4677-99f3-00029d1cc47c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casei Com a CEO Por Engano',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8ce0d34d-f542-40bb-beeb-fadc185efc1c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a5869aa0-8a52-433f-95df-956633c05a43',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Noite Pelo Meu Filho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/53b28719-c3ee-4052-8020-7ca395e05f56_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5a1eee79-520a-411e-97bb-80435da006eb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fogo Entre nós',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/321ef169-0581-4adc-908a-d70f13833f38_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2d693178-e2de-4f3f-89f7-37b16cc69be5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Sou Princesa Sou Rainha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5cf560c7-2dbe-4cb7-80a2-706aeac087ff_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/885500cc-04f4-4d5f-b4a8-bb19df5d180a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esposa Troféu a Bilionária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/17a4079e-4ce1-4c80-855f-03102c22b44e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/474be8c9-3885-412d-b9a7-f4611d9bccda',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida De Gêmeos Do Bilionário O Amor Começa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d676ede2-7d6e-4b6a-9723-27898d7604a5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d8750869-2d6a-4129-ad71-ad8f5d482cb5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Seis Bebês Um Pai Milionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9c30fd2f-3a6c-4523-b64b-be3c172a9a85_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1996ca66-822d-49f8-8675-6b93a34a9bd9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Tinta Do Reencontro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ee476386-2536-4302-b9d8-9b3eb94104da_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/493e9c6a-80d4-475e-8833-3c038222890e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jogo Perigoso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5f8e9755-de16-417c-be14-115427a9a47d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2197bc46-f680-46ab-b01f-f3c6ad3e7229',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reencarnação Do Imortal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/26f451f9-ba7d-45c9-8b5b-cf9097a8fc4e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/55c9321f-b6c0-453c-a829-e4c706530a77',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Para Ficar Ao Meu Lado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/033fbc44-5f4d-4bc8-bbca-db29d69a89f9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/de83e795-d7ed-4c8f-9045-6fe9d8ea719d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Garota Do Escritório',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c4ab8994-4e9d-4f82-bce5-a8960f54d170_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fc8c3bdd-f70f-4dff-9532-841c4b9098e4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Beleza e vingança a Herdeira Inesperada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6174716c-7a53-45fb-bcda-d7ac3fdfa99a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d7035ddd-35e5-4a8d-8e9f-23baf11705c4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Presa No Abraço Do Chefe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/220b7464-df60-4099-aab4-7fc4f2641d36_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/866e0143-dc0e-43b1-9f49-620340fc511d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Caminho Para A Liberdade',
    'A Ana Souza nasceu em uma família que dá mais valor para os homens do que para as mulheres. O pai e a avó venderam a casa onde ela e a irmã moravam para pagar mais de $10.000 de mensalidade para o irmão, Lucas Souza, que passou na faculdade. Determinada a sair desse sofrimento, Ana se esforçou para passar em uma boa universidade. Porém, quando recebeu a carta de aceitação, o pai e a avó se opuseram e a forçaram a se casar. Com a ajuda da mãe e da irmã, Ana conseguiu fugir. Sete anos depois, quando já estava bem-sucedida, recebeu a notícia de que a irmã estava prestes a ser obrigada a se casar...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a2e3bd9c-fcaf-40e7-a800-a53d86df31ab_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7ca1899f-6664-4208-a294-c1457f94f954',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Emprestado Ela Devolve Com Lucro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/af0a8efb-23a0-4f7e-bd38-4275f1e8a310_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1449b5f1-0d05-4bac-8ab8-c01f81b98f08',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida do Meu Inimigo Mafioso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec4c17a4-95bb-4b0c-862c-935fecf8378b_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/e766c324-02aa-40fc-b227-9776991bee49',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Virgem Do Vôlei De Praia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6a69cfc1-9b47-4349-8b55-6c830c7fd731_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e83a0953-7a20-4d80-bc07-1d15ca7f98ca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DE PÉ MEU MARIDO BILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4c449420-cabf-4b8a-a8b6-4a7bd8d6ccf3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/71b4c4ab-fb30-47b8-be4a-eb37d5a18f45',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Rei Alfa De Sangue Frio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d4bebdf9-269d-417d-a5c2-ab0096ac6612_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4b7e56ff-d006-4e14-9bf6-18449d5a357d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando a Lua Caiu',
    'Quando Diana Silva estava grávida de cinco meses, Laura Queiroz atraiu os bárbaros Dizu para matá-la, mas foi confundida com a esposa do general e acabou morta. Antes de morrer, culpou Diana com uma mensagem escrita com sangue. Miguel Cruz acreditou nela e ordenou que os prisioneiros Dizu violentassem Diana, que perdeu o filho e morreu. Ao acordar no dia do massacre, Diana decidiu mudar seu destino e buscar um aliado poderoso.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0a0d164c-52a8-4585-a0de-a97a585ffb11_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/43796bf8-8d7c-4632-aa4d-a0023dc7acd7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Arrependimento No Espelho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/39bd73f3-4f5c-4537-9e1a-493b1b88bf63_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/70155c6c-4aa1-4d9c-8f62-9a70e44f832b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Riqueza Oculta Oculta Dos Pais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3b5509c6-f945-44fa-b046-e3812937beb4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b278a034-8021-41fd-8f86-06626cd5e540',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jogo Do Destino: Amor Após a Morte',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6137da26-9abf-4560-8c5e-e66c7799c5d9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/556825d5-fad8-4275-aa9a-138128bc6857',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando O Amor Da Pala',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/361b86d3-05b1-4aa9-9242-4d46f927efb7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/731cdcd0-4c28-4524-bebd-53f7c3d1733b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vingança de Sangue: A Justiça Da Irmã',
    'Sinopse: Hilda, CEO de um conglomerado, reencontra sua irmã gêmea Hannah. Antes disso, Hannah quase é morta por valentões. Para se vingar e descobrir a verdade, Hilda assume a identidade da irmã como estagiária e inicia um jogo implacável contra a gangue.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/80b577e5-ee0b-49be-a801-3f743b85a617_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c3a7c852-cb3b-42b4-b5d3-17d2e3911a6c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rainha da Bolsa Está de Volta',
    'Sinopse: Louise, a deusa infalível das ações do Grupo Alice, casa-se em segredo com David e o ajuda discretamente a a abrir capital. Após ser sabotada por uma rival, decide se divorciar e revelar sua identidade para se vingar. É quando Simon surge como sua nova esperança - o que ela vai escolher?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/376ab698-d899-434f-ba72-bffd7da8200f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f8e60902-62c1-41af-a25c-4e750f211c40',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Silenciado, A Reconciliação',
    'Katherine é muda e seu casamento de três anos com Wilson tem sido um inferno. Um triângulo amoroso com Riley complica tudo. Quando Wilson a ignora por Riley, Katherine pede o divórcio. Mas o ódio de Wilson explode! Apesar de amá-la, ele a negligenciou por anos devido a um mal-entendido do passado. Um sequestro revela seus verdadeiros sentimentos, mas Katherine está decidida: o divórcio é inevitável. Agora, Wilson lutará para reconquistar o coração de Katherine!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a393e5cc-780e-4fe6-8bf3-7a2a7c038b8d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/44af9e14-a779-4cc0-8be6-eb888efa88ea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Preço Do Arrependimento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/90e42301-c526-4c8a-9283-61d8cebf69ed_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/4409f53f-c892-4714-b103-b39c8cfbb8cc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Injustiçada Do CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/af118983-60f3-4938-9742-cdf8369d65e0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8522bf95-ce79-4100-bc13-759263f15a5f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Namorado é Piloto Da Máfia',
    'Tony Baker, um comissário de bordo atolado em dívidas, inesperadamente dá match no Grindr com Ryan Rossi, seu charmoso — porém enigmático — crush piloto. O romance deles decola em meio ao glamour da aviação, mas logo Tony descobre o segredo obscuro de Ryan: ele é herdeiro de uma poderosa família mafiosa e usa sua prestigiada carreira como fachada para o tráfico de drogas. À medida que Tony desvenda a perigosa vida dupla de Ryan, seu amor proibido se entrelaça com uma investigação eletrizante, obrigando-os a lidar com a política no trabalho, rivais mortais e a constante ameaça de serem expostos. Será que o amor deles resistirá aos céus turbulentos de suas vidas perigosas?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/218f7c3a-f957-490a-b20b-40978cef3f11_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3d8a1800-27ce-49e7-adfc-5b7b18a1e39d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Que Chegou Tarde',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0622279a-ce0b-4413-9e9c-870448648580_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1ec56534-7db3-4b67-95c2-387c8adb3aca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esposa Feia Do Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d26ed07e-f40d-4548-b754-4bde3f4e1330_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a416c1b2-4c75-4642-815a-ede54790e878',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascer Para Terminar Os Três Casamentos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db92bb06-3380-4df3-aefe-519c28e7f41b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7a165667-56b5-4f62-9c78-a99c6294caf8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Alfa Rei e sua Noiva Virgem',
    'O Rei Alfa Killian Storm foi amaldiçoado: ele não viverá além dos trinta anos. A maldição só pode ser quebrada se ele encontrar sua companheira predestinada. Mas... e se ela for humana? Os alfas não podem acasalar com humanas. Se eles acasalarem, ela morre. Se não... quem morre é ele.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/24d08f8d-1024-4f36-bcd1-29ddfc49de68_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a840872d-721e-4662-9274-f99e7bddd64c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa e o Pai Babão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/af8f745f-77d2-402c-9d76-2909f3782b83_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cbbc110f-bb54-49de-969b-cc17463ea080',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casada Com Um Estranho',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/65def757-08e5-4d9d-9d8d-e3c7a86109da_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/e5df40f0-00ed-4945-8934-e62a41bc6e20',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sou Nada Mais Que Um Mortal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/36df7f99-d572-4735-8407-b59b2b4c52f7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d086ec18-9260-4acf-977a-d22066f0a24c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sorte Perdida Seita Em ruínas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cdb6378b-8ec8-48aa-9d4f-71cd1ff01f22_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/771010fd-9f29-4add-a0d3-bc3950bcb4d1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Tive Um Bebe Sem Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/24f18050-e91c-40ff-96aa-26a2195b256d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/86456497-6c5e-4073-be63-43c0e0266281',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destinados a Perder a Luna Em Seus Sonhos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ce9dc58d-1eb0-48d2-8a9f-e72ce4f4e71b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9c2df1e3-2232-47e2-a6c8-c42a5ff803db',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Clara Entre a Dor e a Liberdade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/79941c87-1435-49fc-a0e4-c54c1e7f0090_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ee187586-500d-47d4-8c4f-e8deb5612acc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quebrando O Gelo',
    'Caroline, mãe solteira, terminou seu relacionamento com seu primeiro amor, Easton Black, há oito anos… Mas ela nunca lhe contou que ele a engravidou! Agora ele é a estrela de hóquei mais quente da liga e chefe de Caroline! Será que Caroline terá coragem de revelar a verdade ou será que é tarde demais? Baseado no livro Shutout de Jami Davenport!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ed3737e5-2725-443a-93a1-43c5d50a024c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/da987b06-36f8-477b-b7a5-a698c2fb13fb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Rainha Divorciada Da Marinha Desperta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cc060e15-0baa-4c68-9a64-4f44c0750d42_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bd9bf49c-e44d-4f03-a5a3-a00b895efa12',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Lógica Falha o Amor Não Atrapalha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4ec0868b-d91b-40fe-9688-9b2338d4b8df_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c5c8be69-ec6e-45a8-b75f-d4d5984ab6f5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Segredo Do Bilionário Acompanhante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/49335f00-5474-4683-ac82-dc723d666136_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/609f9828-248f-46b2-a278-fd8b7d9c3622',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'VOCÊ É MEU MINHA POR DESTINO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/210d4b43-f464-44ea-90d5-229797403d24_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/eaa17c8e-4960-4917-b0e8-567ed4757601',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renasci Após 8 Anos Para Fazer Meu  Pai Rico e Feliz',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bb38fdcc-c5f3-4dbf-839d-fa53492c7fd3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a4d22fd0-5383-412a-8c6d-eac48b0cd761',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Doutora E Seu Marido Secreto',
    'Barney Wilde, um bilionário do Grupo Wilde, disfarçado como "Kian", retorna para descobrir a verdade sobre o incêndio que quase o matou. Ele cruza o caminho de Skye, uma mulher determinada que foi traída por Jason — o sobrinho de Barney. A ascensão de Skye no hospital revela verdades chocantes: Jason orquestrou o incêndio para matar Barney. Com o caos crescendo, a ex-namorada de Barney, Kelly, reaparece, manipulando Skye e incriminando Barney. A verdade vem à tona em um clímax explosivo, com Skye e Barney arriscando tudo para desmascarar os vilões.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/472c02fc-882b-45b2-bc0f-4ee09eb60020_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c3ce0bb5-831c-4d03-a3b8-20771b2cdcb4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Ídolo Virou Meu Marido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2c6863e8-b88e-41b1-8312-8d915e5fdf1d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d168a7e6-8cd0-4687-b757-99402cec9b57',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Deisy Na Câmara Da Arma',
    'Daisy é enjaulada e leiloada para a sua primeira noite. No momento mais sombrio dela, o rei da máfia, Arthur, a compra por um bilhão de dólares. Ele a liberta e a protege sempre que ela está em perigo. Daisy se apaixona por ele, apenas para descobrir que pode ser um substituto para outra garota que ama margaridas...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1c114dca-6946-46af-adea-ccefc8287d5f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/88066a2d-f044-4a59-931c-5579d19761f5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Doce Herdeira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/856a3186-b6e3-436b-9f98-ef23a43857f3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/97ade650-e0c3-49ed-a09a-717745c235b3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Marido SemiMaduro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6f8b0117-9fd7-4ce3-be7a-2083761dd2f0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a19fde30-2a50-4fbe-bceb-2e6c46c3bcd6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Da Sombra a Rainha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2e89026c-0b55-4b4c-a300-38ad85d80927_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/7a1c3bbf-142d-49f2-a3fe-ebff6be616e4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Onde Termina o Contrato Começa O Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/38e031ae-0ed2-46cd-b408-68198e9eff8a_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/f41186a9-c29b-4773-bd27-904778bf22a1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Arte De Deixar Ir',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9ab405c7-d47b-42f9-acc5-61cc1dd5d5df_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fc3a0e16-d56f-4712-9c09-72c92b6ab62f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chama Da Lua Entre Dois Alfas',
    'Eva só queria sobreviver ao colégio e escapar de seu destino como uma ômega especial. Mas Roland, o alfa, sente a mudança e está decidido a reivindicá-la. Enquanto isso, Xavier, o misterioso aluno transferido, a observa como se já soubesse de algo. Ambos a desejam, mas Eva é a Chama da Lua. Quando a lua cheia surge, seus instintos ardem com intensidade. Ela precisa escolher um único companheiro — e, se errar, todos irão queimar.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/15789dff-bc4c-411a-a40d-f784ef3ad6b8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7f9f2f9a-e97b-4808-9fef-1f48cd316c4b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'TRAPAÇA FINA VINGANÇA DIVINA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0feae1e7-2c2d-4cd6-957d-28b9923e3f47_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a6720a63-dd20-43cd-8b4d-770dd4d540b3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Pai Do Meu Filho É O Tio Richard',
    'Sinopse: Jocelyn foi assassinada ao flagrar seu marido, Colton, traindo-a com sua meia-irmã. Num milagre, Deus lhe concedeu uma segunda chance, fazendo-a retornar ao instante em que foi pedida em casamento, três anos antes. Agora, ela não permitiria que saíssem impunes.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/237bed3b-b629-47a5-8d0c-eedf25cac567_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3e89f175-8832-4bf0-b2b3-235fdf1516d0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Mãe é Uma Agente Secreta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c0902cb4-f074-4c5a-b244-8d2809b1ada6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/08aee440-534f-4f57-9cfa-6d0b543bd4b7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vingança Silenciosa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/32d1ffaa-5b70-4837-95e4-2abe341e613a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a16c9ffd-86b2-499d-969d-d27072918b8c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ligados Pelo Desejo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cf345b34-2aab-47e5-90ce-aa018a22a368_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/658f0ec5-3a9b-4fc5-a981-4a693f5bc600',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Filha Do Bilionário Renasce',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bd8289c5-666a-4018-9ac0-b73bde37b792_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cf6b353b-63e7-4213-bb74-016ea97c857a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Rosa Do Presidente Gustavo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/91a95dfb-c971-4091-b70e-53999572b906_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7d11a5dc-815e-42b0-b66d-e777dc247df7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ROMANCE EM RUÍNAS AMIGAS EM FUGA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/66813541-d8e8-4ee1-bb2a-da01d51d958f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/effd5630-a50c-4918-bdcb-ad49a73ee0e6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno Da Herdeira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b96b6fbe-9369-4df8-8e75-328e58499498_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6a6a7bd6-5d38-498f-8743-96894f2aefcb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Nunca Mais a Salvação',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b082b348-1305-4ccc-a04a-b5e7d0d82e67_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b8745314-9b8e-4467-b15f-863096c8c352',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Silêncio Do Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/150ec49c-7795-42e4-9038-20b03ffb0cde_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e6d2a83f-db78-473f-85ce-3f63dd646e35',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Tirar As Notas e Acertar As Contas',
    'Após ser rejeitada por seus pais biológicos e desprezada pelos irmãos em favor da filha adotiva, Mariana é injustamente enviada a um centro de reeducação. No dia da divulgação do ENEM, ela sai livre, e consagrada: é a nova campeã nacional com nota máxima. Na frente de todos, durante a festa, ela rejeita a família que a traiu e transforma humilhação em triunfo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/32130aca-84ee-4dc8-9045-d5f570e02247_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6a4ca342-fbec-4a4d-9ae2-c20999aebbd3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ficar Com Outras Mulheres Traz Poder',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e440ae6b-f520-45a8-a815-8ed08c742513_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/42e9049e-773f-468f-906d-9d0943391ce8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Monarca',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db7d3f8e-2a5f-4e82-8988-678b0ec3433e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d2a09e0c-9b9a-4939-ab25-7174c06702ce',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Era Hetero Até O Beijo Dele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9bb69d5a-30f7-4f12-9328-3185d07ae31c_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1895f356-31b1-4e08-9af0-a1f6026e7b50',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Do Serviço Ao Sucesso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ba242f00-12c0-4778-9899-808e54a6f427_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/77dcc158-ce1c-4346-886e-15c6b5c7c195',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Obesessão Da Máfia',
    'Afonso Cardoso não suporta a ideia de sua única irmã, Alícia, ser forçada a casar com um homem perigoso devido a um pacto de casamento de 15 anos atrás. Para proteger a irmã, ele decide sabotar o acordo e se casar com o infame chefe da máfia, Peniel, em seu lugar. O que Afonso não esperava é que tudo fazia parte de uma armadilha romântica cuidadosamente planejada por Peniel, que sempre teve um interesse oculto por ele.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7397b747-c773-4fbe-aee3-7b033f07c50e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/15dbf34d-946a-4628-8417-89276bd1a2ef',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Do Pai Da Minha Rival',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a8bbfefc-1612-428e-bac3-1fe72a19cf39_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/156d8412-50d3-411b-bcb9-4462693d97cd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rebelião Dos Mortais Contra Os Imortais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1912abe5-6de9-489d-8904-501640a7b820_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/88570798-d310-4b1c-83c8-43bf098c8e80',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Neto Falso? Não Verdadeiro',
    'Cláudio Moreira mergulha numa guerra sangrenta para salvar Letícia e Benjamin do sequestro. Entre testes de DNA explosivos e um casamento arranjado sob ameaças de Ronaldo Barbosa, ele arquiteta uma farsa ousada: fazer o menino se passar por herdeiro dos Moreira. Mas quando o laudo chega...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cee315f5-03b5-4cb5-a2e8-9dc2525427b5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dfc913b5-ce50-4bdc-9e37-09fb2c22f7bd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Adeus Sr Ex o Seu Comandante Está Chamando',
    'Hazel Langston abriu mão de tudo pelo homem que amava, Ethan Grant. Seus contatos, sua carreira e, por fim, sua dignidade. Quando ele chega em casa após meses sem contato com outra mulher em seu braço, Hazel acorda e jura retomar sua vida. Ethan zomba: "Que diabos você está fazendo, Hazel? Eu sou o verdadeiro soldado aqui." "Para você, isso é Tenente Langston, Soldado',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/16314739-af76-4495-8e98-8b56d4594924_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6e3c4d54-089b-4d1a-af7e-7ad4290240b5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sequestro Nupcial Sequestro Do Coração',
    'Fu Rao pede ao Senhor Falcão Noturno que a sequestre em seu casamento forçado com Ji Yuan. No entanto, descobre-se que o Senhor Falcão Noturno é, na verdade, Ji Yuan. Ele impõe uma condição: Fu Rao deve ser sua empregada por uma semana. Ao longo do tempo, Ji Yuan se apaixona por Fu Rao.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5f8b32a7-b8b0-4d87-aed4-0bd54827f318_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3e86b936-c2b8-4dfa-9721-31d2337f60ea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casei e Fui Mimada Por Todos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e2081310-b0e2-40d6-b493-867ede300485_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/437c990a-f5af-47c1-8199-382c1b564c08',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida Do rei Alpha, A Omega Que Ousou Desafiá lo',
    'Coral, uma Omega servente, vive uma noite proibida com o poderoso Rei Alpha Victor e engravida. Temendo sua ira, ela foge do palácio, mas o destino a coloca no trono como Rainha Lua...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1e4e794a-e5f3-4178-8ec9-0b471335baf4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d7ce9813-496a-4319-9402-89d63f6cb14e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'EU DORMI COM MEU CHEFE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fb5131ec-b81e-49a3-b757-0246b9dc7f1d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/09ccd565-282b-4dc5-b4d8-09995cc97291',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Olha O Que Você Me Fez Fazer',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4ce05221-cf61-408c-922b-bbc6ef03d202_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/60621681-0d03-4d07-bd71-c8cc71e493b2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois De Sair De Casa Ela Dá Uma guinada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0f27907e-2722-4e74-9b36-a57eafed46d4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/91e6547b-33d3-4288-a1e3-4a5d071ad70b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'As Provas Do Amor no Tribunal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/593bc9cd-78fd-414a-b584-a6604349468c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0419ff86-c25b-4b36-9ead-475e202807a1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coroa Reivindicada: Ela Ascende Da Traição',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e46a91d0-5522-4c62-bc69-373247522cad_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b8a871a6-83f1-40d5-8589-18983a0e232f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa Da Nova Família',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c7b7d006-9389-465a-a749-d9e011b49f6d_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/c195f2bb-e218-4ce6-83d2-80575f5baefa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reunião Não é Retaliação',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/184443a5-9871-4889-8e04-3eef3514ae81_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/85b461c2-a567-48a4-8894-d56e9f96ac6d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'PAPAI É UM HERDEIRO BILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/28524987-3dc2-47a7-855f-6dd524ae443a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b604c822-fa6e-4a51-a96b-3a47c97bd237',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Arte De Libertar Se',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3cfdc106-b53c-4a15-8f7e-586ab5008c63_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8da778c6-eadd-4eb8-b304-6fd4c5a4665e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A NOITE ERRADA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ed174c0f-d98e-45f6-95a9-1fe71b04bca7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4c8e918d-d85a-49db-b6dd-2da4228691f5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Irmãs Renascidas Marido Trocados',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cce3dbd4-6899-4a5b-b0cb-acfe9db196c2_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/65a22401-e058-464c-a738-20ea94c627d9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ligada a Honra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/14d048fe-81fb-48b4-9c14-84b764cbfcfa_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a2f46540-ead1-45ac-894e-876eb0faa064',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeira Verdadeira VS Rainha Falsa',
    'Sinopse: Hailey Kaplan é uma adolescente rica que decide esconder sua verdadeira identidade quando se transfere para a Western High, uma escola pública. Cansada de ser conhecida apenas pela riqueza de sua família, Hailey espera fazer amigos verdadeiros e ter uma vida normal de adolescente. No entanto, seus planos vão por água abaixo quando Candice Mathis, filha da empregada da família Kaplan, chega à escola se passando pela herdeira dos Kaplan. Candice sobe rapidamente ao topo da hierarquia social, enquanto Hailey se vê na parte inferior, sujeita a bullying e ridicularização.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/922177cd-fa18-43c4-8583-c131e8b6bf80_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f1ac26ee-b672-4b81-bb0e-2df1ca7b673c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dessa Vez Eu Escolhi Mafioso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2406b14b-1138-4dc4-b448-47a2c37c6167_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b543e7c1-af19-40d1-92ce-820b93786c02',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sorria, Meu Marido Traidor, Está na Câmera',
    'Uma ginecologista genial descobre, no meio de uma cirurgia, que o marido a trai — com a amante deitada na mesa de operação. Grávida, furiosa e humilhada, ela arma um confronto viral que desmascara as mentiras, arruina reputações e faz ela retomar o controle com tudo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/53c5c42a-6438-4664-93f7-4b893096c016_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/071ea133-d3d7-42d0-bf51-c8a2359c985d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois Da Dor Eu floreci',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/22d71f31-c613-4d49-85de-8b4fa9564eb8_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1b5747c8-4740-48d3-b81f-24d660e4366f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Brilho Da Sra Joana',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/075fa4d4-56ab-44fc-8af3-d220fb9984b9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ad555a50-86f5-4948-89a2-e9b4f04e4969',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'AMOR, MENTIRAS E SURPRESA DE NATAL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6e0e6902-80d9-4d1c-8a39-2c2165b18e46_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b9349dc6-e56d-4d49-9340-4e7331f8ed8e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Perdoar Pela Nonagésima Nona Vez',
    'Alda Dias, a herdeira rica, se apaixonou por Iago Faria, um estudante pobre da faculdade. Mas no coração de Iago, sempre houve Dina Moniz, seu primeiro amor inesquecível. Para não ferir o orgulho de Iago, Alda escondeu sua riqueza...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ebe70249-5883-4b54-b492-7001df525d69_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ee086647-2a19-4e9c-83ca-7acdee708e5f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Pobre Esposo É Bilionário',
    'Sinopse: Stella teve uma noite com um estranho e o confundiu com o homem que a envolveu em um escândalo de prostituição, arruinando sua vida. Três anos depois, Stella se casou às pressas com um homem chamado Ethan, e os dois logo se apaixonaram. No entanto, aos poucos, Stella começou a perceber que Ethan era semelhante ao homem de três anos atrás. Para piorar, Ethan vinha escondendo de Stella que era CEO. Incapaz de aceitar a verdade, Stella decidiu se divorciar de Ethan.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7000c7f3-cfa0-4382-9116-2c847d9691c9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6ba8b39a-2e17-4f1c-86d3-2e389e41f04c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'How To Break a Dilf/ Como Conquistar Um Pai Gostosão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7e12840f-9888-48f8-9f97-665433dedd07_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7b653b7e-1cf2-4a69-bf8c-85dddcef9274',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Professor Meu Vício',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d8fd51f0-0329-4a6c-838a-174a41498719_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7b96d13a-d0ae-4e18-8ff2-fd1cc218bc37',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Xiu Somos Um Secreto',
    'Sinopse: Em um mundo onde a lealdade entra em conflito com a tentação, um herdeiro rebelde e sua encantadora meia-irmã recém-chegada enfrentam perigosas disputas pelo poder, traições familiares e um romance proibido — arriscando tudo para proteger seus segredos um ao outro.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6d57ab30-70c3-4643-bc9d-eb0aa75f4c86_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f0c21922-4d5c-4f40-86f8-d893e93d1ce4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Acertos De Contas Levanta Voo',
    'A caminho do casamento do irmão, Eve pega um voo para o Havaí e reserva um assento mais largo porque está de perna engessada. Dentro da cabine, uma mulher malcriada e o seu filho mimado exigem que Eve troque de lugares com eles. Quando passam por turbulência, o garoto tropeça e sua mãe manda o avião dar meia-volta, agredindo os pilotos e forçando um pouso de emergência. A irmã dela, Clara, surge para lhe dar cobertura e acusa Eve de ser amante do próprio noivo, sem saber que ela é, na verdade, a irmã dele. O casamento é cancelado e Clara acaba presa.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/258bbe81-135c-450a-a8db-0f3ad37e13c2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/be9d677b-c242-4cc2-811f-cef928b83b79',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'The Age Gap',
    'Sinopse: Quando uma escritora recebe a tarefa de entrevistar um astro do rock, uma noite inesperada muda tudo. Entre manchetes e holofotes, nasce uma paixão que vai além da relação profissional.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b74dadc2-7a9a-4944-9b91-fde188d5f755_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d60c96b7-80ad-44c4-92c2-6519e2dc3d44',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apaixonando lhe Pelo Melhor Amigo Do Meu Pai',
    'Kylie, uma jovem ousada e determinada, nutre uma paixão proibida pelo melhor amigo de seu pai, Jaxon. Enquanto ela o provoca com seu charme irresistível, ele luta para resistir à tentação. Mas à medida que a tensão entre os dois cresce, um limite é ultrapassado, levando a uma traição irreversível que mudará tudo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d7b577da-febc-4cfa-ba67-a16ac9e02ff1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3a65ab25-ef42-49b3-9b4d-0004e80192e5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Alma Delicada Coração Quebrado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/29a28728-ae09-4de7-9acb-9ae36e453e17_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1afd5b10-a55e-4c67-b490-12bea226d209',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A VINGANÇA DO GÊNIO BILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f127ef41-6d78-4174-98de-10e1270a5280_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/895156ed-ad09-4884-ae0a-7d8c12cdc6b6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quatro Natais e Um Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/986ca519-ff88-4081-bd91-4b8f50abfddc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/375a0363-d71c-4b20-aa1e-b06f55a70dac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Encontrei Um Marido Multimilionário Para O Natal',
    'Sinopse: Victoria estava pronta para voltar ao Texas com seu noivo Carl para planejar o casamento, mas foi terrivelmente humilhada e traída por ele. Para não se dar mal com sua família, Victoria relutantemente concorda em se casar com Simon, um sem-teto que ela estava ajudando. Mal sabia ela que Simon não é um sem-teto qualquer - ele é um bilionário bonito e charmoso, CEO do prestigioso Jones Group, classificado como o número um do país. Ao retornar ao Texas com Simon, Victoria inesperadamente cruza o caminho de seu arrogante ex, Carl. Dessa vez, ela está determinada a recuperar toda a dignidade que perdeu.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/677ab29c-03ca-4ea7-88c7-369c19811ee1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/27e811c9-7fa7-42b6-bd65-07031b393949',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vendida ao Chefe da Máfia Possessivo',
    'Sinopse: Duas pessoas unidas por um acordo. Ela está presa sob o controle de um chefe da máfia, mas se recusa a perder seu espírito, determinada a colocá-lo atrás das grades. Será que ela vai conseguir ou será tentada a se juntar ao lado sombrio?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/edb1a5af-abb1-4872-bf13-95c1eabd9c28_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/76227ccb-5301-4878-ab1a-e6561088d097',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Viciado Nela, A Querida Mimada Do CEO',
    'Sinopse: A série "Viciado nela a Querida Mimada do CEO" é uma novela de romance que envolve um CEO e uma protagonista que é mimada e considerada "a querida". A trama geralmente gira em torno de um relacionamento entre eles, com conflitos, paixão e um envolvimento intenso. A história pode envolver um casamento arranjado, uma noite de paixão, ou um envolvimento inesperado.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/12c8b4fd-5218-4562-9589-cac730f406a0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/84592df1-dea6-4858-aed0-8519f0cebba5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Anos Perdidos, Como Se Fosse A Primeira Vez',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9e3b91cf-4257-45c8-94b1-b5c1a7b395fe_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c15be7c4-c928-4be6-8206-5945117da1d7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando o Amor Vira Traição',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/da33c80b-2323-42e2-a25d-a4349e8dfa0a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/893d4eeb-ac0d-4d8e-ae91-feaf4a54e26f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Amante é Um Sniper',
    'gira em torno de Valentina, uma mulher enigmática que busca acessar o cofre com a herança de seu falecido marido. Para isso, ela precisa da chave e de informações sobre sua localização. A trama se desenrola com a descoberta de que o marido era um sniper, e Valentina se vê envolvida em um mundo perigoso, precisando lidar com segredos, perigos e desafios emocionais.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d08ba90a-b99f-48af-8493-de0b0f26c74b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/92250a99-9d44-4242-b766-37a740a7ab9c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Dia Em Que O Amor Morreu',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f6f1e274-f513-4f6d-ba5c-d020c861bfbd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/19e77136-fe0c-4a9a-a1c5-356ef0812f4d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'AMOR É UMA DANÇA PERIGOSA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/478c877d-08f7-44a7-9015-42373586ca45_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9a6d169b-b983-47d4-a5b3-390ff043c542',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Marido Malvado Por Favor Acorde',
    'Você é forçada a se casar com o bilionário de sucesso Adrian Lewis como a noiva substituta para salvar a vida do seu avô. Pelo preço elevado de cinco milhões de dólares, você se vendeu para a família Lewis com a promessa de gerar um herdeiro. Mas há um problema... Adrian Lewis está em coma!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eac89552-cad5-45f5-b224-7fd6ecd06b7e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1ba260cf-2e47-40b0-ad65-43bd0849ad6e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Grito De Um Mãe',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4796cb70-8c0d-42e8-bcc2-f52c194a3070_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c3341095-7df0-417c-92b2-50aa332baf6d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Você Chama Minha Mãe De Amante',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2a646200-9126-47d1-9572-24d6b005e4a3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f430cda4-0ab9-4494-abda-fdc8871b36be',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A MENINA DO POVO TAMBÉM E MIMADA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b2e6771e-1896-44ed-aa99-41dd9c76f526_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4b9ecc78-17ea-445c-bdfa-53d1f31ff8e6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mamãe Não Fuja! Papai É Louco Por Você',
    'Aline Moreira, atriz desconhecida, divorcia-se do CEO Enzo Xavier grávida. Anos depois, sua filha Lúcia é descoberta como herdeira Xavier! Entre reconciliação ardente e segredos revelados, o amor prova ser o maior prêmio.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/50d20978-50b0-4bd5-a200-bd3ef9b61afa_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8c0ff8ad-fd1e-4b59-b077-51b0b337a8fe',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ELA NUNCA FOI COMUM',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3b00dae4-8feb-4a79-a8b9-ccc9e7dd3d0d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8de30f73-41a9-4940-922b-6572f9b13615',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sr Fertil De Maldição a Benção',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/11cb9e29-baaf-4ad1-94ae-3d9d6ee48984_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c772b57f-3c66-4c9c-94cb-9f8e91fd9a84',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Boa Menina Do Papai Dominante',
    'Após flagrar a traição do namorado, Olívia se vê atraída pelo pai poderoso e dominante dele. O que começa como vingança se transforma em um perigoso jogo de desejo, segredos e controle - onde ela pode perder mais do que apenas o coração.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4715431c-ef4c-46f9-87ae-bbbec8f96e03_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/90851ab1-92d0-43d1-992f-bbb41a61cc46',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MARIDO POBRE ERA BILIONÁRIO!',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cf742b1f-37cc-4860-ba1c-688bda37839f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ab6cfea9-a156-43e0-8528-30e804297f8d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Tola Contra Ataca',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b04c5795-2d50-4630-89cf-2c3c963cfa34_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c76e671c-16ac-4e8a-a18c-c38f63688767',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Ano Em Suas Cadeias',
    'Quando o marido de Anna contrai uma dívida colossal com um perigoso chefão, Jeremy, ela acaba virando o próprio pagamento – literalmente, torna-se propriedade dele por um ano. Preparada para encarar a crueldade do famoso mafioso Jeremy, Anna descobre, em vez disso, um homem ferido que se esconde por trás da máscara de frieza. Seu marido infiel quer que ela seduza Jeremy para lucrar. Por seu turno, o pai de Jeremy prefere vê-la fora do caminho. Entre mentiras e lealdades, Anna percebe que o homem que a acorrentou, é o único que realmente quer saber dela.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e10f3b68-22aa-43be-b1e2-8c6f55748c73_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/eea05caa-ebba-446c-bd56-5db0d9fa8f9f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rei Bastardo da Luta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4ccca846-637a-4aa2-ab0b-0b70e7cb0087_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ea4546c8-8d4c-4b1e-bfd1-f369df9deec6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Domando o Senhorio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1bd9c2ca-d73d-4022-ad5d-1c4914266755_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e5335c66-1094-4b87-91cb-729c197edc31',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fora Da Prisão Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0bc63444-4714-4680-afe1-3dc68792dd1c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/078ab0fb-d5ee-4455-9f32-d461e2b22230',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Segredo Do Nosso Passado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e79251a1-f993-4bdb-937b-1ec440f7933a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c5d95ed3-bef2-45e7-b35e-fb3152e27ec9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Amor Virou a Sua Ruína',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9060dc79-308d-4ff5-b1b9-9d9ba2a39b0f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b634a93c-9502-440c-b5ef-d225eaf6e626',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Santa Da Vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81606441-334c-4f13-8c42-fd861e7921ad_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b4296586-a4ed-4846-8d05-a76df099b2ac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'GRAVIDEZ ACIDENTAL ROMANCE COM O CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/da165e48-d056-4796-85bc-448cd4ace9ec_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/21d90ce8-a7cd-4c8c-bb4f-e608cb5497ed',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Domando Meus Agressores',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5e4c3c1a-1911-4ed2-afaa-76b80e94e924_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/799d257d-8bc3-47fe-9b0a-2a3ef0a96ccf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Último Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e351d315-ddec-41cc-ba28-2ebc3365eb9c_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/9f6c82f8-e779-422f-97a3-25b29f66fb90',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois Da Florada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/057d6d03-7069-4186-8afa-bb2a40edfca0_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/ec9b1630-b934-47c4-9df0-0eb235620a39',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Você Não Vê Brilhando',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/177ad13b-7069-4f11-8c34-6df5fff90cee_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/67b40a2a-ad6d-49e0-a611-1c12b5e84e17',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chega De Ser Usada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b5f402ba-2df4-45fd-b954-ccef137fca9b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1a1b85a9-dd8a-4013-a1cf-889c86015e25',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'SWIPE WRIGHT ENCONTRO 101',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3dd62365-ff1b-4237-9d99-57d10cc4b803_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fe57617c-88e7-433c-8dce-b99ce6eae6c3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Bem Vinda a Sua nova Vida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/30abfec1-04ee-4a52-9eda-5823188dd3e9_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/52b9a01a-2e97-4bbb-9026-1ebded05879b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divorciada e Desejada Pelo Trio De Pretendentes Da Elite',
    'Uma garota rica mantém sua verdadeira identidade em segredo e se casa com um cara que não é tão rico. Mas a família dele a desrespeita porque ela vende peixe para viver. Ela concorda calmamente com o divórcio, mas agora, três homens brilhantes correm em sua direção, cada um alegando ser seu noivo!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/be73c78d-10aa-4c53-9c42-3a809bb387ad_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1b0593e6-752a-492e-a0eb-5d96ee161dd2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois que Minha Filha Genial Cai',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7bcffc52-167c-46c7-8ef6-5445282ea319_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/70bce4d2-7edb-43aa-8b6c-d6871094e952',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Queime Minha Gorda',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/904a6826-13b9-45bc-a35f-ae0985afa796_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/aeb65b27-6f34-409a-88f0-465dbd57eef4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Flor Proibida Minha Inimiga Meu Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b62b54d7-4072-4c6c-a283-2015eaf323b7_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/b5a9e70e-56f5-4931-971c-0a6cdbbe51a0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Sintam Minha Falta Quando Eu Me For',
    'Depois que perdi meus pais, fui morar com minha madrinha, tia Sandra. Passei a viver sob o mesmo teto que seus dois filhos, os irmãos Miller, cercada de carinho e afeto. Achei que acabaria me casando com um deles. Mas tudo mudou quando Lola, a filha da empregada, entrou em nossas vidas. O irmão que eu mais amava partiu meu coração. E quando eu fui embora, eles ficaram desesperados tentando me encontrar.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7d969fd0-aa52-4ccd-8b1f-a93fd6f02327_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d3ee527f-0df2-4ec5-ba66-9e062780c891',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sou a Obsessão Mais Perigosa Dela',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0e22ff2c-8ff4-41cb-a6fa-a85092cdd2af_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/00e825ab-ecd9-4243-85ad-e3853c535867',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Rebelde',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/00eb1446-407a-42de-9d0c-50ac5cc326f3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/918b9d7d-3655-4a7c-9cd5-3a3f6a96d2b6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'TRÊS ANOS DE GUERRA FRIA A TERNURA SE FOI',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aad9384a-62f6-46c5-8d72-9768ab5523ea_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6d85ee92-c64d-4933-84ec-a08ad6c56b0f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Inabalável violinista Ella',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/08d1d9ef-5aa2-4fce-b84f-1b00b49590b2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/67667047-9e76-4e1c-906a-0b0716e5df36',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Em Chamas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0b3bb4cd-e1ea-468c-b377-09177a2304c5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1d2829a9-1de4-44a1-a060-b23307ea6617',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casada Com Um Tiozão Quente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81cc0c5e-bd1b-4ef1-b303-7a7aa9a5c8fd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9dad2ef4-e1f2-4309-a4dd-c1096cab0056',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ME MIME POR FAVOR SPOIL ME PLEASE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ba8b3a49-81eb-49d5-8fb1-c2a2ffa45890_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ecf08ada-983a-4e31-90b1-0761a636f48e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Despedida Após 99 Vezes Perdão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/48f590c4-2eb7-4c4e-9ff7-041f65d03ca8_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/d8f81a4a-055a-472d-8acf-7e8b59b7ef2e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sou Nada Mais Que Um Mortal',
    'Rodrigo, discípulo do Monte Locust, alcança o nível de Solo Celestial em apenas 20 anos. Incapaz de ensiná-lo mais, seu mestre Benjamim, um orgulhoso, mente que ele não tem constituição para cultivo e o manda embora. Rodrigo salva Alexandre, que é ferido por uma barra de aço atravessando seu crânio enquanto todos se sentem impotentes. Em retribuição, Alexandre leva Rodrigo ao Clã Imortal, onde ele é testado com a Pérola Divina Caótica, que revela seu talento verdadeiro...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/25552609-2049-43c3-9c6f-ea468e96acdc_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d086ec18-9260-4acf-977a-d22066f0a24c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dar O Fora Virar a Dama',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8b81b096-f411-4b11-8214-5b37b39cc250_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/92abad51-19fe-44b9-b9f0-593f7731d643',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Aposta De Amor Ou Morte',
    'Sinopse: Ignorada pelo pai e pela madrasta desde pequena, Amanda cresceu buscando afeto. Já adulta, escolheu Norberto como seu guarda-costas e logo se apaixona, investindo tudo nele. Mas ele parece imune. Até que Amanda descobre: ele está ali pela sua meia irmã. Ferida, Amanda decide se casar com Teodoro, um herdeiro em estado vegetativo. Quando Norberto percebe que amava a pessoa errada, já é tarde demais.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/454ab0a5-081a-41b2-bc39-89b2c852182b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/63e0ca12-a641-4308-bdb0-49e14c421d4a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Entre Cinzas e Desejos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7882c849-7893-4538-9eca-0ea34c799a06_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e62dec49-2ef7-420c-9634-0963cf3ac370',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mistério Da Senhora Rica',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1d39ecb9-1a1a-4341-aa3b-6fda174d8291_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/edea1073-ab74-4256-b535-784b64eb8bd4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeira Retoma Seu Tronoo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c2ee40ee-fd2f-4d86-adda-d73747b9519a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/51c43872-b771-4223-b8ee-58fa2616e826',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Meus Três Irmãos Ingratos Voltam Rastejando',
    ':A mãe de Oriana morre quando ela tem só 6 anos e a sua madrasta abandona ela num parque de trailers. Com 12 anos, ela salva o homem mais rico do mundo, Murray Morel, sendo adotada por ele como neta. Dois anos depois, seus três irmãos biológicos encontraram-na e ela decide voltar para a sua família biológica. Por consideração ao ego deles, Oriana esconde a sua fortuna, enquanto ajuda os seus irmãos em segredo, fazendo de tudo para eles se darem bem na escola. No entanto, eles acabem sendo manipulados pela sua meia-irmã malvada e começam a maltratar Oriana. Eles expulsam-na de casa e quase a matam de porrada. Após ser resgatada pelo avô adotivo, ela finalmente enxerga quem seus irmãos realmente são. Ela rompe, então, de vez com eles e decide recuperar tudo o que era seu por direito. Depois de serem castigados, seus irmãos percebem que Oriana era a única família de verdade que tinham e se ajoelham, implorando pelo perdão dela.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7803b4ee-6f27-4195-90e2-70c22ab59465_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/72bcf9b2-9ad8-43a0-accb-a446c44deeff',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sr Silva, Você Escolheu A Pessoa Errada',
    'Sinopse: A cega Camila Souza descobre que seu namorado, Guilherme Lima, a traiu e foi armada para ter relações com o bilionário Carlos Silva e engravida. Sob pressão da avó, Carlos se casa com Camila, mas despreza ela, sem sabe',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5748faa2-de8a-4e6c-af3a-657c77f6243e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0a3f213e-a7c3-4800-aed6-599eb4fd12dd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MINHA MÁGICA LUNA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/154fc323-68f6-4502-bdce-d7901aaa0c79_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d8cc0993-d1a5-4698-a2a1-0b8ea2509287',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejos Queimam Devagar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/87f8ab52-2fff-4508-9022-ec1759854771_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/30ca9eaf-72a7-4f91-a07f-3da58de5cae2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'LADRÃO DO MEU CORAÇÃO SOB O UNIFORME DE SEGURANÇA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e8db4b1d-2fa6-4e93-b7cf-485208a51b5a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a6ebd61e-60a6-43fa-acc8-49f2a705900f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ela é Só Minha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3759825b-e94d-4aa1-8b12-0b50949dedc8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a99f6d9b-578d-4deb-8256-dc4270a2ca5e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Exame Errado Pessoa Certa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1d0d12e8-1f91-4eb2-a123-16df908bdeff_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/06e012cd-d427-4f1f-9980-2118c9749342',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Conquistei um Bilionário Para Ser Meu Esposo',
    'Camila, uma jovem simples e determinada, aceita um casamento por contrato com o bilionário Enzo Valentini, que precisa de uma esposa para garantir sua herança. O acordo é claro: nada de envolvimento emocional. Mas à medida que convivem, surge uma conexão inesperada — cheia de paixão, ciúmes e sentimentos que ambos tentam negar. Quando segredos do passado de Enzo começam a vir à tona, Camila percebe que conquistar seu coração será o maior desafio de sua vida.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/71262722-6943-4582-a493-65f4381978b1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5a3b760e-a99e-4ad2-a7c2-c823bcb30dca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Como Lidar Com O Tio Selvagem Do Meu Ex',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/123a14d8-dbc6-4401-9f17-7ee348b39805_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/392e5ecc-0266-4fa3-845d-88baf62a9036',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva do Inimigo',
    'Sinopse: A vida de Annie muda quando ela descobre um segredo—seu pai é um chefe da máfia, e agora ela deve se casar com seu inimigo, Daniel. Ele é frio, poderoso e perigoso. Ela é apenas parte de um acordo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/72fb1d65-9d11-4139-94ec-445ca7003b08_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f636c545-e1a3-4e00-8520-821e492f7dd1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sonho De Saudade Do Harém',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d1be554c-dbb8-49b0-8aed-844eddfd3280_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a35b3b4a-cef5-4bfe-b205-2b0fcb10d8ae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jogo Da Mentira Virou Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/105b1f68-f69b-400f-ba0b-86001f06a3f8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6e867174-e206-4a26-aed4-7c9a0548d014',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fio Do Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a7c8eb18-9ddf-478d-aeee-8263f533d6ce_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ce8658f6-9238-4cb0-94e0-5b3fce94b69d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'PS: Meu Barco De Amor De Amor Zarpou Sem Ti',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cc87dca6-5da4-4950-aabc-968f79a809a1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/11d8e098-a4b2-40ee-9536-65df1bd75038',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Segredo Do Poder Maldito',
    'Sob os Céus de Nortúria, clãs seculares tramam em um jogo sangrento. Há sete anos, Bruno Wang e sua esposa foram assassinados pelo próprio irmão, Victor Wang. O jovem herdeiro Leonardo, considerado um inútil sem talento, foi lançado no abismo da Montanha da Alma Partida. Todos acreditaram que ele havia morrido. Mas no fundo do abismo, ele encontrou o legado de um Imortal Celestial. Quando seus olhos dourados se abriram, o destino mudou.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/46aa8670-b03a-471b-be63-9cfcb2293b17_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dbf29840-937d-4233-9269-8bcbbbe9f538',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Escolha Do Bilionário Par Perfeito',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/07aa1676-6579-49f3-af42-645bc006a4e4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/060aa42e-9e0f-4154-b6ce-0709fc2dd745',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Acordo Com Meu Doador',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d544637b-9669-4c71-8502-c2eaa22d2bba_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/677b63b2-6e73-4913-8021-0f34bc3ab8a8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Ex Esposa De Face Dupla',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/57ebe366-9a77-4431-9b2c-a040bf6e926c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d4c0ca63-1775-4fb4-a605-868dfe71f34d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fazendo Campanha Pelo Amor',
    'Sinopse: Depois de uma noite com um estranho encantador, a jovem estagiária de campanha Sarah fica chocada ao saber que ele é o seu chefe - o candidato ao senador Christopher. Com uma eleição em jogo, o segredo deles pode acabar com as suas carreiras. Mas o Christopher está a apaixonar-se pela Sarah ou pela personalidade que ela criou? Será que o amor deles sobreviverá ao escândalo, ou a ambição irá desfazer-os?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f07ed043-0bee-415d-a3a1-24b85065dac0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1e505154-44db-4e0d-af91-0ad6497bb3e2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Não Escolhido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/04daa9f8-9236-46dc-bc8d-f230c7bdd54f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8277bfaf-d59e-48a3-86a1-7172f866ad94',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Mestre Oculto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d2da4fcb-0087-45bf-a8f5-045bd5d75cfc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c7868597-3457-480c-84cc-fbf3b04f32a3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rumo À Ruína Pagar As Suas Ações',
    'Após um grave acidente de carro, Liam entra em coma por três anos, enquanto Daviana abandona seus estudos para cuidar dele. O que ninguém sabe é que Liam é o herdeiro secreto do Grupo Poogle e da poderosa familia Batista. Durante um evento beneficente, Jeremias tenta levar Daviana à força, mas, naquele exato momento, Liam desperta e chamou sua familia, que impede a tragédia. No casamento deles, os parentes de Daviana ridicularizam Liam…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0208038c-64de-42cc-8523-0029282d3d86_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4b878c13-b6b4-4d97-aa44-0417314765a2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'NO DIA EM QUE ELA SUMIU, ELA PIROU DE VEZ',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/07597ac4-8fe3-430a-a07e-736c7cd3e1ae_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/16ad42d7-4518-46ed-b4e5-a937b91e21df',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Gorda Que Mudou o Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c0cecbe7-415f-4955-ae0e-c752501682e3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a5920919-8fe3-4b52-96a9-937e74284d42',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Bilionario Viciado Em Sexo e Sua Terapeuta',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c48af97d-437b-4daa-af71-9632d1f6f4d4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/af336180-e3e6-4474-9808-8b7a0ebed1f8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A PRINCESA REVERSA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/84444457-b4f7-497f-947c-c2ae6e45f57d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a6184f01-4620-4d97-ad50-18d1fb1fb9e6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'FIRST TENDER SPARK/Primeira faísca eterna',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/abbf9f52-b4e5-4a10-81ad-1ca22afcde48_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0541ae12-e721-4bef-981b-b16e21c3b756',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Arranjado Marido Secreto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c99038cd-e110-4b88-87e3-c203649ae2ec_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/6cbcf107-a646-4da9-a42c-342bd944b132',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'ANTES DA TEMPESTADE O AMOR A DERIVA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9030a60a-933d-4a91-aaf0-a6cd9d75ed2c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/86191270-1f83-440a-8eb2-f4051ca8703f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Décima Chance Para O Adeus',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c2b84486-70eb-42af-b643-3479a60ce0dd_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/3a33e090-bc86-4e4b-993b-3e4f65fc4f06',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Você Escolheu Seu Primeiro Amor Eu Escolhi Adeus',
    'Anna, negligenciada pela família após seu diagnóstico de câncer, passa por um experimento criogênico e emerge curada. Renascida como Lisa, ela recupera seu status como especialista em câncer de fígado e retorna com poder ao lado do novo marido e do filho adotivo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ca0f6276-bc0b-4f38-b9ab-788e615521eb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dd1e2ddf-7a74-46f7-ae7c-9094552a02a3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Noite Com Meu Meio Irmão',
    'Após descobrir que seu pai planejava um destino cruel para ela, uma jovem decide fugir de casa em busca de liberdade. Perdida e magoada, ela encontra consolo em um bar, onde acaba compartilhando uma noite inesquecível com um misterioso desconhecido. O que ela não esperava era descobrir, no dia seguinte, que ele era seu meio-irmão. Agora, ambos precisam lidar com as consequências de uma noite que mudou tudo, desafiando limites e segredos familiares',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1679809b-07ef-4cf3-95c2-c8e275c24b76_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9d1f081c-d1df-43ba-ab8f-83e2d1cd2c8e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rei Dos Punhos',
    'Sinopse: Em 3045, Thiago Costa renasce no passado como criança. Usando o nome "Anônimo", ele derrota o maior lutador de IA no mundo virtual, chocando o planeta. Nas competições, humilha rivais como Hector Ribeiro e Gonçalo Marques, revelando sua verdadeira identidade. Na Associação de Combatentes, ele enfrenta Lucas Martins, ex-campeão mundial, defendendo a honra de País de Dragão. O ápice? Resgatar seu pai das garras do Tirano, salvando o legado da família. Uma jornada épica de redenção!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/02ccdd60-93a6-4b92-a752-512fefb79abc_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/90bdca58-8fba-4286-b7b2-7e74fb3af57b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Mexa Com Os Pais De Um Bilionário',
    'Sinopse: Mary e seu marido embarcam numa viagem tranquila… até que são humilhados publicamente por um guia arrogante. O que ele não sabia? Eles são os pais de um bilionário! Quando a verdade vem à tona, é tarde demais. Enquanto o guia paga caro pelo erro, o casal redescobre o amor que parecia perdido.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9b385a8c-d1e4-4d8e-9e11-27904a2b52ac_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9dca5dcf-196e-4c44-9139-63ecb5bb8f5c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Doce Como Tina',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/64f27f20-12cb-4b28-aa2e-e3e18a148c40_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/828a0087-e924-41ef-bdc9-bd8231c4087a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quem Vai Envelhecer Ao Seu Lado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6dc8b892-38e9-4809-b4b7-d3546f0bee8f_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1c3fbdad-aa5f-4513-b0e1-ee88effa6f9d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Untitled',
    '',
    '',
    '',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Meu Vampiro Ceo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5961631e-eb9b-4edb-9533-1a3a2a131602_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/897514c3-905e-4827-9821-93f784cc9546',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Desce Com Benção E Barriga',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ee5760e0-8cf3-4072-ba63-eb3d314231f5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cf790821-d1ba-4d37-ba33-58e77936d04c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chamas da Juventude',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/85441bd5-87b9-4e19-a3ad-94b9d18d403e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8b70d44e-6e67-4eb2-942f-b609a836a452',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Voltei Mas O Amor Nunca Foi Embora',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d65c21f3-e12b-4b27-b0d2-c2d622b55ba4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a18227f1-d005-4f1d-8c9e-0618ac7abaa1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança Da Filha Libertada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7ffcf61c-4e00-4818-8155-00dd31e5f85f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7da870fa-e5fe-41b6-afbe-5bad81907531',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Fenda Proibida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1ec717ce-c231-42f2-82b0-025f9e157fb1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1df11271-b724-4c6f-9ab8-5f7cd981aa8f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Adeus Ao Meu Ex Que Falhou Três Vezes',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cbf0fe6b-525d-4cc1-a31e-41a5f9de86f1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/273f6aa8-bb09-480e-86d0-14e0a7cc66b3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Inverno De Paixão No Grande Hotel',
    'Sinopse: Na véspera do casamento, José Linhares, vice-gerente do luxuoso hotel, descobre que seu noivo, Ricardo Souza, estava se divertindo com outras pelas costas dela. Furiosa, ela cancela tudo e, movida pela decepção, decide passar a noite com um acompanhante. Mas ao acordar… o homem ao seu lado não é quem ela pensava — é Felipe, o bilionário discreto e poderoso da cidade! O que aconteceu naquela noite? Um erro do destino ou o começo de uma paixão explosiva?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/34fc2032-cd27-4ee3-8a74-cb2df29f86c1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c1a526e3-333a-4404-9b76-536da6174ec6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Caminho Para A Escuridão',
    'Uma pianista genial, Clara, sofre um acidente durante uma apresentação e acorda dentro de um romance que havia lido, transformando-se na antagonista desprezada por todos. Utilizando seu conhecimento da trama, Clara percebe que nunca foi valorizada pela família Silveira e decide mudar seu destino. Ao confrontar Ricardo, um homem hipócrita que manipulava a família, e conquistar a simpatia de Leonardo, o herdeiro influente que detém segredos cruciais, ela reescreve completamente o rumo de sua vida original.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fce7a860-d875-4393-b1aa-a0ede8d9e302_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e4ce5754-1fed-42ee-a5d0-89b37a0c6d6c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Frio Na Alma Após o Amor eo Ódio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e6b692bd-1036-46dd-991f-e8517f6fd391_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6d11487e-193a-4bf3-b630-9936efe75d02',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Noiva Indesejada',
    'Descreve a história de amor entre Autumn Rivera e Atticus Fawn, que foram escolhidos pela Deusa da Lua como companheiros de lobisomens. Embora os feitiços de amor causem confusão, sua atração magnética permanece. Quando eles quebram o feitiço, seu verdadeiro amor vence.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/be1a46d1-a30c-47d8-8720-bbe3c032a5e9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/581e8266-6041-445a-86b9-adfa5c099779',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Madrasta Feia virada Perfeita',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a2fe917e-9407-453c-82d5-6d36cfeb8d2b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a98e229b-e0a7-4e8a-bcd4-c52d15fcdd0c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida Dos Seus Trigêmeos, Sendo Sua Esposa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4264c495-b8dd-4e52-9462-f6e9bacf58b7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ed065e2d-eeeb-43ef-b558-f2117c9807a2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Querido Você Está Frito',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec6535d4-1faf-4ce0-ae43-1e027aec9f23_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/63fe9616-c272-42c9-a483-4a21f3d97d0e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Homem Por Trás Do Uniforme/Esse Segurança é Invencível/Imbatível Meu Guarda costas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f34e79ac-4371-4a20-9593-bd8715e262f2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/64de0da9-ece2-4fee-851f-35e9dc7d7775',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Papai Gélido Não Fuja',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4b46a6d5-cc86-4e77-8acd-f81778e186d3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8db866f0-5f41-4184-be1b-745a98eb2729',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cuidado Meu Ex é Ciumento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ce0fb81e-9636-4adc-8dd0-0b33da0b2aa3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fa9acee5-4a3d-40b6-bf0b-227a6872d181',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sai Da Minha Vida! Meu Primeiro amor acabou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c676aa37-ec55-43aa-933c-923f9d24adfe_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c5784599-7129-4380-8c22-9a48d30f7f71',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Amor Em Silêncio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/87a6076e-c051-454e-a1c6-628a12f0aae5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8e344516-c939-4614-8313-4826f892c159',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'FORA DO ORFANATO, O MUNDO INTEIRO VEIO ME BEIJAR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e811f0ab-20f3-4ad5-93b6-48eeac7e2fb5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b4ed1d16-75e4-44a3-9c50-0af8590415cd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Lágrimas e Encontros Nunca Provoque a Esposa Do CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3129feda-f4ac-4708-a9a5-1244c9c9e892_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/42dd62eb-ec01-4b48-b1cc-bfa152c81bab',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cintilação Cósmica',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b1146ce0-ac48-4de8-aa33-a5863cb1a08a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e93e33da-12cc-4f77-ab3f-0968e78ab0a8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Nosso Novo Amanhã',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1a5a0558-acb2-405c-abf9-8ca96a4b6c38_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/32b74749-0474-4f84-9b6a-1cd5eb742c19',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Herdeira Grávida e Mimada Por 5 Tios Bilionários',
    'Victoria, grávida e traída pelo homem que amava, é abandonada. Mas ele não sabe que ela é uma herdeira bilionária com cinco tios poderosos prontos para destruir quem a ameaçar. O destino a leva a um amor verdadeiro — e agora o casal traidor vai pagar por tudo!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/75668b54-eca9-4978-af1a-5b13dd2f69f5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/38b84825-4c8d-4906-899c-1bd6185c1013',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Acabou Perdendo O Amor Sincero',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f3fe9428-4ef9-4386-ad8f-5c70962782ee_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/313c6af6-fb8a-474a-afaa-4c7952407118',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CASAMENTO OBRIGATÓRIO ME VIRO COM TRÊS DAMAS PERDIDAS 2',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/354f704e-9c4b-4c82-ab87-99d37cb450e7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2435d654-0f90-491c-a756-b28358902bfd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu ex marido não para de me mimar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cb61e62a-c0a5-4d66-afb1-79bb52d864c6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/45f07a92-568d-4071-b1d6-29135126ebfd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dessa Vez Eu Escolho o Sr Mafia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b3f98fc0-4fe6-4628-b65e-84027a66b063_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/edc9440c-4756-416a-b366-c22e3b284756',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Benção do Príncipe Caído',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a7b981b4-186b-4314-8c06-5865c24173cf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9214d29b-0782-40d1-91a5-007c55d5b4b0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Que Perdi',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bcc60f8e-43ce-4c92-a6d7-0930b84d3d88_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/88a3fd12-ba80-4349-8249-f7f917e84da6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Relâmpago Mimada Pelo Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e834564c-c476-4507-bb9f-217748e125a6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c2fd54d8-665b-47ca-8e89-6f03a079b86f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Kusunoki Em Direção Ao sol',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eeafd2d5-6dea-49cd-b636-da3d96eb434f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0ec056e4-639b-4f7a-8ab5-1b782d62143c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Guerreira Esquecida [DUBLADO]',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fa19e105-7f72-4c7f-86b9-9adbd85668b4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/721fb234-55c0-41bd-b1f0-5700f12ef640',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascendo Das Cinzas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6c33a429-fe6e-4aa9-b99b-e18a0feeb2a7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/17e08238-4d73-428a-8fb8-db4b6686a697',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Preço Da Obsessão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ff7822f8-b6de-4e8a-bdd3-1f782a6bb728_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2b0091cf-c43d-4f66-9cde-4576906663c0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Jamais Perdeu Para Memória',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9da221ab-9141-4053-ad9a-349d6c4558b2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1d2cc887-6570-457d-bef3-3f74304f53ce',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Psiu Ele Não é Meu Marido Ele é Meu Alvo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e79d388a-36a6-4f4a-9bfb-b9dd7aad5cbb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/33b942d0-dc17-41d2-9934-eaf4ebf2dd56',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando a Substituta some',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c3315586-b9ff-4d93-bb29-820fed3b4ee7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3c865302-5073-4b65-bf0d-79a1f85f1040',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Cura Começa Com Ela',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bd511672-c404-4a0e-90f4-277457e3e05d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ee916527-3dd1-4cb0-9283-25b4f0759f2a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Parece que a Nova Estagiária é a Esposa do CEO',
    '',
    'https://i.imgur.com/aGGjfAl.png',
    'https://iframe.mediadelivery.net/play/407552/808c1fe7-dd76-4ac2-b29c-c1e4b0e39b77',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Vida De Viúva é Perigo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/974a4d7e-fcae-470d-ac44-9c3b28a50191_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c187d137-5465-4c98-841b-eb4ef72df77c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Bilionário e a Amada Grávida Desaparecida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cde3f4ef-6f94-4ba1-aa3d-143ecda9bc5b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fd33682e-5c97-4a79-a0ab-f0ce05c2ad73',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Me Ame Até Seu Último Suspiro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8d22087a-895c-423d-8c57-9fd3ff2a1ab6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b2796884-dc5c-4e3b-9d4b-3d07d691b312',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Amante Contratada do Bilionário',
    'A Amante Contratada do BilionárioDurante cinco anos, Fátima foi apenas uma acompanhante contratual aos olhos do poderoso Sr. Lópes, mesmo tendo entregado corpo e alma. Quando decidiu se afastar para buscar dignidade, ele finalmente percebeu seus verdadeiros sentimentos. Porém, o retorno do passado, uma identidade trocada e um coração doente mudam tudo. Entre amor e posse, salvação e perda, o que resta quando a verdade vem tarde demais?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/940ee27c-c990-482b-a061-692c7ea8b1c5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/08a79cfe-923a-44f7-8b5d-ad614cbf02af',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'NATAL COM MEU REI DA MÁFIA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/91e1f2cb-6609-45ce-b6f2-7874fd22c7ca_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/caf1bae6-1c70-47c4-ab2b-77e5aadfffc8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Coração Em duas Promessa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e00e38ec-bf23-43fb-9cbb-e4a63efc0700_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e7c0ee3a-5d74-4aad-96eb-4129228fc3b5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esperma Errado Amor Certo ll',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/221a74ac-ab2d-44c3-9ae3-80145c40523f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/26ccf9fc-38f5-465c-bbeb-3f2db4a8bdae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Garotos De Estocolmo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7f8abd33-a69d-4a67-b72f-044133b7dfb9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8e19a55d-f594-4ce3-84c7-f75047113814',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O ANIMAL DE ESTIMAÇÃO DO PROFESSOR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e13d5941-924f-43e7-930a-882042e4e1b3_pt.png',
    'https://iframe.mediadelivery.net/play/407552/f050d840-9553-4e57-b140-1c8486cd03fd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sob a Luz Das Flores Caixa',
    'Sinopse: O imperador reencontrou a filha do ministro após um breve romance. Ela entrou no palácio para ser selecionada como concubina, e ele apaixonou-se por ela à primeira vista',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4c90eec7-0797-4376-a72d-a04fda853792_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d39616c4-489e-4ed1-98a0-1cda80839f59',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ele Veio Por Mim',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f9ab0241-82ee-49e9-bb04-f20f827b805d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2e53acb7-a930-4c94-91ea-51833310bca3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ainda é Você',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/face1e39-21b5-473e-bde0-1fb37fa3dbd8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e82dbe99-f1eb-4418-ba2c-a746173d8db0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mamãe Não Chore Papai Esta Arrependido',
    'Sinopse: Quando sua esposa Sienna morre em um hospital psiquiátrico, Wayne é enganado pela astuta Alison e leva para casa a filha errada. Mal sabe ele que sua esposa continua viva, renascida como seu alter-ego implacável, Scarlett, e determinada a revelar os esquemas traiçoeiros de Alison e a se vingar em nome de sua filha.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b58d4ad4-b1c2-4077-8db4-46b82a8a18d7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/55797c0f-b350-486a-ad59-3abb1eed868e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Mãe CEO Meu Pai Kung Fu',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9c21c2e6-264a-444d-a6ca-c73daedb756f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4f836aa0-7093-45ae-9272-7a7c836f2222',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destinados à Primeira Vista',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3ded4440-47da-4511-b8cf-c6ca65331cf7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d438397e-5a06-4630-856d-98345b37ccff',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Nova Vida Minha Liberdade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a9209a89-128d-4e7e-b44f-31621b688338_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f43a1bd0-18ee-491e-8ec4-b17fc6b71783',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jogo De Coroas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3297a97e-20c7-43bc-98d7-c0a945697755_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/da701d05-6139-47dc-bd26-85882b4ec243',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Caminho Entrelaçados',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1f7e4e93-b272-47bc-b57d-94351d3390fb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ba86c2bc-3c44-4b7b-80d7-a2c2ec3efd81',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'As Flores Chang’an Murcharam',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9cb551bb-7e16-4be1-806c-1d59a094d356_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/aea7ac42-d311-48ca-ab66-36c581cac00b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Implacável',
    'No aniversário do tio de seu noivo, Zora Hartley jamais imaginava reencontrar o passado que tentou esquecer: Aaron Huntington, seu ex-namorado. Dois anos se passaram, mas Aaron nunca deixou de amá-la — e agora, sob o mesmo teto, ele está decidido a reconquistá-la, flertando sem pudor. Zora luta contra os sentimentos que ainda carrega... até descobrir a traição de seu noivo — e, junto com ela, a verdadeira razão que separou seu coração do de Aaron. Será que o destino lhes dará uma segunda chance?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4a3c025d-4972-44a0-8b2e-72f31f5d1c20_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/44ca279d-f996-4256-95f8-dd34180790ab',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Justiça',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fd619474-54e1-40d3-8ec8-61680187f7d8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6782c43f-4dcd-4a37-9baf-bd6b4f7e25eb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reencarnação Sem Perdão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a4322c44-844d-45dc-a620-3c2433984304_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/09035d2b-f5c0-4a4e-bc14-63f53c2fb718',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Supremo Mestre Demônio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a89fec32-1588-4d13-ab65-b10543d9d79d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a0aeccf2-fd8a-47e2-ab52-082db2dc3246',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Marido Implacável Quer Me Conquistar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f8258b0e-e941-4266-8369-bceb6f080c00_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3da1b447-9674-4b97-9c5b-9cb216fb8603',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Tortura Delicada Da Mafia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fe33b814-28f9-4545-b817-1813df03a4d8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f4336b36-1dfa-45fe-a0c7-dbc54c6d3167',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'APAIXONADA POR UM PAI FAZENDEIRO SOLTEIRO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1713eca5-743e-410a-a884-6bb4c9c8f365_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a1e45371-179d-4f8a-9a4a-9fae6bec5c34',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Senhor Governador Solte O Nosso Bebê',
    'Sinopse: É o candidato mais cobiçado para governador. Ela é mãe solteira e esconde o filho de 8 anos. Eles foram separados por uma mentira. 8 anos depois, o destino ainda não desistiu - meu amor não desaparece; apenas espera para ser recuperado.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/06c09cf6-74e0-4889-bbc4-cf7535297f80_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f53d6a48-3478-431a-89a5-9be313f57965',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Namorado Secreto De Cinco Anos Me Enviou Me Um Convite De Casamento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e435db09-d309-4e48-bc2a-03415e99ee8e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/746b5b2b-0a22-43cf-be55-1da399a4dafc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Santo Marcial',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/012e9648-60c1-4c2c-a279-3643d2793cf2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3c2c1397-e0a2-43e5-85c5-c0aed445f059',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Até Você Me Deixar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/93eddc38-4d85-492a-bd9c-ac868cb13b42_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7072d722-ef4e-4e64-a490-67b905b7ed11',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Por Favor Amarre Me Tio',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cd57a6bf-a570-4dfb-a959-495747dc6541_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b3bb3bb4-79f6-4c34-a6ca-906fe4290674',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Amor Ignorado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4144181b-80b4-4ea3-be7f-18195b3eafb5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b7d24ac8-2570-489b-868f-775d1cd66e5a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Pai Da Mafia E Os Seis Destinos',
    'Sinopse: Há sete anos, Bianca conheceu um homem e, sob efeito de drogas, teve seis filhos com ele. Mesmo após todo esse tempo, nunca conseguiu esquecê-lo. Agora, em um banquete a que foi obrigada a comparecer, eles se reencontram. Entre olhares e tensão, surge a dúvida: será essa a chance de reacender a paixão que os uniu?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c7e25c7d-f68a-461d-a221-6641e6da2cb7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/831e9265-b71e-4713-ab51-a1b1d5b74822',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'APÓS A METAMORFOSE O MARIDO IMPLORA PERDÃO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/89be692f-137c-4052-92e3-e847bdbdd585_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e31bbfc9-0587-4ca7-882e-205cab9e26ea',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'MISSÃO DA GENERAL CAÇAR  UM MARIDO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bb5312e1-1e68-4f73-b55f-8fbef436c3c4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5f93fbce-1623-45f6-918b-301a4013fcc5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Rosa De Verão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f7bb4d15-5bee-445c-bce9-9cca9cb0b29a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9e5b3953-22d6-4582-adf8-9028b4aaaf22',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'PAI ENTREGADOR CHEFÃO OCULTO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a74fdd02-7836-40d6-a8d8-4b14255bcca2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4ac6b24a-6d59-4b42-a429-53562ab6c03d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fortuna e Poder Em Minutos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2a6da65c-7b30-44db-89b6-1bdd1cb2879b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b08cacc8-1fe5-49a7-bd60-8ee6980a1c66',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Toda a Família Mima a Mimi',
    'Seis anos atrás, Yara Souza foi falsamente acusada de ter se relacionado com Jean Santos, e a notícia da gravidez fora do casamento dela se espalhou por toda a escola. Seis anos depois, durante uma consulta no hospital com a filha Mimi Souza, Mauro Sena percebeu que a menina carregava características genéticas da família Santos, e contou tudo para Jean Santos. Quando toda a família Santos soube que Jean Santos tinha uma filha, ficou muito agitada, especialmente o avô dele, que imediatamente ordenou que Jean Santos fosse buscar a sua bisneta.Assim, Jean Santos começou a busca pela filha. Porém, devido às repetidas interferências de Íris Sena, Jean Santos sempre perdia a chance de descobrir a verdade. Depois de superar muitos obstáculos, os dois finalmente se reuniram e, enfim, ficaram juntos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d167a926-a5e6-4fb3-a14f-e25b0303a21e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e156cd74-5ab1-4616-a974-e9e305a6a1dc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Segredo Sujo Do Meu Meio Irmão',
    'Alice foi transferida para a escola St. Marys High School depois que sua mãe se casou outra vez com um milionário, mas acabou se desentendendo com James, um colega de classe que revelou ser seu novo meio-irmão! Será que Alice e James aprenderão a conviver bem? Ou sua química irresistível se transformará em outra coisa?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/213ca23a-6c7d-4c33-b421-7f4f5f623fec_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0e631544-665d-485e-b9ad-526d35e9daa5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa XXl Do Prefeito e Seu Retorno Incrível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/93a1f4c3-8193-4606-a09a-9854b98f060f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cb66b252-5d4c-47e5-a83e-73a114b271e6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amante Secreta Do Poderoso Chefão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/56673774-c985-4796-863c-019252156f57_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/09049432-b1b9-4a99-82e5-ab8aa876180a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Exceção As Suas Regras',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/41cf8d3b-1c36-4792-82d8-2ee5422193a5_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1ad7295a-1bb9-46f0-aefb-3d46c5099a53',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Noite Só... Para Sempre',
    'Sinopse: Viviane Santos, uma legista brilhante, mas constantemente julgada por sua profissão, acaba passando a noite com Enzo Vasconcelos — um bilionário misterioso e, para piorar, tio de seu ex-namorado. O que deveria ser um erro de uma noite vira um casamento por contrato... com consequências inesperadas. Entre laudos forenses e salas de diretoria, os dois se veem envolvidos em segredos perigosos, disputas familiares e uma paixão incontrolável. Enquanto enfrentam preconceitos, mentiras e feridas antigas, Viviane e Enzo precisam descobrir: o amor pode sobreviver quando tudo ao redor está prestes a explodir?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a3532917-5b2e-4bc5-8de2-2363bf896148_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f8eb82b1-fb59-42b3-b74b-d14337b1eeb9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'GRÁVIDA DO REI LYCAN SEM CORAÇÃO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9cf1fca0-3a7f-48ef-8e2b-9560bca44f28_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7f3b5269-87b7-47c2-a7f2-ad6943fdf359',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Princesa Mimada Pela Família Rica',
    'Li Zhao, a princesa do Grande Xia, era uma heroína com inúmeras conquistas militares, mas seu poder despertou o temor do imperador, que tramou uma emboscada no palácio para eliminá-la. Seu marido, Xie Zhi''an, sacrificou-se para protegê-la, e ambos pereceram na armadilha. Ao abrir os olhos novamente, Li Zhao descobre que reencarnou como uma senhora rica nos tempos modernos. Agora, ela tem um marido distante, mas idêntico ao seu amado de outra vida, e uma concubina intrometida que vive a atormentá-la. Como uma princesa, ela não pode aceitar ser subjugada. Assim, embarca em uma jornada para reorganizar a família rica, ganhar dinheiro e lidar com um casamento por contrato no mundo moderno.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/53460efa-1aa9-45bd-b361-5dd4344002cf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c6bb0e6b-76a2-46fc-96d8-d0bd1e6139fd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noite Proibida Amor Que Não Se Apaga',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b26a9a53-6aa4-46fe-a652-ebf9b1e92623_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/50e59986-7a51-4749-a980-53e5c62a556e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CORAÇÃO EM CATIVEIRO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/383d98f6-274e-436c-a23a-ca37f7eac162_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7f6413c6-f8b4-4407-9eef-a70c6ead42cf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Babá Secreta Mãe Do Filho Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4bbf00b0-a530-402c-bd16-8c8cfb9f2dcf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/eb8779ca-7ef2-4685-8835-d1c44b59f38a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ligados Por Sangue A Querida Do Rei Da Máfia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f4f75bfc-3510-4b7b-a975-6042fe6a8967_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1976fd99-b573-4f10-a438-70d6965996a7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor ao Primeiro Voo',
    'Sinopse: O bilionário Gabriel Neves foi confundido com um funcionário de terra ao embarcar num avião da sua própria companhia aérea. Durante o voo, ajudou a chefe de cabine Alexa Lima quando ela foi assediada. Após a aterragem, Gabriel concordou em fingir ser o namorado de Alexa para a ajudar, mas isso levou a um mal-entendido com o seu filho Caio. Gabriel e Alexa uniram forças para resolver os problemas familiares dele e uma crise na empresa, mas Gabriel teve de enfrentar uma última prova para poder casar-se com Alexa.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bcd59722-3409-4155-a2fa-74b180492354_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2ce0e680-26e6-445d-aa28-6beed4ca41a0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Acasalada Com Meu Selvagem Alfa',
    'Helena, expulsa da antiga alcateia e agora uma empregada humilde na Alcateia Lua Vermelha do Alfa Matteo, cai em uma trama de prostituição por tentar salvar seu filho doente e acaba reencontrando Alfa Henrique, pai de seu filho e meio-irmão de Matteo. À medida que o amor reacende, velhos inimigos, lutas pelo poder e verdades chocantes ameaçam seu destino.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0ca93abd-3a44-45af-9858-ac13602ec8b1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/46c26912-217a-4ce9-a459-52aeaca659db',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Saia Da Frente Ex Intocável',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a91074c7-21ae-47f7-bbf2-10bbc5580763_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/1074ee94-51cf-4467-b525-448455dee9f2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança Da Rainha Da Lei',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fd9be09a-cb5e-4ce0-a24d-ab02bc7b34c5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/727c15b5-ab8d-4013-ae3b-2c7846b18008',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Substituta Virgem do Bilionário',
    'Quando sua irmã foge às vésperas de um casamento arranjado com um bilionário, Eva — jovem, ingênua e sem experiência alguma no amor — é forçada a tomar seu lugar. Enfrentando um homem frio e calculista, Dante Morelli, ela aceita o acordo por necessidade, sem imaginar o que esse casamento significaria. O que começa como um sacrifício logo se transforma em uma luta emocional entre orgulho, desejo e sentimentos reais. Mas será que um coração puro pode conquistar um magnata marcado por traições?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db4108a8-a6f4-4d8c-a64d-8f488eb94d15_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0cc60e57-4c77-418a-8782-7cd872f24dd7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Te Amando Da Lateral Do Futebol',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/650459eb-8272-45f6-9d80-b5de44d211d4_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/c4c9ac90-1956-40b2-b2b9-52bd104a890f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Neto Falso Não Verdadeiro',
    'Em meio a uma guerra sangrenta, ele arquiteta uma farsa ousada para salvar sua família. Mas quando a verdade vem à tona, o que será mais forte: o sangue ou o amor?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d8a6d2ac-4ccb-4bb9-aac4-37e9f6c1dd3d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/df69a1b2-9c71-40dc-8b18-28b02cce88eb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'AMOR EM JOGO COM O BILIONÁRIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5ea3c041-98d5-46ee-95ce-c9fcad0e6783_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f98fa1fe-9a4f-4e42-a867-e631680e409a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'APÓS A METAMORFOSE, O MARIDO IMPLORA PERDÃO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e1c97a50-d384-4794-bd0f-7f2fe29340f6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/da6511e7-d9a1-4178-b302-a420d884ac80',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno do Deus Da Espada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ecd51c37-9187-4393-bf34-75146c56fc12_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ddb6c50a-776d-4177-932c-3fe0cddd2fba',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A MENINA DO POVO TAMBÉM E MIMADA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8178adc5-e0ef-4128-9f35-649dd02e1377_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7faa72d9-4fe3-49fe-8c07-92882d3bcab7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Rápido, Ela Não Segue As Regras Normais',
    'Lara Sousa foi enviada pela madrasta para as montanhas desde pequena. Lá, passou anos treinando, sem entender as normas sociais modernas. Agora, seu Mestre quer que ela desça a montanha e inventa como motivo que se casar e dormir com o marido aumentaria seu poder. Ingênua, ela acreditava que dormir significava apenas compartilhar a cama. Após descer a montanha e conhecer o marido, situações engraçadas e desastrosas ocorrem até que ela descobre que dormir pode trazer bebês.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b2a03dc7-2c90-4ff6-b47a-fa6586bc6a70_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/732c6cd4-bf9a-4c57-ab4e-bb82d5c8026a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Salvei O Marido Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0c6385bf-f0d9-444f-8030-e89d985ffd06_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/338394d3-af8a-4e05-9289-89c6e76873b5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chore Agora Saiba Quem Eu Sou',
    'Pereira Pedro, presidente do Grupo Renato, é confundida com amante por Oliveira João, secretário de seu marido, Santos Renato. Oliveira a intimida e insulta, causando seu aborto. Pereira planeja vingança contra Oliveira, expondo suas ações.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ea95ab0e-7b2c-41ea-b846-b567331b8ffb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5142d949-ca41-4405-8f76-e7c3484e7088',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esplêndida Renascença Da Ex Esposa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9a5d2128-8df2-4a3c-a18d-841fd137acba_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bd9ff663-77ef-40d8-981c-dea73c184627',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vem Para Meu Abraço',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c9bd367f-f093-4c8e-b38f-86f8736743b4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ef194130-a042-442a-8c65-2f969e64fac8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Deusa Que Abriu Mão De tudo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/265738f2-1907-44f7-8042-b62c3a33c489_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b33c5f67-c487-444a-9bfd-590bf3c9db45',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Herdeiro Cego',
    'Samuel, cego de nascença, vive com sua mãe gravemente doente, Tricia. Numa tentativa desesperada de salvá-la, ele acaba descobrindo por acaso que seu pai biológico é o magnata Nolan. Ao confirmar a paternidade, Nolan leva o filho para casa. Lá, Samuel enfrenta a hostilidade de Rita, que conspira com sua família para prejudicar os Higgins. Com seu talento excepcional, Samuel cria o projeto "Caixa Misteriosa" e supera os obstáculos. Paralelamente, Tricia e Nolan desfazem os mal-entendidos que os separaram e desmascaram o plano de Rita. No desfecho, os Higgins triunfam, Samuel recupera a visão e a família, finalmente reunida, recomeça unida.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e49cec54-53d4-4830-a050-11a44a4cd310_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b230f76f-31f0-4f17-8cd1-446cfed4704d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Mãe é Uma Chefe Da Máfia',
    'Sinopse: Catarina é neta de um líder de gangue no sul dos Estados Unidos. Ela descobre acidentalmente que está grávida e deixa a família para criar sua filha, Célia, sozinha, a fim de proporcionar um ambiente de vida normal. Inesperadamente, sua filha, Célia, foi intimidada pelo filho do homem mais rico da escola. Ela quer buscar justiça para sua filha. A diretora tem medo do poder da gangue de Jaime por trás da família de Jéremie e não só encobre Jéremie, mas também repreende Célia por intimidá-lo. Para se vingar, ela sequestra e abusa de Célia. Ao ver sua filha sofrer, Catarina recupera sua identidade. Dessa vez, ela quer vingar sua filha.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bbd71c23-efd7-4c8d-ab99-7eeea685ae19_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3e649ecf-8475-475d-b934-69593f1a9f29',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Seduzindo Melhor Amigo Do Meu Pai',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/832b24b9-fe0e-4ed4-9095-4c7aea1c3635_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d4ad15c9-0a4c-41e5-b975-b266e2b90dcf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Te Desejo Alegria Sempre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1e0c4095-fc71-4dad-b817-e2dbb19d586a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4ab1fc5c-87a9-4aaf-a158-4a4e0cda5044',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando o Passado Ecoa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/45154413-a147-47aa-869f-f4ff925243fe_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b7f9efae-c111-4c6b-ad18-2ff5cf713233',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'HELLO AGAIN SECRET EX CLAIM YOUR DNA SURPISE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/47a86723-1213-4b5c-b66e-34cd42ae9522_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/59ac15b3-1516-4398-bc2a-26896b023816',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Brilha Como Estrelas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8e24bc47-5d63-4871-9a30-1b24af9181ae_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/df487008-b722-48a1-adf5-2b6f4737d22e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Brilho Da Nova Herdeira',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1b3daee4-bba2-45e2-a93e-04494e464775_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/45cc063a-7a22-47a0-a3ef-641686c2f1ed',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Principe Vamos Sair Do Armario',
    'O casamento de Gabriel é interrompido quando o herdeiro da máfia Sebastian, fugindo de assassinos, se esconde no armário do seu quarto de hotel. Com o reencontro deles despertando sentimentos antigos, e diante da traição de sua futura noiva, Gabriel impulsivamente se casa com Sebastian para garantir sua herança, fingindo como gay. Mas, à medida que segredos obscuros da família se revelam, o futuro deles juntos se torna incerto...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2588f2dc-1fe5-4fd2-a074-123261f6f383_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0b226ff3-0fac-4339-ab26-01c7e7f2f30d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    '99 PROMESSAS DE UM AMOR, UM ADEUS EM UM SEGUNDO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/925fece7-a352-4ae6-b86a-14c39e38de94_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/877508e1-0893-40c2-895a-7fd9536b32c0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Voltar Com Meu Ex',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bb80b985-d70e-4bea-bcf0-d54ae796175b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/de7e8a84-e2a2-4515-8477-02f529bd2105',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DA CHEFE À MADRASTA FILHO NÃO SURTA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/879e4f2f-a010-4dd7-a6db-69c74cc5a0f4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3aef77a7-bcba-4fa4-b51a-4b9dc06750be',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Mentira Que Espanjou Meu Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/07e1d638-0c9d-4811-b46a-17aa557dc2f6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/92095413-5082-4169-b031-968690df69f4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Sem-Teto À Esposa De Um Bilionário',
    'Sinopse: A bondosa Daisy percebe que venceu a luta pela sobrevivência nas ruas quando cruza com o milionário Adrian, rejeitado por sua namorada mimada. Decididos a lutar pelo amor, essa dupla se torna os heróis de seu próprio conto de fadas, atraídos por uma paixão irresistível.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/62c2ce0a-12bb-4d33-860e-3e715e8712b4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ace38bdb-6db1-4854-98af-ecb4b8306422',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dinheiro, Armas E Um Feliz Natal',
    'Sinopse: Damian, o CEO do grupo militar-industrial mais poderoso do mundo, é confundido com um vendedor humilde que ganha apenas $ 3.000 por mês. Inesperadamente, ele entra em um casamento por contrato com Iris, a chefe de uma empresa. Damian acompanha Iris à sua cidade natal para um jantar de Natal, onde enfrenta constantes menosprezos dos parentes dela e zombarias do pretendente de Iris. Damian reverte a situação repetidamente, provando seu poder e status, e, no final, encontra o verdadeiro amor com Iris.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8bda8cf0-3653-4971-8b54-06f9af9ecfa0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/14fe3e65-99fe-42da-b7eb-aced109eb761',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'WATERBOY',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/98452719-0e26-4975-9c77-98db86e225c9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8abff6ff-6a31-46d7-a2e9-877bb6280f7e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Destino Selado Pacto Com O Rei Da Máfia',
    'Sinopse: Uma conspiração familiar colocou a vida de Molly em perigo, mas o chefe da máfia, Jack, a ajudou a sobreviver e a renascer das cinzas. Mal sabiam eles que uma conspiração ainda maior os aguardava..',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/009a598b-97dd-4b70-9444-869b2bbf0085_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/da18b0b4-258a-4454-ab17-3c51f881c27e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Limite Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bd10e729-b702-4cd6-992b-ed25cf8392fd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d9470a53-9537-48f6-b693-2246d395d7a5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A noiva Proibida de Mancini',
    'Sinopse: Grávida. Viúva. Arrastada para a máfia Mancini. Ava nunca imaginou que seu falecido marido fosse o herdeiro oculto—nem que desejaria o irmão mais novo e cruel dele. O don Luca, frio como gelo, promete protegê-la, mas cada toque acende um fogo proibido. Gangues rivais se aproximam, sua família de sangue planeja traição, e a dinastia está à beira da guerra. Quanto tempo até Luca quebrar todas as regras para conquistar a mulher pela qual vale a pena matar?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a090ff16-88bc-47ef-a960-32344d90bf4a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/424d3550-ec1a-4513-ac92-af465a678249',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Beije Me Uma Última Vez',
    'Adeline Rhodes é diagnosticada com câncer renal em estágio quatro e tem meses de vida. Seu marido, Blake Rhodes, parece mais preocupado com sua meia-irmã Rebecca, para quem Adeline constantemente doa sangue. Blake confunde Adeline com uma interesseira calculista, e ela acha que ele nunca a amou. Tudo muda quando Blake descobre que Adeline está morrendo, mas pode ser tarde demais para ele dizer que sempre foi ela quem ele amou.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f3da025a-3dc9-4169-b1dc-bc98b3dc41e6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/96cfbcb6-6d52-46bc-b187-a1d3cc5dd633',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Adeus Em Silêncio',
    'A filha do influente Grupo Almeida, Sofia Almeida, abandonou sua família e fugiu de casa para cuidar de seu namorado, Pedro Mendes, que ficou surdo após um acidente de carro. Para ficar ao lado dele, ela se disfarçou de surda e passou três anos trabalhando duro para custear o tratamento de Pedro. Após a recuperação dele, ele começa a desprezar sua antiga vida e a sentir vergonha de ter uma namorada "surda". Ele começa a se envolver com Marina Oliveira, com segundas intenções, enquanto ignora e magoa Sofia, que finalmente decide seguir em frente. Ela rompe com Pedro, aceita a proposta de casamento arranjada pela sua família e começa uma nova vida com Felipe Costa, retornando à sua vida de felicidade e luxo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/863c8fa7-c475-480d-9c3d-ae8d22c8d9fc_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9de4e70d-b430-4c4d-b3df-3857b123a1c9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Irmão Da  Marinha Por Favor Leve Meu Corpo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/076357f3-0fc0-4af0-aa69-ead5af01bf4c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/db34ea7a-c878-4bf1-a51a-1c8db17abaa4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno Triunfal Do Deus Infinito',
    'Rafael o Deus infinito cuja inteligência foi selada pelo ciclo de reencarnação e que acabou vagando, foi salvo por Camila e se casou com ela. O rico Ricardo cobiçando Camila manda atacar Rafael, mas isso acaba fazendo com que Rafael recupere seus poderes. De volta ao comando da aceita do infinito Rafael derrota seus inimigos salva sua esposa e faz um retorno triunfal no torneio do infinito seguindo seus destino ao lado de Camila',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6dd015c2-28a2-447f-bc5f-ee708c9c58d6_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a1a42d43-3a1b-4ab5-af5b-e42d0bb5dd51',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Entre O Amor e a Traição',
    'Certo dia, a caminho de casa, Isabella descobriu que o seu marido Luis estava a ter relações sexuais com a sua meia-irmã Caroline no carro...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2a6be198-c52b-46e4-8ce3-5c961ea22da4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5ce18129-b97b-411c-80be-27d562d583d5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Homem Que Estava ao Teu Lado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/54f559c1-9c7d-4e2e-a69c-a815ebcf5fac_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f7842d47-99ca-42cf-8053-c4806f687d9a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Armei o Jogo Ele Ganhou Meu Coração',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d8496a60-08e7-4eda-aed7-b3cf1a2c4cb3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/df1e9340-f835-47be-b063-8a0e0f44b075',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Herdeira Foi Trocada Ao Nascer',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d0273970-074c-482e-932e-003e24362c84_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/dee09b06-fdb3-4b2f-b48d-0a16cb86c4a0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ela Parecia Um Anjo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/37613938-c849-4759-a58e-864f07a77299_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1fe5fc2f-6ad6-40ad-bf81-c77ee00e7894',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A AMANTE SECRETA DO PODEROSO CHEFÃO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fa89ec9d-3fc4-4222-b137-d0ffb84290cf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a7a72ded-0340-40ab-8044-57347d21f90e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Gravidez Acidental Romance Com o CEO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c3812b92-fd39-44c3-8937-5f488f015067_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6580f265-4aed-4e6b-baef-4ea83487d9dc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'IRMÃS RENASCIDAS MARIDOS TROCADOS',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e610ab53-6190-43a8-a864-a154bf73bf5c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5381e86c-3072-41ac-a65c-c8a3c2c4da40',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Queda Do Abusador/Abuser’s Dowbfall',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8da60701-f64f-487c-a86a-e2ee80a89ff0_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/72baa560-9b08-411b-9e2d-4498511eb197',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MISSÃO DA GENERAL CAÇAR   UM MARIDO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5c8cbd45-6629-48d3-a25f-90dcf76b1e69_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/64186f2e-e866-47b9-b79a-d48218db2379',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Brace Face Betty',
    'Betty Branson começa seu primeiro dia em uma nova universidade na esperança de fazer amigos e começar do zero. Mas, em vez disso, ela é intimidada por sua estilosa meia-irmã Stacey , humilhada na frente de toda a escola e levada a entrar no vestiário masculino com os olhos vendados.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/78ffa8cc-e485-4500-abf1-9770e7ff740f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/260dba70-e21e-46d1-8060-bf39f57836dc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Beijei Um Sapo Consegui Um Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ac28f0c1-0a31-4a14-8ed5-8131e75a0ca5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/414eff67-301f-4850-8678-9944c50c43a9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quadrigêmeos Do Tio Do Meu Ex',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/032f6546-24dc-4d84-a906-726232bd4eaf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a27d21ff-0125-493f-b05b-08109e4630bb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Santinha Psicopata',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/90ee6a03-b17b-4ca8-8cbc-12fb2ac25851_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9becbd9b-b457-4fd0-97c7-363fb8aed08b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noivo Trocado: Casei com um Chefão da Máfia',
    'Sinopse: Casei com um Chefão da Máfia, nada é o que parece. O que começa como uma troca cruel de noivos vira uma reviravolta digna de novela: Sophia, traída pela irmã Betty, é forçada a casar com Cedric, o suposto pobre que na verdade comanda um império mafioso! Prepare-se para uma história onde a vingança se torna romance, o romance vira poder — e cada episódio faz você duvidar de quem, afinal, saiu ganhando. Se você também ama drama de família, reviravoltas milionárias e aquele gostinho de ver o vilão quebrar a cara, essa é sua nova obsessão.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/722cf97f-1134-4832-bded-d10025d1b8b2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1627c8f4-0d6b-4d0b-b514-94594b47fe0e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Papai Malvado Você Tá Frito',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7fa75ee7-ba1f-4a45-bd4e-4c0a9e113196_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f33e1775-fd84-4278-8be0-15c2c4ec868c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O PERIGOSO ANJO DA GUARDA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d1e15f05-91f8-4002-9d34-3343bbcefcb1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a1040d92-4d93-4869-81b4-710b227fd94b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Princesa Mimada Pela Família Rica',
    'Li Zhao, a princesa do Grande Xia, era uma heroína com inúmeras conquistas militares, mas seu poder despertou o temor do imperador, que tramou uma emboscada no palácio para eliminá-la. Seu marido, Xie Zhi''an, sacrificou-se para protegê-la, e ambos pereceram na armadilha. Ao abrir os olhos novamente, Li Zhao descobre que reencarnou como uma senhora rica nos tempos modernos. Agora, ela tem um marido distante, mas idêntico ao seu amado de outra vida, e uma concubina intrometida que vive a atormentá-la. Como uma princesa, ela não pode aceitar ser subjugada. Assim, embarca em uma jornada para reorganizar a família rica, ganhar dinheiro e lidar com um casamento por contrato no mundo moderno.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/150aba25-b157-47b3-ac93-21c14adff96e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7a4f6186-f4fe-449a-bd96-8d44fefa5b06',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Entre a Névoa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7ef97854-fd37-4f88-a987-e7f3226ad363_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3a0c60ad-c379-4d73-9af6-188ef7898655',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mil Perdões e Um Incêndio',
    'Sinopse: Márcia é uma ginecologista, vive um casamento estável com Reinaldo até que, após um acidente com uma gestante descobre um segredo devastador a mulher ferida tem o mesmo nome que ela, e quem acompanha Reinaldo. Diante da traição e da humilhação Márcia se recusa a ceder ao desespero. Entre a dignidade e o caos ela escolhe se reerguer enfrentando o passado e defendendo o seu espaço',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f487d16a-99fb-4322-a9ff-047f41f1292f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f99f8f7c-d15b-4bae-97d5-78a4bd8c9831',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amores Que Nunca Se Cruzaram',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9b6cb100-70c9-47d0-a951-fcb05e7a7120_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7c3bc51b-3b29-436d-9b23-e2d1ae96c6ec',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sem A Luz Da Lua Na Minha Terra',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/770ef2d7-7a90-4b52-988e-53a344adbc98_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/30fbbe22-c85d-4161-b8ff-cad64747509c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando Nos Reencontrarmos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5b529edc-36ea-4a9b-8e3e-e14933063fa8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0a9d9d8b-3a9a-4eeb-a8ab-820350046371',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O jogo Da Herança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/64335a50-7df1-4b34-b2a4-0e389a92f8d9_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0997fc31-2467-4f43-ae41-8d6633d68ab5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Boa Menina Da Máfia',
    'Sequestrada pelo rei da máfia, a inocente Bella foi forçada a assinar um contrato com ele para pagar a cirurgia de sua mãe. No entanto, esse contrato, que vale meio milhão de dólares, exige muito mais de Bella do que ela jamais imaginou...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/90080b22-93e1-4c9a-9148-6e2a8895cd7b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0ab11745-6bc7-4869-b9fe-15cce776b0d2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Filho Do Alfa Segredo Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/76c9268a-4566-44ea-b127-61df0766a6f5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bea9377f-c1a6-45d9-840b-31b0751ceea2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divorciada No Dia Do Casamento',
    'Sinopse: Alessandra DeLuca volta para casa depois de anos no exterior, viúva e grávida, para comparecer à festa de noivado de seu irmão, Enzo. Um mal-entendido acontece quando Caroline, a mãe da noiva, confunde Alessandra com a amante de Enzo. Sofia, a noiva, invade a mansão de Enzo e confronta Alessandra fisicamente. Ela arrasta Alessandra para a festa de noivado, humilhando-a na frente de todos. A situação se agrava até que Enzo chega, e um escândalo maior está à espera pela frente.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b522104e-763c-47c9-975e-56fc4f958ac5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d6a41d7f-108b-4d29-8227-3ffd4ee33589',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascido Em vingança',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/96e6fd21-bcad-4d3d-962c-2e65dadf278b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6a2e34df-4442-4f71-bece-56cd6641868c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MEU PAI É O LENDÁRIO TITÃ',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6ff13ca2-e7fd-42cc-a5fa-a6260deef00d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d958f3ef-e004-4176-a380-cfd1706b4a35',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Empregada Secreta Do General',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d3e90824-267b-41a0-91ed-1b3ef50e7e7d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8f422a78-7234-44da-938d-cae6b5284b5a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Tutora do Bad Boy',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7d2f4984-d224-4588-9cd2-2cf613efc917_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/48ef9c79-a589-44a2-adcb-192931be8fb0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Bela Tímida e a Fera Bilionária',
    'Sinopse: Analeina, uma garçonete em Nova Jersey, acidentalmente derrama café quente no bilionário Jaxon Terrace, empurrando-a à força para seu mundo. Para pagar por suas roupas arruinadas, Jaxon ofereceu a ela um emprego como sua secretária. Mas quando a dívida é paga, o desejo de Jaxon por ela cresce, revelando sua natureza possessiva. Analeina deve escolher entre o amor e sua liberdade, enquanto descobre se Jaxon é realmente uma fera...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5b95a80a-19e4-4426-84f7-8699af55e87e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/593cae59-b785-466d-a6aa-3ed12dc8be01',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva Fugitiva Uma Longa Volta A Você',
    'Sara, a filha mais velha e desprezada da família, é forçada a se casar no lugar da meia-irmã com Cássio, um homem envolto em rumores sombrios e de impotência. Indignada, ela foge da cerimônia e sem saber, entra no carro do próprio “noivo”! Cássio, frio e misterioso, decide brincar com o destino: leva a bela fugitiva para casa e a mantém por perto. Entre silêncios intensos e olhares em brasa, a paixão explode...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0806b30c-6f2a-439c-930d-4f207a6b22ae_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/bc1c7a85-ee20-48e3-b5bd-2434792bf470',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Elas Por Elas Divorcio Ou morte',
    'Caroline, uma especialista de elite em Intervenção contra Abusos na PunishDash, com um histórico imbatível de dominação de agressores, se apaixonou por Richard — um violento doméstico disfarçado — durante um encontro às cegas. Casaram-se rapidamente. Quando Richard tentou controlá-la, ela o dominou com facilidade, aplicando uma retaliação brutal. Ironicamente, Richard, o agressor, acabou se tornando vítima de sua própria violência.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e9088d68-6011-4a9c-9456-cd44ba3d9f68_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/de2759dd-a9da-4ea7-9774-142372f2ec3e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Adeus Minha Tentadora Esposa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/99887c4a-533c-433f-a47f-fcc1e91c65c1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d8dcb441-06fb-4c34-94a6-f1240f44493a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'AMOR JAMAIS PERDEU PARA MEMÓRIA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3b1af015-5236-4858-ad4d-a335a96eb624_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2d65b733-080e-47ef-8a55-69b3e0b63783',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ela Enlouqueceu O Pescoço é O Próximo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d4ef4544-c309-449a-b206-e5988164a147_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ff86e851-d0bd-4f4a-87a0-2c37f02a1ee0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Fumaça Suave No Entardecer',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2fc044c3-18da-46ac-a3b1-a43302332416_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4c54d14b-5735-4512-9a81-5e568f76f304',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Melodia Do amor Fim Da Dor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0a4dafc6-8f39-402c-81bf-fb569f2ee072_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ffdf15f7-592e-4a80-a16a-71ee66ceacfb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chamada Pelo Meu Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/641d5a75-b5b2-45a1-b655-a7a23e5a25f2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/32182890-1370-4ec6-bd1a-b65c67fd38b3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva Forçada O Verdadeiro Pai Aparece',
    'Felipe é, na verdade, o filho perdido do homem mais rico de Aurélia. Na superfície, trabalha como faxineiro de hotel e faz previsões, mas sua verdadeira identidade é o lendário Senhor da Guerra de Aurélia. Larissa é a atriz mais famosa do país. Ela criou sozinha a filha, Estela, que sofre de um problema no coração e não consegue falar, uma menina frágil e doce. Cinco anos atrás, Felipe e Larissa tiveram uma noite juntos.Agora, Larissa o reencontra e revela que Estela é sua filha.Ao descobrir a verdade, Felipe decide assumir o papel de pai. Mas os vilões, para ganhar o apoio do Grupo Rocha, obrigam Larissa a se casar com o velho patriarca doente, e até planejam mandar Estela para um orfanato. No dia do casamento, Larissa é forçada a se ajoelhar diante do ancião debilitado, enquanto Estela sofre maus-tratos. No momento crítico, Felipe aparece, decidido a resgatar mãe e filha de forma implacável...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d281080b-01c2-41a1-b760-6d806a3554dd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/3c6f02d8-6b25-4f3f-8a93-5785d7e0a7a2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mudar Pro Interior Casar Com Um Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/265f6462-7020-4a26-a880-0dbda040b36c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e88891f6-4b25-4669-8340-685eb39d8121',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vida Secreta do Meu Marido Bilionário',
    'Helena acreditava estar casada com um homem comum, simples e gentil. Mas tudo muda quando descobre que seu marido, Gabriel, esconde uma identidade secreta: ele é, na verdade, um bilionário envolvido em negócios obscuros e uma rede de segredos que ameaçam destruí-los. Entre mentiras, alianças perigosas e uma paixão que resiste ao abismo da desconfiança, Helena precisa decidir se luta por esse amor… ou foge dele. Afinal, quem é o homem com quem ela dorme todas as noites?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4720d6bf-ad96-4fd4-a8ed-8beb23f5b5ce_pt.png',
    'https://iframe.mediadelivery.net/play/407552/646da5a8-e2e9-4d08-a599-f3833e066d94',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Que Chega Com Gravidez',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/53a93d81-c182-485b-9886-7cbfedc189cf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9377dcba-439b-4f18-8710-c493fad5b8b8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor, Morte e Ressurreição',
    'Sete anos atrás, Hilda, grávida, descobre que seu namorado Antônio, herdeiro do Grupo Álves, sofre de câncer. Ao ouvir por acaso que a família dele só pagaria o tratamento caso ele terminasse com ela, Hilda decide desaparecer para salvá-lo, sem explicar nada. Após o adeus, sofre um acidente e é dada como morta, mas sobrevive com sequelas mentais e dá à luz Andressa. Antônio vive acreditando que a perdeu para sempre até um dia…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bbf1c0e3-d91b-4ace-b22d-0cdd0ff5302e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/001468bd-216f-4dc7-8062-2cfc6d780fe2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Efêmero O Amor Em Breve Páginas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a42bdc50-6b65-495b-9f20-38e91b8afe07_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c590734b-994e-4f13-838e-688665de2e53',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O homem Que Estava Ao Teu Lado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/88329065-e16e-4168-a302-7b6a78391642_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/70c85005-8a68-49ad-829a-81ac8b66870e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Proposta Indecente',
    'Sinopse :  A vida de Angela Carson toma um rumo dramático quando ela concorda em se casar com Xavier Knight, um playboy rico, para salvar a vida de seu pai. Enquanto eles navegam em seu relacionamento tumultuado, segredos e desafios inesperados, Angela e Xavier devem confrontar seus passados ​​e encontrar uma maneira de construir um futuro juntos. Do brilho da cidade de Nova York aos serenos Alpes Suíços, a jornada deles é cheia de paixão, traição e redenção. O amor deles sobreviverá às provações que enfrentam ou suas diferenças os separarão?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3244a15c-2d71-41e0-91ea-6c4c40cbfcca_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/41531f3b-fa21-47d8-af30-5d48011b081e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Drifit Tio Mecânico 2',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d2b70cc4-bd67-4410-94c7-b01d568311e1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/726f92cb-0e9f-42c5-b4c0-4ee4dc01f238',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Doutor Estou Pegando Fogo',
    'Isabela foi forçada por sua meia-irmã Clara a perder a virgindade para Sebastião, o herdeiro do maior hospital da cidade. Clara queria enganar Sebastião para que ele se casasse com ela, mas fracassou. Enfurecida e humilhada, Clara passou a atormentar Isabela repetidamente. Porém, ela escolheu a pessoa errada para mexer, não sabia que Sebastião já estava perdidamente apaixonado por Isabela naquela noite. Ele decidiu reivindicá-la, casar-se com ela, cuidar dela com todo carinho e fazer qualquer um que ousasse tocá-la pagar caro.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/81929f4a-d242-41db-b783-c1d79ed26a45_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e4c83d0a-d5eb-4df3-9e38-cee130a0c851',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Swapped My Ex For His Billionaire Uncle/TROQUEI MEU EX PELO TIO BILIONÁRIO DELE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/63c77899-1919-4588-8c88-644e781c4925_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8695ae76-fcaa-4cac-a3bb-9267232dea23',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'LINHAS DE SANGUE AO LUAR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/31b003a6-d7a0-45fa-920e-85a24b9bab32_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/757e2367-8a61-4b7f-a4f7-f80ccc660aa8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Espelho Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f8ba29d7-873d-4489-8088-799f2ef9449f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2ed24ea9-a0b4-4a03-a368-a626e6981e3f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jovem Santo Da Espada',
    'Victor, o lendário "Santo da Espada", reencarna em Tadeu, jovem desprezado do maior clã de espadas do Leste. Abandonado por sua falta de talento, sua mãe sofre para mantê-lo vivo. Ao despertar o poder do Santo,Tadeu busca redenção: usar sabedoria milenar para proteger sua mãe, desafiar seu destino e ascender na arte da espada. Pode um "inútil", guiado por amor e legado divino, reescrever seu caminho rumo à imortalidade e honra.  ',
    'https://awscover.netshort.com/tos-vod-mya-v-da59d5a2040f5f77/coverG/prod/430423423_%E5%B0%91%E5%B9%B4%E5%89%91%E5%9C%A3%E8%91%A1.jpg~tplv-vod-rs:651:868.webp',
    'https://iframe.mediadelivery.net/play/407552/d8dc2f31-5bed-4693-b321-20a80c764320',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Querido Você Está Frito',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7bd5bf2b-f446-4e02-965e-2a373e1ffb5a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ff2af35a-e621-4778-b27c-f80aa75a35fd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'FINGI SER HOMEM E VIREI O DESEJO DO PRÍNCIPE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e74f5495-babb-4204-b2bc-2b7459f5d9a6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/01b5696d-73c8-4afc-984c-bf403f14b964',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Acordo Proibido Com Meu professor',
    'Thea Shale, uma estudante de medicina com dificuldades, planeja vender seus óvulos para pagar a mensalidade, mas um número errado a leva a Kael Vex, um homem misterioso. Kael, determinado a dissuadi-la de sua decisão, marca um encontro – apenas para ficar inesperadamente cativado por ela. O que começa como uma relação meramente transaccional evolui para algo muito mais complexo. Quando Thea acha que seus negócios terminaram, Kael torna-se inesperadamente seu professor convidado...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1b275883-8881-4de6-9599-68be5eb67a78_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/69182e1a-70cc-4129-9848-0ff8a61d78f6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Desafie A Senhora Bilionária',
    'Sinopse: Juliet, a presidenta de um dos principais conglomerados financeiros, esconde sua identidade por amor. Ela se entrega completamente por sete anos, apenas para ser abandonada por seu namorado ambicioso, Charles. Para se vingar de Charles, ela faz um casamento por impulso com o chefe dele, Tristian. Em um próximo banquete, Charles está prestes a enfrentar este novo casal...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2ea3c8aa-ac07-4979-a757-fca465c29e6e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/27271eb7-2009-4dbd-98a0-e3da7bdf362b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Virgem e o Bilionário',
    'Desesperada para salvar sua mãe doente, Cindy Parks faz um acordo com a filha de seu chefe, Nikki Jenkins. Lá, ela deve fingir ser Nikki e entregar sua virgindade ao bilionário Charles Kane. Nikki usa esse truque para induzir Charles a se casar com ela, mas, quando ela adoece, Cindy é mais uma vez forçada a fingir e a entrar em cena como uma noiva substituta.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4c4bc679-3eab-4168-bbea-bdd527ef4431_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d5a52732-2f34-4388-a55b-f02d7d9a83ac',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Derruba A Familia Do descarado Com Minha Sogra',
    'Joana, guarda-costas com medalha de ouro, protege vítimas de violência doméstica. Casou-se com Miguel, ocultando a identidade. Quando família de Miguel comete violência, Joana coleta provas e luta pela custódia dos filhos. Crimes de Miguel ficam públicos, sua licença é revogada. Quando Miguel ameaça filha de Joana, ela decide não se divorciar e enfrenta-o. Miguel descobre identidade de Joana. Susan, mãe de Miguel, rompe com ele. Joana e Susan começam nova vida com a filha.',
    'https://awscover.netshort.com/tos-vod-mya-v-da59d5a2040f5f77/imageG/prod/1894649954339090434/1747723896543-6088929681095573-3%E6%AF%944.jpg~tplv-vod-rs:651:868.webp',
    'https://iframe.mediadelivery.net/play/407552/0668fa5e-6ef6-4cd0-afbd-61e94d5fba9b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Falso',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/02df55ed-63ca-4f66-9706-bf083627eaf8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3c47abf0-1699-4980-a5b9-a6acce28d318',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quebrando Acordo Com o Badboy do Hóquei',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6d665490-247e-4fc6-8bc3-514eb229aa0e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/72c67b4b-ff79-411f-b1c5-6d01872b49f1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mudar Para o Interior Casar Com Um Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bcf7fadf-5cb7-4bdf-8d0a-a6aaa642635f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2da0f0e2-f469-4682-a9c5-c7a481f17a4c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sinto Sua Falta Depois Do Adeus',
    'Para pagar uma dívida de gratidão, Neil fecha um contrato secreto com o pai de Keira, comprometendo-se a se casar com ela por cinco anos e ajudá-la a superar o término com Simon, seu primeiro amor. Durante o casamento por contrato, Neil é amável e cuidadoso, mas Keira o vê apenas como um substituto de Simon. Quando o contrato termina, Neil descobre que Keira ainda está apaixonada por Simon e pede o divórcio. Ao saber do divórcio e ouvir do pai que Neil foi embora, Keira é tomada pelo arrependimento e parte em uma busca pelo mundo para encontrá-lo, apenas para perceber que o homem que perdeu a amava de verdade. Mas agora é um pouco tarde demais, pois Neil já está seguindo um novo e promissor caminho, tendo deixado Keira no passado.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec3e0d33-279c-4dd9-822d-ebfcc94bd0d3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/897c2429-64c1-4550-9238-81f7c2be115b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Brilhei Na Festa Do Divorcio',
    'Laura nasceu em uma família onde o impossível não existe: filha do homem mais rico do planeta, com irmãos que são lendas em seus campos — um general respeitado, um astro do entretenimento e um magnata das finanças. Apesar de tanto poder ao redor, Laura só queria uma coisa simples: viver um grande amor com André, seu amigo de infância. Mas o destino adora testar os corações teimosos. Num acidente, Laura se joga na frente de um carro para salvar André e acaba perdendo os movimentos das pernas. Os médicos são claros: ela nunca mais vai andar. Só que o pai de Laura move montanhas, contrata os melhores médicos do mundo, e ela volta a andar, mas mantém o segredo, fingindo ainda estar presa à cadeira de rodas, tudo para saber se o amor de André é verdadeiro. Na véspera do casamento, Laura decide revelar tudo: na frente de todos, ela vai se levantar, contar quem realmente é e o poder da sua família. Mas, antes disso, flagra André nos braços de sua melhor amiga, Luana. Pior: André joga na cara de Laura que, se ela quiser, casa; se não quiser, tanto faz. Humilhada, Laura engole o orgulho e finge aceitar, mas liga para o pai e transforma o casamento em uma grande festa de divórcio. ',
    'https://v-mps.crazymaplestudios.com/images/e009e410-71d6-11f0-a06b-bdb674869ea1.jpg',
    'https://iframe.mediadelivery.net/play/407552/5b84d81f-2685-4a04-b092-5ad301f78a82',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Fé Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cfd6fda4-4980-4622-a301-bd9a94af4ab3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9bb6cc59-884f-42b0-ae45-a04c2ceb9a38',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Teachers Pet',
    'Sinopse: Quando David Winters, um professor de literatura cínico e sedutor, encontra Catherine Hudson, uma aluna brilhante e protegida com metade de sua idade, o flerte intelectual entre eles acende um fogo proibido. O que começa como uma orientação acadêmica se transforma em um perigoso emaranhado de sedução, obsessão e traição. À medida que Catherine descobre os segredos por trás do exterior polido de David, ela é forçada a confrontar seus próprios desejos e as verdades obscuras enterradas em seu mundo de elite. Mas a paixão tem um preço - e quando as mentiras, o ciúme e a vingança irrompem, o amor se torna um jogo de apostas altas sem final garantido.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6b49c035-c020-4fcd-ae7f-ca9c21fa06d8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6d19f88c-f07e-4c33-8726-ab3cc1a143e4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Até Nos Encontrarmos Novamente',
    'Sinopse: Kelly estava grávida quando seu namorado Seb a pediu em casamento, mas depois testemunhou o assassinato da irmã de Seb, Elizabeth, por um intruso. Seb ficou gravemente ferido ao tentar proteger Kelly. A mãe dos irmãos colocou a culpa em Kelly e mentiu para ela, dizendo que Seb nunca mais queria vê-la. Em luto, Kelly deu à luz uma filha em segredo. Anos depois, eles se encontraram novamente em um café.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b8293126-5e8d-4caf-8c78-daae77bc208b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c95037fb-2d94-4fcb-913f-d69bd98479af',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ela Irresistível',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2d671509-dcd8-4aa7-a7a6-bc2f211fed6d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/08b45a93-d35f-4896-a290-b545f3e0a8ad',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Relâmpago Esposa Tola, doce e Selvagem',
    'A chefe do Grupo Dias, Júlia Dias, foi assassinada por sua própria família e enterrada viva, mas milagrosamente sobreviveu, embora tenha perdido a memória e ficasse com a mentalidade de uma criança. Quando Júlia Dias foi para a rua e se tornou uma mendiga, foi encontrada por Mateus Santos, o presidente do Grupo Fenix, que fingia ser doente e fraco. Depois de um casamento relâmpago com Mateus Santos, a família Santos humilhou os dois de diversas formas, mas Júlia Dias, por acidente, conseguiu manipular a família Santos. Durante um confronto com a madrasta de Mateus, Júlia Dias recupera sua memória e decide esconder sua verdadeira identidade, continuando a se esconder na família Santos. No processo de vingança contra as famílias Santos e Dias, os dois começam a se apaixonar ao longo do tempo...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4be47e57-4903-4d13-b1ad-c2f3fd943c37_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c2fd54d8-665b-47ca-8e89-6f03a079b86f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Contagem Da Vida',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a634bcdc-5991-4f18-b286-f59377b3a4d0_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b60c03ca-6131-4c98-9498-6c2c3b9b0917',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Pai Voltou todos Estão De Joelhos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f469173f-3c3f-425b-af8b-9bfa6b63ea00_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1cf08c2c-ad79-489c-a9f9-4c6008c33dc9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Madrasta a Mãe De Verdade',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e21b92fe-fa21-425e-b799-1be4636ac9a4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/abf6b543-4632-4365-8163-48b8a0846c7c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DA CHEFE À MADRASTA  FILHO NÃO SURTA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/74c1b7cc-823f-44d6-a64d-b478cf0dc654_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1ddc530e-6cad-4aeb-9964-fe4c4d91ea5e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'NO LEITO DA VINGANÇA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4aabee1f-6835-402f-a5ab-758d2e340d7a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b0ba1561-6cea-4c66-98f5-fb064b0a6496',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu dom Da Riqueza',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/acaeffe1-ff07-43c2-8d3d-46c41dcbd782_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fcc03c69-79ca-4e0f-b330-3d4fb15a472b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sua Doce Bela',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/77781ab9-6920-475c-bf4a-e4603e5e5a3c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9f8de89a-e202-4bb1-b678-668775552b8b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O SOLDADO BRUTAL QUE FICA MAIS FORTE AO SE CASAR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c228c867-7361-4b59-bb1e-4d7d3f322692_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5807faca-c76d-4ff9-8a38-0a82ca666185',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Confundindo Poste Com Luar',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5f0c9ebe-288b-4e0c-9d65-4805f67b36fd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/07290bbe-329d-4f9e-a25d-a927493c867f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Marido De Aluguel',
    'Lívia contrata Jack (que ela pensa ser um garçom comum de hotel) para se passar por seu namorado na festa de noivado do ex-noivo e da meia-irmã. Mas quando Jack a pede em casamento na frente de toda a sua família, ela tem que aceitar. Mal sabe ela que ele não é, na verdade, um ator desempregado, mas o neto de um hoteleiro bilionário.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8d96b2d7-2f27-4374-9807-af745a2d9fcd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e4dfb3e0-7279-4c0b-89d1-a8e4ba4eb22f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Nove Caudas De Cinzas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5cc2571b-dec6-4a78-a4cc-47b995e512c5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/64101049-4843-430c-8788-78e6393712ae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Bilionário Em Fuga Torna Se Minha Noiva',
    'Sinopse: Deixada no altar, Liana Medeiros faz algo impulsivo: casa-se com Jacob Hamilton, um bilionário misterioso marcado por seus próprios traumas. O que começa como um acordo frio logo se torna uma jornada de paixão e cura. Entre ex-parceiros intrometidos, dramas familiares e disputas corporativas, será que esse romance inesperado virará amor verdadeiro ou o passado os destruirá?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/284afdcc-1b47-44b4-b89c-0e7fadddd4fc_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/45a23dc8-1815-4687-b892-947f1bbf8e75',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A CEO Secreta',
    'Sinopse: Em um incidente inesperado, uma humilde empregada de limpeza enfrenta a arrogância de um gerente abusivo que a ameaça com uma escolha indecente: “Durma comigo, ou será demitida.” Mas o que ele não esperava era o poder que ela escondia. Com um olhar firme, ela tira o casaco e revela seu cartão VIP, expondo sua verdadeira identidade como a CEO da empresa. O gerente, atordoado e tremendo, cai no chão em choque, enquanto o equilíbrio de poder muda drasticamente. Esta história explosiva de reviravoltas revela como força, inteligência e coragem podem expor a hipocrisia e transformar o jogo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c35aacd6-8015-48a6-92a3-83ce612846ff_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a3a9188a-ac84-4825-b1ad-a82f278b5c91',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Minha Família Me Vendeu Para Um Chefe Do Crime',
    'Sinopse: Quando Lilian Grey é forçada a casar com o temido mafioso Adam Steel, a sua vida transforma-se num jogo perigoso de paixão e mentira. O seu papel de esposa vira o de criada quando descobre que Adam é casado em segredo com outra mulher. A viver sob o mesmo teto com a esposa de Adam e o seu irmão enigmático, Lilian desvenda mentiras de família, um mistério num baile de máscaras e doenças falsas, enquanto lida com desejos proibidos. Mas cada passo em direção ao amor revela inimigos escondidos mais próximos do que alguma vez imaginou',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8169bea6-17ce-46d7-9f5d-ddbed771661b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6280c3b9-6f5b-417f-b3e7-a1eb74264c69',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Me Tornei Madrasta Do Meu Ex',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4333b32b-29d6-4e02-a560-ab770bdd3642_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/48abe9bd-4327-46bd-8276-26ba9b6f0c5e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Herdeiro Entre Nós',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0bf9ba7d-9880-4beb-9958-37db6c2a5eb2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ecd6af69-8710-47e6-8130-d2e0b0e4e7ae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Seu Amor Selvagem: Reality Show',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/61526796-0237-4945-b257-2615be7f6504_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6d40beca-e664-4137-bead-9e908f25d374',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O Amor Nos Uniu De Novo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b5c3f263-faa3-4a96-9cd0-0b448e66cc9f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/194e166f-5d02-4547-90d8-5f8c3ba1aa06',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Inimigo Me Engravidou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/976b447b-c53f-4478-9e3e-c153f33bb96f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/71b2b750-817e-43f9-89e1-1e625ac05ab0',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MATHEUS SILVEIRA O BASTARDO QUE CALOU O REINO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f48149e0-cf9a-4e34-ba1a-6b7c99b2e3c7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/90d244ec-1abe-4034-8531-74aeeca6e545',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dois Alfas Estão Apaixonados Por Mim',
    'Sinopse: Lyra, uma jovem sem lobo, foi mantida cativa durante sete anos na alcateia Wolfsbane, onde sofreu abusos constantes do cruel Alfa Roland. Em uma de suas fugas, acaba passando uma noite com o Alfa Alfred, o lobisomem mais poderoso da alcateia Moonshadow, e engravida dele. Alfred a resgata do cativeiro e a leva para sua própria alcateia. Para protegê-la, propõe um contrato que a reconhece como sua Luna, ainda que de forma simbólica. Mas Roland não está disposto a deixá-la partir... mesmo que isso signifique começar uma guerra.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/62d3fb62-fbb5-4fce-b248-3578f27bb48d_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8540e886-4b20-4fda-ad3a-a80746bd4c40',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cheiro De Destino almas Gêmeas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fed96318-e07c-4a66-aba2-5a86b38b99a7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d17125f8-25e5-427d-a72f-112bb7845a7c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Punida Pelo Seu Amor',
    'Sinopse: Sabrina era uma mulher indigente, cuja vida dependia dos outros. Ela foi forçada a uma bode expiatório e vendeu a si mesma, o que resultou em sua gravidez. Sebastian era o solteiro mais disputado, com abundante riqueza e poder. Ele acreditava que Sabrina era flor do mal, manchada de ganância e engano. Ela não conseguia conquistá-lo, então ela sumiu de sua vida. Furioso, ele jurou procurar até os confins do mundo para reconquistá-la. A cidade inteira sabia que ela seria picada em pedaços caso fosse encontrada. Quando isto aconteceu, ela perguntou desesperadamente: "Eu abandonei o nosso casamento sem levar um centavo seu, então por que você não me deixa ir?" De maneira dominadora, ele respondeu: "Você roubou meu coração e deu à luz ao meu filho, e tenta fugir de mim?".',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/757101c2-35f1-42de-8da1-bf53714854c5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a4972bca-4da7-4795-acd7-bc3bc80b4e32',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Em Nome Do Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/075ab574-879d-41f8-b804-f7dfe8aafbec_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7987ba38-21ab-4524-900b-d0e9671230c3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Esposa Desaparecida Da Máfia Volta Com Gêmeos',
    'inopse: Os bebês gêmeos do rei da máfia Luca foram separados por um incêndio. Seis anos depois, a pobre babá Sarah está criando sua filha. E a verdade permanece enterrada — até que seus filhos se reencontrem...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4b6fd089-7012-4893-9350-c3624cb757bf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/123e66c6-85fb-4469-a762-aa91a0ddafbd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'AMOR ENTRE CORDAS BEBÊ FUGITIVO PRESO POR UM FIO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ff0bfece-8799-47e8-a759-c699caa426e4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5fbf0e62-cde6-4937-a4a5-6a5324c7e778',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Ultimato Pela Cidade: Seu Remorso Na Pública',
    'Sinopse: Sete anos atrás, a CDF Eva entregou a virgindade ao seu crush Timóteo, o astro do hóquei — apenas para descobrir que tudo não passou de uma aposta. Agora uma produtora, ela cruza o caminho dele de novo. Diante de repórteres, Timóteo pede desculpas e revela que espera por Eva desde então.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7f050e66-16f7-46b0-afd6-cf84047ed9cb_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/80afa7af-c989-4b04-aba3-d658790dc929',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vingança Da Senhora',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ad84e74b-841e-462f-842d-939f7758cd6d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/82a84a48-d7be-4552-8b70-a2a03c0d4a12',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Imparável Após a Prisão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b402f0fa-dcdc-426f-98b9-c02114e988ad_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3872dd36-1dfa-49c8-9b3f-ad6f7fa6c227',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Desejo Do Meu Alfa Ocidental',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3813df4b-49ed-4cba-850b-ffecbe2c282f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b352cf75-2a6a-48b9-ba56-734dfc96694f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Código da Honra',
    'Sinopse: Em um mundo onde o destino está escrito nas estrelas, um homem ousa reescrever o seu próprio destino. A jornada de um guardião misterioso encarregado de proteger os fios do destino – mas quando o amor, a traição e segredos ancestrais colidem, até mesmo o guardião precisa escolher entre o dever e o desejo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8ae77876-1b4c-40dd-b5b9-dc1c9c59c680_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/185b7444-829c-494a-89a8-b096ad19e74d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'The Mafia Boss',
    'Sinopse: A policial disfarçada Talia Rici se infiltra na multidão para derrubar o chefe Luciano Romano. Sua missão se complica à medida que ela desenvolve sentimentos por ele, testando sua lealdade e determinação.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7b6fc9b1-dacb-4e7b-962b-20e418a0546b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5c0f01f0-b2da-4881-a180-e0b9dedcb70c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'TRONO EM XEQUE SORTE É MEU SUPERPODER',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bbf1b6a2-e41b-4b5d-8b8f-9a9c14f1f7ff_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/64a55611-29cb-4f11-85ae-1c4942e21d65',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Quando o Amor Falha',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/da39be5c-c29f-4a82-9405-05d65c912ab2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/bc8364fc-1a46-4c15-8025-192f12b67db9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Pai é O Chefão Da Secreto',
    'Chen Zhixing parece um homem de meia-idade comum, mas, na verdade, é o poderoso líder da organização Tianmen, com influência global. Após salvar Han Yunxi, a CEO do Grupo Xinghui, de uma situação embaraçosa, seus destinos se entrelaçam. Eles se casam rapidamente, mas quando a namorada do filho de Zhixing se volta contra eles em busca de riqueza e poder, Han Yunxi assume a defesa dele. Em uma grande conferência da Tianmen, Zhixing revela sua verdadeira identidade como o Dragão Chefe, prometendo seu apoio ao Grupo Xinghui e pedindo Han Yunxi em casamento mais uma vez.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d6e69f9a-d30d-47c3-a9be-2cf04561a28b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5879ec88-b5b5-43c9-b13a-3e9dc05d9a66',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O LUTADOR QUE ROUBOU MEU PULSO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/10182c28-308e-4fbc-ae26-9b8031452b68_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7f391f59-9da9-4761-828a-722ddbecd817',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Volta Ao Jogo',
    'A mãe solteira Mariana terminou com seu primeiro amor, Luis, há oito anos... Mas nunca contou a ele que estava grávida! Agora ele e uma estrela nacional do futebol e chefe de Mariana! De repente, juntos novamente, será que Mariana contará a verdade ou é tarde demais para um final feliz?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8d251639-3768-4a63-acd4-76da5369c641_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b6ec6c11-b589-405c-8e23-8856cc96b07a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'PoolBoy',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0c714618-9c99-4be7-ae15-9c534f19cc40_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/64fac2eb-1fd6-4ea7-b9a5-6608bc6c146d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Segredo Do Pai',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fd7049b3-05ed-43e4-a399-64c6c96b827d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/eb96c3b9-f15c-4933-a679-ca99375f3adf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Noite Com três Papais Gostosos',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f721f7d0-c131-4512-9b70-56d11471a62e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f0e1cfb6-ff95-45e3-a487-989c3373f627',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O CHARLATÃO VAGABUNDO QUE VIROU O TEMIDO DE TODO MUNDO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/15d7db81-d493-4b17-96e5-872f0bd0aadb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c9fadc86-f84f-4b24-86f6-f38301369373',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Último Adeus Ao Ente Querido',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7992afec-10af-46d0-a608-82fb0f57bfc4_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/93bb5965-682f-4501-b8dd-8b602f67bd9a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Companheira Amaldiçoada Do Alfa',
    'Sinopse: Shay Santos finalmente está pronta para perder sua virgindade, porém quando ela tenta surpreender seu namorado, ela encontra ele a traindo! De coração partido, ela sai com sua melhor amiga e promete dormir com o primeiro cara que chegar nela... Que no caso é o poderoso Alfa Mal Haywood. A atração entre eles é instantânea, animalesca e algo entre um humano e um lobisomem é... Proibido. Porém esse não é o único problema: Mal foi amaldiçoado e se ele não marcar Shay como sua parceira e impregná-la com seu filhote, ele morrerá!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3d30e425-d674-4c29-8de2-dc5d226b2556_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6e5458cc-9bf1-4c15-8eaf-7d6ddca40160',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ALUGUE UM NAMORADO BILIONÁRIO PARA O NATAL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a308decb-6b30-4120-a97d-9c0abf045d03_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9daab6a9-0a66-43b0-96d8-fa3a87880faa',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Retrocontagem do Amor',
    'Sinopse: Leila foi deixada de lado pelos pais, traída pelo marido e até rejeitada pelo filho. Sem mais esperanças, ela aceitou a oferta de um sistema misterioso de trocar de identidade em três dias. Quando acorda, recebe um pedido de casamento de Érico, o rival do ex-marido. Ele sabe tudo sobre ela, sempre a protege e enfrenta todos por ela. Leila acha que é só uma substituta… até descobrir que sempre foi o verdadeiro amor de Érico.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bf227b10-ea52-45c3-9031-307f9b46ac45_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/59be5145-4419-492e-b16d-d8b6e236f491',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Abra Seus Olhos Meu Marido Bilionário',
    'Hailey não tem nenhum centavo e está desesperada para encontrar uma forma de pagar as caras despesas médicas de sua mãe. Sua família concorda em ajudá-la, mas com uma condição: ela precisa se casar com o bilionário Samuel Trent, que está em coma após um grave acidente de carro. No entanto, não vai demorar para que o temido Samuel Trent acorde e descubra que está noivo de uma completa desconhecida.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/558637be-66fd-45e3-8021-bef1ed850b24_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d15d057c-fbd7-4c8c-9747-7e8d7d120466',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Acordo Com O Capitão Do Hóquei',
    'Sinopse: Isadora, uma CDF, faz um acordo com o capitão do time de hóquei, Tiago, para que ele a ajude a conquistar outro jogador, Leo, enquanto ela se transforma e ganha confiança, mas sentimentos inesperados entre ela e Tiago complicam a situação, além de segredos e sabotagens.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/782e5610-5e31-4334-9781-8dfa3e336b80_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dfec93f5-6ff0-43a2-bfc1-6a4ce481d7b9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Medimos A Culpa Na Cama',
    'Ele lhe deu um anel. Ela o condenou à prisão. No dia em que Troy a pediu em casamento, Gabby testemunhou — e destruiu seu mundo com uma mentira. Incriminado por envenenar seu rival, Troy passou três anos atrás das grades, ardendo em uma única coisa: vingança. Agora ele está de volta — mais rico, mais frio e duas vezes mais perigoso. Como o implacável CEO de um império bilionário, ele está pronto para arruinar a vida dela como ela arruinou a dele. Mas Gabby não é a vilã de que ele se lembrava. Ela esconde um segredo... uma garotinha de cinco anos com os olhos dele. Seria traição — ou sacrifício?Vingança — ou uma segunda chance disfarçada?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/895ffa9c-1ac5-4fac-a205-47c7e515c5bc_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f78c71a0-ec06-4dc6-9977-edd01ff0c3d6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'LAÇOS DO DESTINO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5e15625b-d21c-489c-8843-08e7be17b3d2_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/12d6ffc5-3104-4c4f-9055-573420bf02da',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MINHA LUZ ALÉM DELE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3d9a2032-579c-43ac-a5d3-e07655444d46_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/87ffed27-7268-4560-b407-0ee581042565',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ascensão Do Pequeno Mestre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9d14eeaa-ccb3-40c7-9070-4f4b0db35c3d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/022f5197-6048-4815-8713-a2fcbcb2ee03',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O AMOR É UMA DANÇA PERIGOSA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6cc50a18-d297-4290-85ac-6bcb5af19ef8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9507877e-40ac-4a49-98ed-4866e60a0bc9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reencontro Do Amor',
    'inopse: Na minha vida anterior, desconfiei do filho do meu motorista, que me roubou o dinheiro com a sua namorada malvada e me injetou HIV!!! Agora renasci de volta à escola, vou fazê-lo sentir toda a dor que me causou, expô-lo à frente de toda a gente pelas merdas que fez e voltar a apaixonar-me pelo meu lindo admirador, o maior bilionário de Nova Iorque!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/75a0d963-9bbc-455a-b7ca-d4a9f29a5d50_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2ee75075-f2f4-434c-8f7e-033b4d4d70f7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ROSA NA PALMA DA MÃO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ef163836-9311-4e2f-9b11-1d5b09899603_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d913c97c-1200-4608-b744-031f7658a8af',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'EMPATIA E EGOÍSMO A MULHER QUE CONDENOU A PRÓPRIA FILHA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/efa38b2c-f34b-479b-b330-fe356e0065b3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7855c519-f962-4f7e-a5fb-7e0c3ca1e32a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Doçura Amarga De Vê la Divorciada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9cfd6033-596d-4b19-bd23-1e1d87e763fc_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/d5bc6d76-69b5-445d-9e7c-48bce3f6c7d7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'CIGARRAS CANTAM VERÃO CHEGA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2a6a469d-ed30-4023-82df-17d3c07c12fd_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7d545362-61d5-44de-a7da-5d043d87cf91',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Serva e o Tirano',
    'An Jiu, uma mulher dos tempos modernos, desperta no harém imperial como uma simples serva, sonhando em conquistar o favor do imperador. No entanto, assim que abre os olhos, o tirano imperador a atravessa com uma espada. No dia seguinte, ele mata uma criada sênior que servia uma concubina, e no outro, uma serva morre envenenada ao provar a comida do imperador. Ser criada no palácio é um trabalho de alto risco, então An Jiu decide focar apenas em seu serviço, economizar o máximo possível, valorizar sua vida e manter distância do tirano. Mas, de repente, ela começa a ouvir os pensamentos mais íntimos do imperador…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4c9a751b-a6d7-45a6-903e-5ba3b7b4be41_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2bfcaf16-10da-44fc-826e-946f9b2091e4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DOULAS DE 20 ANOS ELA VIROU MIMO DA FAMÍLIA RICA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7570bf0c-f32a-4b7a-94e7-b906333c02bc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fbf120de-a851-4e8f-b4eb-021f8041e2f9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casada Por Acidente Com O Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/988e01c6-3f13-4d66-ac71-a8ee4711a2aa_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/69bbc259-afd5-49bf-a04a-7e26329a50c5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Reivindicada Pelo Meu Ex Irmão Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b4c47572-e369-456c-9eb3-c831d2489dbd_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/a795b5fd-0fb6-43ed-9244-c123051efd93',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'DESEJOS QUEIMAM DEVAGAR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/40b737e2-cb92-4250-a82f-bd504e65d6cc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9246b89c-231f-40f0-b436-a66b86b0a90e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'VOO FATAL DESTINO REFEITO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/624fba78-af78-4443-99d1-89035e0e2fab_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fff4ac6b-febc-4f21-96ba-f8fbd19a2b4f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Pai Segurança Pai Magnata',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8c185060-0655-4883-9c0f-b317bb7e225c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/303d8528-0d23-4a53-b227-a44dc188b6b4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mimada Ao Extremo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/127bc6cd-e418-4817-a778-96e33d2ed877_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/9ce89c85-eac2-44f7-9cbc-c9ce3d6d018b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'TARDE DEMAIS PARA UMA SEGUNDA CHANCE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/434c784f-de0d-487a-b052-d437de66bca8_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/25c4937b-e14e-4e4c-9189-56443c2b4d3d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Você Pertence A Mim',
    'Sinopse: Kristine Wilson sempre fez a coisa certa, foi a namorada perfeita, a filha perfeita, mas tudo muda quando ela conhece Henry Lockwood. Depois de passar anos sendo abusada pela família e traída pelo noivo, ela está farta e acabada! Para se vingar daqueles que a injustiçaram, Kristine toma uma atitude ousada. ela seduz Henry, o TIO de seu noivo traidor e herdeiro aparente da fortuna da família Lockwood...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f7a1accc-1831-4346-aea1-b8d982163922_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/810a91a7-ffde-4328-9ce4-b62a681bc9b5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor Cego da Herdeira',
    'Sinopse: Com a ajuda de um médico, uma mulher cega recupera a visão - apenas para descobrir a traição de seu marido. Logo, ela descobre que é filha do homem mais rico do país, decide lutar de volta e acaba se apaixonando pelo médico que a salvou. No entanto, seu marido nunca finalizou o divórcio - e está escondendo um plano ainda mais sombrio. Será que ela conseguirá escapar antes que seja tarde demais?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b3d29436-b181-4f4a-bdfa-6e3c9106d499_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/9bb025b6-897f-4822-9f92-7ccab2061fd7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando A Neblina Levanta Me Ame',
    'Susan casou-se com Cyrus, acreditando que seu "azar" poderia equilibrar a "má sorte" dele. Mas a dura verdade é que o coração dele pertencia a outra pessoa. Ela escondeu seus sentimentos, concentrou-se em pagar as dívidas dos pais e tirou o melhor do casamento. Quando a garota dos sonhos de Cyrus voltou, Susan decidiu ir embora. Para reconquistá-la, Cyrus a fez sua assistente, protegeu-a no trabalho e lutou pelo casamento que ela queria esquecer. No final, o amor vence, e Susan também.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2fc9fa92-23da-4e00-a626-ff9e56688c24_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7e6c7acf-8a3a-49af-82e6-f3579c6fe672',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'De Capricho e Carinho Uma Aposta Bilionária De Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2fbfc68c-879a-4f62-974d-b2aa90a80377_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/67b81f16-edb0-499b-9ab5-0193c41e0825',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'No Dia Do Casamento Eu Desisti Dele',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d4674bc5-f8c2-4923-9d45-fa7b791fb323_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cd6f977e-7ea8-44fa-9106-9e7371c20f3d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'FORÇA SECRETA DA ESPOSA GORDINHA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0bf812b3-b379-4c87-8f6c-54cf84ea85b3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/52b7055c-22e1-4971-b80f-35f01ac0d066',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'IMORTAL CAÍDA O ARREPENDIMENTO DO IMPERADOR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0bbca047-6195-4516-b7d8-1b00aec62747_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2e4255d1-a316-49c7-bdde-4e215776e294',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Odeio o Jeito Que Você Mente',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/82341a5c-0928-48be-bbef-f22eecf0a70a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a2ccb8f8-b210-4633-9f3d-4715a0b43c3c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Me Tornei O Maior Segredo Do Meu CEO',
    'Sinopse: Iris chega atrasada à entrevista e, inesperadamente, é contratada pelo enigmático CEO Jared. Logo, ela se vê presa em um jogo perigoso de poder, sedução e humilhação. Entre encontros secretos e segredos explosivos, a tensão entre os dois só aumenta. Agora, Iris precisa descobrir se o que sente é amor… ou apenas mais uma armadilha.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/605a155c-095a-48a0-9cad-2262af5a74a8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6f9b8714-2b4d-47fc-9263-566338732de5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Verdadeiro Sem Magia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9a2d23c2-f107-447f-aa51-1d5e9ded29cf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/35eb4fb7-face-43b7-8b26-9e4121b1a52e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Goleada Pelo Rival Do Meu Irmão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/85a4bda5-c17f-449a-b007-2b2ccac4c2b5_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d440241e-882d-4cd3-a839-de0709f3c15f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DE ENVENENADA A INIMIGA IMPLACÁVEL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/4f4e3384-dff0-4d6e-8e14-33a2f2405c68_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/eec968ac-92fd-4e24-8f2a-37faecb2c2c2',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'College Story',
    'Sinopse: O que começa como uma aposta cruel vira uma batalha por verdade, liberdade e amor. Quando o arrogante calouro Will é desafiado por uma fraternidade implacável a seduzir a excluída do campus, ele acha que será o teste de lealdade mais fácil de todos. Mas Hailey, uma artista quieta de língua afiada e segredos próprios, não cai em jogos e logo ele também não. À medida que as mentiras se desfazem e o poder muda de mãos, o retorcido mundo universitário explode em escândalo, chantagem e vingança. Agora, o amor deixou de ser um jogo e é a única saída.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e1173823-90b8-4961-8cfb-64e623d2a7d9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/fa3b29a8-80bc-448c-8f4d-638f0130d49c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Piloto De Oito Anos Rumo Ao Céu',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b17947bd-3d3a-4d88-8ef3-1f7f23e3dd74_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4022d8c2-e81d-4d36-9340-0f1b17e86b2e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Encantada Pelos Gêmeos Bilionários',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/45931259-18f6-40b8-ae10-f7a05131b017_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5ec9fdd0-bf00-43c0-8fbc-b594fc3f4410',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Jogo Do Carma',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ff899f1b-c859-41b4-9e10-8a6b43ed0515_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/0a48e008-ead7-4365-b13d-6830589147c1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'MAMÃE NÃO CHORE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/58cfd36e-a91f-4298-8811-3e5c620b2ada_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a53e4611-e859-472c-99ce-18ee6a1bff5a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Cai Perfeitamente Em Seus Braços',
    'Recém-contratada como controladora de tráfego aéreo, a mãe solteira Diana acreditava que sua vida finalmente estava entrando nos eixos... até reconhecer um eco do passado: a voz de Anthony, seu grande amor de outrora. Anos atrás, ela terminou com ele para não atrapalhar seu sonho de se tornar comandante. Agora, sentia-se aliviada por ver que aquele sacrifício não fora em vão e seguia ocultando dele a existência da filha que tinham juntos. O que Diana não sabia era que Anthony não era apenas um piloto, mas também o novo CEO bilionário da companhia aérea que voltaria a entrelaçar seus destinos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8f2387ce-2b3f-4f50-8ecf-546d0c5bb38a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cd52c504-fb30-4278-b3df-048a6354d5cd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Untitled',
    '',
    '',
    '',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'O RETORNO DO IMORTAL DA ESPADA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2b414c68-b3b3-4db0-ba79-2580778c28aa_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/3e007db0-c8d1-44f8-895b-94c04b8ba6ef',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Lobo Divino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5a53f6ec-9bc4-4176-b4f2-1eb52d361038_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/f46f97e7-77c9-4651-8833-9129d17c5b94',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Sendo Mimada Pelo Marido CEO',
    'Bella, uma garçonete de espírito resiliente, inicia um relacionamento com o CEO William após um encontro casual, mas o romance é marcado por desafios e mal-entendidos. Quando descobre estar grávida, a notícia traz alívio à família de William, devido a problemas de fertilidade, mas Bella deseja provar seu valor por conta própria, recusando-se a depender do status dele.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1c9842af-ed12-48e0-b7e1-3173feace7c5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/1d1272b6-c0f6-42d4-b960-da405b7c004d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Magnata Presidente Se Apaixona Por Mim',
    'Sinopse: Beatriz Santos, uma jovem que perdeu a mãe e trabalha como entregadora, acidentalmente ajuda na rua o magnata Sr. Ferreira, que é confundido com alguém que não pode comprar pãezinhos. Sr. Ferreira, determinado, arrasta seu neto—Thiago Ferreira, o magnata de Cidade Solar, para um encontro às cegas com Beatriz. Para quitar as dívidas do tratamento de sua mãe, Beatriz se casa com Thiago por um dote de 30.000 dólares. Thiago, casado sob a pressão do avô, não acredita em Beatriz e esconde dela sua verdadeira identidade de magnata. Conforme moram juntos, seus sentimentos gradualmente melhoram. No entanto, a identidade de magnata de Thiago sempre é um ponto de tensão no relacionamento. A visita da mãe de Thiago, a conferência anual do Grupo Ferreira e o retorno ao país de uma amiga de infância são eventos que repetidamente fazem a protagonista suspeitar, desencadeando uma série de histórias tensas e engraçadas.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/41a20a2b-e1ea-4340-a6e1-110cc3baf581_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cbba2997-7e6f-45ab-b6b1-649503ad22e6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Encontro Destinado',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bc1e36a8-aae9-4a49-879c-65eb376e7ddc_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c9a7139a-616b-4e48-a314-e68024380996',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'As Gêmeas e o Magnata',
    'Duas irmãs idênticas, Luna e Stella, separadas na infância, vivem vidas opostas: uma é humilde e sonhadora, a outra ambiciosa e envolvida com o luxo. Seus caminhos se cruzam novamente por causa de Leonardo Ferraz, um magnata poderoso, frio e misterioso. Um jogo perigoso de identidade, paixão e vingança se inicia, onde o amor pode confundir e a verdade pode destruir. Quando os corações se entrelaçam, até as mentiras ganham força.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ea99e743-158e-4d6f-ad7c-07e9e8c15e84_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8093a637-f1dc-46e2-ba32-aecb0de9b14f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Guardião De Dia e Amantes A Noite',
    'SINOPSE: Em uma festa da alta sociedade, Selena e Emma se tornaram alvo de vingança de um ex-namorado e acabaram em perigo. Seus respectivos seguranças, Noah e Carson, uniram forças para salvá-las, mas Noah acabou ferido no processo. Como compensação, Selena exigiu que Emma enviasse Carson para servir em sua casa por três meses. Durante sua estadia na mansão de Selena, Carson foi gradualmente conquistado pelas provocações sedutoras de Noah e decidiu romper com o controle do irmão de Emma — um perigoso chefão do crime. No entanto, Carson logo descobriu que Noah era, na verdade, irmão de Selena e o herdeiro misterioso de uma família bilionária, e que tudo havia sido uma armadilha amorosa cuidadosamente planejada por Noah desde a noite em que Carson o salvou, dez anos atrás.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a4bd27fc-670d-410d-acbf-34328753cd1c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/054b4ff8-6c3b-48b4-8894-95db8727e6fd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'BELEZA FRIA NOVA VIDA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/94473e92-5bd0-4014-9a14-e366e19ff8a6_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b854e9f6-995d-4cfd-85b1-9adf16ea6d2f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Aulas Particulares',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/aabdf3a6-b44b-4523-9651-885a05509f04_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b73f051e-b65f-47b6-9b1c-f66eeb49d00c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Adeus Meu Amor',
    'Sinopse: Amigos de infância, Edward e Amelia são forçados a se casar no meio de uma disputa por herança familiar. Entre segredos, manipulações e promessas do passado, eles se unem contra seus inimigos para descobrir a verdade.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8be838d2-9ff9-4afe-b78e-cc5f372c73e3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/01306a9d-7269-46b3-b1a5-b7b825ba23dd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Dupla Vida Do Senhor Presidente',
    'Sinopse: Claire, uma mulher do campo que trabalha num restaurante de frango frito, entrou acidentalmente na suíte do hotel onde o presidente norte-americano William está hospedado. Depois de usar seu corpo para desintoxicá-lo, ela ajudou o presidente, que foi baleado, a evitar perseguidores. A fim de retribuir sua bondade, os dois formaram um casamento contratual, mas Claire erroneamente pensou que William era apenas um guarda-costas substituto do presidente. Foi só quando Claire foi sequestrada por uma gangue que William chegou com suas forças especiais impressionantes.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/eea24b5f-f83d-4cce-acc6-8234b5b1383b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/976ae547-23ec-4a78-8df9-832bfa9e9678',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destinada A Se Casar Com O General Implacável',
    'Tessa foi transportada para um mundo fictício sobre o qual já havia lido, onde sua irmã, Rita, a forçou a se casar com o notório jovem general Josh, temido por sua astúcia fria e mente calculista. No entanto, armada com seu conhecimento da história original e sua inteligência, Tessa prosperou em sua nova vida, conquistando gradualmente a afeição de Josh. Juntos, frustraram os esquemas sinistros dos vilões, protegendo a paz e o futuro estável de sua terra natal.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/381a564e-f017-4564-9cbd-1ab1f3f4653c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c16af928-420a-4b67-817a-c1792a5d7c19',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Devolva Meu Carro',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c2813537-1b5e-4157-8a70-04c3ee0c4282_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/26b8ed68-7859-45b8-8043-706765ff58c7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Luna Perdida Do Rei Lycan',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ac05c66d-259e-4893-993e-066401f863d7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1498eb07-51ba-440f-b03e-60f0405b1870',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O SEGREDO DO ANJO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b26221c1-8350-4235-b87b-ba7b768ab585_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/cf9140d6-4685-4b0d-b39c-6d54e526e994',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Na Ponta Da Faca O Retorno Do Rei Da Culinária',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/150bb99a-47e5-4a31-a778-344bb6ceda05_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/4cd9ae61-88f6-4136-bd21-3190eabc46ae',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida Por Acidente Mimada Para Sempre',
    'Sinopse: Julia quase perdeu a vida pelo marido Klaus. No entanto, descobriu que Klaus a traiu e teve um filho com outra mulher. Desanimada, divorciou-se e recuperou a sua verdadeira identidade de neta do homem mais rico do mundo… Klaus sempre amou profundamente Julia. Pensou que Julia se tinha apaixonado por outro homem, por isso fingiu deliberadamente trair e divorciou-se, dando-lhe liberdade. No entanto, ele nunca poderia realmente deixá-la ir no seu coração…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/62d2817d-a712-4ddd-8d82-80321469a4a7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/eb76e093-472e-48ee-9fd4-c0d21bcd3179',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor Apos o Renascimento: Pelo Tio Mimada Meu Marido',
    'Em sua vida passada, ela foi traída e morta por seu marido. Agora, renascida, ela se vê de volta ao dia em que eles conheceram as famílias um do outro. Dessa vez, ela faz uma escolha ousada: abandona o futuro marido e escolhe o poderoso e enigmático tio dele. Apesar dos rumores sobre suas supostas deficiências, a união deles rapidamente se transforma em uma vida repleta de surpresas inesperadas, incluindo trigêmeos!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b25abf9d-11d1-4c8b-8a28-f616518d1de7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/416dc9bc-3b4a-465e-9422-a6433e6cd622',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DO TIRO AO ALTAR AMOR PROIBIDO (DUBLADO)',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3ee357bc-1741-4135-975a-63046cf074ae_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0f691289-253d-4ac3-a1ab-a29768dc068c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Dei a Minha Esposa Uma Arma Com Borlas Vermelhas',
    'vitoriosa, mas inesperadamente grávida! O antigo Marechal Grande Armada do império havia se aposentado devido aos últimos desejos de seus pais e casado com uma mulher conhecida por sua bravura e ambição. Ela aspirava a alcançar a grandeza nos campos de batalha, e antes de partir, ele lhe presenteou com uma lendária lança forjada de ferro frio de mil anos. Três anos depois, ela retorna vestida com uma armadura prateada, grávida e de mãos dadas com outro homem. Ela apresenta uma carta de divórcio, declarando: ""Meu marido deve ser uma figura heroica que se mantém firme, e não um erudito fraco sem força."" Mal sabia ela que o homem aparentemente sem poder com quem havia se casado era, na verdade, a divindade guardiã do império. Quando ele veste novamente sua armadura de marechal e empunha sua arma lendária, ela finalmente descobre a verdadeira identidade do homem que um dia desprezou.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fea95e3f-a46d-483b-a530-e9d6f27428c5_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/950aa852-a0c2-4c94-adaa-bfaf71e6ea20',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Renascida Para Ser Principal Herdeira',
    'Olivia, a verdadeira herdeira da família Sterling, teve tudo roubado - sua tese, seu rim, até mesmo sua vida - por uma meia-irmã intrigante, enquanto seus próprios irmãos a traíram. Renascida com vingança, ela corta todos os laços e revida com brilhantismo. Quando a verdade explode, seu arrependimento chega tarde demais.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8160d8fe-2983-4454-8977-b0fd6b5618f2_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/32d820e6-04ca-4efb-9ce4-2cb8ba204969',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Uma Entrega do Bebê Ao Bilionário',
    'Sinopse: Precisando pagar seus estudos, Rosa trabalha como entregadora de comida e, devido a um mal-entendido, acaba passando uma noite com o bilionário Jonas. Ao descobrir-se grávida e “traída”, ela resiste e não cede às pressões. À medida que a verdade vem à tona, Jonas decide protegê-la, e o amor entre os dois nasce em meio a adversidades e traumas antigos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ddcb7237-5d26-4f9e-b4ac-cfa1bd31bd6a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/36a2616f-5901-440b-834d-591394e4d29f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Mãe Solteira Impressiona O Mundo',
    'sem',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6bc05795-2f97-4ead-a6cb-1388859e91cd_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/cf3b3ae3-9114-4a4c-9c15-b494711a8f4d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Ceo Meu Milagre',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8a47a7f8-d56a-4e2f-8e47-a36af5957986_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/025bf07e-529a-4d4e-863e-788be701a6da',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Te Amo Sem Razão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8cd3b220-7e93-4773-b831-d69035e3bf0e_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ead60252-468d-41a4-828c-725c4a56f667',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'OBJEÇÃO A JUSTIÇA SEMPRE RETORNA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cc2545a3-51dd-476e-a550-ee8c7ea6cb9c_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d37f5e9e-7c90-415f-9c50-53198aeab0e8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ELE NÃO É SEU MARIDO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3b5fa453-3db9-42c1-a82f-fedebf1a2090_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5984157a-604c-406b-9099-ccafbf344f7c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida Pelo Pai Do Meu Ex',
    'Depois que o namorado egoísta de Lucia termina o namoro porque não acredita nela, ela promete provar que ele está errado. Determinada a ser a melhor residente de cirurgia, ela se lança no trabalho... e sob as ordens de seu supervisor de residência, Dr. Sawyer Campbell: implacável, cirurgião renomado, pai surpresa de seu bebê e, pior de tudo... o pai de seu ex.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8c0c76ba-a2c1-4f0f-b792-8f4060681e99_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/81380b52-fdd4-40d5-b827-221451886760',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'PEÃO QUE ELE DESCARTOU XEQUEMATE DELA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c6bbb39a-2564-45a5-8074-318e63db698d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c8698c8a-8662-4907-b81a-02343694435e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Destinada Ao Meu Garoto De Programa Bilionário',
    'Claire quer ter um bebê para dar à sua avó doente algo pelo que viver. Quando o marido traidor de Diane a deixa, ela contrata um garoto de programa para fazer um bebê com ela. Ela não sabe que o garoto de programa é, na verdade, o bilionário Dominic Bridges, que está apaixonado por ela e fará qualquer coisa para pegá-la. Mas sua rival intrigante, Gina, fará qualquer coisa para mantê-los separados...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/13c13d48-309b-4463-a03f-076f884e1a36_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/856f6c29-3efc-4c22-921d-d1bbfab25e98',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Lenda Do Líder Fili',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8dd4b12c-5404-4633-979d-da5059d6d6a9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0bb44118-f225-4565-8e4d-952b7a8cf300',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Atenção a Lenda Viva Saiu Da Prisão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/72967f5e-e74c-4deb-8023-b6afb99674f3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c223b164-6cdd-4d86-93ff-97dc0a4e7175',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Acidentalmente Roubei O Primeiro Beijo do Bady Boy',
    'Sinopse: Aspirante a bailarina da Juilliard, Addalynn Reina retorna à sua cidade natal para passar o verão, apenas para se ver envolvida com o irresistível bad boy, Asher King, o irmão gêmeo de sua melhor amiga. Conforme a química entre eles se intensifica, segredos vêm à tona, rivalidades explodem e um único beijo roubado ameaça mudar tudo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1fa78a76-2235-4ca7-abb7-133eca884f44_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ce818058-cddd-4b41-9f99-b4de76aa22de',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jovem Demais Para Querer Seu Professor',
    'Jovem Demais para Querer Seu Professor conta a história de Mia Harper, uma jovem de 19 anos que acaba de entrar na faculdade após a morte repentina de sua mãe — uma famosa romancista erótica. Mia quer seguir os passos da mãe, mas não tem experiência no amor. É quando ela esbarra (literalmente) em seu novo professor, quente, frio e mandão: Nate Blackwell.Jovem Demais para Querer Seu Professor conta a história de Mia Harper, uma jovem de 19 anos que acaba de entrar na faculdade após a morte repentina de sua mãe — uma famosa romancista erótica. Mia quer seguir os passos da mãe, mas não tem experiência no amor. É quando ela esbarra (literalmente) em seu novo professor, quente, frio e mandão: Nate Blackwell.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3536648b-a0ae-4a35-94db-a83bd0829278_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/185e8c5a-53cb-4e75-a5e7-34d5908c3e1a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Meu Ancestral Tem Poder Que Ninguem Esperava',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/212861b2-6c91-4fde-bd57-919bb4e22042_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6c34f262-0876-4ba2-9821-fde78f6ea274',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Eu Te Deixo Nas Minhas Cinzas',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ddb71317-0071-457b-86cc-53798009222d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e953419d-b3e3-4a06-b213-5ed497d3b094',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Rei do Box E Sua Empregada Picante',
    'Sinopse: Campeão do UFC, Leo salva uma florista tímida do perigo — e acaba passando uma noite inesquecível com ela. Ela desaparece, mas no certo dia, retorna como sua empregada e amante por contrato. Frio, rico e acostumado a ter controle, Leo nunca esperou se apaixonar. Mas quando o ciúme se acende com a trama de uma socialite rival, Marcela se afasta — grávida e com o coração partido. Agora Leo precisa perseguir a mulher que mudou tudo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1e12bbcd-1624-40d0-bf00-43d43f74c176_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/857692dd-5dae-4c4b-bc86-edd05d0c80f4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A CABULOSA HERDEIRA RETORNA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9a6a3222-2a71-49d4-83d8-bbee8671c162_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/38928aba-06ed-4d95-aedc-6fdea4827b97',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DIRIGINDO PARA O AMOR',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1ba261f1-ee8a-409d-9b4f-326a164e5d2f_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/769fdd16-91b6-422c-afbd-a13bf881f02a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Obesessão Agridoce',
    'A coisa que Shen Qingli mais lamenta provavelmente é ter tido um caso de uma noite com o homem por quem se apaixonou secretamente por oito anos, e então deixá-lo pagar por isso. Desde então, Gu Heng se envolveu com ela à noite, tratando-a como uma estranha durante o dia. Quando ele estava prestes a arranjar um casamento, Shen Qingli pensou que poderiam se separar amigavelmente. Mas, em vez disso, ele a levou de volta para sua casa. Velhas mágoas e questões não resolvidas na família Gu levaram a um desenrolar dramático dos acontecimentos. Gu Heng, ferido, enviou Shen Qingli embora, mas continuou aparecendo para salvá-la do perigo. Shen Qingli pensava que era apenas um brinquedo, descartável. Mal sabia ela, porém, que ele já estava profundamente apaixonado por ela e viciado nela.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/3cefa9ed-0f4b-4e13-ac7e-be1f408e01c1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4babe033-76d5-428f-b438-0de0bf111592',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'BABY DADDY THAT''S NOT YOUR KID!',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8aebabfd-1328-4471-a50e-11b3606ba57a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2567160e-a9e9-4599-b285-a4aec0e095c5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Alpha Rick',
    'Sinopse: Os Ômegas devem ficar quietos. Os Ômegas devem obedecer. Os Ômegas devem fazer TUDO o que eu digo!" disse o Alpha Morrison com raiva, enquanto cuspia em mim. Eu vivia todos os dias com medo pela minha vida. Me perguntando o que eu fiz de errado para merecer tal destino. O ódio deles por mim era tão forte, que eles estavam dispostos a me entregar para um alfa implacável? Me deixando para me virar sozinha? Olivia Watson é desprezada pela sua matilha. Espancada, torturada e tratada como escrava da matilha desde o dia em que sua mãe e irmão morreram. Todos a culparam pela morte deles, mas o que ela não sabia era que segredos estavam sendo escondidos dela. Ela se vê sendo rejeitada pelo seu primeiro par, apenas para descobrir que seu par de segunda chance é o notório alfa, Alarick da Matilha Lua Negra. Ninguém realmente o conhece, exceto pelo fato de que nunca se deve cruzá-lo. As histórias que ouviu sobre ele a fazem tremer de medo, mas ele realmente será tão ruim? Afinal, toda besta tem sua beleza que pode domá-la. Será que ela será a responsável por domar a fera dentro dele?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/5a70092f-0b74-4de6-a9ea-f1ef722a0d8f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2988a3c3-b493-4b6e-87f2-82c51dd39c02',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Chefe a Sua Estagiária é a Sua Esposa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b444ef0c-815b-4c80-9b99-a05d40c0cdc7_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d6e93205-3757-4311-ab9d-b27e7b89dbc9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amigas No Livro Fuga e Pânico',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b81e1766-de7e-420b-9b4c-353028bf5171_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/835453d3-f62c-476a-a1ed-1af92490e354',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Me Separei No Dia Do Parto',
    'Cassia Lima, herdeira de uma das maiores fortunas de Bernardo, esconde sua identidade para viver um amor com Bruno Silva, um homem simples. Grávida e prestes a dar à luz, enfrenta críticas de Lia Bares, amiga de Bruno, que a acusa de fingimento e vaidade. Influenciado, Bruno insiste em levá-la para um hospital menor, o que gera tensão entre o casal. No auge do conflito, José Lima, pai de Cassia, aparece com grandes empresários, revelando sua verdadeira posição. Tarde demais: Cassia perde o bebê e se divorcia. Desesperado, Bruno espalha uma mentira cruel, dizendo que Cassia e José causaram a morte da criança. A difamação toma conta da internet — até que José reage, denuncia o caso e vê Bruno e Lia serem condenados pela justiça.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/92907af7-6545-427f-9a33-d7b3e8493c2f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/28cf86ce-6f82-4a60-8093-54e322cfb044',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva de 90 Dias da Máfia',
    'Sinopse: Gigi, buscando vingança contra o CEO da seguradora que causou a morte de seu pai, oferece apenas US$ 10.000 ao chefe da máfia Vito para comprar sua vida. Divertindo - se com sua persistência, Vito propõe que ela se torne sua noiva por 90 dias. Embora a proteja, o carácter cínico de Vito o leva a recusar uma cirurgia de câncer que poderia salvá-la. Desanimada, Gigi acredita ser apenas um peão. Quando Gigi quase sofre um aborto espontâneo, Vito percebe seu amor e decide lutar pela vida para protegê-la e ao filho.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d0be47bf-5e73-4bc7-a0c5-618096aba870_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dfc6086f-fec6-4882-8bee-d26ec255a631',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A FILHA DO INFERNO CHEGOU',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/7327b52b-0865-4fae-84a7-19cfb0431cce_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/e674d84c-5ff8-4558-97df-154ccd9f7fe1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento Relâmpago',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/15e32aff-0991-4962-9111-38fb0a3ba2c1_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/65ff284f-509f-4c1d-9c73-7201ff1cb1f4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casando Com O Herdeiro E Seu Bebê',
    'O CEO falsamente acusado teve relações com a mulher, mas a pessoa que o incriminou arrumou um homem canalha para mentir, dizendo que foi ele quem teve relações com a mulher, a fim de escapar da culpa. Depois que a mulher deu à luz quadrigêmeos, foi-lhe dito que apenas uma criança sobreviveu. Muitos anos depois, o homem canalha recebeu uma promoção e ficou com a casa da mulher, expulsando-a de lá. Nesse momento, a mulher e o CEO se reencontram...',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/061ec3b9-8742-4ca8-b857-447622ae0a29_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/ebd2602f-383f-4737-b1d6-95f7b8ac4ec6',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DO DEMITIDO AO TEMIDO JAMAIS AO SEU ALCANCE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a5a29e10-83a7-4c53-8eac-5d5583d26968_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/931bd796-b5c2-4df2-b8d7-73589dcb3c64',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'FLECHAÇO ENTRE LUZ E ESCURIDÃO',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/71e6a52e-ff45-4cbd-ae5a-7dcd9e568155_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1c0c5e3d-db77-4dad-8c47-df0e663f6e1f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DO TRAMBOLHO AO TRIUNFO O DEVANEADOR POBRE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/79790f24-4f21-415c-bf9b-93202ff3e6df_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/feeda94b-e32b-41ce-b20f-4cc6ab656ea9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Servente Supremo',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e9dbeef7-98aa-420b-a419-520b7edd764d_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/e33fa5d8-8bc0-42ff-b52f-e65f9bada056',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DOIS PEQUENOS ALIADOS UMA MÃE IMBATÍVEL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/fcbfcb3f-ea20-4c53-820e-cc2219433689_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b3cd975d-8782-4dcf-916a-15306f535d6e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Divino Do Olho Celestial',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2676c1c0-3a77-41c4-8e6f-7613374a2586_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0c57d68b-e802-4b9c-bea5-cec99cc91a00',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DE MADRASTA A MÃE DE VERDADE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6be5f580-6079-4b85-9d55-942971d0bfbf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/1fb81136-d3c2-47ba-8350-40c497a4d8ab',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Magnata Secreto, Amor Revelado',
    'Ruan Zhi se arrepende de ter passado uma noite com Rong Junheng e vive atormentada pela culpa — até descobrir que seu namorado a traía com sua melhor amiga o tempo todo. Tomada pela raiva, ela se casa com Rong Junheng, sem imaginar a chocante verdade sobre ele…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f058b6f9-7e6d-4dd1-a393-d23cc361941c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/b33f5ded-477e-4aa2-aaa7-f0bb67fee1ca',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esposa Secreta Do Bilionário',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0f4acc17-ea21-49be-9256-7cd98876e404_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/ee54af7b-5308-4f13-be9a-f1fb027e220d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Dote Que Desfez O Amor',
    'Sinopse: Após ser enganada pela própria família, Nora Wood engravida de Tyler Holt, e o filho deles é chamado Bryan. Infelizmente, quando Bryan completa cinco anos, é diagnosticado com leucemia. Para cobrir as despesas médicas, Nora decide vender o pingente de jade da família que Tyler lhe deu, desencadeando uma busca por Bryan pela família Holt em toda a cidade. Enquanto isso, Nora se junta ao Holt Group como secretária de Tyler. À medida que trabalham juntos, seus sentimentos um pelo outro crescem, e o relacionamento deles floresce com o tempo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/313643ed-401b-4e4d-b17b-919571f320c7_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7bf50b01-7f67-4a98-9024-e579f5bd55c1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dominada Pelo Chefe Do Meu Pai',
    'Jayne Turner pede a um estranho, durante uma festa BDSM, que a ensine a ser dominadora. O que ela nem imagina é que esse homem vai ser o supervisor da saída de seu pai da empresa familiar. O que era para ser apenas uma noite de aprendizado sobre dominação e submissão se transforma em algo mais quando Jayne pede que Dom continue a ensiná-la. Devido a uma cláusula moral em seu contrato, se alguém descobrir o envolvimento entre os dois, Dom pode perder o emprego, mas, ainda assim, ele aceita. Eles decidem manter a relação como algo estritamente educativo e totalmente secreto. Só que, conforme a paixão cresce, o risco de serem descobertos também aumenta. O sucesso de Jayne no set de filmagens se deve muito às "instruções" de Dom, mas ela começa a receber mensagens ameaçadoras que a ligam à sua mãe… ‎Ler mais',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e4d2d505-89fb-4e32-a338-be53f4e52d08_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/06333c85-9121-463c-a736-16fc721628e4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Professor Isso Tem Que Ficar Entre Nós',
    'Sinopse: Ellie está vivendo uma vida dupla: estudante de dia e stripper mascarada à noite. Quando o charmoso Jackson Steele entra no clube, Ellie escolhe ele como o seu novo cliente favorito. Porém, quando Ellie se apercebe que Jackson é seu professor da faculdade, ela entende que precisa lutar contra a atração crescente entre ambos. Será que Ellie vai conseguir manter a sua vida dupla? Ela vai conseguir resistir ao seu professor que a observa dançar todas as noites?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ed8f4c27-d528-431d-b81b-1c5baadf4751_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e2b4dccc-d4e5-4938-a083-2d703863525b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Minha Filha Me Chama de Tia(Sou Uma Filha Invisível)',
    'Sílvia Tavares se casa em segredo com Ricardo Santos, seu admirador. Mas durante o casamento, ela trata o marido e a filha com frieza e indiferença. Quando João Costa retorna ao país com sua filha, Sílvia se dedica a agradar a menina para compensar arrependimentos passados, negligenciando sua própria filha, Ana Santos. De coração partido, Ana vai embora com seu pai. Só após ser traída por João Costa, Sílvia finalmente percebe seu erro, mas já é tarde para salvar sua família. Doze anos depois, ela não é mais do que uma estranha para a adulta Ana. No final, Sílvia Tavares passa seus dias sozinha.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ed29f5eb-ba41-43db-831c-b030923e7a3c_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/78810129-e553-4556-b8ec-3ee4589b9226',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Manual Da Ex Senhora Perfeita',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/96803c3b-0230-4dc7-a8f1-7dec5f8de34d_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/4aaebef8-c61e-4e3d-b67a-a2714366664d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Esperei Duas Vidas Pelo Amanhecer',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0866c6d4-c3d7-471f-94e2-b160892a8773_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/84edcf23-7f3e-43f5-a614-0bb50acda12b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Titânico Após O Renascimento',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/f245c704-e82f-4378-8801-642d1d6c78a3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4703f09b-1118-4c31-b177-a87dca7647e3',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Açougueiro O Senhora Das Artes Marciais',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e774af8b-daa6-48fb-ab65-285955ce6b2b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d1210fcd-5e0b-4efb-b71d-3f49a796a839',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Dispensaste Um Gênio Tecnológico',
    'Sinopse: Depois de ser demitido pelo filho do CEO, William, o maior gênio da tecnologia de Silicon Valley, Erik decide se juntar a Evelyn, a deslumbrante CEO da maior rival de sua antiga empresa. O resultado? Eles levam a antiga empresa à falência, e, quando William percebe que demitiu o cara errado, já foi tarde demais…',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/cf6228a6-5b05-4b89-baa1-6e5f59d06206_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/6368152b-8fe7-4c3f-8b4f-99b8307b362f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Do Trauma Ao Amor Sob o Mesmo Teto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c4f7f608-31d5-43f2-9209-4034a2a155eb_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b586f0d4-e885-45e1-9dea-f4de172998a1',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança Da Herdeira Descartada',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/b0cdf015-8938-45cd-91e9-c122cfde352b_pt.jpeg',
    'https://iframe.mediadelivery.net/play/407552/9c903467-c898-4a3e-a8a4-35f635b9423f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Marido Em Casa? Melhor Supremo Imortal',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/511cef3d-418e-4b5e-8834-1519336e7879_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/c330f075-091d-4dd8-bf15-e5f8e03adaee',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DE BILIONÁRIO A PAI EM TEMPO INTEGRAL',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/52b2e5ce-bfd3-426e-867f-1ddc87621d3a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2e4f9297-376c-4be6-acc5-3f3cd74c343d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Te Amo Sem Razão',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/44e4b1d9-6848-4b8d-ac35-4743a7e46817_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/5731fec5-f496-4446-879f-3ae6f7d0fe2d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Amor Entre Segredos',
    'Pai infiel, mãe falecida e a madrasta trazendo o filho bastardo para dentro de casa. A partir daí, Juliana Carvalho passou a viver um verdadeiro inferno! Para que o filho pudesse estudar no exterior, a madrasta tentou convencer Juliana a largar a faculdade e se casar, usando o dote para pagar os estudos do meio-irmão. Mas, determinada a não desistir de sua vida, Juliana trabalhou em vários empregos temporários, até que um dia, ao salvar uma senhora idosa, ela acabou se casando com o neto da mulher. O que ela não esperava era que seu marido fosse o presidente de um grande grupo empresarial... Só que esse presidente fingia ser um trabalhador comum! Já que é assim, Juliana decidiu entrar no jogo e seguir o teatro dele... E assim começou uma comédia cheia de situações inesperadas!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/95501516-7e20-4ff8-9e18-461f7cb7ddd1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/485d61e9-f5fa-4b3f-828c-12dfa4bde087',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DE NINGUÉM A QUERIDINHA DELE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/372e82d9-4e0f-47e5-b099-82e1cfb87571_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2a66d21d-e52a-424c-a418-d32e484959eb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O FADO DA MINHA IRMÃ QUE ME PERTENCE',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9366451b-e2e5-4549-ae49-7982294d93ae_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/2037b8d0-39a6-4b28-bdda-fa6728607a1d',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Surpreendente Ela é Da Alta Sociedade',
    'Miguel Castro foi enganado por Sofia Correia, que o fez acreditar que o filho que ela espera é dele. Por isso, decide se casar com ela, mas no dia do casamento é humilhado publicamente. Na verdade, Sofia é amante de Murilo Barbosa, um jovem bilionário que usa o casamento para destruir Miguel. No entanto, Miguel é o herdeiro perdido do Grupo Celeste, procurado por sua irmã, Alexa Castro, que o encontra no dia do casamento e decide lhe dar uma cerimônia digna.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bd5f184c-f66e-4306-b8d1-2270387c2402_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/39bc1478-bb59-4a67-84db-f16b0ce7a053',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Noiva Virgem Do Alfa',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/bb95a7e1-7a92-4865-af90-2db442056454_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/a840872d-721e-4662-9274-f99e7bddd64c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Jovem Elite',
    'Na renomada escola Jovem Elite, onde o dinheiro dita as regras e o poder está nas mãos da elite, Hannah é a garota invisível, vivendo à margem de um mundo que a rejeita. Alex, o garoto mais influente da escola, parece ser o inimigo perfeito — arrogante, privilegiado e inatingível. No entanto, quando o destino os força a cruzar caminhos, segredos são revelados, barreiras começam a cair, e ambos descobrem que o verdadeiro valor das pessoas vai muito além do saldo bancário. Em um ambiente onde tudo é comprado, será que o coração consegue resistir a suas próprias escolhas?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/76694505-e5eb-44cc-b5b3-28d8e38ced26_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/026c5275-809c-42d3-a2d0-fa6d30ed6829',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'ESPOSA INESPERADA BELA ADORMECIDA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/37e1b2c4-2bd5-4fd5-bf01-00b73d7b27ee_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/955e5859-e586-4a16-a09b-a5e4d3af3393',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Apaixonada Pelo Melhor Amigo Do Meu Irmão',
    'Sinopse: Kaitlyn Sinclair começa a faculdade achando que vai viver um sonho ao lado do namorado do ensino médio — até pegá-lo a traindo logo nos primeiros dias. Sem ter pra onde ir, ela se muda para o apartamento do irmão, que está fazendo intercâmbio no exterior. Só que ela não contava em dividir o espaço com Cole, o melhor amigo dele… e sua antiga paixão de infância. A convivência diária reacende sentimentos que ela jurava ter superado, mas tudo se complica quando ela descobre que Cole também é seu novo professor assistente. Entre aulas, provocações e beijos roubados, eles tentam viver esse romance proibido às escondidas — enquanto enfrentam Amber (a ex surtada de Cole), colegas invejosas e a culpa de esconder tudo do irmão.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/209b51b0-6280-4f85-8a5d-15283d33a378_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/57320614-505e-495e-ba49-28fa39539cf8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Contrato Doce Com O Chefão Da Máfia',
    'Sinopse: Ao salvar Victor, um perigoso e sedutor chefe da máfia, a enfermeira Tessa se torna alvo da obsessão dele. Ela tenta escapar, mas o destino a encurrala: seu irmão está à beira da morte e as dívidas médicas são insuportáveis. Victor propõe: “Seja minha mulher, e eu o salvo.” Forçada a assinar um contrato de casamento, Tessa resiste ao seu mundo sombrio, mas acaba rendida à sua proteção. Quando descobre que ele é o homem misterioso que a salvou anos atrás, ódio e amor se confundem.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/30251950-6ecf-4c6e-b06b-5e1a1166cd9a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/31b6300b-a8a2-4539-bdea-845146ec194c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Vingança Da Reencarnada, Troquei De Noivo',
    'Sinopse: Quando seus pais dão a opção de Gabi Fevale escolher com quem quer se casar, ela escolhe Lucas porque o ama, mas Lucas Oliveira tem em seu coração Isabela Rodrigues. No dia do casamento deles, Bela tenta supostamente se matar porque bebeu demais e perdeu sua pureza. Lucas a salva promete se vingar e se casar com Gabi para roubar seus patrimônios e a deixar doente. Eles sabotam o carro causando a morte dela e de seus pais. Felipe chora ao ver sua amada morta. Entretanto Gaby renasce e muda seu destino, escolhendo Felipe Almeida como seu noivo e Lucas Oliveira se arrepende amargamente.',
    'https://acf.goodshort.com/videobook/202508/cover-vFU1mMZqTa.jpg?w=293',
    'https://iframe.mediadelivery.net/play/407552/1f48c259-0374-44f0-987e-74b9b3315e11',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'DESTINO ENTRE NÓS',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ec28c627-513c-463f-bfef-f81271ed056a_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/557a31e8-629d-46d0-94da-913518942b81',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Helena Transmingou Para Um Romance',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d0d1fd43-bb41-43c0-ad1f-f55657eff37d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/fd9b0cc0-3f7d-4481-9318-a8c19982a4f8',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Atração Fatal Romance Da Máfia',
    'Para vingar a sua mãe, Daisy se disfarça de dançarina com o objetivo de se aproximar de Hogan, um chefão da máfia bem perigoso. Mesmo suspeitando das intenções de Daisy, Hogan se sente irresistivelmente atraído pelo seu charme mortal. Será que Daisy vai conseguir escapar ilesa, ou vai se perder de amores por Hogan?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d71dcb8a-805c-4a8d-ba59-e544f2bcef74_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e9dfce1f-f464-4573-be47-b5594e7787a4',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não Chore Eu Me Casei Com Alguem Melhor',
    'Scarlett Winters fica arrasada quando seu noivo, Carlton Simmons, a abandona no altar. Humilhada, ela foge e quase é atropelada por um carro. O incidente foi orquestrado por Leo Forester, gênio e lendário CEO. Ele reconheceu a noiva em fuga. Leo lhe oferece uma solução incomum: um contrato de casamento para ajudá-la a recuperar sua dignidade e reconstruir sua vida. Enquanto Scarlett se recupera, Leo a ajuda secretamente, ocultando sua verdadeira identidade e suas intenções. Mas quando velhos inimigos ressurgem e segredos enterrados vêm à tona, Scarlett se sente traída e pensa em ir embora. Agora Leo precisa decidir se vai confessar seus sentimentos ou arriscar perdê-la para sempre.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/023b1e2d-4abe-4410-8d83-d75f91dade50_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/80d52870-7d77-4e41-b39c-9a970c3197e7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Untitled',
    '',
    '',
    'https://iframe.mediadelivery.net/play/407552/6844a845-e064-4aa1-a978-b830d2646db7',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Paixão Inesperada Do destino',
    'Era filha do homem mais rico do país, mas apaixonou-se inesperadamente por um jovem pobre. Disfarçando-se de zeladora, esteve ao lado dele durante três anos, ajudando-o a tornar-se um novo-rico em Los Angeles. No entanto, casou com outra pessoa no dia do casamento, fazendo troça do seu estatuto inferior. De coração partido, casou com o motorista da Uber que a trouxe à igreja, para descobrir mais tarde que ele era bilionário. Juntos, uniram forças e esmagaram aqueles que antes os desprezavam.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c4b4b6f2-e7d9-46bf-b5ea-284292baa5c4_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4f96ee0f-0d3b-48fa-925e-264dc98e52dd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Obcecado Por Sua Noiva Silenciosa',
    'Sinopse:  Acolhida pela família Calvert, Eva sempre amou Declan Calvert, o garoto que cresceu como seu protetor. Sem conseguir falar desde o nascimento, ela luta para expressar seus sentimentos em um casamento construído pelo dever — Declan se casou com ela apenas para honrar o último desejo de seu avô. Presa em uma união tóxica, Eva aguenta a crueldade de Declan e os planos implacáveis ​​de sua amante, Selene, para expulsar ela. Apesar de tudo, Eva se apega à esperança de que Declan possa redescobrir o amor que um dia compartilharam quando crianças. Condenada ao silêncio, Eva precisa decidir: lutar pelo coração dele ou se libertar antes que seja tarde demais.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e51bc902-c15c-434c-b9eb-94e52bdbf3d3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/7bf065fe-168f-428f-8e18-a5472140d072',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Drift Tio Mecânico',
    'Ex-campeão Vicente Duarte vive como humilde mecânico na Vila Lopes. Quando a Equipe Veloz ameaça tomar a estrada da vila, o herói escondido ressurge! Numa corrida emocionante, Vicente prova que verdadeiros campeões nunca perdem sua essência - protegendo seu lar e inspirando todos com sua redenção.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e59596a6-0173-4ff9-b855-72d48a005f54_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f3efa830-3fe9-4a5e-80ff-9784c5591cda',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Lenda Do Senhor Guerreiro',
    'Douglas nasceu em Mastago, uma sociedade dominada pelas mulheres, onde frequentemente sofria provocações e humilhações de gangues femininas. A sociedade não permitia que os homens treinassem artes marciais, mas Douglas secretamente praticava contra a vontade de sua mãe. Determinado a realizar seus sonhos e ambições, ele participou do Torneio de Deus Marcial, onde, aos poucos, se aproximou do mistério de sua verdadeira origem na Arena Deus Marcial.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/27c34b68-d5d8-4011-90c9-d8eaab2a4345_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/dd1d0c35-ba84-4956-aa67-488963fbbc1b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casada com o Rei Lycan Secreto',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/50d81f23-0f8d-43de-9a00-902576b50429_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/8545a25e-8f3d-4de1-9c2f-9f9b0c1e598a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Grávida Do Herdeiro Do Império De Luxo',
    'Sinopse: Sofia, vendedora, tem uma noite com o CEO Bryan e engravida. Sofre abusos no trabalho e em casa, até que Bryan a ajuda a superar tudo. Encantado por sua força, ele se apaixona e propõe casamento. Juntos, iniciam uma vida feliz.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/9f8eec2f-dec0-42ee-8e6e-4d51a50c9a2a_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4c80e443-6ecf-4795-8fa9-ec4723bb7b17',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Última Batida Por Amor',
    'O CEO do Grupo Martins, Lucas Martins, procurou por toda parte do país, mas não encontrou a mulher com a marca de nascença de uma flor de pêssego na cintura. A mulher com esta marca é o único corpo de puro yin. Lucas, nascido com um corpo de puro yang, deve se unir a um corpo de puro yin para neutralizar completamente o veneno de yang em seu corpo, caso contrário, sua vida estará em perigo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8f1f5a49-0783-4fd8-85fc-7f082b7fcc8b_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/f272c27a-1e2a-4afa-bee1-cf7550a1514b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Vingança da Esposa CEO',
    'Sinopse: Flora Gomes e Diego Costa estiveram apaixonados por 7 anos. Nos bastidores, ela ajudou a empresa de Diego se alistar na bolsa como fundadora do Grupo DK. No dia do casamento, grávida, Flora planejava revelar sua verdadeira identidade e a Diego, mas não esperava que ele, para agradar seu amor real, Luna Cabral, humilhasse Flora publicamente, até permitindo que a lona usasse um vestido de noiva. Flora havia suportado em silêncio por diversas vezes, mas descobriu que Diego tinha um caso com Luna, e acreditou ainda mais na mentira aquilo na disse que era fundadora do Grupo DK.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/46d25394-4346-462c-819c-7fe96b3e59e9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8ce3a51d-efe0-426c-bb1b-ae6c92d5241a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Após Aquela Noite',
    'Marina Andrada jamais imaginou que, ao se deparar com Arthur Albuquerque, o imponente presidente do Grupo Albuquerque, em um estado vulnerável, teria sua vida virada do avesso. Para salvar ele de uma situação extrema, ela se entrega a ele e acaba engravidando. Mas o que recebe em troca é crueldade: tem a perna quebrada e é abandonada. Oito meses depois, Marina dá à luz um menino prematuro. Sozinha, ela precisa lutar com unhas e dentes para pagar o tratamento do filho, trabalhando incansavelmente. Enquanto isso, Arthur Albuquerque a procura sem descanso, determinado a oferecer a ela todo o amor e carinho que ela merece.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/2901f9d4-6758-417b-a31e-29497262c477_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/01e8ff3d-2bf1-4bfc-b4da-849a2079e2cb',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Ex Vilã Grávida Dá A Volta Por Cima',
    'A universitária moderna Maria Lima transmigrou para um livro, tornando-se a ex-mulher má do protagonista Miguel Silva, grávida de seu filho. Em vez de se divorciar e abortar como a personagem original, ela usou gentileza para abalar Miguel. Enfrentando a amiga de infância Laura Santos, que cobiçava Miguel, Maria voluntariou-se para ir ao campo. Usando seu "sistema de loja de departamentos" misterioso, ela melhorou a vida da família, tornando-se a querida por todos da família Silva. Laura tentou envenená-la várias vezes, mas falhou e foi presa. Maria liderou os aldeões na prosperidade, ganhou reconhecimento oficial e voltou antecipadamente à capital com Miguel, vivendo feliz para sempre.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c858ef02-9f9d-43a5-aa60-26c66f6ba376_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e1d7801b-0797-41c5-923b-82c3134550cf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Após Minha Morte Ele Desmoronou',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/c8ed999a-cc13-48e5-af1d-1be572b12530_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/7da24d53-f5a0-4c08-a8b5-929c5c13606a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'LIGADA A HONRA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d3869e72-bcbf-4a0b-990e-6f05cbde6946_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/298a4098-791c-4a56-a0d0-380da38b720e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Depois do Término Casei Com o Chefão Da Máfia',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e459f3d8-5551-41eb-8ee4-2a20a1aa68c3_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/06018a93-7cf2-4e8c-af3c-cbc6bd0a106a',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Três Erros e Meu Pai Tá Fora',
    'Ela era a herdeira dos Kingsley que abriu mão de sua coroa por amor. Karina se apaixonou por seu chefe, William, e depois de uma noite imprudente acabou grávida com o filho dele. Ele se casou com ela, mas apenas em segredo, enquanto seu coração ainda pertencia a Fiona, a mulher que jamais conseguiu esquecer. Anos depois, Fiona voltou com um filho, e William fez a escolha mais cruel: acolher outra criança enquanto abandonava a sua própria. Com o coração partido, Karina se agarrou ao pedido de seu filho Galen: “Dê a ele mais três chances.” Mas a cada chance desperdiçada por William… Karina se aproxima cada vez mais de ir embora para sempre.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/159e7965-0493-4bae-a10b-5fc60ffd35d9_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/589621fa-81b1-44ca-8dbd-9cb24f49bae9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Disparo Do Destino',
    'Ela é uma agente de elite da Interpol. Ele, um assassino de aluguel com um passado sombrio. Quando seus mundos colidem durante uma missão internacional, um único disparo muda o rumo de suas vidas — e desperta uma conexão tão perigosa quanto irresistível. Agora, entre explosões, traições e olhares intensos, os dois precisarão decidir: confiar um no outro… ou puxar o gatilho. No jogo entre amor e morte, o coração é sempre o alvo.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/34c210e4-9365-4d33-8269-b7cf477fc4e8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8c2d7681-4759-4dfe-983d-403cd31f6a6c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Flecha Cega',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0e8e1d27-595e-4795-b581-9c1af424717d_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/b2ebb23b-a121-48a1-9901-4c3a0d4e32bc',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Marido Frio, O Amor Ardente',
    'Sinopse: A famosa dançarina Alice sofre um acidente e acorda nos anos 80, no corpo de uma mulher grávida rejeitada por todos. A antiga dona do corpo usou métodos vergonhosos para se casar com o reservado comandante Lucas. Após a chegada da Alice, ela conquista o respeito da família do marido com seu esforço e sinceridade. Ganha o carinho das cunhadas com receitas modernas e encanta os vizinhos com histórias da série ""O Palácio da Concubina"". Sua dança impressiona a sogra e, com astúcia, ela desmascarou a armação de Camila com inteligência. Com o tempo, a Lucas se apaixona por ela. Fora de casa, é um oficial frio e disciplinado; em casa, torna-se um marido gentil e dedicado. Quando a Alice percebe, já está completamente envolvida por esse homem, sem chance de escapar.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0a2d3614-f6ea-4c50-b7a3-4b5390fb511e_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/391c3d6f-e0a3-42ec-8f65-c38b13271f92',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Herdeira Bilionária Divorciada',
    'Isabella Moore, interpretada por Mariah Moss, está comemorando seu terceiro aniversário de casamento com Carson. Porém, o que deveria ser um momento de celebração se transforma em pesadelo quando o marido pede o divórcio. Ele ainda revela que irá se casar com sua amante naquele mesmo dia. A partir disso, Isabella precisa decidir o que fazer em relação a sua possível solteirice.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8e7b6cc7-d268-4568-bdfa-599bed086d20_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/a1e72ce1-00d9-47f2-a2b7-1e973fa411b5',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Um Encontro Às Cegas Com Meu Destino',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db132b9d-c535-48c2-9fa9-cf7ff91b9946_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/2c1215a2-1b57-4534-9dec-e99d0b479702',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Petiscar o Amor Arriscado',
    'Sinopse: A reviravolta familiar e o grave adoecer de seu irmão mergulha Liliane Nunes em apuros financeiros. Em um trabalho eventual, ela reencontra Augusto Castro, seu crush há oito anos, e vende a virgindade para ele. Ela pensa que jamais terá conexão com Augusto, o playboy da alta sociedade de São José, mas ele fica viciada nela, e salva ela constantemente de crimes inesperados',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/727e9fbc-d493-462d-a047-903e8d6a8929_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/c8077111-11c4-4540-bff8-e6fe24864a5f',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'Amor Nas Areias Selvagens',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/a2bbe90e-54b3-4de4-aaf7-e0eb00463418_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/6a28c404-1782-4d35-beed-02cbd985bf42',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno Da Fênix',
    'Sinopse: Durante a cerimônia de escolha do noivo, duas irmãs lançam suas esperanças ao vento com um bordado esférico. A bola da irmã mais velha cai nas mãos de um nobre; a da irmã mais nova, nas mãos de um mendigo. Uma ascende à glória. A outra morre em arrependimento—até que o tempo volte atrás. Dada uma segunda chance, a irmã mais nova reescreve esse momento. Mas e se o mendigo guardar um segredo e o destino tiver seus próprios planos?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d1496bfe-0f8d-4367-8712-af39be8fc5f8_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/83fa638a-0c93-48de-a362-f7063025a7fd',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Campeão De Box Renascido',
    'Cinco anos atrás, João Rodriguez foi coroado o 10º campeão do Campeonato Nacional de Artes Marciais, mas foi incriminado por Miguel Santos, proprietário do Clube Imortal, e foi desqualificado e banido por cinco anos. Cinco anos depois, João, sob o nome de Jorge, ajuda sua esposa, Isabel Garcia, a chegar ao topo, mas acaba se divorciando. Com a ajuda de uma rica Camila Costa, Jorge decide voltar aos ringues para recuperar o que é seu por direito e acaba frustrando a trama da família Santos para defender seu título, transformando-o em uma lenda das lutas para as próximas gerações!',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1aca11f2-718a-447f-a12e-32be80e608cf_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/384d8af5-1ac0-4a26-8f88-b16e5555969b',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Não é a Gaiola Dela',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/0f93e2a1-61eb-4818-8756-901a495bbb1b_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/d68facd4-cab6-4677-8d50-0f1f9e0666b9',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O Retorno da Herdeira',
    'Após anos desaparecida, Isadora Monteiro, herdeira de um império bilionário, retorna inesperadamente à cidade, agora sob o controle de seus inimigos. Marcada por um passado traumático e determinada a reconquistar o que é seu por direito, Isadora precisa enfrentar traições, segredos de família e um amor que nunca esqueceu. Em um mundo onde dinheiro e poder mandam, será que a verdade conseguirá vencer?',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1854d00e-45c1-45bd-9dbf-2d955fb51b3f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/569b98a3-8912-49f6-b12f-477ff8c4b480',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'As Doces Bênçãos Do Amor:',
    'Seis anos atrás, drogado por um concorrente o CEO entrou por engano em quarto aonde uma mulher também estava drogada e fez sexo com ela. Sobre o efeito das drogas eles não conseguiam se ver por clareza. Quando ele saiu pegou metade de um pingente de jade da mulher. A mulher engravidou e deu a luz a uma menina ela administrava uma pequena barraca de macarrão na beira da estrada para sustentar a família de seu noivo canalha. Um dia o CEO passou e ficou surpreso ao ver a menina que tinha uma semelhança impressionante com ele. Mais tarde um teste de paternidade confirmou que ele era o pai, então ele embarcou em sua jornada de perseguir o amor',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/65977f74-bc5a-4ddb-b1b1-80bb553f5a33_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/4ebffbf1-705f-4528-8447-6b1cc2358a7e',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Alérgico Ao Amor',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/d1225336-15bc-4e80-aa8d-c0b951a51812_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/aeabb52d-1685-46f3-808b-f133a0bb8363',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Quando O Coração Reacende',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/91a48c0a-6200-4592-a6e4-b5d736a44acf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/628c92be-7d27-4fa2-bfa4-09369f1b8f15',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Corrida Para O Meu Coração',
    'Sinopse: Ele é meu meio-irmão — Enzo Hawthorne, a estrela em ascensão da F1, o melhor piloto do mundo e herdeiro de uma fortuna. Eu sou Sierra Fernando, filha de um mecânico criada em uma oficina de reparos suja — alguém que nunca deveria ter pertencido ao seu mundo de velocidade, patrocinadores e lençóis de seda. Nunca fomos feitos para colidir, mas no dia em que nossos pais ficaram noivos, ele acelerou para dentro da minha vida. Sob seus troféus, existe uma ferida. Por trás da minha rebeldia, começo a revelar minhas inseguranças… e a me importar com ele. Enquanto ele treina para Abu Dhabi, inimigos se aproximam — e nós também... Quando nosso amor ultrapassa os limites, não há volta',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/8eb4be50-0906-4ecc-ab6a-b4017fb8c768_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/d38a4410-09a3-4554-aa0b-09b54e5e6337',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'O PRÍNCIPE DA LUNA REJEITADA',
    '',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6c84d8b2-b5e5-4e4c-acbe-2de230fcb6db_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/71d4841a-2fda-4d96-9ef9-a0da0cc69346',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'Casamento às Pressas: O Amor de André e Bianca',
    '5 anos atrás, a Bianca Souza salvou por acaso o presidente do Grupo Lima, André Lima, e acabou ficando grávida após uma noite. 6 anos depois, quando a Bianca estava sendo pressionada pela família para casar, ela se reencontra com o André, que a procurava desesperadamente. Após um erro do destino, a Bianca se casa com o André. Ele a trata com extrema dedicação, ajudando-a secretamente a enfrentar a sua ingrata amiga, a mãe que a traiu por interesses próprios, e o candidato a casamento que a pressionava incansavelmente.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/32dd287a-e3ff-4252-b43c-891edfdfc0f3_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/e9b10edb-4d71-4d67-ab66-b027f1c8bcaf',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
),
(
    'A Sinfonia Bem Orquestrada Com Meu Patrão/Melodia do Verão Amoroso',
    'Após uma noite de paixão entre Janete Cruz e Marcos Mendes, sua irmã, Liliane Cruz, assume a identidade dela. Seis anos depois, Janete se torna a consultora jurídica de Marcos, e os dois começam a desenvolver sentimentos um pelo outro. Temendo perder seu lugar, Liliane tenta sabotar Janete várias vezes, mas todas as tentativas são frustradas por Marcos. No final, a verdade vem à tona, e Janete, Marcos e sua filha finalmente se reúnem como uma família.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/896d733c-e4aa-4601-8a6c-b07481d76410_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/76f0ac70-3174-441f-958c-3afd07198b7c',
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    true
)
ON CONFLICT (title) DO NOTHING;