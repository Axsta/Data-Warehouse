
INSERT INTO Supplier_Dim(SupplierID)
SELECT ID from Supplier


UPDATE Supplier_Dim SET Supplier_Dim.CompanyName = s.CompanyName
FROM  Supplier s INNER JOIN Supplier_Dim c ON c.SupplierID= s.ID


UPDATE Supplier_Dim SET Supplier_Dim.ContactTitle = s.ContactTitle
FROM  Supplier s INNER JOIN Supplier_Dim c ON c.SupplierID= s.ID


UPDATE Supplier_Dim SET Supplier_Dim.City = s.City
FROM  Supplier s INNER JOIN Supplier_Dim c ON c.SupplierID= s.ID


UPDATE Supplier_Dim SET Supplier_Dim.Country = s.Country
FROM  Supplier s INNER JOIN Supplier_Dim c ON c.SupplierID= s.ID


UPDATE Supplier_Dim SET Supplier_Dim.Phone = s.Phone
FROM  Supplier s INNER JOIN Supplier_Dim c ON c.SupplierID= s.ID


UPDATE Supplier_Dim SET Supplier_Dim.Fax = s.Fax
FROM  Supplier s INNER JOIN Supplier_Dim c ON c.SupplierID= s.ID
