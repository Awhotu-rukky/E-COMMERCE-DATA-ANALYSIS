SELECT
Orderstatus,
(SELECT COUNT(CustomerID)
FROM [Dataset for Data Analytics  CLEANED]) AS Totalcustomers,
COUNT (*) AS Numberoforeders
FROM [Dataset for Data Analytics  CLEANED]
GROUP BY OrderStatus



SELECT * FROM [Dataset for Data Analytics  CLEANED]
WHERE TotalPrice > (SELECT AVG(Totalprice)
FROM [Dataset for Data Analytics  CLEANED])
SELECT PaymentMethod,
SUM(Quantity) AS Totalquantity
FROM [Dataset for Data Analytics  CLEANED]
GROUP BY Paymentmethod



SELECT OrderID,PaymentMethod,OrderStatus,TotalPrice,
CASE WHEN TotalPrice < 1500 THEN 'Low'
WHEN TotalPrice < 3000 THEN 'Medium'
ELSE 'High' END REVENUE
FROM [Dataset for Data Analytics  CLEANED]





SELECT  Product,SUM(QUANTITY) TotalProduct
FROM [Dataset for Data Analytics  CLEANED]
WHERE Quantity>2
GROUP BY Product
ORDER BY 2 DESC