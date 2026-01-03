/** @type {import('tailwindcss').Config} */
export default {
    content: [
        "./index.html",
        "./src/**/*.{js,ts,jsx,tsx}",
    ],
    theme: {
        extend: {
            colors: {
                background: "#080808",
                card: "#121212",
                primary: "#961283",
                "primary-foreground": "#ffffff",
                secondary: "#1a1a1a",
                text: "#fafafa",
                border: "#961283", // Using primary as border based on CSS
            },
            fontFamily: {
                sans: ['Urbanist', 'system-ui', 'sans-serif'],
            },
            boxShadow: {
                'glow': '0 0 12px rgba(150, 18, 131, 0.12)',
            },
            backgroundImage: {
                'gradient-dark': 'linear-gradient(180deg, #050505, #0f0f0f)',
            },
            keyframes: {
                "fade-in": {
                    "0%": { opacity: "0" },
                    "100%": { opacity: "1" },
                },
                "scale-up": {
                    "0%": { transform: "scale(0.95)", opacity: "0" },
                    "100%": { transform: "scale(1)", opacity: "1" },
                },
                "bounce-slow": {
                    "0%, 100%": { transform: "translateY(-5%)" },
                    "50%": { transform: "translateY(5%)" },
                }
            },
            animation: {
                "fade-in": "fade-in 0.5s ease-out forwards",
                "scale-up": "scale-up 0.5s cubic-bezier(0.16, 1, 0.3, 1) forwards",
                "bounce-slow": "bounce-slow 3s infinite ease-in-out",
            }
        },
    },
    plugins: [],
}
