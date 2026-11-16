SELECT
    host_id,
    host_name,
    COUNT(*) AS listing_count
FROM listings
GROUP BY host_id, host_name
ORDER BY listing_count DESC
LIMIT 20;