import DOMPurify from 'isomorphic-dompurify';

/**
 * Sanitize user input to prevent XSS attacks
 * Removes ALL HTML tags and attributes
 * Use for: profile names, search queries, plain text inputs
 */
export const sanitizeInput = (input) => {
    if (!input || typeof input !== 'string') return '';

    return DOMPurify.sanitize(input, {
        ALLOWED_TAGS: [],
        ALLOWED_ATTR: [],
        KEEP_CONTENT: true
    }).trim();
};

/**
 * Sanitize HTML content allowing only safe tags
 * Use for: rich text content, descriptions
 */
export const sanitizeHTML = (html) => {
    if (!html || typeof html !== 'string') return '';

    return DOMPurify.sanitize(html, {
        ALLOWED_TAGS: ['b', 'i', 'em', 'strong', 'p', 'br', 'ul', 'ol', 'li'],
        ALLOWED_ATTR: [],
        KEEP_CONTENT: true
    });
};

/**
 * Sanitize URL to prevent javascript: and data: URIs
 * Use for: user-provided links
 */
export const sanitizeURL = (url) => {
    if (!url || typeof url !== 'string') return '';

    const sanitized = DOMPurify.sanitize(url, {
        ALLOWED_TAGS: [],
        ALLOWED_ATTR: []
    });

    // Only allow http(s) protocols
    if (sanitized.startsWith('http://') || sanitized.startsWith('https://')) {
        return sanitized;
    }

    return '';
};
