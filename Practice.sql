/*
Created By: Dmitrii Govor
Create Date: 03/20/2023
Description: List of customers highest commission employee supported
*/

SELECT
	c.FirstName AS [Customer First Name],
	c.LastName AS [Customer Last Name],
	e.FirstName AS [Employee First Name],
	e.LastName AS [Employee Last Name],
	sum(i.total) AS [Total Sales],
	round(sum(i.total) *.15,2) AS Commission
FROM
	Invoice i
INNER JOIN
	Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN
	Employee e
ON e.EmployeeId = c.SupportRepId
WHERE
	InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31'
AND e.LastName = 'Peacock'
GROUP BY
	c.FirstName,
	c.LastName
ORDER BY [Total Sales] DESC
