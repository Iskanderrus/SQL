/*
filtering out IDs for all female customers under 45 years from states Oregon and New York
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
HAVING NOT "public"."customers"."age" > 45
ORDER BY "public"."customers"."state"; 