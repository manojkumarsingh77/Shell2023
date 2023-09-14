-- Create the Sales Transactions Data table
CREATE TABLE SalesTransactions (
    TransactionID INT PRIMARY KEY,
    ProductID INT,
    StoreID INT,
    TransactionDate DATE,
    QuantitySold INT,
    Revenue DECIMAL(10, 2)
);

-- Insert sample data into Sales Transactions Data
INSERT INTO SalesTransactions (TransactionID, ProductID, StoreID, TransactionDate, QuantitySold, Revenue)
VALUES
    (1, 101, 1, '2023-01-05', 50, 500.00),
    (2, 102, 2, '2023-01-10', 40, 600.00),
    (3, 103, 1, '2023-02-15', 30, 300.00),
    (4, 104, 3, '2023-03-20', 60, 900.00),
    (5, 101, 2, '2023-04-25', 70, 700.00),
    (6, 102, 3, '2023-05-30', 45, 675.00),
    (7, 105, 1, '2023-06-05', 55, 550.00),
    (8, 106, 2, '2023-07-10', 38, 570.00),
    (9, 107, 3, '2023-08-15', 42, 630.00),
    (10, 105, 1, '2023-09-20', 68, 680.00);

-- Create the Product Data table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(255),
    Category NVARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert sample data into Product Data
INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
    (101, 'Laptop XYZ', 'Electronics', 800.00),
    (102, 'T-Shirt Blue', 'Clothing', 15.00),
    (103, 'Smartphone ABC', 'Electronics', 400.00),
    (104, 'Sofa Set', 'Furniture', 1200.00),
    (105, 'Tablet PQR', 'Electronics', 300.00),
    (106, 'Jeans Black', 'Clothing', 40.00),
    (107, 'Chair', 'Furniture', 80.00);

-- Create the Store Data table
CREATE TABLE Stores (
    StoreID INT PRIMARY KEY,
    StoreName NVARCHAR(255),
    Location NVARCHAR(255),
    StoreManager NVARCHAR(255)
);

-- Insert sample data into Store Data
INSERT INTO Stores (StoreID, StoreName, Location, StoreManager)
VALUES
    (1, 'Downtown', 'New York', 'John Smith'),
    (2, 'Uptown', 'Los Angeles', 'Jane Doe'),
    (3, 'Suburbia', 'Chicago', 'Mike Johnson');

-- Create the Customer Data table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(255),
    Email NVARCHAR(255),
    Phone NVARCHAR(20)
);

-- Insert sample data into Customer Data
INSERT INTO Customers (CustomerID, CustomerName, Email, Phone)
VALUES
    (101, 'Customer A', 'customerA@email.com', '(123) 456-7890'),
    (102, 'Customer B', 'customerB@email.com', '(234) 567-8901'),
    (103, 'Customer C', 'customerC@email.com', '(345) 678-9012'),
    (104, 'Customer D', 'customerD@email.com', '(456) 789-0123'),
    (105, 'Customer E', 'customerE@email.com', '(567) 890-1234'),
    (106, 'Customer F', 'customerF@email.com', '(678) 901-2345'),
    (107, 'Customer G', 'customerG@email.com', '(789) 012-3456');
