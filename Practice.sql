/*
Created By: Dmitrii Govor
Create Date: 03/15/2023
Description: How many invoices were billed to Brussels, Orlando or Paris?
*/

SELECT 
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	BillingCity IN ('Brussels', 'Orlando', 'Paris')
ORDER BY
	InvoiceDate DESC