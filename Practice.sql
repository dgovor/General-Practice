/*
Created By: Dmitrii Govor
Create Date: 03/17/2023
Description:
*/

SELECT
	*
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY
	c.CustomerId
