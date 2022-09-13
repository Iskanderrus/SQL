WITH 
inv_2011 AS (
    SELECT 
        country_code AS country, 
        AVG(funding_total) AS avg_investment
    FROM company 
    WHERE EXTRACT(year from founded_at::date) = 2011
    GROUP BY country
            ), 
inv_2012 AS (
SELECT 
        country_code AS country, 
        AVG(funding_total) AS avg_investment
    FROM company 
    WHERE EXTRACT(year from founded_at::date) = 2012
    GROUP BY country
),
inv_2013 AS (
SELECT 
        country_code AS country, 
        AVG(funding_total) AS avg_investment
    FROM company 
    WHERE EXTRACT(year from founded_at::date) = 2013
    GROUP BY country
)
SELECT 
    inv_2011.country AS country, 
    inv_2011.avg_investment AS inv_2011, 
    inv_2012.avg_investment AS inv_2012, 
    inv_2013.avg_investment AS inv_2013
FROM inv_2011
JOIN inv_2012 ON inv_2011.country=inv_2012.country
JOIN inv_2013 ON inv_2012.country=inv_2013.country
ORDER BY inv_2011 DESC
