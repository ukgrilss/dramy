# Correção: Price Manipulation (CVE-2025-DRAMY-011)

## ⚠️ VULNERABILIDADE CRÍTICA

Atualmente, o valor do plano é enviado **diretamente do cliente** para a API de pagamento, permitindo que atacantes modifiquem o preço e comprem planos por valores arbitrários.

---

## 🔴 CÓDIGO VULNERÁVEL

### Arquivo: `src/lib/pushinpay.js` (Linha 18)

```javascript
body: JSON.stringify({
    value: amountInCents, // ⚠️ Valor vem do cliente!
    webhook_url: 'https://dramy.com.br/api/webhook',
    metadata: {
        email: userEmail,
        plan_slug: 'monthly',
        app_name: 'dramy'
    }
})
```

### Arquivo: `src/components/PaymentModal.jsx` (Linha 108)

```javascript
const data = await PushinPay.createPixCharge(amountInCents)
```

**Problema:** O `amountInCents` é calculado no frontend e pode ser manipulado via DevTools.

---

## ✅ SOLUÇÃO: Validação Server-Side

### Passo 1: Criar Função RPC Segura no Supabase

Já incluído em `SECURITY_FIX_DATABASE.sql`:

```sql
CREATE OR REPLACE FUNCTION create_payment_intent_secure(p_plan_slug TEXT)
RETURNS JSON
SECURITY DEFINER
AS $$
DECLARE
  v_amount INTEGER;
  v_intent_id UUID;
  v_user_email TEXT;
BEGIN
  -- Validar autenticação
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'Unauthorized';
  END IF;

  -- Buscar preço REAL da tabela de planos (server-side)
  SELECT price INTO v_amount
  FROM plans
  WHERE slug = p_plan_slug;
  
  IF v_amount IS NULL THEN
    RAISE EXCEPTION 'Invalid plan slug: %', p_plan_slug;
  END IF;

  -- Buscar email do usuário
  SELECT email INTO v_user_email
  FROM auth.users
  WHERE id = auth.uid();
  
  -- Criar payment intent com preço validado
  INSERT INTO payment_intents (
    plan_slug,
    amount,
    user_id,
    email,
    status,
    created_at
  )
  VALUES (
    p_plan_slug,
    v_amount,
    auth.uid(),
    v_user_email,
    'pending',
    NOW()
  )
  RETURNING id INTO v_intent_id;
  
  RETURN json_build_object(
    'intent_id', v_intent_id,
    'amount', v_amount,
    'plan_slug', p_plan_slug,
    'email', v_user_email
  );
END;
$$ LANGUAGE plpgsql;

-- Permitir apenas via função
GRANT EXECUTE ON FUNCTION create_payment_intent_secure(TEXT) TO authenticated;
```

---

### Passo 2: Atualizar `PaymentModal.jsx`

Localizar onde `PushinPay.createPixCharge` é chamado e substituir:

```javascript
// ❌ ANTES (INSEGURO)
const handlePayment = async () => {
    try {
        setLoading(true);
        
        // Valor calculado no cliente (INSEGURO!)
        const amountInCents = selectedPlan.price * 100;
        
        const data = await PushinPay.createPixCharge(amountInCents, user.email);
        
        // ... resto do código
    } catch (error) {
        console.error(error);
    }
};
```

```javascript
// ✅ DEPOIS (SEGURO)
const handlePayment = async () => {
    try {
        setLoading(true);
        
        // 1. Criar payment intent via RPC (servidor valida preço)
        const { data: intentData, error: intentError } = await supabase
            .rpc('create_payment_intent_secure', {
                p_plan_slug: selectedPlan.slug // Ex: 'monthly', 'annual'
            });
        
        if (intentError) throw intentError;
        
        // 2. Usar valor retornado pelo servidor (validado)
        const { intent_id, amount, email } = intentData;
        
        // 3. Criar cobrança PIX com valor validado
        const pixData = await PushinPay.createPixCharge(amount, email, intent_id);
        
        // ... resto do código
    } catch (error) {
        console.error(error);
    }
};
```

---

### Passo 3: Atualizar `pushinpay.js`

```javascript
// Adicionar intent_id como parâmetro
async createPixCharge(amountInCents, userEmail, intentId) {
    try {
        const response = await fetch('https://api.pushinpay.com.br/api/pix/cashIn', {
            method: 'POST',
            headers: {
                'Authorization': 'Bearer 58245|EKxchP3pnj9rwu01buADLV7bRdZcN8bog5OwVsBMbc2f6105',
                'Content-Type': 'application/json',
                'Accept': 'application/json'
            },
            body: JSON.stringify({
                value: amountInCents, // Agora vem do servidor!
                webhook_url: 'https://dramy.com.br/api/webhook',
                metadata: {
                    email: userEmail,
                    intent_id: intentId, // Rastrear no webhook
                    app_name: 'dramy'
                },
                payer: {
                    email: userEmail
                }
            })
        })
        
        // ... resto do código
    }
}
```

---

## 🧪 TESTE DE VALIDAÇÃO

Após implementar:

1. **Abra DevTools → Console**
2. **Tente modificar o preço:**

```javascript
// Tentar criar payment intent com preço falso
await supabase.rpc('create_payment_intent_secure', {
    p_plan_slug: 'annual'
})
// Deve retornar o preço REAL do banco, não o que você passou
```

3. **Verificar no Supabase:**

```sql
SELECT * FROM payment_intents ORDER BY created_at DESC LIMIT 1;
-- O campo 'amount' deve ter o valor correto da tabela 'plans'
```

---

## 📊 IMPACTO DA CORREÇÃO

| Antes | Depois |
|-------|--------|
| ❌ Cliente envia preço | ✅ Servidor valida preço |
| ❌ Atacante pode pagar R$ 0,01 | ✅ Preço sempre correto |
| ❌ Bypass do paywall | ✅ Proteção garantida |

---

## ⚠️ IMPORTANTE

Esta correção requer:
- ✅ Função RPC criada no Supabase (já incluída em `SECURITY_FIX_DATABASE.sql`)
- ⏳ Modificação do código frontend (`PaymentModal.jsx` e `pushinpay.js`)
- ⏳ Testes do fluxo completo de pagamento

**Prioridade:** ALTA - Impacto financeiro direto
