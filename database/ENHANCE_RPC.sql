
-- Drop the function first to allow changing return type if needed
DROP FUNCTION IF EXISTS get_my_profile_secure();

CREATE OR REPLACE FUNCTION get_my_profile_secure()
RETURNS json
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    profile_data json;
    active_sub record;
BEGIN
    -- 1. Get the base profile data
    SELECT row_to_json(p.*) INTO profile_data
    FROM profiles p
    WHERE p.id = auth.uid();

    -- 2. Check for the LATEST ACTIVE subscription
    SELECT * INTO active_sub
    FROM subscriptions
    WHERE user_id = auth.uid()
      AND status = 'active'
      AND (expires_at > NOW() OR expires_at IS NULL)
    ORDER BY created_at DESC
    LIMIT 1;

    -- 3. If active subscription found, override profile data with real sub status
    IF FOUND THEN
        -- Verify logic: JSONB_SET(target, path, value)
        -- We cast to jsonb for easier manipulation then back to json
        profile_data := jsonb_set(
            profile_data::jsonb, 
            '{subscription_active}', 
            'true'::jsonb
        );
        profile_data := jsonb_set(
            profile_data::jsonb, 
            '{plan_atual}', 
            to_jsonb(active_sub.plan)
        );
        
        -- Handle expiration date (handle NULL for lifetime)
        IF active_sub.expires_at IS NOT NULL THEN
             profile_data := jsonb_set(
                profile_data::jsonb, 
                '{plan_expira_em}', 
                to_jsonb(active_sub.expires_at)
            );
        ELSE
             -- If NULL (likely lifetime), we can explicitly set it or leave as is
             -- Let's set it to null in json
             profile_data := jsonb_set(
                profile_data::jsonb, 
                '{plan_expira_em}', 
                'null'::jsonb
            );
        END IF;

    ELSE
        -- No active subscription found? 
        -- Be careful not to override if there is a manual 'true' set by admin (optional)
        -- But for "Sweep and fix", we should trust the subscriptions table.
        -- However, trial might be active.
        -- Let's just override subscription_active to false if no sub found (and let trial logic handle itself if separate)
        
        -- Only override if it claims to be active?
        -- For safety, let's strictly rely on the subscription table for 'subscription_active'
        -- UNLESS it is a trial? 
        -- The profile table has trial_active column. We leave that alone.
        
        profile_data := jsonb_set(
            profile_data::jsonb, 
            '{subscription_active}', 
            'false'::jsonb
        );
    END IF;

    RETURN profile_data;
END;
$$ LANGUAGE plpgsql;
