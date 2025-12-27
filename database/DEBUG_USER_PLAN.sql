
-- Check profile and subscription data for the user
-- We'll look up by email since that's what we saw in the screenshot
SELECT 
    p.id,
    p.email, 
    p.full_name, 
    p.plan_atual, 
    p.subscription_active, 
    p.plan_expira_em,
    p.trial_active,
    p.trial_expires_at
FROM profiles p
WHERE p.email = 'teste@cinefy.com';

-- Check subscriptions for this user
SELECT 
    s.id,
    s.user_id,
    s.plan,
    s.status,
    s.created_at,
    s.expires_at
FROM subscriptions s
JOIN profiles p ON s.user_id = p.id
WHERE p.email = 'teste@cinefy.com'
ORDER BY s.created_at DESC;
