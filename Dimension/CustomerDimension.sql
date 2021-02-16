
INSERT INTO Customer_Dim(CustomerID)
SELECT ID from Customer


UPDATE Customer_Dim SET Customer_Dim.FirstName = c.FirstName
FROM  Customer c INNER JOIN Customer_Dim a ON a.CustomerID= c.ID


UPDATE Customer_Dim SET Customer_Dim.LastName = c.LastName
FROM  Customer c INNER JOIN Customer_Dim a ON a.CustomerID= c.ID


UPDATE Customer_Dim SET Customer_Dim.City = c.City
FROM  Customer c INNER JOIN Customer_Dim a ON a.CustomerID= c.ID


UPDATE Customer_Dim SET Customer_Dim.Country = c.Country
FROM  Customer c INNER JOIN Customer_Dim a ON a.CustomerID= c.ID

UPDATE Customer_Dim SET Customer_Dim.Phone = c.Phone
FROM  Customer c INNER JOIN Customer_Dim a ON a.CustomerID= c.ID


