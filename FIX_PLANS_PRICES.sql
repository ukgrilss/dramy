-- =========================================================
-- FIX: SYNC PLAN PRICES (Frontend vs Database)
-- =========================================================
-- O frontend mostrava R$ 9.99 mas o banco cobrava R$ 19.90
-- Este script atualiza a tabela de planos para bater com o site.

-- 1. Mensal
UPDATE plans 
SET price = 999  -- R$ 9,99 (em centavos)
WHERE slug = 'monthly';

-- 2. Trimestral
UPDATE plans 
SET price = 2790 -- R$ 27,90
WHERE slug = 'quarterly';

-- 3. Anual
UPDATE plans 
SET price = 5990 -- R$ 59,90
WHERE slug = 'annual';

-- 4. Vitalício
UPDATE plans 
SET price = 9790 -- R$ 97,90
WHERE slug = 'lifetime';

-- Confirmação visual
SELECT slug, price as price_in_cents FROM plans;
