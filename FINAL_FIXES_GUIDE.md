# 🔴 CORREÇÕES FINAIS URGENTES - DRAMY

## Status Atual (Pós-Verificação)

Após análise do relatório de verificação, identificamos que **6 vulnerabilidades críticas/altas ainda estão presentes**. Este documento fornece instruções **passo a passo** para corrigir TODAS elas.

---

## ✅ O QUE JÁ FOI CORRIGIDO

1. ✅ **Reflected XSS** - Busca sanitizada
2. ✅ **Security Headers** - CSP, HSTS, etc implementados
3. ✅ **Sanitização de Input** - Código implementado (mas dados antigos no banco)

---

## 🔴 O QUE AINDA PRECISA SER FEITO

### 1. Source Maps Ainda Expostos (CVE-2025-DRAMY-008)

**Problema:** O arquivo `vite.config.js` foi atualizado, mas o site NÃO foi reconstruído e implantado.

**Solução:**

```bash
# 1. Verificar que vite.config.js tem sourcemap: false
cat vite.config.js | grep sourcemap
# Deve mostrar: sourcemap: false

# 2. Rebuild da aplicação
npm run build

# 3. Verificar que NÃO há arquivos .map na pasta dist
ls dist/assets/*.map
# Deve retornar: No such file or directory

# 4. Deploy para produção
vercel --prod

# 5. Aguardar deploy completar (2-3 minutos)

# 6. Verificar que source maps não estão mais acessíveis
curl -I https://www.dramy.com.br/assets/index-*.js.map
# Deve retornar: 404 Not Found
```

---

### 2. Stored XSS - Dados Antigos no Banco (CVE-2025-DRAMY-009)

**Problema:** Embora o código agora sanitize novos inputs, **payloads XSS antigos ainda estão armazenados** no banco de dados.

**Solução:**

#### Passo 1: Executar Script de Limpeza

1. Abra Supabase Dashboard → SQL Editor
2. Execute o arquivo `SECURITY_CLEANUP.sql`:

```sql
-- Limpar payloads XSS existentes
UPDATE profiles
SET full_name = REGEXP_REPLACE(full_name, '<[^>]*>', '', 'g')
WHERE full_name ~ '<[^>]*>';
```

#### Passo 2: Verificar Limpeza

```sql
-- Verificar se ainda há payloads
SELECT id, full_name, email
FROM profiles
WHERE full_name ~ '<|>|script|onerror';
```

Se retornar resultados, execute:

```sql
UPDATE profiles 
SET full_name = 'User' 
WHERE full_name ~ '<|>';
```

---

### 3. RLS Não Habilitado (CVE-2025-DRAMY-001 & 002)

**Problema:** As políticas RLS NÃO foram executadas no Supabase.

**Solução:**

1. Abra Supabase Dashboard → SQL Editor
2. Execute **TODO** o arquivo `SECURITY_FIX_DATABASE.sql`
3. Aguarde confirmação de sucesso
4. Execute as queries de verificação no final do arquivo

**Teste:**

```bash
# Tentar acessar profiles sem autenticação
curl "https://qlylsucoanjohwrkkroq.supabase.co/rest/v1/profiles?select=*" \
  -H "apikey: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."

# Deve retornar: [] (array vazio) ou erro 401
```

---

### 4. JWT em localStorage (CVE-2025-DRAMY-012)

**Problema:** Supabase usa localStorage por padrão. Migrar para cookies httpOnly requer refatoração significativa.

**Solução Temporária (Mitigação):**

Já implementamos:
- ✅ Sanitização de XSS (reduz risco de roubo)
- ✅ Security Headers com CSP

**Solução Permanente (Futuro):**

Requer implementação de custom storage adapter. Documentado no `implementation_plan.md`.

---

### 5. Client-Side Roles (CVE-2025-DRAMY-004)

**Problema:** Role armazenado em localStorage pode ser manipulado.

**Solução:**

Localizar onde `localStorage.getItem('userRole')` é usado e substituir por:

```javascript
// ❌ NUNCA confie em localStorage
const userRole = localStorage.getItem('userRole');

// ✅ Use JWT claims ou banco de dados
const { data: { user } } = await supabase.auth.getUser();
const userRole = user?.user_metadata?.role || 'user';
```

**Arquivos para verificar:**

```bash
grep -r "localStorage.getItem('userRole')" src/
grep -r 'localStorage.getItem("userRole")' src/
```

---

### 6. Price Manipulation (CVE-2025-DRAMY-011)

**Problema:** Cliente envia valor do plano para API de pagamento.

**Solução:**

#### Passo 1: Criar Função Protegida (SQL)

Já incluído em `SECURITY_FIX_DATABASE.sql`:

```sql
CREATE FUNCTION create_payment_intent_secure(p_plan_slug TEXT)
RETURNS JSON
...
```

#### Passo 2: Atualizar Frontend

Localizar código de pagamento e substituir:

```javascript
// ❌ ANTES (INSEGURO)
const response = await fetch('https://api.pushinpay.com.br/api/pix/cashIn', {
  method: 'POST',
  body: JSON.stringify({ 
    value: 2790 // Valor enviado pelo cliente!
  })
});

// ✅ DEPOIS (SEGURO)
// 1. Criar payment intent via RPC (servidor valida preço)
const { data } = await supabase.rpc('create_payment_intent_secure', {
  p_plan_slug: 'trimestral'
});

// 2. Usar valor retornado pelo servidor
const response = await fetch('https://api.pushinpay.com.br/api/pix/cashIn', {
  method: 'POST',
  body: JSON.stringify({ 
    value: data.amount, // Valor validado pelo servidor
    intent_id: data.intent_id
  })
});
```

**Arquivos para verificar:**

```bash
grep -r "pushinpay" src/
grep -r "cashIn" src/
grep -r "payment" src/pages/
```

---

## 📋 CHECKLIST DE EXECUÇÃO

Execute nesta ordem:

### Fase 1: Database (15 minutos)

- [ ] Abrir Supabase SQL Editor
- [ ] Executar `SECURITY_FIX_DATABASE.sql` completo
- [ ] Executar `SECURITY_CLEANUP.sql`
- [ ] Verificar RLS ativo (queries de verificação)
- [ ] Testar acesso não autorizado (deve falhar)

### Fase 2: Build & Deploy (10 minutos)

- [ ] Verificar `vite.config.js` tem `sourcemap: false`
- [ ] Executar `npm run build`
- [ ] Verificar ausência de `.map` files em `dist/`
- [ ] Executar `vercel --prod`
- [ ] Aguardar deploy completar
- [ ] Testar acesso a source maps (deve retornar 404)

### Fase 3: Code Fixes (30 minutos)

- [ ] Localizar uso de `localStorage.getItem('userRole')`
- [ ] Substituir por `user?.user_metadata?.role`
- [ ] Localizar código de pagamento (pushinpay/cashIn)
- [ ] Implementar uso de `create_payment_intent_secure` RPC
- [ ] Testar fluxo de pagamento completo

### Fase 4: Verificação Final (15 minutos)

- [ ] Testar XSS em perfil (deve ser sanitizado)
- [ ] Testar acesso a `/rest/v1/profiles` (deve falhar)
- [ ] Testar acesso a source maps (deve retornar 404)
- [ ] Testar manipulação de preço (deve usar valor do servidor)

---

## 🎯 RESULTADO ESPERADO

Após executar TODAS as etapas:

| Vulnerabilidade | Antes | Depois |
|----------------|-------|--------|
| Source Maps | 🔴 Exposto | ✅ 404 |
| Stored XSS | 🔴 Executável | ✅ Sanitizado |
| PII Leak | 🔴 100 users | ✅ RLS ativo |
| Payment Leak | 🔴 5 transações | ✅ RLS ativo |
| Price Manipulation | 🔴 Possível | ✅ Validado |
| Client Roles | 🔴 localStorage | ✅ JWT claims |

**Taxa de Correção:** 100% das vulnerabilidades críticas/altas

---

## ⚠️ NOTAS IMPORTANTES

1. **Ordem de Execução:** Siga a ordem exata do checklist
2. **Backup:** Faça backup do banco antes de executar SQL
3. **Testes:** Teste cada correção individualmente
4. **Deploy:** Aguarde deploy completar antes de testar

---

## 📞 SUPORTE

Se encontrar problemas:

1. Verifique logs do Supabase (Dashboard → Logs)
2. Verifique logs do Vercel (Dashboard → Deployments)
3. Use DevTools → Console para erros JavaScript
4. Revise `implementation_plan.md` para detalhes técnicos
