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
('Arjun',29,9876543230,'Chennai'),
('Bharath',22,9876543231,'Madurai'),
('Ganesh',24,9876543232,'Coimbatore'),
('Hari',23,9876543233,'Trichy'),
('Imran',25,9876543234,'Salem'),
('Jagadish',30,9876543235,'Chennai'),
('Kiran',21,9876543236,'Erode'),
('Lokesh',27,9876543237,'Vellore'),
('Mani',24,9876543238,'Tirunelveli'),
('Naveen',22,9876543239,'Chennai'),
('Om',26,9876543240,'Madurai'),
('Pradeep',23,9876543241,'Salem'),
('Raghu',28,9876543242,'Coimbatore'),
('Santhosh',22,9876543243,'Trichy'),
('Thilak',25,9876543244,'Chennai'),
('Uday',27,9876543245,'Erode'),
('Vasanth',23,9876543246,'Vellore'),
('Wig',24,9876543247,'Tirunelveli'),
('Xavier',26,9876543248,'Chennai'),
('Yogesh',22,9876543249,'Madurai'),
('Zubair',25,9876543250,'Salem'),
('Aakash',23,9876543251,'Coimbatore'),
('Balaji',27,9876543252,'Trichy'),
('Chandru',22,9876543253,'Chennai'),
('Deepak',24,9876543254,'Erode'),
('Elan',25,9876543255,'Vellore'),
('Faisal',23,9876543256,'Tirunelveli'),
('Gopal',28,9876543257,'Chennai'),
('Harish',22,9876543258,'Madurai'),
('Ilango',24,9876543259,'Salem'),
('Jerome',26,9876543260,'Coimbatore'),
('Karthikeyan',23,9876543261,'Trichy'),
('Lenin',25,9876543262,'Chennai'),
('Madhan',27,9876543263,'Erode'),
('Nandha',22,9876543264,'Vellore'),
('Oviya',24,9876543265,'Tirunelveli'),
('Prem',26,9876543266,'Chennai'),
('Qadri',23,9876543267,'Madurai'),
('Ramesh',25,9876543268,'Salem'),
('Senthil',27,9876543269,'Coimbatore'),
('Thamizh',22,9876543270,'Trichy'),
('Udhay',24,9876543271,'Chennai'),
('Vishnu',26,9876543272,'Erode'),
('Wasim',23,9876543273,'Vellore'),
('Yadav',25,9876543274,'Tirunelveli'),
('Zahir',28,9876543275,'Chennai'),
('Anbu',22,9876543276,'Madurai'),
('Boopathi',24,9876543277,'Salem'),
('Chithra',23,9876543278,'Coimbatore'),
('Durai',25,9876543279,'Trichy'),
('Eswaran',27,9876543280,'Chennai'),
('Feroz',22,9876543281,'Erode'),
('Gokul',24,9876543282,'Vellore'),
('Hemanth',26,9876543283,'Tirunelveli'),
('Ilavarasan',23,9876543284,'Chennai'),
('Jagan',25,9876543285,'Madurai'),
('Kannan',27,9876543286,'Salem'),
('Logesh',22,9876543287,'Coimbatore'),
('Murugan',24,9876543288,'Trichy'),
('Nirmal',26,9876543289,'Chennai'),
('Pandian',23,9876543290,'Erode'),
('Rajan',25,9876543291,'Vellore'),
('Sivam',27,9876543292,'Tirunelveli'),
('Tamil',22,9876543293,'Chennai'),
('Udhayanidhi',24,9876543294,'Madurai'),
('Vignesh',26,9876543295,'Salem'),
('Waqar',23,9876543296,'Coimbatore'),
('Yuvan',25,9876543297,'Trichy');

INSERT INTO Products (product_name, price) VALUES
('Webcam',2500),
('External HDD',4500),
('SSD',3500),
('Router',1800),
('Smart TV',35000),
('LED Bulb',200),
('Ceiling Fan',3000),
('Air Purifier',8000),
('Trimmer',1200),
('Hair Dryer',1000),
('Iron Box',800),
('Mixer Grinder',2500),
('Microwave',8500),
('Refrigerator',22000),
('Washing Machine',18000),
('Water Purifier',12000),
('Air Conditioner',35000),
('CCTV Camera',3500),
('Pendrive',500),
('Memory Card',400),
('Gaming Mouse',1500),
('Mechanical Keyboard',3500),
('RGB Headset',2000),
('Game Controller',2500),
('VR Headset',15000),
('Drawing Tablet',6000),
('Laptop Stand',1200),
('Monitor Arm',2000),
('Cable Management',300),
('Desk Lamp',800),
('Ergonomic Chair',12000),
('Standing Desk',18000),
('Noise Cancelling Headphones',8000),
('Portable Charger',1800),
('Smart Bulb',600),
('Smart Plug',400),
('Baby Monitor',5000),
('Action Camera',12000),
('Drone',25000),
('DSLR Camera',45000),
('Camera Lens',15000),
('Tripod',2000),
('Photo Printer',6000),
('Scanner',5000),
('UPS',3000),
('Extension Cord',500),
('Surge Protector',800),
('Bluetooth Adapter',400),
('SD Card Reader',300),
('Type C Hub',1200),
('Laptop Bag',1500),
('Phone Case',300),
('Screen Protector',200),
('Wireless Charger',1500),
('Earbuds',3000),
('Smart Speaker',5000),
('Smart Display',12000),
('Security Camera',4000),
('Video Doorbell',6000),
('Smart Thermostat',8000),
('Robot Vacuum',15000),
('Electric Kettle',1200),
('Coffee Maker',3500),
('Air Fryer',4500),
('Induction Cooker',2500),
('Sandwich Maker',800),
('Electric Toothbrush',1500),
('Smart Scale',2000);


INSERT INTO Sellers (seller_name, product_id) VALUES
('CamZone',13),
('StoragePro',14),
('SSDWorld',15),
('NetGear',16),
('TVMart',17),
('LightHub',18),
('FanZone',19),
('AirStore',20),
('GroomPro',21),
('HairWorld',22),
('HomeAppliance',23),
('KitchenKing',24),
('MicrowaveMart',25),
('CoolStore',26),
('WashWorld',27),
('AquaStore',28),
('CoolTech',29),
('SecureZone',30),
('DriveHub',31),
('CardWorld',32),
('GamerMouse',33),
('KeyZone',34),
('SoundGear',35),
('GamePad',36),
('VRWorld',37),
('DrawPad',38),
('DeskHub',39),
('ArmStore',40),
('CableZone',41),
('LampWorld',42),
('ChairPro',43),
('DeskPro',44),
('AudioHub',45),
('ChargeWorld',46),
('SmartLite',47),
('PlugStore',48),
('BabyTech',49),
('AdventureCam',50),
('DroneTech',51),
('CameraWorld',52),
('LensPro',53),
('TripodZone',54),
('PrintPro',55),
('ScanWorld',56),
('PowerZone',57),
('CordHub',58),
('SurgeStore',59),
('BT Mart',60),
('CardReader',61),
('HubWorld',62),
('BagZone',63),
('CaseStore',64),
('ScreenGuard',65),
('ChargeHub',66),
('BudStore',67),
('EchoZone',68),
('DisplayHub',69),
('SecureStore',70),
('BellStore',71),
('ThermoHub',72),
('RoboClean',73),
('KettleWorld',74),
('BrewStore',75),
('FryZone',76),
('InduStore',77),
('SnackMart',78),
('BrushWorld',79),
('FitStore',80);

-- =====================
-- Additional Orders (13-80)
-- =====================
INSERT INTO Orders (cust_id, product_id, quantity) VALUES
(13,13,1),(14,14,2),(15,15,1),(16,16,1),(17,17,1),
(18,18,3),(19,19,2),(20,20,1),(21,21,1),(22,22,2),
(23,23,1),(24,24,1),(25,25,2),(26,26,1),(27,27,3),
(28,28,1),(29,29,2),(30,30,1),(31,31,1),(32,32,2),
(33,33,1),(34,34,1),(35,35,2),(36,36,3),(37,37,1),
(38,38,1),(39,39,1),(40,40,2),(41,41,1),(42,42,1),
(43,43,2),(44,44,1),(45,45,1),(46,46,3),(47,47,2),
(48,48,1),(49,49,1),(50,50,2),(51,51,1),(52,52,1),
(53,53,2),(54,54,1),(55,55,1),(56,56,3),(57,57,2),
(58,58,1),(59,59,1),(60,60,2),(61,61,1),(62,62,1),
(63,63,3),(64,64,2),(65,65,1),(66,66,1),(67,67,2),
(68,68,1),(69,69,1),(70,70,2),(71,71,1),(72,72,1),
(1,13,2),(2,14,1),(3,15,2),(4,16,1),(5,17,1),
(6,18,2),(7,19,1),(8,20,3),(9,21,1),(10,22,2);


INSERT INTO Payments (order_id, payment_method, status) VALUES
(13,'UPI','Success'),(14,'Card','Success'),(15,'Net Banking','Success'),
(16,'UPI','Success'),(17,'Cash On Delivery','Pending'),
(18,'Card','Success'),(19,'UPI','Success'),(20,'Net Banking','Success'),
(21,'Card','Success'),(22,'UPI','Success'),
(23,'Cash On Delivery','Pending'),(24,'Card','Success'),
(25,'UPI','Success'),(26,'Net Banking','Success'),(27,'Card','Success'),
(28,'UPI','Success'),(29,'Cash On Delivery','Pending'),
(30,'Card','Success'),(31,'UPI','Success'),(32,'Net Banking','Success'),
(33,'Card','Success'),(34,'UPI','Success'),(35,'Cash On Delivery','Pending'),
(36,'Card','Success'),(37,'UPI','Success'),(38,'Net Banking','Success'),
(39,'Card','Success'),(40,'UPI','Success'),(41,'Cash On Delivery','Pending'),
(42,'Card','Success'),(43,'UPI','Success'),(44,'Net Banking','Success'),
(45,'Card','Success'),(46,'UPI','Success'),(47,'Cash On Delivery','Pending'),
(48,'Card','Success'),(49,'UPI','Success'),(50,'Net Banking','Success'),
(51,'Card','Success'),(52,'UPI','Success'),(53,'Cash On Delivery','Pending'),
(54,'Card','Success'),(55,'UPI','Success'),(56,'Net Banking','Success'),
(57,'Card','Success'),(58,'UPI','Success'),(59,'Cash On Delivery','Pending'),
(60,'Card','Success'),(61,'UPI','Success'),(62,'Net Banking','Success'),
(63,'Card','Success'),(64,'UPI','Success'),(65,'Cash On Delivery','Pending'),
(66,'Card','Success'),(67,'UPI','Success'),(68,'Net Banking','Success'),
(69,'Card','Success'),(70,'UPI','Success'),(71,'Cash On Delivery','Pending'),
(72,'Card','Success'),(73,'UPI','Success'),(74,'Net Banking','Success'),
(75,'Card','Success'),(76,'UPI','Success'),(77,'Cash On Delivery','Pending'),
(78,'Card','Success'),(79,'UPI','Success'),(80,'Net Banking','Success');


INSERT INTO Reviews (cust_id, product_id, rating) VALUES
(13,13,4),(14,14,5),(15,15,3),(16,16,4),(17,17,5),
(18,18,4),(19,19,3),(20,20,5),(21,21,4),(22,22,3),
(23,23,5),(24,24,4),(25,25,3),(26,26,5),(27,27,4),
(28,28,3),(29,29,5),(30,30,4),(31,31,3),(32,32,5),
(33,33,4),(34,34,3),(35,35,5),(36,36,4),(37,37,3),
(38,38,5),(39,39,4),(40,40,3),(41,41,5),(42,42,4),
(43,43,3),(44,44,5),(45,45,4),(46,46,3),(47,47,5),
(48,48,4),(49,49,3),(50,50,5),(51,51,4),(52,52,3),
(53,53,5),(54,54,4),(55,55,3),(56,56,5),(57,57,4),
(58,58,3),(59,59,5),(60,60,4),(61,61,3),(62,62,5),
(63,63,4),(64,64,3),(65,65,5),(66,66,4),(67,67,3),
(68,68,5),(69,69,4),(70,70,3),(71,71,5),(72,72,4),
(1,15,5),(2,16,4),(3,17,3),(4,18,5),(5,19,4);


INSERT INTO Cart (cust_id, product_id, quantity) VALUES
(13,14,1),(14,15,2),(15,16,1),(16,17,1),(17,18,2),
(18,19,1),(19,20,3),(20,21,1),(21,22,2),(22,23,1),
(23,24,1),(24,25,2),(25,26,1),(26,27,1),(27,28,2),
(28,29,1),(29,30,3),(30,31,1),(31,32,2),(32,33,1),
(33,34,1),(34,35,2),(35,36,1),(36,37,1),(37,38,2),
(38,39,1),(39,40,3),(40,41,1),(41,42,2),(42,43,1),
(43,44,1),(44,45,2),(45,46,1),(46,47,1),(47,48,2),
(48,49,1),(49,50,3),(50,51,1),(51,52,2),(52,53,1),
(53,54,1),(54,55,2),(55,56,1),(56,57,1),(57,58,2),
(58,59,1),(59,60,3),(60,61,1),(61,62,2),(62,63,1),
(63,64,1),(64,65,2),(65,66,1),(66,67,1),(67,68,2),
(68,69,1),(69,70,3),(70,71,1),(71,72,2),(72,73,1),
(1,13,2),(2,14,1),(3,15,2),(4,16,1),(5,17,3),
(6,18,1),(7,19,2),(8,20,1);


INSERT INTO Address (cust_id, city, pincode) VALUES
(13,'Chennai',600004),(14,'Madurai',625003),(15,'Coimbatore',641002),
(16,'Trichy',620002),(17,'Salem',636003),(18,'Chennai',600005),
(19,'Erode',638002),(20,'Vellore',632002),(21,'Tirunelveli',627002),
(22,'Chennai',600006),(23,'Madurai',625004),(24,'Salem',636004),
(25,'Coimbatore',641003),(26,'Trichy',620003),(27,'Chennai',600007),
(28,'Erode',638003),(29,'Vellore',632003),(30,'Tirunelveli',627003),
(31,'Chennai',600008),(32,'Madurai',625005),(33,'Salem',636005),
(34,'Coimbatore',641004),(35,'Trichy',620004),(36,'Chennai',600009),
(37,'Erode',638004),(38,'Vellore',632004),(39,'Tirunelveli',627004),
(40,'Chennai',600010),(41,'Madurai',625006),(42,'Salem',636006),
(43,'Coimbatore',641005),(44,'Trichy',620005),(45,'Chennai',600011),
(46,'Erode',638005),(47,'Vellore',632005),(48,'Tirunelveli',627005),
(49,'Chennai',600012),(50,'Madurai',625007),(51,'Salem',636007),
(52,'Coimbatore',641006),(53,'Trichy',620006),(54,'Chennai',600013),
(55,'Erode',638006),(56,'Vellore',632006),(57,'Tirunelveli',627006),
(58,'Chennai',600014),(59,'Madurai',625008),(60,'Salem',636008),
(61,'Coimbatore',641007),(62,'Trichy',620007),(63,'Chennai',600015),
(64,'Erode',638007),(65,'Vellore',632007),(66,'Tirunelveli',627007),
(67,'Chennai',600016),(68,'Madurai',625009),(69,'Salem',636009),
(70,'Coimbatore',641008),(71,'Trichy',620008),(72,'Chennai',600017),
(73,'Erode',638008),(74,'Vellore',632008),(75,'Tirunelveli',627008),
(76,'Chennai',600018),(77,'Madurai',625010),(78,'Salem',636010),
(79,'Coimbatore',641009);


INSERT INTO DeliveryTracking (order_id, status) VALUES
(13,'Shipped'),(14,'Delivered'),(15,'Processing'),
(16,'Shipped'),(17,'Out for Delivery'),(18,'Delivered'),
(19,'Processing'),(20,'Shipped'),(21,'Delivered'),(22,'Processing'),
(23,'Shipped'),(24,'Out for Delivery'),(25,'Delivered'),
(26,'Processing'),(27,'Shipped'),(28,'Delivered'),(29,'Processing'),
(30,'Shipped'),(31,'Out for Delivery'),(32,'Delivered'),
(33,'Processing'),(34,'Shipped'),(35,'Delivered'),(36,'Processing'),
(37,'Shipped'),(38,'Out for Delivery'),(39,'Delivered'),
(40,'Processing'),(41,'Shipped'),(42,'Delivered'),(43,'Processing'),
(44,'Shipped'),(45,'Out for Delivery'),(46,'Delivered'),
(47,'Processing'),(48,'Shipped'),(49,'Delivered'),(50,'Processing'),
(51,'Shipped'),(52,'Out for Delivery'),(53,'Delivered'),
(54,'Processing'),(55,'Shipped'),(56,'Delivered'),(57,'Processing'),
(58,'Shipped'),(59,'Out for Delivery'),(60,'Delivered'),
(61,'Processing'),(62,'Shipped'),(63,'Delivered'),(64,'Processing'),
(65,'Shipped'),(66,'Out for Delivery'),(67,'Delivered'),
(68,'Processing'),(69,'Shipped'),(70,'Delivered'),(71,'Processing'),
(72,'Shipped'),(73,'Out for Delivery'),(74,'Delivered'),
(75,'Processing'),(76,'Shipped'),(77,'Delivered'),(78,'Processing'),
(79,'Shipped'),(80,'Out for Delivery');

INSERT INTO Support (cust_id, issue) VALUES
(13,'Item not received'),(14,'Damaged packaging'),(15,'Wrong size delivered'),
(16,'Refund not processed'),(17,'Payment deducted twice'),
(18,'Product not working'),(19,'Missing accessories'),(20,'Poor quality product'),
(21,'Delivery to wrong address'),(22,'App not loading'),
(23,'Coupon not applied'),(24,'Invoice not received'),(25,'Order stuck in processing'),
(26,'Exchange request'),(27,'Warranty claim'),
(28,'Product expired'),(29,'Late delivery'),(30,'Order auto-cancelled'),
(31,'Payment failure'),(32,'Unable to track order'),
(33,'Return pickup not scheduled'),(34,'Refund request'),(35,'Incorrect item delivered'),
(36,'Product stopped working'),(37,'Size mismatch'),
(38,'Color mismatch'),(39,'Billing issue'),(40,'Subscription cancellation'),
(41,'Gift wrapping missing'),(42,'Delivery partner rude'),
(43,'Order placed twice'),(44,'Login issue'),(45,'Password reset problem'),
(46,'OTP not received'),(47,'Account hacked'),
(48,'Unauthorized order'),(49,'Wallet balance issue'),(50,'Cashback not credited'),
(51,'EMI not applied'),(52,'Bank offer not applied'),
(53,'Price mismatch'),(54,'Out of stock after order'),(55,'Product listing wrong'),
(56,'Review not posted'),(57,'Rating removed'),
(58,'Seller not responding'),(59,'Fake product received'),(60,'Product safety concern'),
(61,'Child safety concern'),(62,'Bulk order issue'),
(63,'Business account query'),(64,'GST invoice needed'),(65,'Export order issue'),
(66,'International shipping query'),(67,'Customs issue'),
(68,'Product recall query'),(69,'Insurance claim'),(70,'Extended warranty issue'),
(71,'Installation service query'),(72,'Demo request'),
(73,'Technical support needed'),(74,'App feature request'),(75,'Website bug report'),
(76,'Feedback submission'),(77,'Complaint escalation'),
(78,'Compliment for delivery'),(79,'Suggestion for improvement');

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
