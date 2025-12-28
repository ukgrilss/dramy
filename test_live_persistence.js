import { createClient } from '@supabase/supabase-js'

import fs from 'fs'
import path from 'path'

// Load Env
const envPath = path.resolve('.env.local')
const content = fs.readFileSync(envPath, 'utf-8')
const env = {}
content.split(/\r?\n/).forEach(line => {
    const [k, v] = line.split('=')
    if (k && v) env[k.trim()] = v.trim().replace(/['"]/g, '')
})

const API_KEY = 'J249ifbDDurbUqfVFNxbz4JbUJ2MAOCC6Rdb' // Hardcoded from logs for speed
const URL = 'https://api.utmify.com.br/api-credentials/orders'

async function runTest() {
    console.log("--- SENDING FAKE LIVE SALE ---")

    const payload = {
        platform: 'Custom', // Changing from PushinPay
        orderId: 'TEST_LIVE_' + Date.now(),
        paymentMethod: 'pix',
        status: 'paid', // ⚡ FORCE PAID TO SEE IF IT SHOWS
        approvedDate: new Date().toISOString(),
        createdAt: new Date().toISOString(),
        token: API_KEY,
        customer: {
            name: 'Teste De Painel',
            email: 'teste_painel@exemplo.com',
            phone: '5511999999999',
            document: '11122233344',
            ip: '127.0.0.1'
        },
        products: [{
            planId: 'test_1',
            id: 'test_1',
            planName: 'Teste Painel R$ 1,50',
            name: 'Teste Painel R$ 1,50',
            priceInCents: 150, // R$ 1,50
            quantity: 1
        }],
        commission: {
            userCommissionInCents: 0,
            platformCommissionInCents: 0,
            gatewayFeeInCents: 0,
            totalPriceInCents: 150
        },
        trackingParameters: {
            utm_source: null,
            utm_campaign: null,
            utm_medium: null,
            utm_content: null,
            utm_term: null
        }
    }

    try {
        const res = await fetch(URL, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'x-api-token': API_KEY
            },
            body: JSON.stringify(payload)
        })
        const text = await res.text()
        console.log(`Status: ${res.status}`)
        console.log(`Response: ${text}`)
    } catch (e) { console.error(e) }
}

runTest()
