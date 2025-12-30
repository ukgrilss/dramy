import { useEffect } from 'react'

export function useContentProtection() {
    useEffect(() => {
        // Content Protection disabled for debugging/user request.
        // Was blocking Right Click & F12.
    }, [])
}
