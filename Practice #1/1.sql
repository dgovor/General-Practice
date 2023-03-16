/*
Created By: Dmitrii Govor
Create Date: 03/15/2023
Description: This query displays all customers first, last names and email addresses
*/

SELECT
	FirstName AS 'Customer First Name',
	LastName AS 'Customer Last Name',
	Email AS 'Customer Email'
FROM
	Customer
ORDER BY
	FirstName ASC,
	LastName ASC
LIMIT 10
