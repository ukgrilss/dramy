-- PART 5 OF 5
-- ==============================================
-- DRAMIO IMPORT SQL - Generated at 2026-01-25 19:13:30.065061
-- ==============================================
ALTER TABLE filmes ADD COLUMN IF NOT EXISTS descricao TEXT;


BEGIN;

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '140cb505-3555-40da-bf7d-549e72b1183e', 'Até Nos Encontrarmos Novamente', NULL, 'Sinopse: Kelly estava grávida quando seu namorado Seb a pediu em casamento, mas depois testemunhou o assassinato da irmã de Seb, Elizabeth, por um intruso. Seb ficou gravemente ferido ao tentar proteger Kelly. A mãe dos irmãos colocou a culpa em Kelly e mentiu para ela, dizendo que Seb nunca mais queria vê-la. Em luto, Kelly deu à luz uma filha em segredo. Anos depois, eles se encontraram novamente em um café.', 'https://vz-c2303ad7-0af.b-cdn.net/c95037fb-2d94-4fcb-913f-d69bd98479af/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-28T02:17:04.31645+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Até Nos Encontrarmos Novamente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b13bf519-8369-4fa1-962e-f43d7d024e0e', 'A Coroa Além do Túmulo', NULL, 'Sinopse: Ex-supermodelo que já foi um fenômeno, agora reduzida a vítima de traição e conspiração. Porém, em seu próprio funeral, ela surge de forma deslumbrante — o que parecia o fim de seu destino revela-se, na verdade, o ponto de partida de um renascimento...', 'https://vz-c2303ad7-0af.b-cdn.net/72cf9af7-13d3-4f90-ba93-e66aa8d48de7/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'']', '2025-07-28T02:15:52.985173+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Coroa Além do Túmulo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4b7f0e2e-14a6-4a73-ad33-0284952d7914', 'Vendida ao Chefe da Máfia Possessivo', NULL, 'Sinopse: Duas pessoas unidas por um acordo. Ela está presa sob o controle de um chefe da máfia, mas se recusa a perder seu espírito, determinada a colocá-lo atrás das grades. Será que ela vai conseguir ou será tentada a se juntar ao lado sombrio?', 'https://vz-c2303ad7-0af.b-cdn.net/76227ccb-5301-4878-ab1a-e6561088d097/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T02:13:53.207613+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vendida ao Chefe da Máfia Possessivo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '13883254-f897-4252-a3c9-166b38c35eb8', 'Adeus Meu Amor', NULL, 'Sinopse: Amigos de infância, Edward e Amelia são forçados a se casar no meio de uma disputa por herança familiar. Entre segredos, manipulações e promessas do passado, eles se unem contra seus inimigos para descobrir a verdade.', 'https://vz-c2303ad7-0af.b-cdn.net/01306a9d-7269-46b3-b1a5-b7b825ba23dd/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-28T02:11:02.091761+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Adeus Meu Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ffc64d01-af51-4ff6-97af-53afbcbb3d8f', 'Jovem Demais Para Querer Seu Professor', NULL, 'Jovem Demais para Querer Seu Professor conta a história de Mia Harper, uma jovem de 19 anos que acaba de entrar na faculdade após a morte repentina de sua mãe — uma famosa romancista erótica. Mia quer seguir os passos da mãe, mas não tem experiência no amor. É quando ela esbarra (literalmente) em seu novo professor, quente, frio e mandão: Nate Blackwell.Jovem Demais para Querer Seu Professor conta a história de Mia Harper, uma jovem de 19 anos que acaba de entrar na faculdade após a morte repentina de sua mãe — uma famosa romancista erótica. Mia quer seguir os passos da mãe, mas não tem experiência no amor. É quando ela esbarra (literalmente) em seu novo professor, quente, frio e mandão: Nate Blackwell.', 'https://vz-c2303ad7-0af.b-cdn.net/185e8c5a-53cb-4e75-a5e7-34d5908c3e1a/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-28T02:09:34.84408+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jovem Demais Para Querer Seu Professor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '406a8bec-e84e-4f01-8e19-e9cf1e0d9564', 'A Estrela Cansou de Esperar', NULL, 'Sinopse: No dia do seu aniversário, Ivana Costa é traída: seu marido casa com a ex, Ana Lima, e até seu filho prefere a nova madrasta. Cansada de sofrer, ela volta como Serena, uma famosa violinista, decidida a viver por si. Num torneio, ela desmascara Ana em público e chama atenção de Ivan Pereira, um homem que sempre a admirou. Juntos, eles enfrentam o passado e mostram que a verdadeira volta por cima é viver bem.', 'https://vz-c2303ad7-0af.b-cdn.net/b9d2f750-0824-49f9-a437-93f4e77a4e49/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''amor-primeira-vista'']', '2025-07-28T02:06:56.216599+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Estrela Cansou de Esperar'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dddd3865-300c-4431-9f81-2a7f9efa0ab2', 'Noiva de 90 Dias da Máfia', NULL, 'Sinopse: Gigi, buscando vingança contra o CEO da seguradora que causou a morte de seu pai, oferece apenas US$ 10.000 ao chefe da máfia Vito para comprar sua vida. Divertindo - se com sua persistência, Vito propõe que ela se torne sua noiva por 90 dias. Embora a proteja, o carácter cínico de Vito o leva a recusar uma cirurgia de câncer que poderia salvá-la. Desanimada, Gigi acredita ser apenas um peão. Quando Gigi quase sofre um aborto espontâneo, Vito percebe seu amor e decide lutar pela vida para protegê-la e ao filho.', 'https://vz-c2303ad7-0af.b-cdn.net/dfc6086f-fec6-4882-8bee-d26ec255a631/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''bebes-e-gravidezes'']', '2025-07-28T02:04:46.877952+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva de 90 Dias da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c0238661-a448-4e04-be86-3c01d828e8f6', 'Obesessão Agridoce', NULL, 'A coisa que Shen Qingli mais lamenta provavelmente é ter tido um caso de uma noite com o homem por quem se apaixonou secretamente por oito anos, e então deixá-lo pagar por isso. Desde então, Gu Heng se envolveu com ela à noite, tratando-a como uma estranha durante o dia. Quando ele estava prestes a arranjar um casamento, Shen Qingli pensou que poderiam se separar amigavelmente. Mas, em vez disso, ele a levou de volta para sua casa. Velhas mágoas e questões não resolvidas na família Gu levaram a um desenrolar dramático dos acontecimentos. Gu Heng, ferido, enviou Shen Qingli embora, mas continuou aparecendo para salvá-la do perigo. Shen Qingli pensava que era apenas um brinquedo, descartável. Mal sabia ela, porém, que ele já estava profundamente apaixonado por ela e viciado nela.', 'https://vz-c2303ad7-0af.b-cdn.net/4babe033-76d5-428f-b438-0de0bf111592/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-28T02:00:13.6846+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Obesessão Agridoce'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e230b369-1a66-425c-b4ba-386e2e54ce69', 'O Abismo Congelado do Amor', NULL, 'Sinopse: Outrora amargurada por traumas, familiares Wei Ran rejeitava a ideia do amor. Mas a perseguição ardente e inabalável de Xu Nuo derreteu seu coração. Casaram-se, acreditando num vínculo eterno. No entanto apenas três anos após o casamento o desejo de Xu Nuo por emoção ou levou atrair sua confiança. De coração partido, Wei Ran dedicou-se ao legado de sua mãe a criogenia transformando-se em sujeito de pesquisa e desaparecendo da sua vida Xu Nuo. Com o seu sumiço, Xu Nuo ficou em pânico percebendo a verdadeira profundidade de sua perda', 'https://vz-c2303ad7-0af.b-cdn.net/2b23f709-6c90-4094-9474-6e746e4d46ef/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-28T01:52:53.711975+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Abismo Congelado do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8da45b85-0a1f-4f1c-aa2c-c4579d164d61', 'Depois que Minha Filha Genial Cai', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/70bce4d2-7edb-43aa-8b6c-d6871094e952/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-07-27T20:28:38.873701+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Depois que Minha Filha Genial Cai'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '887ae40a-cb45-4ff3-951f-bee6ad668a26', 'Memória Perdida: A Vingança da CEO', NULL, 'Sinopse: Depois de sobreviver por pouco à tentativa de sua família de matá-la e enterrá-la, uma poderosa CEO perde a memória e fica com a mente de uma criança pequena. Vagando pelas ruas como uma pedinte, ela é acolhida por um CEO aparentemente frágil, mas influente. Os dois entram em um casamento relâmpago, enfrentando constante humilhação por parte da família dele. Um confronto intenso com a madrasta dele restaura inesperadamente suas memórias, mas ela decide manter sua verdadeira identidade em segredo...', 'https://vz-c2303ad7-0af.b-cdn.net/ba18f5cb-a98a-4d9e-82ac-f4e5bae5fa80/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'']', '2025-07-27T20:23:05.678883+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Memória Perdida: A Vingança da CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '07ed15b2-d7bc-4964-9854-39558000bd86', 'Amor Em Vão', NULL, 'Sinopse: Sofia, grávida, marca sessão fotográfica com Lucas, que a trai ao fotografar Isabela (seu amor platônico) e a filha Valentina. O estresse da traição causa aborto. Sofia se divorcia e entra na USP. Arrependido, Lucas descobre que Isabela manipulou tudo, mas Sofia já tem novo amor.', 'https://vz-c2303ad7-0af.b-cdn.net/3b87b1e7-2e50-437d-a822-5c5471c66175/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'']', '2025-07-27T20:19:42.172216+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Em Vão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3efeeb30-c630-4fae-a765-ff716f28d416', 'O Príncipe Encantado Está Aqui', NULL, 'Sinopse: No dia do casamento, Julia pega o noivo no flagra com outra! Sem pensar duas vezes, ela chama Grayson pra fingir ser seu novo noivo — sem saber que ele é um bilionário procurando pelo amor da vida dele… que é ela!', 'https://vz-c2303ad7-0af.b-cdn.net/7e21de24-3539-4591-a388-fc0226dfc368/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-27T20:12:31.520622+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Príncipe Encantado Está Aqui'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7bdac05a-33ba-479f-ab34-2123649afcd8', 'Sob a Luz Das Flores Caixa', NULL, 'Sinopse: O imperador reencontrou a filha do ministro após um breve romance. Ela entrou no palácio para ser selecionada como concubina, e ele apaixonou-se por ela à primeira vista', 'https://vz-c2303ad7-0af.b-cdn.net/d39616c4-489e-4ed1-98a0-1cda80839f59/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-27T20:11:09.806334+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sob a Luz Das Flores Caixa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'af771a1a-fc82-46d7-a8f1-96c6df38ef9d', 'Magnata Secreto, Amor Revelado', NULL, 'Ruan Zhi se arrepende de ter passado uma noite com Rong Junheng e vive atormentada pela culpa — até descobrir que seu namorado a traía com sua melhor amiga o tempo todo. Tomada pela raiva, ela se casa com Rong Junheng, sem imaginar a chocante verdade sobre ele…', 'https://vz-c2303ad7-0af.b-cdn.net/b33f5ded-477e-4aa2-aaa7-f0bb67fee1ca/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'', ''identidade-escondida'']', '2025-07-27T20:09:35.125499+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Magnata Secreto, Amor Revelado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '61740707-7110-467c-a8f1-deb293858c1b', 'A Verdade Sempre Vem Á Tona', NULL, 'Sinopse: A especialista em ginecologia, Milena, casada com o marido infiel, Rafael, por dez anos, sofre abusos de sua sogra, Fernanda, devido à infertilidade. O Rafael trai a Milena com a jovem amante, Elisa, que fica grávida, e a Milena descobre a verdade acidentalmente no hospital. Enfrentando a traição do marido, os desafios da amante e a opressão da sogra, a Milena passa da paciência para a conscientização. Usando a lei, a opinião pública e sua competência profissional, ela dá uma resposta imbatível e, finalmente, expõe as más intenções da família Carvalho, recupera sua propriedade e dignidade, e começa uma nova vida com o paparazzo André, que sempre a amou secretamente', 'https://vz-c2303ad7-0af.b-cdn.net/ee05061b-b3d3-4464-abea-400641f3b207/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-27T20:07:21.804906+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Verdade Sempre Vem Á Tona'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3625a173-fee7-4e00-8231-e90134887ba6', 'Casamento Acidental Com Meu CEO Pobre', NULL, 'Sinopse:
Lila precisa de dinheiro para salvar um orfanato, então ela se casa às pressas com William, pensando que ele é apenas um cara pobre. Mas depois de se apaixonar por ele, ela descobre que ele é na verdade o CEO mais rico da cidade... o problema é que ela odeia mentirosos mais do que qualquer outra pessoa.', 'https://vz-c2303ad7-0af.b-cdn.net/e6d9add1-0f3d-4155-adb3-332e2a5450d6/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-26T20:15:44.904814+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Acidental Com Meu CEO Pobre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8a7cc871-11fb-4685-af76-4271de805aeb', 'Como Conquistar Um Raposa Prateada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/2a0d9be4-24a3-44c9-b7b9-8c706fbc314a/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-26T20:07:32.403359+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Conquistar Um Raposa Prateada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7ee16b1f-b6ab-41dc-9652-db02171d20a6', 'Encontrei Um Marido Multimilionário Para O Natal', NULL, 'Sinopse:
Victoria estava pronta para voltar ao Texas com seu noivo Carl para planejar o casamento, mas foi terrivelmente humilhada e traída por ele. Para não se dar mal com sua família, Victoria relutantemente concorda em se casar com Simon, um sem-teto que ela estava ajudando. Mal sabia ela que Simon não é um sem-teto qualquer - ele é um bilionário bonito e charmoso, CEO do prestigioso Jones Group, classificado como o número um do país. Ao retornar ao Texas com Simon, Victoria inesperadamente cruza o caminho de seu arrogante ex, Carl. Dessa vez, ela está determinada a recuperar toda a dignidade que perdeu.', 'https://vz-c2303ad7-0af.b-cdn.net/27e811c9-7fa7-42b6-bd65-07031b393949/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-26T20:05:29.065526+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Encontrei Um Marido Multimilionário Para O Natal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c976094-8c4d-474d-a7dc-ca078acb3064', 'A Virgem e o Bilionário', NULL, 'Desesperada para salvar sua mãe doente, Cindy Parks faz um acordo com a filha de seu chefe, Nikki Jenkins. Lá, ela deve fingir ser Nikki e entregar sua virgindade ao bilionário Charles Kane. Nikki usa esse truque para induzir Charles a se casar com ela, mas, quando ela adoece, Cindy é mais uma vez forçada a fingir e a entrar em cena como uma noiva substituta.', 'https://vz-c2303ad7-0af.b-cdn.net/d5a52732-2f34-4388-a55b-f02d7d9a83ac/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-26T20:03:42.671557+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Virgem e o Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd18e7dce-d906-4142-b4ab-eaca03843c87', 'Substituta Errada para o Bilionário Implacável', NULL, 'Sinopse:
Lulu Bridge pegou seu marido Alex traindo-a justo quando ela estava prestes a contar a boa notícia de que estava grávida do filho dele após inseminação artificial. Então, ela descobriu a troca de sêmen que a fez carregar a criança de uma pessoa poderosa.', 'https://vz-c2303ad7-0af.b-cdn.net/1a2a7baa-52fb-4b0a-bccf-ea88a99ea166/playlist.m3u8', '[''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'', ''relacionamento-tabu'']', '2025-07-26T19:59:49.011732+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Substituta Errada para o Bilionário Implacável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '23b0f5fd-1ce1-4e23-9f83-3641b4b8b4c4', '30 Anos Congelada - 3 Irmãos Se Arrependem', NULL, 'Após sofrer abusos incessantes dos 3 irmãos, a irmã mais nova se voluntariou para um experimento de criopreservação humana. 30 anos se passaram em um piscar de olhos... e o remorso, enfim, chegou para eles.', 'https://vz-c2303ad7-0af.b-cdn.net/1c94dd2f-e89b-4bd5-a3d4-c367533ab1db/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-26T19:53:58.659922+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = '30 Anos Congelada - 3 Irmãos Se Arrependem'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '20f1d694-579f-4f5e-bc34-3032917eb1b9', 'Criando o Filho da Amante', NULL, 'SINOPSE: Meu marido e a amante dele perderam o meu bebê e ainda tentaram roubar tudo o que me pertence. Mas eles não sabem… eu já descobri cada joguinho sujo que estavam armando. E agora? Eles vão pagar.', 'https://vz-c2303ad7-0af.b-cdn.net/6097b3ee-acd4-4b5c-a69a-0350c14d057a/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-26T19:51:06.870026+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Criando o Filho da Amante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c150fa8a-a71a-4b56-825d-2418e507ce94', 'Apaixonada Pelo Melhor Amigo Do Meu Irmão', NULL, 'Sinopse:
Kaitlyn Sinclair começa a faculdade achando que vai viver um sonho ao lado do namorado do ensino médio — até pegá-lo a traindo logo nos primeiros dias. Sem ter pra onde ir, ela se muda para o apartamento do irmão, que está fazendo intercâmbio no exterior. Só que ela não contava em dividir o espaço com Cole, o melhor amigo dele… e sua antiga paixão de infância. A convivência diária reacende sentimentos que ela jurava ter superado, mas tudo se complica quando ela descobre que Cole também é seu novo professor assistente. Entre aulas, provocações e beijos roubados, eles tentam viver esse romance proibido às escondidas — enquanto enfrentam Amber (a ex surtada de Cole), colegas invejosas e a culpa de esconder tudo do irmão.', 'https://vz-c2303ad7-0af.b-cdn.net/57320614-505e-495e-ba49-28fa39539cf8/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-26T19:39:19.162313+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apaixonada Pelo Melhor Amigo Do Meu Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '08107e38-3ef5-41d4-a822-e2802fd43495', 'A Bela Adormecida E Os Três Irmãos', NULL, 'Sinopse: Stella, filha adotiva querida dos Newsom, era amada por seus três irmãos - até ser descartada quando encontraram a filha biológica, Luna ponto para retribuir a bondade deles, Stella, decoração partido, se oferece para um experimento criogênico e desaparece por 30 anos.', 'https://vz-c2303ad7-0af.b-cdn.net/72cd6b88-448d-42f5-b3e7-1f26e59ff295/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-26T19:37:02.139017+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Bela Adormecida E Os Três Irmãos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1c49386b-068b-4af9-93cb-3d4059a7facd', 'A CEO Secreta', NULL, 'Sinopse:
Em um incidente inesperado, uma humilde empregada de limpeza enfrenta a arrogância de um gerente abusivo que a ameaça com uma escolha indecente: “Durma comigo, ou será demitida.” Mas o que ele não esperava era o poder que ela escondia. Com um olhar firme, ela tira o casaco e revela seu cartão VIP, expondo sua verdadeira identidade como a CEO da empresa. O gerente, atordoado e tremendo, cai no chão em choque, enquanto o equilíbrio de poder muda drasticamente. Esta história explosiva de reviravoltas revela como força, inteligência e coragem podem expor a hipocrisia e transformar o jogo.', 'https://vz-c2303ad7-0af.b-cdn.net/a3a9188a-ac84-4825-b1ad-a82f278b5c91/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-26T19:29:24.676432+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A CEO Secreta'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4a5c9ba5-bd2a-4948-a317-2ac3c92b15ce', 'A Armadilha Perfeita', NULL, 'Sinopse:
Lily Brown, após o parto, descobre a traição do marido David, com sua melhor amiga, Emilly Wilson e o fato do material genético de sua Fertilização in Vitro ser do casal de traidores. Ele fez isso, a fim de evitar que sua amante sofresse os danos da gravidez e garantir herdar a fortuna de Lily Brown, através da criança. Lily silenciosamente suportou tudo, criou a filha de seus inimigos e planejou sua vingança com frieza e precisão. Após 7 anos, ela revelou a verdade publicamente e fez com que David e Emilly pagassem por suas ações.', 'https://vz-c2303ad7-0af.b-cdn.net/c00f1c93-037e-4dec-9829-562a1e29b453/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-26T19:06:47.368777+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Armadilha Perfeita'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '92860376-9ad5-4099-8dc1-3dc0044d90fb', 'A Herdeira Falsa', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/43f8a565-0a64-4f9b-a603-023dbb844bf5/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-26T18:09:26.986573+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Falsa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3a9edbeb-095e-44bc-a6dc-60d735492947', 'A Herdeira Supera O Seu Marido', NULL, 'Sinopse:
Em uma maratona de identidades conflitantes, Lily terá que enfrentar seu ex infiel, a amante dele, suas mães, seu novo pretendente real, a mulher que busca conquistar seu verdadeiro amor e, por fim, sua sogra dominadora! Será que Lily conseguirá vencer todos eles?', 'https://vz-c2303ad7-0af.b-cdn.net/e5fee5a2-6159-458c-90e6-93fa491462e5/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-25T19:09:06.949628+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Supera O Seu Marido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '26c957bc-91f1-4e77-bf6d-51029cfa07f5', 'A mãe CEO e o Pai Incrível / Mamãe Ceo e o Papai  é Lider Da Guilda', NULL, 'Sinopse:
Um jovem pobre leva sua filha a uma competição de artes marciais para encontrar uma esposa. A bela CEO olhou para ele como um mendigo e olhou para ele. Contra todas as probabilidades, o pobre rapaz poderia matar todos instantaneamente com um estalar de dedos. Acontece que sua verdadeira identidade era a Invencível Imortal, e a beleza foi conquistada na hora.', 'https://vz-c2303ad7-0af.b-cdn.net/46d85478-2e15-4512-9b19-dfbb13124e03/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-25T18:53:02.105582+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A mãe CEO e o Pai Incrível / Mamãe Ceo e o Papai  é Lider Da Guilda'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '24c25387-a652-415a-8174-92d2e702f430', 'A Noiva Ingênua', NULL, 'Sinopse: A mulher foi enviada para as montanhas por sua madrasta desde criança, passando os seus dias aprimorando suas habilidades, enquanto permanecia alheia às complexidades da vida social moderna. Agora, seu mentor queria que ela saísse da montanha e inventou uma história de que casar-se e dormir com seu parceiro a ajudaria a ganhar força mística. Ela sempre acreditou que "dormir" significava simplesmente deitar juntos.', 'https://vz-c2303ad7-0af.b-cdn.net/0b49edab-accb-47a6-bfee-c2039cac326e/playlist.m3u8', '[''mais-recomendado'']', '2025-07-25T18:27:13.775329+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Noiva Ingênua'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e88c4ebf-9e2a-4190-87c2-e28843be474a', 'A Pureza Da Pele De Gelo', NULL, 'Sinopse:
Há três anos, Carina, que era filha do bilionário, perdeu sua posição e se casou com Ivan. No entanto, Ivan, devido ao sequestro da Carina no dia do casamento, começou a desprezá-la, considerando-a "impura". Durante esses três anos, ele não obteve a certidão de casamento com Carina, nem sequer a tocou, e ainda manteve um relacionamento com a Raissa. O que Ivan não sabia era que Carina não tinha sido sequestrada, mas estava trabalhando secretamente com uma organização especial para resgatar mulheres sequestradas. Nesse dia, Carina descobre a traição de Ivan, enquanto a mãe e a irmã do Ivan, determinadas a expulsá-la, tentam trazer Raissa e o bebê para dentro de casa.', 'https://vz-c2303ad7-0af.b-cdn.net/cf849ac3-c549-403c-88fe-89766bf98e36/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-25T18:19:35.049086+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Pureza Da Pele De Gelo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ee2d8149-a919-46dd-b0cf-844ea9709332', 'Além Do Sol', NULL, 'Sinopse: Luana Silva, filha de um grande advogado e formada em Yale, vê sua vida virar de cabeça para baixo após a morte de seus pais e o ferimento de sua irmã. Sebastião, herdeiro da família Rocha, a contrata para lutar pela herança e ser sua namorada secreta. Luana aceita para investigar a morte de sua família e buscar vingança, mas ao seduzir o irmão caçula, Ricardo, descobre que está grávida de Sebastião. Segredos sombrios aparecem: Sebastião pode ser o culpado pela morte de seus pais, e Ricardo também não é o que parece. Entre disputas e mentiras, eles se apaixonam, mas Sebastião não consegue resistir ao seu jogo de poder.', 'https://vz-c2303ad7-0af.b-cdn.net/32f383a1-54dc-4dc3-8bbc-b38df77e8d3b/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-25T17:56:32.172485+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Além Do Sol'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'eada15c5-80b2-4970-9e09-185a754fc990', 'Amar Você Alem De Seis Meses', NULL, 'Sinopse:
Narra a história de Sarah Milton, uma faxineira, e Daniel Rodney, um bilionário, que são forçados a se casar e depois precisam aguardar seis meses para o divórcio, conforme a lei de Los Angeles. Daniel, para recuperar sua empresa, esconde sua verdadeira identidade e propõe um contrato de casamento de seis meses usando o nome Daniel Brown, criando uma situação inesperada para ambos.', 'https://vz-c2303ad7-0af.b-cdn.net/fbaf664a-5f6d-4d5f-893f-5032e5055582/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-25T17:52:02.537803+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amar Você Alem De Seis Meses'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ba28fab2-da02-44b3-8dd5-857b07533382', 'Amor Em Velocidades Perigosas', NULL, 'Sinopse:
No dia do seu casamento, Violet foge de um noivo abusivo que a via como um troféu e a mantinha sob controle rígido. Buscando liberdade, ela encontra Marcus, um carismático piloto de corridas clandestinas. O que começa como um acordo por proteção em troca de um beijo se transforma em uma paixão intensa. Porém, Marcus guarda um segredo sombrio relacionado ao seu passado. Enquanto isso, Courtney, uma amiga das pistas e obcecada por Marcus, faz de tudo para separá-los. Violet se vê dividida entre um amor perigoso e a possibilidade de retornar à vida controladora que deixou para trás. Será que ela conseguirá perdoar o homem que roubou seu coração e enfrentar os fantasmas do passado?', 'https://vz-c2303ad7-0af.b-cdn.net/0908ad8b-9798-49b9-b01c-a383ff28485c/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-25T17:48:46.618716+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Em Velocidades Perigosas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0e95b0c5-c15b-4ce7-adb2-269c81b503b5', 'Aurora Oculta: O Governante Ascendente', NULL, 'Sinopse:
Diz a lenda que qualquer um que conquistar o favor de Don Alaudio, o inalcançável, terá sua ascensão meteórica. Mas ninguém esperava que Adriano, um simples entregador, invadisse a sala de reuniões do Grupo Prenhor sob o pretexto de "precisar entregar um pedido urgente" e, com poucas palavras, resolvesse uma crise comercial. Trinta anos atrás, Dona Salles me disse: "Se alguém te desprezar, esmague-o, use-o como degrau e prove que você nasceu para reinar!"', 'https://vz-c2303ad7-0af.b-cdn.net/1ec0ca49-81e1-4708-8ec7-7881e274f4ef/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-25T17:46:22.717564+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Aurora Oculta: O Governante Ascendente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f2d994bc-db01-4347-8d35-63d9cc41fd91', 'Boa Menina Da Máfia', NULL, 'Sequestrada pelo rei da máfia, a inocente Bella foi forçada a assinar um contrato com ele para pagar a cirurgia de sua mãe. No entanto, esse contrato, que vale meio milhão de dólares, exige muito mais de Bella do que ela jamais imaginou...', 'https://vz-c2303ad7-0af.b-cdn.net/0ab11745-6bc7-4869-b9fe-15cce776b0d2/playlist.m3u8', '[''relacionamento-tabu'', ''amor-primeira-vista'', ''identidade-escondida'', ''mais-recomendado'']', '2025-07-25T17:40:56.537091+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Boa Menina Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '65464bcb-51c8-4ce0-8ef1-29203b047b3d', 'Carregando Seus Bebês, Roubando Seu Coração', NULL, 'Ella Reed é uma estudante universitária passando por dificuldades. Desesperada para pagar a faculdade, aceita um acordo de uma noite com Sebastian Harrington, um herdeiro bilionário infértil. Quando descobre que está grávida de gêmeos, ele a leva para seu mundo de luxo para garantir uma gestação tranquila. O que era apenas um contrato, se transforma em uma jornada cheia de emoções, descobertas e amor.', 'https://vz-c2303ad7-0af.b-cdn.net/a2f04a54-337c-44ba-87ea-9ebd718467ae/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''relacionamento-tabu'', ''bebes-e-gravidezes'', ''amor-primeira-vista'']', '2025-07-25T17:39:04.202055+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Carregando Seus Bebês, Roubando Seu Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd318d832-76c2-4e1b-98f9-7ab88995e5dd', 'College Story', NULL, 'Sinopse: O que começa como uma aposta cruel vira uma batalha por verdade, liberdade e amor. Quando o arrogante calouro Will é desafiado por uma fraternidade implacável a seduzir a excluída do campus, ele acha que será o teste de lealdade mais fácil de todos. Mas Hailey, uma artista quieta de língua afiada e segredos próprios, não cai em jogos e logo ele também não. À medida que as mentiras se desfazem e o poder muda de mãos, o retorcido mundo universitário explode em escândalo, chantagem e vingança. Agora, o amor deixou de ser um jogo e é a única saída.', 'https://vz-c2303ad7-0af.b-cdn.net/fa3b29a8-80bc-448c-8f4d-638f0130d49c/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-25T17:35:07.915562+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'College Story'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '22c93fcd-7d7a-4a9c-be60-d05def09e594', 'Contrato Doce Com O Chefão Da Máfia', NULL, 'Sinopse:
Ao salvar Victor, um perigoso e sedutor chefe da máfia, a enfermeira Tessa se torna alvo da obsessão dele. Ela tenta escapar, mas o destino a encurrala: seu irmão está à beira da morte e as dívidas médicas são insuportáveis. Victor propõe: “Seja minha mulher, e eu o salvo.” Forçada a assinar um contrato de casamento, Tessa resiste ao seu mundo sombrio, mas acaba rendida à sua proteção. Quando descobre que ele é o homem misterioso que a salvou anos atrás, ódio e amor se confundem.', 'https://vz-c2303ad7-0af.b-cdn.net/31b6300b-a8a2-4539-bdea-845146ec194c/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-25T17:31:57.52073+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Contrato Doce Com O Chefão Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fdb2624e-efbe-49b1-a5fd-08d4bdbc6b8c', 'Corrida Para O Meu Coração', NULL, 'Sinopse:
Ele é meu meio-irmão — Enzo Hawthorne, a estrela em ascensão da F1, o melhor piloto do mundo e herdeiro de uma fortuna. Eu sou Sierra Fernando, filha de um mecânico criada em uma oficina de reparos suja — alguém que nunca deveria ter pertencido ao seu mundo de velocidade, patrocinadores e lençóis de seda. Nunca fomos feitos para colidir, mas no dia em que nossos pais ficaram noivos, ele acelerou para dentro da minha vida. Sob seus troféus, existe uma ferida. Por trás da minha rebeldia, começo a revelar minhas inseguranças… e a me importar com ele. Enquanto ele treina para Abu Dhabi, inimigos se aproximam — e nós também... Quando nosso amor ultrapassa os limites, não há volta', 'https://vz-c2303ad7-0af.b-cdn.net/d38a4410-09a3-4554-aa0b-09b54e5e6337/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-25T17:30:02.817419+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Corrida Para O Meu Coração'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd5000dee-563d-4af7-aac2-3068b05201c3', 'Divorciada No Dia Do Casamento', NULL, 'Sinopse:
Alessandra DeLuca volta para casa depois de anos no exterior, viúva e grávida, para comparecer à festa de noivado de seu irmão, Enzo. Um mal-entendido acontece quando Caroline, a mãe da noiva, confunde Alessandra com a amante de Enzo. Sofia, a noiva, invade a mansão de Enzo e confronta Alessandra fisicamente. Ela arrasta Alessandra para a festa de noivado, humilhando-a na frente de todos. A situação se agrava até que Enzo chega, e um escândalo maior está à espera pela frente.', 'https://vz-c2303ad7-0af.b-cdn.net/d6a41d7f-108b-4d29-8227-3ffd4ee33589/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-25T17:25:43.021709+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divorciada No Dia Do Casamento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f20edf66-94c5-4f24-8b30-b80a4ff732ba', 'Doce Como Fogo, Amor Implacavel', NULL, 'Sinopse:
Sete anos atrás, Amanda teve gêmeos com Horácio, mas seu filho mais velho foi levado. Agora, ela volta para encontrá-lo e reencontra Horácio sem saber da conexão. Aos poucos, descobre que Henrique, o jovem igual a Lucas, é seu filho perdido. Entre segredos e emoções, Amanda e Horácio se reaproximam e se tornam a família que sempre desejaram', 'https://vz-c2303ad7-0af.b-cdn.net/f47361e0-83c4-4837-acdb-4f148a19bbb2/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-25T17:18:45.709788+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doce Como Fogo, Amor Implacavel'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f8f0a183-eaf2-401b-8154-106bc0a4dc3d', 'O Médico Chefe é o Papai do meu Bebê', NULL, 'Sinopse:
Quando a interna de medicina Molly tem uma noite de amor com um desconhecido, ela acredita que será algo passageiro, sem consequências. Mas um mês depois, descobre duas verdades chocantes: está grávida do bebê dele... e o tal desconhecido é ninguém menos que seu novo chefe, o Dr. Graham Weston. Assim que o segredo de Molly vem à tona, surgem também rivais, incluindo membros ciumentos de sua própria família e uma figura do passado de Graham. Todos estão determinados a separá-los. Com a pressão vindo de todos os lados, será que eles conseguirão enfrentar o caos e ainda encontrar o amor no meio disso tudo?', 'https://vz-c2303ad7-0af.b-cdn.net/d28aa628-8ee9-4ccb-a202-3bf696f69b87/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-25T17:16:58.474899+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Médico Chefe é o Papai do meu Bebê'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4c54538d-eb05-4f2e-911d-3a383fedbb01', 'Doutor Estou Pegando Fogo', NULL, 'Isabela foi forçada por sua meia-irmã Clara a perder a virgindade para Sebastião, o herdeiro do maior hospital da cidade. Clara queria enganar Sebastião para que ele se casasse com ela, mas fracassou. Enfurecida e humilhada, Clara passou a atormentar Isabela repetidamente. Porém, ela escolheu a pessoa errada para mexer, não sabia que Sebastião já estava perdidamente apaixonado por Isabela naquela noite. Ele decidiu reivindicá-la, casar-se com ela, cuidar dela com todo carinho e fazer qualquer um que ousasse tocá-la pagar caro.', 'https://vz-c2303ad7-0af.b-cdn.net/e4c83d0a-d5eb-4df3-9e38-cee130a0c851/playlist.m3u8', '[''identidade-escondida'', ''amor-primeira-vista'', ''relacionamento-tabu'', ''mais-recomendado'']', '2025-07-25T04:02:03.093707+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Doutor Estou Pegando Fogo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0a8312aa-73c0-46db-bcb2-956b2bbf938d', 'Entre O Amor e a Traição', NULL, 'Certo dia, a caminho de casa, Isabella descobriu que o seu marido Luis estava a ter relações sexuais com a sua meia-irmã Caroline no carro...', 'https://vz-c2303ad7-0af.b-cdn.net/5ce18129-b97b-411c-80be-27d562d583d5/playlist.m3u8', '[''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-25T03:58:20.817822+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Entre O Amor e a Traição'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd56cf40c-c98b-4727-958a-765ccc18f5cb', 'Fadado Ao Meu Vampiro Proibido', NULL, 'Sinopse:
Durante toda a sua vida, Heather trabalhou como escrava para uma família de vampiros, até formar um vínculo inimaginável com Theo, um rei vampiro. Agora ela deve encontrar respostas para todos os mistérios: o que aconteceu com suas memórias perdidas de infância? Como aconteceu o vínculo? Theo é a morte dela ou o amor de sua vida?', 'https://vz-c2303ad7-0af.b-cdn.net/f43c6806-d72a-4e47-8e50-aca55b9a7aff/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'', ''vampiro'']', '2025-07-25T03:53:00.846236+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Fadado Ao Meu Vampiro Proibido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '96915321-2f08-45ab-b566-66a0998fba52', 'Inverno De Paixão No Grande Hotel', NULL, 'Sinopse:
Na véspera do casamento, José Linhares, vice-gerente do luxuoso hotel, descobre que seu noivo, Ricardo Souza, estava se divertindo com outras pelas costas dela. Furiosa, ela cancela tudo e, movida pela decepção, decide passar a noite com um acompanhante. Mas ao acordar… o homem ao seu lado não é quem ela pensava — é Felipe, o bilionário discreto e poderoso da cidade! O que aconteceu naquela noite? Um erro do destino ou o começo de uma paixão explosiva?', 'https://vz-c2303ad7-0af.b-cdn.net/c1a526e3-333a-4404-9b76-536da6174ec6/playlist.m3u8', '[''identidade-escondida'', ''amor-primeira-vista'', ''mais-recomendado'']', '2025-07-25T03:50:27.146512+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Inverno De Paixão No Grande Hotel'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '18a5b4a2-8dfd-4ba8-ad25-fc83c43e6e71', 'Lâmina Perdida', NULL, 'Segurava uma lâmina afiada, com o coração cheio de amor, ódio, sangue e lágrimas. Anseia por justiça, mas o caminho que tem pela frente é longo. Quando é que o seu desejo de vingança estará em paz?', 'https://vz-c2303ad7-0af.b-cdn.net/13c27535-f89b-4c82-9dc5-542c85bc5d88/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-25T03:44:28.852473+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Lâmina Perdida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5792d295-14fa-4121-af09-27186fcd7b3e', 'Magnata Desmascarando: O Genro Dominante', NULL, 'Após se conciliar com o seu pai biológico, Tiago Souza logo se torna presidente do grupo. Porém quando vai ao rio pra celebrar o aniversário do sogro, nem mesmo tem dinheiro a se sentar à mesa. Sua esposa sofre desprezo o rival amoroso tenta usurpar o seu lugar, e a casa ancestral de sua família é demolida a força por um incorporador. No final Tiago revela sua verdadeira identidade e cobra pesado aos vilões', 'https://vz-c2303ad7-0af.b-cdn.net/fafbda78-4771-4e88-be77-119871028b7c/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-25T03:41:56.622971+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Magnata Desmascarando: O Genro Dominante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '44d6fabb-f7d2-4877-bd38-cbfed32b94aa', 'Mamãe Não Fuja! Papai É Louco Por Você', NULL, 'Aline Moreira, atriz desconhecida, divorcia-se do CEO Enzo Xavier grávida. Anos depois, sua filha Lúcia é descoberta como herdeira Xavier! Entre reconciliação ardente e segredos revelados, o amor prova ser o maior prêmio.', 'https://vz-c2303ad7-0af.b-cdn.net/8c0ff8ad-fd1e-4b59-b077-51b0b337a8fe/playlist.m3u8', '[''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-25T03:36:25.059285+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mamãe Não Fuja! Papai É Louco Por Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '89913958-fcf9-4c3b-9bb1-6207ff4d9174', 'Me Tornei O Maior Segredo Do Meu CEO', NULL, 'Sinopse:
Iris chega atrasada à entrevista e, inesperadamente, é contratada pelo enigmático CEO Jared.
Logo, ela se vê presa em um jogo perigoso de poder, sedução e humilhação.
Entre encontros secretos e segredos explosivos, a tensão entre os dois só aumenta.
Agora, Iris precisa descobrir se o que sente é amor… ou apenas mais uma armadilha.', 'https://vz-c2303ad7-0af.b-cdn.net/6f9b8714-2b4d-47fc-9263-566338732de5/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-25T03:32:51.712856+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Me Tornei O Maior Segredo Do Meu CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3f46a2d7-5aff-4499-840f-33c0520cf89e', 'Não Mexa Com Os Pais De Um Bilionário', NULL, 'Sinopse: Mary e seu marido embarcam numa viagem tranquila… até que são humilhados publicamente por um guia arrogante. O que ele não sabia? Eles são os pais de um bilionário! Quando a verdade vem à tona, é tarde demais. Enquanto o guia paga caro pelo erro, o casal redescobre o amor que parecia perdido.', 'https://vz-c2303ad7-0af.b-cdn.net/9dca5dcf-196e-4c44-9139-63ecb5bb8f5c/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-25T03:29:37.337507+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Mexa Com Os Pais De Um Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd3b687d2-81a7-45c5-8592-f0ffa0d044de', 'Meu Amor Fora De Serviço', NULL, 'Sinopse: Para pagar uma dívida de gratidão, Luciano aceita um contrato com a mãe de Heloisa, acompanhar e cuidar da filha, ajudando-a a superar uma decepção amorosa. Durante esses anos, Luciano oferece tudo de si, mas sempre como sombra do inesquecível Alfredo, o amor ideal de Heloisa. Quando o prazo chega ao fim, Luciano parte em silêncio, deixando apenas uma carta e os papéis do divórcio. Só então Heloisa percebe o quanto ele a amava. Luciano, por sua vez, segue em frente...', 'https://vz-c2303ad7-0af.b-cdn.net/9d42c745-5f8a-44f1-bbce-91d5e012acc6/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-25T03:27:13.105719+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Amor Fora De Serviço'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '50abc473-dd45-4eb9-a323-743a5bfe242e', 'Minha Família Me Vendeu Para Um Chefe Do Crime', NULL, 'Sinopse:
Quando Lilian Grey é forçada a casar com o temido mafioso Adam Steel, a sua vida transforma-se num jogo perigoso de paixão e mentira. O seu papel de esposa vira o de criada quando descobre que Adam é casado em segredo com outra mulher. A viver sob o mesmo teto com a esposa de Adam e o seu irmão enigmático, Lilian desvenda mentiras de família, um mistério num baile de máscaras e doenças falsas, enquanto lida com desejos proibidos. Mas cada passo em direção ao amor revela inimigos escondidos mais próximos do que alguma vez imaginou', 'https://vz-c2303ad7-0af.b-cdn.net/6280c3b9-6f5b-417f-b3e7-a1eb74264c69/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-25T03:24:27.314433+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Família Me Vendeu Para Um Chefe Do Crime'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5d1cdb9d-2fc9-4bf6-a63c-d20c21b787b9', 'Não Mexa Com Minha Irmã', NULL, 'Sinopse: Tina e Alan escaparam de um orfanato quando eram crianças. Anos depois, o reencontro dos dois desencadeia ciúmes, traições e segredos há muito enterrados. Conforme verdades sombrias vêm à tona, Tina é forçada a encarar o passado e a abandonar tudo o que achava que conhecia. No fim, os irmãos reencontrados se erguem juntos, mais fortes do que nunca, prontos para enfrentar o futuro após vencerem as mentiras, as perdas e as mágoas que quase os separaram para sempre.', 'https://vz-c2303ad7-0af.b-cdn.net/0fac6ae8-d8eb-4a82-af68-468352b73ead/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-25T03:21:26.405778+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Mexa Com Minha Irmã'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bbf60a75-6280-4709-805d-88fc1c609ddf', 'O Amor Do Pai Da Minha Rival', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/156d8412-50d3-411b-bcb9-4462693d97cd/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'', ''relacionamento-tabu'']', '2025-07-25T03:12:38.248605+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Amor Do Pai Da Minha Rival'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5a75108f-c30b-420a-89a2-d3a5541038c9', 'O Código da Honra', NULL, 'Sinopse: Em um mundo onde o destino está escrito nas estrelas, um homem ousa reescrever o seu próprio destino.
A jornada de um guardião misterioso encarregado de proteger os fios do destino – mas quando o amor, a traição e segredos ancestrais colidem, até mesmo o guardião precisa escolher entre o dever e o desejo.', 'https://vz-c2303ad7-0af.b-cdn.net/185b7444-829c-494a-89a8-b096ad19e74d/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-25T03:08:57.137497+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Código da Honra'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fbdbaf79-2229-4185-9d61-417c40cdccab', 'O Magnata Presidente Se Apaixona Por Mim', NULL, 'Sinopse:
Beatriz Santos, uma jovem que perdeu a mãe e trabalha como entregadora, acidentalmente ajuda na rua o magnata Sr. Ferreira, que é confundido com alguém que não pode comprar pãezinhos. Sr. Ferreira, determinado, arrasta seu neto—Thiago Ferreira, o magnata de Cidade Solar, para um encontro às cegas com Beatriz. Para quitar as dívidas do tratamento de sua mãe, Beatriz se casa com Thiago por um dote de 30.000 dólares. Thiago, casado sob a pressão do avô, não acredita em Beatriz e esconde dela sua verdadeira identidade de magnata. Conforme moram juntos, seus sentimentos gradualmente melhoram. No entanto, a identidade de magnata de Thiago sempre é um ponto de tensão no relacionamento. A visita da mãe de Thiago, a conferência anual do Grupo Ferreira e o retorno ao país de uma amiga de infância são eventos que repetidamente fazem a protagonista suspeitar, desencadeando uma série de histórias tensas e engraçadas.', 'https://vz-c2303ad7-0af.b-cdn.net/cbba2997-7e6f-45ab-b6b1-649503ad22e6/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-25T03:05:01.025503+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Magnata Presidente Se Apaixona Por Mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '27206361-0a7b-4164-b9f3-f15ae4070081', 'O Pai Imbatível', NULL, 'Sinopse:
Ele acabou se envolvendo em um encontro às cegas e acabou casando com uma bilionária. Ele vai no casamento de seu irmão e seu irmão arrogante e orgulhoso acabou humilhando, o que seu irmão não sabia é que ele casou com a CEO da empresa que trabalhava. A CEO querendo agradar o marido, manda entregar uma pequena fortuna como presente de casamento ao cunhado, mas quando sua secretária viu que o marido da CEO foi humilhado, cancelou o presente. Com raiva o cunhado começa uma briga com irmão,para se vingar da humilhação e a perda do emprego A CEO também começa a briga com seu irmão que quer ocupar seu lugar. Eles vão conseguir vencer toda essa disputa?', 'https://vz-c2303ad7-0af.b-cdn.net/df9eea88-9d33-437d-8689-61336b3672f0/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-25T03:01:55.392139+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Pai Imbatível'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f6d68193-f402-4237-803b-4e50406b5f3c', 'O Retorno Da Fênix', NULL, 'Sinopse:
Durante a cerimônia de escolha do noivo, duas irmãs lançam suas esperanças ao vento com um bordado esférico. A bola da irmã mais velha cai nas mãos de um nobre; a da irmã mais nova, nas mãos de um mendigo. Uma ascende à glória. A outra morre em arrependimento—até que o tempo volte atrás. Dada uma segunda chance, a irmã mais nova reescreve esse momento. Mas e se o mendigo guardar um segredo e o destino tiver seus próprios planos?', 'https://vz-c2303ad7-0af.b-cdn.net/83fa638a-0c93-48de-a362-f7063025a7fd/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-25T02:59:29.006268+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Da Fênix'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0dc189e9-8fc8-4855-acda-f20655926e95', 'O Retorno Triunfal Do Deus Infinito', NULL, 'Rafael o Deus infinito cuja inteligência foi selada pelo ciclo de reencarnação e que acabou vagando, foi salvo por Camila e se casou com ela. O rico Ricardo cobiçando Camila manda atacar Rafael, mas isso acaba fazendo com que Rafael recupere seus poderes. De volta ao comando da aceita do infinito Rafael derrota seus inimigos salva sua esposa e faz um retorno triunfal no torneio do infinito seguindo seus destino ao lado de Camila', 'https://vz-c2303ad7-0af.b-cdn.net/a1a42d43-3a1b-4ab5-af5b-e42d0bb5dd51/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-25T02:57:08.897832+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno Triunfal Do Deus Infinito'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'dc113f72-2839-4289-8b83-d5c69c8fdb01', 'Para Sempre Ao Seu Lado', NULL, 'A garota do campo, Elisa Rocha, cresceu na família extremamente tradicional, onde prevalecia a mentalidade de valorizar os meninos em detrimento das meninas. Quando ainda era muito jovem, os seus pais a impediram de continuar os estudos e a mandaram trabalhar para sustentar o irmão. Depois, para que o irmão se casasse, a Elisa foi vendida por $100.000 para um homem da vila que havia matado as duas esposas. Coincidentemente, a sua melhor amiga, Daniela Silva, também estava prestes a ser forçada a se casar com o idiota da vila. A Elisa e a Daniela fugiram para Rosalândia, com a intenção de recomeçar e se estabelecer. Elisa, com o seu esforço, foi subindo na vida até que, por um mal-entendido, conheceu o bilionário Thiago Costa. O que começou como um encontro inesperado se transformou em um romance que mudaria as suas vidas para sempre', 'https://vz-c2303ad7-0af.b-cdn.net/e516d690-f64f-465c-86d4-bbe1c2e9ab1c/playlist.m3u8', '[''amor-primeira-vista'', ''mais-recomendado'']', '2025-07-25T02:52:17.680093+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Para Sempre Ao Seu Lado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '44a3df91-eca0-4799-a655-414b4bc17ed1', 'Perseguindo Minha Esposa Congelada', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/56961705-8b2b-4c61-9f5c-fedf75471ff4/playlist.m3u8', '[''mais-recomendado'']', '2025-07-25T02:48:29.050917+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Perseguindo Minha Esposa Congelada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8b442721-d979-49b5-8390-cf7841b3b406', 'Perseguindo Minha Irresistível Ex Esposa', NULL, 'Três anos de casamento. Nunca se encontraram uma vez sequer. Uma noite de paixão embriagada enredou Ethan e Mia em uma teia de desejo e engano. Determinado a se divorciar, Ethan nunca imaginou que a nova funcionária misteriosa era...', 'https://vz-c2303ad7-0af.b-cdn.net/81d614e3-2f29-4408-8a79-7e77fa4ffee9/playlist.m3u8', '[''identidade-escondida'', ''amor-primeira-vista'', ''mais-recomendado'']', '2025-07-25T02:43:26.208057+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Perseguindo Minha Irresistível Ex Esposa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '04b07257-c0e3-4507-9f81-d90f3aaf826e', 'Punida Pelo Seu Amor', NULL, 'Sinopse:
Sabrina era uma mulher indigente, cuja vida dependia dos outros. Ela foi forçada a uma bode expiatório e vendeu a si mesma, o que resultou em sua gravidez. Sebastian era o solteiro mais disputado, com abundante riqueza e poder. Ele acreditava que Sabrina era flor do mal, manchada de ganância e engano. Ela não conseguia conquistá-lo, então ela sumiu de sua vida. Furioso, ele jurou procurar até os confins do mundo para reconquistá-la. A cidade inteira sabia que ela seria picada em pedaços caso fosse encontrada. Quando isto aconteceu, ela perguntou desesperadamente: "Eu abandonei o nosso casamento sem levar um centavo seu, então por que você não me deixa ir?" De maneira dominadora, ele respondeu: "Você roubou meu coração e deu à luz ao meu filho, e tenta fugir de mim?".', 'https://vz-c2303ad7-0af.b-cdn.net/a4972bca-4da7-4795-acd7-bc3bc80b4e32/playlist.m3u8', '[''amor-primeira-vista'', ''bebes-e-gravidezes'', ''mais-recomendado'']', '2025-07-25T02:35:49.757738+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Punida Pelo Seu Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b5fe59fa-4011-4e6e-9922-26e434381088', 'Quando O Destino Atinge O Amor', NULL, 'Quando o Destino Atinge o Amor é uma narrativa envolvente que nos leva a refletir sobre as complexidades das relações familiares e amorosas. Lacey, a protagonista, cresceu em um ambiente onde os filhos eram mais valorizados que as filhas, o que moldou sua vida de maneira significativa. Desde jovem, ela enfrentou desafios que testaram sua resiliência e determinação. A única constante em sua vida era Felix, um garoto por quem ela nutria uma admiração silenciosa, mas profunda.
Já adulta, Lacey se vê pressionada pelas expectativas familiares e acaba aceitando um casamento arranjado. O que ela não esperava era que seu futuro marido fosse ninguém menos que Felix, o amor de sua juventude. Este encontro inesperado com o destino traz à tona sentimentos antigos e novos desafios, especialmente porque Felix estava em um relacionamento complicado com Erika, uma mulher que sua família não aceitava devido à sua infertilidade.', 'https://vz-c2303ad7-0af.b-cdn.net/22cfa6e2-a380-4e68-b53f-1306e65e600c/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-25T02:32:00.790924+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando O Destino Atinge O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fa512d8c-0ac0-4794-a7e0-c43f5cacd815', 'Quebrando O Acordo Com O Bad Boy Do Hóquei', NULL, 'Jane Wellsy guarda um segredo inconfessável: está apaixonada por seu meio-irmão, Nate Duncan. Mas quem descobre tudo é seu pior inimigo, Zach Gates, o malvadão do time de hóquei da universidade. Para piorar, a nova namorada de Nate é ninguém menos que Melissa, a mesma garota que infernizou a vida de Jane no colégio. Quando Melissa encontra uma história picante escrita por Jane e desconfia que seja sobre Nate, Zach entra em cena para salvá-la, iniciando um namoro de mentira para proteger o segredo dela. Mas, conforme os dois passam mais tempo juntos, Jane descobre que, por trás da pose de bad boy frio, existe um coração gentil e generoso, pronto para curar suas feridas e enfrentar o mundo ao seu lado.', 'https://vz-c2303ad7-0af.b-cdn.net/84758439-78f9-4edc-9cf2-105924141dd5/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-25T02:27:57.911278+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quebrando O Acordo Com O Bad Boy Do Hóquei'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3c2f5352-416d-4bf8-8574-9025ac718d1b', 'Quebrando O Taco', NULL, 'Sinopse:
Alex nunca tinha sequer segurado num taco de sinuca. Mas, em meio a várias crises, ele surpreendeu a todos com uma habilidade impressionante no jogo. A verdade por trás dessa transformação é...', 'https://vz-c2303ad7-0af.b-cdn.net/a53a9985-7b8f-4d50-9ed6-31389775a10f/playlist.m3u8', '[''mais-recomendado'']', '2025-07-25T02:25:34.689989+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quebrando O Taco'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f16a1cd0-5eda-47e2-9734-55fa258762e2', 'Reencontro Do Amor', NULL, 'inopse:
Na minha vida anterior, desconfiei do filho do meu motorista, que me roubou o dinheiro com a sua namorada malvada e me injetou HIV!!! Agora renasci de volta à escola, vou fazê-lo sentir toda a dor que me causou, expô-lo à frente de toda a gente pelas merdas que fez e voltar a apaixonar-me pelo meu lindo admirador, o maior bilionário de Nova Iorque!', 'https://vz-c2303ad7-0af.b-cdn.net/2ee75075-f2f4-434c-8f7e-033b4d4d70f7/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-25T02:23:01.93711+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reencontro Do Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '89d022de-3578-4daa-b0c4-4b8e62b6ccf5', 'Renascida Para Ser Principal Herdeira', NULL, 'Olivia, a verdadeira herdeira da família Sterling, teve tudo roubado - sua tese, seu rim, até mesmo sua vida - por uma meia-irmã intrigante, enquanto seus próprios irmãos a traíram. Renascida com vingança, ela corta todos os laços e revida com brilhantismo. Quando a verdade explode, seu arrependimento chega tarde demais.', 'https://vz-c2303ad7-0af.b-cdn.net/32d820e6-04ca-4efb-9ce4-2cb8ba204969/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-25T02:20:47.285331+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Renascida Para Ser Principal Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a4613fe6-1ef5-448a-bf83-98424330112a', 'Senhor Governador Solte O Nosso Bebê', NULL, 'Sinopse:
É o candidato mais cobiçado para governador. Ela é mãe solteira e esconde o filho de 8 anos. Eles foram separados por uma mentira. 8 anos depois, o destino ainda não desistiu - meu amor não desaparece; apenas espera para ser recuperado.', 'https://vz-c2303ad7-0af.b-cdn.net/f53d6a48-3478-431a-89a5-9be313f57965/playlist.m3u8', '[''mais-recomendado'', ''bebes-e-gravidezes'', ''identidade-escondida'']', '2025-07-25T02:16:33.487819+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Senhor Governador Solte O Nosso Bebê'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a46428c3-41ac-41c2-9f11-675883a7cada', 'Senhorita Renascida', NULL, 'Sinopse:
Lindsey, herdeira da família mais rica de Los Angeles, esconde sua identidade para se casar com Bruce e apoiar seu negócio. Depois de ser traída e assassinada por Bruce e sua amante, Jenny, Lindsey recebe uma nova chance no dia do casamento... ela está determinada a recuperar seu poder e reputação.', 'https://vz-c2303ad7-0af.b-cdn.net/46a77abf-34ce-4356-9846-9e9a7adbcb9c/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-25T02:09:21.526836+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Senhorita Renascida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd43dda0d-4606-4c87-b81a-17444cce083f', 'Sequestrada Pela Máfia', NULL, 'Sinopse:
Vendida pelo seu namorado ao rei da máfia, Vincenzo, como sua noiva de contrato, Violet planeja sua fuga. Porém, ela descobre que Vincenzo tem um coração de ouro… que pertence a ela. Quando o perigo surge, Vincenzo salva Violet e sofre ferimentos graves, levando ela a se casar com ele por dever e gratidão. Mas, durante a cerimônia de casamento, um plano de assassinato vem à tona…', 'https://vz-c2303ad7-0af.b-cdn.net/c89483f3-3ef9-4826-9d79-3babff1dcb7e/playlist.m3u8', '[''identidade-escondida'', ''amor-primeira-vista'', ''relacionamento-tabu'', ''mais-recomendado'']', '2025-07-25T02:06:07.180473+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sequestrada Pela Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8502349e-c3ca-48a3-aa9e-ce831bb070ff', 'Sequestrada Pelo Diabo', NULL, 'Quando um implacável traficante de armas sequestra uma noiva após seu noivo falhar em uma prova de amor em um jogo mortal de roleta russa, ela se vê dividida entre seus princípios morais e a crescente atração por esse homem perigoso, que fará de tudo para tê-la ao seu lado.', 'https://vz-c2303ad7-0af.b-cdn.net/69226d1c-2ab4-4b5d-972e-fe0b04c42f95/playlist.m3u8', '[''identidade-escondida'', ''relacionamento-tabu'', ''amor-primeira-vista'', ''mais-recomendado'']', '2025-07-25T02:02:09.484702+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sequestrada Pelo Diabo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '634d7665-6254-438f-9285-35cb6382b972', 'Seu Pleno Poder Nos 50', NULL, 'Sinopse:
Diogo, Mestre do Remígio, vive como varredor após a aposentadoria. Um dia, ao voltar do trabalho, descobre que sua nora e a mãe dela tomaram sua casa e o expulsaram. Vagando sem rumo, de saia uma jovem, que decide retribuir apresentando sua mãe, uma poderosa empresária, a ele. Para testar Diogo, a empresária arma uma cilada, enviando sua melhor amiga para seduzi-lo, mas Diogo surpreende a todos chamando a polícia e acusando a mulher de ser uma garota de programa', 'https://vz-c2303ad7-0af.b-cdn.net/1d792a30-1535-4190-8255-bf3fd81e4602/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-25T01:55:21.047984+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Seu Pleno Poder Nos 50'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c3895483-e7d0-4601-b346-4e5ac32ffcb0', 'Sob O Mesmo Céu Longe De Você', NULL, 'Felipe Gomes ceou do grupo Gomes vê uma família virar alvo do de perseguição, após assumir a presidência da Associação Comercial, atraindo inimigos perigosos. Para proteger os filhos Ana sua esposa grávida se sacrifica numa fuga desesperada e salta de um precipício. Após a queda ela é resgatada por um médico rural mas acordada desfigurada e sem memória. 20 anos depois Lisa a filha que ela trouxe ao mundo no anonimato no campo, conquistou uma vaga na seleção de design do poderoso grupo Gomes. Enquanto isso Matheus o filho que anda deixou pra trás cresceu alimentando por falsas esperança de reencontrá-la e se tornou um homem frio e amargo. Num concurso marcado por intrigas por causa de um mal entendido armado por uma rival Matheus humilha lisa sem imaginar que ela é quem ela é.', 'https://vz-c2303ad7-0af.b-cdn.net/f428f7d6-317b-4a13-9306-fe22d7586eaa/playlist.m3u8', '[''identidade-escondida'', ''bebes-e-gravidezes'', ''mais-recomendado'']', '2025-07-25T01:51:02.348837+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sob O Mesmo Céu Longe De Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '341f620d-5bf8-4e87-ab2a-0a642be87bb8', 'Sonhos De Divorcio De Princesa Pesada', NULL, 'No século XXI jiang Ruoshu, uma cientista famosa pela internet se vê transportada para o mundo de um romance! Ela acorda para descobrir que se tornou uma princesa com sorte não amada sobrecarregada com 200 libras determinada fazer o melhor de suas novas circunstância, Jiang Ruoshu coloca o seu objetivo em expor homens enganosos e mulheres traiçoeiras, usando seu conhecimento moderno para criar invenções que conquistaram toda família imperial. Ela ganha títulos e honras transformando uma situação aparentemente sem esperança em uma situação triunfante, e sobe ao auge do sucesso', 'https://vz-c2303ad7-0af.b-cdn.net/3a825dc5-e48c-4900-9c0f-edefd6a1b643/playlist.m3u8', '[''mais-recomendado'']', '2025-07-25T01:46:59.45437+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sonhos De Divorcio De Princesa Pesada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3ed014b8-ee00-4bc8-9bab-1dfcd662f9e3', 'Surpreendente Ela é Da Alta Sociedade', NULL, 'Miguel Castro foi enganado por Sofia Correia, que o fez acreditar que o filho que ela espera é dele. Por isso, decide se casar com ela, mas no dia do casamento é humilhado publicamente. Na verdade, Sofia é amante de Murilo Barbosa, um jovem bilionário que usa o casamento para destruir Miguel. No entanto, Miguel é o herdeiro perdido do Grupo Celeste, procurado por sua irmã, Alexa Castro, que o encontra no dia do casamento e decide lhe dar uma cerimônia digna.', 'https://vz-c2303ad7-0af.b-cdn.net/39bc1478-bb59-4a67-84db-f16b0ce7a053/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-25T01:43:13.628826+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Surpreendente Ela é Da Alta Sociedade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f5f29132-9d67-40b8-adcd-7c5b28f7eeb3', 'Ultimato Pela Cidade: Seu Remorso Na Pública', NULL, 'Sinopse:
Sete anos atrás, a CDF Eva entregou a virgindade ao seu crush Timóteo, o astro do hóquei — apenas para descobrir que tudo não passou de uma aposta. Agora uma produtora, ela cruza o caminho dele de novo. Diante de repórteres, Timóteo pede desculpas e revela que espera por Eva desde então.', 'https://vz-c2303ad7-0af.b-cdn.net/80afa7af-c989-4b04-aba3-d658790dc929/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-25T01:39:52.475408+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ultimato Pela Cidade: Seu Remorso Na Pública'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6b93f0ca-3621-4416-a378-251377e4a57b', 'Um Acordo Com O Capitão Do Hóquei', NULL, 'Sinopse:
Isadora, uma CDF, faz um acordo com o capitão do time de hóquei, Tiago, para que ele a ajude a conquistar outro jogador, Leo, enquanto ela se transforma e ganha confiança, mas sentimentos inesperados entre ela e Tiago complicam a situação, além de segredos e sabotagens.', 'https://vz-c2303ad7-0af.b-cdn.net/dfec93f5-6ff0-43a2-bfc1-6a4ce481d7b9/playlist.m3u8', '[''amor-primeira-vista'', ''relacionamento-tabu'', ''mais-recomendado'']', '2025-07-25T01:36:40.843663+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Acordo Com O Capitão Do Hóquei'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4b657ecb-e103-4dd8-ba89-4e95c877b231', 'Uma Aposta De Amor Ou Morte', NULL, 'Sinopse:
Ignorada pelo pai e pela madrasta desde pequena, Amanda cresceu buscando afeto. Já adulta, escolheu Norberto como seu guarda-costas e logo se apaixona, investindo tudo nele. Mas ele parece imune. Até que Amanda descobre: ele está ali pela sua meia irmã. Ferida, Amanda decide se casar com Teodoro, um herdeiro em estado vegetativo. Quando Norberto percebe que amava a pessoa errada, já é tarde demais.', 'https://vz-c2303ad7-0af.b-cdn.net/63e0ca12-a641-4308-bdb0-49e14c421d4a/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'', ''amor-primeira-vista'']', '2025-07-25T01:33:44.411829+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Aposta De Amor Ou Morte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a85095c9-9d80-49fd-9c84-9cf4b574a191', 'Vingança de Sangue: A Justiça Da Irmã', NULL, 'Sinopse: Hilda, CEO de um conglomerado, reencontra sua irmã gêmea Hannah. Antes disso, Hannah quase é morta por valentões. Para se vingar e descobrir a verdade, Hilda assume a identidade da irmã como estagiária e inicia um jogo implacável contra a gangue.', 'https://vz-c2303ad7-0af.b-cdn.net/c3a7c852-cb3b-42b4-b5d3-17d2e3911a6c/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-25T01:30:40.697228+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vingança de Sangue: A Justiça Da Irmã'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f5aabb56-b532-483f-ac1c-93f2a83ddca2', 'Você é Tudo Que Eu Quero', NULL, 'Roseli, uma violinista corajosa salva Damien dos bullying do Eliseu deixando-lhe uma pulseira preciosa como recordação. 10 anos depois o destino reúne-os através de um casamento contratual orquestrado pelo avô de Damien. Apesar dos conflitos e mal entendimentos', 'https://vz-c2303ad7-0af.b-cdn.net/5a6e6b6a-12dd-4bb9-b9cc-60c9de6ec553/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-25T01:26:33.462244+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Você é Tudo Que Eu Quero'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3ba5a4ad-dd13-4650-974d-fbf07aa19e78', 'Xiu Somos Um Secreto', NULL, 'Sinopse:
Em um mundo onde a lealdade entra em conflito com a tentação, um herdeiro rebelde e sua encantadora meia-irmã recém-chegada enfrentam perigosas disputas pelo poder, traições familiares e um romance proibido — arriscando tudo para proteger seus segredos um ao outro.', 'https://vz-c2303ad7-0af.b-cdn.net/f0c21922-4d5c-4f40-86f8-d893e93d1ce4/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-25T00:43:37.780757+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Xiu Somos Um Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9138e6d9-4a6c-42cb-a962-0745560d1f98', 'A Dama Chefe Da Traída A Amada', NULL, 'Sinopse:
Isabella escondeu sua identidade rica pelo bem de seu amado Luka, financiando anonimamente todos os sonhos dele. No entanto, quando Luka alcançou o sucesso, abandonou Isabella pela sua suposta pobreza e decidiu se casar com a herdeira rica, Vita. De coração partido, Isabella aceitou uma proposta de casamento de Aiden, o bilionário que secretamente a admirava. Juntos, eles juraram garantir que Luka recebesse o castigo que merecia...', 'https://vz-c2303ad7-0af.b-cdn.net/b7a15976-7a2c-4e67-a72e-c45ce92f8bd0/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-25T00:38:50.710841+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Dama Chefe Da Traída A Amada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '85adf131-7059-4c1e-afe2-f06a17ca974f', 'A Dupla Vida Do Senhor Presidente', NULL, 'Sinopse:
Claire, uma mulher do campo que trabalha num restaurante de frango frito, entrou acidentalmente na suíte do hotel onde o presidente norte-americano William está hospedado. Depois de usar seu corpo para desintoxicá-lo, ela ajudou o presidente, que foi baleado, a evitar perseguidores. A fim de retribuir sua bondade, os dois formaram um casamento contratual, mas Claire erroneamente pensou que William era apenas um guarda-costas substituto do presidente. Foi só quando Claire foi sequestrada por uma gangue que William chegou com suas forças especiais impressionantes.', 'https://vz-c2303ad7-0af.b-cdn.net/976ae547-23ec-4a78-8df9-832bfa9e9678/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-25T00:36:46.819557+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Dupla Vida Do Senhor Presidente'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '514d619d-dd88-4a23-a70e-3a65966f9de2', 'A Herdeira Bilionária Divorciada', NULL, 'Isabella Moore, interpretada por Mariah Moss, está comemorando seu terceiro aniversário de casamento com Carson.
Porém, o que deveria ser um momento de celebração se transforma em pesadelo quando o marido pede o divórcio. Ele ainda revela que irá se casar com sua amante naquele mesmo dia.
A partir disso, Isabella precisa decidir o que fazer em relação a sua possível solteirice.', 'https://vz-c2303ad7-0af.b-cdn.net/a1e72ce1-00d9-47f2-a2b7-1e973fa411b5/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'']', '2025-07-24T23:17:07.342198+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Herdeira Bilionária Divorciada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e335bef7-617b-44f7-9e10-b188bf83d3bb', 'A Preferência De Deus', NULL, 'Após a morte da mãe e o novo casamento do pai, a avó materna das irmãs mayara e Melissa a mulher mais rica mais discreta, vem requerer a custódia de uma delas. Na vida passada Melissa descobriu a identidade da avó no Diário da mãe e escolheu seguir-la, apenas para acabar vivendo na pobreza do interior. Anos depois movida pela inveja e desespero Melissa matou maíra e se suicidou. Mas agora as duas retornaram aos 15 anos. Com escolha trocada sera que o fim mudará', 'https://vz-c2303ad7-0af.b-cdn.net/26949bd8-20a0-4785-a3eb-d2084a3eb2eb/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-24T23:11:25.013993+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Preferência De Deus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cc077f8b-a2da-480c-9fd2-ec6a5b2f5caa', 'A Queda Da Noiva Mercenária', NULL, 'Beth era uma garota ambiciosa que finalmente conseguiu que Edward a pedisse em casamento. Mas, pouco antes do casamento, sua amiga o viu abraçar a Sra. Brown, sua mãe. Beth pensou que a Sra. Brown era a amante... e planejou vingança. Sem saber que esse era o primeiro passo para sua ruína...', 'https://vz-c2303ad7-0af.b-cdn.net/4082b753-0a87-4c0e-a3db-0cc33ca050c6/playlist.m3u8', '[''mais-recomendado'']', '2025-07-24T22:58:30.111827+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Queda Da Noiva Mercenária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '71b422b4-4442-4ce7-b501-8eafc8240a15', 'A Última Batida Por Amor', NULL, 'O CEO do Grupo Martins, Lucas Martins, procurou por toda parte do país, mas não encontrou a mulher com a marca de nascença de uma flor de pêssego na cintura. A mulher com esta marca é o único corpo de puro yin. Lucas, nascido com um corpo de puro yang, deve se unir a um corpo de puro yin para neutralizar completamente o veneno de yang em seu corpo, caso contrário, sua vida estará em perigo.', 'https://vz-c2303ad7-0af.b-cdn.net/f272c27a-1e2a-4afa-bee1-cf7550a1514b/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-24T22:54:39.069277+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Última Batida Por Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '917fbbac-7368-406e-824b-6d3af3ff036c', 'Acasalada Com Meu Selvagem Alfa', NULL, 'Helena, expulsa da antiga alcateia e agora uma empregada humilde na Alcateia Lua Vermelha do Alfa Matteo, cai em uma trama de prostituição por tentar salvar seu filho doente e acaba reencontrando Alfa Henrique, pai de seu filho e meio-irmão de Matteo. À medida que o amor reacende, velhos inimigos, lutas pelo poder e verdades chocantes ameaçam seu destino.', 'https://vz-c2303ad7-0af.b-cdn.net/46c26912-217a-4ce9-a459-52aeaca659db/playlist.m3u8', '[''homem-lobo'', ''relacionamento-tabu'', ''mais-recomendado'']', '2025-07-24T22:53:12.102331+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Acasalada Com Meu Selvagem Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '55e0a900-2675-4ff8-9582-5528f64812a8', 'Alpha Rick', NULL, 'Sinopse: Os Ômegas devem ficar quietos. Os Ômegas devem obedecer. Os Ômegas devem fazer TUDO o que eu digo!" disse o Alpha Morrison com raiva, enquanto cuspia em mim. Eu vivia todos os dias com medo pela minha vida. Me perguntando o que eu fiz de errado para merecer tal destino. O ódio deles por mim era tão forte, que eles estavam dispostos a me entregar para um alfa implacável? Me deixando para me virar sozinha? Olivia Watson é desprezada pela sua matilha. Espancada, torturada e tratada como escrava da matilha desde o dia em que sua mãe e irmão morreram. Todos a culparam pela morte deles, mas o que ela não sabia era que segredos estavam sendo escondidos dela. Ela se vê sendo rejeitada pelo seu primeiro par, apenas para descobrir que seu par de segunda chance é o notório alfa, Alarick da Matilha Lua Negra. Ninguém realmente o conhece, exceto pelo fato de que nunca se deve cruzá-lo. As histórias que ouviu sobre ele a fazem tremer de medo, mas ele realmente será tão ruim? Afinal, toda besta tem sua beleza que pode domá-la. Será que ela será a responsável por domar a fera dentro dele?', 'https://vz-c2303ad7-0af.b-cdn.net/2988a3c3-b493-4b6e-87f2-82c51dd39c02/playlist.m3u8', '[''identidade-escondida'', ''homem-lobo'', ''mais-recomendado'', ''novo-lancamento'']', '2025-07-24T22:51:19.006739+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Alpha Rick'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'e45ef629-5fd6-472d-9b41-8566a4180d5d', 'Amor Cativo Do Chefe Da Máfia', NULL, 'Sinopse:
Após o assassinato de seu pai e a descoberta de que ele havia assinado um contrato com a perigosa gangue TOREX, Malissa se vê forçada a se casar com o herdeiro do chefe da máfia para quitar as dívidas da família e garantir o tratamento de sua avó.
Em meio a ameaças, luxos e paixões proibidas, ela descobrirá que o amor pode florescer até nos terrenos mais sombrios...', 'https://vz-c2303ad7-0af.b-cdn.net/01caa710-8ed6-4ab5-a3e8-ac901a35ae5e/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-24T22:46:38.079177+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Cativo Do Chefe Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd7e6e197-0c31-4cc9-b6c7-81e8a18cd199', 'Amor Implacável', NULL, 'No aniversário do tio de seu noivo, Zora Hartley jamais imaginava reencontrar o passado que tentou esquecer: Aaron Huntington, seu ex-namorado. Dois anos se passaram, mas Aaron nunca deixou de amá-la — e agora, sob o mesmo teto, ele está decidido a reconquistá-la, flertando sem pudor. Zora luta contra os sentimentos que ainda carrega... até descobrir a traição de seu noivo — e, junto com ela, a verdadeira razão que separou seu coração do de Aaron. Será que o destino lhes dará uma segunda chance?', 'https://vz-c2303ad7-0af.b-cdn.net/44ca279d-f996-4256-95f8-dd34180790ab/playlist.m3u8', '[''identidade-escondida'', ''amor-primeira-vista'', ''mais-recomendado'']', '2025-07-24T22:42:23.113642+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Implacável'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '99729866-1959-4723-9532-e8dbb05cc79a', 'Amor Perdido Na Neblina', NULL, 'Cesária foi recolhida por Mauro quando tinha sete anos e ia se apaixonando por ele com o passar do tempo. Todo ano, ela confessa seu amor a Mauro aproveitando o pedido do aniversário, mas ele, por ser dez anos mais velho, se sente culpada por seu sentimento igualzinho por ela, e opta ficar com outra. Em uma bebedeira, os dois têm um caso e Cesária fica grávida. Esquecido do ocorrido, Mauro acusa-a de sem compostura. Com coração partido, Cesária decide largar...', 'https://vz-c2303ad7-0af.b-cdn.net/5f2a37e0-75a2-4f6f-ac26-02a88729fc21/playlist.m3u8', '[''amor-primeira-vista'', ''bebes-e-gravidezes'', ''mais-recomendado'']', '2025-07-24T22:38:48.629816+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Perdido Na Neblina'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3874f536-04d9-4a2d-88fb-30878388ef60', 'Amor dos Jogos: Despedida para Valer', NULL, 'Sinopse:
É um filme de comédia romântica que segue a história de Mack, uma jovem que planeja um jogo de conquista para atrair o seu crush. No entanto, ela acaba se apaixonando por um dos seus alvos e tem que aprender a lidar com a complexidade dos sentimentos e a jogar para valer.', 'https://vz-c2303ad7-0af.b-cdn.net/6b274d9a-b335-41f0-845b-d0f5e08ed85b/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-24T02:48:45.185259+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor dos Jogos: Despedida para Valer'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5723fa54-5a8d-4e5c-a73a-e3b1793fc1a2', 'Amor Que Esta Falecendo', NULL, 'Sinopse:
Madissa amava Heitor há 16 anos, mas foi pedida por ele a ser um banco de sangue móvel da Ariane, que era uma menina por quem ele se apaixonou à primeira vista. Heitor destruiu toda a família da Madissa, só para Ariane ser a sua esposa. Um relatório de exame físico de câncer fez Madissa ver como Heitor realmente era , um homem implacável e cruel. Quando ela finalmente não amou Heitor, ela descobriu que estava apaixonada pela pessoa errada há 16 anos', 'https://vz-c2303ad7-0af.b-cdn.net/cf1b80c9-0058-4429-aa4b-659be244b70d/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-24T02:45:50.91002+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Amor Que Esta Falecendo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '60bf2ceb-4248-451f-8fd6-c70079f9ccc2', 'Apaixonando lhe Pelo Melhor Amigo Do Meu Pai', NULL, 'Kylie, uma jovem ousada e determinada, nutre uma paixão proibida pelo melhor amigo de seu pai, Jaxon. Enquanto ela o provoca com seu charme irresistível, ele luta para resistir à tentação. Mas à medida que a tensão entre os dois cresce, um limite é ultrapassado, levando a uma traição irreversível que mudará tudo.', 'https://vz-c2303ad7-0af.b-cdn.net/3a65ab25-ef42-49b3-9b4d-0004e80192e5/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-24T02:42:52.983936+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apaixonando lhe Pelo Melhor Amigo Do Meu Pai'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '80300822-4673-446a-b534-2d35780774b7', 'As Doces Bênçãos Do Amor:', NULL, 'Seis anos atrás, drogado por um concorrente o CEO entrou por engano em quarto aonde uma mulher também estava drogada e fez sexo com ela. Sobre o efeito das drogas eles não conseguiam se ver por clareza. Quando ele saiu pegou metade de um pingente de jade da mulher. A mulher engravidou e deu a luz a uma menina ela administrava uma pequena barraca de macarrão na beira da estrada para sustentar a família de seu noivo canalha. Um dia o CEO passou e ficou surpreso ao ver a menina que tinha uma semelhança impressionante com ele. Mais tarde um teste de paternidade confirmou que ele era o pai, então ele embarcou em sua jornada de perseguir o amor', 'https://vz-c2303ad7-0af.b-cdn.net/4ebffbf1-705f-4528-8447-6b1cc2358a7e/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-24T02:40:25.166294+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'As Doces Bênçãos Do Amor:'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cc40474c-23e3-45f8-a030-8f2fd5c9dbb2', 'Até Que A Verdade Nos Separe', NULL, 'O casamento relâmpago de um CEO e uma barista se transforma em um caos à medida que agendas ocultas, um ex ciumento e um segredo de família chocante são revelados. Será que seus corações sobreviverão às mentiras - ou se chocarão com mais força do que seus apressados “sim”? Drama, calor e humor garantidos.', 'https://vz-c2303ad7-0af.b-cdn.net/314a7197-39c9-4938-88ee-6e31bf7d1bd4/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-24T02:31:11.32006+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Até Que A Verdade Nos Separe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '8be6ccd5-ec27-49e6-b8fb-f3ab6e75096c', 'Atração Fatal Romance Da Máfia', NULL, 'Para vingar a sua mãe, Daisy se disfarça de dançarina com o objetivo de se aproximar de Hogan, um chefão da máfia bem perigoso. Mesmo suspeitando das intenções de Daisy, Hogan se sente irresistivelmente atraído pelo seu charme mortal. Será que Daisy vai conseguir escapar ilesa, ou vai se perder de amores por Hogan?', 'https://vz-c2303ad7-0af.b-cdn.net/e9dfce1f-f464-4573-be47-b5594e7787a4/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''identidade-escondida'']', '2025-07-24T02:29:14.944671+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Atração Fatal Romance Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '550f4f89-777c-46c9-9e3d-cd6d17f415f0', 'Bilionário Em Fuga Torna Se Minha Noiva', NULL, 'Sinopse:
Deixada no altar, Liana Medeiros faz algo impulsivo: casa-se com Jacob Hamilton, um bilionário misterioso marcado por seus próprios traumas. O que começa como um acordo frio logo se torna uma jornada de paixão e cura. Entre ex-parceiros intrometidos, dramas familiares e disputas corporativas, será que esse romance inesperado virará amor verdadeiro ou o passado os destruirá?', 'https://vz-c2303ad7-0af.b-cdn.net/45a23dc8-1815-4687-b892-947f1bbf8e75/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-24T02:27:01.940116+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Bilionário Em Fuga Torna Se Minha Noiva'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '619ed153-fa4f-4fd1-95dd-0ecaf6b72ccd', 'Brace Face Betty', NULL, 'Betty Branson começa seu primeiro dia em uma nova universidade na esperança de fazer amigos e começar do zero. Mas, em vez disso, ela é intimidada por sua estilosa meia-irmã Stacey , humilhada na frente de toda a escola e levada a entrar no vestiário masculino com os olhos vendados.', 'https://vz-c2303ad7-0af.b-cdn.net/260dba70-e21e-46d1-8060-bf39f57836dc/playlist.m3u8', '[''mais-recomendado'']', '2025-07-24T02:25:31.829788+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Brace Face Betty'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ffb7765d-c488-4139-a8a1-faded99e9a85', 'Cai Perfeitamente Em Seus Braços', NULL, 'Recém-contratada como controladora de tráfego aéreo, a mãe solteira Diana acreditava que sua vida finalmente estava entrando nos eixos... até reconhecer um eco do passado: a voz de Anthony, seu grande amor de outrora. Anos atrás, ela terminou com ele para não atrapalhar seu sonho de se tornar comandante. Agora, sentia-se aliviada por ver que aquele sacrifício não fora em vão e seguia ocultando dele a existência da filha que tinham juntos. O que Diana não sabia era que Anthony não era apenas um piloto, mas também o novo CEO bilionário da companhia aérea que voltaria a entrelaçar seus destinos.', 'https://vz-c2303ad7-0af.b-cdn.net/cd52c504-fb30-4278-b3df-048a6354d5cd/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-24T02:23:25.074064+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Cai Perfeitamente Em Seus Braços'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '33c0fd33-2e45-45c7-99e7-43c58e23074a', 'Caminho Para A Liberdade', NULL, 'A Ana Souza nasceu em uma família que dá mais valor para os homens do que para as mulheres. O pai e a avó venderam a casa onde ela e a irmã moravam para pagar mais de $10.000 de mensalidade para o irmão, Lucas Souza, que passou na faculdade. Determinada a sair desse sofrimento, Ana se esforçou para passar em uma boa universidade. Porém, quando recebeu a carta de aceitação, o pai e a avó se opuseram e a forçaram a se casar. Com a ajuda da mãe e da irmã, Ana conseguiu fugir. Sete anos depois, quando já estava bem-sucedida, recebeu a notícia de que a irmã estava prestes a ser obrigada a se casar...', 'https://vz-c2303ad7-0af.b-cdn.net/7ca1899f-6664-4208-a294-c1457f94f954/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-24T02:20:18.485891+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Caminho Para A Liberdade'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'ca0acac2-4494-4671-83ca-bb4bf4029db3', 'Casada Com Meu Chefe', NULL, 'Elisa Valente, uma simples orçamentista do Grupo Monteiro, sempre trabalhou com extremo cuidado, com medo de cometer qualquer erro. Mas, numa viagem a trabalho, acabou bebendo demais e, por uma reviravolta do destino, passou a noite com seu chefe direto, Luciano Monteiro. A partir daí, as engrenagens do destino começaram a girar. O pedido repentino de casamento feito por Luciano, a pressão das despesas médicas da mãe doente, e até o mistério por trás da própria origem de Elisa… tudo começou a empurrá-la cada vez mais adiante, sem volta.', 'https://vz-c2303ad7-0af.b-cdn.net/528dbd6f-08f6-47e5-86b7-8fd1f92b6881/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''novo-lancamento'']', '2025-07-24T02:17:47.240116+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casada Com Meu Chefe'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b28a2dcc-f356-47eb-bb6d-7d3a98fdc8a7', 'Casamento de Mentira Com O Bilionário', NULL, 'Uma noite de erro, um destino entrelaçado… e um amor que ninguém esperava', 'https://vz-c2303ad7-0af.b-cdn.net/094c6c1c-158a-4d75-8521-907d759b4cf9/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-24T02:12:23.505455+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento de Mentira Com O Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd05b5f13-bb88-4cc2-aa0b-6cc88826acca', 'Código Da Herdeira', NULL, 'Claire, herdeira da família Costello e hacker lendária, leva uma vida discreta como dona de casa — até que uma traição brutal vira seu mundo de cabeça para baixo. Após um divórcio doloroso, ela aceita um casamento por contrato com o misterioso Daniel, determinada a buscar vingança e descobrir a verdade por trás da tragédia que destruiu sua família. Entre o amor e a justiça, até onde ela está disposta a ir?', 'https://vz-c2303ad7-0af.b-cdn.net/45a2ebd7-7165-4dd5-89cb-f9c644a206ef/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-24T02:08:03.688747+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Código Da Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '06bff3f1-c2db-4b87-aee3-282029efdee2', 'Casamento Por Vingança Doce Amor', NULL, 'Sinopse:
A irmã de Cate, Rebecca, não só roubou seu namorado, Ethan, como também a fez perder sua herança. Impulsionada pelo desejo de vingança, uma Cate embriagada decide impulsivamente seduzir o belo tio de Ethan, Shaun, que mais tarde foi seduzido por Cate e se apaixonou loucamente, apesar de seu jeito frio. No entanto, quando ambos perceberam que Shaun estava sendo confundido com o tio de Ethan, ele percebeu que ela se aproximou dele apenas para se vingar de Ethan…', 'https://vz-c2303ad7-0af.b-cdn.net/184eb413-2fac-408b-8370-31d7dd780c2f/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-24T02:05:05.784082+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Por Vingança Doce Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '73fbcab8-2dfd-4546-be47-8ca1f7accea1', 'Casamento Relâmpago Esposa Tola, doce e Selvagem', NULL, 'A chefe do Grupo Dias, Júlia Dias, foi assassinada por sua própria família e enterrada viva, mas milagrosamente sobreviveu, embora tenha perdido a memória e ficasse com a mentalidade de uma criança. Quando Júlia Dias foi para a rua e se tornou uma mendiga, foi encontrada por Mateus Santos, o presidente do Grupo Fenix, que fingia ser doente e fraco. Depois de um casamento relâmpago com Mateus Santos, a família Santos humilhou os dois de diversas formas, mas Júlia Dias, por acidente, conseguiu manipular a família Santos. Durante um confronto com a madrasta de Mateus, Júlia Dias recupera sua memória e decide esconder sua verdadeira identidade, continuando a se esconder na família Santos. No processo de vingança contra as famílias Santos e Dias, os dois começam a se apaixonar ao longo do tempo...', 'https://vz-c2303ad7-0af.b-cdn.net/c2fd54d8-665b-47ca-8e89-6f03a079b86f/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-07-24T01:40:13.923923+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Relâmpago Esposa Tola, doce e Selvagem'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bf42665d-6b70-423f-a1bb-67dd6cceb160', 'Casamento Relâmpago: Máscaras Caindo', NULL, 'A Amante de Ricardo Gomes apareceu com sua filha, Matilde, na mansão da família, levando Isabela Gomes...', 'https://vz-c2303ad7-0af.b-cdn.net/535321b1-8a0e-4edb-9150-93c9ef4c2e65/playlist.m3u8', '[''novo-lancamento'', ''mais-recomendado'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-24T01:34:58.768351+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Relâmpago: Máscaras Caindo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6d6ceb06-dd94-4778-84a1-07f24ab33f5c', 'Ceo Quer Meu Pequeno Rascal', NULL, 'Sinopse:
Anos depois de um caso de uma noite, ela retorna com um filho—o amor reacende, e segredos se desdobram..', 'https://vz-c2303ad7-0af.b-cdn.net/abe1c279-593f-4f94-87cb-80c39a030266/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-24T01:31:29.260703+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ceo Quer Meu Pequeno Rascal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '12b22977-51ad-4216-94f5-4199b4c7fdca', 'CEO, A Senhora Tem Um Filho Secreto', NULL, 'Sinopse:
Seis anos atrás, ela se divorciou do marido CEO sem que ele soubesse que ela estava grávida. Agora, ela vive sozinha com seu filho. Quando se encontram novamente durante um encontro às cegas, será que eles podem esclarecer mal-entendidos e reconciliar seu relacionamento desfeito?', 'https://vz-c2303ad7-0af.b-cdn.net/00d65cae-5eb7-4262-8ad3-764edecf2e0a/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-24T01:28:58.22132+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'CEO, A Senhora Tem Um Filho Secreto'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9a0f4e1a-d92b-4df5-b9e2-7f0be29fbad3', 'Chuveiros Frios/Cold Showers', NULL, 'Sinopse:
Quando Jayda Wright, uma arquiteta doce, mas subestimada, flagra seu marido em uma traição, seu mundo desmorona - mas sua transformação começa. Movida pela traição e por um coração partido, ela mergulha em uma noite de desvario imprudente, cruzando o caminho de Max Miller, um bilionário magnético com um gosto por controle e segredos.', 'https://vz-c2303ad7-0af.b-cdn.net/b4866fab-310a-4978-a963-9139e6af7e1f/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-24T01:19:32.389312+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Chuveiros Frios/Cold Showers'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c94b4da8-fe7b-40fb-9244-c68e4365387f', 'Como Treinar O Seu CEO Bonzinho', NULL, 'Sinopse:
Fugindo de seu marido abusivo, Liz Bolin assume uma nova identidade no mundo do BDSM - a dominadora Hydra Lily. Lá, ela conhece o enigmático e autoritário Sr. Raven, e, pela primeira vez, transforma um dominante em seu submisso. O que ela não sabe é que, por trás da máscara, está seu chefe na vida real, Reggie Wayne, e que o contrato no playroom acaba se transformando em amor.', 'https://vz-c2303ad7-0af.b-cdn.net/71fba23d-846c-46f3-8d24-3186da61747c/playlist.m3u8', 'Drama', '2025-07-24T01:15:44.304665+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Como Treinar O Seu CEO Bonzinho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c943196e-d59a-4fbe-b357-a1cb60c4ef1e', 'Coroada De Amor: Sua Volta Por Cima Com Três Filhos', NULL, 'Sendo mãe solteira e discreta, Lídia cria três filhos brilhantes nas suas respetivas áreas, o que faz valer todos os seus suores e lágrimas engolidas esses anos. Num festival da celebração do 70º aniversário de seu pai, Lídia infelizmente enfrenta hostilidade e desprezo de suas irmãs ingratas e até mesmo de seu pai. Mas Lídia supera todas as discriminações com dignidade, encontra um novo amor e uma nova chance de felicidade.', 'https://vz-c2303ad7-0af.b-cdn.net/f6acb98c-7885-4d40-a488-9c2c9ed5bb6c/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-24T01:09:27.738651+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Coroada De Amor: Sua Volta Por Cima Com Três Filhos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '260f74b5-5b92-4165-b5f3-cbeb7c6a53cd', 'Destino Selado Pacto Com O Rei Da Máfia', NULL, 'Sinopse:
Uma conspiração familiar colocou a vida de Molly em perigo, mas o chefe da máfia, Jack, a ajudou a sobreviver e a renascer das cinzas. Mal sabiam eles que uma conspiração ainda maior os aguardava..', 'https://vz-c2303ad7-0af.b-cdn.net/da18b0b4-258a-4454-ab17-3c51f881c27e/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-24T01:05:42.115994+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Destino Selado Pacto Com O Rei Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9ca7b6f3-9c76-4612-ba93-6866b39b6b75', 'Dispensaste Um Gênio Tecnológico', NULL, 'Sinopse:
Depois de ser demitido pelo filho do CEO, William, o maior gênio da tecnologia de Silicon Valley, Erik decide se juntar a Evelyn, a deslumbrante CEO da maior rival de sua antiga empresa. O resultado? Eles levam a antiga empresa à falência, e, quando William percebe que demitiu o cara errado, já foi tarde demais…', 'https://vz-c2303ad7-0af.b-cdn.net/6368152b-8fe7-4c3f-8b4f-99b8307b362f/playlist.m3u8', 'Drama', '2025-07-23T21:22:01.324928+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dispensaste Um Gênio Tecnológico'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2f2f540e-b651-496a-8892-6a05fc47e8e0', 'Divorcio Para Ser A Herdeira', NULL, 'Sinopse: Uma mulher que busca vingança, seduzindo o filho do inimigo, mas acaba se apaixonando por ele. A trama explora se o amor deles resistirá quando a vingança for concluída.', 'https://vz-c2303ad7-0af.b-cdn.net/4110a3d9-377d-42b7-9ce8-37323939f472/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-23T21:20:26.876619+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Divorcio Para Ser A Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2a85e6dc-bd20-4021-9db3-e0ad1b0fd4af', 'Grávida Pelo Pai Do Meu Ex', NULL, 'Depois que o namorado egoísta de Lucia termina o namoro porque não acredita nela, ela promete provar que ele está errado. Determinada a ser a melhor residente de cirurgia, ela se lança no trabalho... e sob as ordens de seu supervisor de residência, Dr. Sawyer Campbell: implacável, cirurgião renomado, pai surpresa de seu bebê e, pior de tudo... o pai de seu ex.', 'https://vz-c2303ad7-0af.b-cdn.net/81380b52-fdd4-40d5-b827-221451886760/playlist.m3u8', '[''mais-recomendado'', ''bebes-e-gravidezes'', ''identidade-escondida'']', '2025-07-23T21:12:11.225096+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida Pelo Pai Do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f04cdf78-68f3-42b7-8a23-727140341249', 'Grávida Por Acidente Mimada Para Sempre', NULL, 'Sinopse:
Julia quase perdeu a vida pelo marido Klaus. No entanto, descobriu que Klaus a traiu e teve um filho com outra mulher. Desanimada, divorciou-se e recuperou a sua verdadeira identidade de neta do homem mais rico do mundo… Klaus sempre amou profundamente Julia. Pensou que Julia se tinha apaixonado por outro homem, por isso fingiu deliberadamente trair e divorciou-se, dando-lhe liberdade. No entanto, ele nunca poderia realmente deixá-la ir no seu coração…', 'https://vz-c2303ad7-0af.b-cdn.net/eb76e093-472e-48ee-9fd4-c0d21bcd3179/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-23T20:38:32.472346+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida Por Acidente Mimada Para Sempre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'acc49239-134b-4429-a510-81fadc627c86', 'mortal? Já Estive Lá, Fiz Isso', NULL, 'Ronaldo uma das figuras mais poderosas de jacobina está à beira da morte. No entanto, algo impede de partir deixando a família Menezes preocupada. No auge da atenção uma mulher misteriosa, Silvana bate a porta da família, todos acreditam que ela seja descendente do grande amor de Ronaldo. Mas quando Silvana e Ronaldo finalmente se encontram, algo inacreditável acontece ele se levanta milagrosamente e revela um segredo que muda tudo', 'https://vz-c2303ad7-0af.b-cdn.net/ff3e69c8-48e0-48fc-b2c0-6160befc72c2/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-23T20:34:23.81291+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'mortal? Já Estive Lá, Fiz Isso'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '13da3c7c-d4ac-4671-8f45-324a8e3b25e9', 'Jogo Do Desejo Cama Compartilhada', NULL, 'Julia entra na última hora num reality de namoro 18+. Aqui o contato íntimo é obrigatório e os seus parceiros de cama mudam toda noite. O ex-namorado Heitor o carinhoso Marcos e o sexy Eduardo já estão esperando por ela na casa. E para complicar as leis deles também começam a chegar… os participantes se aproximam dela seguindo regras inconvencionais. Romance ou dinheiro? Instinto ou razão? Júlia fica cada vez mais bolada tentando decidir o que fazer', 'https://vz-c2303ad7-0af.b-cdn.net/a6696079-0ea7-4635-a303-cdb1d2d15839/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-23T20:25:00.583549+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jogo Do Desejo Cama Compartilhada'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '706ea6d5-9c92-4fd0-916b-83816c4fe2ab', 'Jovem Elite', NULL, 'Na renomada escola Jovem Elite, onde o dinheiro dita as regras e o poder está nas mãos da elite, Hannah é a garota invisível, vivendo à margem de um mundo que a rejeita. Alex, o garoto mais influente da escola, parece ser o inimigo perfeito — arrogante, privilegiado e inatingível. No entanto, quando o destino os força a cruzar caminhos, segredos são revelados, barreiras começam a cair, e ambos descobrem que o verdadeiro valor das pessoas vai muito além do saldo bancário. Em um ambiente onde tudo é comprado, será que o coração consegue resistir a suas próprias escolhas?', 'https://vz-c2303ad7-0af.b-cdn.net/026c5275-809c-42d3-a2d0-fa6d30ed6829/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''novo-lancamento'']', '2025-07-23T20:18:00.603926+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Jovem Elite'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'da34c94d-b666-473f-96ad-aa895a7741f9', 'Laços Perigosos', NULL, 'Sinopse:
Ela fez uma escolha que a ligou a um poderoso bilionário. Treze anos depois, seus caminhos se cruzam novamente sob o mesmo teto - presos entre mágoas não resolvidas e uma chama que nunca se apagou de verdade, enquanto o garoto entre eles guarda o segredo mais perigoso de todos.', 'https://vz-c2303ad7-0af.b-cdn.net/d18fa8d5-053f-4c9e-ac1c-1bd11fb67381/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T20:14:17.692393+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Laços Perigosos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5995ba56-6b42-42dc-8cb0-f136f6b8627e', 'Meu Ex Marido Bombeiro Queima De Arrependimento', NULL, 'Sinopse:
Após a trágica morte de sua filha Alyssa em um desabamento de um centro juvenil, Hazel busca justiça e vingança contra seu marido bombeiro Jace, que preferiu salvar sua ex-namorada Candace e a filha dela, Kimberly. Consumida pela dor e pela raiva, Hazel considera Jace e Candace responsáveis pela morte de Alyssa. Enquanto lida com sua tristeza, Hazel transforma sua dor em uma campanha de caridade, criando uma fundação para ajudar crianças. Carregado de culpa, Jace tenta se redimir de suas decisões, o que o leva a um exílio autoimposto. Por fim, Hazel segue em frente, encontra um novo amor e deixa Jace para enfrentar as consequências de suas ações.', 'https://vz-c2303ad7-0af.b-cdn.net/93a00d17-5b99-4cfb-b036-f87bf25b2930/playlist.m3u8', '[''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-23T20:08:57.762692+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Ex Marido Bombeiro Queima De Arrependimento'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7b30c9c9-d03a-41ff-a962-a754adbc84b3', 'Mamãe Não Chore Papai Esta Arrependido', NULL, 'Sinopse:
Quando sua esposa Sienna morre em um hospital psiquiátrico, Wayne é enganado pela astuta Alison e leva para casa a filha errada. Mal sabe ele que sua esposa continua viva, renascida como seu alter-ego implacável, Scarlett, e determinada a revelar os esquemas traiçoeiros de Alison e a se vingar em nome de sua filha.', 'https://vz-c2303ad7-0af.b-cdn.net/55797c0f-b350-486a-ad59-3abb1eed868e/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-23T20:06:50.939392+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mamãe Não Chore Papai Esta Arrependido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1fb0bca5-f9ca-4c8b-a905-f0e10405ba68', 'Marido Fique De Lado A Chefe Voltou', NULL, 'Sinopse:
Callie foi casada com Andrew por três anos, sendo uma esposa dedicada durante todo esse tempo, atendendo a todas as suas necessidades..', 'https://vz-c2303ad7-0af.b-cdn.net/760bdba1-4ce7-4d6d-8288-0e44ddcdc34f/playlist.m3u8', '[''mais-recomendado'']', '2025-07-23T19:59:40.847772+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Marido Fique De Lado A Chefe Voltou'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6c86a589-4495-4532-86a3-3fe09589dce4', 'Marido Malvado Por Favor Acorde', NULL, 'Você é forçada a se casar com o bilionário de sucesso Adrian Lewis como a noiva substituta para salvar a vida do seu avô. Pelo preço elevado de cinco milhões de dólares, você se vendeu para a família Lewis com a promessa de gerar um herdeiro. Mas há um problema... Adrian Lewis está em coma!', 'https://vz-c2303ad7-0af.b-cdn.net/1ba260cf-2e47-40b0-ad65-43bd0849ad6e/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-23T19:55:36.573701+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Marido Malvado Por Favor Acorde'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '413901b7-60dd-4037-9c75-a83431cfbcf9', 'Meu Ex Namorado E Seu Tio Enlouquecido', NULL, 'Sinopse: Depois de descobrir que seu namorado a estava traindo com sua irmã adotiva, Reina Becker decide dormir com o primeiro homem que encontrar: Grey Winston, que por acaso é o solteiro de ouro mais rico de Los Angeles. Quando descobre que Grey é tio de seu agora ex-namorado, ela propõe um relacionamento contratual com ele, na esperança de irritar tanto seu ex-namorado adúltero quanto sua irmã traidora. Os dois lutam para manter em segredo a verdadeira natureza de seu relacionamento, mas acham impossível conter a paixão ardente que continua a atraí-los um para o outro.', 'https://vz-c2303ad7-0af.b-cdn.net/2f7bafb0-1164-46c7-aba7-8b572de39031/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-23T19:45:36.654612+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Ex Namorado E Seu Tio Enlouquecido'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '90dc4cc2-5a62-40e1-a0ad-259200d5005f', 'Meu Marido Bilionário De Duas Caras', NULL, 'Sinopse:
Ela foi obrigada a se casar, mas encontrou um amor que nem sabia existir… ou será que tudo é uma mentira?
Entre cicatrizes do passado, segredos devastadores e provocações sedutoras, Mia precisa descobrir a verdade sobre o homem que agora chama de marido.', 'https://vz-c2303ad7-0af.b-cdn.net/5b8d6d51-5048-4e65-a13c-5896b4a954ff/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T19:42:42.868822+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Marido Bilionário De Duas Caras'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '58f1f875-8946-49e9-9f46-988398332411', 'Meu Mundo Termina Com Você', NULL, 'Sinopse:
Para vingar a morte do pai devido a negligência médica, Lucas retalia contra Sabrina, a filha do médico assistente, jogando-a em um hospital psiquiátrico para tortura e humilhação. Mas o que seu coração continua lhe dizendo é…', 'https://vz-c2303ad7-0af.b-cdn.net/f58d4842-71d4-4f5e-8685-89da7cbc848d/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''relacionamento-tabu'', ''bebes-e-gravidezes'']', '2025-07-23T19:39:48.449082+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Mundo Termina Com Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'cea8abb7-dae8-4726-9d98-67afed906a73', 'Meu Pobre Esposo É Bilionário', NULL, 'Sinopse:
Stella teve uma noite com um estranho e o confundiu com o homem que a envolveu em um escândalo de prostituição, arruinando sua vida. Três anos depois, Stella se casou às pressas com um homem chamado Ethan, e os dois logo se apaixonaram. No entanto, aos poucos, Stella começou a perceber que Ethan era semelhante ao homem de três anos atrás. Para piorar, Ethan vinha escondendo de Stella que era CEO. Incapaz de aceitar a verdade, Stella decidiu se divorciar de Ethan.', 'https://vz-c2303ad7-0af.b-cdn.net/6ba8b39a-2e17-4f1c-86d3-2e389e41f04c/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-23T19:35:25.633808+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Meu Pobre Esposo É Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9b52cb8d-efa3-433c-b7ad-3a9b3bc1e636', 'Mil Vidas Por Amor E Uma Morte', NULL, 'Sinopse:
Lin Wan se liga por acaso a um "Sistema da Imortalidade" - mas cada morte consome sua força vital. Ela ama Gu Shiyan e o protege sempre, mesmo quando ele a envia para morrer por outra. Ele não sabe que é sua última vida ... Só sente arrependimento quando ela desaparece.', 'https://vz-c2303ad7-0af.b-cdn.net/9450871b-eebc-4f38-9372-55924c039237/playlist.m3u8', '[''mais-recomendado'']', '2025-07-23T19:33:55.433438+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mil Vidas Por Amor E Uma Morte'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '74c7db38-60ee-422d-9785-0fbf37c8ad94', 'Minha Mãe é Uma Chefe Da Máfia', NULL, 'Sinopse:
Catarina é neta de um líder de gangue no sul dos Estados Unidos. Ela descobre acidentalmente que está grávida e deixa a família para criar sua filha, Célia, sozinha, a fim de proporcionar um ambiente de vida normal. Inesperadamente, sua filha, Célia, foi intimidada pelo filho do homem mais rico da escola. Ela quer buscar justiça para sua filha. A diretora tem medo do poder da gangue de Jaime por trás da família de Jéremie e não só encobre Jéremie, mas também repreende Célia por intimidá-lo. Para se vingar, ela sequestra e abusa de Célia. Ao ver sua filha sofrer, Catarina recupera sua identidade. Dessa vez, ela quer vingar sua filha.', 'https://vz-c2303ad7-0af.b-cdn.net/3e649ecf-8475-475d-b934-69593f1a9f29/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-23T19:30:52.633015+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Mãe é Uma Chefe Da Máfia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd294835b-227e-4e3c-8010-c2546baf64c8', 'O CEO Que Comprou Meu Destino', NULL, 'Para pagar a cirurgia da mãe, Nina, uma estudante universitária, vende sua primeira noite por uma quantia alta a um estranho chamado Ian. Mas o destino prega uma peça cruel: pouco depois, sua mãe piora e precisa urgentemente de um transplante de rim artificial. Desesperada, ela aceita a ajuda de Evan, um pretendente, que a leva até seu tio — e para o choque de Nina, o tio é ninguém menos que Ian, o homem com quem ela passou aquela noite inesquecível...', 'https://vz-c2303ad7-0af.b-cdn.net/be4d086e-8070-4bac-8fc4-1a1d3b8f18a6/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T19:26:01.729179+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O CEO Que Comprou Meu Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1fa326c7-ba6c-4ffc-b327-9fa4fc8cba27', 'Não Desafie A Senhora Bilionária', NULL, 'Sinopse:
Juliet, a presidenta de um dos principais conglomerados financeiros, esconde sua identidade por amor. Ela se entrega completamente por sete anos, apenas para ser abandonada por seu namorado ambicioso, Charles. Para se vingar de Charles, ela faz um casamento por impulso com o chefe dele, Tristian. Em um próximo banquete, Charles está prestes a enfrentar este novo casal...', 'https://vz-c2303ad7-0af.b-cdn.net/27271eb7-2009-4dbd-98a0-e3da7bdf362b/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-23T18:23:06.801584+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Desafie A Senhora Bilionária'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'bbc4b182-9ea7-4f5b-a48a-6d410d9efa06', 'Noiva Fugitiva Uma Longa Volta A Você', NULL, 'Sara, a filha mais velha e desprezada da família, é forçada a se casar no lugar da meia-irmã com Cássio, um homem envolto em rumores sombrios e de impotência. Indignada, ela foge da cerimônia e sem saber, entra no carro do próprio “noivo”! Cássio, frio e misterioso, decide brincar com o destino: leva a bela fugitiva para casa e a mantém por perto. Entre silêncios intensos e olhares em brasa, a paixão explode...', 'https://vz-c2303ad7-0af.b-cdn.net/bc1c7a85-ee20-48e3-b5bd-2434792bf470/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T18:20:23.703532+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Noiva Fugitiva Uma Longa Volta A Você'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c09d19d3-334d-4d1e-9be8-55e4e0c9bc6f', 'O Dote Que Desfez O Amor', NULL, 'Sinopse:
Após ser enganada pela própria família, Nora Wood engravida de Tyler Holt, e o filho deles é chamado Bryan. Infelizmente, quando Bryan completa cinco anos, é diagnosticado com leucemia. Para cobrir as despesas médicas, Nora decide vender o pingente de jade da família que Tyler lhe deu, desencadeando uma busca por Bryan pela família Holt em toda a cidade. Enquanto isso, Nora se junta ao Holt Group como secretária de Tyler. À medida que trabalham juntos, seus sentimentos um pelo outro crescem, e o relacionamento deles floresce com o tempo.', 'https://vz-c2303ad7-0af.b-cdn.net/7bf50b01-7f67-4a98-9024-e579f5bd55c1/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-23T18:08:36.399152+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Dote Que Desfez O Amor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '4807d963-78c7-4c5e-9c9d-d2dde3b2a59f', 'O Legado Perdido Do Chef Divino', NULL, 'Diego Lima, tricampeão mundial de culinária, abandona a fama em busca do verdadeiro significado da arte culinária. Vagando sem rumo, é acolhido por Nina Alves e vira ajudante no Restaurante Casa do Bambu. Quando um plano maquiavélico ameaça o restaurante, Diego aceita um desafio culinário extremo para salvar o legado da família e honrar a generosidade de Nina, colocando sua vida e o destino do Casa do Bambu em jogo.', 'https://vz-c2303ad7-0af.b-cdn.net/9ce90e75-5bbb-4944-a7aa-b1bef16c4c6a/playlist.m3u8', '[''mais-recomendado'']', '2025-07-23T18:06:27.439277+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Legado Perdido Do Chef Divino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '2705b586-a19a-476e-b93c-b0d73ede2ff9', 'O Pai Do Meu Filho É O Tio Richard', NULL, 'Sinopse:
Jocelyn foi assassinada ao flagrar seu marido, Colton, traindo-a com sua meia-irmã. Num milagre, Deus lhe concedeu uma segunda chance, fazendo-a retornar ao instante em que foi pedida em casamento, três anos antes. Agora, ela não permitiria que saíssem impunes.', 'https://vz-c2303ad7-0af.b-cdn.net/3e89f175-8832-4bf0-b2b3-235fdf1516d0/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-23T05:13:09.302665+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Pai Do Meu Filho É O Tio Richard'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3dbb6c9d-28ab-4984-a79b-ec68e2f83e36', 'Odeio Como Te Amo', NULL, 'Sinopse:
Acompanha a história de Yeo Mi-Ran, uma advogada que tem uma relação conflituosa com os homens, e Nam Gang-Ho, um famoso ator que não confia em mulheres. Embora nenhum deles procure um relacionamento, eles se veem envolvidos em um intenso ciclo de amor e ódio.', 'https://vz-c2303ad7-0af.b-cdn.net/0ca44e16-d2e6-448f-b2aa-ea33267b52d1/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-23T05:09:23.106748+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Odeio Como Te Amo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '77c0f3fa-fe4e-4bbe-a8a3-d9b215776472', 'Paga Com Dor', NULL, 'Para salvar sua mãe, ela traiu seu amado e a CEO se envolveu novamente com seu antigo amante', 'https://vz-c2303ad7-0af.b-cdn.net/d03bb43c-fbf2-4936-9b71-a368b48916aa/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''identidade-escondida'']', '2025-07-23T05:02:42.667739+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Paga Com Dor'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '548b3a73-7a7f-4667-aaa1-75206e2e7614', 'Pai Da Mafia E Os Seis Destinos', NULL, 'Sinopse:
Há sete anos, Bianca conheceu um homem e, sob efeito de drogas, teve seis filhos com ele. Mesmo após todo esse tempo, nunca conseguiu esquecê-lo. Agora, em um banquete a que foi obrigada a comparecer, eles se reencontram. Entre olhares e tensão, surge a dúvida: será essa a chance de reacender a paixão que os uniu?', 'https://vz-c2303ad7-0af.b-cdn.net/831e9265-b71e-4713-ab51-a1b1d5b74822/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''identidade-escondida'', ''bebes-e-gravidezes'']', '2025-07-23T04:59:23.102581+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Pai Da Mafia E Os Seis Destinos'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b5fd7a80-421c-4e96-86f1-db03f9bbc80d', 'Petiscar o Amor Arriscado', NULL, 'Sinopse:
A reviravolta familiar e o grave adoecer de seu irmão mergulha Liliane Nunes em apuros financeiros. Em um trabalho eventual, ela reencontra Augusto Castro, seu crush há oito anos, e vende a virgindade para ele. Ela pensa que jamais terá conexão com Augusto, o playboy da alta sociedade de São José, mas ele fica viciada nela, e salva ela constantemente de crimes inesperados', 'https://vz-c2303ad7-0af.b-cdn.net/c8077111-11c4-4540-bff8-e6fe24864a5f/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T04:54:54.026787+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Petiscar o Amor Arriscado'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b87b29d1-e44c-4ff4-acd4-784ca1ead24b', 'Quando O Amor Se Foi', NULL, 'Sinopse: Com foco em Teresa, uma jovem que perde tudo com a falência da família na infância e é acolhida por uma nova família, vivendo ao lado dos irmãos Gláucio e Vinícius. A história acompanha a vida de Teresa e os desafios que enfrenta, especialmente com a chegada de pessoas que a trazem à memória da família Passos e a remetem para o passado.', 'https://vz-c2303ad7-0af.b-cdn.net/5e4f19fd-8220-44f9-b050-e8e8f4857d03/playlist.m3u8', '[''mais-recomendado'']', '2025-07-23T04:51:15.399008+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Quando O Amor Se Foi'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f7a95cf5-d691-45cd-bbc6-e1733855ada9', 'Rainha Não Amante', NULL, 'Sinopse:
A mulher mais rica do mundo, Sarah, volta aos Estados Unidos para participar da cerimônia de casamento de seu único filho, Teddy. Mas ela é confundida pela noiva do Teddy, Lucinda, com a amante dele, e Lucinda a agride, insulta e tira fotos indecentes dela. Até que o Teddy chega e grita furioso, a Sarah é minha mãe!', 'https://vz-c2303ad7-0af.b-cdn.net/bb7d0aed-6c24-48f2-a1e8-71f9e2996b6a/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-23T04:49:16.648799+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rainha Não Amante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a7993ed2-8403-4f79-9dbc-002fd36582d9', 'Recompensa De Sangue A Herdeira Retorna', NULL, 'Nova Park desaparece num acidente. Sua mãe, Zoe Park, cria o maior conglomerado do mundo e oferece uma recompensa gigante para encontrá-la. Anos depois, ela descobre Nova em um laboratório médico — apenas para testemunhar a filha sendo humilhada por oportunistas. Agora, Zoe fará todos pagarem caro.', 'https://vz-c2303ad7-0af.b-cdn.net/3fe39a77-100b-4f55-8565-6cb411509f68/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-23T04:46:09.812886+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Recompensa De Sangue A Herdeira Retorna'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'f168edea-df5b-4c93-b3d7-32c93d3de649', 'Reencontro Com Uma Paixão', NULL, 'Sinopse:
Após um grave acidente de carro  que o deixou temporariamente paralisado, ele acreditava que sua namorada o havia abandonado no momento mais difícil 

Cinco anos depois, o destino faz com que seus caminhos se cruzem novamente  e a verdade que ele descobre é muito mais profunda e emocionante do que imaginava 

Uma história sobre amor, perdão e recomeços.', 'https://vz-c2303ad7-0af.b-cdn.net/f3b2e24b-630e-4b65-b473-62120c955cfc/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'', ''identidade-escondida'']', '2025-07-23T04:37:54.097045+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Reencontro Com Uma Paixão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9ffcf7f4-23d4-427e-bab3-158b1b658f7e', 'Rei do Box E Sua Empregada Picante', NULL, 'Sinopse:
Campeão do UFC, Leo salva uma florista tímida do perigo — e acaba passando uma noite inesquecível com ela. Ela desaparece, mas no certo dia, retorna como sua empregada e amante por contrato. Frio, rico e acostumado a ter controle, Leo nunca esperou se apaixonar. Mas quando o ciúme se acende com a trama de uma socialite rival, Marcela se afasta — grávida e com o coração partido. Agora Leo precisa perseguir a mulher que mudou tudo.', 'https://vz-c2303ad7-0af.b-cdn.net/857692dd-5dae-4c4b-bc86-edd05d0c80f4/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-23T04:33:12.043834+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rei do Box E Sua Empregada Picante'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '63b95a8d-564a-41ad-8300-e9d23d442dbd', 'Rumo À Ruína Pagar As Suas Ações', NULL, 'Após um grave acidente de carro, Liam entra em coma por três anos, enquanto Daviana abandona seus estudos para cuidar dele. O que ninguém sabe é que Liam é o herdeiro secreto do Grupo Poogle e da poderosa familia Batista. Durante um evento beneficente, Jeremias tenta levar Daviana à força, mas, naquele exato momento, Liam desperta e chamou sua familia, que impede a tragédia. No casamento deles, os parentes de Daviana ridicularizam Liam…', 'https://vz-c2303ad7-0af.b-cdn.net/4b878c13-b6b4-4d97-aa44-0417314765a2/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T04:31:01.994064+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Rumo À Ruína Pagar As Suas Ações'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7b837e70-94d8-4a79-9f15-59d27a631111', 'Saia Da Frente Eu Sou O Chefe Final', NULL, 'Sinopse:
Kingsley é o rei secreto da Empresa King e o homem mais rico do mundo, mas quando volta da guerra, a sua namorada de infância o abandona sem dó nem piedade, achando que ele não passa de um palhaço. O que vai fazer o rei de todos os homens para que ela se arrependa?', 'https://vz-c2303ad7-0af.b-cdn.net/a2d8b576-0671-4616-90ba-53297db6c8c4/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T04:27:17.700044+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Saia Da Frente Eu Sou O Chefe Final'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd4c5ddfc-ff1d-4cac-8009-076c31fdf604', 'Segredos Da Orquídea', NULL, 'Ursula Macedo desistiu do seu estudo e foi para o exterior lutar pelo futuro com seu namorado, Alfredo. Lá, ela fundou o Grupo Orquídea e, em sete anos, o transformou no maior conglomerado do mundo. Com o apoio secreto de Úrsula, Alfredo se formou e conseguiu um emprego admirável no Grupo Cabral. Depois, Alfredo abandonou Úrsula publicamente por vaidade. Mas ele não esperava por uma bofetada de luva branca da sua ex com Faustino, seu chefe no futuro.', 'https://vz-c2303ad7-0af.b-cdn.net/fcd6546e-1ce9-4d12-a5dd-411d8ccec648/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T04:25:03.349151+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Segredos Da Orquídea'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '286a5b96-a77b-4e48-8689-4a029c556fc4', 'Sou Nada Mais Que Um Mortal', NULL, 'Rodrigo, discípulo do Monte Locust, alcança o nível de Solo Celestial em apenas 20 anos. Incapaz de ensiná-lo mais, seu mestre Benjamim, um orgulhoso, mente que ele não tem constituição para cultivo e o manda embora. Rodrigo salva Alexandre, que é ferido por uma barra de aço atravessando seu crânio enquanto todos se sentem impotentes. Em retribuição, Alexandre leva Rodrigo ao Clã Imortal, onde ele é testado com a Pérola Divina Caótica, que revela seu talento verdadeiro...', 'https://vz-c2303ad7-0af.b-cdn.net/d086ec18-9260-4acf-977a-d22066f0a24c/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-07-23T04:18:29.279407+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Sou Nada Mais Que Um Mortal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd74ec6f7-60f7-4875-8904-36f98b077bb6', 'Spark Me Tenderly', NULL, 'Sinopse:
Floris Blossom precisa desesperadamente de dinheiro para salvar sua mãe. Sem saída, ela bate à porta do impiedoso bilionário Sr. Brighton. O que começa como uma entrevista logo se transforma em uma história de sedução e poder. Será que ela estará disposta a fazer qualquer coisa para salvar sua família? E será que ele conseguirá resistir a essa mulher única?', 'https://vz-c2303ad7-0af.b-cdn.net/b027e7e8-8c93-4e76-83fe-f62b6671963a/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-23T04:14:41.027062+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Spark Me Tenderly'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '84d3bf6c-fed0-4c18-ba9d-261f22cd6ca0', 'Substituta Acidental Para Alfa', NULL, 'Ella tem um medo mortal de lobisomens; agora ela está grávida de um. Forçada a um casamento por contrato com o bilionário alfa Dominic Moon, ela precisa esconder sua identidade para sobreviver.', 'https://vz-c2303ad7-0af.b-cdn.net/94aa1fc3-1848-41ea-b695-92b6c60f936c/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-23T04:10:49.114647+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Substituta Acidental Para Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '105e8787-1574-404e-97cd-f425d1a02b89', 'Te Perdoei 99 Vezes', NULL, 'Pra ajudar na carreira do marido, Damien. Vívianne esconde sua identidade de herdeira e passa a viver com ele fingindo ser garçonete. No dia em que Damien é nomeado ceo do grupo ele dá uma festa e convoca seus melhores amigos para comemorar. Vivienne o flagra furtando abertamente com a secretária. Vivienne já perdoou 99 vezes, mas pela 100ª vez não tolera a infidelidade do marido, e ao mesmo tempo revela sua verdadeira identidade.', 'https://vz-c2303ad7-0af.b-cdn.net/ce316aab-9b77-470e-84d3-23b65eb54422/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-23T02:45:37.957554+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Te Perdoei 99 Vezes'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'a5705a0c-3bdf-4d79-954a-bf7595b9eeef', 'Ternura Desvanecida', NULL, 'Sinopse:
Xu Qi, a filha amada da família Xu que havia sido mimada em todos os sentidos, descobriu que não era a verdadeira filha da família Xu. Desde que a verdadeira filha, Xu Mingzhu, foi reconhecida e retornada à família, seus pais e irmão mais velho, que sempre a haviam consentido, começaram a acreditar cegamente na versão unilateral de Xu Mingzhu. Acreditando erroneamente que Xu Qi tinha empurrado sua avó downstairs, causando-a a entrar em coma, os membros da família Xu a enviaram a uma escola de virtudes femininas para que se arrependesse e melhorasse. Como resultado, Xu Qi sofreu três anos de torturas inhumanas e adquiriu deficiências permanentes e irreversíveis. Três anos depois, Xu Qi foi recolhida pela família Xu. Os membros da família Xu descobriram que a Xu Qi que costumava ser radiante e amante da risada agora se afastara de todos.', 'https://vz-c2303ad7-0af.b-cdn.net/3d3f8609-ba5a-4ce7-bb61-7c86d7086de3/playlist.m3u8', '[''identidade-escondida'', ''mais-recomendado'']', '2025-07-23T02:35:01.449944+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ternura Desvanecida'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'fe84a18a-2589-4f7f-a15a-0a16d6cc6e9f', 'The Age Gap', NULL, 'Sinopse:
Quando uma escritora recebe a tarefa de entrevistar um astro do rock, uma noite inesperada muda tudo. Entre manchetes e holofotes, nasce uma paixão que vai além da relação profissional.', 'https://vz-c2303ad7-0af.b-cdn.net/d60c96b7-80ad-44c4-92c2-6519e2dc3d44/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-23T02:32:53.606466+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'The Age Gap'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '67619011-1aa7-4550-98d2-9fd626ec6ec2', 'The Mafia Boss', NULL, 'Sinopse:
A policial disfarçada Talia Rici se infiltra na multidão para derrubar o chefe Luciano Romano. Sua missão se complica à medida que ela desenvolve sentimentos por ele, testando sua lealdade e determinação.', 'https://vz-c2303ad7-0af.b-cdn.net/5c0f01f0-b2da-4881-a180-e0b9dedcb70c/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-23T02:31:44.126639+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'The Mafia Boss'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '5e0e01ae-f002-4889-b496-1ccc03acd49f', 'Três golpes E Uma Pena De Adeus', NULL, 'Sinopse:
Poliane dedica anos de seu juventude a Sebastião, sendo sua assistente leal e amando-o em silêncio. Uma noite de embriaguez muda tudo, ela engravida e os dois se casam em segredo. Pensando ter finalmente encontrado a felicidade, Poliane logo percebe que sua vida vira um pesadelo. Sebastião nunca deixou de amar Julieta e, obcecado, não hesita em magoar Poliane e seu filho para agradar sua amada do passado...', 'https://vz-c2303ad7-0af.b-cdn.net/fa4d19a7-795c-4d49-b82b-a29f50389d3a/playlist.m3u8', '[''mais-recomendado'', ''bebes-e-gravidezes'', ''relacionamento-tabu'']', '2025-07-23T02:29:25.084195+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Três golpes E Uma Pena De Adeus'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '25f3ce1d-2da2-4ba8-80af-ffa68cd3b92d', 'Um Encontro Às Cegas Com Meu Novo Destino', NULL, 'Sinopse: Jessica é uma mãe solteira que luta para sobreviver e perde a filha, Lola, para os serviços sociais. Anos depois, ela se casa sem saber com James Parker, um bilionário que é justamente o pai adotivo de Zoe. Com o passar do tempo, os segredos vêm à tona, e Jessica descobre que Zoe é, na verdade, sua filha desaparecida. Juntas, elas enfrentam traições, ameaças e corações partidos para se reunirem como uma verdadeira família.', 'https://vz-c2303ad7-0af.b-cdn.net/2c1215a2-1b57-4534-9dec-e99d0b479702/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-23T02:27:41.492809+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Um Encontro Às Cegas Com Meu Novo Destino'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b9c45efc-0e86-4a90-b7e9-e646132a170f', 'Velocidade Furiosa', NULL, 'Sinopse:
O deus do automobilismo, tricampeão mundial, An Wen Yi, caiu de seu pedestal depois de ser traído por seu irmão. A queda do paraíso ao inferno, somada à morte de seu pai, o fez perder a vontade de lutar, tornando-se um mecânico de um clube de corrida. Com o apoio e incentivo da protagonista, Gu Qing Xue, ele ajudou o clube a superar várias dificuldades, retornando ao trono e conquistando o campeonato da corrida de Basiric.', 'https://vz-c2303ad7-0af.b-cdn.net/fe0dfcc8-9910-4c3f-9197-82ad09884af0/playlist.m3u8', '[''mais-recomendado'']', '2025-07-23T02:25:41.13126+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Velocidade Furiosa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'b343f3b3-2f1f-4939-b32c-7d7c2469580b', 'Vendi a Minha Virgindade Para o SR Dantas', NULL, 'Sinopse:
Quando Bella decide se tornar stripper para salvar seu irmão acamado e é humilhada por seus colegas, ela conhece seu herói, o cavalheiro e belo magnata Sr.', 'https://vz-c2303ad7-0af.b-cdn.net/0638fb0c-3685-4e07-9473-ac0eb1ef57de/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T02:24:12.706304+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Vendi a Minha Virgindade Para o SR Dantas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1d854240-0cfe-4b89-976c-6ed19ba4eb02', 'Você Pertence A Mim', NULL, 'Sinopse:
Kristine Wilson sempre fez a coisa certa, foi a namorada perfeita, a filha perfeita, mas tudo muda quando ela conhece Henry Lockwood. Depois de passar anos sendo abusada pela família e traída pelo noivo, ela está farta e acabada! Para se vingar daqueles que a injustiçaram, Kristine toma uma atitude ousada. ela seduz Henry, o TIO de seu noivo traidor e herdeiro aparente da fortuna da família Lockwood...', 'https://vz-c2303ad7-0af.b-cdn.net/810a91a7-ffde-4328-9ce4-b62a681bc9b5/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-23T02:19:09.478362+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Você Pertence A Mim'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '215af9dc-6ec1-4344-a8d2-98b6bcdf62a6', 'Minha Esposa XXL', NULL, 'Maddy Moss, uma dona de casa de 250 libras, se transforma em uma beldade depois que seu marido, Luke, a abandona pela amante. Para conquistar o interesse de Felix, um bilionário, Maddy se vinga de Luke, de Olivia e da mãe de Luke', 'https://vz-c2303ad7-0af.b-cdn.net/5218f0d2-c5fa-4031-845b-c72bb1a90233/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''novo-lancamento'']', '2025-07-23T02:14:12.541507+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Minha Esposa XXL'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '184de844-0741-4087-bf50-c274b70c408b', 'A Rejeitada Luna Voltou Com Um Filho', NULL, 'Sinopse:
Sia retorna com seu filho cinco anos após se divorciar de Alpha Reagon, apenas para descobrir que ele nunca a divorciou oficialmente e a odeia, acreditando que ela o traiu. Agora, forçada por Reagon a trabalhar como stripper como forma de vingança, Sia enfrenta o peso das mentiras do passado, enquanto Reagon luta contra seu desejo de puni-la e o amor que ainda sente por ela. O que ele não sabe é que Sia o ama e que o filho dela é, na verdade, dele.', 'https://vz-c2303ad7-0af.b-cdn.net/eadbc624-7ff5-46b0-bb46-e9ab6d37bbb7/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-e-gravidezes'', ''homem-lobo'']', '2025-07-23T02:10:33.273467+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Rejeitada Luna Voltou Com Um Filho'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '16fdb7d0-fce6-4c7d-9fcc-3d17d6e44cbb', 'A Tortura Delicada Da Mafia', NULL, 'Sinopse: "A Tortura Delicada da Máfia" descreve uma jovem, Vanessa, que se vê envolvida no mundo da máfia para arrecadar dinheiro para seu pai, sendo escolhida como amante por contrato de Raimundo, um chefe da máfia. No entanto, Raimundo tem um amor secreto por Vanessa há anos, e a trama explora a complexidade do relacionamento deles e como superar as dificuldades entre dinheiro e amor, incluindo o perigo e segredos da máfia.', 'https://vz-c2303ad7-0af.b-cdn.net/b61bc58f-6424-4a32-9ded-447560364410/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'', ''relacionamento-tabu'']', '2025-07-23T02:09:13.488+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Tortura Delicada Da Mafia'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '95942204-57e5-42e6-997c-3ee502ccf920', 'Alma Gêmea Indesejada [DUBLADO]', NULL, 'Sinopse: Uma garota humana vê seu companheiro destinado ser roubado por outra, supera inúmeros obstáculos para resgatar seu companheiro destinado e descobrir sua herança de lobisomem...', 'https://vz-c2303ad7-0af.b-cdn.net/b513d506-ac97-4449-b5e0-44014b5bce30/playlist.m3u8', '[''homem-lobo'', ''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-23T02:07:07.242091+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Alma Gêmea Indesejada [DUBLADO]'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3b264eec-ddea-44f4-b51c-0174c8da44ff', 'Apaixonando-Me Pelo Pai Mafioso Do Meu Ex', NULL, 'Sinopse: Fay Alden flagra o seu namorado, Daniel, em plena traição e termina com ele. Logo depois, Fay conhece o pai de Daniel, Kent Lippert, o Rei da Máfia. Kent não apenas revela que o verdadeiro pai de Fay é o Mafioso Don Lorenzo Alden, como também lhe faz uma proposta: casar-se com o seu filho para unir os dois clãs, prometendo proteção contra crimes violentos para Fay e sua família. Fay aceita, e Daniel fica bem animado com a ideia pois assim vai poder distrair o seu pai de uma verdade incômoda: ele é gay. Enquanto tenta se adaptar no novo mundo da Máfia, Fay não consegue negar a sua atração crescente por Kent, pai de Daniel. Os dois acabam vivendo um caso de amor secreto, intenso e marcado por práticas de BDSM. Contudo, Don Alden não é quem aparenta ser e a sua intenção é utilizar Fay como moeda de troca para selar uma aliança com o chefão russo Ivan Kozlov. Fay e Ivan acabam flertando, o que abala ainda mais o noivado de fachada com Daniel. Fay acaba compreendendo, já tarde demais, que não só o seu pai e Ivan estão trabalhando juntos para destruir a Kent, como também que Ivan é um policial infiltrado que quer prender Kent, para depois ficar com a Fay só para si. Grávida de Kent, e depois de ele ser preso por ação de Ivan e Don Alden, Fay decide fazer de tudo para libertar o pai do filho que carrega na barriga. Com a ajuda de Daniel, ela derruba Don Alden e obriga Ivan a limpar o nome de Kent. No fim, Fay e Kent se casam e vivem seu final feliz.', 'https://vz-c2303ad7-0af.b-cdn.net/6ef54409-166b-4667-8d22-48b1b1a0c6d2/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-23T02:03:06.562497+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apaixonando-Me Pelo Pai Mafioso Do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'be1511b9-db09-4cc3-8239-40107108f928', 'Casamento Em Chamas', NULL, 'Sinopse:
Após três anos em um casamento arranjado, sem amor e sem intimidade, Edith Blair descobre que seu irresistível marido bombeiro engravidou outra mulher e exige o divórcio! Isso, no entanto, significa abrir mão de uma paixão secreta que cultivou por dez anos. Para sua surpresa, ele se recusa a assinar os papéis, a menos que ela aceite fingir ser sua esposa apaixonada por mais um mês…Então que Edith descobre um grande mal-entendido que os separou desde o início.', 'https://vz-c2303ad7-0af.b-cdn.net/63035ec1-c526-4276-8758-7a8dffbe37e4/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-23T01:57:10.60926+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Casamento Em Chamas'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '9fea99b8-325c-438b-8a64-d030d95bb8d5', 'De Volta Ao Coração Dela', NULL, 'Sinopse:
A esposa do CEO volta para casa para se reconectar com sua família, mas foi ridicularizada e atacada impiedosamente por sua irmã adotiva. Normalmente ela é discreta, mas chega ao seu limite e decide revidar!', 'https://vz-c2303ad7-0af.b-cdn.net/9b460d2c-a618-4537-be3f-1066918c9ca7/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-23T01:55:57.523048+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'De Volta Ao Coração Dela'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '345c57a8-2058-4256-8e17-3b76523b3f90', 'Mulher Grávida, Mimada pelo Marido Rico', NULL, NULL, 'https://vz-c2303ad7-0af.b-cdn.net/c2a686df-876b-4918-a131-8857974346cf/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-23T01:54:35.83446+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Mulher Grávida, Mimada pelo Marido Rico'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd2f7ee54-a649-4eaf-8e1a-a27085c3f8ee', 'Não Desperte O Dragão Dormindo', NULL, 'Sinopse:
Domingos, após financiar os estudos de sua namorada Anabela e a ajudar a alcançar o sucesso financeiro, é cruelmente rejeitado por ela, que afirma que não pertencem mais ao mesmo mundo. Enquanto isso, a poderosa CEO Teresinha percebe o verdadeiro valor de Domingos e o surpreendé com uma proposta de casamento, deixando todos ao redor atônitos.', 'https://vz-c2303ad7-0af.b-cdn.net/c1dbfd96-3205-488b-ab85-6365864003fb/playlist.m3u8', '[''mais-recomendado'', ''amor-primeira-vista'']', '2025-07-23T01:53:30.077565+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Não Desperte O Dragão Dormindo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '18e1cc9a-d7b1-4b48-ae9f-2c2a9b33a3ff', 'O Retorno do Jovem Mestre', NULL, 'Sinopse:
O Diogo Silva nasceu em uma família rica. Três anos atrás, o Diogo começou a namorar a Luana Moreira sob a identidade de uma pessoa comum. Durante esse período, ele entrou em coma por um acidente repentino. A Luana fez tudo para cobrir as despesas médicas do Diogo, que finalmente acordou. Para retribuir a Luana e sua família por todo o sacrifício, o Diogo reassumiu sua identidade de herdeiro e começou sua jornada de contra-ataque.', 'https://vz-c2303ad7-0af.b-cdn.net/5256e2e5-e99b-4575-a7c0-52ad4e3630aa/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-22T21:54:16.790276+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno do Jovem Mestre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1894f73b-ff32-4a38-9bab-0359ec92433f', 'Viciado Nela, A Querida Mimada Do CEO', NULL, 'Sinopse:
A série "Viciado nela a Querida Mimada do CEO" é uma novela de romance que envolve um CEO e uma protagonista que é mimada e considerada "a querida". A trama geralmente gira em torno de um relacionamento entre eles, com conflitos, paixão e um envolvimento intenso. A história pode envolver um casamento arranjado, uma noite de paixão, ou um envolvimento inesperado.', 'https://vz-c2303ad7-0af.b-cdn.net/84592df1-dea6-4858-aed0-8519f0cebba5/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-22T21:52:28.533324+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Viciado Nela, A Querida Mimada Do CEO'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '78e9f048-cb4c-4a68-b01f-e35216312f4d', 'Dinheiro, Armas E Um Feliz Natal', NULL, 'Sinopse:
Damian, o CEO do grupo militar-industrial mais poderoso do mundo, é confundido com um vendedor humilde que ganha apenas $ 3.000 por mês. Inesperadamente, ele entra em um casamento por contrato com Iris, a chefe de uma empresa. Damian acompanha Iris à sua cidade natal para um jantar de Natal, onde enfrenta constantes menosprezos dos parentes dela e zombarias do pretendente de Iris. Damian reverte a situação repetidamente, provando seu poder e status, e, no final, encontra o verdadeiro amor com Iris.', 'https://vz-c2303ad7-0af.b-cdn.net/14fe3e65-99fe-42da-b7eb-aced109eb761/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''amor-primeira-vista'']', '2025-07-22T04:04:21.517+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Dinheiro, Armas E Um Feliz Natal'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '217a08f4-bd4d-43e9-ae92-bee592f25341', 'Apaixonando-Me Pelo Pai Mafioso Do Meu Ex', NULL, 'Sinopse:
Fay Alden flagra o seu namorado, Daniel, em plena traição e termina com ele. Logo depois, Fay conhece o pai de Daniel, Kent Lippert, o Rei da Máfia. Kent não apenas revela que o verdadeiro pai de Fay é o Mafioso Don Lorenzo Alden, como também lhe faz uma proposta: casar-se com o seu filho para unir os dois clãs, prometendo proteção contra crimes violentos para Fay e sua família. Fay aceita, e Daniel fica bem animado com a ideia pois assim vai poder distrair o seu pai de uma verdade incômoda: ele é gay. Enquanto tenta se adaptar no novo mundo da Máfia, Fay não consegue negar a sua atração crescente por Kent, pai de Daniel. Os dois acabam vivendo um caso de amor secreto, intenso e marcado por práticas de BDSM. Contudo, Don Alden não é quem aparenta ser e a sua intenção é utilizar Fay como moeda de troca para selar uma aliança com o chefão russo Ivan Kozlov. Fay e Ivan acabam flertando, o que abala ainda mais o noivado de fachada com Daniel. Fay acaba compreendendo, já tarde demais, que não só o seu pai e Ivan estão trabalhando juntos para destruir a Kent, como também que Ivan é um policial infiltrado que quer prender Kent, para depois ficar com a Fay só para si. Grávida de Kent, e depois de ele ser preso por ação de Ivan e Don Alden, Fay decide fazer de tudo para libertar o pai do filho que carrega na barriga. Com a ajuda de Daniel, ela derruba Don Alden e obriga Ivan a limpar o nome de Kent. No fim, Fay e Kent se casam e vivem seu final feliz.', 'https://vz-c2303ad7-0af.b-cdn.net/6ef54409-166b-4667-8d22-48b1b1a0c6d2/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''relacionamento-tabu'']', '2025-07-22T04:02:21.417+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Apaixonando-Me Pelo Pai Mafioso Do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'd54c2147-9970-455f-835d-d0b2c6fb8e1b', 'Herdeira Verdadeira VS Rainha Falsa', NULL, 'Sinopse:
Hailey Kaplan é uma adolescente rica que decide esconder sua verdadeira identidade quando se transfere para a Western High, uma escola pública. Cansada de ser conhecida apenas pela riqueza de sua família, Hailey espera fazer amigos verdadeiros e ter uma vida normal de adolescente. No entanto, seus planos vão por água abaixo quando Candice Mathis, filha da empregada da família Kaplan, chega à escola se passando pela herdeira dos Kaplan. Candice sobe rapidamente ao topo da hierarquia social, enquanto Hailey se vê na parte inferior, sujeita a bullying e ridicularização.', 'https://vz-c2303ad7-0af.b-cdn.net/f1ac26ee-b672-4b81-bb0e-2df1ca7b673c/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'']', '2025-07-22T04:01:07.619+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Herdeira Verdadeira VS Rainha Falsa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT 'c00f25be-b576-4264-ae5f-6594cc4b3266', 'Grávida Do Herdeiro Do Império De Luxo', NULL, 'Sinopse:
Sofia, vendedora, tem uma noite com o CEO Bryan e engravida. Sofre abusos no trabalho e em casa, até que Bryan a ajuda a superar tudo. Encantado por sua força, ele se apaixona e propõe casamento. Juntos, iniciam uma vida feliz.', 'https://vz-c2303ad7-0af.b-cdn.net/4c80e443-6ecf-4795-8fa9-ec4723bb7b17/playlist.m3u8', '[''mais-recomendado'']', '2025-07-22T03:56:12.606+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida Do Herdeiro Do Império De Luxo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '43b20be4-f8e6-4739-9b5d-bb65c6d0b3d1', 'Uma Rainha Nunca Chora', NULL, 'Sinopse:
 Há sete anos, Nicole deixou a fortuna da família para trás por amor ao marido, Ethan. Ela achava que era a esposa e mãe mais feliz do mundo — até que Ethan e sua melhor amiga, Elaine, a colocaram na cadeia e tiraram sua filha dela. Agora que enxerga quem eles realmente são, Nicole decide recuperar seu posto de herdeira, trazer sua filha de volta e mostrar a todos o que é ser uma verdadeira 
rainha.', 'https://vz-c2303ad7-0af.b-cdn.net/d19ad360-4c5c-41b6-bd07-e0aa6bd3c8dc/playlist.m3u8', '[''mais-recomendado'']', '2025-07-22T03:54:58.573+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Uma Rainha Nunca Chora'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '6423ebce-b345-41b3-b70a-488d6e741bc9', 'Obcecado Por Sua Noiva Silenciosa', NULL, 'Sinopse: 
Acolhida pela família Calvert, Eva sempre amou Declan Calvert, o garoto que cresceu como seu protetor. Sem conseguir falar desde o nascimento, ela luta para expressar seus sentimentos em um casamento construído pelo dever — Declan se casou com ela apenas para honrar o último desejo de seu avô. Presa em uma união tóxica, Eva aguenta a crueldade de Declan e os planos implacáveis ​​de sua amante, Selene, para expulsar ela. Apesar de tudo, Eva se apega à esperança de que Declan possa redescobrir o amor que um dia compartilharam quando crianças. Condenada ao silêncio, Eva precisa decidir: lutar pelo coração dele ou se libertar antes que seja tarde demais.', 'https://vz-c2303ad7-0af.b-cdn.net/7bf065fe-168f-428f-8e18-a5472140d072/playlist.m3u8', '[''mais-recomendado'']', '2025-07-22T03:53:39.709+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Obcecado Por Sua Noiva Silenciosa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '07a1d11b-d794-4a35-adef-da340194dfb3', 'A Companheira Amaldiçoada Do Alfa', NULL, 'Sinopse:
Shay Santos finalmente está pronta para perder sua virgindade, porém quando ela tenta surpreender seu namorado, ela encontra ele a traindo! De coração partido, ela sai com sua melhor amiga e promete dormir com o primeiro cara que chegar nela... Que no caso é o poderoso Alfa Mal Haywood. A atração entre eles é instantânea, animalesca e algo entre um humano e um lobisomem é... Proibido. Porém esse não é o único problema: Mal foi amaldiçoado e se ele não marcar Shay como sua parceira e impregná-la com seu filhote, ele morrerá!', 'https://vz-c2303ad7-0af.b-cdn.net/6e5458cc-9bf1-4c15-8eaf-7d6ddca40160/playlist.m3u8', '[''mais-recomendado'', ''homem-lobo'']', '2025-07-22T03:51:54.412+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Companheira Amaldiçoada Do Alfa'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '867f8dc6-ec48-47e1-b79d-ee52db0cb2d6', 'Grávida Por Acidente Mimada Para Sempre', NULL, 'Sinopse:
Julia quase perdeu a vida pelo marido Klaus. No entanto, descobriu que Klaus a traiu e teve um filho com outra mulher. Desanimada, divorciou-se e recuperou a sua verdadeira identidade de neta do homem mais rico do mundo… Klaus sempre amou profundamente Julia. Pensou que Julia se tinha apaixonado por outro homem, por isso fingiu deliberadamente trair e divorciou-se, dando-lhe liberdade. No entanto, ele nunca poderia realmente deixá-la ir no seu coração…', 'https://vz-c2303ad7-0af.b-cdn.net/eb76e093-472e-48ee-9fd4-c0d21bcd3179/playlist.m3u8', '[''mais-recomendado'']', '2025-07-22T03:49:51.814+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Grávida Por Acidente Mimada Para Sempre'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '42917906-2f55-437b-8171-856112d36c28', 'Professor Isso Tem Que Ficar Entre Nós', NULL, 'Sinopse:
Ellie está vivendo uma vida dupla: estudante de dia e stripper mascarada à noite. Quando o charmoso Jackson Steele entra no clube, Ellie escolhe ele como o seu novo cliente favorito. Porém, quando Ellie se apercebe que Jackson é seu professor da faculdade, ela entende que precisa lutar contra a atração crescente entre ambos. Será que Ellie vai conseguir manter a sua vida dupla? Ela vai conseguir resistir ao seu professor que a observa dançar todas as noites?', 'https://vz-c2303ad7-0af.b-cdn.net/e2b4dccc-d4e5-4938-a083-2d703863525b/playlist.m3u8', '[''mais-recomendado'', ''novo-lancamento'']', '2025-07-22T03:46:13.954+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Professor Isso Tem Que Ficar Entre Nós'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '7981363d-57d3-44c5-aebc-f2b80a99e2da', 'Engravidada Pelo Pai do Professor do Meu Ex', NULL, 'Sinopse:
No primeiro dia de aula, Emily flagra o namorado a traindo. Naquela noite, ela tem um encontro casual com um estranho chamado Charles. No dia seguinte, os dois ficam chocados ao descobrir que Charles é o novo professor de Emily. Eles mantêm uma relação profissional de aluno e professor, mas há uma tensão inegável entre eles. Justamente quando Emily pensa que tudo vai voltar aos trilhos, ela descobre inesperadamente que está grávida...', 'https://vz-c2303ad7-0af.b-cdn.net/1456580b-5454-4c9e-909c-7ac26f6579fe/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-22T03:42:07.144+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Engravidada Pelo Pai do Professor do Meu Ex'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '1d27f18c-61ff-4546-8b44-54d1b6b6fa91', 'O Segredo Sujo Do Meu Meio Irmão', NULL, 'Alice foi transferida para a escola St. Marys High School depois que sua mãe se casou outra vez com um milionário, mas acabou se desentendendo com James, um colega de classe que revelou ser seu novo meio-irmão! Será que Alice e James aprenderão a conviver bem? Ou sua química irresistível se transformará em outra coisa?', 'https://vz-c2303ad7-0af.b-cdn.net/0e631544-665d-485e-b9ad-526d35e9daa5/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'']', '2025-07-22T03:36:22.937+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Segredo Sujo Do Meu Meio Irmão'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '83132ceb-f9b9-42ea-af39-8a91c9a01ffd', 'Ja Que Você Nunca Foi Minha', NULL, 'Quando a mãe de Júlia adoece, ela finge trair Bruno com Dirceu para não ser um fardo, justamente quando Bruno estava prestes a pedi-la em casamento. Desmoronado, Bruno decide construir seu próprio império com o apoio de sua família. Cinco anos depois, agora como CEO do Grupo Monteiro, Bruno reencontra Júlia, agora funcionária no seu grupo, trazendo de volta lembranças, mágoas e sentimentos nunca resolvidos.', 'https://vz-c2303ad7-0af.b-cdn.net/3c5bb2c1-bc39-4c64-8ba1-370b9a7ee4c8/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-gravidezes'', ''relacionamento-tabu'', ''amor-primeira-vista'']', '2025-07-20T15:40:39.69+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Ja Que Você Nunca Foi Minha'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '62586674-40c9-4168-8683-f134d30f9476', 'A Substituta Virgem do Bilionário', NULL, 'Quando sua irmã foge às vésperas de um casamento arranjado com um bilionário, Eva — jovem, ingênua e sem experiência alguma no amor — é forçada a tomar seu lugar. Enfrentando um homem frio e calculista, Dante Morelli, ela aceita o acordo por necessidade, sem imaginar o que esse casamento significaria. O que começa como um sacrifício logo se transforma em uma luta emocional entre orgulho, desejo e sentimentos reais. Mas será que um coração puro pode conquistar um magnata marcado por traições?', 'https://vz-c2303ad7-0af.b-cdn.net/0cc60e57-4c77-418a-8782-7cd872f24dd7/playlist.m3u8', '[''mais-recomendado'', ''identidade-escondida'', ''bebes-gravidezes'', ''relacionamento-tabu'']', '2025-07-08T17:39:34.292084+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Substituta Virgem do Bilionário'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '955eb20e-70d4-4701-aaaa-224461a0b6eb', 'Conquistei um Bilionário Para Ser Meu Esposo', NULL, 'Camila, uma jovem simples e determinada, aceita um casamento por contrato com o bilionário Enzo Valentini, que precisa de uma esposa para garantir sua herança. O acordo é claro: nada de envolvimento emocional. Mas à medida que convivem, surge uma conexão inesperada — cheia de paixão, ciúmes e sentimentos que ambos tentam negar. Quando segredos do passado de Enzo começam a vir à tona, Camila percebe que conquistar seu coração será o maior desafio de sua vida.', 'https://vz-c2303ad7-0af.b-cdn.net/5a3b760e-a99e-4ad2-a7c2-c823bcb30dca/playlist.m3u8', '[''mais-recomendado'', ''relacionamento-tabu'', ''amor-primeira-vista'', ''bebes-e-gravidezes'']', '2025-07-08T17:36:53.644219+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'Conquistei um Bilionário Para Ser Meu Esposo'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '3249e399-339b-4a74-9fc4-34574c9c3ee0', 'As Gêmeas e o Magnata', NULL, 'Duas irmãs idênticas, Luna e Stella, separadas na infância, vivem vidas opostas: uma é humilde e sonhadora, a outra ambiciosa e envolvida com o luxo. Seus caminhos se cruzam novamente por causa de Leonardo Ferraz, um magnata poderoso, frio e misterioso. Um jogo perigoso de identidade, paixão e vingança se inicia, onde o amor pode confundir e a verdade pode destruir. Quando os corações se entrelaçam, até as mentiras ganham força.', 'https://vz-c2303ad7-0af.b-cdn.net/8093a637-f1dc-46e2-ba32-aecb0de9b14f/playlist.m3u8', '[''identidade-escondida'', ''relacionamento-tabu'', ''mais-recomendado'']', '2025-07-08T17:30:23.775325+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'As Gêmeas e o Magnata'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '0731e2d1-c506-41e0-a842-b723478d0fba', 'O Retorno da Herdeira', NULL, 'Após anos desaparecida, Isadora Monteiro, herdeira de um império bilionário, retorna inesperadamente à cidade, agora sob o controle de seus inimigos. Marcada por um passado traumático e determinada a reconquistar o que é seu por direito, Isadora precisa enfrentar traições, segredos de família e um amor que nunca esqueceu. Em um mundo onde dinheiro e poder mandam, será que a verdade conseguirá vencer?', 'https://vz-c2303ad7-0af.b-cdn.net/569b98a3-8912-49f6-b12f-477ff8c4b480/playlist.m3u8', '[''identidade-escondida'', ''relacionamento-tabu'', ''mais-recomendado'']', '2025-07-07T23:56:58.19961+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'O Retorno da Herdeira'
);

INSERT INTO filmes (id, titulo, capa, descricao, video_url, categoria, created_at, premium, video_provider)
SELECT '44670f72-725c-4b57-a8d8-fecadccfcd42', 'A Vida Secreta do Meu Marido Bilionário', NULL, 'Helena acreditava estar casada com um homem comum, simples e gentil. Mas tudo muda quando descobre que seu marido, Gabriel, esconde uma identidade secreta: ele é, na verdade, um bilionário envolvido em negócios obscuros e uma rede de segredos que ameaçam destruí-los. Entre mentiras, alianças perigosas e uma paixão que resiste ao abismo da desconfiança, Helena precisa decidir se luta por esse amor… ou foge dele. Afinal, quem é o homem com quem ela dorme todas as noites?', 'https://vz-c2303ad7-0af.b-cdn.net/646da5a8-e2e9-4d08-a599-f3833e066d94/playlist.m3u8', '[''identidade-escondida'', ''relacionamento-tabu'', ''amor-primeira-vista'']', '2025-07-07T18:36:58.861168+00:00', FALSE, 'bunny'
WHERE NOT EXISTS (
    SELECT 1 FROM filmes WHERE titulo = 'A Vida Secreta do Meu Marido Bilionário'
);

COMMIT;