-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2021 at 07:23 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fromm` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `too` varchar(255) NOT NULL,
  `cTime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `fromm`, `phone`, `message`, `too`, `cTime`) VALUES
(1, 'Benson Karue', '4066', '0725667841', 'I want to see you tomorrow', '7854uiplk87dadkl87', '1554916571'),
(2, 'Doctor', '7854uiplk87dadkl87', '0725895256', 'OKay no problem I will be available', '4066', '1554917369'),
(3, 'patient 1', '4066', '0725667841', 'hjhkhjk', 'dd69920006c75a4f5b0166e37b1da51b', '1618067522');

-- --------------------------------------------------------

--
-- Table structure for table `hiv`
--

CREATE TABLE `hiv` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `moc` varchar(255) NOT NULL,
  `dComments` text NOT NULL,
  `cTime` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hiv`
--

INSERT INTO `hiv` (`id`, `name`, `age`, `location`, `moc`, `dComments`, `cTime`, `token`) VALUES
(1, 'Francis Kamau', '30', 'Muranga Township Ward', 'Blood Transfusion', 'This what it happened', '1554814784', 'e5f5f3afdfab4b6a11a3aed3932eee20');

-- --------------------------------------------------------

--
-- Table structure for table `outbreaks`
--

CREATE TABLE `outbreaks` (
  `id` int(11) NOT NULL,
  `outBreak` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `cTime` varchar(255) NOT NULL,
  `measures` text NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outbreaks`
--

INSERT INTO `outbreaks` (`id`, `outBreak`, `comments`, `location`, `cTime`, `measures`, `token`) VALUES
(1, 'Tb', 'There is a serious problem', 'ward 3', '1554913667', 'testing', 'f946c63a3187a5059ac6eed1fc82c1e4');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dateOfBirth` varchar(255) NOT NULL,
  `cTime` varchar(255) NOT NULL,
  `diagnosis` text NOT NULL,
  `prescription` text NOT NULL,
  `token` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `pcondition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `location`, `age`, `gender`, `phone`, `dateOfBirth`, `cTime`, `diagnosis`, `prescription`, `token`, `doctor`, `number`, `pcondition`) VALUES
(2, 'patient 1', 'Dhaka', '40', 'Female', '0725667841', '04 - 04 - 1979', '1554756586', 'Headache\r<br />Vomiting\r<br />Neusea', 'C/h4 x3\r<br />Cs4/w\r<br />CQ-WS', 'c760e767719b5196ce99cb0ed4b29c63', '7854uiplk87dadkl87', '4066', NULL),
(3, 'patient 2', 'Dhaka', '40', 'Male', '0713345678', '01 - 01 - 1979', '1554817535', 'Vomiting\r<br />Coughing\r<br />Others', 'i9\r<br />op09jk\r<br />kjdkfa', '6dc616e76193284f5078080b97067e30', '7854uiplk87dadkl87', '1234', NULL),
(4, 'patient 3', 'Dhaka', '40', 'Male', '0725667841', '04 - 04 - 1979', '1554903224', 'sdfafadf', 'dfada', 'aada38f92af7dabbe949bb03c2c995d1', '7854uiplk87dadkl87', '4066', 'Outpatient');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `secondName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `secondName`, `email`, `password`, `token`, `status`, `phone`, `profile`, `gender`, `role`) VALUES
(1, 'Salman', 'Mosta', 'admin@gmail.com', '12345', '1236548lpoik58965', 1, '01521334313', NULL, 'Male', NULL),
(2, 'Dr.abc', 'abc', 'abc@gmail.com', '12345', '7854uiplk87dadkl87', 2, '01521334313', NULL, 'Female', 'Surgeon'),
(4, 'Dr.atik', 'rahman', 'atik@gmail.com', '12345', 'dd69920006c75a4f5b0166e37b1da51b', 2, '01521334313', NULL, 'Male', 'Clinical Officer'),
(5, 'doc', 'doc', 'doc@gmail.com', '12345', 'dd69920006c75a4f5b0166e37b1da51b', 2, '01521334313', NULL, 'Male', 'Clinical Officer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hiv`
--
ALTER TABLE `hiv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbreaks`
--
ALTER TABLE `outbreaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hiv`
--
ALTER TABLE `hiv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `outbreaks`
--
ALTER TABLE `outbreaks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
