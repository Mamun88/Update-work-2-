-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2019 at 01:55 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Clothes', NULL, NULL),
(2, 'Electronics', NULL, NULL),
(3, 'Mobail', NULL, NULL),
(4, 'Motor Baiek', NULL, NULL),
(5, 'shop', NULL, NULL),
(6, 'T-Shirt', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_07_13_144704_create_products_table', 2),
(9, '2019_09_07_103009_create_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_summary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `alert_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'noimage.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `product_summary`, `product_description`, `product_price`, `product_quantity`, `alert_quantity`, `product_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'alixpress fashion house', 1, 'will be Found here very first. If You Come To Search F Result 2019 Publish Date', 'will be Found here very first. If You Come To Search F Result 2019 Publish Date', 4775, 50, '5', 'noimage.png', '2019-08-24 02:15:44', '2019-09-04 23:15:46', '2019-09-04 23:15:46'),
(4, 'daraz fashion', 2, 'will be Found here very first. If You Come To Search F Result 2019', 'will be Found here very first. If You Come To Search F Result 2019', 22675, 50, '5', 'noimage.png', '2019-08-24 02:23:41', '2019-09-07 21:27:15', '2019-09-07 21:27:15'),
(5, 'daraz fashion', 3, 'will be Found here very first. If You Come To Search F Result 2019 Publish Date', 'will be Found here very first. If You Come To Search F Result 2019 Publish Date', 22675, 50, '5', 'noimage.png', '2019-08-24 02:38:23', '2019-09-07 21:27:16', '2019-09-07 21:27:16'),
(6, 'Easey fashion', 4, 'will be Found here very first. If You Come To Search F Result 2019 Publish Date', 'will be Found here very first. If You Come To Search F Result 2019 Publish Date', 22675, 60, '10', 'noimage.png', '2019-08-24 02:38:40', '2019-09-07 21:27:17', '2019-09-07 21:27:17'),
(7, 'Easey fashion', 5, 'will be Found here very first. If You Come To Search F Result 2019 Publish Date', 'will be Found here very first. If You Come To Search F Result 2019 Publish Date', 22675, 50, '5', 'noimage.png', '2019-08-24 02:38:54', '2019-09-07 21:27:17', '2019-09-07 21:27:17'),
(11, 'MAMAUN fashion', 6, 'a web application framework with expressive, elegant a web a web application framework with expressive, elegant a web', 'a web application framework with expressive, elegant a web a web application framework with expressive, elegant a web a web application framework with expressive, elegant a web', 700, 60, '10', 'noimage.png', '2019-08-25 03:14:50', '2019-09-07 21:27:18', '2019-09-07 21:27:18'),
(18, 'daraz fashion', 7, 'here are a few important things to note about this example. Note that we only', 'here are a few important things to note about this example. Note that we only specified a directory name, not a file name. By default, the store method will generate a unique ID to serve as the file name', 5345, 244, '34', 'noimage.png', '2019-09-05 01:09:02', '2019-09-07 21:27:19', '2019-09-07 21:27:19'),
(19, 'MAMAUN fashion', 8, 'here are a few important things to note about this example. Note that we only specif name', 'here are a few important things to note about this example. Note that we only specified a directory name, not a file name. By default, the store method will generate a unique ID to serve as the file name', 32445, 244, '34', 'noimage.png', '2019-09-05 01:13:22', '2019-09-07 21:27:19', '2019-09-07 21:27:19'),
(20, 'MAMAUN fashion', 9, 'about this example. Note that we only specified a directory name, not a file name. By default, the store method will generate a unique ID to serve as the file name', 'There are a few important things to note about this example. Note that we only specified a directory name, not a file name. By default, the store method will generate a unique ID to serve as the file name', 32445, 244, '34', 'public/product_images/iOWCRigEczX887FIFQh17UszExPp3mz1njZz6llZ.jpeg', '2019-09-05 01:17:22', NULL, NULL),
(21, 'Sumon fashion', 10, 'sometimes known, is dummy text used in laying out print, graphic or web designs', 'sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero', 32445, 244, '34', 'noimage.png', '2019-09-05 01:50:57', '2019-09-08 00:20:20', '2019-09-08 00:20:20'),
(22, 'sojib fashion', 11, 'sometimes known, is dummy text used in laying out print, graphic or web designs.', 'sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero', 32445, 244, '24', 'public/product_images/Zx1AYZNfcHC9uW4Sw5FKoRgcBJ2vvDqQf27RGu7A.png', '2019-09-05 01:52:03', NULL, NULL),
(23, 'daraz fashion', 12, 'Is dummy text used in laying out print, graphic or web designs. The passage is attributed', 'Is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s', 32445, 244, '34', 'public/product_images/IkkGepGV7qACoFZFC3I48Ic63a04gDBTEksRpnpN.jpeg', '2019-09-05 02:02:12', '2019-09-05 03:06:43', '2019-09-05 03:06:43'),
(24, 'Daraz Fashion', 13, 'bout this example. Note that we only specified a directory name, n', 'bout this example. Note that we only specified a directory name, n bout this example. Note that we only specified a directory name, n bout this example. Note that we only specified a directory name, n', 23443, 50, '5', 'public/product_images/A8sppdWdKPKfl5ajd8OPPQPKMl2qfKnt2PgLJiHC.jpeg', '2019-09-07 21:30:33', NULL, NULL),
(25, 'Daraz Fashion', 14, 'bout this example. Note that we only specified a directory name, n', 'bout this example. Note that we only specified a directory name, n bout this example. Note that we only specified a directory name, n', 23443, 50, '5', 'public/product_images/MXr3sGdLAX4HbUjZfYddlqBvnvC4oS2CaduPXZ1P.jpeg', '2019-09-07 21:30:59', NULL, NULL),
(26, 'Daraz Fashion', 15, 'Follow me big discount\r\nPlease read the introduction carefully\r\nHigh quality and Brand new 100', 'Follow me big discount\r\nPlease read the introduction carefully\r\nHigh quality and Brand new 100', 23443, 50, '5', 'public/product_images/teswSgJPgrDZkRz7YB9NMlUZn3kycbA0vtSxx1jk.jpeg', '2019-09-08 00:18:49', NULL, NULL),
(27, 'Daraz Fashion', 16, 'Follow me big discount\r\nPlease read the introduction carefully\r\nHigh quality and Brand new 100', 'Follow me big discount\r\nPlease read the introduction carefully\r\nHigh quality and Brand new 100', 23443, 50, '5', 'public/product_images/unCXmyiWY5R6Zk6mnDmOKXkXFmhmCimJ9UlNwUkP.jpeg', '2019-09-08 00:19:24', NULL, NULL),
(28, 'Daraz Fashion', 2, 'The premium is a which has been developed in the same wind-tunnel where the', 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 23443, 50, '5', 'public/product_images/oDRVpbkVI4dcEyO6urPUdA9kUj1MEzKs7VhQjax9.jpeg', '2019-09-08 00:40:49', NULL, NULL),
(29, 'Daraz Fashion', 4, 'The premium is a which has been developed in the same wind-tunnel where the', 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 23443, 50, '5', 'public/product_images/ZU3T82dxXskqn023CtjmlGVNFvapHpHaM6shiha7.jpeg', '2019-09-08 00:41:12', NULL, NULL),
(30, 'Daraz Fashion', 4, 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 23443, 50, '5', 'public/product_images/IDus2o9pIMcjdwm4BqioAnoSrF21VlGAgdsEG57A.jpeg', '2019-09-08 00:41:39', NULL, NULL),
(31, 'Daraz Fashion', 4, 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 234438, 50, '5', 'public/product_images/0NfULZyHfknHjcGa1Zb7tT0RF6hMMREKEQVi27kb.jpeg', '2019-09-08 00:42:08', NULL, NULL),
(32, 'Daraz Fashion', 4, 'The premium is a which has been developed in the same wind-tunnel where the', 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 43566, 50, '5', 'public/product_images/rqrzXhagjIbS3Akx094nqEH8DgHSoF02hGoDnbPy.jpeg', '2019-09-08 00:42:31', NULL, NULL),
(33, 'Daraz Fashion', 4, 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 12322, 50, '5', 'public/product_images/mPQDu2eXcq7FVpYoFbClXkc04XVX1qtsaEWekjTe.jpeg', '2019-09-08 00:43:03', NULL, NULL),
(34, 'Daraz Fashion', 4, 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 'The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the The premium is a which has been developed in the same wind-tunnel where the', 86543, 50, '5', 'public/product_images/fNTBnoXT1RJErSaJXTM0DjUFBO6V1EawHLFQrY4s.jpeg', '2019-09-08 00:43:34', NULL, NULL),
(35, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 2234, 50, '5', 'public/product_images/RpoRAZDPMZXyDG8lG6k9s7ZErS00QJJJuupWLq3u.jpeg', '2019-09-08 00:46:12', NULL, NULL),
(36, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 1250, 50, '5', 'public/product_images/HArCnkKRIaoDuWq9t3lHO2EtbbCjbuo4jjrdLCpo.jpeg', '2019-09-08 00:46:47', NULL, NULL),
(37, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 2150, 50, '5', 'public/product_images/yu7SQ77i2WFYe6ftL5UP7yFvU6dxJeFLVm13C9Tz.jpeg', '2019-09-08 00:47:24', NULL, NULL),
(38, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 1233, 50, '5', 'public/product_images/l731jGBhsr6SGqbPvBxUuHKU3aZfMaSXgBTOoO1j.jpeg', '2019-09-08 00:48:33', NULL, NULL),
(39, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associate', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 1223, 50, '5', 'public/product_images/jfB8z9CjcxB4dDLG5qbSf1kFS60Ih8UeBJiBhPZ4.jpeg', '2019-09-08 00:50:19', NULL, NULL),
(40, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 1332, 50, '5', 'public/product_images/euhMl9TXyfeE56prwSPUyPN0pECfiLZimkZRAfb6.jpeg', '2019-09-08 00:50:42', NULL, NULL),
(41, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 1232, 50, '5', 'public/product_images/RYDJ7j6NNijus3reK7CzYM9U0KKDuokNTkBgW6mq.jpeg', '2019-09-08 00:51:23', NULL, NULL),
(42, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no colla', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 2234, 50, '5', 'public/product_images/apBYnZNeZflLJi1P3ZI9dF6P53HyAEo2KJxHtjIT.jpeg', '2019-09-08 00:52:03', NULL, NULL),
(43, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 2234, 50, '5', 'public/product_images/0IZlpWeLMTYhkuj5wxh81vKv4t3YUVtKx34q3XsA.jpeg', '2019-09-08 00:52:38', NULL, NULL),
(44, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no col', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 2234, 50, '5', 'public/product_images/u9lju4U5a7fascb20LAuf1tscpZFllrW3glBi5Tj.jpeg', '2019-09-08 00:53:02', NULL, NULL),
(45, 'Daraz Fashion', 6, 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no colla', 'This T-Shirt is perfect for the young and smart person. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar.It is made of cotton fabrics. This t-shirt will make a fashion conscious person like you smarter than ever. You can wear it to work, at home while resting. It is comfortable during your workout and is easy to clean.', 2344, 50, '5', 'public/product_images/KN9i4yM2ltCXpE0BSQuaXufMfcyH9WF9cXZ7Detx.jpeg', '2019-09-08 00:53:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdullah Al Mamun', 'mamuncet27@gmail.com', '2019-07-15 07:00:00', '$2y$10$cl.ggqwa2Bz0Z8lRwtXXGOM8xSGuOEUh/GCfp6i9X3fkaxMQ4.Fqe', 'l7VTefKvbTOKAsWp0XbOCXmzFxmuoM4Ey5kwN5hUglRoXIf8pHEKzIGUdwCO', '2019-07-12 23:17:48', '2019-07-12 23:17:48'),
(2, 'Abdullah Al Mamun', 'mamuncreativeit@gmail.com', NULL, '$2y$10$jEEQimBnftTvGZxZjED18OsX38riZia6VWsxU2ub4ztpXtAltRQoS', NULL, '2019-07-26 15:58:18', '2019-07-26 15:58:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
