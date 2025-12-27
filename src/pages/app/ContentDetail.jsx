import { useParams } from 'react-router-dom'

export default function ContentDetail() {
    const { id } = useParams()

    return (
        <div className="container mx-auto px-4 py-8">
            <h1 className="text-3xl font-black text-white mb-6">Detalhes do Conteúdo</h1>
            <p className="text-gray-400">ID: {id}</p>
            <p className="text-gray-400">Em desenvolvimento...</p>
        </div>
    )
}
