SELECT SUM(price_amount)
FROM acquisition
WHERE EXTRACT(year from acquired_at::date) BETWEEN 2011 and 2013
AND term_code = 'cash'; 
