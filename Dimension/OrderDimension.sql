
INSERT INTO Order_Dim(OrderID)
SELECT ID from OrderItem


UPDATE Order_Dim SET Order_Dim.ID = o.OrderId
FROM  OrderItem o INNER JOIN Order_Dim e ON e.OrderID= o.ID
