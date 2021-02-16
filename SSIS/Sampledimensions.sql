USE sample
GO
CREATE TABLE Product_Dim
(
ProductKey INT NOT NULL IDENTITY,
ProductID INT,
ProductName VARCHAR(100),
Package NVARCHAR(50),
UnitPrice DECIMAL(12,2),
IsDiscontinued BIT,
PRIMARY KEY (ProductKey)
);

GO
CREATE TABLE Customer_Dim
(
CustomerKey INT NOT NUll IDENTITY,
CustomerID	INT,
FirstName NVARCHAR(40),
LastName NVARCHAR(40),
City NVARCHAR(50),
Country VARCHAR(50),
Phone NVARCHAR(20),
PRIMARY KEY (CustomerKey)
);

GO
CREATE TABLE Supplier_Dim
(
SupplierKey INT NOT NUll IDENTITY,
SupplierID	INT,
CompanyName NVARCHAR(50),
City NVARCHAR(40),
Country VARCHAR(40),
Phone NVARCHAR(20),
Fax NVARCHAR(30),
PRIMARY KEY (SupplierKey)
);
GO
CREATE TABLE Calendar_Dim
(
CalendarKey INT NOT NULL IDENTITY,
FullDate varchar(50),
DayofWeek_ CHAR(15),
DayofMonth_ INT,
Month_	CHAR(15),
Quarter_ CHAR(2),
Year_ INT,
PRIMARY KEY (CalendarKey)
);

GO
CREATE TABLE Order_Dim
(
OrderKey INT NOT NULL IDENTITY,
ID INT,
OrderID INT,
PRIMARY KEY (OrderKey)
);
CREATE TABLE Club_Fact
(
CalendarKey INT,
ProductKey INT,
CustomerKey INT,
SupplierKey INT,
OrderID INT,
TotalAmount DECIMAL(12,2),
Quantity INT,
UnitPrice DECIMAL(12,2),
PRIMARY KEY(ProductKey, OrderID),
FOREIGN KEY (CalendarKey) REFERENCES Calendar_Dim (CalendarKey),
FOREIGN KEY (ProductKey) REFERENCES Product_Dim (ProductKey),
FOREIGN KEY (CustomerKey) REFERENCES Customer_Dim(CustomerKey),
FOREIGN KEY (SupplierKey) REFERENCES Supplier_Dim (SupplierKey)
);



CREATE TABLE Temp1(
CalendarKey int,
ProductKey int,
CustomerKey int,
SupplierKey int,
ProductId int,
CustomerId int,
SupplierId int,
OrderID int,
OrderDate varchar(50),
TotalAmount decimal(12,2),
Quantity INT,
UnitPrice decimal(12,2)
)