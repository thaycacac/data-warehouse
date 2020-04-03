/* Phân tích tổng số lượng bán được và tổng chi phí vận
   chuyển theo Product Category */

SELECT 
  prd_sub_cat.ProductCategoryID,
  SUM(orderDetails.OrderQty) AS SoldProductQty, 
  SUM(orderHeader.Freight) AS Freight
FROM Sales.SalesOrderDetail AS orderDetails
INNER JOIN Sales.SalesOrderHeader AS orderHeader
  ON orderDetails.SalesOrderID = orderHeader.SalesOrderID
INNER JOIN Production.Product AS product_op
  ON product_op.ProductID = orderDetails.ProductID
INNER JOIN Production.ProductSubcategory AS prd_sub_cat
  ON prd_sub_cat.ProductSubcategoryID = product_op.ProductSubcategoryID
GROUP BY prd_sub_cat.ProductCategoryID
ORDER BY prd_sub_cat.ProductCategoryID

/* Phân tích tổng số lượng bán được và tổng chi phí vận
   chuyển theo City */

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


/* Phân tích tổng số lượng bán được và tổng chi phí vận
   chuyển theo ProductCategory theo thời gian bán 
   hàng (năm và tháng) */

SELECT 
  customer_info.City AS City,
  SUM(orderDetails.OrderQty) AS SoldProductQty, 
  SUM(orderHeader.Freight) AS Freight
FROM Sales.SalesOrderDetail AS orderDetails
INNER JOIN Sales.SalesOrderHeader AS orderHeader
  ON orderDetails.SalesOrderID = orderHeader.SalesOrderID
INNER JOIN Sales.vIndividualCustomer AS customer_info
  ON customer_info.CustomerID = orderHeader.CustomerID
GROUP BY customer_info.City

/* Phân tích tổng số lượng bán được và tổng chi phí vận
   chuyển theo SaleTerritory */

SELECT 
  territory.Name AS Territory,
  SUM(orderDetails.OrderQty) AS SoldProductQty, 
  SUM(orderHeader.Freight) AS Freight
FROM Sales.SalesOrderDetail AS orderDetails
INNER JOIN Sales.SalesOrderHeader AS orderHeader
  ON orderDetails.SalesOrderID = orderHeader.SalesOrderID
INNER JOIN Sales.SalesTerritory AS territory
  ON territory.TerritoryID = orderHeader.TerritoryID
GROUP BY territory.Name
