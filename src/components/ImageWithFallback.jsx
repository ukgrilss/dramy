
import { useState, useEffect } from 'react'
import { ImageOff } from 'lucide-react'

export default function ImageWithFallback({ src, alt, className, fallbackText }) {
    const [error, setError] = useState(false)

    useEffect(() => {
        setError(false)
    }, [src])

    if (!src || error) {
        return (
            <div className={`bg-gradient-to-br from-gray-800 to-gray-900 flex flex-col items-center justify-center text-center p-2 ${className}`}>
                <ImageOff className="w-8 h-8 text-gray-600 mb-2" />
                {fallbackText && (
                    <span className="text-xs text-gray-500 font-medium line-clamp-3">
                        {fallbackText}
                    </span>
                )}
            </div>
        )
    }

    return (
        <img
            src={src}
            alt={alt}
            className={className}
            onError={(e) => {
                console.error(`[ImageWithFallback] Error loading: ${src}`);
                setError(true);
            }}
            onLoad={() => console.log(`[ImageWithFallback] Success: ${src}`)}
            loading="lazy"
        />
    )
}
