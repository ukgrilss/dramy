import { useEffect } from 'react'

export function useContentProtection() {
    useEffect(() => {
        // 1. Disable Right Click (Context Menu)
        const handleContextMenu = (e) => {
            e.preventDefault()

        }

        // 2. Disable Keyboard Shortcuts (F12, Ctrl+U, Ctrl+S, Ctrl+Shift+I/C/J)
        const handleKeyDown = (e) => {
            // F12
            if (e.key === 'F12') {
                e.preventDefault()
                return
            }

            // Ctrl+Shift+I (DevTools), Ctrl+Shift+C (Inspect), Ctrl+Shift+J (Console)
            if (e.ctrlKey && e.shiftKey && (e.key === 'I' || e.key === 'i' || e.key === 'C' || e.key === 'c' || e.key === 'J' || e.key === 'j')) {
                e.preventDefault()
                return
            }

            // Ctrl+U (View Source)
            if (e.ctrlKey && (e.key === 'U' || e.key === 'u')) {
                e.preventDefault()
                return
            }

            // Ctrl+S (Save Page)
            if (e.ctrlKey && (e.key === 'S' || e.key === 's')) {
                e.preventDefault()
                return
            }
        }

        // 3. DevTools Detection (Console Warning)
        // Note: We cannot strictly block extensions from sniffing media,
        // but we can make it annoying for manual inspection.
        const checkDevTools = () => {
            const widthThreshold = window.outerWidth - window.innerWidth > 160
            const heightThreshold = window.outerHeight - window.innerHeight > 160

            if ((widthThreshold || heightThreshold) && (window.firebug || (window.console && window.console.firebug))) {
                // Detected
            }
        }

        // Add Listeners
        document.addEventListener('contextmenu', handleContextMenu)
        document.addEventListener('keydown', handleKeyDown)
        window.addEventListener('resize', checkDevTools)

        // Cleanup
        return () => {
            document.removeEventListener('contextmenu', handleContextMenu)
            document.removeEventListener('keydown', handleKeyDown)
            window.removeEventListener('resize', checkDevTools)
        }
    }, [])
}
