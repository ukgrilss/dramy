# JWT in localStorage - Mitigação e Solução Completa

## Status Atual

**CVE-2025-DRAMY-012: JWT Tokens in localStorage**

**Severidade:** 🟠 HIGH (CVSS 6.8)

---

## ⚠️ PROBLEMA

O Supabase armazena tokens JWT no `localStorage` por padrão:

```javascript
localStorage.getItem('sb-qlylsucoanjohwrkkroq-auth-token')
```

**Risco:** Tokens podem ser roubados via XSS attacks.

---

## ✅ MITIGAÇÕES JÁ APLICADAS

### 1. XSS Prevention (Reduz Risco de Roubo)

- ✅ Input sanitization com DOMPurify
- ✅ Reflected XSS bloqueado
- ✅ Stored XSS sanitizado

### 2. Content Security Policy

- ✅ CSP bloqueando scripts externos
- ✅ Inline scripts controlados
- ✅ `unsafe-eval` restrito

### 3. Security Headers

- ✅ X-XSS-Protection ativo
- ✅ X-Content-Type-Options: nosniff
- ✅ Referrer-Policy configurado

**Resultado:** Risco de XSS significativamente reduzido, tornando roubo de token muito mais difícil.

---

## 🔒 SOLUÇÃO COMPLETA (Futuro)

### Opção 1: Supabase com httpOnly Cookies (Recomendado)

Requer implementação de custom storage adapter:

```javascript
// lib/supabase-cookie-storage.js
import Cookies from 'js-cookie';

export const cookieStorage = {
  getItem: (key) => {
    return Cookies.get(key) || null;
  },
  setItem: (key, value) => {
    // Note: httpOnly cookies MUST be set by the server
    // This is just for client-side reading
    Cookies.set(key, value, {
      secure: true,
      sameSite: 'strict',
      expires: 7 // 7 days
    });
  },
  removeItem: (key) => {
    Cookies.remove(key);
  }
};

// lib/supabase.js
import { createClient } from '@supabase/supabase-js';
import { cookieStorage } from './supabase-cookie-storage';

export const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.VITE_SUPABASE_ANON_KEY,
  {
    auth: {
      storage: cookieStorage,
      autoRefreshToken: true,
      persistSession: true,
      detectSessionInUrl: true
    }
  }
);
```

**Limitação:** Cookies httpOnly só podem ser definidos pelo servidor, não pelo JavaScript. Requer:
- Backend para gerenciar cookies
- Ou Supabase Edge Functions
- Ou Next.js Server Components

---

### Opção 2: Session-Only Storage (Sem Persistência)

Tokens armazenados apenas em memória (perdidos ao fechar aba):

```javascript
// lib/memory-storage.js
const memoryStorage = {
  storage: {},
  getItem: (key) => memoryStorage.storage[key] || null,
  setItem: (key, value) => {
    memoryStorage.storage[key] = value;
  },
  removeItem: (key) => {
    delete memoryStorage.storage[key];
  }
};

export const supabase = createClient(
  SUPABASE_URL,
  SUPABASE_KEY,
  {
    auth: {
      storage: memoryStorage,
      autoRefreshToken: true,
      persistSession: false // ⚠️ User precisa fazer login toda vez
    }
  }
);
```

**Prós:**
- ✅ Tokens não ficam em localStorage
- ✅ Tokens não podem ser roubados após fechar aba

**Contras:**
- ❌ Usuário precisa fazer login toda vez
- ❌ Experiência de usuário pior

---

### Opção 3: Implementar Backend com Cookies

Criar API própria para autenticação:

```javascript
// Backend (Node.js/Express)
app.post('/api/auth/login', async (req, res) => {
  const { email, password } = req.body;
  
  // Autenticar com Supabase
  const { data, error } = await supabase.auth.signInWithPassword({
    email,
    password
  });
  
  if (error) return res.status(401).json({ error });
  
  // Definir cookie httpOnly
  res.cookie('auth_token', data.session.access_token, {
    httpOnly: true,
    secure: true,
    sameSite: 'strict',
    maxAge: 7 * 24 * 60 * 60 * 1000 // 7 dias
  });
  
  res.json({ user: data.user });
});

// Frontend
const login = async (email, password) => {
  const response = await fetch('/api/auth/login', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ email, password }),
    credentials: 'include' // Importante para cookies
  });
  
  return response.json();
};
```

---

## 📊 COMPARAÇÃO DE OPÇÕES

| Opção | Segurança | UX | Complexidade | Recomendado |
|-------|-----------|----|--------------| ------------|
| **localStorage (Atual)** | 🟡 Média (com mitigações) | ✅ Excelente | ✅ Simples | ⚠️ Temporário |
| **httpOnly Cookies** | ✅ Alta | ✅ Excelente | 🟠 Média | ✅ **SIM** |
| **Memory Storage** | ✅ Alta | ❌ Ruim | ✅ Simples | ❌ Não |
| **Backend Custom** | ✅ Muito Alta | ✅ Excelente | 🔴 Alta | ⚠️ Se necessário |

---

## 🎯 RECOMENDAÇÃO FINAL

### Curto Prazo (Atual)

✅ **Manter localStorage com mitigações aplicadas:**
- XSS prevention ativa
- CSP bloqueando scripts maliciosos
- Security headers configurados

**Risco Residual:** BAIXO (devido às mitigações)

### Médio Prazo (3-6 meses)

🔄 **Migrar para httpOnly Cookies:**
1. Implementar Supabase Edge Functions para gerenciar cookies
2. Ou adicionar backend simples (Node.js/Express)
3. Migrar autenticação gradualmente

### Longo Prazo (6-12 meses)

🚀 **Considerar arquitetura mais robusta:**
- Backend próprio com JWT em httpOnly cookies
- Refresh tokens em cookies separados
- Access tokens de curta duração em memória

---

## 📝 NOTAS IMPORTANTES

1. **Mitigações Atuais São Efetivas:**
   - Com XSS bloqueado, roubo de token é muito difícil
   - CSP impede execução de scripts maliciosos
   - Risco é aceitável para curto prazo

2. **Migração Requer Planejamento:**
   - Não pode ser feita de forma incremental
   - Requer mudança em toda autenticação
   - Pode afetar usuários ativos

3. **Prioridade:**
   - 🟢 BAIXA (devido às mitigações)
   - Outras vulnerabilidades já foram corrigidas
   - Pode ser tratada em próxima iteração

---

## ✅ CONCLUSÃO

**Status Atual:** ✅ **MITIGADO**

Com as correções de XSS e CSP aplicadas, o risco de roubo de token via localStorage é **significativamente reduzido**. A migração para httpOnly cookies é recomendada para o futuro, mas não é urgente.

**Próximos Passos:**
1. ✅ Manter mitigações atuais
2. ⏳ Planejar migração para httpOnly cookies (médio prazo)
3. ⏳ Considerar backend próprio (longo prazo)
