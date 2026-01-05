import { useState, useEffect } from 'react'
import { X, Copy, CheckCircle, Shield, Check, Play, Loader2, CreditCard, FileText } from 'lucide-react'
import { PushinPay } from '../lib/pushinpay'
import { supabase } from '../lib/supabase'
import { useNavigate } from 'react-router-dom'
import { useAuth } from '../contexts/AuthContext'
import QRCode from 'qrcode'

export default function PaymentModal({ plan, onClose }) {
    const [loading, setLoading] = useState(true)
    const [pixData, setPixData] = useState(null)
    const [step, setStep] = useState('payment') // 'payment' | 'success'
    const [activating, setActivating] = useState(false)
    const [qrCodeUrl, setQrCodeUrl] = useState(null)
    const [mobileTab, setMobileTab] = useState('payment') // 'payment' | 'details'
    const navigate = useNavigate()
    const { user, refreshProfile } = useAuth() // Get refresh trigger

    useEffect(() => {
        if (plan) {
            generatePix()
        }
    }, [plan])

    useEffect(() => {
        if (pixData?.qr_code) {
            generateQRCode(pixData.qr_code)
        }
    }, [pixData])

    // =========================================================
    // ⚡ REALTIME LISTENER FOR AUTO-APPROVAL ⚡
    // =========================================================
    useEffect(() => {
        if (!user || step === 'success') return

        const channel = supabase
            .channel(`payment_watch_${user.id}`)
            .on(
                'postgres_changes',
                {
                    event: 'UPDATE',
                    schema: 'public',
                    table: 'profiles',
                    filter: `id=eq.${user.id}`
                },
                async (payload) => {
                    // Check if subscription became active
                    if (payload.new.subscription_active === true) {
                        setActivating(false)
                        setStep('success')
                        // 🎵 TikTok Pixel: Purchase
                        // We use the real price from the plan
                        const numericPrice = parseFloat(plan.price.replace('R$ ', '').replace(',', '.'))
                        if (!isNaN(numericPrice)) {
                            // Assuming tkPurchase is globally available or imported
                            // and that payload.new.id is the transaction ID or similar
                            // If not, adjust the second argument as needed (e.g., user.id)
                            tkPurchase(numericPrice, payload.new.id)
                        }
                        await refreshProfile() // 🔄 SYNC GLOBAL STATE
                    }
                }
            )
            .subscribe()

        return () => {
            supabase.removeChannel(channel)
        }
    }, [user, step])

    // =========================================================
    // ⚡ FALLBACK POLLING (DOUBLE CHECK EVERY 3s) ⚡
    // =========================================================
    useEffect(() => {
        if (!user || step === 'success' || !pixData?.id) return

        const interval = setInterval(async () => {
            try {
                // 🚀 TURBO MODE: Check directly with Gateway every 3s
                // This bypasses webhook delays completely
                const response = await fetch('/api/check-payment', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        transaction_id: pixData.id,
                        intent_id: pixData.local_intent_id || pixData.metadata?.intent_id
                    })
                })

                // If the check fails (network/404), dont crash, just ignore
                if (response.ok) {
                    const result = await response.json()
                    if (result.approved) {
                        await refreshProfile() // 🔄 SYNC GLOBAL STATE
                        setActivating(false)
                        setStep('success')
                        return
                    }
                } else {
                    // Check if it's a config error
                    const errorJson = await response.json().catch(() => ({}))
                    if (errorJson.error === 'server_config_missing') {
                        console.error("CRITICAL: Vercel Env Vars missing")
                        alert("ERRO CRÍTICO NO SERVIDOR: O Token do PushinPay não está configurado nas Variáveis de Ambiente da Vercel. O pagamento não será identificado.")
                        clearInterval(interval) // Stop trying
                    }
                }

                // Fallback: Check Database (in case Webhook was faster)
                const { data } = await supabase
                    .from('profiles')
                    .select('subscription_active')
                    .eq('id', user.id)
                    .single()

                if (data?.subscription_active === true) {
                    setStep('success')
                    await refreshProfile()
                    setActivating(false)
                }
            } catch (err) {
                console.error("Auto-check error (ignorable):", err)
            }
        }, 2000)

        return () => clearInterval(interval)
    }, [user, step, pixData])


    const generateQRCode = async (text) => {
        try {
            const url = await QRCode.toDataURL(text, {
                width: 300,
                margin: 2,
                color: {
                    dark: '#000000',
                    light: '#ffffff'
                }
            })
            setQrCodeUrl(url)
        } catch (err) {
            console.error(err)
        }
    }

    const generatePix = async () => {
        setLoading(true)

        try {
            // ✅ SECURITY FIX (CVE-2025-DRAMY-011): Server-side price validation
            // Create payment intent via RPC - server validates the price
            const { data: intentData, error: intentError } = await supabase
                .rpc('create_payment_intent_secure', {
                    p_plan_slug: plan.slug
                })

            if (intentError) {
                console.error('Error creating payment intent:', intentError)
                throw new Error('Erro ao criar intenção de pagamento')
            }

            // Server returns validated price and intent ID
            const { intent_id, amount, email } = intentData

            // Create PIX charge with server-validated amount
            const payerName = user?.user_metadata?.name || user?.email?.split('@')[0] || 'Cliente'
            const rawPixData = await PushinPay.createPixCharge(amount, email, intent_id, payerName)

            // 🚨 FORCE FAILSAFE: Ensure ID exists even if library failed to normalize
            // ALSO: Store intent_id locally because API might not echo it back correctly
            const pixData = {
                ...rawPixData,
                id: rawPixData.id || rawPixData.orderId || rawPixData.transaction_id || rawPixData.uuid,
                local_intent_id: intent_id // <--- IMPORTANT: Save this for the verification step
            }

            console.log("Pix Data Normalized:", pixData)
            setPixData(pixData)

            // Update profile to pending status
            if (user) {
                await supabase
                    .from('profiles')
                    .update({
                        plan_status: 'pending',
                        plan_atual: plan.slug,
                        subscription_active: false
                    })
                    .eq('id', user.id)

                // Track events
                fetch('/api/track-event', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        event: 'pix_created',
                        transactionId: pixData.id,
                        userId: user.id,
                        payload: {
                            value: amount / 100,
                            email: user.email,
                            intent_id
                        }
                    })
                }).catch(err => console.error('Tracking error:', err))

                fetch('/api/track-event', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        event: 'pix_pending',
                        transactionId: pixData.id,
                        userId: user.id,
                        payload: {
                            value: amount / 100,
                            email: user.email,
                            intent_id
                        }
                    })
                }).catch(err => console.error('Tracking error:', err))
            }
        } catch (error) {
            console.error('Payment generation error:', error)
            alert('Erro ao gerar pagamento. Tente novamente.')
        } finally {
            setLoading(false)
        }
    }

    // --- DEBUGGING ---
    useEffect(() => {
        if (pixData) {
            console.log("PIX DATA RECEIVED:", pixData)
            if (!pixData.qr_code) {
                alert("DEBUG: pixData recebido mas qr_code vazio! " + JSON.stringify(pixData))
            }
        }
    }, [pixData])
    // -----------------

    const handleCopy = () => {
        if (pixData?.qr_code) {
            navigator.clipboard.writeText(pixData.qr_code)
            alert('Código PIX copiado!')
        }
    }

    const [paymentError, setPaymentError] = useState(null)

    const handleConfirmPayment = async () => {
        setActivating(true)
        setPaymentError(null)

        try {
            let result = null

            // 1. Force Check with Gateway via Server
            if (pixData?.id) {
                const response = await fetch('/api/check-payment', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        transaction_id: pixData.id,
                        intent_id: pixData.local_intent_id || pixData.metadata?.intent_id
                    })
                })
                result = await response.json()

                if (result.approved) {
                    setActivating(false)
                    setStep('success')
                    await refreshProfile()
                    return
                } else if (result.error === 'upstream_error') {
                    // Specific API Error logic is handled below now
                }
            } else {
                console.error("Missing Transaction ID in pixData", pixData)
                alert("Erro Interno: ID da transação não encontrado no retorno do banco. Tente gerar um novo PIX.")
                setActivating(false)
                return
            }

            // 2. Fallback: Check Database
            const { data: profile } = await supabase
                .from('profiles')
                .select('subscription_active')
                .eq('id', user.id)
                .single()

            if (profile?.subscription_active === true) {
                setActivating(false)
                setStep('success')
                return
            }
            // Still not active? Show error with debug info
            if (result && !result.approved) {
                // 🚨 CRITICAL DEBUG: If backend returned an explicit system error (like RPC failure), show it!
                if (result.message && result.message.includes('RPC Error')) {
                    alert(`ERRO DE SISTEMA: O banco de dados recusou a ativação.\n\nDetalhe: ${result.message}\n\nTire print e envie ao suporte.`)
                }

                // Format: "Status Atual: pending"
                const debugInfo = result.debug_original_status ? ` (Status: ${result.debug_original_status})` : ''
                setPaymentError(`O banco ainda não confirmou o pagamento.${debugInfo} Aguarde e tente novamente.`)
            }

        } catch (err) {
            console.error('Error checking status:', err)
            // 🚨 FALLBACK: Alert the user so we know what broke (e.g. JSON Parse Error)
            alert(`Erro Técnico: ${err.message}`)
        }

        // Timeout fallback removal is no longer needed as we set error directly
        setTimeout(() => {
            setActivating(false)
        }, 500)
    }

    if (!plan) return null

    const isPremium = plan.slug === 'annual' || plan.slug === 'lifetime'
    const themeColor = isPremium ? 'from-amber-500 to-yellow-600' : 'from-purple-600 to-pink-600'
    const borderColor = isPremium ? 'border-amber-500/50' : 'border-purple-500/50'
    const glowColor = isPremium ? 'shadow-amber-500/20' : 'shadow-purple-500/20'
    const buttonClass = isPremium ? 'bg-gradient-to-r from-amber-500 to-yellow-600' : 'bg-gradient-to-r from-purple-600 to-pink-600'

    return (
        <div className="fixed inset-0 z-[60] flex items-center justify-center p-4 bg-black/80 backdrop-blur-sm animate-fade-in text-white/90">
            <div className={`relative w-full max-w-4xl bg-[#0f0f13] border ${borderColor} rounded-2xl shadow-2xl ${glowColor} flex flex-col md:flex-row h-auto md:h-auto max-h-[90vh] md:max-h-none overflow-hidden`}>

                {/* Close Button */}
                <button
                    onClick={onClose}
                    className="absolute top-3 right-3 text-gray-400 hover:text-white z-50 p-2 bg-black/40 rounded-full hover:bg-white/10 transition-colors backdrop-blur-md"
                >
                    <X className="w-5 h-5 md:w-6 md:h-6" />
                </button>

                {/* MOBILE TABS HEADER */}
                <div className="md:hidden flex border-b border-white/10 shrink-0">
                    <button
                        onClick={() => setMobileTab('payment')}
                        className={`flex-1 py-4 text-sm font-bold flex items-center justify-center gap-2 transition-colors ${mobileTab === 'payment' ? 'text-white bg-white/5' : 'text-gray-500 hover:text-gray-300'}`}
                    >
                        <CreditCard className="w-4 h-4" />
                        Pagamento
                    </button>
                    <button
                        onClick={() => setMobileTab('details')}
                        className={`flex-1 py-4 text-sm font-bold flex items-center justify-center gap-2 transition-colors ${mobileTab === 'details' ? 'text-white bg-white/5' : 'text-gray-500 hover:text-gray-300'}`}
                    >
                        <FileText className="w-4 h-4" />
                        Resumo do Plano
                    </button>
                </div>

                {/* LEFT SIDE - Plan Details (Hidden on Mobile unless tab selected) */}
                <div className={`w-full md:w-5/12 p-6 md:p-8 relative flex-col justify-center shrink-0 ${mobileTab === 'details' ? 'flex' : 'hidden md:flex'}`}>
                    {/* Background Gradient */}
                    <div className={`absolute inset-0 bg-gradient-to-br ${themeColor} opacity-10`}></div>
                    <div className="absolute top-0 right-0 p-12 bg-white/5 rounded-full blur-3xl -translate-y-1/2 translate-x-1/2"></div>

                    <div className="relative z-10 text-center md:text-left">
                        <div className={`inline-flex items-center justify-center w-12 h-12 md:w-16 md:h-16 rounded-full mb-4 md:mb-6 bg-gradient-to-br ${themeColor} shadow-lg`}>
                            {isPremium ? <Shield className="w-6 h-6 md:w-8 md:h-8 text-white" /> : <Play className="w-6 h-6 md:w-8 md:h-8 text-white" />}
                        </div>

                        <h2 className={`text-2xl md:text-3xl font-black text-white mb-2`}>{plan.name}</h2>
                        <p className="text-gray-300 mb-4 md:mb-6 font-medium text-sm md:text-base">{plan.description || "Acesso ilimitado ao melhor do conteúdo asiático."}</p>

                        <div className="bg-black/20 rounded-xl p-4 border border-white/10 mb-6">
                            <div className="flex justify-between items-center mb-2">
                                <span className="text-gray-400 text-xs md:text-sm">Valor Original</span>
                                <span className="text-gray-400 line-through text-xs md:text-sm">R$ {Math.round(parseFloat(plan.price.replace('R$', '').replace(',', '.')) * 1.5)},90</span>
                            </div>
                            <div className="flex justify-between items-center">
                                <span className="text-white font-bold text-sm md:text-base">Valor Promocional</span>
                                <span className={`text-xl md:text-2xl font-black bg-gradient-to-r ${themeColor} bg-clip-text text-transparent`}>
                                    {plan.price}
                                </span>
                            </div>
                        </div>

                        <ul className="space-y-3 text-left">
                            {plan.features?.slice(0, 4).map((feat, i) => (
                                <li key={i} className="flex items-start gap-3">
                                    <div className={`mt-1 p-0.5 rounded-full bg-gradient-to-r ${themeColor}`}>
                                        <Check className="w-3 h-3 text-white" />
                                    </div>
                                    <span className="text-xs md:text-sm text-gray-300">{feat}</span>
                                </li>
                            ))}
                        </ul>

                        {step === 'success' && (
                            <div className="mt-8 p-4 bg-green-500/20 border border-green-500/50 rounded-xl flex items-center gap-4">
                                <CheckCircle className="w-8 h-8 text-green-400" />
                                <div className="text-left">
                                    <h4 className="font-bold text-white">Pagamento Aprovado!</h4>
                                    <p className="text-xs text-green-300">Seu acesso foi liberado.</p>
                                </div>
                            </div>
                        )}
                    </div>
                </div>

                {/* RIGHT SIDE - Payment / Success (Hidden on Mobile if details tab selected) */}
                <div className={`w-full md:w-7/12 bg-[#18181b] p-6 md:p-8 flex-col justify-center relative shrink-0 ${mobileTab === 'payment' ? 'flex' : 'hidden md:flex'}`}>
                    {step === 'payment' ? (
                        <>
                            <div className="text-center mb-6 md:mb-8">
                                <h3 className="text-xl md:text-2xl font-bold text-white mb-2">Pagamento PIX Gerado!</h3>
                                <div className="flex items-center justify-center gap-2 text-xs md:text-sm text-gray-400">
                                    <Shield className="w-3 h-3 md:w-4 md:h-4 text-green-500" />
                                    <span>Ambiente Seguro e Criptografado</span>
                                </div>
                            </div>

                            {loading ? (
                                <div className="flex flex-col items-center justify-center py-12">
                                    <Loader2 className={`w-12 h-12 animate-spin text-purple-500 mb-4`} />
                                    <p className="text-gray-400">Gerando QR Code...</p>
                                </div>
                            ) : (
                                <>
                                    <div className="flex flex-col items-center justify-center mb-6 md:mb-8">
                                        <div className="bg-white p-3 md:p-4 rounded-2xl shadow-lg mb-6 max-w-[200px] md:max-w-[240px]">
                                            {qrCodeUrl ? (
                                                <img
                                                    src={qrCodeUrl}
                                                    alt="QR Code PIX"
                                                    className="w-full h-full object-contain"
                                                />
                                            ) : (
                                                <div className="w-48 h-48 bg-gray-200 flex items-center justify-center text-black font-bold text-xs text-center p-2">
                                                    Gerando QR Code...
                                                </div>
                                            )}
                                        </div>

                                        <div className="w-full space-y-4">
                                            <div>
                                                <label className="text-[10px] md:text-xs uppercase font-bold text-gray-500 mb-2 block pl-1">Código Copia e Cola:</label>
                                                <div className="flex gap-2">
                                                    <input
                                                        type="text"
                                                        readOnly
                                                        value={pixData?.qr_code || ''}
                                                        className="flex-1 bg-black/30 border border-white/10 rounded-lg px-4 py-2 md:py-3 text-xs md:text-sm text-gray-300 focus:outline-none focus:border-purple-500/50"
                                                    />
                                                    <button
                                                        onClick={handleCopy}
                                                        className="bg-white/5 hover:bg-white/10 border border-white/10 text-white p-3 rounded-lg transition-colors"
                                                    >
                                                        <Copy className="w-4 h-4 md:w-5 md:h-5" />
                                                    </button>
                                                </div>
                                            </div>

                                            <div className="bg-yellow-500/10 border border-yellow-500/20 p-3 md:p-4 rounded-xl flex gap-3 items-start">
                                                <div className="mt-1 animate-pulse">
                                                    <div className="w-2 h-2 rounded-full bg-yellow-500"></div>
                                                </div>
                                                <p className="text-[10px] md:text-xs text-yellow-200/80 leading-relaxed text-left">
                                                    Seu acesso será liberado automaticamente após a confirmação do pagamento (geralmente instantâneo).
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div className="border-t border-white/10 pt-4 md:pt-6">
                                        <div className="flex justify-between items-center mb-4 md:mb-6">
                                            <span className="text-gray-400 text-sm">Valor a pagar:</span>
                                            <span className="text-2xl md:text-3xl font-black text-white">{plan.price}</span>
                                        </div>

                                        {paymentError && (
                                            <div className="mb-4 bg-red-500/10 border border-red-500/20 rounded-xl p-4 flex items-start gap-3 animate-fade-in relative group">
                                                <Shield className="w-5 h-5 text-red-500 shrink-0 mt-0.5" />
                                                <div className="flex-1">
                                                    <p className="text-sm font-bold text-red-400 mb-1">Não identificamos seu pagamento</p>
                                                    <p className="text-xs text-red-300/80 leading-relaxed">
                                                        {paymentError}
                                                    </p>
                                                </div>
                                                <button
                                                    onClick={() => setPaymentError(null)}
                                                    className="absolute top-2 right-2 p-1 text-red-400 hover:text-white hover:bg-red-500/20 rounded-lg transition-colors"
                                                >
                                                    <X className="w-4 h-4" />
                                                </button>
                                            </div>
                                        )}

                                        <button
                                            onClick={handleConfirmPayment}
                                            disabled={activating}
                                            className={`w-full py-3 md:py-4 rounded-xl font-bold text-white text-lg shadow-lg shadow-purple-900/20 transform transition-all hover:scale-[1.02] disabled:opacity-70 disabled:cursor-not-allowed flex items-center justify-center gap-2 ${buttonClass}`}
                                        >
                                            {activating ? (
                                                <>
                                                    <Loader2 className="w-5 h-5 animate-spin" />
                                                    Verificando...
                                                </>
                                            ) : (
                                                'Já realizei o pagamento'
                                            )}
                                        </button>
                                    </div>
                                </>
                            )}
                        </>
                    ) : (
                        // SUCCESS STATE
                        <div className="h-full flex flex-col justify-center items-center text-center animate-fade-in py-12">
                            <div className="w-24 h-24 bg-green-500 rounded-full flex items-center justify-center mb-6 shadow-2xl shadow-green-500/30">
                                <Check className="w-12 h-12 text-white" />
                            </div>
                            <h2 className="text-3xl font-black text-white mb-2">Parabéns pela compra!</h2>
                            <p className="text-gray-400 mb-8 max-w-sm">
                                Sua assinatura do <strong>{plan.name}</strong> foi confirmada e já está ativa em sua conta.
                            </p>

                            <div className="w-full max-w-xs bg-white/5 rounded-2xl p-6 border border-white/5 mb-8">
                                <div className="flex justify-between mb-4 pb-4 border-b border-white/5">
                                    <span className="text-gray-400 text-sm">Status</span>
                                    <span className="text-green-400 font-bold text-sm uppercase">Ativo</span>
                                </div>
                                <div className="flex justify-between">
                                    <span className="text-gray-400 text-sm">Expira em</span>
                                    <span className="text-white font-bold text-sm">
                                        {/* Calculate simple date for display */}
                                        {new Date(Date.now() + (plan.slug === 'lifetime' ? 3153600000000 : plan.slug === 'annual' ? 31536000000 : 2592000000)).toLocaleDateString()}
                                    </span>
                                </div>
                            </div>

                            <button
                                onClick={() => navigate('/')}
                                className="w-full max-w-xs py-4 bg-white text-black rounded-xl font-black text-lg hover:bg-gray-200 transition-colors flex items-center justify-center gap-2"
                            >
                                <Play className="w-5 h-5 fill-current" />
                                Começar a Assistir
                            </button>
                        </div>
                    )}
                </div>
            </div>
        </div>
    )
}
