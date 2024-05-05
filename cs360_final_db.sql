-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 05, 2024 at 11:16 AM
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
-- Database: `cs360_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `closure_solution`
--

CREATE TABLE `closure_solution` (
  `ATTR` varchar(20) NOT NULL,
  `CLOSURE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elim_candidates`
--

CREATE TABLE `elim_candidates` (
  `CANDIDATES` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elim_tree`
--

CREATE TABLE `elim_tree` (
  `ID` varchar(20) NOT NULL,
  `ATTR` varchar(20) NOT NULL,
  `PARENT` varchar(20) DEFAULT NULL,
  `JUST` int(10) DEFAULT NULL,
  `LEAF` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inputfds`
--

CREATE TABLE `inputfds` (
  `fd_id` bigint(20) NOT NULL,
  `FD_LEFT` varchar(20) NOT NULL,
  `FD_RIGHT` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `k_sets`
--

CREATE TABLE `k_sets` (
  `SET_TYPE` set('K+','K?','K-') NOT NULL,
  `ORIGIN` set('STUDENT','REAL') NOT NULL,
  `ATTR` varchar(20) NOT NULL,
  `JUST` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relation_scheme`
--

CREATE TABLE `relation_scheme` (
  `R_SCHEME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_steps`
--

CREATE TABLE `student_steps` (
  `STEP_ID` bigint(20) NOT NULL,
  `FD_LEFT` varchar(20) NOT NULL,
  `FD_RIGHT` varchar(20) NOT NULL,
  `FD_USED` bigint(20) NOT NULL,
  `NEXT` set('CONTINUE','DONE','NON','CANDIDATE','SUPER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inputfds`
--
ALTER TABLE `inputfds`
  ADD PRIMARY KEY (`fd_id`);

--
-- Indexes for table `student_steps`
--
ALTER TABLE `student_steps`
  ADD PRIMARY KEY (`STEP_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inputfds`
--
ALTER TABLE `inputfds`
  MODIFY `fd_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_steps`
--
ALTER TABLE `student_steps`
  MODIFY `STEP_ID` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
