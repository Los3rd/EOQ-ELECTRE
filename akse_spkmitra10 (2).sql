-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2025 at 06:55 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akse_spkmitra10`
--

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

DROP TABLE IF EXISTS `criterias`;
CREATE TABLE IF NOT EXISTS `criterias` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` decimal(5,2) NOT NULL,
  `type` enum('benefit','cost') COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `name`, `weight`, `type`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Total QTY Orderan', 0.25, 'benefit', 'product', '2025-06-27 06:13:34', '2025-06-27 06:13:34'),
(2, 'Kapasitas Produksi', 0.20, 'benefit', 'product', '2025-06-27 06:13:48', '2025-06-27 06:13:48'),
(3, 'Ketersediaan Bahan Baku', 0.15, 'benefit', 'product', '2025-06-27 06:14:01', '2025-06-27 06:14:01'),
(4, 'Kompleksitas Produksi', 0.15, 'benefit', 'product', '2025-06-27 06:14:14', '2025-06-27 06:14:14'),
(5, 'Margin Profit', 0.15, 'benefit', 'product', '2025-06-27 06:14:30', '2025-06-27 06:14:30'),
(6, 'Setup Time Mesin', 0.10, 'benefit', 'product', '2025-06-27 06:14:43', '2025-06-27 06:14:43'),
(7, 'Total QTY Orderan', 0.30, 'benefit', 'store', '2025-06-27 06:15:33', '2025-06-27 06:15:33'),
(8, 'Jarak', 0.15, 'benefit', 'store', '2025-06-27 06:15:52', '2025-07-16 07:30:35'),
(9, 'Variasi Produk', 0.20, 'benefit', 'store', '2025-06-27 06:16:14', '2025-06-27 06:16:14'),
(10, 'Deadline Kiriman', 0.25, 'benefit', 'store', '2025-06-27 06:16:30', '2025-07-16 07:30:41'),
(11, 'Frekuensi Permintaan', 0.10, 'benefit', 'store', '2025-06-27 06:16:43', '2025-06-27 06:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `electre_product_calculations`
--

DROP TABLE IF EXISTS `electre_product_calculations`;
CREATE TABLE IF NOT EXISTS `electre_product_calculations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ranking` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electre_product_calculations`
--

INSERT INTO `electre_product_calculations` (`id`, `ranking`, `created_at`, `updated_at`) VALUES
(1, '{\"Organic Coffee Beans\":2,\"Wall Shelving\":2,\"T-Shirt Katun Premium\":-1,\"Laptop Gaming XYZ\":-3}', '2025-07-11 06:53:56', '2025-07-11 06:53:56'),
(2, '{\"Meja Lipat 600*400\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":2,\"Wall Shelving 600*300*20\":0,\"Wall Shelving 1200*300*20\":-2,\"Floating Shelving 1200*300*40\":-2,\"Wall Shelving 900*300*20\":-3,\"Floating Shelving 900*300*40\":-3}', '2025-07-14 01:53:48', '2025-07-14 01:53:48'),
(3, '{\"Meja Lipat 600*400\":5,\"Meja Lipat 800*400\":2,\"Wall Shelving 600*300*20\":1,\"Wall Shelving 1200*300*20\":1,\"Floating Shelving 1200*300*40\":-1,\"Floating Shelving 600*300*40\":-2,\"Floating Shelving 900*300*40\":-2,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 01:58:23', '2025-07-14 01:58:23'),
(4, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-14 02:12:31', '2025-07-14 02:12:31'),
(5, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-14 06:39:54', '2025-07-14 06:39:54'),
(6, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Wall Shelving 1200*300*20\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Floating Shelving 600*300*40\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-14 06:58:25', '2025-07-14 06:58:25'),
(7, '{\"Meja Lipat 600*400\":3,\"Meja Lipat 800*400\":2,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 600*300*40\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-2,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 07:04:14', '2025-07-14 07:04:14'),
(8, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 07:36:20', '2025-07-14 07:36:20'),
(9, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 07:47:15', '2025-07-14 07:47:15'),
(10, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 07:48:27', '2025-07-14 07:48:27'),
(11, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 07:50:42', '2025-07-14 07:50:42'),
(12, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 07:55:47', '2025-07-14 07:55:47'),
(13, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 07:58:38', '2025-07-14 07:58:38'),
(14, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 07:58:47', '2025-07-14 07:58:47'),
(15, '{\"Meja Lipat 600*400\":3,\"Meja Lipat 800*400\":2,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 600*300*40\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-2,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:08:20', '2025-07-14 08:08:20'),
(16, '{\"Meja Lipat 600*400\":3,\"Meja Lipat 800*400\":2,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 600*300*40\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-2,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:08:22', '2025-07-14 08:08:22'),
(17, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:18:48', '2025-07-14 08:18:48'),
(18, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:28:11', '2025-07-14 08:28:11'),
(19, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:31:16', '2025-07-14 08:31:16'),
(20, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:31:18', '2025-07-14 08:31:18'),
(21, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:31:21', '2025-07-14 08:31:21'),
(22, '{\"Meja Lipat 600*400\":3,\"Meja Lipat 800*400\":2,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 600*300*40\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-2,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:31:31', '2025-07-14 08:31:31'),
(23, '{\"Meja Lipat 600*400\":3,\"Meja Lipat 800*400\":2,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 600*300*40\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-2,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:38:08', '2025-07-14 08:38:08'),
(24, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:38:19', '2025-07-14 08:38:19'),
(25, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:42:15', '2025-07-14 08:42:15'),
(26, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:42:18', '2025-07-14 08:42:18'),
(27, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:42:32', '2025-07-14 08:42:32'),
(28, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:50:35', '2025-07-14 08:50:35'),
(29, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:50:39', '2025-07-14 08:50:39'),
(30, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:51:57', '2025-07-14 08:51:57'),
(31, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:53:59', '2025-07-14 08:53:59'),
(32, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:55:15', '2025-07-14 08:55:15'),
(33, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:57:45', '2025-07-14 08:57:45'),
(34, '{\"Wall Shelving 900*300*20\":4,\"Wall Shelving 1200*300*20\":3,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Floating Shelving 600*300*40\":-1,\"Floating Shelving 900*300*40\":-1,\"Meja Lipat 600*400\":-2,\"Meja Lipat 800*400\":-3}', '2025-07-14 08:57:58', '2025-07-14 08:57:58'),
(35, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:58:15', '2025-07-14 08:58:15'),
(36, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 08:59:26', '2025-07-14 08:59:26'),
(37, '{\"Meja Lipat 800*400\":3,\"Meja Lipat 600*400\":2,\"Floating Shelving 600*300*40\":1,\"Floating Shelving 900*300*40\":1,\"Wall Shelving 600*300*20\":0,\"Floating Shelving 1200*300*40\":0,\"Wall Shelving 1200*300*20\":-3,\"Wall Shelving 900*300*20\":-4}', '2025-07-14 21:12:10', '2025-07-14 21:12:10'),
(38, '{\"Meja Lipat 600*400\":7,\"Meja Lipat 800*400\":4,\"Wall Shelving 600*300*20\":2,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-5}', '2025-07-14 21:16:08', '2025-07-14 21:16:08'),
(39, '{\"Meja Lipat 600*400\":7,\"Meja Lipat 800*400\":4,\"Wall Shelving 600*300*20\":2,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-5}', '2025-07-14 21:34:27', '2025-07-14 21:34:27'),
(40, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-15 04:12:10', '2025-07-15 04:12:10'),
(41, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":6,\"Meja Lipat 800*400\":5,\"Floating Shelving 600*300*40\":4,\"Wall Shelving 900*300*20\":3,\"Floating Shelving 900*300*40\":2,\"Wall Shelving 1200*300*20\":1,\"Floating Shelving 1200*300*40\":0}', '2025-07-15 04:36:45', '2025-07-15 04:36:45'),
(42, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-15 04:41:18', '2025-07-15 04:41:18'),
(43, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-15 08:21:58', '2025-07-15 08:21:58'),
(44, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-16 00:20:50', '2025-07-16 00:20:50'),
(45, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-16 07:15:17', '2025-07-16 07:15:17'),
(46, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-17 21:44:48', '2025-07-17 21:44:48'),
(47, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-18 22:20:17', '2025-07-18 22:20:17'),
(48, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-24 09:46:25', '2025-07-24 09:46:25'),
(49, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-25 13:35:05', '2025-07-25 13:35:05'),
(50, '{\"Meja Lipat 600*400\":7,\"Wall Shelving 600*300*20\":5,\"Meja Lipat 800*400\":3,\"Floating Shelving 600*300*40\":1,\"Wall Shelving 900*300*20\":-1,\"Floating Shelving 900*300*40\":-3,\"Wall Shelving 1200*300*20\":-5,\"Floating Shelving 1200*300*40\":-7}', '2025-07-25 14:34:35', '2025-07-25 14:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `electre_store_calculations`
--

DROP TABLE IF EXISTS `electre_store_calculations`;
CREATE TABLE IF NOT EXISTS `electre_store_calculations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ranking` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electre_store_calculations`
--

INSERT INTO `electre_store_calculations` (`id`, `ranking`, `created_at`, `updated_at`) VALUES
(1, '{\"Warung Sejahtera\":3,\"Toko Jaya Abadi\":0,\"MITRA 10 BINTARO JAYA\":0,\"Grosir Maju Bersama\":-3}', '2025-07-11 06:54:35', '2025-07-11 06:54:35'),
(2, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-11 21:55:41', '2025-07-11 21:55:41'),
(3, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-13 22:52:46', '2025-07-13 22:52:46'),
(4, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-16 01:30:36', '2025-07-16 01:30:36'),
(5, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-16 01:57:10', '2025-07-16 01:57:10'),
(6, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-16 06:44:05', '2025-07-16 06:44:05'),
(7, '{\"Mitra 10 Bintaro jaya\":3,\"Mitra 10 Pasar Baru\":0,\"Mitra 10 Percetakan Negara\":-1,\"MITRA 10 Pesanggrahan\":-2}', '2025-07-16 07:05:23', '2025-07-16 07:05:23'),
(8, '{\"Mitra 10 Bintaro jaya\":3,\"Mitra 10 Pasar Baru\":0,\"Mitra 10 Percetakan Negara\":-1,\"MITRA 10 Pesanggrahan\":-2}', '2025-07-16 07:17:43', '2025-07-16 07:17:43'),
(9, '{\"Mitra 10 Bintaro jaya\":3,\"Mitra 10 Pasar Baru\":0,\"Mitra 10 Percetakan Negara\":-1,\"MITRA 10 Pesanggrahan\":-2}', '2025-07-16 07:22:38', '2025-07-16 07:22:38'),
(10, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-16 07:53:13', '2025-07-16 07:53:13'),
(11, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-16 07:59:34', '2025-07-16 07:59:34'),
(12, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-16 18:11:32', '2025-07-16 18:11:32'),
(13, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-17 21:05:22', '2025-07-17 21:05:22'),
(14, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-18 22:37:23', '2025-07-18 22:37:23'),
(15, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-27 06:06:13', '2025-07-27 06:06:13'),
(16, '{\"Mitra 10 Pasar Baru\":3,\"Mitra 10 Bintaro jaya\":0,\"MITRA 10 Pesanggrahan\":0,\"Mitra 10 Percetakan Negara\":-3}', '2025-07-27 06:06:15', '2025-07-27 06:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `eoq_calculations`
--

DROP TABLE IF EXISTS `eoq_calculations`;
CREATE TABLE IF NOT EXISTS `eoq_calculations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `raw_material_id` bigint UNSIGNED DEFAULT NULL,
  `calculation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `annual_demand` decimal(10,2) NOT NULL,
  `ordering_cost` decimal(15,2) NOT NULL,
  `holding_cost` decimal(15,2) NOT NULL,
  `purchase_price` decimal(10,2) DEFAULT NULL,
  `eoq_value` decimal(10,2) NOT NULL,
  `total_cost` decimal(20,2) NOT NULL,
  `optimal_frequency` decimal(15,5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lead_time` double NOT NULL,
  `working_days` int NOT NULL,
  `max_daily_demand` double NOT NULL,
  `daily_demand` double NOT NULL,
  `safety_stock` double NOT NULL,
  `rop_value` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eoq_calculations_raw_material_id_foreign` (`raw_material_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eoq_calculations`
--

INSERT INTO `eoq_calculations` (`id`, `raw_material_id`, `calculation_date`, `annual_demand`, `ordering_cost`, `holding_cost`, `purchase_price`, `eoq_value`, `total_cost`, `optimal_frequency`, `created_at`, `updated_at`, `lead_time`, `working_days`, `max_daily_demand`, `daily_demand`, `safety_stock`, `rop_value`) VALUES
(1, 1, '2025-07-03 14:50:22', 2000.00, 1486514.00, 892500.00, 0.00, 82.00, 72848939.00, 24.39024, '2025-07-03 07:50:22', '2025-07-03 07:50:22', 0, 0, 0, 0, 0, 0),
(2, 2, '2025-07-04 01:15:03', 1000.00, 1486514.00, 3607500.00, 0.00, 29.00, 103567853.00, 34.48276, '2025-07-03 18:15:03', '2025-07-03 18:15:03', 0, 0, 0, 0, 0, 0),
(3, 4, '2025-07-04 01:29:34', 500.00, 1486514.00, 3960000.00, 0.00, 19.00, 76738789.00, 26.31579, '2025-07-03 18:29:34', '2025-07-03 18:29:34', 0, 0, 0, 0, 0, 0),
(4, 4, '2025-07-08 10:34:03', 2388.00, 1486514.00, 3960000.00, NULL, 42.34, 167673432.07, 56.39820, '2025-07-08 03:34:03', '2025-07-08 03:34:03', 6, 238, 11, 10.033613445378, 6, 66),
(5, 3, '2025-07-08 13:25:21', 2120.00, 1486514.00, 5218500.00, NULL, 34.75, 181359485.08, 61.00161, '2025-07-08 06:25:21', '2025-07-08 06:25:21', 6, 238, 13, 8.9075630252101, 25, 78),
(6, 3, '2025-07-08 13:27:34', 2120.00, 1486514.00, 5218500.00, NULL, 34.75, 181359485.08, 61.00161, '2025-07-08 06:27:34', '2025-07-08 06:27:34', 6, 238, 11, 8.9075630252101, 13, 66),
(7, 1, '2025-07-11 01:15:09', 1500.00, 1486514.00, 892500.00, NULL, 70.69, 63088360.54, 21.22024, '2025-07-10 18:15:09', '2025-07-10 18:15:09', 6, 238, 10, 6.3025210084034, 22, 60),
(8, 1, '2025-07-12 04:30:28', 2388.00, 1486514.00, 892500.00, NULL, 89.19, 79601412.34, 26.77452, '2025-07-11 21:30:28', '2025-07-11 21:30:28', 6, 238, 80, 10.033613445378, 420, 480),
(9, 1, '2025-07-13 10:38:46', 2475.00, 1486514.00, 892500.00, NULL, 90.80, 81038466.41, 27.25789, '2025-07-13 03:38:46', '2025-07-13 03:38:46', 6, 238, 15, 10.399159663866, 28, 90),
(10, 1, '2025-07-19 02:59:49', 2475.00, 1486514.00, 892500.00, NULL, 90.80, 81038466.41, 27.25789, '2025-07-18 19:59:49', '2025-07-18 19:59:49', 6, 238, 15, 10.399159663866, 28, 90),
(11, 2, '2025-07-19 07:30:24', 1500.00, 1486514.00, 3607500.00, NULL, 35.16, 126837682.75, 42.66279, '2025-07-19 00:30:24', '2025-07-19 00:30:24', 6, 238, 30, 6.3025210084034, 142, 180),
(12, 4, '2025-07-27 03:29:34', 2250.00, 1486514.00, 3960000.00, NULL, 41.10, 162756503.65, 54.74436, '2025-07-27 03:29:34', '2025-07-27 03:29:34', 6, 238, 10, 9.453781512605, 3, 60);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `unit`, `brand`, `barcode`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Wall Shelving 600*300*20', NULL, 1500.00, 'Furniture', 'unit', 'SPlus - Zehn', '1234567890123', 50, '2025-06-27 06:04:00', '2025-07-14 01:07:54'),
(2, 'Wall Shelving 900*300*20', NULL, 25.50, 'Furniture', 'Unit', 'SPlus - Zehn', '9876543210987', 200, '2025-06-27 06:04:00', '2025-07-14 01:08:24'),
(3, 'Wall Shelving 1200*300*20', NULL, 12.99, 'Furniture', 'Unit', 'SPlus - Zehn', '1122334455667', 150, '2025-06-27 06:04:00', '2025-07-14 01:09:11'),
(4, 'Floating Shelving 600*300*40', NULL, 1550000.00, 'Furniture', 'Unit', 'SPlus - Zehn', '11a111', 100, '2025-07-08 18:30:27', '2025-07-14 01:08:38'),
(5, 'Floating Shelving 900*300*40', NULL, 1.00, 'Furniture', 'Unit', 'SPlus - Zehn', NULL, 1, '2025-07-14 01:11:56', '2025-07-14 01:11:56'),
(6, 'Floating Shelving 1200*300*40', NULL, 2.00, 'Furniture', 'Unit', 'SPlus - Zehn', NULL, 10, '2025-07-14 01:14:20', '2025-07-14 01:14:20'),
(7, 'Meja Lipat 600*400', NULL, 1.00, 'Furniture', 'Unit', 'SPlus - Zehn', NULL, 100, '2025-07-14 01:14:43', '2025-07-14 01:14:43'),
(8, 'Meja Lipat 800*400', NULL, 11.00, 'Furniture', 'Unit', 'SPlus - Zehn', NULL, 1, '2025-07-14 01:15:00', '2025-07-14 01:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_scores`
--

DROP TABLE IF EXISTS `product_scores`;
CREATE TABLE IF NOT EXISTS `product_scores` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `criteria_id` bigint UNSIGNED NOT NULL,
  `value` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_scores_product_id_criteria_id_unique` (`product_id`,`criteria_id`),
  KEY `product_scores_criteria_id_foreign` (`criteria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_scores`
--

INSERT INTO `product_scores` (`id`, `product_id`, `criteria_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4.00, '2025-06-27 06:15:09', '2025-07-14 01:16:01'),
(2, 1, 2, 4.00, '2025-06-27 06:15:09', '2025-07-14 01:16:02'),
(3, 1, 3, 5.00, '2025-06-27 06:15:09', '2025-07-14 21:13:38'),
(4, 1, 4, 2.00, '2025-06-27 06:15:09', '2025-07-14 01:16:02'),
(5, 1, 5, 3.00, '2025-06-27 06:15:09', '2025-07-14 21:13:38'),
(6, 1, 6, 2.00, '2025-06-27 06:15:09', '2025-07-14 01:16:02'),
(7, 2, 1, 3.00, '2025-06-27 06:28:57', '2025-07-14 01:15:33'),
(8, 2, 2, 3.00, '2025-06-27 06:28:57', '2025-07-14 01:15:34'),
(9, 2, 3, 4.00, '2025-06-27 06:28:57', '2025-07-14 21:13:52'),
(10, 2, 4, 3.00, '2025-06-27 06:28:57', '2025-07-14 21:13:54'),
(11, 2, 5, 4.00, '2025-06-27 06:28:57', '2025-07-14 21:13:56'),
(12, 2, 6, 3.00, '2025-06-27 06:28:57', '2025-07-14 06:59:52'),
(13, 3, 1, 2.00, '2025-06-27 06:29:08', '2025-07-14 21:14:16'),
(14, 3, 2, 2.00, '2025-06-27 06:29:08', '2025-07-14 21:14:16'),
(15, 3, 3, 3.00, '2025-06-27 06:29:08', '2025-07-14 21:14:16'),
(16, 3, 4, 4.00, '2025-06-27 06:29:08', '2025-07-14 21:14:17'),
(17, 3, 5, 5.00, '2025-06-27 06:29:08', '2025-07-14 21:14:17'),
(18, 3, 6, 4.00, '2025-06-27 06:29:08', '2025-07-14 21:14:17'),
(19, 4, 1, 3.00, '2025-07-08 18:31:52', '2025-07-14 07:00:39'),
(20, 4, 2, 4.00, '2025-07-08 18:31:52', '2025-07-14 07:00:39'),
(21, 4, 3, 4.00, '2025-07-08 18:31:52', '2025-07-14 21:14:43'),
(22, 4, 4, 3.00, '2025-07-08 18:31:52', '2025-07-14 21:14:43'),
(23, 4, 5, 3.00, '2025-07-08 18:31:53', '2025-07-14 21:14:43'),
(24, 4, 6, 2.00, '2025-07-08 18:31:53', '2025-07-14 21:14:43'),
(25, 5, 1, 2.00, '2025-07-14 01:45:09', '2025-07-14 21:15:02'),
(26, 5, 2, 3.00, '2025-07-14 01:45:09', '2025-07-14 07:00:58'),
(27, 5, 3, 3.00, '2025-07-14 01:45:09', '2025-07-14 21:15:02'),
(28, 5, 4, 4.00, '2025-07-14 01:45:09', '2025-07-14 21:15:02'),
(29, 5, 5, 4.00, '2025-07-14 01:45:09', '2025-07-14 02:12:21'),
(30, 5, 6, 3.00, '2025-07-14 01:45:09', '2025-07-14 02:12:21'),
(31, 7, 1, 5.00, '2025-07-14 01:52:43', '2025-07-14 01:52:43'),
(32, 7, 2, 5.00, '2025-07-14 01:52:43', '2025-07-14 01:52:43'),
(33, 7, 3, 4.00, '2025-07-14 01:52:43', '2025-07-14 21:15:43'),
(34, 7, 4, 3.00, '2025-07-14 01:52:43', '2025-07-14 01:52:43'),
(35, 7, 5, 3.00, '2025-07-14 01:52:43', '2025-07-14 21:15:36'),
(36, 7, 6, 2.00, '2025-07-14 01:52:43', '2025-07-14 21:15:37'),
(37, 8, 1, 4.00, '2025-07-14 01:53:01', '2025-07-14 01:53:01'),
(38, 8, 2, 4.00, '2025-07-14 01:53:01', '2025-07-14 21:16:01'),
(39, 8, 3, 3.00, '2025-07-14 01:53:02', '2025-07-14 07:02:35'),
(40, 8, 4, 3.00, '2025-07-14 01:53:02', '2025-07-14 01:53:02'),
(41, 8, 5, 4.00, '2025-07-14 01:53:02', '2025-07-14 21:16:01'),
(42, 8, 6, 3.00, '2025-07-14 01:53:02', '2025-07-14 21:16:01'),
(43, 6, 1, 1.00, '2025-07-14 01:53:38', '2025-07-14 21:15:19'),
(44, 6, 2, 2.00, '2025-07-14 01:53:39', '2025-07-14 21:15:20'),
(45, 6, 3, 2.00, '2025-07-14 01:53:39', '2025-07-14 21:15:21'),
(46, 6, 4, 5.00, '2025-07-14 01:53:39', '2025-07-14 21:15:21'),
(47, 6, 5, 5.00, '2025-07-14 01:53:39', '2025-07-14 07:01:33'),
(48, 6, 6, 4.00, '2025-07-14 01:53:39', '2025-07-14 01:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `raw_materials`
--

DROP TABLE IF EXISTS `raw_materials`;
CREATE TABLE IF NOT EXISTS `raw_materials` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_per_pallet` decimal(15,2) NOT NULL COMMENT 'Harga per Palet (Rp)',
  `storage_cost` decimal(15,2) NOT NULL COMMENT 'Biaya Simpan',
  `price_per_sheet` decimal(15,2) NOT NULL COMMENT 'Harga per Lembar',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_materials`
--

INSERT INTO `raw_materials` (`id`, `name`, `price_per_pallet`, `storage_cost`, `price_per_sheet`, `created_at`, `updated_at`) VALUES
(1, 'MDF 3mm', 2975000.00, 892500.00, 59500.00, '2025-06-29 08:45:39', '2025-06-29 08:45:39'),
(2, 'MDF 15mm', 12025000.00, 3607500.00, 240500.00, '2025-06-29 08:46:01', '2025-06-29 08:46:01'),
(3, 'MDF 18mm', 17395000.00, 5218500.00, 347900.00, '2025-06-29 08:46:24', '2025-06-29 08:46:24'),
(4, 'Bracket Folding', 13200000.00, 3960000.00, 264000.00, '2025-06-29 08:46:43', '2025-06-29 08:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Manajer Produksi', NULL, NULL),
(3, 'Staf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting_costs`
--

DROP TABLE IF EXISTS `setting_costs`;
CREATE TABLE IF NOT EXISTS `setting_costs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_costs_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_costs`
--

INSERT INTO `setting_costs` (`id`, `key`, `label`, `value`, `type`, `group`, `created_at`, `updated_at`) VALUES
(1, 'setup_cost_hr', 'Upah SDM', '127514', 'number', 'setup_cost', '2025-06-30 06:31:07', '2025-06-30 07:09:22'),
(2, 'setup_cost_transport', 'Biaya Transportasi', '1125000', 'number', 'setup_cost', '2025-06-30 06:31:07', '2025-06-30 06:31:07'),
(3, 'setup_cost_admin', 'Biaya Administrasi', '124000', 'number', 'setup_cost', '2025-06-30 06:31:07', '2025-06-30 06:31:07'),
(4, 'setup_cost_loading', 'Biaya Bongkar Muat', '110000', 'number', 'setup_cost', '2025-06-30 06:31:07', '2025-06-30 06:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE IF NOT EXISTS `stores` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_in_charge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `address`, `sales_area`, `contact`, `person_in_charge`, `created_at`, `updated_at`) VALUES
(1, 'Mitra 10 Bintaro jaya', 'Jl. Merdeka No. 10, Jakarta Pusat', 'Jakarta', '021-12345678', 'Budi Santoso', '2025-06-27 06:04:00', '2025-07-11 21:51:51'),
(2, 'Mitra 10 Pasar Baru', 'Jl. Raya Bogor Km. 25, Depok', 'Depok', '021-87654321', 'Siti Aminah', '2025-06-27 06:04:00', '2025-07-11 21:54:52'),
(3, 'Mitra 10 Percetakan Negara', 'Jl. Pahlawan No. 5, Bandung', 'Bandung', '022-98765432', 'Agus Wijaya', '2025-06-27 06:04:00', '2025-07-11 21:55:08'),
(4, 'MITRA 10 Pesanggrahan', 'aaa', 'Bekasi', 'Atep', 'a', '2025-07-03 18:21:04', '2025-07-11 21:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `store_scores`
--

DROP TABLE IF EXISTS `store_scores`;
CREATE TABLE IF NOT EXISTS `store_scores` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_id` bigint UNSIGNED NOT NULL,
  `criteria_id` bigint UNSIGNED NOT NULL,
  `value` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `store_scores_store_id_criteria_id_unique` (`store_id`,`criteria_id`),
  KEY `store_scores_criteria_id_foreign` (`criteria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_scores`
--

INSERT INTO `store_scores` (`id`, `store_id`, `criteria_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 3.00, '2025-06-27 07:07:38', '2025-07-03 18:22:39'),
(2, 1, 8, 5.00, '2025-06-27 07:07:38', '2025-07-03 18:22:39'),
(3, 1, 9, 5.00, '2025-06-27 07:07:38', '2025-07-03 18:22:39'),
(4, 1, 10, 1.00, '2025-06-27 07:07:38', '2025-07-03 18:22:39'),
(5, 1, 11, 1.00, '2025-06-27 07:07:38', '2025-07-03 18:22:39'),
(6, 2, 7, 4.00, '2025-06-27 07:07:44', '2025-07-03 18:23:02'),
(7, 2, 8, 5.00, '2025-06-27 07:07:44', '2025-07-03 18:23:02'),
(8, 2, 9, 5.00, '2025-06-27 07:07:44', '2025-07-03 18:23:02'),
(9, 2, 10, 3.00, '2025-06-27 07:07:44', '2025-07-03 18:23:02'),
(10, 2, 11, 1.00, '2025-06-27 07:07:44', '2025-07-03 18:23:03'),
(11, 3, 7, 1.00, '2025-06-27 07:07:52', '2025-07-03 18:23:21'),
(12, 3, 8, 5.00, '2025-06-27 07:07:52', '2025-07-03 18:23:21'),
(13, 3, 9, 1.00, '2025-06-27 07:07:52', '2025-07-03 18:23:21'),
(14, 3, 10, 1.00, '2025-06-27 07:07:52', '2025-07-03 18:23:21'),
(15, 3, 11, 1.00, '2025-06-27 07:07:52', '2025-07-03 18:23:22'),
(16, 4, 7, 2.00, '2025-07-03 18:23:38', '2025-07-03 18:23:38'),
(17, 4, 8, 5.00, '2025-07-03 18:23:39', '2025-07-03 18:23:39'),
(18, 4, 9, 2.00, '2025-07-03 18:23:39', '2025-07-03 18:23:39'),
(19, 4, 10, 3.00, '2025-07-03 18:23:39', '2025-07-03 18:23:39'),
(20, 4, 11, 1.00, '2025-07-03 18:23:39', '2025-07-03 18:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@mitra10.com', NULL, '$2y$12$6V1HR5KKNeBuOUdxRel2ku/GNH78tPctBLHNsEIsMMGr.IEhGsG3G', 1, 'Paok2lL5W6cDrTPxemPyz9BSRfplEkjzbhZgm49WsJLbkyFI5EJyibtRyKVq', '2025-06-27 06:04:00', '2025-06-27 06:04:00'),
(2, 'Manager Produksi', 'dedyf@splusindonesia.co.id', '2025-07-20 04:41:52', '$2y$12$xnBY/6UNUIHYmm2IjywrvesjsfsTJHA.xnizWDdEpIzcpS5p2iwWS', 2, 'ZRXbgcixhK19ZTbohhWJWAseyimiIVoPDYk1B9j7Erhgt0X34us44En6jDHu', '2025-07-20 04:41:52', NULL),
(3, 'Staff Purchase', 'purchase@splusindonesia.co.id', NULL, '$2y$12$fhBRIVQ3IBhJ3GCj6.7a1u2T45yflmN0/WfUxUSOlxxdUFKq7FNLK', 3, NULL, '2025-07-20 04:59:48', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eoq_calculations`
--
ALTER TABLE `eoq_calculations`
  ADD CONSTRAINT `eoq_calculations_raw_material_id_foreign` FOREIGN KEY (`raw_material_id`) REFERENCES `raw_materials` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_scores`
--
ALTER TABLE `product_scores`
  ADD CONSTRAINT `product_scores_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_scores_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `store_scores`
--
ALTER TABLE `store_scores`
  ADD CONSTRAINT `store_scores_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criterias` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `store_scores_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
