-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 06:55 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_dealership`
--
CREATE DATABASE IF NOT EXISTS `car_dealership` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `car_dealership`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_ID` int(11) NOT NULL,
  `Firstname` varchar(25) DEFAULT NULL,
  `Lastname` varchar(25) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `ContactNo` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_ID`, `Firstname`, `Lastname`, `Address`, `Email`, `ContactNo`) VALUES
(1, 'Jack', 'McKnight', '10 Monks Hill', 'jmck@gmail.com', '02830751036'),
(2, 'Emma', 'Keegan', '45 Forest Hills', 'emmak@live.co.uk', '07732588426'),
(3, 'Kate', 'Scotch', '10 Bannor Road', 'kateScotch@outlook.com', '07544182639'),
(4, 'Harry', 'Taylor', '3 Desert Grove', 'harryT@yahoo.com', '07586149661'),
(5, 'Megan', 'McAvoy', '90 Sandy Road', 'mmcavoy@outlook.com', '02830651094');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `stock_ID` int(11) NOT NULL,
  `Date_sold` date DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `customer_ID`, `stock_ID`, `Date_sold`, `Price`, `Username`) VALUES
(1, 4, 2, '2020-07-23', 21320, 'nedking123'),
(2, 3, 1, '2021-05-13', 18400, 'sarahhills25'),
(3, 5, 4, '2020-03-09', 43760, 'rorylambert79'),
(4, 1, 3, '2018-06-29', 12450, 'kellysands2'),
(5, 2, 5, '2022-02-17', 46310, 'jamesmck1');

-- --------------------------------------------------------

--
-- Table structure for table `rev`
--

CREATE TABLE `rev` (
  `rev_ID` int(100) NOT NULL,
  `name` varchar(25) NOT NULL,
  `rating` varchar(1) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rev`
--

INSERT INTO `rev` (`rev_ID`, `name`, `rating`, `review`) VALUES
(1, 'Paul', '4', 'Very powerful car and reaches great speeds in no time. I paid a great price considering how low the mileage was.'),
(2, 'Alice', '5', 'Great family car, big enough to fit everyone in comfortably. Love the colour of the car.'),
(3, 'Jack', '3', 'Love my car, but it uses diesel quite quickly. '),
(5, 'Nep', '5', 'Cool Colour'),
(6, 'Test', '5', 'This is a review!');

-- --------------------------------------------------------

--
-- Table structure for table `rev2`
--

CREATE TABLE `rev2` (
  `rev2_ID` int(100) NOT NULL,
  `name` varchar(25) NOT NULL,
  `rating` varchar(1) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rev2`
--

INSERT INTO `rev2` (`rev2_ID`, `name`, `rating`, `review`) VALUES
(1, 'Callum', '5', 'Good Car, quite fast!'),
(2, 'Peter', '1', 'Great family car, No family to drive with though.'),
(3, 'Jack', '2', 'Love my car, Hate this one though.'),
(4, 'Vert', '3', 'Not Enough Green');

-- --------------------------------------------------------

--
-- Table structure for table `rev3`
--

CREATE TABLE `rev3` (
  `rev3_ID` int(100) NOT NULL,
  `name` varchar(25) NOT NULL,
  `rating` varchar(1) NOT NULL,
  `review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rev3`
--

INSERT INTO `rev3` (`rev3_ID`, `name`, `rating`, `review`) VALUES
(0, 'Uni', '5', 'Runs Well'),
(1, 'Parker', '4', 'Very powerful car and reaches great speeds in no time. Amazing Colour to boot.'),
(2, 'Otto', '4', 'Amazing for driving me to work.'),
(3, 'Jack', '3', 'Love my car, this one however is alright.');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `Review_ID` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `review` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`Review_ID`, `customer_ID`, `name`, `rating`, `date_reviewed`, `review`) VALUES
(1, 4, 'M4', 4.2, '2020-05-23', 'Very powerful car and reaches great speeds in no time. I paid a great price considering how low the mileage was.'),
(2, 3, 'X5', 4.8, '2022-09-18', 'Great family car, big enough to fit everyone in comfortably. Love the colour of the car.'),
(3, 5, 'M5', 5, '2023-02-05', 'Great car, could not fault it at all. Feels great driving it.'),
(4, 1, 'M6', 3.9, '2020-07-19', 'Love my car, but it uses diesel quite quickly. '),
(5, 2, 'i5', 4.9, '2021-08-14', 'Great car, so quiet. Easy to charge and does not take too long.');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `product_ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `Stock_ID` int(11) NOT NULL,
  `Model` varchar(25) DEFAULT NULL,
  `Registration` varchar(7) DEFAULT NULL,
  `Manufactured_year` int(11) DEFAULT NULL,
  `Fuel` varchar(15) DEFAULT NULL,
  `Mileage` int(10) DEFAULT NULL,
  `Engine_size` decimal(10,2) DEFAULT NULL,
  `Colour` varchar(15) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`Stock_ID`, `Model`, `Registration`, `Manufactured_year`, `Fuel`, `Mileage`, `Engine_size`, `Colour`, `Type`, `Price`) VALUES
(1, 'M4', 'BGZ3244', 2010, 'Diesel', 74362, '2.00', 'Blue', 'Automatic', 18400),
(2, 'M6', 'AXZ4189', 2014, 'Diesel', 42593, '3.00', 'Grey', 'Automatic', 21320),
(3, 'M5', 'JIG9811', 2006, 'Diesel', 98129, '2.00', 'Navy', 'Manual', 12450),
(4, 'X5', 'WEJ7513', 2012, 'Diesel', 63746, '2.00', 'White', 'Automatic', 43760),
(5, 'i5', 'MEZ9177', 2019, 'Electric', 29338, '0.00', 'Red', 'Automatic', 46310);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'jamesmck1', 'webapp5'),
(2, 'kellysands2', 'webapp2'),
(3, 'nedking123', 'webapp1'),
(4, 'rorylambert79', 'webapp4'),
(5, 'sarahhills25', 'webapp3'),
(10, 'user1', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD UNIQUE KEY `fk_orders` (`customer_ID`) USING BTREE,
  ADD UNIQUE KEY `fk_orders2` (`stock_ID`) USING BTREE;

--
-- Indexes for table `rev`
--
ALTER TABLE `rev`
  ADD PRIMARY KEY (`rev_ID`);

--
-- Indexes for table `rev2`
--
ALTER TABLE `rev2`
  ADD PRIMARY KEY (`rev2_ID`);

--
-- Indexes for table `rev3`
--
ALTER TABLE `rev3`
  ADD PRIMARY KEY (`rev3_ID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`Review_ID`),
  ADD UNIQUE KEY `fk_reviews` (`customer_ID`) USING BTREE;

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Stock_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rev`
--
ALTER TABLE `rev`
  MODIFY `rev_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rev2`
--
ALTER TABLE `rev2`
  MODIFY `rev2_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `Review_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `Stock_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders` FOREIGN KEY (`customer_ID`) REFERENCES `orders` (`order_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders2` FOREIGN KEY (`stock_ID`) REFERENCES `orders` (`order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews` FOREIGN KEY (`customer_ID`) REFERENCES `reviews` (`Review_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
