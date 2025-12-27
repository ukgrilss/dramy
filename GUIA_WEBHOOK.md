# Guia de Configuração de Pagamentos e Webhooks (Universal)

Este guia explica como conectar qualquer sistema de pagamento (Stripe, Hotmart, MercadoPago, Kiwify, etc) ao seu site Cinefy para ativar planos automaticamente.

## 1. Prepare o Banco de Dados
Primeiro, rode o script `WEBHOOK_SETUP.sql` no **SQL Editor** do Supabase.
Isso vai criar a "Função Mágica" (`handle_payment_webhook`) que recebe o aviso de pagamento e libera o acesso do usuário.

## 2. Como Funciona a Integração
A lógica é simples:
1. O cliente paga no Gateway (Stripe/Hotmart/etc).
2. O Gateway envia um "aviso" (Webhook) para o seu Supabase.
3. O Supabase recebe, acha o usuário pelo email e libera o acesso.

## 3. Configurando o Webhook

Você precisa configurar seu gateway para enviar uma requisição **POST** para o Supabase.
Como muitos gateways enviam formatos diferentes (JSON complexos), o ideal é usar uma ferramenta "cola" no meio, como **n8n** (grátis/open source) ou **Make.com** (fácil), ou até mesmo um script simples.

### Método Mais Fácil: Chamada Direta (Se o gateway permitir personalizar o JSON)
Se o seu gateway permite definir o corpo do JSON (ex: n8n, Make), configure assim:

**URL (Endpoint):**
`https://[SEU-ID-DO-PROJETO].supabase.co/rest/v1/rpc/handle_payment_webhook`

**Método:** `POST`

**Headers (Cabeçalhos) - MUITO IMPORTANTE:**
*   `Content-Type`: `application/json`
*   `apikey`: `[SUA_SERVICE_ROLE_KEY]`
*   `Authorization`: `Bearer [SUA_SERVICE_ROLE_KEY]`

> ⚠️ **ATENÇÃO:** Use a `SERVICE_ROLE_KEY` (chave secreta) e NÃO a `ANON_KEY`. Você pega ela em *Project Settings > API* no Supabase. Nunca vaze essa chave no frontend!

**Body (Corpo JSON):**
```json
{
  "p_email": "email_do_cliente@gmail.com",
  "p_plan_slug": "monthly",
  "p_transaction_id": "tx_123abc"
}
```

*   `p_plan_slug`: Deve ser `monthly`, `quarterly` ou `annual` (conforme seus planos no banco).

---

## 4. Exemplo com n8n ou Make (Recomendado)

Se você usa Hotmart, Kiwify ou Monetizze, eles mandam um JSON "gigante" e confuso. O jeito certo é:

1.  Crie um workflow no **n8n/Make** com um "Webhook Trigger".
2.  Cole a URL do n8n no Hotmart/Kiwify.
3.  No n8n, receba os dados.
4.  Adicione um nó "HTTP Request" no n8n para chamar o Supabase (como explicado acima).
5.  No campo `p_email`, arraste o email que veio do Hotmart.

Dessa forma, você traduz o "idioma" do Hotmart para o "idioma" do seu site.

## 5. Testando Manualmente
Você pode testar se está funcionando sem pagar nada. Abra seu terminal ou Postman e rode:

```bash
curl -X POST 'https://[SEU-ID].supabase.co/rest/v1/rpc/handle_payment_webhook' \
-H "apikey: [SUA_SERVICE_ROLE_KEY]" \
-H "Authorization: Bearer [SUA_SERVICE_ROLE_KEY]" \
-H "Content-Type: application/json" \
-d '{
  "p_email": "seu_email_de_teste@gmail.com",
  "p_plan_slug": "monthly"
}'
```

Se der `success: true`, o usuário terá o plano ativado instantaneamente! 🚀

---

## ❓ Perguntas Frequentes (FAQ)

### Preciso usar Edge Functions?
**NÃO.** Edge Functions são ótimas, mas exigem configuração de ambiente (Node.js, Deno, CLI).
O método que usamos aqui (**Database RPC**) é muito mais simples: você cria a função direto no banco com um clique e ganha uma URL pronta. O resultado final é o mesmo.

### Preciso criar 4 URLs para os 4 planos?
**NÃO.** Você usa **A MESMA URL** para todos os planos.
A "mágica" acontece dentro do código: o script olha o ID do produto que chegou e decide sozinho:
*   `ID 123` -> Ativa Plano Mensal
*   `ID 456` -> Ativa Plano Anual

Isso facilita muito sua vida, pois você só cola 1 link na GG Checkout e não precisa mexer mais.
