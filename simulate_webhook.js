
const fetch = require('node-fetch') // Might not work if ESM, using dynamic import if needed or simple http

// If node-fetch is not available, we can use built-in fetch in newer Node
// Using standard fetch

async function simulate() {
    console.log('--- SIMULATING WEBHOOK ---')
    // ID from the latest intent check
    const txId = 'a0b25fa3-c0b6-493a-9574-b4d40a3d38c0'
    // Sending as UpperCase to simulate PushinPay behavior
    const upperId = txId.toUpperCase()

    console.log(`Sending ID: ${upperId}`)

    const res = await fetch('https://dramy.com.br/api/webhook', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            id: upperId,
            status: 'paid',
            value: 999
        })
    })

    const text = await res.text()
    console.log(`Status: ${res.status}`)
    console.log(`Response: ${text}`)
}

simulate()
