
// import fetch from 'node-fetch' // Using native fetch in Node 18+

const API_KEY = 'J249ifbDDurbUqfVFNxbz4JbUJ2MAOCC6Rdb'
const URL = 'https://api.utmify.com.br/v1/conversions'

const payload = {
    event: 'test_event',
    transaction_id: 'test_tx_' + Date.now(),
    email: 'test@example.com',
    value: 1.00,
    currency: 'BRL'
}

async function testAuth(name, headers, bodyExtra = {}) {
    console.log(`\n--- Testing: ${name} ---`)
    const body = { ...payload, ...bodyExtra }
    try {
        const res = await fetch(URL, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json', ...headers },
            body: JSON.stringify(body)
        })
        const data = await res.json()
        console.log(`Status: ${res.status}`)
        console.log(`Response:`, data)
        return res.ok
    } catch (e) {
        console.log(`Error:`, e.message)
        return false
    }
}

async function run() {
    // 1. x-api-key Header
    await testAuth('Header: x-api-key', { 'x-api-key': API_KEY })

    // 2. token Header
    await testAuth('Header: token', { 'token': API_KEY })

    // 3. Authorization Bearer
    await testAuth('Header: Authorization Bearer', { 'Authorization': `Bearer ${API_KEY}` })

    // 4. Body token
    await testAuth('Body: token', {}, { token: API_KEY })

    // 5. Body api_key
    await testAuth('Body: api_key', {}, { api_key: API_KEY })

    // 6. x-api-token Header (Found in docs search)
    await testAuth('Header: x-api-token', { 'x-api-token': API_KEY })

    // 7. Query Parameter ?token=
    console.log(`\n--- Testing: Query Parameter ?token= ---`)
    try {
        const res = await fetch(URL + '?token=' + API_KEY, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(payload)
        })
        const data = await res.json()
        console.log(`Status: ${res.status}`)
        console.log(`Response:`, data)
    } catch (e) { console.log("Error:", e.message) }

    // 8. USER SUGGESTION: https://api.utmify.com/event + Bearer
    const USER_URL = 'https://api.utmify.com/event'
    console.log(`\n--- Testing: USER SUGGESTION (api.utmify.com/event + Bearer) ---`)
    try {
        const res = await fetch(USER_URL, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${API_KEY}`
            },
            body: JSON.stringify(payload)
        })
        const text = await res.text()
        console.log(`Status: ${res.status}`)
        console.log(`Response:`, text)
    } catch (e) { console.log("Error:", e.message) }
    // 9. SEARCH RESULT: https://api.utmify.com.br/api-credentials/orders
    const ORDER_URL = 'https://api.utmify.com.br/api-credentials/orders'
    console.log(`\n--- Testing: SEARCH RESULT (api-credentials/orders) ---`)
    try {
        const res = await fetch(ORDER_URL, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'token': API_KEY, // Try header
                'item_token': API_KEY // Try another common one?
            },
            body: JSON.stringify({
                ...payload,
                token: API_KEY // Try body
            })
        })
        const text = await res.text()
        console.log(`Status: ${res.status}`)
        console.log(`Response:`, text)
    } catch (e) { console.log("Error:", e.message) }
}

run()
