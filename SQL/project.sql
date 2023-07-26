-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 09:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `User_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Mobile_No` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`User_ID`, `Name`, `Mail`, `Mobile_No`, `Password`, `Status`) VALUES
(1, 'Dhana', 'dhana@gmail.com', '9047819062', 'dhana', 'Active'),
(2, 'sekar', 'sekar@gmail.com', '6547839201', 'sekar', 'Active'),
(3, 'Nava', 'nava@email.com', '987654321', 'qwerty', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `ID` int(11) NOT NULL,
  `Train_ID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `No_of_Seats` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`ID`, `Train_ID`, `Customer_ID`, `No_of_Seats`, `Status`) VALUES
(1, 3, 2, 490, 'Active'),
(2, 3, 1, 487, 'Active'),
(3, 3, 2, 480, 'Active'),
(4, 1, 2, 45, 'Active'),
(5, 1, 2, 40, 'Active'),
(6, 3, 2, 475, 'Active'),
(7, 3, 2, 474, 'Active'),
(8, 3, 2, 473, 'Active'),
(9, 3, 2, 472, 'Active'),
(10, 3, 2, 471, 'Active'),
(11, 3, 2, 470, 'Active'),
(12, 1, 3, 39, 'Active'),
(13, 4, 2, 99, 'Active'),
(14, 4, 2, 98, 'Active'),
(15, 4, 2, 97, 'Active'),
(16, 1, 2, 38, 'Active'),
(17, 4, 2, 970, 'Active'),
(18, 1, 2, 36, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `User_ID` int(11) NOT NULL,
  `Train_Name` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Departure_Time` time(6) NOT NULL,
  `Arrival_Time` time(6) NOT NULL,
  `Seats` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`User_ID`, `Train_Name`, `Source`, `Destination`, `Date`, `Departure_Time`, `Arrival_Time`, `Seats`, `Price`, `Status`) VALUES
(1, 'Vaighai Exp', 'Chennai', 'Pudukkottai', '2023-01-27', '09:00:00.000000', '01:00:00.000000', 36, 100, 'Active'),
(3, 'Podhigai Exp', 'Delhi', 'Chennai', '2023-07-25', '09:00:00.000000', '11:00:00.000000', 470, 500, 'Active'),
(4, 'Chengalpatt Exp', 'Chennai', 'Madurai', '2023-01-11', '06:00:00.000000', '23:00:00.000000', 970, 50, 'Active'),
(5, 'Yamuna Exp', 'Bangalore', 'Kanniyakumari', '2023-07-12', '05:30:00.000000', '09:30:00.000000', 100, 35, 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
