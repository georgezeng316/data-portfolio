SELECT
    CASE
        WHEN calculated_host_listings_count >= 10
            THEN 'Professional Host'
        ELSE 'Individual Host'
    END AS host_type,
    COUNT(*) AS listings
FROM listings
GROUP BY host_type;