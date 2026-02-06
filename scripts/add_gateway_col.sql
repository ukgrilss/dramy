
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_intents' AND column_name = 'gateway') THEN
        ALTER TABLE public.payment_intents ADD COLUMN gateway text DEFAULT 'pushinpay';
    END IF;
END $$;
