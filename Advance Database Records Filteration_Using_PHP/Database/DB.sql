-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2025 at 10:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poll`
--
CREATE DATABASE IF NOT EXISTS `poll` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `poll`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sr_no` int(11) NOT NULL,
  `uniqueID` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sr_no`, `uniqueID`, `name`, `location`, `age`, `gender`) VALUES
(1, 'UID001', 'Alice Johnson', 'New York', 20, 'Female'),
(2, 'UID002', 'Bob Smith', 'Los Angeles', 22, 'Male'),
(3, 'UID003', 'Charlie Brown', 'Chicago', 19, 'Male'),
(4, 'UID004', 'Daisy Ridley', 'Houston', 21, 'Female'),
(5, 'UID005', 'Ethan Hunt', 'Phoenix', 23, 'Male'),
(6, 'UID006', 'Fiona Gallagher', 'Philadelphia', 20, 'Female'),
(7, 'UID007', 'George Clooney', 'San Antonio', 24, 'Male'),
(8, 'UID008', 'Hannah Baker', 'San Diego', 21, 'Female'),
(9, 'UID009', 'Ian Somerhalder', 'Dallas', 22, 'Male'),
(10, 'UID010', 'Jasmine Lee', 'San Jose', 20, 'Female'),
(11, 'UID011', 'Kevin Hart', 'Austin', 23, 'Male'),
(12, 'UID012', 'Laura Dern', 'Jacksonville', 21, 'Female'),
(13, 'UID013', 'Mike Ross', 'Fort Worth', 24, 'Male'),
(14, 'UID014', 'Nina Dobrev', 'Columbus', 22, 'Female'),
(15, 'UID015', 'Oscar Isaac', 'Charlotte', 25, 'Male'),
(16, 'UID016', 'Paula Patton', 'San Francisco', 20, 'Female'),
(17, 'UID017', 'Quentin Tarantino', 'Indianapolis', 23, 'Male'),
(18, 'UID018', 'Rachel Green', 'Seattle', 21, 'Female'),
(19, 'UID019', 'Steve Rogers', 'Denver', 22, 'Male'),
(20, 'UID020', 'Tina Fey', 'Washington', 24, 'Female'),
(21, 'UID021', 'Umar Farooq', 'Boston', 23, 'Male'),
(22, 'UID022', 'Vera Wang', 'El Paso', 22, 'Female'),
(23, 'UID023', 'Will Smith', 'Detroit', 21, 'Male'),
(24, 'UID024', 'Xena Warrior', 'Nashville', 20, 'Female'),
(25, 'UID025', 'Yasir Khan', 'Memphis', 24, 'Male'),
(26, 'UID026', 'Zoe Kravitz', 'Oklahoma City', 23, 'Female'),
(27, 'UID027', 'Andy Murray', 'Las Vegas', 22, 'Male'),
(28, 'UID028', 'Bella Hadid', 'Louisville', 21, 'Female'),
(29, 'UID029', 'Chris Pratt', 'Baltimore', 25, 'Male'),
(30, 'UID030', 'Demi Lovato', 'Milwaukee', 20, 'Female'),
(31, 'UID031', 'Elijah Wood', 'Albuquerque', 23, 'Male'),
(32, 'UID032', 'Freya Allan', 'Tucson', 21, 'Female'),
(33, 'UID033', 'Gavin Rossdale', 'Fresno', 22, 'Male'),
(34, 'UID034', 'Hailee Steinfeld', 'Sacramento', 20, 'Female'),
(35, 'UID035', 'Isaac Newton', 'Mesa', 24, 'Male'),
(36, 'UID036', 'Jennifer Aniston', 'Kansas City', 23, 'Female'),
(37, 'UID037', 'Kyle Chandler', 'Atlanta', 22, 'Male'),
(38, 'UID038', 'Lily Collins', 'Omaha', 21, 'Female'),
(39, 'UID039', 'Mark Ruffalo', 'Colorado Springs', 25, 'Male'),
(40, 'UID040', 'Nora Fatehi', 'Raleigh', 20, 'Female'),
(41, 'UID041', 'Owen Wilson', 'Miami', 23, 'Male'),
(42, 'UID042', 'Penelope Cruz', 'Long Beach', 22, 'Female'),
(43, 'UID043', 'Quincy Jones', 'Virginia Beach', 21, 'Male'),
(44, 'UID044', 'Rita Ora', 'Oakland', 24, 'Female'),
(45, 'UID045', 'Samuel Jackson', 'Minneapolis', 25, 'Male'),
(46, 'UID046', 'Taylor Swift', 'Tulsa', 22, 'Female'),
(47, 'UID047', 'Usher Raymond', 'Arlington', 20, 'Male'),
(48, 'UID048', 'Vanessa Hudgens', 'New Orleans', 23, 'Female'),
(49, 'UID049', 'Wade Wilson', 'Wichita', 21, 'Male'),
(50, 'UID050', 'Ximena Diaz', 'Bakersfield', 22, 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sr_no`),
  ADD UNIQUE KEY `uniqueID` (`uniqueID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
