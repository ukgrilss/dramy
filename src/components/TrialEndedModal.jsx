import { Link } from 'react-router-dom'
import { Clock, Check } from 'lucide-react'

export default function TrialEndedModal({ onClose }) {
    return (
        <div className="fixed inset-0 bg-black/90 backdrop-blur-sm flex items-center justify-center z-50 p-4">
            <div className="bg-card border border-primary/50 rounded-2xl max-w-md w-full p-8 text-center">
                <div className="w-20 h-20 bg-primary/20 rounded-full flex items-center justify-center mx-auto mb-6">
                    <Clock className="w-10 h-10 text-primary" />
                </div>

                <h2 className="text-3xl font-black text-white mb-4">
                    Seu teste gratuito terminou
                </h2>

                <p className="text-gray-300 mb-6">
                    Você acabou de experimentar o que milhares de pessoas já estão assistindo todos os dias. Continue assistindo sem limites!
                </p>

                <div className="bg-white/5 rounded-xl p-4 mb-6">
                    <p className="text-sm text-gray-400 mb-3">Por apenas:</p>
                    <div className="text-4xl font-black text-primary mb-2">R$ 9,99</div>
                    <p className="text-sm text-gray-400">por mês</p>
                </div>

                <ul className="text-left space-y-2 mb-6">
                    <li className="flex items-center gap-2 text-sm text-gray-300">
                        <Check className="w-4 h-4 text-primary flex-shrink-0" />
                        Acesso ilimitado a todo catálogo
                    </li>
                    <li className="flex items-center gap-2 text-sm text-gray-300">
                        <Check className="w-4 h-4 text-primary flex-shrink-0" />
                        Sem anúncios
                    </li>
                    <li className="flex items-center gap-2 text-sm text-gray-300">
                        <Check className="w-4 h-4 text-primary flex-shrink-0" />
                        Cancele quando quiser
                    </li>
                </ul>

                <Link
                    to="/vendas#planos"
                    className="block w-full bg-primary hover:bg-primary/90 text-white py-4 rounded-lg font-bold text-lg mb-3 transition-all transform hover:scale-105"
                >
                    Assinar Agora
                </Link>

                <button
                    onClick={onClose}
                    className="text-sm text-gray-500 hover:text-white transition-colors"
                >
                    Voltar para página inicial
                </button>
            </div>
        </div>
    )
}
