-- ==============================================================
-- IMPORTAÇÃO DE CONTEÚDO (DRAMIO -> DRAMY)
-- DATA: 2026-01-05
-- FONTE: Scrape da Dashboard Admin Dramio
-- ==============================================================

-- 1. Inserir Categorias Primeiro (para garantir chaves estrangeiras)
-- Mapeando as categorias encontradas no scrape: 'Novos na Plataforma', 'Mais Recomendados', 'BL & GL'
INSERT INTO categories (name, slug, icon) VALUES
('Novos na Plataforma', 'novos', '🆕'),
('Mais Recomendados', 'recomendados', '🔥'),
('BL & GL', 'bl-gl', '🌈')
ON CONFLICT (slug) DO NOTHING;

-- 2. Inserir Conteúdo (Dramas)
-- Usamos DO NOTHING para evitar duplicidade se o título já existir.
INSERT INTO filmes (title, description, image_url, video_url, category_id, premium, featured) VALUES
(
    'DE MADRASTA A MÃE DE VERDADE',
    'Após uma reviravolta do destino, uma mulher se vê no papel de madrasta de uma criança que precisa de amor genuíno. Entre desafios familiares e segredos do passado, ela descobre que o laço de sangue não é o único que define uma mãe.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/6be5f580-6079-4b85-9d55-942971d0bfbf_pt.jpg',
    'https://iframe.mediadelivery.net/play/407552/0cc60e57-4c77-418a-8782-7cd872f24dd7',
    (SELECT id FROM categories WHERE slug = 'recomendados' LIMIT 1),
    true,
    true
),
(
    'Adeus Minha Tentadora Esposa',
    'Uma história envolvente sobre amor, perda e reencontros.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/99887c4a-533c-433f-a47f-fcc1e91c65c1_pt.jpg',
    NULL,
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'IRMÃS RENASCIDAS MARIDOS TROCADOS',
    'Destinos entrelaçados em uma trama de vingança e romance.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/e610ab53-6190-43a8-a864-a154bf73bf5c_pt.jpg',
    NULL,
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'A Substituta Virgem do Bilionário',
    'Quando sua irmã foge às vésperas de um casamento arranjado com um bilionário, Eva é forçada a tomar seu lugar. Enfrentando um homem frio e calculista, Dante Morelli, ela aceita o acordo por necessidade.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/db4108a8-a6f4-4d8c-a64d-8f488eb94d15_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/0cc60e57-4c77-418a-8782-7cd872f24dd7',
    (SELECT id FROM categories WHERE slug = 'recomendados' LIMIT 1),
    true,
    true
),
(
    'Conquistei um Bilionário Para Ser Meu Esposo',
    'Camila aceita um casamento por contrato com o bilionário Enzo Valentini. O acordo é claro: nada de envolvimento emocional.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/71262722-6943-4582-a493-65f4381978b1_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/5a3b760e-a99e-4ad2-a7c2-c823bcb30dca',
    (SELECT id FROM categories WHERE slug = 'recomendados' LIMIT 1),
    true,
    true
),
(
    'As Gêmeas e o Magnata',
    'Duas irmãs idênticas, Luna e Stella, separadas na infância, vivem vidas opostas. Seus caminhos se cruzam novamente.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/ea99e743-158e-4d6f-ad7c-07e9e8c15e84_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/8093a637-f1dc-46e2-ba32-aecb0de9b14f',
    (SELECT id FROM categories WHERE slug = 'recomendados' LIMIT 1),
    true,
    true
),
(
    'Casamento Relâmpago',
    'Tudo pode mudar em um instante quando se diz "Sim".',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/15e32aff-0991-4962-9111-38fb0a3ba2c1_pt.jpg',
    NULL,
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'GRAVIDEZ ACIDENTAL ROMANCE COM O CEO',
    'Um erro de uma noite se transforma em uma vida inteira de consequências e amor.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/da165e48-d056-4796-85bc-448cd4ace9ec_pt.jpg',
    NULL,
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
),
(
    'WATERBOY',
    'Um romance refrescante que desafia as expectativas.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/98452719-0e26-4975-9c77-98db86e225c9_pt.jpg',
    NULL,
    (SELECT id FROM categories WHERE slug = 'bl-gl' LIMIT 1),
    true,
    false
),
(
    'O Retorno da Herdeira',
    'Após anos desaparecida, Isadora Monteiro retorna inesperadamente à cidade, agora sob o controle de seus inimigos.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/1854d00e-45c1-45bd-9dbf-2d955fb51b3f_pt.webp',
    'https://iframe.mediadelivery.net/play/407552/569b98a3-8912-49f6-b12f-477ff8c4b480',
    (SELECT id FROM categories WHERE slug = 'recomendados' LIMIT 1),
    true,
    true
),
(
    'BELEZA FRIA NOVA VIDA',
    'Uma segunda chance para amar e ser amada.',
    'https://bushotizgnzejxaqovjy.supabase.co/storage/v1/object/public/images/dramas/covers/94473e92-5bd0-4014-9a14-e366e19ff8a6_pt.jpg',
    NULL,
    (SELECT id FROM categories WHERE slug = 'novos' LIMIT 1),
    true,
    false
)
ON CONFLICT (title) DO NOTHING;

-- Log de confirmação
SELECT 'Importação Concluída: ' || count(*) || ' novos itens inseridos (ou ignorados se duplicados).' as status FROM filme;
