SELECT 
	productCategory.Name AS ProductCategory,
	customer_info.City AS City,
	YEAR(orderHeader.OrderDate) AS [year],
	MONTH(orderHeader.OrderDate) AS [month],
	saleTerritory.Name,
	SUM(orderDetails.OrderQty) AS SoldProductQty, 
	SUM(orderHeader.Freight) AS Freight
FROM Sales.SalesOrderDetail as orderDetails
LEFT JOIN Sales.SalesOrderHeader AS orderHeader
	ON orderDetails.SalesOrderID = orderHeader.SalesOrderID
INNER JOIN Sales.vIndividualCustomer AS customer_info
	ON customer_info.CustomerID = orderHeader.CustomerID
LEFT JOIN Sales.SalesTerritory as saleTerritory
	ON orderHeader.TerritoryID = saleTerritory.TerritoryID
LEFT JOIN Production.Product AS product
	ON product.ProductID = orderDetails.ProductID
LEFT JOIN Production.ProductSubcategory AS productSubCategory
	ON productSubCategory.ProductSubcategoryID = product.ProductSubcategoryID
LEFT JOIN Production.ProductCategory AS productCategory
	ON productSubCategory.ProductCategoryID = productCategory.ProductCategoryID
GROUP BY
	productCategory.Name,
	customer_info.City,
	YEAR(orderHeader.OrderDate),
	MONTH(orderHeader.OrderDate),
	saleTerritory.Name