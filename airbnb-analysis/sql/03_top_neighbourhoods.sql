SELECT
    neighbourhood,
    COUNT(*) AS listing_count,
    ROUND(AVG(price)::numeric, 2) AS avg_price
FROM listings
GROUP BY neighbourhood
HAVING COUNT(*) >= 50
ORDER BY avg_price DESC
LIMIT 10;