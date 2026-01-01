
import { MessageCircle } from 'lucide-react'

export default function WhatsAppButton() {
    const whatsappUrl = "https://wa.me/558584633341?text=ola%2C%20preciso%20de%20ajuda"

    return (
        <a
            href={whatsappUrl}
            target="_blank"
            rel="noopener noreferrer"
            className="fixed bottom-24 right-4 md:bottom-6 md:right-6 z-[9999] group animate-in slide-in-from-bottom-10 duration-700"
            aria-label="Suporte WhatsApp"
        >
            <span className="absolute right-full mr-3 top-1/2 -translate-y-1/2 px-2 py-1 bg-white text-black text-xs font-bold rounded opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap shadow-lg">
                Precisa de ajuda?
            </span>
            <div className="bg-primary hover:bg-primary/90 text-white p-4 rounded-full shadow-[0_4px_14px_rgba(0,0,0,0.5)] transition-all duration-300 hover:scale-110 hover:shadow-[0_6px_20px_rgba(150,18,131,0.6)] flex items-center justify-center border border-white/10">
                <MessageCircle className="w-6 h-6 fill-current" />
            </div>
        </a>
    )
}
