/*
Created By: Dmitrii Govor
Create Date: 03/17/2023
Description:
*/

CREATE VIEW V_Tracks_InvoiceLine AS
SELECT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine il
INNER JOIN
	Track t
ON
	il.TrackId = t.TrackId