-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 06:10 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `availabilitystatus`
--

CREATE TABLE IF NOT EXISTS `availabilitystatus` (
  `id` int(255) NOT NULL,
  `roomnumber` varchar(255) NOT NULL,
  `availabilitystatus` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availabilitystatus`
--

INSERT INTO `availabilitystatus` (`id`, `roomnumber`, `availabilitystatus`) VALUES
(1, '15', 'AVAILABLE');

-- --------------------------------------------------------

--
-- Table structure for table `checkoutdetails`
--

CREATE TABLE IF NOT EXISTS `checkoutdetails` (
  `id` int(255) NOT NULL,
  `date` date NOT NULL,
  `roomnumber` varchar(255) NOT NULL,
  `customername` varchar(255) NOT NULL,
  `customercnicpassport` varchar(255) NOT NULL,
  `customerroomrent` varchar(255) NOT NULL,
  `customerrestaurantbill` varchar(255) NOT NULL,
  `customertotalbill` varchar(255) NOT NULL,
  `customerstatus` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkoutdetails`
--

INSERT INTO `checkoutdetails` (`id`, `date`, `roomnumber`, `customername`, `customercnicpassport`, `customerroomrent`, `customerrestaurantbill`, `customertotalbill`, `customerstatus`) VALUES
(1, '2021-06-16', '32', 'Shah Islam', '61101-908880-1', 'PKR16000', 'PKR1000', 'PKR17000', 'Checkedout');

-- --------------------------------------------------------

--
-- Table structure for table `expenditures`
--

CREATE TABLE IF NOT EXISTS `expenditures` (
  `id` int(255) NOT NULL,
  `monthyear` varchar(255) NOT NULL,
  `electricitybill` varchar(255) NOT NULL,
  `gasbill` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenditures`
--

INSERT INTO `expenditures` (`id`, `monthyear`, `electricitybill`, `gasbill`) VALUES
(1, 'Jan 20', 'pkr 300000', 'pkr 200000'),
(2, 'july2021', 'PKR 600000', 'PKR 800000');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE IF NOT EXISTS `income` (
  `id` int(255) NOT NULL,
  `monthyear` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `earnings` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `monthyear`, `earnings`) VALUES
(1, 'May 20', 'pkr3200000'),
(2, 'july2021', 'PKR 800000');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(250) NOT NULL,
  `roomnumber` varchar(255) NOT NULL,
  `customername` varchar(250) NOT NULL,
  `cnicpassport` varchar(255) NOT NULL,
  `customeraddress` varchar(255) NOT NULL,
  `customerphonenumber` varchar(255) NOT NULL,
  `amount` int(10) NOT NULL,
  `vehiclenumber` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `date`, `type`, `roomnumber`, `customername`, `cnicpassport`, `customeraddress`, `customerphonenumber`, `amount`, `vehiclenumber`) VALUES
(1, '0000-00-00', 'family', '32', '', '', '', '', 9000, ''),
(2, '0000-00-00', 'deluxe', '31', '', '', '', '', 8000, ''),
(3, '0000-00-00', 'family', '29', '', '', '', '', 7000, '');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(255) NOT NULL,
  `date` date NOT NULL,
  `roomnumber` varchar(255) NOT NULL,
  `mealname` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `ordernumber` varchar(255) NOT NULL,
  `waiterservice` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `date`, `roomnumber`, `mealname`, `quantity`, `price`, `ordernumber`, `waiterservice`) VALUES
(1, '2021-06-16', '32', 'Rice,Pizza', '4', 'PKR1000', 'RYHRS0036', 'Saleem');

-- --------------------------------------------------------

--
-- Table structure for table `staffdutytimings`
--

CREATE TABLE IF NOT EXISTS `staffdutytimings` (
  `id` int(255) NOT NULL,
  `date` date NOT NULL,
  `employeeid` varchar(255) NOT NULL,
  `employeename` varchar(255) NOT NULL,
  `employeegender` varchar(255) NOT NULL,
  `employeeentrytime` varchar(255) NOT NULL,
  `employeeexittime` varchar(255) NOT NULL,
  `employeeperformeddutyhours` varchar(255) NOT NULL,
  `employeeposition` varchar(255) NOT NULL,
  `salary` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffdutytimings`
--

INSERT INTO `staffdutytimings` (`id`, `date`, `employeeid`, `employeename`, `employeegender`, `employeeentrytime`, `employeeexittime`, `employeeperformeddutyhours`, `employeeposition`, `salary`) VALUES
(1, '0000-00-00', 'RYHEM001', '', '', '', '', '', 'supervisor', 'pkr20000'),
(2, '0000-00-00', 'RYHEM002', '', '', '', '', '', 'chef', 'pkr30000'),
(3, '2021-06-24', 'ryh009', 'ali', 'male', '07:00PM', '08:00PM', '3 hr', 'Chef', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `availabilitystatus`
--
ALTER TABLE `availabilitystatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkoutdetails`
--
ALTER TABLE `checkoutdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenditures`
--
ALTER TABLE `expenditures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffdutytimings`
--
ALTER TABLE `staffdutytimings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `availabilitystatus`
--
ALTER TABLE `availabilitystatus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `checkoutdetails`
--
ALTER TABLE `checkoutdetails`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expenditures`
--
ALTER TABLE `expenditures`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staffdutytimings`
--
ALTER TABLE `staffdutytimings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
