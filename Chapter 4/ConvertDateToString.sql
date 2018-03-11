--Using CONVERT for Date --> String(VARCHAR)
SELECT
	 CONVERT(VARCHAR,OrderDate,1) AS '1'
	,CONVERT(VARCHAR,OrderDate,101) AS '101'
	,CONVERT(VARCHAR,OrderDate,2) AS '2'
	,CONVERT(VARCHAR,OrderDate,102) AS '102'
FROM Sales.SalesOrderHeader
WHERE SalesOrderID IN (43659, 43714, 60621);

/*
1			101			2			102
05/31/11	05/31/2011	11.05.31	2011.05.31
06/04/11	06/04/2011	11.06.04	2011.06.04
11/21/13	11/21/2013	13.11.21	2013.11.21
*/