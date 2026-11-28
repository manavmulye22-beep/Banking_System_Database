create database ECOM;

use ECOM;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    annual_income DECIMAL(10, 2));
    
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2),
    cost_price DECIMAL(10, 2));
    
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(30),
    delivery_location VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)) AUTO_INCREMENT = 1101;
    
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    sales_amount DECIMAL(10, 2),
    profit DECIMAL(10, 2),
    sale_date DATE,
    delivery_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id));
    
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),
    payment_amount DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id));

INSERT INTO Customers (customer_id, first_name, last_name, email, city, annual_income) VALUES
(1, 'Aarav', 'Kulkarni', 'aarav.kulkarni@email.com', 'Delhi', 134000),
(2, 'Ananya', 'Mehta', 'ananya.mehta@email.com', 'Chandigarh', 159000),
(3, 'Rohan', 'Rao', 'rohan.rao@email.com', 'Bengaluru', 45000),
(4, 'Sneha', 'Chopra', 'sneha.chopra@email.com', 'Indore', 101000),
(5, 'Vikram', 'Shah', 'vikram.shah@email.com', 'Bengaluru', 132000),
(6, 'Aditi', 'Pawar', 'aditi.pawar@email.com', 'Kochi', 93000),
(7, 'Kabir', 'Reddy', NULL, 'Patna', 78000),
(8, 'Neha', 'Thakur', 'neha.thakur@email.com', 'Kochi', 157000),
(9, 'Arjun', 'Banerjee', 'arjun.banerjee@email.com', 'Chandigarh', 79000),
(10, 'Pooja', 'Kumar', 'pooja.kumar@email.com', 'Jaipur', 143000),
(11, 'Ishaan', 'Kapoor', 'ishaan.kapoor@email.com', 'Bengaluru', 126000),
(12, 'Meera', 'Ghosh', 'meera.ghosh@email.com', 'Indore', 46000),
(13, 'Rahul', 'Mirza', 'rahul.mirza@email.com', 'Noida', 149000),
(14, 'Kavya', 'Verma', 'kavya.verma@email.com', 'Kolkata', 78000),
(15, 'Dev', 'Joshi', 'dev.joshi@email.com', 'Lucknow', 102000),
(16, 'Ira', 'Nair', 'ira.nair@email.com', 'Bhopal', 78000),
(17, 'Siddharth', 'Khan', 'siddharth.khan@email.com', 'Kochi', 117000),
(18, 'Riya', 'Mishra', 'riya.mishra@email.com', 'Bengaluru', 84000),
(19, 'Yash', 'Bose', NULL, 'Jaipur', 85000),
(20, 'Tara', 'Jain', 'tara.jain@email.com', 'Noida', 78000),
(21, 'Om', 'Fernandes', 'om.fernandes@email.com', 'Pune', 53000),
(22, 'Diya', 'Shetty', 'diya.shetty@email.com', 'Nagpur', 91000),
(23, 'Manav', 'Menon', 'manav.menon@email.com', 'Bengaluru', 148000),
(24, 'Zoya', 'Tiwari', 'zoya.tiwari@email.com', 'Kolkata', 73000),
(25, 'Nikhil', 'Soni', 'nikhil.soni@email.com', 'Kochi', 83000),
(26, 'Avni', 'Lal', 'avni.lal@email.com', 'Pune', 138000),
(27, 'Parth', 'Patel', 'parth.patel@email.com', 'Lucknow', 138000),
(28, 'Simran', 'Singh', 'simran.singh@email.com', 'Lucknow', 134000),
(29, 'Aditya', 'Desai', 'aditya.desai@email.com', 'Hyderabad', 144000),
(30, 'Maya', 'Gupta', 'maya.gupta@email.com', 'Lucknow', 125000),
(31, 'Karan', 'Iyer', 'karan.iyer@email.com', 'Jaipur', 136000),
(32, 'Isha', 'Das', 'isha.das@email.com', 'Goa', 55000),
(33, 'Vihaan', 'Malhotra', 'vihaan.malhotra@email.com', 'Surat', 103000),
(34, 'Sara', 'Saxena', NULL, 'Goa', 107000),
(35, 'Reyansh', 'Agarwal', 'reyansh.agarwal@email.com', 'Chennai', 82000),
(36, 'Nisha', 'Gill', 'nisha.gill@email.com', 'Surat', 139000),
(37, 'Dhruv', 'Dutta', 'dhruv.dutta@email.com', 'Chennai', 64000),
(38, 'Ayesha', 'Pillai', 'ayesha.pillai@email.com', 'Lucknow', 149000),
(39, 'Neil', 'Bhat', 'neil.bhat@email.com', 'Bhopal', 97000),
(40, 'Pihu', 'Sharma', 'pihu.sharma@email.com', 'Ahmedabad', 101000),
(41, 'Harsh', 'Kulkarni', 'harsh.kulkarni@email.com', 'Chandigarh', 82000),
(42, 'Leela', 'Mehta', 'leela.mehta@email.com', 'Noida', 53000),
(43, 'Atharv', 'Rao', 'atharv.rao@email.com', 'Noida', 137000),
(44, 'Myra', 'Chopra', 'myra.chopra@email.com', 'Lucknow', 151000),
(45, 'Shiv', 'Shah', 'shiv.shah@email.com', 'Patna', 115000),
(46, 'Ritika', 'Pawar', NULL, 'Lucknow', 79000),
(47, 'Aniket', 'Reddy', 'aniket.reddy@email.com', 'Pune', 139000),
(48, 'Saanvi', 'Thakur', 'saanvi.thakur@email.com', 'Jaipur', 138000),
(49, 'Rudra', 'Banerjee', 'rudra.banerjee@email.com', 'Noida', 138000),
(50, 'Tanya', 'Kumar', 'tanya.kumar@email.com', 'Hyderabad', 146000);

INSERT INTO Products (product_id, product_name, category, unit_price, cost_price) VALUES
(101, 'Apple Watch', 'Electronics', 68000, 50000),
(102, 'Sony Headphones', 'Electronics', 12000, 8000),
(103, 'Ergonomic Chair', 'Furniture', 15000, 10000),
(104, 'Study Desk', 'Furniture', 8500, 6000),
(105, 'Running Shoes', 'Apparel', 4500, 2500),
(106, 'Cotton Jacket', 'Apparel', 3200, 2000),
(107, 'Coffee Maker', 'Home Appliances', 5500, 3800),
(108, 'Air Fryer', 'Home Appliances', 7000, 5000),
(109, 'Smart Bulb', 'Electronics', 1200, 1200),
(110, 'Leather Backpack', 'Accessories', 4000, 2200),
(111, 'Smartphone', 'Electronics', 28999, 22000),
(112, 'Laptop', 'Electronics', 75999, 62000),
(113, 'Bluetooth Speaker', 'Electronics', 3500, 2200),
(114, 'Smart TV', 'Electronics', 42000, 34000),
(115, 'Tablet', 'Electronics', 24999, 19000),
(116, 'Gaming Mouse', 'Electronics', 2800, 1700),
(117, 'Mechanical Keyboard', 'Electronics', 6500, 4300),
(118, 'Power Bank', 'Electronics', 1800, 1100),
(119, 'Fitness Band', 'Electronics', 3999, 2600),
(120, 'Wireless Router', 'Electronics', 2999, 1800),
(121, 'Office Table', 'Furniture', 12500, 8500),
(122, 'Bookshelf', 'Furniture', 7200, 4900),
(123, 'Dining Chair', 'Furniture', 4500, 2800),
(124, 'Sofa', 'Furniture', 38000, 30000),
(125, 'Floor Lamp', 'Furniture', 3200, 2100),
(126, 'T-Shirt', 'Apparel', 999, 450),
(127, 'Jeans', 'Apparel', 2499, 1400),
(128, 'Formal Shirt', 'Apparel', 1999, 1000),
(129, 'Sneakers', 'Apparel', 5999, 3600),
(130, 'Winter Coat', 'Apparel', 8999, 6000),
(131, 'Mixer Grinder', 'Home Appliances', 4200, 3000),
(132, 'Microwave', 'Home Appliances', 10500, 8000),
(133, 'Vacuum Cleaner', 'Home Appliances', 12500, 9500),
(134, 'Water Purifier', 'Home Appliances', 16500, 13000),
(135, 'Electric Kettle', 'Home Appliances', 1800, 1000),
(136, 'Wallet', 'Accessories', 1500, 700),
(137, 'Travel Bag', 'Accessories', 5500, 3200),
(138, 'Sunglasses', 'Accessories', 2200, 1200),
(139, 'Watch', 'Accessories', 8500, 5200),
(140, 'Phone Case', 'Accessories', 799, 250),
(141, 'Yoga Mat', 'Sports', 1200, 600),
(142, 'Dumbbell Set', 'Sports', 4500, 3000),
(143, 'Cricket Bat', 'Sports', 6500, 4200),
(144, 'Football', 'Sports', 1800, 900),
(145, 'Cycling Helmet', 'Sports', 3200, 1900),
(146, 'Face Serum', 'Beauty', 999, 450),
(147, 'Hair Dryer', 'Beauty', 2500, 1400),
(148, 'Perfume', 'Beauty', 4500, 2700),
(149, 'Skin Care Kit', 'Beauty', 2200, 1200),
(150, 'Shampoo Set', 'Beauty', 850, 400);

INSERT INTO Orders (order_id, customer_id, order_date, order_status, delivery_location) VALUES
(1101, 1, '2026-09-27', 'Delivered', 'Delhi'),
(1102, 8, '2026-09-24', 'Pending', 'Kochi'),
(1103, 15, '2026-10-16', 'Processing', 'Lucknow'),
(1104, 22, '2026-10-11', 'Pending', 'Nagpur'),
(1105, 29, '2026-10-02', 'Pending', 'Hyderabad'),
(1106, 36, '2026-10-09', 'Cancelled', 'Surat'),
(1107, 3, '2026-10-25', 'Shipped', 'Bengaluru'),
(1108, 10, '2026-10-26', 'Processing', 'Jaipur'),
(1109, 17, '2026-10-23', 'Delivered', 'Kochi'),
(1110, 24, '2026-09-07', 'Pending', 'Kolkata'),
(1111, 31, '2026-09-07', 'Processing', 'Jaipur'),
(1112, 38, '2026-09-18', 'Delivered', 'Lucknow'),
(1113, 5, '2026-10-16', 'Pending', 'Bengaluru'),
(1114, 12, '2026-09-22', 'Cancelled', 'Indore'),
(1115, 19, '2026-10-22', 'Cancelled', 'Jaipur'),
(1116, 26, '2026-10-14', 'Delivered', 'Pune'),
(1117, 33, '2026-09-29', 'Shipped', 'Surat'),
(1118, 40, '2026-10-06', 'Delivered', 'Ahmedabad'),
(1119, 7, '2026-09-15', 'Cancelled', 'Patna'),
(1120, 14, '2026-10-17', 'Processing', 'Kolkata'),
(1121, 21, '2026-10-08', 'Pending', 'Pune'),
(1122, 28, '2026-09-16', 'Delivered', 'Lucknow'),
(1123, 35, '2026-09-26', 'Pending', 'Chennai'),
(1124, 2, '2026-09-12', 'Delivered', 'Chandigarh'),
(1125, 9, '2026-09-12', 'Delivered', 'Chandigarh'),
(1126, 16, '2026-09-19', 'Cancelled', 'Bhopal'),
(1127, 23, '2026-09-17', 'Delivered', 'Bengaluru'),
(1128, 30, '2026-09-30', 'Shipped', 'Lucknow'),
(1129, 37, '2026-10-02', 'Cancelled', 'Chennai'),
(1130, 4, '2026-10-08', 'Delivered', 'Indore'),
(1131, 11, '2026-10-12', 'Cancelled', 'Bengaluru'),
(1132, 18, '2026-10-06', 'Cancelled', 'Bengaluru'),
(1133, 25, '2026-09-22', 'Pending', 'Kochi'),
(1134, 32, '2026-10-08', 'Pending', 'Goa'),
(1135, 39, '2026-10-08', 'Cancelled', 'Bhopal'),
(1136, 6, '2026-10-21', 'Delivered', 'Kochi'),
(1137, 13, '2026-10-09', 'Cancelled', 'Noida'),
(1138, 20, '2026-09-18', 'Delivered', 'Noida'),
(1139, 27, '2026-10-30', 'Pending', 'Lucknow'),
(1140, 34, '2026-09-19', 'Delivered', 'Goa'),
(1141, 1, '2026-09-23', 'Processing', 'Delhi'),
(1142, 8, '2026-10-09', 'Delivered', 'Kochi'),
(1143, 15, '2026-09-10', 'Delivered', 'Lucknow'),
(1144, 22, '2026-09-25', 'Shipped', 'Nagpur'),
(1145, 29, '2026-09-20', 'Cancelled', 'Hyderabad'),
(1146, 36, '2026-09-17', 'Pending', 'Surat'),
(1147, 3, '2026-09-08', 'Delivered', 'Bengaluru'),
(1148, 10, '2026-09-08', 'Delivered', 'Jaipur'),
(1149, 17, '2026-09-11', 'Cancelled', 'Kochi'),
(1150, 24, '2026-10-15', 'Pending', 'Kolkata');

INSERT INTO Sales (sale_id, order_id, product_id, quantity, sales_amount, profit, sale_date, delivery_date) VALUES
(1, 1101, 107, 2, 11000.0, 3400.0, '2026-09-27', '2026-09-30'),
(2, 1102, 116, 3, 8400.0, 3300.0, '2026-09-24', NULL),
(3, 1103, 115, 3, 74997.0, 17219.0, '2026-10-16', NULL),
(4, 1104, 121, 2, 25000.0, 8000.0, '2026-10-11', NULL),
(5, 1105, 134, 2, 28050.0, 5950.0, '2026-10-02', NULL),
(6, 1106, 125, 2, 5760.0, 1980.0, '2026-10-09', NULL),
(7, 1107, 104, 1, 8500.0, 2500.0, '2026-10-25', NULL),
(8, 1108, 106, 2, 5760.0, 2160.0, '2026-10-26', NULL),
(9, 1109, 120, 2, 5998.0, 2398.0, '2026-10-23', '2026-10-28'),
(10, 1110, 140, 3, 2157.3, 1482.3, '2026-09-07', NULL),
(11, 1111, 113, 3, 9975.0, 3705.0, '2026-09-07', NULL),
(12, 1112, 120, 2, 5698.1, 2278.1, '2026-09-18', '2026-09-23'),
(13, 1113, 111, 2, 55098.1, 13298.1, '2026-10-16', NULL),
(14, 1114, 123, 2, 9000.0, 3400.0, '2026-09-22', NULL),
(15, 1115, 132, 2, 17850.0, 4250.0, '2026-10-22', NULL),
(16, 1116, 136, 2, 2550.0, 1360.0, '2026-10-14', '2026-10-20'),
(17, 1117, 118, 3, 5130.0, 1995.0, '2026-09-29', NULL),
(18, 1118, 133, 2, 22500.0, 5400.0, '2026-10-06', '2026-10-13'),
(19, 1119, 103, 3, 45000.0, 15000.0, '2026-09-15', NULL),
(20, 1120, 103, 3, 38250.0, 12750.0, '2026-10-17', NULL),
(21, 1121, 122, 3, 20520.0, 6555.0, '2026-10-08', NULL),
(22, 1122, 110, 1, 3600.0, 1620.0, '2026-09-16', '2026-09-19'),
(23, 1123, 124, 3, 96900.0, 20400.0, '2026-09-26', NULL),
(24, 1124, 111, 2, 52198.2, 12598.2, '2026-09-12', '2026-09-13'),
(25, 1125, 137, 2, 11000.0, 4600.0, '2026-09-12', '2026-09-17'),
(26, 1126, 139, 2, 17000.0, 6600.0, '2026-09-19', NULL),
(27, 1127, 132, 2, 19950.0, 4750.0, '2026-09-17', '2026-09-23'),
(28, 1128, 131, 3, 11340.0, 3240.0, '2026-09-30', NULL),
(29, 1129, 130, 1, 8549.05, 2849.05, '2026-10-02', NULL),
(30, 1130, 112, 1, 75999.0, 13999.0, '2026-10-08', '2026-10-11'),
(31, 1131, 122, 3, 21600.0, 6900.0, '2026-10-12', NULL),
(32, 1132, 121, 2, 23750.0, 7600.0, '2026-10-06', NULL),
(33, 1133, 112, 2, 129198.3, 23685.3, '2026-09-22', NULL),
(34, 1134, 113, 1, 3500.0, 1300.0, '2026-10-08', NULL),
(35, 1135, 107, 3, 16500.0, 5100.0, '2026-10-08', NULL),
(36, 1136, 140, 1, 719.1, 18.1, '2026-10-21', '2026-10-23'),
(37, 1137, 104, 3, 25500.0, 7500.0, '2026-10-09', NULL),
(38, 1138, 106, 1, 3200.0, 1200.0, '2026-09-18', '2026-09-23'),
(39, 1139, 115, 3, 74997.0, 17997.0, '2026-10-30', NULL),
(40, 1140, 104, 2, 17000.0, 5000.0, '2026-09-19', '2026-09-24'),
(41, 1141, 130, 2, 17098.1, 5698.1, '2026-09-23', NULL),
(42, 1142, 107, 1, 4950.0, 1530.0, '2026-10-09', '2026-10-10'),
(43, 1143, 102, 1, 10200.0, 3147.0, '2026-09-10', '2026-09-15'),
(44, 1144, 131, 1, 3780.0, 1080.0, '2026-09-25', NULL),
(45, 1145, 140, 3, 2397.0, 1647.0, '2026-09-20', NULL),
(46, 1146, 126, 2, 1898.1, 1043.1, '2026-09-17', NULL),
(47, 1147, 126, 3, 2997.0, 1140.0, '2026-09-08', '2026-09-10'),
(48, 1148, 104, 2, 17000.0, 4664.0, '2026-09-08', '2026-09-15'),
(49, 1149, 124, 3, 108300.0, 22800.0, '2026-09-11', NULL),
(50, 1150, 101, 1, 68000.0, 18000.0, '2026-10-15', NULL);

INSERT INTO Payments (payment_id, order_id, payment_date, payment_method, payment_status, payment_amount) VALUES
(501, 1101, '2026-09-27', 'Debit Card', 'Pending', 8417.16),
(502, 1102, '2026-09-26', 'COD', 'Failed', 0),
(503, 1103, '2026-10-18', 'Credit Card', 'Completed', 74997.0),
(504, 1104, '2026-10-13', 'Debit Card', 'Failed', 0),
(505, 1105, '2026-10-02', 'Debit Card', 'Failed', 0),
(506, 1106, '2026-10-09', 'Net Banking', 'Completed', 5760.0),
(507, 1107, '2026-10-25', 'Credit Card', 'Completed', 8500.0),
(508, 1108, '2026-10-28', 'Credit Card', 'Pending', 2949.59),
(509, 1109, '2026-10-25', 'Credit Card', 'Completed', 5998.0),
(510, 1110, '2026-09-09', 'COD', 'Completed', 2157.3),
(511, 1111, '2026-09-07', 'COD', 'Pending', 7729.57),
(512, 1112, '2026-09-18', 'Net Banking', 'Completed', 5698.1),
(513, 1113, '2026-10-18', 'Wallet', 'Completed', 55098.1),
(514, 1114, '2026-09-22', 'Debit Card', 'Refunded', 9000.0),
(515, 1115, '2026-10-22', 'Debit Card', 'Completed', 17850.0),
(516, 1116, '2026-10-14', 'Debit Card', 'Completed', 2550.0),
(517, 1117, '2026-09-29', 'COD', 'Pending', 2818.16),
(518, 1118, '2026-10-07', 'Credit Card', 'Completed', 22500.0),
(519, 1119, '2026-09-16', 'Wallet', 'Completed', 45000.0),
(520, 1120, '2026-10-18', 'COD', 'Pending', 24498.63),
(521, 1121, '2026-10-08', 'Wallet', 'Completed', 20520.0),
(522, 1122, '2026-09-16', 'Credit Card', 'Pending', 2732.46),
(523, 1123, '2026-09-28', 'Credit Card', 'Pending', 67221.96),
(524, 1124, '2026-09-13', 'Credit Card', 'Refunded', 52198.2),
(525, 1125, '2026-09-12', 'Debit Card', 'Pending', 4491.26),
(526, 1126, '2026-09-19', 'Net Banking', 'Completed', 17000.0),
(527, 1127, '2026-09-19', 'Debit Card', 'Refunded', 19950.0),
(528, 1128, '2026-10-01', 'Net Banking', 'Pending', 7615.18),
(529, 1129, '2026-10-02', 'Credit Card', 'Refunded', 8549.05),
(530, 1130, '2026-10-08', 'Net Banking', 'Pending', 43558.45),
(531, 1131, '2026-10-13', 'UPI', 'Completed', 21600.0),
(532, 1132, '2026-10-06', 'Credit Card', 'Completed', 23750.0),
(533, 1133, '2026-09-23', 'Wallet', 'Completed', 129198.3),
(534, 1134, '2026-10-10', 'COD', 'Completed', 3500.0),
(535, 1135, '2026-10-08', 'Net Banking', 'Failed', 0),
(536, 1136, '2026-10-22', 'UPI', 'Refunded', 719.1),
(537, 1137, '2026-10-10', 'Credit Card', 'Failed', 0),
(538, 1138, '2026-09-20', 'COD', 'Completed', 3200.0),
(539, 1139, '2026-11-01', 'UPI', 'Failed', 0),
(540, 1140, '2026-09-21', 'Net Banking', 'Refunded', 17000.0),
(541, 1101, '2026-09-28', 'COD', 'Failed', 0),
(542, 1102, '2026-09-25', 'Net Banking', 'Completed', 8400.0),
(543, 1103, '2026-10-17', 'COD', 'Pending', 37498.5),
(544, 1104, '2026-10-12', 'Wallet', 'Failed', 0),
(545, 1105, '2026-10-03', 'Net Banking', 'Failed', 0),
(546, 1106, '2026-10-10', 'COD', 'Pending', 2880.0),
(547, 1107, '2026-10-26', 'UPI', 'Pending', 4250.0),
(548, 1108, '2026-10-27', 'Net Banking', 'Failed', 0),
(549, 1109, '2026-10-24', 'Credit Card', 'Pending', 2999.0),
(550, 1110, '2026-09-08', 'Wallet', 'Pending', 1078.65);

-- 1.DISPLAY ALL CUSTOMERS DETAILS ?
SELECT * FROM CUSTOMERS;

-- 2. FIND THE TOTAL NUMBER OF CUSTOMERS REGISTERED IN THE DATABASE ?
SELECT COUNT(*) AS TOTAL_CUSTOMERS
FROM CUSTOMERS;

-- 3. FIND CUSTOMERS WHOSE ANNUAL INCOME IS GREATER THAN 75000 ?
SELECT *
FROM CUSTOMERS
WHERE ANNUAL_INCOME >= 75000;

-- 4. DISPLAY CUSTOMERS WHOSE FIRST NAME START WITH THE LETTER 'A' ?
SELECT *
FROM CUSTOMERS
WHERE LEFT(FIRST_NAME,1) = "A";

-- 5. FIND CUSTOMERS WHOSE EMAIL ADDRESS IS MISSING ?
SELECT *
FROM CUSTOMERS
WHERE EMAIL IS NULL;

-- 6. DISPLAY ALL DISTINCT PRODUCT CATEGORIES ?
SELECT CATEGORY
FROM PRODUCTS;

-- 7. FIND PRODUCTS WITH THE UNIT PRICE GREATER THAN 5000 ?
SELECT *
FROM PRODUCTS
WHERE UNIT_PRICE >= 5000;

-- 8. DISPLAY THE FIVE MOST EXPENSIVE PRODUCTS?
SELECT *
FROM PRODUCTS
ORDER BY UNIT_PRICE DESC LIMIT 5;

-- 9. FIND ALL ORDER WITH THE STATUS 'DELIVERED' ?
SELECT *
FROM ORDERS
WHERE ORDER_STATUS = "DELIVERED";

-- 10. DISPLAY ALL PAYMENTS WITH THE STATUS 'FAILED' ?
SELECT *
FROM PAYMENTS
WHERE PAYMENT_STATUS = "FAILED";

-- 11. FIND SALES RECORD WHERE THE DELIVERY DATE IS NULL ?
SELECT *
FROM SALES
WHERE DELIVERY_DATE IS NULL;

-- 12. DISPLAY ALL ORDERS PLACED FOR CUSTOMERS FROM MUMBAI ?
SELECT *
FROM ORDERS
WHERE DELIVERY_LOCATION = "MUMBAI";

-- 13. CALCULATE THE TOTAL REVENUE GENERATED BY BUSINESS ?
SELECT SUM(SALES_AMOUNT) AS TOTAL_REVENUE
FROM SALES;

-- 14. CALCULATE THE TOTAL PROFIT GENERATED BY THE BUSINESS ?
SELECT SUM(PROFIT) AS TOTAL_PROFIT
FROM SALES;

-- 15. FIND THE AVERAGE SALES AMOUNT PER SALES TRANSACTION ?
SELECT AVG(SALES_AMOUNT) AS AVERAGE_SALES_AMOUNT
FROM SALES;

-- 16. CALCULATE THE TOTAL QUANTITY OF THE PRODUCT SOLD ?
SELECT SUM(QUANTITY) AS TOTAL_QUANTITY
FROM SALES;

-- 17. FIND THE HIGHEST & LOWEST SALES AMOUNTS ?
SELECT MAX(SALES_AMOUNT) AS HIGHEST_SALES,
MIN(SALES_AMOUNT) AS LOWEST_SALES
FROM SALES;

-- 18. CALCULATE TOTAL REVENUE GENERATED BY EACH PRODUCT ?
SELECT PRODUCT_NAME,UNIT_PRICE
FROM PRODUCTS;

-- 19. FIND TOTAL SALES GENERATED BY EACH PRODUCTS CATEGORY ?
SELECT CATEGORY,SUM(UNIT_PRICE) AS TOTAL_SALES
FROM PRODUCTS
GROUP BY CATEGORY;

-- 20. IDENTIFY THE PRODUCT CATEGORY GENERATING THE HIGHEST REVENUE ?
SELECT CATEGORY,MAX(UNIT_PRICE) AS HIGHEST_REVENUE
FROM PRODUCTS
GROUP BY CATEGORY
ORDER BY HIGHEST_REVENUE DESC LIMIT 1;

-- 21. FIND TOTAL REVENUE GENERATED BY EACH LOCATION ?
SELECT O.DELIVERY_LOCATION,SUM(S.SALES_AMOUNT) AS TOTAL_REVENUE_GENERATED
FROM ORDERS AS O
JOIN SALES AS S
ON O.ORDER_ID = S.ORDER_ID
GROUP BY O.DELIVERY_LOCATION;
