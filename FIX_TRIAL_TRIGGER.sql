-- FIX: AUTOMATIC TRIAL TRIGGER (The "Silver Bullet")
-- This script sets up a trigger that listens for new users.
-- If the user has "trial_active": true in their metadata, it grants the trial IMMEDIATELY.
-- This bypasses all frontend race conditions.

-- 1. Create the Trigger Function
CREATE OR REPLACE FUNCTION public.handle_new_user_trial_check()
RETURNS TRIGGER 
SECURITY DEFINER
AS $$
BEGIN
    -- Check if metadata contains trial_active header
    IF (new.raw_user_meta_data->>'trial_active')::boolean = true THEN
        
        -- Insert into profiles with Trial ON
        INSERT INTO public.profiles (id, email, trial_active, trial_balance, plan_name, subscription_active)
        VALUES (
            new.id, 
            new.email, 
            true, 
            600, 
            'trial', 
            false
        )
        ON CONFLICT (id) DO UPDATE
        SET 
            trial_active = true,
            trial_balance = 600,
            plan_name = 'trial';
            
    ELSE
        -- Normal User Insert (if not handled by another trigger)
        -- We use ON CONFLICT DO NOTHING to play nice with other triggers
        INSERT INTO public.profiles (id, email)
        VALUES (new.id, new.email)
        ON CONFLICT (id) DO NOTHING;
    END IF;

    RETURN new;
END;
$$ LANGUAGE plpgsql;

-- 2. Bind the Trigger to auth.users
-- We drop it first to avoid duplicates
DROP TRIGGER IF EXISTS on_auth_user_created_trial_check ON auth.users;

CREATE TRIGGER on_auth_user_created_trial_check
AFTER INSERT ON auth.users
FOR EACH ROW EXECUTE FUNCTION public.handle_new_user_trial_check();

-- 3. Ensure RLS is fixed (Just in case)
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can view own profile" ON profiles;
CREATE POLICY "Users can view own profile" ON profiles
    FOR SELECT USING (auth.uid() = id);

DROP POLICY IF EXISTS "Users can update own profile" ON profiles;
CREATE POLICY "Users can update own profile" ON profiles
    FOR UPDATE USING (auth.uid() = id);

DROP POLICY IF EXISTS "Users can insert own profile" ON profiles;
CREATE POLICY "Users can insert own profile" ON profiles
    FOR INSERT WITH CHECK (auth.uid() = id);
