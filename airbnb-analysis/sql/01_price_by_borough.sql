SELECT
    neighbourhood_group,
    ROUND(AVG(price)::numeric, 2) AS avg_price,
    COUNT(*) AS listing_count
FROM listings
GROUP BY neighbourhood_group
ORDER BY avg_price DESC;