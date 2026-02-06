
import { spawn } from 'child_process'
import path from 'path'
import { fileURLToPath } from 'url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))

// Colors for console output
const colors = {
    server: '\x1b[36m', // Cyan
    vite: '\x1b[32m',   // Green
    reset: '\x1b[0m',
    error: '\x1b[31m'   // Red
}

function runScript(command, args, name, color) {
    console.log(`${color}[${name}] Starting...${colors.reset}`)

    const child = spawn(command, args, {
        stdio: 'pipe',
        shell: true,
        cwd: __dirname,
        env: { ...process.env, FORCE_COLOR: 'true' }
    })

    child.stdout.on('data', (data) => {
        const lines = data.toString().split('\n')
        lines.forEach(line => {
            if (line.trim()) {
                console.log(`${color}[${name}] ${line.trim()}${colors.reset}`)
            }
        })
    })

    child.stderr.on('data', (data) => {
        console.error(`${colors.error}[${name} ERROR] ${data.toString().trim()}${colors.reset}`)
    })

    child.on('close', (code) => {
        console.log(`${color}[${name}] exited with code ${code}${colors.reset}`)
        process.exit(code)
    })

    return child
}

// Start Local API Server
const serverProcess = runScript('node', ['local-server.js'], 'API', colors.server)

// Start Vite (Frontend)
// Wait a bit for the server to initialize
setTimeout(() => {
    const viteProcess = runScript('npm', ['run', 'dev'], 'WEB', colors.vite)
}, 1000)

// Handle exit
process.on('SIGINT', () => {
    console.log('\nStopping all services...')
    serverProcess.kill()
    process.exit()
})
