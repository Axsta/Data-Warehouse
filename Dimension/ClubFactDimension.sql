INSERT INTO Temp1(ProductId,CustomerId,OrderId, SupplierID, OrderDate,TotalAmount,Quantity,UnitPrice)
SELECT p.ID,c.ID,o.ID,s.Id, o.OrderDate,o.TotalAmount,d.Quantity,p.UnitPrice
FROM Product p, Customer c, OrderItem d, "Order" o, Supplier s
Where d.ProductID = p.ID and o.CustomerID = c.ID and d.OrderID = o.ID and s.Id= p.SupplierId

UPDATE Temp1 SET Temp1.SupplierKey = s.SupplierKey 
from Supplier_Dim s Inner join Temp1 t on  s.SupplierID = t.SupplierID


go
UPDATE Temp1 SET Temp1.ProductKey = p.ProductKey 
from Product_Dim p Inner join Temp1 t on  p.ProductID = t.ProductId

UPDATE Temp1 SET Temp1.CustomerKey =  p.CustomerKey from Customer_Dim p Inner Join Temp1 t on t.CustomerId = p.CustomerID
UPDATE Temp1 SET Temp1.CalendarKey =  p.CalendarKey from Calendar_Dim p Inner Join Temp1 t on t.OrderDate = p.FullDate


Insert into Club_Fact(CalendarKey,ProductKey,CustomerKey,SupplierKey,OrderID,TotalAmount,Quantity,UnitPrice)
SELECT distinct CalendarKey,ProductKey,CustomerKey,SupplierKey,OrderID,TotalAmount,Quantity,UnitPrice FROM Temp1

SELECT * FROM Club_Fact f where f.CustomerKey =4
SELECT * FROM Temp1























