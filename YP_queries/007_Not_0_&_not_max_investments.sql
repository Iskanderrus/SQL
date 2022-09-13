SELECT funded_at::date, 
       MIN(raised_amount) AS min_amount, 
       MAX(raised_amount) AS max_amount
FROM funding_round
GROUP BY funded_at::date
HAVING MIN(raised_amount) != 0 and 
MIN(raised_amount) <> MAX(raised_amount) 
ORDER BY MAX(raised_amount) DESC; 
