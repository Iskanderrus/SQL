/*
query to filter out all female employees with specified birth dates and sort them by birth day and date of employment
*/
SELECT 
emp_no AS "ID", 
CONCAT(first_name, ' ', last_name) AS "Employee", 
birth_date AS "Birth date", 
hire_date AS "Hired on"
FROM employees
WHERE (birth_date = '1952-02-01') OR (birth_date = '1965-02-01') AND gender = 'F' 
ORDER BY "birth_date", hire_date; 