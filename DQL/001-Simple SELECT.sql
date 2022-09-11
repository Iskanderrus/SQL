/*Select all from Employees table: */
-- SELECT *
-- FROm "public"."employees";


/*Find out how many departments are there in the organization:*/
-- SELECT count(DISTINCT dept_name)
-- FROM departments;

/*How many times had employee 10001 had a raise: */
-- SELECT salary, from_date
-- FROM salaries
-- WHERE emp_no=10001;

/*What title does 10006 have:*/
SELECT title
FROM titles
WHERE emp_no=10006; 
