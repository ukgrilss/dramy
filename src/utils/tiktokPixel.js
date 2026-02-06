/**
 * TikTok Pixel Helper
 * Wraps the global ttq object to prevent errors if pixel fails to load.
 */

// Safe track function
export const trackTikTokEvent = (eventName, params = {}) => {
    // 🚨 DEBUG: Force Alert to verify execution
    // alert(`[DEBUG] Attempting to track TikTok Event: ${eventName}`)

    if (typeof window !== 'undefined' && window.ttq) {
        try {
            console.log(`[TikTok Pixel] Tracking ${eventName}`, params)
            window.ttq.track(eventName, params)
            // alert(`[DEBUG] TikTok Event Sent: ${eventName}\nParams: ${JSON.stringify(params)}`)
        } catch (err) {
            console.error('[TikTok Pixel] Error tracking event:', err)
            alert(`[DEBUG] Error tracking TikTok event: ${err.message}`)
        }
    } else {
        console.warn('[TikTok Pixel] ttq not found (Pixel blocked or not loaded)')
        // alert('[DEBUG] TikTok Pixel (ttq) Object NOT FOUND! (AdBlocker?)')
    }
}

// Pre-defined Events
export const tkCompleteRegistration = () => {
    trackTikTokEvent('CompleteRegistration')
}

export const tkInitiateCheckout = (planName, value) => {
    trackTikTokEvent('InitiateCheckout', {
        content_name: planName, // e.g. 'Plano Premium'
        value: value,           // e.g. 29.90
        currency: 'BRL'
    })
}

export const tkViewContent = (contentName) => {
    trackTikTokEvent('ViewContent', {
        content_name: contentName
    })
}

export const tkPurchase = (value, transactionId) => {
    // alert(`[DEBUG] Disparando Purchase!\nValor: ${value}\nID: ${transactionId}`)
    trackTikTokEvent('Purchase', {
        value: value,
        currency: 'BRL',
        transaction_id: transactionId
    })
}
