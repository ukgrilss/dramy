import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'

// Load env
function loadEnv() {
    try {
        const envPath = path.resolve('.env.local')
        if (fs.existsSync(envPath)) {
            const envConfig = fs.readFileSync(envPath, 'utf-8')
            const lines = envConfig.split('\n')
            lines.forEach(line => {
                const parts = line.split('=')
                if (parts.length >= 2 && !line.startsWith('#')) {
                    const key = parts[0].trim()
                    const value = parts.slice(1).join('=').trim()
                    process.env[key] = value
                }
            })
        }
    } catch (e) {
        console.error("Erro ao ler .env.local", e)
    }
}
loadEnv()

const projectUrl = process.env.VITE_SUPABASE_URL
const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY
const supabase = createClient(projectUrl, serviceRoleKey)

async function testWebhook() {
    console.log("===========================================")
    console.log("📡 TESTE DETALHADO DO WEBHOOK (GG CHECKOUT)")
    console.log("===========================================")

    // 1. Gerar um Email NOVO para testar a criação automática de conta
    const timestamp = Date.now();
    const emailTeste = `cliente_novo_${timestamp}@cinefy.com`;
    console.log(`🆕 Testando cadastro automático para: ${emailTeste}`)

    // Payload simulando exatamente o que a GG manda
    const payloadGG = {
        event: "pix.paid",
        customer: {
            email: emailTeste,
            name: "Cliente Novo Automático"
        },
        payment: {
            id: "pix_" + Date.now(),
            status: "paid",
            amount: 2990
        },
        product: {
            id: "8g6ug9Vr7zlmU2zx0prp", // ID MENSAL (conforme visto no script SQL)
            name: "Plano Mensal Cinefy"
        }
    }

    console.log(`📤 Enviando webhook simulado para: ${emailTeste}`)

    const { data, error } = await supabase.rpc('handle_gg_webhook', payloadGG)

    if (error) {
        console.error("❌ ERRO NO WEBHOOK:", error.message)
    } else {
        console.log("✅ RESPOSTA DO BANCO:", data)
    }

    console.log("\n🔎 Verificando se gravou na tabela...")

    // Verificar Perfil
    const { data: profile } = await supabase
        .from('profiles')
        .select('plan_atual, plan_status, plan_expira_em')
        .eq('email', emailTeste)
        .single()

    console.log("📊 Estado Atual do Usuário:", profile)
}

testWebhook()
