
INSERT INTO Product_Dim(ProductID)
SELECT ID from Product


UPDATE Product_Dim SET Product_Dim.ProductName = p.ProductName
FROM  Product p INNER JOIN Product_Dim b ON b.ProductID= p.ID


UPDATE Product_Dim SET Product_Dim.UnitPrice = p.UnitPrice
FROM  Product p INNER JOIN Product_Dim b ON b.ProductID= p.ID


UPDATE Product_Dim SET Product_Dim.Package = p.Package
FROM  Product p INNER JOIN Product_Dim b ON b.ProductID= p.ID


UPDATE Product_Dim SET Product_Dim.IsDiscontinued = p.IsDiscontinued
FROM  Product p INNER JOIN Product_Dim b ON b.ProductID= p.ID


