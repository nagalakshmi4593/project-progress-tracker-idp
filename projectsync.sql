-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2024 at 07:58 AM
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
-- Database: `projectsync`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_updates`
--

CREATE TABLE `daily_updates` (
  `id` int(11) NOT NULL,
  `team_number` varchar(100) NOT NULL,
  `update_date` date NOT NULL,
  `notes` text NOT NULL,
  `screenshot` varchar(255) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `percentage_completed` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_updates`
--

INSERT INTO `daily_updates` (`id`, `team_number`, `update_date`, `notes`, `screenshot`, `created_by`, `percentage_completed`) VALUES
(1, '1', '2024-10-08', 'sai kumar did it ##', 'uploads/226b110a4d90be54fe3e6bb72e2edd7f.jpeg', 'sai', 12.00);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `team_number` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `team_leader` varchar(100) NOT NULL,
  `member1` varchar(100) DEFAULT NULL,
  `member2` varchar(100) DEFAULT NULL,
  `member3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_number`, `created_by`, `team_leader`, `member1`, `member2`, `member3`) VALUES
(1, '1', 'sai', 'sai', 'kumar', 'ravi', 'naik'),
(2, '1', 'ravi', 'sai', 'kumar', 'ravi', 'naik');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('student','faculty') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'sai', '24bq5a5417@vvit.net', '$2y$10$HSkuFrNwF7E3jIKEhQk2.eNGhbDT4.jafYAlgyKOCsKgoEjqttg3q', 'student', '2024-10-06 09:47:32'),
(2, 'sai', '24bq5a5401@vvit.net', '$2y$10$GYX/nNkBow1GbGR6sGKsN.qLO7F7arceos7HEOn7tgbVBcI5QmUZi', 'faculty', '2024-10-07 09:27:17'),
(3, 'ravi', 'prasanthiaddanki76@gmail.com', '$2y$10$qjLtLfDNzHDSReT.NiJ14uWajjjfOUMPrgVOsZLWYkSHhNVDv9qb6', 'student', '2024-10-08 05:50:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_updates`
--
ALTER TABLE `daily_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_updates`
--
ALTER TABLE `daily_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
