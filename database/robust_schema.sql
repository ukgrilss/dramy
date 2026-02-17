-- ==============================================================================
-- MIGRATION: Robust Database Schema (v3.0)
-- Description: Implements tables for Plans, Payments, Renewal History and updates
--              Profiles and Subscriptions. Fixes missing columns and constraints.
-- ==============================================================================

-- 1. PROFILES: Add missing columns
ALTER TABLE profiles ADD COLUMN IF NOT EXISTS phone_number VARCHAR(20);
ALTER TABLE profiles ADD COLUMN IF NOT EXISTS cpf VARCHAR(14);
ALTER TABLE profiles ADD COLUMN IF NOT EXISTS updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW();

-- Index for CPF
CREATE INDEX IF NOT EXISTS idx_profiles_cpf ON profiles(cpf);


-- 2. PLANS: Create or Update table
CREATE TABLE IF NOT EXISTS plans (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    slug VARCHAR(100) UNIQUE NOT NULL, 
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price NUMERIC(10, 2) NOT NULL,
    interval_unit VARCHAR(20) NOT NULL, 
    interval_count INTEGER NOT NULL,
    duration_days INTEGER NOT NULL DEFAULT 30, -- Added duration_days
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Fix for existing tables: Add columns if they are missing
ALTER TABLE plans ADD COLUMN IF NOT EXISTS slug VARCHAR(100);
ALTER TABLE plans ADD COLUMN IF NOT EXISTS interval_unit VARCHAR(20);
ALTER TABLE plans ADD COLUMN IF NOT EXISTS interval_count INTEGER;
ALTER TABLE plans ADD COLUMN IF NOT EXISTS duration_days INTEGER DEFAULT 30; -- Ensure existing column has default or is added

-- Make sure slug is unique if it wasn't
DO $$ BEGIN
    ALTER TABLE plans ADD CONSTRAINT plans_slug_key UNIQUE (slug);
EXCEPTION
    WHEN duplicate_table THEN null; -- constraint already exists
    WHEN others THEN null; 
END $$;


-- Seed Default Plans (Idempotent)
-- Now includes duration_days to satisfy constraint
INSERT INTO plans (slug, name, price, interval_unit, interval_count, duration_days)
VALUES 
    ('monthly', 'Mensal', 19.90, 'monthly', 1, 30),
    ('quarterly', 'Trimestral', 49.90, 'monthly', 3, 90),
    ('annual', 'Anual', 149.90, 'annual', 1, 365),
    ('lifetime', 'Vitalício', 297.00, 'lifetime', 1, 36500)
ON CONFLICT (slug) DO UPDATE SET
    price = EXCLUDED.price,
    interval_unit = EXCLUDED.interval_unit,
    interval_count = EXCLUDED.interval_count,
    duration_days = EXCLUDED.duration_days;


-- 3. SUBSCRIPTIONS: Update schema
-- Create Enum if not exists
DO $$ BEGIN
    CREATE TYPE subscription_status AS ENUM ('active', 'pending', 'canceled', 'expired', 'trial', 'paused');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

-- Add new columns
ALTER TABLE subscriptions ADD COLUMN IF NOT EXISTS plan_id UUID REFERENCES plans(id);
ALTER TABLE subscriptions ADD COLUMN IF NOT EXISTS current_price NUMERIC(10, 2);
ALTER TABLE subscriptions ADD COLUMN IF NOT EXISTS start_date TIMESTAMP WITH TIME ZONE DEFAULT NOW();
ALTER TABLE subscriptions ADD COLUMN IF NOT EXISTS end_date TIMESTAMP WITH TIME ZONE;
ALTER TABLE subscriptions ADD COLUMN IF NOT EXISTS next_renewal_date TIMESTAMP WITH TIME ZONE;
ALTER TABLE subscriptions ADD COLUMN IF NOT EXISTS canceled_at TIMESTAMP WITH TIME ZONE;


-- DATA MIGRATION: Link existing subscriptions to plans
UPDATE subscriptions s
SET plan_id = p.id,
    current_price = p.price
FROM plans p
WHERE s.plan = p.slug 
  AND s.plan_id IS NULL;


-- Indexes
CREATE INDEX IF NOT EXISTS idx_subscriptions_user_id ON subscriptions(user_id);
CREATE INDEX IF NOT EXISTS idx_subscriptions_status ON subscriptions(status);
CREATE INDEX IF NOT EXISTS idx_subscriptions_next_renewal_date ON subscriptions(next_renewal_date);


-- 4. PAYMENTS: Create table
DO $$ BEGIN
    CREATE TYPE payment_status AS ENUM ('pending', 'approved', 'rejected', 'refunded', 'charged_back');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

CREATE TABLE IF NOT EXISTS payments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    subscription_id UUID REFERENCES subscriptions(id) ON DELETE SET NULL,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE, 
    external_id VARCHAR(255) UNIQUE,
    amount NUMERIC(10, 2) NOT NULL,
    currency VARCHAR(3) DEFAULT 'BRL',
    status payment_status NOT NULL DEFAULT 'pending',
    gateway VARCHAR(50) NOT NULL,
    payment_date TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_payments_subscription_id ON payments(subscription_id);
CREATE INDEX IF NOT EXISTS idx_payments_user_id ON payments(user_id);
CREATE INDEX IF NOT EXISTS idx_payments_external_id ON payments(external_id);
CREATE INDEX IF NOT EXISTS idx_payments_status ON payments(status);


-- 5. RENEWAL HISTORY: Create table
DO $$ BEGIN
    CREATE TYPE renewal_outcome AS ENUM ('success', 'failed_payment', 'canceled_by_user', 'expired_no_action');
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

CREATE TABLE IF NOT EXISTS renewal_history (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    subscription_id UUID NOT NULL REFERENCES subscriptions(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    plan_id UUID NOT NULL REFERENCES plans(id) ON DELETE RESTRICT,
    renewal_date TIMESTAMP WITH TIME ZONE NOT NULL,
    outcome renewal_outcome NOT NULL,
    payment_id UUID REFERENCES payments(id) ON DELETE SET NULL,
    details TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_renewal_history_subscription_id ON renewal_history(subscription_id);
CREATE INDEX IF NOT EXISTS idx_renewal_history_user_id ON renewal_history(user_id);
CREATE INDEX IF NOT EXISTS idx_renewal_history_renewal_date ON renewal_history(renewal_date);
