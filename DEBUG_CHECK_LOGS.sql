-- CHECK LOGS (Últimos 20)
SELECT id, integration_name, event_name, status, created_at, payload 
FROM integration_logs 
ORDER BY created_at DESC 
LIMIT 20;

-- CHECK PAYMENT INTENTS (Últimos 10)
SELECT id, email, status, amount, created_at, transaction_id 
FROM payment_intents 
ORDER BY created_at DESC 
LIMIT 10;
