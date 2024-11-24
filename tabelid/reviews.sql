-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 08:33 PM
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
-- Database: `kohvikud`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `place_id`, `review`, `rating`, `created_at`, `name`) VALUES
(4, 148, 'sdvsd', 4, '2024-11-23 15:20:40', 'bfbs'),
(5, 101, 'sdvsd', 3, '2024-11-23 15:21:03', 'sdvsd'),
(6, 101, 'd df', 4, '2024-11-23 15:22:46', 'dfbdfb'),
(9, 110, 'dfb', 1, '2024-11-23 15:27:48', 'dfb'),
(11, 101, 'asdas', 3, '2024-11-23 16:22:17', 'asdas'),
(12, 101, 'sdg', 1, '2024-11-23 16:30:56', 'dgs'),
(13, 101, 'sdf', 1, '2024-11-23 16:32:34', 'sdv'),
(14, 101, 'suht mage söök', 3, '2024-11-23 16:51:39', 'miku'),
(15, 161, 'AFBFB', 10, '2024-11-23 18:07:26', 'SEFE'),
(17, 201, 'sdvsdbsdbs', 10, '2024-11-24 17:42:39', 'sdkhvbs'),
(18, 194, 'sbsfb', 7, '2024-11-24 17:59:38', 'asfa'),
(19, 194, 'gc,', 4, '2024-11-24 18:06:05', 'gj'),
(20, 168, 'dfb', 10, '2024-11-24 18:06:27', 'dfb'),
(21, 194, 'dfb', 4, '2024-11-24 18:06:52', 'dfb'),
(22, 194, 'sdb', 3, '2024-11-24 18:07:16', 'sdb'),
(23, 168, 'dfbdf', 7, '2024-11-24 18:07:49', 'dfbdf'),
(26, 132, 'dfbdf', 10, '2024-11-24 18:13:06', 'dfbdf'),
(37, 113, 'sdf', 3, '2024-11-24 19:24:27', 'sdf'),
(39, 106, 'fdb', 3, '2024-11-24 19:26:51', 'dfb'),
(40, 106, 'dfb', 9, '2024-11-24 19:26:57', 'dfb'),
(45, 125, 'sdv', 3, '2024-11-24 19:29:27', 'dsvsd'),
(47, 129, 'dfb', 3, '2024-11-24 19:31:33', 'fbdfb'),
(48, 161, 'dfbdf', 10, '2024-11-24 19:31:37', 'dfbdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_ibfk_1` (`place_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `toidukohad` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
