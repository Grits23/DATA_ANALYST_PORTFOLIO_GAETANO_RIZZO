/* Task 2: Descrivi la struttura delle tabelle che reputi utili 
e sufficienti a modellare lo scenario proposto tramite la sintassi DDL. 
Implementa fisicamente le tabelle utilizzando il DBMS SQL Server(o altro). */


CREATE DATABASE GR_Toys_Schema;
USE GR_Toys_Schema;

-- REGION
CREATE TABLE Region (
    RegionKey INT AUTO_INCREMENT
    , RegionName VARCHAR(50) NOT NULL
    , CONSTRAINT PK_Region PRIMARY KEY (RegionKey)
);

-- COUNTRY
CREATE TABLE Country (
    CountryKey INT AUTO_INCREMENT
    , CountryName VARCHAR(50) NOT NULL
    , RegionKey INT NOT NULL
    , CONSTRAINT PK_Country PRIMARY KEY (CountryKey)
    , CONSTRAINT FK_Region_Country FOREIGN KEY (RegionKey) 
		REFERENCES Region(RegionKey)
);

-- LOCATION
CREATE TABLE Location (
    LocationKey INT AUTO_INCREMENT
    , City VARCHAR(50) NOT NULL
    , ZipCode VARCHAR(20)
    , CountryKey INT NOT NULL
    , CONSTRAINT PK_Location PRIMARY KEY (LocationKey)
    , CONSTRAINT FK_Country_Location FOREIGN KEY (CountryKey) 
		REFERENCES Country(CountryKey)
);

-- EMPLOYEE
CREATE TABLE Employee (
    EmployeeKey INT AUTO_INCREMENT
    , JobTitle VARCHAR(50) NOT NULL
    , BirthDate DATE NOT NULL
    , Gender CHAR(1) NOT NULL       
    , HireDate DATE NOT NULL
    , Salary INT NOT NULL
    , VacationHours INT NOT NULL DEFAULT 0
    , SickLeaveHours INT NOT NULL DEFAULT 0
    , CurrentFlag BOOLEAN NOT NULL DEFAULT TRUE
    , CONSTRAINT PK_Employee PRIMARY KEY (EmployeeKey)
);

-- RESELLER
CREATE TABLE Reseller (
    ResellerKey INT AUTO_INCREMENT
    , ResellerName VARCHAR(50) NOT NULL
    , BusinessType VARCHAR(50)
    , Phone VARCHAR(20)
    , EmailAddress VARCHAR(50)
    , LocationKey INT NOT NULL
    , CONSTRAINT PK_Reseller PRIMARY KEY (ResellerKey)
    , CONSTRAINT FK_Location_Reseller FOREIGN KEY (LocationKey) 
		REFERENCES Location(LocationKey)
);


-- CUSTOMER
CREATE TABLE Customer (
	CustomerKey INT AUTO_INCREMENT
    , CustomerName VARCHAR(50) NOT NULL
    , Gender CHAR(1)
    , BirthDate DATE
    , EmailAddress VARCHAR(50)
    , Phone VARCHAR(25)
    , CustomerType VARCHAR(50)               
    , DateFirstPurchase DATE 
    , LocationKey INT NOT NULL
    , CONSTRAINT PK_Customer PRIMARY KEY (CustomerKey)
    , CONSTRAINT FK_Location_Customer FOREIGN KEY (LocationKey) 
		REFERENCES Location (LocationKey) 
);


-- TIME
CREATE TABLE Time (
    DateKey INT      
    , Date DATE NOT NULL 
    , CONSTRAINT PK_Time PRIMARY KEY (DateKey)
);


-- PRODUCT CATEGORY 
CREATE TABLE ProductCategory (
	ProductCategoryKey INT AUTO_INCREMENT
	, ProductCategoryName VARCHAR(50)
    , CONSTRAINT PK_ProductCategory PRIMARY KEY (ProductCategoryKey)
);


-- PRODUCT 
CREATE TABLE Product (
    ProductKey INT AUTO_INCREMENT
    , ProductName VARCHAR(100) NOT NULL
    , ProductCategoryKey INT NOT NULL
    , Color VARCHAR(30)
    , StandardCost DECIMAL(10,2)         
    , ListPrice DECIMAL(10,2)             
    , Size VARCHAR(10)
    , Weight DECIMAL(8,2) 
    , CONSTRAINT PK_Product PRIMARY KEY (ProductKey)
    , CONSTRAINT FK_ProductCategory_Product FOREIGN KEY (ProductCategoryKey) 
		REFERENCES ProductCategory(ProductCategoryKey)
);


-- SALES
CREATE TABLE Sales (
    OrderNumber VARCHAR(50) NOT NULL
    , OrderLineNumber INT NOT NULL
    , ProductKey INT NOT NULL
    , CustomerKey INT NOT NULL
    , ResellerKey INT NOT NULL
    , LocationKey INT NOT NULL
    , DateKey INT NOT NULL
	, EmployeeKey INT NOT NULL
    , Quantity INT NOT NULL
    , UnitPrice DECIMAL(10,2) NOT NULL       
    , TotalProductCost DECIMAL(10,2) 
    , SalesAmount DECIMAL(10,2)
    , CONSTRAINT PK_Sales PRIMARY KEY (OrderNumber, OrderLineNumber)
    , CONSTRAINT FK_Product_Sales FOREIGN KEY (ProductKey) 
		REFERENCES Product(ProductKey)
    , CONSTRAINT FK_Customer_Sales FOREIGN KEY (CustomerKey) 
		REFERENCES Customer(CustomerKey)
    , CONSTRAINT FK_Reseller_Sales FOREIGN KEY (ResellerKey) 
		REFERENCES Reseller(ResellerKey)
    , CONSTRAINT FK_Location_Sales FOREIGN KEY (LocationKey) 
		REFERENCES Location(LocationKey)
    , CONSTRAINT FK_Time_Sales FOREIGN KEY (DateKey) 
		REFERENCES Time(DateKey)
    , CONSTRAINT FK_Employee_Sales FOREIGN KEY (EmployeeKey) 
		REFERENCES Employee(EmployeeKey)
);


/* TASK 3: POPOLAMENTO ENTITA'*/

-- Popolamento tabella Region
INSERT INTO Region (RegionName) VALUES
('North America'),
('South America'),
('Europe'),
('Asia'),
('Africa'),
('Oceania'),
('Middle East');


-- Popolamento tabella Country
INSERT INTO Country (CountryName, RegionKey) VALUES
('United States', 1),       -- North America
('Canada', 1),
('Brazil', 2),              -- South America
('Argentina', 2),
('Italy', 3),               -- Europe
('Germany', 3),
('China', 4),               -- Asia
('Japan', 4),
('South Africa', 5),        -- Africa
('Nigeria', 5),
('Australia', 6),           -- Oceania
('New Zealand', 6),
('United Arab Emirates', 7),-- Middle East
('Saudi Arabia', 7);


-- Popolamento tabella Location
INSERT INTO Location (City, ZipCode, CountryKey) VALUES
('New York', '10001', 1),         -- United States
('Los Angeles', '90001', 1),
('Toronto', 'M5H 2N2', 2),        -- Canada
('São Paulo', '01000-000', 3),    -- Brazil
('Buenos Aires', 'C1000', 4),     -- Argentina
('Rome', '00100', 5),             -- Italy
('Berlin', '10115', 6),           -- Germany
('Beijing', '100000', 7),         -- China
('Tokyo', '100-0001', 8),         -- Japan
('Cape Town', '8000', 9),         -- South Africa
('Lagos', '101001', 10),          -- Nigeria
('Sydney', '2000', 11),           -- Australia
('Auckland', '1010', 12),         -- New Zealand
('Dubai', '00000', 13),           -- UAE
('Riyadh', '11564', 14);          -- Saudi Arabia


-- Popolamento tabella Employee
INSERT INTO Employee (JobTitle, BirthDate, Gender, HireDate, Salary, VacationHours, SickLeaveHours, CurrentFlag) VALUES
('Sales Manager', '1985-03-12', 'F', '2015-06-01', 38000, 15, 4, TRUE),
('Store Assistant', '1992-08-25', 'M', '2018-09-15', 26000, 10, 2, TRUE),
('Logistics Coordinator', '1988-11-03', 'M', '2020-02-10', 30000, 8, 1, TRUE),
('Customer Support', '1995-05-30', 'F', '2019-07-01', 27000, 12, 3, TRUE),
('Online Sales Analyst', '1990-12-01', 'F', '2021-03-20', 32000, 5, 0, TRUE),
('Warehouse Operator', '1983-06-18', 'M', '2016-04-05', 24000, 6, 2, TRUE),
('Procurement Officer', '1987-01-22', 'F', '2017-08-12', 35000, 10, 1, TRUE);


-- Popolamento tabella Reseller
INSERT INTO Reseller (ResellerName, BusinessType, Phone, EmailAddress, LocationKey) VALUES
('HappyToys Ltd.', 'Retailer', '123-456-7890', 'info@happytoys.com', 1),
('EduPlay Distributors', 'Wholesaler', '234-567-8901', 'sales@eduplay.com', 2),
('ToyWorld Inc.', 'Corporation', '345-678-9012', 'contact@toyworld.com', 3),
('FunGalaxy', 'Retailer', '456-789-0123', 'support@fungalaxy.com', 4),
('KidzStore Europe', 'Wholesaler', '567-890-1234', 'info@kidzstore.eu', 5),
('ToyBridge Africa', 'Distributor', '678-901-2345', 'admin@toybridge.africa', 9),
('PlayBox Asia', 'Retailer', '789-012-3456', 'hello@playbox.asia', 8),
('DreamToys ME', 'Retailer', '890-123-4567', 'contact@dreamtoys.me', 13);


-- Popolamento tabella Customer
INSERT INTO Customer (CustomerName, Gender, BirthDate, EmailAddress, Phone, CustomerType, DateFirstPurchase, LocationKey) VALUES
('Alice Romano', 'F', '1987-07-12', 'alice.romano@example.com', '351-123-4567', 'Individual', '2022-03-10', 1),
('Luca Verdi', 'M', '1991-04-05', 'luca.verdi@example.com', '351-234-5678', 'Individual', '2022-07-22', 2),
('Giulia Bianchi', 'F', '1995-02-20', 'giulia.bianchi@example.com', '351-345-6789', 'Individual', '2023-01-05', 3),
('Francesco Moretti', 'M', '1980-10-11', 'francesco.moretti@example.com', '351-456-7890', 'Business', '2021-11-15', 4),
('Sophie Dubois', 'F', '1990-03-19', 'sophie.dubois@example.com', '33-789-123456', 'Individual', '2022-08-30', 5),
('Carlos da Silva', 'M', '1983-09-07', 'carlos.silva@example.com', '55-21-1234-5678', 'Business', '2023-01-10', 6),
('Emily Johnson', 'F', '1994-06-25', 'emily.johnson@example.com', '1-800-234-5678', 'Individual', '2023-02-14', 7),
('Taro Yamada', 'M', '1989-03-15', 'taro.yamada@example.com', '81-90-1234-5678', 'Individual', '2023-03-01', 8);


-- Popolamento tabella Time
INSERT INTO Time (DateKey, Date) VALUES 
(20230401, '2023-04-01'),
(20230402, '2023-04-02'),
(20230403, '2023-04-03'),
(20230404, '2023-04-04'),
(20230405, '2023-04-05'),
(20230406, '2023-04-06'),
(20230407, '2023-04-07'),
(20230408, '2023-04-08'),
(20230409, '2023-04-09'),
(20230410, '2023-04-10');


-- Popolamento tabella ProductCategory
INSERT INTO ProductCategory (ProductCategoryName) VALUES
('Action Figures'),
('Dolls'),
('Educational Toys'),
('Vehicles'),
('Board Games'),
('Outdoor Toys');


-- Popolamento tabella Product
INSERT INTO Product (ProductName, ProductCategoryKey, Color, StandardCost, ListPrice, Size, Weight) VALUES
('Superhero Max', 1, 'Red', 5.00, 14.99, 'M', 0.3),
('Robo-X200', 1, 'Silver', 8.50, 19.99, 'L', 0.5),
('Princess Sofia Doll', 2, 'Pink', 7.00, 21.99, 'Standard', 0.6),
('Magic Styling Head', 2, 'Blonde', 9.00, 24.99, 'Standard', 0.7),
('Alphabet Blocks Set', 3, 'Multicolor', 4.00, 12.99, 'Box', 1.2),
('Solar Science Kit', 3, 'Blue', 6.50, 17.99, 'Small', 0.8),
('Fire Truck', 4, 'Red', 6.00, 16.99, 'Large', 1.5),
('Race Car Turbo', 4, 'Blue', 4.50, 13.49, 'Medium', 0.9),
('Family Board Game', 5, 'Multicolor', 8.00, 22.00, 'Box', 1.3),
('Giant Water Blaster', 6, 'Yellow', 10.00, 29.99, 'XL', 1.8);


-- Popolamento tabella Sales
INSERT INTO Sales (OrderNumber, OrderLineNumber, ProductKey, CustomerKey, ResellerKey, LocationKey, DateKey, EmployeeKey, Quantity, UnitPrice, TotalProductCost, SalesAmount)
VALUES
('ORD1001', 1, 9, 4, 3, 1, 20230407, 7, 4, 22.2, 59.26, 88.8),
('ORD1002', 1, 7, 2, 4, 5, 20230402, 4, 2, 25.09, 40.3, 50.18),
('ORD1003', 1, 5, 4, 7, 6, 20230409, 2, 3, 18.53, 36.88, 55.59),
('ORD1004', 1, 7, 5, 5, 5, 20230401, 7, 1, 16.82, 11.55, 16.82),
('ORD1005', 1, 8, 7, 5, 2, 20230406, 4, 5, 24.71, 87.48, 123.55),
('ORD1006', 1, 8, 8, 7, 1, 20230403, 2, 2, 16.72, 24.66, 33.44),
('ORD1007', 1, 2, 4, 7, 7, 20230406, 5, 3, 17.51, 46.44, 52.53),
('ORD1008', 1, 1, 1, 2, 6, 20230403, 1, 1, 28.82, 17.45, 28.82),
('ORD1009', 1, 6, 8, 7, 1, 20230406, 2, 1, 17.58, 11.83, 17.58),
('ORD1010', 1, 3, 3, 5, 1, 20230409, 3, 3, 24.54, 46.14, 73.62),
('ORD1011', 1, 4, 7, 2, 5, 20230402, 7, 2, 11.99, 16.52, 23.98),
('ORD1012', 1, 7, 2, 6, 8, 20230407, 5, 2, 25.55, 42.49, 51.1),
('ORD1013', 1, 6, 3, 3, 2, 20230403, 5, 5, 20.55, 68.25, 102.75),
('ORD1014', 1, 1, 5, 2, 4, 20230407, 6, 5, 28.32, 127.03, 141.6),
('ORD1015', 1, 6, 2, 4, 7, 20230405, 5, 3, 16.23, 42.36, 48.69),
('ORD1016', 1, 4, 1, 2, 4, 20230410, 3, 3, 18.51, 49.8, 55.53),
('ORD1017', 1, 6, 7, 1, 7, 20230408, 7, 1, 16.83, 11.0, 16.83),
('ORD1018', 1, 4, 4, 1, 7, 20230405, 2, 4, 13.09, 36.49, 52.36),
('ORD1019', 1, 7, 1, 8, 2, 20230405, 5, 4, 20.96, 50.67, 83.84),
('ORD1020', 1, 8, 5, 7, 1, 20230401, 5, 2, 14.13, 21.2, 28.26),
('ORD1021', 1, 6, 5, 6, 5, 20230407, 3, 1, 28.52, 19.09, 28.52),
('ORD1022', 1, 1, 5, 3, 5, 20230403, 5, 3, 23.27, 44.9, 69.81),
('ORD1023', 1, 7, 1, 3, 6, 20230406, 3, 3, 19.54, 46.76, 58.62),
('ORD1024', 1, 6, 8, 3, 3, 20230401, 5, 1, 26.9, 16.33, 26.9),
('ORD1025', 1, 6, 3, 4, 4, 20230406, 3, 2, 29.69, 45.98, 59.38),
('ORD1026', 1, 4, 1, 6, 7, 20230404, 3, 5, 12.18, 47.05, 60.9),
('ORD1027', 1, 10, 5, 4, 1, 20230407, 2, 3, 29.89, 64.77, 89.67),
('ORD1028', 1, 9, 6, 3, 6, 20230403, 6, 3, 20.86, 51.15, 62.58),
('ORD1029', 1, 5, 3, 6, 5, 20230403, 2, 4, 18.1, 57.16, 72.4),
('ORD1030', 1, 10, 2, 5, 4, 20230409, 3, 2, 20.55, 29.2, 41.1),
('ORD1031', 1, 8, 1, 3, 2, 20230403, 1, 4, 11.66, 37.17, 46.64),
('ORD1032', 1, 3, 8, 2, 5, 20230409, 2, 4, 16.75, 59.51, 67.0),
('ORD1033', 1, 10, 3, 1, 3, 20230410, 2, 2, 15.83, 20.64, 31.66),
('ORD1034', 1, 7, 3, 2, 6, 20230404, 4, 3, 27.39, 69.89, 82.17),
('ORD1035', 1, 7, 6, 4, 4, 20230407, 5, 3, 10.07, 23.22, 30.21),
('ORD1036', 1, 9, 3, 7, 3, 20230405, 1, 1, 19.34, 14.49, 19.34),
('ORD1037', 1, 5, 2, 4, 5, 20230402, 2, 5, 13.96, 42.56, 69.8),
('ORD1038', 1, 4, 5, 2, 2, 20230408, 6, 1, 29.26, 20.8, 29.26),
('ORD1039', 1, 6, 1, 1, 8, 20230408, 4, 4, 14.73, 49.26, 58.92),
('ORD1040', 1, 6, 5, 6, 8, 20230410, 5, 4, 17.67, 49.58, 70.68),
('ORD1041', 1, 3, 4, 7, 7, 20230405, 5, 3, 22.87, 55.7, 68.61),
('ORD1042', 1, 4, 6, 5, 3, 20230402, 5, 2, 10.66, 17.3, 21.32),
('ORD1043', 1, 4, 6, 7, 4, 20230404, 5, 3, 26.79, 68.32, 80.37),
('ORD1044', 1, 3, 2, 3, 3, 20230406, 6, 2, 21.83, 34.23, 43.66),
('ORD1045', 1, 5, 6, 8, 2, 20230403, 5, 1, 19.19, 12.61, 19.19),
('ORD1046', 1, 6, 1, 8, 4, 20230401, 5, 4, 26.77, 70.78, 107.08),
('ORD1047', 1, 4, 1, 8, 4, 20230409, 4, 5, 19.94, 70.15, 99.7),
('ORD1048', 1, 9, 2, 1, 2, 20230404, 7, 2, 24.57, 37.94, 49.14),
('ORD1049', 1, 6, 5, 6, 7, 20230407, 4, 4, 29.65, 81.29, 118.6),
('ORD1050', 1, 9, 7, 5, 4, 20230410, 4, 4, 23.15, 58.93, 92.6),
('ORD1051', 1, 9, 8, 4, 3, 20230403, 4, 5, 10.78, 44.38, 53.9),
('ORD1052', 1, 5, 6, 7, 4, 20230401, 7, 3, 17.15, 42.7, 51.45),
('ORD1053', 1, 8, 6, 6, 3, 20230404, 2, 4, 26.34, 66.65, 105.36),
('ORD1054', 1, 1, 8, 6, 5, 20230405, 5, 4, 24.01, 79.85, 96.04),
('ORD1055', 1, 2, 5, 8, 7, 20230409, 3, 2, 20.37, 35.33, 40.74),
('ORD1056', 1, 1, 5, 3, 8, 20230403, 2, 2, 16.79, 29.26, 33.58),
('ORD1057', 1, 4, 5, 7, 4, 20230402, 7, 5, 16.74, 64.44, 83.7),
('ORD1058', 1, 10, 3, 4, 1, 20230408, 6, 3, 28.69, 72.28, 86.07),
('ORD1059', 1, 1, 5, 3, 2, 20230406, 2, 3, 12.09, 24.79, 36.27),
('ORD1060', 1, 10, 6, 8, 6, 20230406, 7, 2, 27.61, 39.22, 55.22),
('ORD1061', 1, 10, 1, 4, 7, 20230408, 4, 4, 24.74, 61.33, 98.96),
('ORD1062', 1, 9, 8, 4, 6, 20230403, 5, 4, 16.7, 41.73, 66.8),
('ORD1063', 1, 6, 5, 8, 7, 20230404, 7, 1, 13.16, 9.78, 13.16),
('ORD1064', 1, 6, 1, 7, 8, 20230409, 3, 3, 10.24, 25.45, 30.72),
('ORD1065', 1, 5, 3, 5, 7, 20230407, 4, 5, 26.55, 118.73, 132.75),
('ORD1066', 1, 6, 4, 2, 2, 20230405, 3, 5, 12.43, 38.31, 62.15),
('ORD1067', 1, 1, 5, 7, 5, 20230402, 4, 4, 14.34, 38.76, 57.36),
('ORD1068', 1, 3, 7, 7, 1, 20230406, 1, 5, 18.9, 68.97, 94.5),
('ORD1069', 1, 9, 6, 6, 5, 20230407, 2, 2, 27.6, 45.86, 55.2),
('ORD1070', 1, 8, 6, 3, 3, 20230407, 4, 2, 16.81, 28.93, 33.62),
('ORD1071', 1, 1, 5, 1, 5, 20230408, 5, 4, 14.95, 37.81, 59.8),
('ORD1072', 1, 3, 2, 8, 7, 20230401, 2, 4, 27.38, 79.77, 109.52),
('ORD1073', 1, 4, 6, 1, 2, 20230402, 6, 1, 22.93, 16.18, 22.93),
('ORD1074', 1, 9, 4, 6, 4, 20230403, 4, 3, 17.29, 41.82, 51.87),
('ORD1075', 1, 5, 1, 4, 1, 20230410, 1, 3, 17.16, 36.45, 51.48),
('ORD1076', 1, 6, 3, 5, 3, 20230407, 7, 2, 18.64, 25.41, 37.28),
('ORD1077', 1, 2, 1, 8, 2, 20230404, 7, 2, 20.09, 29.08, 40.18),
('ORD1078', 1, 9, 2, 2, 1, 20230409, 5, 4, 25.43, 80.11, 101.72),
('ORD1079', 1, 9, 7, 4, 5, 20230405, 1, 4, 10.45, 35.21, 41.8),
('ORD1080', 1, 1, 1, 2, 8, 20230409, 4, 5, 13.92, 43.86, 69.6),
('ORD1081', 1, 1, 2, 8, 1, 20230401, 6, 3, 21.37, 50.15, 64.11),
('ORD1082', 1, 8, 6, 6, 1, 20230401, 6, 3, 20.48, 37.3, 61.44),
('ORD1083', 1, 6, 8, 7, 7, 20230405, 2, 2, 23.57, 28.39, 47.14),
('ORD1084', 1, 8, 5, 8, 1, 20230401, 2, 4, 26.14, 88.23, 104.56),
('ORD1085', 1, 8, 2, 8, 4, 20230401, 2, 1, 26.49, 16.36, 26.49),
('ORD1086', 1, 8, 8, 3, 8, 20230408, 1, 1, 15.47, 13.67, 15.47),
('ORD1087', 1, 3, 5, 7, 4, 20230409, 7, 4, 29.12, 82.09, 116.48),
('ORD1088', 1, 7, 7, 6, 3, 20230405, 5, 1, 27.1, 18.36, 27.1),
('ORD1089', 1, 8, 4, 1, 2, 20230410, 7, 1, 16.84, 14.13, 16.84),
('ORD1090', 1, 10, 8, 5, 6, 20230407, 1, 4, 15.49, 37.64, 61.96),
('ORD1091', 1, 1, 5, 3, 5, 20230410, 5, 2, 13.81, 23.66, 27.62),
('ORD1092', 1, 4, 8, 8, 2, 20230409, 7, 4, 16.28, 45.47, 65.12),
('ORD1093', 1, 6, 3, 5, 7, 20230410, 1, 2, 12.04, 19.74, 24.08),
('ORD1094', 1, 7, 1, 1, 4, 20230408, 1, 4, 13.01, 38.12, 52.04),
('ORD1095', 1, 1, 6, 7, 2, 20230405, 2, 4, 15.85, 38.47, 63.4),
('ORD1096', 1, 7, 2, 5, 2, 20230408, 5, 5, 27.71, 98.33, 138.55),
('ORD1097', 1, 3, 8, 1, 5, 20230406, 7, 3, 11.08, 27.42, 33.24),
('ORD1098', 1, 6, 7, 2, 8, 20230409, 2, 3, 11.86, 30.65, 35.58),
('ORD1099', 1, 3, 1, 3, 2, 20230404, 5, 1, 23.1, 16.7, 23.1),
('ORD1100', 1, 1, 5, 6, 1, 20230409, 1, 5, 11.23, 35.91, 56.15);