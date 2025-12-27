/**
 * Browser Fingerprinting Utility
 * Generates a unique fingerprint based on browser characteristics
 * LGPD Compliant - Uses only technical data, no personal information
 */

export const generateFingerprint = async () => {
    const components = []

    // Screen resolution
    components.push(`${window.screen.width}x${window.screen.height}`)
    components.push(`${window.screen.colorDepth}`)

    // Timezone
    components.push(Intl.DateTimeFormat().resolvedOptions().timeZone)

    // Language
    components.push(navigator.language)

    // Platform
    components.push(navigator.platform)

    // Hardware concurrency (CPU cores)
    components.push(navigator.hardwareConcurrency || 'unknown')

    // Device memory (if available)
    if (navigator.deviceMemory) {
        components.push(navigator.deviceMemory)
    }

    // Canvas fingerprint (lightweight)
    try {
        const canvas = document.createElement('canvas')
        const ctx = canvas.getContext('2d')
        ctx.textBaseline = 'top'
        ctx.font = '14px Arial'
        ctx.fillText('Dramy', 2, 2)
        components.push(canvas.toDataURL().slice(-50))
    } catch (e) {
        components.push('no-canvas')
    }

    // WebGL vendor/renderer
    try {
        const gl = document.createElement('canvas').getContext('webgl')
        if (gl) {
            const debugInfo = gl.getExtension('WEBGL_debug_renderer_info')
            if (debugInfo) {
                components.push(gl.getParameter(debugInfo.UNMASKED_VENDOR_WEBGL))
                components.push(gl.getParameter(debugInfo.UNMASKED_RENDERER_WEBGL))
            }
        }
    } catch (e) {
        components.push('no-webgl')
    }

    // Combine all components
    const fingerprint = components.join('|')

    // Generate hash
    return await hashString(fingerprint)
}

/**
 * Simple hash function using SubtleCrypto API
 */
const hashString = async (str) => {
    const encoder = new TextEncoder()
    const data = encoder.encode(str)
    const hashBuffer = await crypto.subtle.digest('SHA-256', data)
    const hashArray = Array.from(new Uint8Array(hashBuffer))
    return hashArray.map(b => b.toString(16).padStart(2, '0')).join('')
}

/**
 * Get client IP address (requires backend support)
 * This is a placeholder - actual IP should come from backend
 */
export const getClientIP = async () => {
    try {
        // In production, get IP from backend
        // For now, return a placeholder
        return 'client-ip-from-backend'
    } catch (error) {
        console.error('Error getting IP:', error)
        return 'unknown'
    }
}

/**
 * Get user agent
 */
export const getUserAgent = () => {
    return navigator.userAgent
}

/**
 * Check if trial has been used
 */
export const checkTrialUsed = async (supabase, fingerprint, ip) => {
    try {
        const { data, error } = await supabase
            .rpc('check_trial_used', {
                p_ip_address: ip,
                p_fingerprint: fingerprint
            })

        if (error) throw error
        return data
    } catch (error) {
        console.error('Error checking trial:', error)
        return true // Assume used on error (fail-safe)
    }
}

/**
 * Register new free trial
 */
export const registerFreeTrial = async (supabase, fingerprint, ip, userAgent) => {
    try {
        const { data, error } = await supabase
            .rpc('register_free_trial', {
                p_ip_address: ip,
                p_fingerprint: fingerprint,
                p_user_agent: userAgent
            })

        if (error) throw error
        return data
    } catch (error) {
        console.error('Error registering trial:', error)
        return {
            success: false,
            error: error.message
        }
    }
}
