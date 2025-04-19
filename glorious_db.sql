-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2025 at 03:28 PM
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
-- Database: `glorious_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `game_name` varchar(100) NOT NULL,
  `price` decimal(15,3) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `game_name`, `price`, `image`) VALUES
(4, 'Weekly diamond pass', 26.999, 'Mobile Legends_ Bang Bang.jpg'),
(5, '2x Weekly diamond pass', 53.998, 'Mobile Legends_ Bang Bang.jpg'),
(6, '3x Weekly diamond pass', 80.997, 'Mobile Legends_ Bang Bang.jpg'),
(7, '4x Weekly diamond pass', 107.000, 'Mobile Legends_ Bang Bang.jpg'),
(8, '56 (51+5) Diamonds', 15.000, 'Mobile Legends_ Bang Bang.jpg'),
(9, '70 (64+6) Diamonds', 19.000, 'Mobile Legends_ Bang Bang.jpg'),
(10, '84 (76+8) Diamonds', 22.000, 'Mobile Legends_ Bang Bang.jpg'),
(11, '92 (84+8) Diamonds', 24.000, 'Mobile Legends_ Bang Bang.jpg'),
(12, '100 (91+9) Diamonds', 27.000, 'Mobile Legends_ Bang Bang.jpg'),
(13, 'Paket Upgrade RP Global', 162.000, 'Download PUBG and TikTok using a VPN….jpg'),
(14, 'Paket Upgrade Elite RP Global', 439.000, 'Download PUBG and TikTok using a VPN….jpg'),
(15, 'Weekly Deal Pack 1 Indo', 10.000, 'Download PUBG and TikTok using a VPN….jpg'),
(16, 'Weekly Deal Pack 2 Indo', 37.000, 'Download PUBG and TikTok using a VPN….jpg'),
(17, '60 UC Indo', 14.000, 'Download PUBG and TikTok using a VPN….jpg'),
(18, '120 UC Indo', 28.000, 'Download PUBG and TikTok using a VPN….jpg'),
(19, '180 UC Indo', 43.000, 'Download PUBG and TikTok using a VPN….jpg'),
(20, '240 UC Indo', 57.000, 'Download PUBG and TikTok using a VPN….jpg'),
(21, 'Weekly Card', 12.000, 'Post from Animes shorts.jpg'),
(22, 'Weekly Card Plus', 38.000, 'Post from Animes shorts.jpg'),
(23, '23 Tokens', 3.000, 'Post from Animes shorts.jpg'),
(24, '80+8 Tokens', 12.000, 'Post from Animes shorts.jpg'),
(25, '240+17 Tokens', 38.000, 'Post from Animes shorts.jpg'),
(26, '400+32 Tokens', 66.000, 'Post from Animes shorts.jpg'),
(27, '800+95 Tokens', 126.000, 'Post from Animes shorts.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `game_type` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `wa_number` varchar(20) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_proof` varchar(255) NOT NULL,
  `status` enum('pending','success') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
