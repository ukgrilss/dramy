
-- Forces a sync between subscriptions table and profiles table
-- If a user has an active subscription that hasn't expired, set subscription_active = true

BEGIN;

-- 1. Reset everyone to false first (optional, but safer to re-evaluate)
-- UPDATE profiles SET subscription_active = false;
-- Actually, let's only update those who SHOULD be true but are false, or vice versa.

-- Update profiles to TRUE if they have a valid subscription
UPDATE profiles p
SET 
    subscription_active = true,
    plan_atual = s.plan,
    plan_expira_em = s.expires_at
FROM (
    SELECT DISTINCT ON (user_id) 
        user_id, 
        plan, 
        status, 
        expires_at
    FROM subscriptions
    WHERE status = 'active' 
      AND (expires_at > NOW() OR expires_at IS NULL)
    ORDER BY user_id, created_at DESC
) s
WHERE p.id = s.user_id
  AND (p.subscription_active IS NOT true OR p.plan_atual IS DISTINCT FROM s.plan);

-- Update profiles to FALSE if they have NO valid subscription (and ensure we don't break lifetime/manual overrides if any)
-- For now, let's just make sure those with expired subs are marked as such
UPDATE profiles p
SET subscription_active = false
WHERE p.id IN (
    SELECT user_id 
    FROM subscriptions 
    GROUP BY user_id 
    HAVING MAX(expires_at) < NOW()
)
AND NOT EXISTS (
    SELECT 1 FROM subscriptions s 
    WHERE s.user_id = p.id 
    AND s.status = 'active' 
    AND (s.expires_at > NOW() OR s.expires_at IS NULL)
);

COMMIT;

-- Verify the specific user
SELECT * FROM profiles WHERE email = 'teste@cinefy.com';
