
/**
 * UTMify Pixel Helper
 * Handles safe event tracking even if the script is slow to load.
 */

export const utmifyTrack = (eventName, params = {}) => {
    const maxAttempts = 50 // 25 seconds max
    let attempts = 0

    const interval = setInterval(() => {
        if (window.utmify) {
            console.log(`[UTMify] Tracking ${eventName}`, params)

            // UTMify standard track usually just takes the name, 
            // but we pass params in case the version supports it or we wrap it in the future.
            // Based on observed usage in PlansPage, it's just .track('Name')
            try {
                window.utmify.track(eventName, params)
                // alert(`[DEBUG] UTMify Sent: ${eventName}`)
            } catch (err) {
                console.error("[UTMify] Error calling track:", err)
            }

            clearInterval(interval)
        } else {
            attempts++
            if (attempts >= maxAttempts) {
                console.warn(`[UTMify] Timeout: window.utmify not found after ${attempts / 2}s`)
                clearInterval(interval)
            }
        }
    }, 500)
}

export const utmifyPurchase = (value, transactionId) => {
    // UTMify Purchase Event
    // We send value and transaction ID if supported by their loop, otherwise mostly generic.
    utmifyTrack('Purchase', {
        value: value,
        currency: 'BRL',
        transaction_id: transactionId
    })
}

export const utmifyInitiateCheckout = (planName, value) => {
    utmifyTrack('InitiateCheckout', {
        content_name: planName,
        value: value
    })
}
