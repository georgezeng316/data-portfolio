SELECT
    neighbourhood_group,
    COUNT(*) AS listings,
    ROUND(
        100.0 * COUNT(*) /
        SUM(COUNT(*)) OVER (),
        2
    ) AS pct_of_market
FROM listings
GROUP BY neighbourhood_group
ORDER BY listings DESC;