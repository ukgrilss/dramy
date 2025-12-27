-- ============================================
-- TABELA DE CONFIGURAÇÕES (SETTINGS)
-- ============================================

-- Criar tabela settings
CREATE TABLE IF NOT EXISTS settings (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  key TEXT UNIQUE NOT NULL,
  value TEXT,
  description TEXT,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Inserir configurações padrão
INSERT INTO settings (key, value, description) VALUES
  ('platform_name', 'Cinefy TV', 'Nome da plataforma'),
  ('support_email', 'suporte@cinefy.com', 'Email de suporte'),
  ('maintenance_mode', 'false', 'Modo manutenção (true/false)'),
  ('allow_registration', 'true', 'Permitir novos cadastros (true/false)'),
  ('primary_color', '#961283', 'Cor primária da plataforma'),
  ('max_devices', '3', 'Máximo de dispositivos por conta')
ON CONFLICT (key) DO NOTHING;

-- RLS
ALTER TABLE settings ENABLE ROW LEVEL SECURITY;

-- Anyone can read settings
CREATE POLICY "Anyone can view settings"
  ON settings FOR SELECT
  USING (true);

-- Only admins can update
CREATE POLICY "Admins can update settings"
  ON settings FOR UPDATE
  USING (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id::text = auth.uid()::text
      AND profiles.role = 'admin'
    )
  );

-- ============================================
-- Execute este SQL no Supabase SQL Editor
-- ============================================
