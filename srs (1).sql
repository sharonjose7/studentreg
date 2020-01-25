-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2020 at 11:50 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Username`, `Password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Courseid` int(11) NOT NULL,
  `Coursename` varchar(20) NOT NULL,
  `Deptname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Courseid`, `Coursename`, `Deptname`) VALUES
(1, '', 'Computer Science'),
(2, 'Machine Learning', 'Computer Science'),
(3, 'Diploma', 'ITI'),
(4, 'BTECH', 'CSE'),
(5, 'BTECH', 'EEE'),
(6, 'BTECH', 'CE');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Resid` int(11) NOT NULL,
  `RegisterNo` varchar(20) NOT NULL,
  `Sid` int(11) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Result` varchar(20) NOT NULL,
  `Credits` varchar(20) NOT NULL,
  `TotalGPA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Resid`, `RegisterNo`, `Sid`, `Course`, `Name`, `Subject`, `Result`, `Credits`, `TotalGPA`) VALUES
(1, '2345', 1, 'Btech', 'Sarah', 'DAA', 'Pass', '9', '90'),
(2, '125467', 2, 'BTECH', 'Fami', 'DAA', 'Pass', '9', '9');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Sid` int(11) NOT NULL,
  `RegisterNo` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Mobile` bigint(20) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `SemesterNo` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Sid`, `RegisterNo`, `Name`, `Mobile`, `Department`, `Course`, `Email`, `SemesterNo`, `Year`, `Username`, `Password`) VALUES
(1, 2345, 'Sarah', 9847382147, 'CSE', 'BTech', 'sarah@gmail.com', 1, 2020, 'Sarah', 'sarah12345'),
(2, 125467, 'Fami', 9605592801, 'CSE', 'BTECH', 'fami@gmail.com', 1, 2019, 'fami@70', 'fami@70'),
(6, 1111, 'Anupama', 765432190, 'CSE', 'BTECH', 'anu123@gmail.com', 2, 2019, 'anu', 'anu12345'),
(7, 9087, 'Bini', 7908009874, 'EEE', 'BTECH', 'bini@gmail.com', 5, 2014, 'Bini', 'bini123'),
(8, 6709, 'Shilpa', 7998654301, 'EEE', 'BTECH', 'shalu@gmail.com', 5, 2014, 'shilpa', 'shilpaj'),
(9, 4123, 'Meera', 7654789213, 'CE', 'BTECH', 'meera@gmail.com', 6, 2019, 'meera', 'meera123'),
(10, 2365, 'Sanit', 8086873890, 'CE', 'Btech', 'sanit@gmail.com', 7, 2020, 'sanit', 'sanit');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subjectid` int(11) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Subjectname` varchar(20) NOT NULL,
  `Subjectcode` varchar(20) NOT NULL,
  `Semester` varchar(20) NOT NULL,
  `Credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subjectid`, `Course`, `Department`, `Subjectname`, `Subjectcode`, `Semester`, `Credits`) VALUES
(1, 'Btech', 'EEE', 'Electrical Circuit', 'E101', 'S1', 5),
(2, 'Btech', 'CSE', 'Maths', 'R101', 'S1', 5),
(3, 'BCA', 'Computer science', 'FCP', 'b505', 's2', 4);

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`id`, `Username`, `Password`) VALUES
(1, 'superadmin', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `Timetableid` int(11) NOT NULL,
  `Day` varchar(20) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Adminid` int(11) NOT NULL,
  `SemesterNo` varchar(20) NOT NULL,
  `Hour1` varchar(20) NOT NULL,
  `Hour2` varchar(20) NOT NULL,
  `Hour3` varchar(20) NOT NULL,
  `Hour4` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`Timetableid`, `Day`, `Department`, `Adminid`, `SemesterNo`, `Hour1`, `Hour2`, `Hour3`, `Hour4`) VALUES
(1, 'Monday', 'CSE', 1, '1', ' BME', 'BEE', 'Physics', 'Chemistry'),
(2, 'Tuesday', 'Cse', 1, '1', ' Maths', 'Chemistry', 'FCP', 'Maths'),
(3, 'Wednesday', 'CSE', 1, '1', ' Python', 'BEC', 'Maths', 'Chemistry'),
(4, 'Thursday', 'CSE', 1, '1', 'BEE', 'ME', 'DAA', 'PHYSICS'),
(5, 'Friday', 'CSE', 1, '1', 'DAA', 'DSA', 'Humanities', 'Java');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Courseid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`Resid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Sid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subjectid`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`Timetableid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `Resid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Subjectid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `Timetableid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
