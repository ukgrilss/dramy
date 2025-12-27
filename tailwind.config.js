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
            }
        },
    },
    plugins: [],
}
