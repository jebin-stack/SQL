CREATE DATABASE CRM;
USE CRM;
CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    City VARCHAR(50),
    Age INT
    );
CREATE TABLE Sellers (
	SellerID INT PRIMARY KEY AUTO_INCREMENT,
    SellerName VARCHAR(50),
    ProductID INT ,
    FOREIGN KEY (ProductID) REFERENCES Products (ProductID),
    );
CREATE TABLE Products (
	ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Product VARCHAR(100),
    PRICE INT 
    );
CREATE TABLE Orders (
	OrderID INT PRIMARY KEY AUTO_INCREMENT,
    
    
    

    

    
    