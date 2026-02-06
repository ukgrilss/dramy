-- ==========================================
-- DASHBOARD STATS CALCULATOR
-- ==========================================

CREATE OR REPLACE FUNCTION get_dashboard_stats(p_start_date timestamp with time zone)
RETURNS JSON
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_new_subs integer;
  v_renewals integer;
  v_active_subs integer;
  v_expired_in_period integer;
  v_mrr numeric;
  v_revenue_period numeric;
BEGIN
  -- 1. Calculate New vs Renewals using Window Functions
  -- We look at ALL subscriptions, rank them by date per user.
  -- Then filters those created after p_start_date.
  SELECT 
    COALESCE(COUNT(*) FILTER (WHERE rn = 1), 0),
    COALESCE(COUNT(*) FILTER (WHERE rn > 1), 0),
    COALESCE(SUM(amount) FILTER (WHERE rn = 1 OR rn > 1), 0) -- Approximate revenue in period (cents)
  INTO v_new_subs, v_renewals, v_revenue_period
  FROM (
    SELECT 
      created_at,
      -- amount, -- assuming we might have amount column, if not we ignore revenue here
      ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY created_at ASC) as rn
    FROM subscriptions
  ) sub_ranks
  WHERE created_at >= p_start_date;

  -- 2. Count Active Subscriptions (Current Snapshot)
  SELECT COUNT(*) INTO v_active_subs
  FROM subscriptions
  WHERE status = 'active';

  -- 3. Calculate MRR (Monthly Recurring Revenue)
  -- Sum of price of all active plans.
  -- We join with plans table or hardcode prices if needed.
  -- Better to use the 'plan' column and map to current prices for estimation.
  SELECT 
    COALESCE(SUM(
      CASE 
        WHEN plan = 'monthly' THEN 19.90
        WHEN plan = 'quarterly' THEN 49.90 / 3.0
        WHEN plan = 'annual' THEN 149.90 / 12.0
        WHEN plan = 'lifetime' THEN 0 -- MRR usually excludes lifetime or amortizes it. Let's count 0 for MRR.
        ELSE 0
      END
    ), 0)
    INTO v_mrr
  FROM subscriptions
  WHERE status = 'active';

  -- 4. Count Expired in Period (for Churn context)
  SELECT COUNT(*) INTO v_expired_in_period
  FROM subscriptions
  WHERE status = 'expired' AND updated_at >= p_start_date;

  -- Return JSON
  RETURN json_build_object(
    'new_subs', v_new_subs,
    'renewals', v_renewals,
    'active_subs', v_active_subs,
    'mrr', v_mrr,
    'expired_in_period', v_expired_in_period
  );
END;
$$;
