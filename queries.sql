-- Welcome text for the homepage
EXPLAIN SELECT Title, ShortDescription, Description 
FROM Department 
WHERE ParentDepartmentID IS NULL;

-- List of the top level departments with fields needed for the homepage
EXPLAIN SELECT Title, ShortDescription
FROM Department
WHERE ParentDepartmentID = 1
ORDER BY Title;

-- List of the featured products with fields needed for the homepage
EXPLAIN SELECT Title, ShortDescription, ROUND((BasePriceNet * (1 - DiscountPercent/100)) * (1 + VATPercent/100), 2) AS CurrentRetailPrice
FROM Product
WHERE IsFeatured = True
ORDER BY Title;

-- Given a product, list all keyword-related products
SET @ProductID = 3;
EXPLAIN SELECT DISTINCT p.Title, p.ShortDescription, ROUND((p.BasePriceNet * (1 - p.DiscountPercent/100)) * (1 + p.VATPercent/100), 2) AS CurrentRetailPrice
FROM Product_Keyword AS pk_base		# pk_base stands for the product keyword relationship table of the given product
JOIN Product_Keyword AS pk_other	# pk_other stands for the product keyword relationship table of the other products that are related to the keywords of pk_base
	ON pk_base.KeywordID = pk_other.KeywordID
JOIN Product as p
	ON pk_other.ProductID = p.ProductID
WHERE pk_base.ProductID = @ProductID 
AND pk_other.ProductID <> @ProductID
ORDER BY Title;

-- Given a department, list of all its products (title, short description, current retail price) with their average rating
SET @DepartmentID = 25;
EXPLAIN SELECT p.Title, p.ShortDescription, ROUND((p.BasePriceNet * (1 - p.DiscountPercent/100)) * (1 + p.VATPercent/100), 2) AS CurrentRetailPrice, 
		COALESCE(ROUND(AVG(up.Stars), 2), 0 )AS AverageRating		# treats no review as 0 stars
FROM Product AS p
LEFT JOIN User_Product AS up
	ON up.ProductID = p.ProductID
WHERE p.DepartmentID = @DepartmentID
GROUP BY p.ProductID
ORDER BY p.Title;

-- List of all products on sale sorted by the discount percentage (starting with the biggest discount)
EXPLAIN SELECT Title, DiscountPercent
FROM Product
WHERE DiscountPercent <> 0.00
ORDER BY DiscountPercent DESC, Title;

-- List 10 best-selling products (in last 30 days)
EXPLAIN SELECT p.ProductID, p.Title, SUM(op.Quantity) AS TotalUnitsSold
FROM Product AS p
JOIN Order_Product as op
	ON p.ProductID = op.ProductID
JOIN Orders AS o
      ON o.OrderID = op.OrderID
WHERE o.OrderDate >= CURRENT_DATE() - INTERVAL 30 DAY
GROUP BY p.ProductID, p.Title
ORDER BY TotalUnitsSold DESC, p.Title
LIMIT 10;







