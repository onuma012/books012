-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2020 at 05:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `typebooks_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `price`, `typebooks_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'การ์ตูน naroto', '200.00', 2, 'nopic.png', '2020-03-03 14:51:02', '2020-03-26 14:51:02'),
(2, 'สามก๊ก', '300.00', 1, 'nopic.png', '2020-03-05 14:51:02', '2020-03-05 14:51:02'),
(3, 'บัญชีเบื้องต้น', '500.00', 4, 'nopic.png', '2020-03-24 14:52:19', '2020-03-31 14:52:19'),
(5, 'รักนะจุ๊บๆ', '20.00', 2, 't2fGRxkGA7.png', '2020-03-03 16:38:33', '2020-03-03 16:38:33'),
(6, 'อรอุมา', '100.00', 2, 'bqneRjZTxn.png', '2020-03-03 16:39:27', '2020-03-03 16:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2020_03_03_205354_create_typebooks_table', 1),
(8, '2020_03_03_205423_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `typebooks`
--

CREATE TABLE `typebooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typebooks`
--

INSERT INTO `typebooks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'นวนิยาย', '2020-03-02 14:15:28', '2020-03-03 14:15:28'),
(2, 'การ์ตูน', '2020-03-02 14:15:28', '2020-03-03 14:15:28'),
(3, 'ทำอาหาร', '2020-03-02 14:15:28', '2020-03-03 14:15:28'),
(4, 'บัญชี', '2020-03-02 14:15:28', '2020-03-03 14:15:28'),
(5, 'คอมพิวเตอร์', '2020-03-02 14:15:28', '2020-03-03 14:15:28'),
(8, 'สุขภาพ', '2020-03-04 14:46:36', '2020-03-05 14:46:36'),
(9, 'ความงาม', '2020-03-09 14:46:36', '2020-03-25 14:46:36'),
(10, 'DIY', '2020-03-26 14:46:36', '2020-03-15 14:46:36'),
(11, 'วิทยาศาสตร์', '2020-03-25 14:46:36', '2020-03-26 14:46:36'),
(12, 'รถยนต์', '2020-03-17 14:46:36', '2020-03-24 14:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Onuma Ritngam', 'nuchnum65@gmail.com', NULL, '$2y$10$BpSNmRWiU3jhoSUk05/AvO/dmA3G8o3JIpBqSwRbwS8nvAhvBU/IW', NULL, '2020-03-03 14:10:45', '2020-03-03 14:10:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_typebooks_id_foreign` (`typebooks_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `typebooks`
--
ALTER TABLE `typebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `typebooks`
--
ALTER TABLE `typebooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_typebooks_id_foreign` FOREIGN KEY (`typebooks_id`) REFERENCES `typebooks` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
