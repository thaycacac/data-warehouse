/* Phân tích tổng số lượng bán được và tổng chi phí vận
   chuyển theo Product Category */

SELECT Dim_ProductCategory.Category AS ProductCategory, SUM(SoldProductQty) AS SoldQuantity, SUM(Freight) AS Freight
FROM Facts
INNER JOIN Dim_ProductCategory
ON Facts.ProductCategoryID = Dim_ProductCategory.id
GROUP BY Dim_ProductCategory.Category

/* Phân tích tổng số lượng bán được và tổng chi phí vận
   chuyển theo City */

SELECT Dim_Customer.City, SUM(SoldProductQty) AS SoldQuantity, SUM(Freight) AS Freight
FROM Facts
INNER JOIN Dim_Customer
ON facts.CustomerID = Dim_Customer.id
WHERE facts.CustomerID IS NOT NULL
GROUP BY Dim_Customer.City


/* Phân tích tổng số lượng bán được và tổng chi phí vận
   chuyển theo ProductCategory theo thời gian bán 
   hàng (năm và tháng) */

SELECT Dim_Time.Year, Dim_Time.Month, SUM(SoldProductQty) AS SoldQuantity, SUM(Freight) AS Freight
FROM Facts
INNER JOIN Dim_Time
ON Dim_Time.id = facts.OrderTimeID
GROUP BY Dim_Time.YEAR, Dim_Time.MONTH
