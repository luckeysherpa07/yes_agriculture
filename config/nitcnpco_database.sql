-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2017 at 12:09 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitcnpco_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE IF NOT EXISTS `cms` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `username`, `password`) VALUES
(1, 'admin', 'cb71a830fbe85480c11f095faafcb134'),
(3, 'luckey', 'cb71a830fbe85480c11f095faafcb134');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `person_name` varchar(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `person_name`, `phone`, `email`, `username`, `password`) VALUES
(18, 'FourMb', 'Shishir Thapa', 2147483647, 'shishirthapa1@gmail.com', 'sisir', 'sisir123'),
(25, 'hari', 'hari', 223224, 'hari@gmail.com', 'hari', 'hari'),
(26, 'binod', 'binod', 234234, 'binod@kjhk.com', 'binod', 'binod');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `logo` int(11) NOT NULL,
  `logo_thumb` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `user_id`, `logo`, `logo_thumb`) VALUES
(26, 0, 0, 0),
(27, 1, 1, 1),
(28, 2, 2, 2),
(29, 3, 3, 3),
(30, 4, 4, 4),
(31, 5, 5, 5),
(32, 6, 6, 6),
(33, 7, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `post_job`
--

CREATE TABLE IF NOT EXISTS `post_job` (
  `id` int(11) NOT NULL,
  `post` varchar(20) NOT NULL,
  `no_of_person` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `job_desc` text NOT NULL,
  `deadline` date NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_job`
--

INSERT INTO `post_job` (`id`, `post`, `no_of_person`, `salary`, `duration`, `job_desc`, `deadline`, `company_id`) VALUES
(10, 'Laravel Programmer', 3, 50000, 'full time', 'should have sound knowledge of composer and other framework of php too if possible.', '2016-08-31', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_job`
--
ALTER TABLE `post_job`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `post_job`
--
ALTER TABLE `post_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
