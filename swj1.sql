-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 11, 2018 at 01:33 PM
-- Server version: 10.2.19-MariaDB-10.2.19+maria~xenial
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swj1_3_db`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `Advance`
--
CREATE TABLE `Advance` (
`memberFirst` varchar(30)
,`memberLast` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceNum` int(6) UNSIGNED NOT NULL,
  `productNum` int(6) UNSIGNED NOT NULL,
  `repNum` int(6) UNSIGNED NOT NULL,
  `memberNum` int(6) UNSIGNED NOT NULL,
  `quantity` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceNum`, `productNum`, `repNum`, `memberNum`, `quantity`) VALUES
(800001, 600017, 100001, 37, 2),
(800002, 600001, 100001, 14, 1),
(800003, 600029, 100001, 1, 2),
(800004, 600005, 100002, 17, 1),
(800005, 600027, 100003, 23, 2),
(800006, 600021, 100003, 33, 4),
(800007, 600012, 100003, 4, 1),
(800008, 600013, 100004, 4, 2),
(800009, 600008, 100004, 20, 1),
(800010, 600005, 100002, 17, 3),
(800012, 600005, 100003, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberNum` int(6) UNSIGNED NOT NULL,
  `memberFirst` varchar(30) NOT NULL,
  `memberLast` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `membershipType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberNum`, `memberFirst`, `memberLast`, `email`, `membershipType`) VALUES
(1, 'Richard', 'Froning', '', 'Advance'),
(2, 'Ryan ', 'Froning', '', 'Regular'),
(4, 'Travis', 'Jones', 'TJones91@gmail.com', 'Advance'),
(5, 'Taylor', 'Jones', 'TCotherman93@gmail.com', 'Advance'),
(6, 'Darren', 'Hunsucker', 'DareBear21@gmail.com', 'Advance'),
(7, 'David ', 'Oaks', 'DOaks1974@gmail.com', 'Advance'),
(8, 'Jaiden', 'Medley', 'JaiMed@gmail.com', 'Advance'),
(9, 'Josh', 'Malone', 'JoshuaCF@gmail.com', 'Advance'),
(10, 'Elly', 'Kearcher', 'EllyCF@gmail.com', 'Advance'),
(11, 'Jim', 'Hensel', 'JimmyHenselCF@gmail.com', 'Advance'),
(12, 'Anna', 'Lancaster', 'ALancasterCF@gmail.com', 'Advance'),
(13, 'Angelo', 'Dicicco', 'Angle_CF@gmail.com', 'Advance'),
(14, 'Jessica', 'Hunsucker', 'JesHCF@gmail.com', 'Advance'),
(15, 'Jake', 'Lockert', 'JacobCF@gmail.com', 'Advance'),
(16, 'Anthony', 'Mapes', 'TonyCF@gmail.com', 'Advance'),
(17, 'Tasia', 'Percevecz', 'TasiaPCF@gmail.com', 'Advance'),
(18, 'Nathaniel', 'Jones', 'NateJonesCF@gmail.com', 'Advance'),
(19, 'Jessica', 'Nabors', 'NaborsCF@gmail.com', 'Advance'),
(20, 'Jordan', 'Johns', 'JJCF@gmail.com', 'Advance'),
(21, 'A.J.', 'Wilkerson', 'AJW_CF@gmail.com', 'Advance'),
(22, 'Kristen', 'Long', 'KLong_CF@gmail.com', 'Advance'),
(23, 'Tyler', 'Livesay', 'tylerCF@gmail.com', 'Advance'),
(24, 'Kristin', 'Miller', 'KMiller_CF@gmail.com', 'Advance'),
(25, 'Dre', 'Strohm', 'DStorm_CF@gmail.com', 'Advance'),
(26, 'Andrew', 'Shea', 'AndyCF@gmail.com', 'Advance'),
(27, 'T.J.', 'Carver', 'TJ_CF@gmail.com', 'Advance'),
(28, 'Grace', 'Rekowski', 'RowCF@gmail.com', 'Advance'),
(29, 'Phillip', 'Johnson', 'PJimmerson@live.com', 'Regular'),
(30, 'Samuel', 'Ramsey', 'RamSam@hotmail.com', 'Regular'),
(31, 'James', 'Goodman', 'JimmyG@live.com', 'Regular'),
(32, 'Shawn', 'Pohl', 'PolishGirl69@live.com', 'Regular'),
(33, 'Shannon', 'Pohl', 'FireMan73@live.com', 'Regular'),
(34, 'Burton', 'Jones', 'GrandpaJ@hotmail.com', 'Regular'),
(35, 'Hannah', 'Reed', '', 'Regular'),
(36, 'Ryan', 'Winchester', 'RealRyan1984@hotmail.com', 'Regular'),
(37, 'Travis', 'Silvers', 'SilverBullet@hotmail.com', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membershipType` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `membershipNum` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membershipType`, `price`, `membershipNum`) VALUES
('Advance', '139.99', 1),
('Regular', '89.99', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productNum` int(6) UNSIGNED NOT NULL,
  `productName` varchar(300) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `vendorNum` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productNum`, `productName`, `price`, `vendorNum`) VALUES
(600001, 'Rogue Echo Bike', '650.00', 1),
(600002, 'Black Concept 2 Model D Power ', '825.00', 1),
(600003, '25LB Rogue Rubber Hex Dumbbell - Pair', '50.00', 1),
(600004, '27.5LB Rogue Rubber Hex Dumbbell - Pair', '60.00', 1),
(600005, '30LB Rogue Rubber Hex Dumbbell - Pair', '67.50', 1),
(600006, '35LB Rogue Rubber Hex Dumbbell - Pair', '75.00', 1),
(600007, '40LB Rogue Rubber Hex Dumbbell - Pair', '85.00', 1),
(600008, 'The Ohio Bar - Cerakote', '300.00', 1),
(600009, '160LB HG 2.0 Set', '275.00', 1),
(600010, '230LB HG 2.0 Set', '360.00', 1),
(600011, '260LB HG 2.0 Set', '425.00', 1),
(600012, '350LB HG 2.0 Set', '545.00', 1),
(600013, 'Rogue Black Leather 13mm - 4" Lever Belt', '125.00', 1),
(600014, 'Rogue 5mm Knee Sleeve - Pair', '42.50', 1),
(600015, 'Rogue Games Box', '130.00', 1),
(600016, 'Rogue 4LB Medicine Ball', '60.00', 1),
(600017, 'Rogue 6LB Medicine Ball', '65.00', 1),
(600018, 'Rogue 8LB Medicine Ball', '70.00', 1),
(600019, 'Rogue 10LB Medicine Ball', '75.00', 1),
(600020, 'Rogue 12LB Medicine Ball', '80.00', 1),
(600021, 'Rogue 14LB Medicine Ball', '85.00', 1),
(600022, 'Rogue 16LB Medicine Ball', '90.00', 1),
(600023, 'Rogue 18LB Medicine Ball', '95.00', 1),
(600024, 'Rogue 20LB Medicine Ball', '100.00', 1),
(600025, '9LB Rogue Kettlebell', '22.00', 1),
(600026, '13LB Rogue Kettlebell', '28.00', 1),
(600027, '18LB Rogue Kettlebell', '30.00', 1),
(600028, '26LB Rogue Kettlebell', '39.50', 1),
(600029, '35LB Rogue Kettlebell', '44.29', 1),
(600030, '44LB Rogue Kettlebell', '51.26', 1),
(600031, '53LB Rogue Kettlebell', '59.75', 1);

--
-- Triggers `product`
--
DELIMITER $$
CREATE TRIGGER `pound_to_lb` BEFORE INSERT ON `product` FOR EACH ROW BEGIN     
IF NEW.productName = 'pound'
THEN SET NEW.productName = 'LBS';
END IF; 
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ptAppointment`
--

CREATE TABLE `ptAppointment` (
  `appointmentNum` int(6) UNSIGNED NOT NULL,
  `clientNum` int(6) UNSIGNED NOT NULL,
  `dateAppointment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ptAppointment`
--

INSERT INTO `ptAppointment` (`appointmentNum`, `clientNum`, `dateAppointment`) VALUES
(500001, 300001, '2018-12-03 12:30:00'),
(500002, 300002, '2018-11-20 08:00:00'),
(500003, 300007, '2018-11-23 14:00:00'),
(500004, 300020, '2018-11-26 10:45:00'),
(500005, 300012, '2018-12-19 16:15:00'),
(500006, 300022, '2018-12-14 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `ptClient`
--

CREATE TABLE `ptClient` (
  `clientNum` int(6) UNSIGNED NOT NULL,
  `ptNum` int(6) UNSIGNED NOT NULL,
  `memberNum` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ptClient`
--

INSERT INTO `ptClient` (`clientNum`, `ptNum`, `memberNum`) VALUES
(300001, 200005, 1),
(300002, 200005, 4),
(300003, 200005, 6),
(300004, 200008, 7),
(300005, 200008, 9),
(300007, 200008, 13),
(300008, 200008, 15),
(300009, 200021, 16),
(300010, 200021, 18),
(300011, 200021, 20),
(300012, 200021, 21),
(300013, 200021, 23),
(300014, 200010, 5),
(300015, 200010, 8),
(300016, 200010, 10),
(300017, 200011, 12),
(300018, 200011, 14),
(300019, 200023, 17),
(300020, 200023, 19),
(300021, 200023, 22),
(300022, 200023, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ptRep`
--

CREATE TABLE `ptRep` (
  `ptNum` int(6) UNSIGNED NOT NULL,
  `firstPT` varchar(30) NOT NULL,
  `lastPT` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ptRep`
--

INSERT INTO `ptRep` (`ptNum`, `firstPT`, `lastPT`, `email`, `gender`) VALUES
(200005, 'Jordan', 'Alvey', 'JordanTC@gmail.com', 'Male'),
(200008, 'Jerry', 'David', 'JD_CF@gmail.com', 'Male'),
(200010, 'Stefanie', 'Hedrick', 'SHedrick82@gmail.com', 'Female'),
(200011, 'Elizabeth', 'Piper', 'EPiperCF@gmail.com', 'Female'),
(200021, 'Travis ', 'Jones', 'TJones91@gmail.com', 'Male'),
(200023, 'Brittany', 'Rosenbaugh', 'BritRosenbaughCF@gmail.com', 'Female');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Regular`
--
CREATE TABLE `Regular` (
`memberFirst` varchar(30)
,`memberLast` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `salesRep`
--

CREATE TABLE `salesRep` (
  `repNum` int(6) UNSIGNED NOT NULL,
  `firstRep` varchar(30) NOT NULL,
  `lastRep` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesRep`
--

INSERT INTO `salesRep` (`repNum`, `firstRep`, `lastRep`, `email`) VALUES
(100001, 'Taylor ', 'Jones', 'TCotherman93@gmail.com'),
(100002, 'Jim ', 'Hensel', 'JimmyHenselCF@gmail.com'),
(100003, 'David', 'Oaks', 'DOaks1974@gmail.com'),
(100004, 'Rick', 'Rhodenbaugh', 'RRhodenbaugh92@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorNum` int(6) UNSIGNED NOT NULL,
  `vendorName` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorNum`, `vendorName`, `email`, `phone`) VALUES
(1, 'Rogue Fitness', 'team@roguefitness.com', '614-358-6190');

-- --------------------------------------------------------

--
-- Structure for view `Advance`
--
DROP TABLE IF EXISTS `Advance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`swj1`@`localhost` SQL SECURITY DEFINER VIEW `Advance`  AS  select `member`.`memberFirst` AS `memberFirst`,`member`.`memberLast` AS `memberLast` from `member` where `member`.`membershipType` = 'Advance' ;

-- --------------------------------------------------------

--
-- Structure for view `Regular`
--
DROP TABLE IF EXISTS `Regular`;

CREATE ALGORITHM=UNDEFINED DEFINER=`swj1`@`localhost` SQL SECURITY DEFINER VIEW `Regular`  AS  select `member`.`memberFirst` AS `memberFirst`,`member`.`memberLast` AS `memberLast` from `member` where `member`.`membershipType` = 'Regular' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceNum`),
  ADD KEY `memberNum` (`memberNum`),
  ADD KEY `productNum` (`productNum`),
  ADD KEY `repNum` (`repNum`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberNum`),
  ADD KEY `membershipType` (`membershipType`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membershipType`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productNum`),
  ADD KEY `vendorNum` (`vendorNum`);

--
-- Indexes for table `ptAppointment`
--
ALTER TABLE `ptAppointment`
  ADD PRIMARY KEY (`appointmentNum`),
  ADD KEY `clientNum` (`clientNum`);

--
-- Indexes for table `ptClient`
--
ALTER TABLE `ptClient`
  ADD PRIMARY KEY (`clientNum`),
  ADD KEY `memberNum` (`memberNum`),
  ADD KEY `ptNum` (`ptNum`);

--
-- Indexes for table `ptRep`
--
ALTER TABLE `ptRep`
  ADD PRIMARY KEY (`ptNum`);

--
-- Indexes for table `salesRep`
--
ALTER TABLE `salesRep`
  ADD PRIMARY KEY (`repNum`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800013;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=600032;
--
-- AUTO_INCREMENT for table `ptAppointment`
--
ALTER TABLE `ptAppointment`
  MODIFY `appointmentNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500007;
--
-- AUTO_INCREMENT for table `ptClient`
--
ALTER TABLE `ptClient`
  MODIFY `clientNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300023;
--
-- AUTO_INCREMENT for table `ptRep`
--
ALTER TABLE `ptRep`
  MODIFY `ptNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200024;
--
-- AUTO_INCREMENT for table `salesRep`
--
ALTER TABLE `salesRep`
  MODIFY `repNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100005;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorNum` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`memberNum`) REFERENCES `member` (`memberNum`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`productNum`) REFERENCES `product` (`productNum`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`repNum`) REFERENCES `salesRep` (`repNum`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`membershipType`) REFERENCES `membership` (`membershipType`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`vendorNum`) REFERENCES `vendor` (`vendorNum`);

--
-- Constraints for table `ptAppointment`
--
ALTER TABLE `ptAppointment`
  ADD CONSTRAINT `ptAppointment_ibfk_1` FOREIGN KEY (`clientNum`) REFERENCES `ptClient` (`clientNum`);

--
-- Constraints for table `ptClient`
--
ALTER TABLE `ptClient`
  ADD CONSTRAINT `ptClient_ibfk_1` FOREIGN KEY (`memberNum`) REFERENCES `member` (`memberNum`),
  ADD CONSTRAINT `ptClient_ibfk_2` FOREIGN KEY (`ptNum`) REFERENCES `ptRep` (`ptNum`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
