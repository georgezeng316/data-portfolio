-- 05_neighbourhood_pricing_rank.sql

SELECT
    neighbourhood,
    COUNT(*) AS listing_count,
    ROUND(AVG(price)::numeric, 2) AS avg_price,
    RANK() OVER (
        ORDER BY AVG(price) DESC
    ) AS price_rank
FROM listings
GROUP BY neighbourhood
HAVING COUNT(*) >= 50
ORDER BY price_rank
LIMIT 20;