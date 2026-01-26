
import { useEffect, useState } from 'react'
import { supabase } from '@/lib/supabase'

export default function DataDebugger() {
    const [debugData, setDebugData] = useState(null)
    const [loading, setLoading] = useState(false)

    const checkData = async () => {
        setLoading(true)
        const results = {}

        try {
            // 1. Check for duplicates of 'PAPAI É O REI VAMPIRO'
            const { data: vampireData, error: vampireError } = await supabase
                .from('filmes')
                .select('id, titulo, capa, created_at')
                .ilike('titulo', '%PAPAI É O REI VAMPIRO%')
            results.vampire = vampireData

            // 2. Check for 'MAIS FORTE QUE O DESTINO'
            const { data: destinyData, error: destinyError } = await supabase
                .from('filmes')
                .select('id, titulo, capa, created_at')
                .ilike('titulo', '%MAIS FORTE QUE O DESTINO%')
            results.destiny = destinyData

            // 3. Check for whitespace/hidden characters
            // Fetch the raw title to see if it matches exactly or has spaces
            const { data: strictDestiny, error: strictError } = await supabase
                .from('filmes')
                .select('id, titulo')
                .eq('titulo', 'MAIS FORTE QUE O DESTINO')
            results.strictDestinyMatch = strictDestiny

        } catch (e) {
            results.error = e.message
        }

        setDebugData(results)
        setLoading(false)
    }

    if (!debugData && !loading) {
        return (
            <button
                onClick={checkData}
                className="fixed top-24 left-4 bg-red-600 text-white px-6 py-4 rounded-lg shadow-[0_0_20px_rgba(255,0,0,0.8)] z-[9999] font-bold border-2 border-white animate-bounce text-lg"
            >
                🐞 CLIQUE AQUI PARA DIAGNOSTICAR
            </button>
        )
    }

    return (
        <div className="fixed inset-0 bg-black/90 z-[100] p-8 overflow-auto text-green-400 font-mono text-xs">
            <div className="max-w-4xl mx-auto border border-green-500 p-4 rounded bg-black">
                <div className="flex justify-between items-center mb-4">
                    <h1 className="text-xl font-bold text-white">Data Diagnosis Report</h1>
                    <button onClick={() => setDebugData(null)} className="text-red-500 hover:text-red-400">CLOSE [X]</button>
                </div>

                {loading ? (
                    <p>Scanning database...</p>
                ) : (
                    <div className="space-y-6">
                        <section>
                            <h2 className="text-white text-lg border-b border-gray-700 pb-2 mb-2">1. 'PAPAI É O REI VAMPIRO' (Found: {debugData.vampire?.length})</h2>
                            {debugData.vampire?.map(item => (
                                <div key={item.id} className="mb-2 pl-4 border-l-2 border-gray-700">
                                    <p><span className="text-gray-500">ID:</span> {item.id}</p>
                                    <p><span className="text-gray-500">TITLE:</span> "{item.titulo}"</p>
                                    <p><span className="text-gray-500">CAPA:</span> {item.capa || 'NULL'}</p>
                                    {item.capa && <a href={item.capa} target="_blank" className="text-blue-400 underline">Open Image</a>}
                                </div>
                            ))}
                        </section>

                        <section>
                            <h2 className="text-white text-lg border-b border-gray-700 pb-2 mb-2">2. 'MAIS FORTE QUE O DESTINO' (Found: {debugData.destiny?.length})</h2>
                            {debugData.destiny?.map(item => (
                                <div key={item.id} className="mb-2 pl-4 border-l-2 border-gray-700">
                                    <p><span className="text-gray-500">ID:</span> {item.id}</p>
                                    <p><span className="text-gray-500">TITLE:</span> "{item.titulo}"</p>
                                    <p><span className="text-gray-500">CAPA:</span> {item.capa || 'NULL'}</p>
                                </div>
                            ))}
                        </section>

                        <section>
                            <h2 className="text-white text-lg border-b border-gray-700 pb-2 mb-2">3. Whitespace Analysis</h2>
                            <p>Strict Match Count: {debugData.strictDestinyMatch?.length}</p>
                            {debugData.strictDestinyMatch?.length === 0 && (
                                <p className="text-red-500">WARNING: Exact string match failed. The title probably has extra spaces or hidden characters.</p>
                            )}
                        </section>
                    </div>
                )}
            </div>
        </div>
    )
}
