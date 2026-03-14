CREATE DATABASE Flipkart_CRM;

USE Flipkart_CRM;

CREATE TABLE Customers (
cust_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
age INT,
phone BIGINT,
city VARCHAR(100)
);

CREATE TABLE Products (
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100),
price INT
);

CREATE TABLE Sellers (
seller_id INT PRIMARY KEY AUTO_INCREMENT,
seller_name VARCHAR(100),
product_id INT
);

CREATE TABLE Orders (
order_id INT PRIMARY KEY AUTO_INCREMENT,
cust_id INT,
product_id INT,
quantity INT
);

CREATE TABLE Payments (
payment_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
payment_method VARCHAR(50),
status VARCHAR(50)
);

CREATE TABLE Reviews (
review_id INT PRIMARY KEY AUTO_INCREMENT,
cust_id INT,
product_id INT,
rating INT
);

CREATE TABLE Cart (
cart_id INT PRIMARY KEY AUTO_INCREMENT,
cust_id INT,
product_id INT,
quantity INT
);

CREATE TABLE Address (
address_id INT PRIMARY KEY AUTO_INCREMENT,
cust_id INT,
city VARCHAR(100),
pincode INT
);

CREATE TABLE DeliveryTracking (
delivery_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT,
status VARCHAR(50)
);

CREATE TABLE Support (
ticket_id INT PRIMARY KEY AUTO_INCREMENT,
cust_id INT,
issue VARCHAR(200)
);

INSERT INTO Customers (name, age, phone, city) VALUES
('Arun',22,9876543210,'Chennai'),
('Bala',24,9876543211,'Madurai'),
('Kumar',23,9876543212,'Coimbatore'),
('Ravi',25,9876543213,'Trichy'),
('Suresh',21,9876543214,'Salem'),
('Vijay',26,9876543215,'Chennai'),
('Karthik',27,9876543216,'Erode'),
('Ajay',22,9876543217,'Vellore'),
('Manoj',24,9876543218,'Tirunelveli'),
('Dinesh',23,9876543219,'Chennai'),
('Praveen',28,9876543220,'Madurai'),
('Rahul',22,9876543221,'Salem');

INSERT INTO Products (product_name, price) VALUES
('Laptop',55000),
('Mobile',20000),
('Headphones',1500),
('Keyboard',800),
('Mouse',500),
('Monitor',12000),
('Tablet',18000),
('Smart Watch',4000),
('Speaker',2500),
('Printer',7000),
('Power Bank',1500),
('USB Cable',300);

INSERT INTO Sellers (seller_name, product_id) VALUES
('TechStore',1),
('MobileWorld',2),
('SoundHub',3),
('KeyMart',4),
('MousePoint',5),
('DisplayZone',6),
('TabShop',7),
('WatchStore',8),
('SpeakerCity',9),
('PrintHub',10),
('PowerStore',11),
('CableShop',12);

INSERT INTO Orders (cust_id, product_id, quantity) VALUES
(1,2,1),
(2,1,1),
(3,3,2),
(4,4,1),
(5,5,3),
(6,6,1),
(7,7,2),
(8,8,1),
(9,9,2),
(10,10,1),
(11,11,2),
(12,12,4);

INSERT INTO Payments (order_id, payment_method, status) VALUES
(1,'UPI','Success'),
(2,'Card','Success'),
(3,'Cash On Delivery','Pending'),
(4,'UPI','Success'),
(5,'Card','Success'),
(6,'Net Banking','Success'),
(7,'UPI','Success'),
(8,'Cash On Delivery','Pending'),
(9,'UPI','Success'),
(10,'Card','Success'),
(11,'UPI','Success'),
(12,'Cash On Delivery','Pending');

INSERT INTO Reviews (cust_id, product_id, rating) VALUES
(1,2,5),
(2,1,4),
(3,3,3),
(4,4,4),
(5,5,5),
(6,6,4),
(7,7,3),
(8,8,5),
(9,9,4),
(10,10,3),
(11,11,5),
(12,12,4);

INSERT INTO Cart (cust_id, product_id, quantity) VALUES
(1,1,1),
(2,2,2),
(3,3,1),
(4,4,2),
(5,5,1),
(6,6,1),
(7,7,2),
(8,8,1),
(9,9,1),
(10,10,2),
(11,11,1),
(12,12,3);

INSERT INTO Address (cust_id, city, pincode) VALUES
(1,'Chennai',600001),
(2,'Madurai',625001),
(3,'Coimbatore',641001),
(4,'Trichy',620001),
(5,'Salem',636001),
(6,'Chennai',600002),
(7,'Erode',638001),
(8,'Vellore',632001),
(9,'Tirunelveli',627001),
(10,'Chennai',600003),
(11,'Madurai',625002),
(12,'Salem',636002);

INSERT INTO DeliveryTracking (order_id, status) VALUES
(1,'Shipped'),
(2,'Delivered'),
(3,'Processing'),
(4,'Shipped'),
(5,'Delivered'),
(6,'Processing'),
(7,'Shipped'),
(8,'Out for Delivery'),
(9,'Delivered'),
(10,'Processing'),
(11,'Shipped'),
(12,'Delivered');

INSERT INTO Support (cust_id, issue) VALUES
(1,'Payment issue'),
(2,'Late delivery'),
(3,'Product damaged'),
(4,'Wrong product'),
(5,'Refund request'),
(6,'Tracking issue'),
(7,'Replacement request'),
(8,'Login problem'),
(9,'App crash'),
(10,'Order cancellation'),
(11,'Delivery delay'),
(12,'Payment failed');

SELECT * FROM Customers;

SELECT * FROM Products;

SELECT * FROM Customers
WHERE city = 'Chennai';

SELECT * FROM Products
WHERE price > 5000;

SELECT Customers.name, Orders.order_id, Orders.quantity
FROM Orders
JOIN Customers
ON Customers.cust_id = Orders.cust_id;

SELECT Products.product_name, Sellers.seller_name
FROM Products
JOIN Sellers
ON Products.product_id = Sellers.product_id;

SELECT Customers.name, Products.product_name
FROM Orders
JOIN Customers ON Orders.cust_id = Customers.cust_id
JOIN Products ON Orders.product_id = Products.product_id;

SELECT Orders.order_id, Payments.payment_method, Payments.status
FROM Orders
JOIN Payments
ON Orders.order_id = Payments.order_id;

SELECT Customers.name, Reviews.rating
FROM Reviews
JOIN Customers
ON Reviews.cust_id = Customers.cust_id
WHERE rating = 5;

SELECT COUNT(*) AS Total_Customers
FROM Customers;

SELECT AVG(price) AS Average_Price
FROM Products;

SELECT MAX(price) AS Highest_Price
FROM Products;

SELECT MIN(price) AS Lowest_Price
FROM Products;

SELECT SUM(quantity) AS Total_Quantity
FROM Orders;

SELECT cust_id, COUNT(order_id) AS Order_Count
FROM Orders
GROUP BY cust_id;

SELECT * FROM Products
WHERE price BETWEEN 1000 AND 10000;

SELECT * FROM Customers
WHERE age > 24;

SELECT DISTINCT payment_method
FROM Payments;

SELECT * FROM DeliveryTracking
WHERE status = 'Delivered';

SELECT * FROM Payments
WHERE status = 'Pending';

SELECT Customers.name, Address.city
FROM Customers
JOIN Address
ON Customers.cust_id = Address.cust_id;

SELECT Customers.name, Products.product_name, Cart.quantity
FROM Cart
JOIN Customers ON Cart.cust_id = Customers.cust_id
JOIN Products ON Cart.product_id = Products.product_id;

SELECT Orders.order_id, DeliveryTracking.status
FROM Orders
JOIN DeliveryTracking
ON Orders.order_id = DeliveryTracking.order_id;

SELECT Customers.name, Support.issue
FROM Support
JOIN Customers
ON Support.cust_id = Customers.cust_id;

SELECT product_id, rating
FROM Reviews
WHERE rating > 4;

SELECT * FROM Orders
WHERE quantity > 1;

SELECT * FROM Orders
ORDER BY quantity DESC;

SELECT * FROM Products
ORDER BY price DESC
LIMIT 5;

UPDATE Payments
SET status = 'Success'
WHERE order_id = 3;

DELETE FROM Support
WHERE ticket_id = 12;