-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2021 at 09:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sandbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `type_books_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `type_books_id`, `name`, `createdAt`, `updatedAt`) VALUES
(6, 1, 'Jika kamu menjadi tanda tambah', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(7, 2, 'Beruang kutub dan panda', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(8, 3, 'Hantu Digoel; Politik Pengamanan Politik Zaman Kolonial', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(9, 4, 'Islam Agama ramah perempuan; Pembelaan kiai pesantren', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(10, 5, 'buku pintar pengetahuan umum', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(12, 1, 'Semangat berlajar fullstack dev', '2021-04-03 06:52:59', '2021-04-03 06:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `books_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `order_at` datetime NOT NULL DEFAULT current_timestamp(),
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `books_id`, `qty`, `order_at`, `createdAt`, `updatedAt`) VALUES
(1, 11, 6, 10, '2021-04-02 14:26:29', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(2, 14, 6, 13, '2021-04-02 14:26:29', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(3, NULL, 7, 10, '2021-04-03 07:03:52', '2021-04-03 07:03:52', '2021-04-03 07:03:52'),
(4, NULL, 7, 13, '2021-04-03 07:03:52', '2021-04-03 07:03:52', '2021-04-03 07:03:52'),
(5, NULL, 6, 10, '2021-04-03 07:03:52', '2021-04-03 07:03:52', '2021-04-03 07:03:52'),
(6, NULL, 6, 13, '2021-04-03 07:03:52', '2021-04-03 07:03:52', '2021-04-03 07:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210402125017-create-users.js'),
('20210402132945-create-orders.js'),
('20210402134018-create-books.js'),
('20210402134039-create-type-books.js');

-- --------------------------------------------------------

--
-- Table structure for table `type_books`
--

CREATE TABLE `type_books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type_books`
--

INSERT INTO `type_books` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Premium', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(2, 'Biografi', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(3, 'Dongeng', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(4, 'Komik', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(5, 'Ensiklopedia', '2021-04-02 14:26:29', '2021-04-02 14:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phone`, `gender`, `createdAt`, `updatedAt`) VALUES
(11, 'Alexa', '7603 Spinka Garden Apt. 450\nNew Jennyfermouth, WA 83169', '(083)161-162', 'M', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(12, 'Ricis', '32722 Era Locks\nPaytonfort, MT 72145-1144', '+90(5)840352', 'F', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(13, 'Alamanda', '42481 Botsford Crescent\nStarkburgh, MO 40960-0210', '+22(5)752837', 'F', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(14, 'Shovia', '9696 Elvie Street Apt. 319\nSouth Alexys, TN 60636', '605-874-5803', 'F', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(15, 'Rendra', '9206 Keeling Trace\nNew Presleyview, MI 28476-3335', '1-427-736-16', 'M', '2021-04-02 14:26:29', '2021-04-02 14:26:29'),
(16, 'Ghany Abdillah Ersa', 'depok ya gaes', '082164028264', 'M', '2021-04-03 00:01:24', '2021-04-03 00:01:24'),
(19, 'Ghany Abdillah ', 'depok ya gaes budu', '082164028277', 'M', '2021-04-03 00:12:46', '2021-04-03 03:04:38'),
(25, NULL, NULL, NULL, NULL, '2021-04-03 01:40:30', '2021-04-03 01:40:30'),
(33, 'Ghany Abdillah Baru', 'depok ya gaes budu', '082164028260', 'M', '2021-04-03 02:00:53', '2021-04-03 02:00:53'),
(37, 'Ghany Abdillah New', 'depok ya gaes budu', '082164028268', 'M', '2021-04-03 02:48:00', '2021-04-03 02:48:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `type_books`
--
ALTER TABLE `type_books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type_books`
--
ALTER TABLE `type_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
