SELECT
    room_type,
    ROUND(AVG(price)::numeric, 2) AS avg_price,
    COUNT(*) AS listing_count
FROM listings
GROUP BY room_type
ORDER BY avg_price DESC;