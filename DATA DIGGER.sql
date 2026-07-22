CREATE DATABASE Data_Digger;

CREATE TABLE Customers (CustomerID INT PRIMARY KEY,Name VARCHAR(50),Email VARCHAR(50),Address VARCHAR(100));

INSERT INTO Customers VALUES (1, 'Alice', 'alice@gmail.com', 'Ahmedabad');
INSERT INTO Customers VALUES (2, 'Bob', 'bob@gmail.com', 'Surat');
INSERT INTO Customers VALUES (3, 'Charlie', 'charlie@gmail.com', 'Rajkot');
INSERT INTO Customers VALUES (4, 'David', 'david@gmail.com', 'Vadodara');
INSERT INTO Customers VALUES (5, 'Emma', 'emma@gmail.com', 'Mumbai');

SELECT * FROM Customers;

UPDATE Customers SET Address = 'Pune' WHERE CustomerID = 2;

DELETE FROM Customers WHERE CustomerID = 5;

SELECT * FROM Customers WHERE Name = 'Alice';

CREATE TABLE Orders (OrderID INT PRIMARY KEY,CustomerID INT,OrderDate DATE,TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID));
    
INSERT INTO Orders VALUES (101, 1, '2026-07-01', 1500);
INSERT INTO Orders VALUES (102, 2, '2026-07-10', 2200);
INSERT INTO Orders VALUES (103, 3, '2026-07-15', 900);
INSERT INTO Orders VALUES (104, 1, '2026-07-18', 3000);
INSERT INTO Orders VALUES (105, 4, '2026-07-20', 1800);

SELECT * FROM Orders WHERE CustomerID = 1;

UPDATE Orders SET TotalAmount = 2500 WHERE OrderID = 102;

DELETE FROM Orders WHERE OrderID = 103;

SELECT * FROM Orders WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

SELECT MAX(TotalAmount) AS Highest, MIN(TotalAmount) AS Lowest, AVG(TotalAmount) AS Average FROM Orders;

CREATE TABLE Products (ProductID INT PRIMARY KEY, ProductName VARCHAR(50),Price DECIMAL(10,2),Stock INT);

INSERT INTO Products VALUES (1, 'Laptop', 55000, 10);
INSERT INTO Products VALUES (2, 'Mouse', 700, 30);
INSERT INTO Products VALUES (3, 'Keyboard', 1500, 20);
INSERT INTO Products VALUES (4, 'Headphones', 2500, 0);
INSERT INTO Products VALUES (5, 'Monitor', 12000, 8);

SELECT * FROM Products ORDER BY Price DESC;

UPDATE Products SET Price = 800 WHERE ProductID = 2;

DELETE FROM Products WHERE Stock = 0;

SELECT * FROM Products WHERE Price BETWEEN 500 AND 2000;

SELECT MAX(Price) AS HighestPrice, MIN(Price) AS LowestPrice FROM Products;

CREATE TABLE OrderDetails (OrderDetailID INT PRIMARY KEY,OrderID INT,ProductID INT,Quantity INT,SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID));
    
INSERT INTO OrderDetails VALUES (1, 101, 1, 1, 55000);
INSERT INTO OrderDetails VALUES (2, 102, 3, 2, 3000);
INSERT INTO OrderDetails VALUES (3, 104, 2, 3, 2100);
INSERT INTO OrderDetails VALUES (4, 104, 5, 1, 12000);
INSERT INTO OrderDetails VALUES (5, 105, 2, 2, 1400);

SELECT * FROM OrderDetails WHERE OrderID = 101;

SELECT SUM(SubTotal) AS TotalRevenue FROM OrderDetails;

SELECT ProductID, SUM(Quantity) AS TotalSold FROM OrderDetails GROUP BY ProductID ORDER BY TotalSold DESC LIMIT 3;

SELECT COUNT(ProductID) AS TimesSold FROM OrderDetails WHERE ProductID = 2;