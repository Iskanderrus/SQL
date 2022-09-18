/*
filtering out IDs for all female customers under 45 years from states Oregon and New York with income over 50K
*/
SELECT 
customerid AS "ID", 
gender AS "Gender", 
age AS "Age",
state AS "State"
FROM "public"."customers"
WHERE "public"."customers"."gender" = 'F' AND
("public"."customers"."state" = 'OR' OR "public"."customers"."state" = 'NY') 
GROUP BY customerid
HAVING (NOT "public"."customers"."age" > 45) AND (income > 50000)
ORDER BY "public"."customers"."state"; 