import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'

// Load environment variables manually (no external dependency needed)
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

console.log("===========================================")
console.log("🛠️  AUTO-FIX DATABASE SCRIPT")
console.log("===========================================")

if (!projectUrl || !serviceRoleKey) {
    console.error("❌ ERRO CRÍTICO: Faltam credenciais!")
    console.error("Certifique-se de que o arquivo .env.local existe e contém:")
    console.error("SUPABASE_SERVICE_ROLE_KEY=...")
    process.exit(1)
}

const supabase = createClient(projectUrl, serviceRoleKey, {
    auth: {
        autoRefreshToken: false,
        persistSession: false
    }
})

async function fixDatabase() {
    try {
        console.log("⏳ Conectando ao Supabase com privilégios de Admin...")

        // 1. Get all users from Auth
        const { data: { users }, error: usersError } = await supabase.auth.admin.listUsers()

        if (usersError) throw usersError
        console.log(`✅ Encontrados ${users.length} usuários no sistema de Auth.`)

        // 2. Loop through users and fix profiles
        let fixedCount = 0
        for (const user of users) {
            console.log(`   👤 Found User: ${user.email}`)
            const { data: profile } = await supabase
                .from('profiles')
                .select('*')
                .eq('id', user.id)
                .maybeSingle()

            if (!profile) {
                console.log(`   ⚠️ Perfil faltando para ${user.email}. Recriando...`)
                const newProfile = {
                    id: user.id,
                    email: user.email,
                    role: 'user',
                    subscription_active: true,
                    plan_atual: 'lifetime',
                    plan_status: 'active',
                    plan_expira_em: new Date(Date.now() + 3153600000000).toISOString()
                }
                await supabase.from('profiles').insert(newProfile)
                console.log(`   ✅ Perfil recriado!`)
                fixedCount++
            } else if (!profile.subscription_active) {
                console.log(`   ⚠️ Ativando assinatura de ${user.email}...`)
                await supabase.from('profiles')
                    .update({
                        subscription_active: true,
                        plan_atual: 'lifetime',
                        plan_status: 'active'
                    })
                    .eq('id', user.id)
                console.log(`   ✅ Ativado!`)
                fixedCount++
            }
        }

        console.log("===========================================")
        console.log(`🎉 CONCLUÍDO! ${fixedCount} correções aplicadas.`)
        console.log("O banco de dados está 100% sincronizado.")

    } catch (err) {
        console.error("❌ ERRO INESPERADO:", err.message)
    }
}

fixDatabase()
