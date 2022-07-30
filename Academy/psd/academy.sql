-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2019 at 12:25 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `account1`
--

CREATE TABLE IF NOT EXISTS `account1` (
`SerialNo` int(11) NOT NULL,
  `AdmissionNumber` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `OtherNames` varchar(50) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `Type` text,
  `TransactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account2`
--

CREATE TABLE IF NOT EXISTS `account2` (
`SerialNo` int(11) NOT NULL,
  `AdmissionNumber` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `OtherNames` varchar(50) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `Type` text,
  `TransactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account3`
--

CREATE TABLE IF NOT EXISTS `account3` (
`SerialNo` int(11) NOT NULL,
  `AdmissionNumber` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `OtherNames` varchar(50) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `Type` text,
  `TransactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE IF NOT EXISTS `admin_info` (
`ID` int(11) NOT NULL,
  `classes` text NOT NULL,
  `houses` text NOT NULL,
  `reg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `burs_info`
--

CREATE TABLE IF NOT EXISTS `burs_info` (
`ID` int(11) NOT NULL,
  `payment` text NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
`ID` int(11) NOT NULL,
  `classes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE IF NOT EXISTS `domains` (
`ID` int(11) NOT NULL,
  `domain` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
`ID` int(11) NOT NULL,
  `grade` text NOT NULL,
  `score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_exams`
--

CREATE TABLE IF NOT EXISTS `info_exams` (
`ID` int(11) NOT NULL,
  `reportsheet` text NOT NULL,
  `caexams` text NOT NULL,
  `psycho` text NOT NULL,
  `numca` int(11) NOT NULL,
  `phone` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_sch`
--

CREATE TABLE IF NOT EXISTS `info_sch` (
`ID` int(11) NOT NULL,
  `logo` blob NOT NULL,
  `school` text NOT NULL,
  `address` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
`SerialNo` int(11) NOT NULL,
  `Passport` blob NOT NULL,
  `AdmissionNumber` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `OtherNames` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `LGA` varchar(50) NOT NULL,
  `Class` varchar(50) NOT NULL,
  `House` varchar(50) NOT NULL,
  `Type` text,
  `Parent_Guardian` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
`ID` int(11) NOT NULL,
  `subject` text NOT NULL,
  `abbreviation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_form`
--

CREATE TABLE IF NOT EXISTS `users_form` (
`ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `status` text NOT NULL,
  `password1` text NOT NULL,
  `password2` text NOT NULL,
  `classes` text NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_sub`
--

CREATE TABLE IF NOT EXISTS `users_sub` (
`ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `status` text NOT NULL,
  `password1` text NOT NULL,
  `password2` text NOT NULL,
  `classes` text NOT NULL,
  `subject` text NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account1`
--
ALTER TABLE `account1`
 ADD UNIQUE KEY `SerialNo` (`SerialNo`), ADD UNIQUE KEY `AdmissionNumber` (`AdmissionNumber`), ADD UNIQUE KEY `Surname` (`Surname`), ADD UNIQUE KEY `FirstName` (`FirstName`), ADD UNIQUE KEY `OtherNames` (`OtherNames`);

--
-- Indexes for table `account2`
--
ALTER TABLE `account2`
 ADD UNIQUE KEY `SerialNo` (`SerialNo`), ADD UNIQUE KEY `AdmissionNumber` (`AdmissionNumber`), ADD UNIQUE KEY `Surname` (`Surname`), ADD UNIQUE KEY `FirstName` (`FirstName`), ADD UNIQUE KEY `OtherNames` (`OtherNames`);

--
-- Indexes for table `account3`
--
ALTER TABLE `account3`
 ADD UNIQUE KEY `SerialNo` (`SerialNo`), ADD UNIQUE KEY `AdmissionNumber` (`AdmissionNumber`), ADD UNIQUE KEY `Surname` (`Surname`), ADD UNIQUE KEY `FirstName` (`FirstName`), ADD UNIQUE KEY `OtherNames` (`OtherNames`);

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `burs_info`
--
ALTER TABLE `burs_info`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `info_exams`
--
ALTER TABLE `info_exams`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `info_sch`
--
ALTER TABLE `info_sch`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`SerialNo`), ADD UNIQUE KEY `AdmissionNumber` (`AdmissionNumber`), ADD UNIQUE KEY `Surname` (`Surname`), ADD UNIQUE KEY `FirstName` (`FirstName`), ADD UNIQUE KEY `OtherNames` (`OtherNames`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users_form`
--
ALTER TABLE `users_form`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users_sub`
--
ALTER TABLE `users_sub`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account1`
--
ALTER TABLE `account1`
MODIFY `SerialNo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account2`
--
ALTER TABLE `account2`
MODIFY `SerialNo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account3`
--
ALTER TABLE `account3`
MODIFY `SerialNo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `burs_info`
--
ALTER TABLE `burs_info`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info_exams`
--
ALTER TABLE `info_exams`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info_sch`
--
ALTER TABLE `info_sch`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
MODIFY `SerialNo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_form`
--
ALTER TABLE `users_form`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_sub`
--
ALTER TABLE `users_sub`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
