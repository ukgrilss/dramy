
import { Helmet } from 'react-helmet-async'

const SEO = ({
    title,
    description,
    image,
    url,
    type = 'website',
    keywords = []
}) => {
    const siteName = 'Dramy'
    const defaultDescription = 'Assista aos melhores doramas, séries e filmes asiáticos online. Novalinhas, lançamentos e clássicos em HD.'
    const defaultKeywords = ['dorama', 'novalinhas', 'assistir dorama', 'streaming asiático', 'k-drama', 'c-drama', 'j-drama']

    // Merge keywords
    const allKeywords = [...defaultKeywords, ...keywords].join(', ')

    // Construct title
    const fullTitle = title ? `${title} | ${siteName}` : `${siteName} - O Melhor Streaming de Doramas`

    return (
        <Helmet>
            {/* Standard Metadata */}
            <title>{fullTitle}</title>
            <meta name="description" content={description || defaultDescription} />
            <meta name="keywords" content={allKeywords} />

            {/* Open Graph / Facebook */}
            <meta property="og:type" content={type} />
            <meta property="og:title" content={fullTitle} />
            <meta property="og:description" content={description || defaultDescription} />
            <meta property="og:site_name" content={siteName} />
            {image && <meta property="og:image" content={image} />}
            {url && <meta property="og:url" content={url} />}

            {/* Twitter */}
            <meta name="twitter:card" content="summary_large_image" />
            <meta name="twitter:title" content={fullTitle} />
            <meta name="twitter:description" content={description || defaultDescription} />
            {image && <meta name="twitter:image" content={image} />}

            {/* Canonical */}
            {url && <link rel="canonical" href={url} />}
        </Helmet>
    )
}

export default SEO
