SELECT
	Dim_ProductCategory.Category,
	Dim_Customer.City,
	Dim_Time.Year,
	Dim_Time.Month,
	Dim_Sale_Territory.Name,
	sum(Facts.SoldProductQty) as SoldProductQty,
	sum(Facts.Freight) as Freight
FROM Facts 
INNER JOIN Dim_Customer ON Facts.CustomerID = Dim_Customer.id
LEFT JOIN Dim_Sale_Territory ON Facts.TerritoryID = Dim_Sale_Territory.id 
LEFT JOIN Dim_Time ON Facts.OrderTimeID = Dim_Time.id
INNER JOIN Dim_ProductCategory ON Facts.ProductCategoryID = Dim_ProductCategory.id
GROUP BY
	Dim_Customer.City,
	Dim_Time.Year,
	Dim_Time.Month,
	Dim_Sale_Territory.Name,
	Dim_ProductCategory.Category
ORDER BY
	Dim_ProductCategory.Category,
	Dim_Customer.City,
	Dim_Time.Year,
	Dim_Time.Month,
	Dim_Sale_Territory.Name
