-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2025 at 07:19 PM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seniorproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(25) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `customerscol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Address`, `DOB`, `customerscol`) VALUES
(1, 'Steve', 'Smith', 'jim@gmail.com', '2344235', 'sddfg', '2025-07-01', NULL),
(2, 'Steve', 'Doe', 'stevedoe@aol.com', '234234', '234234', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(25) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `JobTitle` varchar(100) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `EmploymentStatus` varchar(100) DEFAULT NULL,
  `EmergencyContact` varchar(25) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Address`, `DOB`, `HireDate`, `JobTitle`, `Department`, `EmploymentStatus`, `EmergencyContact`, `Salary`) VALUES
(1, 'crocodile', 'dundee', 'crocodiledundee@aol.com', '2354435', '2134 ', '2025-07-04', '2025-07-10', 'tester', 'testing department', 'part-time', '23423', '1231.00');

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `ProductCategoryID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`ProductCategoryID`, `Name`, `Description`) VALUES
(1, 'Produce', 'Fruits and Vegetables and Stuff'),
(2, 'Hardware', 'tools');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `Quantity` int(11) NOT NULL DEFAULT '0',
  `ReorderLevel` int(11) DEFAULT NULL,
  `PurchasePrice` decimal(8,2) NOT NULL DEFAULT '0.00',
  `SellPrice` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ProductCategoryID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `name`, `description`, `Quantity`, `ReorderLevel`, `PurchasePrice`, `SellPrice`, `ProductCategoryID`, `SupplierID`) VALUES
(3, 'Apple', 'Bunch of Apples', 2, 1, '1.00', '1.00', 1, 5),
(4, 'Oranges', 'Bunch of oranges.', 10, 4, '1.25', '2.25', 1, 1),
(5, 'Cantelope', 'Bunch of cantelopes.', 2, 4, '1.15', '2.15', 1, 2),
(8, 'Tangerine', 'Tangerine', 1, 1, '1.00', '1.00', 1, 2),
(11, 'newer', 'newer', 1, 1, '1.00', '1.00', 1, 5),
(12, 'screwdriver', 'screwdriver', 1, 2, '1.00', '1.00', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(25) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `Name`, `Email`, `PhoneNumber`, `Address`) VALUES
(1, 'Walmart Groceries', 'walmart@walmart.com', '(555)555-5555', '123 E. Anywhere St.Bel Air, CA90210'),
(2, 'Fry\'s Grocery', 'frys@frysgrocery.com', '(555)555-5555', '125 E. Anywhere St.\r\nBel Air, CA\r\n90210'),
(4, 'newer', 'newer', 'newer', 'newer'),
(5, 'Walgreens', 'sdsadg', '23523', '12321');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `AccessLevel` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `LastName`, `FirstName`, `AccessLevel`, `Username`, `Password`, `Email`) VALUES
(2, 'Smith', 'Richard', 2, 'richardsmith', 'PASS', 'adamsmith@aol.com'),
(15, 'a', 'a', 3, 'jimbo', 'a', 'a'),
(16, 'a', 'a', 3, 'bob', 'a', 'a'),
(17, 'a', 'a', 3, 'steve', 'a', 'a'),
(21, 'dude', 'dude', 1, 'dude', '$2a$10$F6qrHzffiDPnwQb0WEFjbuYXOF3bywpLnjEb8lYUhGgbUNT8n8s6m', 'dude'),
(22, 'taibo', 'taibo', 2, 'taibo', '$2a$10$6KGB92ZpfkT.64mUX01pS.XdZ/.ALKVUa87d74vY.wYC.HQPSiP3e', 'taibo'),
(44, 'g', 'g', 3, 'g', '$2a$10$YWjTgA83mD5uTSRNmAWtPea0QEUzaikAWgopkuQ1Q/Tqi1eZhdfUy', 'g'),
(45, 'h', 'h', 1, 'h', '$2a$10$1MtSUeZ.Tr2LuzXl6Mu.o.gTPaP6bGFZt3TKGWhDEI6piKqSS8Rra', 'h');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`ProductCategoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`,`SupplierID`),
  ADD KEY `fk_products_productcategories_idx` (`ProductCategoryID`),
  ADD KEY `fk_products_suppliers1_idx` (`SupplierID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `ProductCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_productcategories` FOREIGN KEY (`ProductCategoryID`) REFERENCES `productcategories` (`ProductCategoryID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_products_suppliers1` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
