SELECT Production.ProductCategory.Name, SUM(Sales.SalesOrderHeader.Freight) as Freight, SUM(Sales.SalesOrderDetail.OrderQty) as Quantity
FROM Production.ProductCategory INNER JOIN
Production.ProductSubcategory ON Production.ProductCategory.ProductCategoryID = Production.ProductSubcategory.ProductCategoryID AND 
Production.ProductCategory.ProductCategoryID = Production.ProductSubcategory.ProductCategoryID RIGHT OUTER JOIN
Sales.SalesOrderDetail LEFT OUTER JOIN
Production.Product ON Sales.SalesOrderDetail.ProductID = Production.Product.ProductID LEFT OUTER JOIN
Sales.SalesOrderHeader ON Sales.SalesOrderDetail.SalesOrderID = Sales.SalesOrderHeader.SalesOrderID ON Production.ProductSubcategory.ProductSubcategoryID = Production.Product.ProductSubcategoryID AND 
Production.ProductSubcategory.ProductSubcategoryID = Production.Product.ProductSubcategoryID
GROUP BY Production.ProductCategory.Name

SELECT 
  YEAR(orderHeader.OrderDate) AS target_year,
  MONTH(orderHeader.OrderDate) AS target_month,
  SUM(orderDetails.OrderQty) AS SoldProductQty, 
  SUM(orderHeader.Freight) AS Freight
FROM Sales.SalesOrderDetail AS orderDetails
INNER JOIN Sales.SalesOrderHeader AS orderHeader
  ON orderDetails.SalesOrderID = orderHeader.SalesOrderID
INNER JOIN Production.Product AS product_op
  ON product_op.ProductID = orderDetails.ProductID
INNER JOIN Production.ProductSubcategory AS prd_sub_cat
  ON prd_sub_cat.ProductSubcategoryID = product_op.ProductSubcategoryID
GROUP BY YEAR(orderHeader.OrderDate), MONTH(orderHeader.OrderDate)