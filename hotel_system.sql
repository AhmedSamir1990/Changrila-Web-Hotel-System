-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 10:01 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `ID` int(11) NOT NULL,
  `Guest_First_Name` text NOT NULL,
  `Guest_Last_Name` text NOT NULL,
  `Guest_Family_Name` text NOT NULL,
  `Guest_Nationality` text NOT NULL,
  `Guest_Age` int(11) NOT NULL,
  `Guest_Passport` bigint(20) NOT NULL,
  `Guest_PhoneNumber` int(11) NOT NULL,
  `Guest_ArrivedFrom` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`ID`, `Guest_First_Name`, `Guest_Last_Name`, `Guest_Family_Name`, `Guest_Nationality`, `Guest_Age`, `Guest_Passport`, `Guest_PhoneNumber`, `Guest_ArrivedFrom`) VALUES
(17, 'Mark', 'Nabil ', 'Mehanni', 'Sudanesse', 22, 321654987, 1111907972, 'Sudan'),
(19, 'fairuz', 'ahmed', 'soufy', 'egy', 20, 984732, 1120714288, 'cai'),
(20, '', '', '', '', 0, 0, 0, ''),
(21, 'mark', 'nabil', 'jh', 'jkhj', 12, 12321320, 19283746, 'sudan'),
(22, 'AHmed', 'Sami', 'Samir', 'egyptian', 21, 1234567, 1001578476, 'cairo');

-- --------------------------------------------------------

--
-- Table structure for table `o_rooms`
--

CREATE TABLE `o_rooms` (
  `id` int(11) NOT NULL,
  `room_Id` int(11) NOT NULL,
  `guest_passport_Id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `Guest_ArrivalTime` time NOT NULL,
  `Guest_DepartureTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `o_rooms`
--

INSERT INTO `o_rooms` (`id`, `room_Id`, `guest_passport_Id`, `check_in`, `check_out`, `Guest_ArrivalTime`, `Guest_DepartureTime`) VALUES
(4, 1, 321654987, '2019-08-14', '2019-08-20', '17:55:00', '17:55:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `ID` int(11) NOT NULL,
  `FreindlyName` varchar(50) NOT NULL,
  `Linkaddress` varchar(50) NOT NULL,
  `HTML` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`ID`, `FreindlyName`, `Linkaddress`, `HTML`) VALUES
(1, 'Control User Types', 'Control_UTypes.php', ''),
(2, 'Control Users', 'Control_Users.php', ''),
(3, 'Add Course', 'AddCourse.php', '');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `ID` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `SSN` int(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Mobile` text NOT NULL,
  `UserType_id` int(11) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`ID`, `FullName`, `SSN`, `Email`, `DOB`, `Password`, `Mobile`, `UserType_id`, `image`) VALUES
(14, 'Fairuz Soufy', 2147483647, 'fairuz@gmail.com', '2020-05-01', '111111', '01033333333', 2, ''),
(17, 'Sara Hassan', 2147483647, 'sara@gmail.com', '2020-05-02', '111111', '01033333433', 1, ''),
(18, 'Omar Ehab', 2147483647, 'omar@gmail.com', '2020-05-02', '111111', '01180985366', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `guestname` text NOT NULL,
  `roomno` int(11) NOT NULL,
  `Doc` date NOT NULL,
  `for` int(11) NOT NULL,
  `restr` int(11) NOT NULL,
  `roomr` int(11) NOT NULL,
  `cleanr` int(11) NOT NULL,
  `servicer` int(11) NOT NULL,
  `staffr` int(11) NOT NULL,
  `attituder` int(11) NOT NULL,
  `expr` int(11) NOT NULL,
  `finalc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `guestname`, `roomno`, `Doc`, `for`, `restr`, `roomr`, `cleanr`, `servicer`, `staffr`, `attituder`, `expr`, `finalc`) VALUES
(1, 'sara', 4, '2019-07-01', 5, 5, 5, 1, 1, 1, 1, 1, '45785'),
(2, 'sara', 4, '2019-07-01', 5, 5, 5, 1, 1, 1, 1, 1, '45785'),
(3, 'moh', 78, '2005-11-07', 5, 5, 5, 5, 5, 5, 5, 5, 'non'),
(4, '', 201, '2019-08-13', 5, 5, 5, 5, 5, 5, 5, 5, ''),
(5, '', 222, '2019-08-21', 4, 4, 4, 4, 4, 4, 4, 4, ''),
(6, 'amr', 100, '2019-08-09', 3, 3, 3, 3, 3, 3, 3, 3, ''),
(7, 'ii', 22, '2019-08-14', 2, 2, 2, 2, 2, 2, 2, 2, 'ioi'),
(8, 'yousra', 300, '0000-00-00', 1, 1, 1, 1, 1, 1, 1, 1, 'complain');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `extra_bed` text NOT NULL,
  `sea_view` text NOT NULL,
  `pool_view` text NOT NULL,
  `room_breakfast` text NOT NULL,
  `alchol` text NOT NULL,
  `ground_floor_room` text NOT NULL,
  `additional_request` text NOT NULL,
  `confirm` tinyint(1) NOT NULL,
  `seen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `name`, `extra_bed`, `sea_view`, `pool_view`, `room_breakfast`, `alchol`, `ground_floor_room`, `additional_request`, `confirm`, `seen`) VALUES
(1, 'alaa', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'yes', 1, 1),
(2, 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 0, 0),
(3, 'ddd', 'no', 'no', 'no', 'no', 'no', 'no', 'dd', 0, 0),
(4, 'mohamed ala', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'nooo', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `is_occupied` tinyint(1) NOT NULL,
  `room_number` int(11) NOT NULL,
  `room_view` text NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `room_type_id`, `price`, `is_occupied`, `room_number`, `room_view`, `is_deleted`) VALUES
(1, 1, 900, 0, 100, 'Beach', 0),
(2, 700, 3, 0, 58, 'Garden', 0),
(3, 3, 7080, 0, 1901, 'Garden', 0),
(4, 1, 120, 0, 121, 'Pool', 0),
(5, 1, 96, 0, 10, 'Pool', 0),
(6, 1, 960, 1, 11, 'Pool', 0),
(7, 1, 500, 0, 1288, 'Pool', 0),
(8, 4, 500, 0, 900, 'Pool', 0),
(9, 1, 200, 0, 300, 'Pool', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roomtypes`
--

CREATE TABLE `roomtypes` (
  `id` int(11) NOT NULL,
  `room_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomtypes`
--

INSERT INTO `roomtypes` (`id`, `room_type`) VALUES
(1, 'Single'),
(2, 'Double'),
(3, 'Triple'),
(4, 'Suite'),
(5, 'Master Suite'),
(6, 'King'),
(7, 'Queen');

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertypes`
--

INSERT INTO `usertypes` (`ID`, `Name`) VALUES
(1, 'Admin'),
(2, 'Guest'),
(3, 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `usertype_pages`
--

CREATE TABLE `usertype_pages` (
  `ID` int(11) NOT NULL,
  `UserTypeID` int(11) NOT NULL,
  `PageID` int(11) NOT NULL,
  `ordervalue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype_pages`
--

INSERT INTO `usertype_pages` (`ID`, `UserTypeID`, `PageID`, `ordervalue`) VALUES
(8, 1, 3, 1),
(9, 2, 1, 1),
(10, 2, 2, 2),
(11, 3, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Guest_Passport_2` (`Guest_Passport`),
  ADD KEY `Guest_Passport` (`Guest_Passport`);

--
-- Indexes for table `o_rooms`
--
ALTER TABLE `o_rooms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `room_Id` (`room_Id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserType_id` (`UserType_id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomtypes`
--
ALTER TABLE `roomtypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Id_2` (`id`),
  ADD KEY `Id` (`id`);

--
-- Indexes for table `usertypes`
--
ALTER TABLE `usertypes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `usertype_pages`
--
ALTER TABLE `usertype_pages`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserTypeID` (`UserTypeID`),
  ADD KEY `PageID` (`PageID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `o_rooms`
--
ALTER TABLE `o_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roomtypes`
--
ALTER TABLE `roomtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usertypes`
--
ALTER TABLE `usertypes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usertype_pages`
--
ALTER TABLE `usertype_pages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `o_rooms`
--
ALTER TABLE `o_rooms`
  ADD CONSTRAINT `o_rooms_ibfk_1` FOREIGN KEY (`room_Id`) REFERENCES `room` (`id`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`UserType_id`) REFERENCES `usertypes` (`ID`);

--
-- Constraints for table `usertype_pages`
--
ALTER TABLE `usertype_pages`
  ADD CONSTRAINT `usertype_pages_ibfk_1` FOREIGN KEY (`PageID`) REFERENCES `pages` (`ID`),
  ADD CONSTRAINT `usertype_pages_ibfk_2` FOREIGN KEY (`UserTypeID`) REFERENCES `usertypes` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
