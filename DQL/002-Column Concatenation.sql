SELECT 
    emp_no AS "Employee Number", 
    CONCAT(first_name, ' ', last_name) AS "Full Name", 
    gender AS "Employee Gender",
    birth_date AS "Birth Date", 
    hire_date AS "Hired on"
FROM employees;