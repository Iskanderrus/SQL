-- count total number of employees, number of unique names and family names
SELECT
COUNT(first_name) AS "Employee count",
COUNT(DISTINCT first_name) AS "All unique Employee Names", 
COUNT(DISTINCT last_name) AS "All unique Employee Famlily Names"
FROM "public"."employees"; 

-- returns formatted results for total amount of salaries, average, max and min salaries
SELECT
to_char(sum(salary), '999G999G999G999D99') AS "Total Salaries Paid",
to_char(avg(salary), '999G999D99') AS "Average salary", 
to_char(max(salary), '999G999D99') AS "Highest salary",
to_char(min(salary), '999G999D99') AS "Lowest salary"
FROM "public"."salaries"; 
