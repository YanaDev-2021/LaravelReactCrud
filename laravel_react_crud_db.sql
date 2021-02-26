-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 05:01 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_codeigniter`
--
CREATE DATABASE IF NOT EXISTS `crud_codeigniter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud_codeigniter`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`) VALUES
(13, 'another test', 'test description'),
(14, ' another test', 'test description');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `exam_yana`
--
CREATE DATABASE IF NOT EXISTS `exam_yana` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exam_yana`;

-- --------------------------------------------------------

--
-- Table structure for table `exam_yana`
--

CREATE TABLE `exam_yana` (
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `dtae_register` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_yana`
--

INSERT INTO `exam_yana` (`first_name`, `last_name`, `dtae_register`, `address`, `phone`, `email`) VALUES
('test', 'test', '2021-02-26', 'test address', 1234, 'test email');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('c6dcf8cab0930d934c657ebe236f26f2474dc4db4ec722a120f18b799d1d8abf29400f1ab8eb32e3', 1, 1, 'MyApp', '[]', 0, '2021-02-25 18:55:56', '2021-02-25 18:55:56', '2022-02-26 02:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'BK9AAfHwQRjyVbXWJcyISqmNPnqFazkc8snKnT8c', NULL, 'http://localhost', 1, 0, 0, '2021-02-25 18:41:27', '2021-02-25 18:41:27'),
(2, NULL, 'Laravel Password Grant Client', 'uqmWzk8wHTesoKzFV75aoNiljInYTG0kiLgYIAqj', 'users', 'http://localhost', 0, 1, 0, '2021-02-25 18:41:27', '2021-02-25 18:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-25 18:41:27', '2021-02-25 18:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', NULL, '$2y$10$WRSrGonAwp4891v/JfboXuEuBOe8pGo6M19ITqiIiYtmcIjO15bym', NULL, '2021-01-28 09:11:03', '2021-01-28 09:11:03'),
(2, 'test', 'sample@gmail.com', NULL, '$2y$10$8pd2ZoALz95HaMLJXOPVOOmRyj2EQT/gLH.1yd8LrBOVMTkLZk7/C', NULL, '2021-01-28 11:39:31', '2021-01-28 11:39:31'),
(4, 'Sample', 'fake@gmail.com', NULL, '$2y$10$RGlvsl1ssqpYOVXVAUIWB..rECYM7qCTQq7Gz8DA1qh7TAahUIpD6', NULL, '2021-01-28 12:04:54', '2021-01-28 12:04:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `laravel_blog`
--
CREATE DATABASE IF NOT EXISTS `laravel_blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 'test', 'test description', '2021-02-24 06:52:38', '2021-02-24 06:52:38'),
(4, 'test1', 'test1', '2021-02-24 07:29:13', '2021-02-24 07:29:13'),
(5, 'test2', 'test2', '2021-02-24 07:29:25', '2021-02-24 07:29:25'),
(6, 'test3', 'test3', '2021-02-24 07:29:33', '2021-02-24 07:29:33'),
(7, 'test4', 'test4', '2021-02-24 07:29:44', '2021-02-24 07:29:44'),
(8, 'test5', 'test5', '2021-02-24 07:29:55', '2021-02-24 07:29:55'),
(9, 'test', 'test description', '2021-02-25 04:41:41', '2021-02-25 04:41:41'),
(10, 'test', 'test', '2021-02-25 04:55:18', '2021-02-25 04:55:18'),
(11, 'test', 'test', '2021-02-25 04:55:25', '2021-02-25 04:55:25'),
(12, 'test', 'test', '2021-02-25 04:55:38', '2021-02-25 04:55:38'),
(13, 'test', 'test', '2021-02-25 04:55:46', '2021-02-25 04:55:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_07_184730_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_react_crud_db`
--
CREATE DATABASE IF NOT EXISTS `laravel_react_crud_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel_react_crud_db`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_27_040248_create_tasks_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00bc7064231136483cfdb33a73ffb5c8b12053f6d1124b535ceaf4abf164e586ec453df7f3d0110e', 1, 1, 'MyApp', '[]', 1, '2021-02-03 00:00:53', '2021-02-03 00:00:53', '2022-02-03 08:00:53'),
('00dc2c416a4dbd5ddde6fab57decdef380785a61e4d3eda14cc95c24834a77776eccd7c4b28ae008', 1, 1, 'MyApp', '[]', 0, '2021-02-25 06:12:16', '2021-02-25 06:12:16', '2022-02-25 14:12:16'),
('01c9b2c2a97c889da6db546aec160623e9f347076cb776cbc192afe89b6a1bfe4ed42b28f9fae801', 1, 1, 'MyApp', '[]', 0, '2021-01-30 04:22:07', '2021-01-30 04:22:07', '2022-01-30 12:22:07'),
('04a71d288f212c2349adb0fe1730688856ab31ed3e1455367f60ac13710db681fb73b4562048ea31', 1, 1, 'MyApp', '[]', 1, '2021-02-25 07:45:14', '2021-02-25 07:45:14', '2022-02-25 15:45:14'),
('05c481a24e9337f83e3be2fa37d719d20fe5236e2ad48bcb82d89aba394dbc5b17dfd1a20e4df168', 1, 1, 'MyApp', '[]', 1, '2021-02-03 07:39:56', '2021-02-03 07:39:56', '2022-02-03 15:39:56'),
('0b722a4e98df91717d1dde576bcd1589aeca13ed7701d463293c676aa8ce63e7a9d0986fff418a9e', 1, 1, 'MyApp', '[]', 1, '2021-02-25 00:02:55', '2021-02-25 00:02:55', '2022-02-25 08:02:55'),
('0d5750713c50d06c87c2a19d22d28b174ee4f3afea96fe58218840e3b11ec795030a35e306c72ac9', 1, 1, 'MyApp', '[]', 1, '2021-02-25 07:34:33', '2021-02-25 07:34:33', '2022-02-25 15:34:33'),
('10dbabf33e572277e729d892fff69bdca6d177e3daa98b18c8ef8e831172780a498212596ba1313f', 1, 1, 'MyApp', '[]', 0, '2021-01-30 07:56:03', '2021-01-30 07:56:03', '2022-01-30 15:56:03'),
('13af57fe99fdd6c4cb01bd31439857e52a3cf872ee148d8bb963f9642a41e907885f9315cabfe73f', 4, 1, 'MyApp', '[]', 1, '2021-01-30 02:47:03', '2021-01-30 02:47:03', '2022-01-30 10:47:03'),
('169fa91e55b096f3a35e601c389fa8eb13ab0d946bff634f05a37408db1b488a152abee563ed7792', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:11:03', '2021-02-25 06:11:03', '2022-02-25 14:11:03'),
('1b3ffb048128d9aa434aae70bd42c24b566ee0b90e0373e4be8f06a03606d7da331d66c004aba854', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:14:07', '2021-02-25 06:14:07', '2022-02-25 14:14:07'),
('1b5ea034626df1478a3eb4e33601a8f6c72fa4b25d5b06b0d42241692564e8e9f1a156c47ceef5f3', 1, 1, 'MyApp', '[]', 1, '2021-02-25 07:35:45', '2021-02-25 07:35:45', '2022-02-25 15:35:45'),
('1bbe5e36bb46c01ec7f430e282196a6645ab4c4e1b95430daaccc5e301e45f4fb2c3cc8be3c9223f', 1, 1, 'MyApp', '[]', 1, '2021-02-25 19:37:05', '2021-02-25 19:37:05', '2022-02-26 03:37:05'),
('200c88d1b8d595e9cbff6785772cf2772820abeec9608a0587ecb819550800cbef7cd5e195e9f406', 1, 1, 'MyApp', '[]', 1, '2021-02-04 02:45:20', '2021-02-04 02:45:20', '2022-02-04 10:45:20'),
('20a31a454861cc444d063f714e3e90506b3473a7722b350552a4755235a4c80a72c81416035d6aac', 1, 1, 'MyApp', '[]', 0, '2021-01-30 07:56:30', '2021-01-30 07:56:30', '2022-01-30 15:56:30'),
('238edc86f023581664d4e694f7bb7c5ce94f655a239ae2e378b3ec42ceec5136593ba41f89b91f23', 1, 1, 'MyApp', '[]', 1, '2021-01-30 13:21:43', '2021-01-30 13:21:43', '2022-01-30 21:21:43'),
('23b9c722c4a75b606d681d4cd288e240acf7307d904839bffa493a2d5e88b0bdbe142bacb7ef0ef2', 1, 1, 'MyApp', '[]', 1, '2021-02-02 23:29:37', '2021-02-02 23:29:37', '2022-02-03 07:29:37'),
('285227f74bba3313835bc164bdca430e785e275205e84557191198a99c0d836592d6dc94e73a829e', 1, 1, 'MyApp', '[]', 1, '2021-02-02 19:18:36', '2021-02-02 19:18:36', '2022-02-03 03:18:36'),
('289f8adc88f25a7638b168c05f40ab4096451f22fe3d72711ab9d3e44f6a833a4a160c9ecc70a165', 1, 1, 'MyApp', '[]', 1, '2021-01-31 11:48:11', '2021-01-31 11:48:11', '2022-01-31 19:48:11'),
('2a2b5eecb95847c198dcf8456bab76edd6f6f229c0b8eb0116f734b5f3489b877549ced9c9a3e2a4', 1, 1, 'MyApp', '[]', 0, '2021-02-25 07:40:52', '2021-02-25 07:40:52', '2022-02-25 15:40:52'),
('2b83bc831f716c68739d04bdf0fa0f09658939a385c5d976457ddf076b9942152c705c54ae64643d', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:18:18', '2021-02-25 06:18:18', '2022-02-25 14:18:18'),
('2ece0060f8ded7af92b365e7f1b07d11a14d4ebc83e762b252f90bac7575adf5c3eaa6fccf188bb7', 1, 1, 'MyApp', '[]', 0, '2021-01-30 03:15:23', '2021-01-30 03:15:23', '2022-01-30 11:15:23'),
('2efead3806a3e2962e9b4a5f66d5283a98c0d65184f08da75789ebcb31a699d150dd2574e8e1d18c', 1, 1, 'MyApp', '[]', 1, '2021-02-25 19:37:40', '2021-02-25 19:37:40', '2022-02-26 03:37:40'),
('3240b1998839381c6efb4efdb668b9b227681670e706429b568f9de2cb70bb765fb12a0dcc63f6b5', 1, 1, 'MyApp', '[]', 1, '2021-02-03 08:58:36', '2021-02-03 08:58:36', '2022-02-03 16:58:36'),
('32c6f1bed282c7edc0ff1106a2232a96c6f36ce381e2ac931d9c2d02b0b41306823645e22c7ac83e', 1, 1, 'MyApp', '[]', 0, '2021-01-30 04:40:09', '2021-01-30 04:40:09', '2022-01-30 12:40:09'),
('33fa12a46563677c53ef2b29bd80edba57c7dde618ee01cc7bcd55b3e5a429cbe8d60d0596c8389d', 1, 1, 'MyApp', '[]', 1, '2021-02-03 10:32:23', '2021-02-03 10:32:23', '2022-02-03 18:32:23'),
('34387c0978236b2a4fdd461a94c689fdec16614f61cbb18445874dcdfa054f081f5cd946bc23baa0', 1, 1, 'MyApp', '[]', 1, '2021-02-02 23:47:05', '2021-02-02 23:47:05', '2022-02-03 07:47:05'),
('3601d7c177cc0c0e24eb7b533923396ce2e5415addc4f1e3612af3b47c1a3161ab6890da60dfb1aa', 4, 1, 'MyApp', '[]', 0, '2021-01-30 03:16:02', '2021-01-30 03:16:02', '2022-01-30 11:16:02'),
('366da2b3daaebb0053cec50b2d4004512b650c0c45d08bdfba5d71442f3b1932d8e38eda806e631c', 4, 1, 'MyApp', '[]', 0, '2021-01-30 10:49:23', '2021-01-30 10:49:23', '2022-01-30 18:49:23'),
('3d1bef54a5482c6ffe9adedf5f63562f61e4b05e57297fa7c404e293fd27308a05489f688fb6e698', 1, 1, 'MyApp', '[]', 0, '2021-01-30 08:01:37', '2021-01-30 08:01:37', '2022-01-30 16:01:37'),
('43414910cbdb7ddd7b3731f0a870090abe63d0439dd4ffcbdecc1b213e700b5f79edfe41dab4f710', 1, 1, 'MyApp', '[]', 1, '2021-02-03 21:58:12', '2021-02-03 21:58:12', '2022-02-04 05:58:12'),
('491281fefb679ed318c300350729902389eba56b135db46ca9edeaadeeaa3006d9d0412da437ede8', 1, 1, 'MyApp', '[]', 0, '2021-02-25 06:12:40', '2021-02-25 06:12:40', '2022-02-25 14:12:40'),
('4c948597bbad537b4f82e82a280eeec783477f3369e6df982d9bc2c2c7cbbf43991c5d33e832853c', 4, 1, 'MyApp', '[]', 0, '2021-02-03 22:22:42', '2021-02-03 22:22:42', '2022-02-04 06:22:42'),
('4d3c35e7a9494425023437521d04fa7fe1f92494dd6c52852d885f296c5c3f64565e53bc694e17f2', 1, 1, 'MyApp', '[]', 1, '2021-01-31 08:35:35', '2021-01-31 08:35:35', '2022-01-31 16:35:35'),
('4e4cddf26f672a5d228a7f6a2e718753f76e4bf1ae088abb586cc188045fb875c66314f052e33dae', 1, 1, 'MyApp', '[]', 1, '2021-01-31 02:43:55', '2021-01-31 02:43:55', '2022-01-31 10:43:55'),
('51c8745c31bd122cae8f3c877fadcf5a8aca92b7b0700af20ea5b6eeb83b132de9dd7cdd8a22a187', 1, 1, 'MyApp', '[]', 1, '2021-01-30 09:19:27', '2021-01-30 09:19:27', '2022-01-30 17:19:27'),
('51e311b31b391b415e4de7a8d32837e9d87c3785f0f581288c46f95c9c49ecd8045734676b75e961', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:09:55', '2021-02-25 06:09:55', '2022-02-25 14:09:55'),
('5252234dbf86ee339ac002d104087a79ebeb2bf987ef9d4b48f1675908e5292de0bc7a9004c744c2', 1, 1, 'MyApp', '[]', 1, '2021-02-03 08:52:46', '2021-02-03 08:52:46', '2022-02-03 16:52:46'),
('54ffefc5f482a5a6c5b19236ee1c86b5cc3d7406095763e100848fa4ee58b3bd5a8f233cc3ff491e', 1, 1, 'MyApp', '[]', 0, '2021-01-30 03:22:39', '2021-01-30 03:22:39', '2022-01-30 11:22:39'),
('576fc22d098244be041ac6c0f279528a8ec946f534df036dc705f097ed66e8f630f8ca1c64482fe4', 1, 1, 'MyApp', '[]', 1, '2021-02-03 09:36:04', '2021-02-03 09:36:04', '2022-02-03 17:36:04'),
('5a3588dd1cbb87bfc28a1157190bdd8aac146fd674cb741bdef015e1d2494253b4b292eddcd72250', 1, 1, 'MyApp', '[]', 1, '2021-01-30 10:28:24', '2021-01-30 10:28:24', '2022-01-30 18:28:24'),
('5e111af6191a31eb0ffa4026f53d65db071b8ac2ac0b931510a306306a9ae5df1af0ea2e30118701', 1, 1, 'MyApp', '[]', 1, '2021-01-31 11:51:14', '2021-01-31 11:51:14', '2022-01-31 19:51:14'),
('61315882bc8c03fa8bce04d3b031b30672482c35135d76088b2a293bf11eb7948efb84fa3daa5494', 1, 1, 'MyApp', '[]', 0, '2021-01-30 04:21:36', '2021-01-30 04:21:36', '2022-01-30 12:21:36'),
('627289904482778209a2dc55101fae91c659f96631f1f7c81d9d73b297e6e5c2b0ef3823957bba0b', 1, 1, 'MyApp', '[]', 1, '2021-01-31 08:35:19', '2021-01-31 08:35:19', '2022-01-31 16:35:19'),
('627ff684e703677c28bd4727615c9dbd5e33a7b97a40447f3e37a94dd8fad659f7b70bb5d1c3ace5', 4, 1, 'MyApp', '[]', 0, '2021-02-03 09:32:22', '2021-02-03 09:32:22', '2022-02-03 17:32:22'),
('658da0cfb2e7c3c03899d194b82b2b0361f3a50ad60364f944023a35bc4e1e80c575d08203f21605', 1, 1, 'MyApp', '[]', 1, '2021-02-03 10:30:06', '2021-02-03 10:30:06', '2022-02-03 18:30:06'),
('6cf60dd11dda004f7f8e43c51e6976afb2574c9045333c84f5434cfa91d9a685cda4f3e6ca1c9b9c', 1, 1, 'MyApp', '[]', 1, '2021-02-24 23:23:49', '2021-02-24 23:23:49', '2022-02-25 07:23:49'),
('72a64bbb02201fea90e5e8708789f3775e286d363656f43b427a226052558048daf24b33101cf737', 1, 1, 'MyApp', '[]', 1, '2021-01-30 13:21:57', '2021-01-30 13:21:57', '2022-01-30 21:21:57'),
('7a02e7b98ae91d468aadee4823c93cd0e98887fc35f5e945fdd5dd785a2102ad1ea5fe4e220474b6', 1, 1, 'MyApp', '[]', 1, '2021-01-31 11:55:46', '2021-01-31 11:55:46', '2022-01-31 19:55:46'),
('7b68e0e0655db8c48813159b6a0d569010c1eaeccf713d9bbc838ecf69bdc2821f375178ef1e7e82', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:26:03', '2021-02-25 06:26:03', '2022-02-25 14:26:03'),
('7b8a82509878fe00264bd4b5de105f99114362fa82464469affa4e03cafc88d517cbf3e3ee99acc4', 1, 1, 'MyApp', '[]', 1, '2021-02-03 09:51:05', '2021-02-03 09:51:05', '2022-02-03 17:51:05'),
('81222a0ff8ef7e905567215319dfa74a775e99c10ebe85966303884bc1587a0d18f86b1a78018444', 1, 1, 'MyApp', '[]', 1, '2021-02-03 08:55:03', '2021-02-03 08:55:03', '2022-02-03 16:55:03'),
('85711fc5c2a7234c2fc2ed95b3b6f1e334cb7196d15d207e1b3a12a4821bb0b149ed1fe717b733f1', 1, 1, 'MyApp', '[]', 1, '2021-02-03 07:38:34', '2021-02-03 07:38:34', '2022-02-03 15:38:34'),
('866cfe783082dce2d4ea8547ddaa154b0080ccc20fdf557e9a7f804c0090d735bab8c279d8ee46b1', 1, 1, 'MyApp', '[]', 1, '2021-02-03 09:38:08', '2021-02-03 09:38:08', '2022-02-03 17:38:08'),
('869a0d9b91955e18e7c99efad9cc8767cfaadb28aebb84a4764ed57df041f6240b68a47942da6f01', 1, 1, 'MyApp', '[]', 1, '2021-01-31 12:16:45', '2021-01-31 12:16:45', '2022-01-31 20:16:45'),
('876a51c1b1ee428d5482f344e4e0152074452e78a609ab1b207d23a3c2e19727805d659bdf69cca2', 1, 1, 'MyApp', '[]', 1, '2021-01-31 12:09:38', '2021-01-31 12:09:38', '2022-01-31 20:09:38'),
('895eb51f3148905ffb12b9dbf44b9c28ecd5a46eaf00de2fc328bc1dd3f01c178b8195c0e6e37f09', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:14:17', '2021-02-25 06:14:17', '2022-02-25 14:14:17'),
('8c30241a3b8de282606f59f410007d7e019bcf632f47b2ee94f2d8797312fe250984f8fe7eb5236d', 4, 1, 'MyApp', '[]', 0, '2021-01-30 03:38:53', '2021-01-30 03:38:53', '2022-01-30 11:38:53'),
('8d2233f548770a4374e211304c0b41902910d2a8c973c2d0fb4585ee1d8319d02c58d8b4df58ed11', 1, 1, 'MyApp', '[]', 1, '2021-02-03 22:11:00', '2021-02-03 22:11:00', '2022-02-04 06:11:00'),
('931a9c4053df7f9cf56e3ec5406333d9fe93c54e9ed059d14806588c9cf0e526f226643346a312cc', 1, 1, 'MyApp', '[]', 1, '2021-02-04 02:46:32', '2021-02-04 02:46:32', '2022-02-04 10:46:32'),
('938f453ff78a5d56eb3a17b6c53c7345a9bd9497cf23ec6b0d2c0635f9266f8b06dd91ac68a19d90', 1, 1, 'MyApp', '[]', 1, '2021-02-03 10:28:01', '2021-02-03 10:28:01', '2022-02-03 18:28:01'),
('95aab1b2c20fc67ab72c881f32b6ce7386abd801a5eeb2ebac9bbfc33800d749bfa0ebab6598c13e', 1, 1, 'MyApp', '[]', 0, '2021-01-30 09:12:22', '2021-01-30 09:12:22', '2022-01-30 17:12:22'),
('95cdc3c2bed32a617b4dbb01a4043a2ac0c7fd838f40ebc78f3d7c6b0d008b83efedbd3d0309773b', 1, 1, 'MyApp', '[]', 1, '2021-02-24 23:24:10', '2021-02-24 23:24:10', '2022-02-25 07:24:10'),
('9797e3a1240455df4003dfa3fdf8884724efeb52019c9295df1f28007811c8bf0ddacda42f3ffb19', 1, 1, 'MyApp', '[]', 0, '2021-01-30 07:55:12', '2021-01-30 07:55:12', '2022-01-30 15:55:12'),
('9b8e031eef4fdfdaf5dc0e2927a89d7164ec2ca8c0983064090968d8b2d4cce07a2097391ccbb9c0', 1, 1, 'MyApp', '[]', 0, '2021-01-30 03:28:27', '2021-01-30 03:28:27', '2022-01-30 11:28:27'),
('9db8ce750dd6a6c30ffb75f3afa13295946646421c988cca85a9963b5df002757d76117a469f5337', 1, 1, 'MyApp', '[]', 1, '2021-01-31 10:46:14', '2021-01-31 10:46:14', '2022-01-31 18:46:14'),
('9fafdd57b70552737bb838b20fd6888ba054ad372494c84e713a1d9c331e898789338d0935a556e6', 1, 1, 'MyApp', '[]', 1, '2021-01-30 09:18:47', '2021-01-30 09:18:47', '2022-01-30 17:18:47'),
('a2985c6f983a5c792eea92cf7968dc57d848bfeb86701969f28d355fed2810603000a4b3bce1375d', 1, 1, 'MyApp', '[]', 1, '2021-02-08 18:31:52', '2021-02-08 18:31:52', '2022-02-09 02:31:52'),
('a39494699aca921788ceb26d1787afd8648c9c6a42c82cd823db3e08f52b1c65c5a02821e8d9b150', 1, 1, 'MyApp', '[]', 0, '2021-01-30 04:44:14', '2021-01-30 04:44:14', '2022-01-30 12:44:14'),
('a493cf42cb6d17ed5539b3130e7905fdabad77fdc6bcb78c0a2440dd8998d1751550d8356f76256f', 1, 1, 'MyApp', '[]', 0, '2021-01-30 03:05:32', '2021-01-30 03:05:32', '2022-01-30 11:05:32'),
('a7fea61ed39010be7792a2e3c633357c744ae20e5b0860e979890e8e25775e119820d3726f087f92', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:36:12', '2021-02-25 06:36:12', '2022-02-25 14:36:12'),
('a87553e0d27997f700f4695abddc84026cc7523d435985fb813eb385ec49bd077582a439798bd046', 1, 1, 'MyApp', '[]', 0, '2021-01-30 02:27:00', '2021-01-30 02:27:00', '2022-01-30 10:27:00'),
('a9476d61ab88af49be3906ef3c80d450def4deb20c5285c051182cafbb109dad6712b2bdd3e69df7', 1, 1, 'MyApp', '[]', 0, '2021-01-30 02:19:59', '2021-01-30 02:19:59', '2022-01-30 10:19:59'),
('a980f269dd43ee0564052df16789754fab75fc6f4a6403b11c148d5a7b774aba2d36eabec02a42ac', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:40:26', '2021-02-25 06:40:26', '2022-02-25 14:40:26'),
('ab5faf9baa0709c963fa24e17a6e68b3ce50b73a91a5bec6e3cf53e5f939b578a4ddd3ecd2b388e5', 1, 1, 'MyApp', '[]', 0, '2021-02-25 19:37:04', '2021-02-25 19:37:04', '2022-02-26 03:37:04'),
('abd1c13b2f3df522a1ce79c044bf48f3ae7c38a7d30b62704de9cdf22b3b97370f0bbc5d0c899e3e', 1, 1, 'MyApp', '[]', 0, '2021-01-30 02:51:35', '2021-01-30 02:51:35', '2022-01-30 10:51:35'),
('ac36708a3a5372c08f96980e372a3d158353f3cc36236505e7394e31dd0de9e0e986e4a24f87ec62', 1, 1, 'MyApp', '[]', 1, '2021-02-03 09:33:03', '2021-02-03 09:33:03', '2022-02-03 17:33:03'),
('ac5c72a26d9f2ee583eed8884939ecd9bb5b1a1f857a6009cfe273aa571cfce0c2125ef3a87a78d7', 1, 1, 'MyApp', '[]', 1, '2021-02-03 07:40:14', '2021-02-03 07:40:14', '2022-02-03 15:40:14'),
('ae7d8fe3b9ae466d56feecfe197321e3df0875a78a0320765a5546bf7d9bffbd03d40dd9c8692e7d', 1, 1, 'MyApp', '[]', 1, '2021-01-31 11:50:23', '2021-01-31 11:50:23', '2022-01-31 19:50:23'),
('b5c41be84938838c67927e8b7a6f55cf3f540233b57a5a7fda21db5c84dcb13ceb7d595a4e362675', 1, 1, 'MyApp', '[]', 1, '2021-01-31 12:15:02', '2021-01-31 12:15:02', '2022-01-31 20:15:02'),
('b90e41498620bfb0df163018c67ae1ec095dedfa12e1f1381c941934805838831001e3443d16e1ec', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:17:22', '2021-02-25 06:17:22', '2022-02-25 14:17:22'),
('ba4f2b005061663eb2d618fdf0e15b0100a12ebfa88427b35a8e2692df67e9aaa435bcfc80405e73', 1, 1, 'MyApp', '[]', 1, '2021-02-04 07:04:58', '2021-02-04 07:04:58', '2022-02-04 15:04:58'),
('bbd649e771e712874707edc7c6040c145fd6f3af3e74decb6be6a9061e52e7a7827d6bc86bf5ba78', 1, 1, 'MyApp', '[]', 1, '2021-02-03 08:52:24', '2021-02-03 08:52:24', '2022-02-03 16:52:24'),
('bfd1d571dec45b3039a499ec5219b65821da6b6f91e67603c34828f40296a429d780b767a2ecbf08', 1, 1, 'MyApp', '[]', 0, '2021-01-30 09:14:13', '2021-01-30 09:14:13', '2022-01-30 17:14:13'),
('c0bf420572dbae971008822cc360779355a441ca1f20bbc7d4c317b5938f2e4541ddce25bb131bf9', 1, 1, 'MyApp', '[]', 1, '2021-02-02 20:46:04', '2021-02-02 20:46:04', '2022-02-03 04:46:04'),
('c6fcb12ce9c2c7bef34c6348009af49eddf0ed05911f805671c9881e4ab6c7caaa5c99dba4a6061e', 1, 1, 'MyApp', '[]', 0, '2021-02-25 06:12:20', '2021-02-25 06:12:20', '2022-02-25 14:12:20'),
('c8510dba2ee3937b63bc1b14137fd4557397e7717162eda6beeb5f53e2bfb50706cc792b9f5c53a3', 1, 1, 'MyApp', '[]', 1, '2021-02-25 07:56:21', '2021-02-25 07:56:21', '2022-02-25 15:56:21'),
('cad50b9f1d564e229ef28d74629cf0505c2f70c4a8a5420e3b7f96849f24045be68ecd55fd3de144', 1, 1, 'MyApp', '[]', 1, '2021-01-31 00:41:08', '2021-01-31 00:41:08', '2022-01-31 08:41:08'),
('cba605dc2d3818a686a8c321d10b89f503b26f9e71b08504972a7a4802fc7f00f7be1e7ae93a9af6', 1, 1, 'MyApp', '[]', 1, '2021-01-30 09:23:27', '2021-01-30 09:23:27', '2022-01-30 17:23:27'),
('ce62821598d57e57d068522fe2eebb4d004940e2ffab24acba41b5faa58a5bc5d220ba85972a7a7a', 1, 1, 'MyApp', '[]', 1, '2021-02-24 23:42:18', '2021-02-24 23:42:18', '2022-02-25 07:42:18'),
('d10baee2ca75be334bb76e527b62582a508b02b012548bbf45309ff872bc8c9656e026559fad162c', 1, 1, 'MyApp', '[]', 1, '2021-02-03 09:47:54', '2021-02-03 09:47:54', '2022-02-03 17:47:54'),
('d5477a9c903de9a26d44b23995d4154542195585590278a9295f6e78b4056f0b12b0e32cba4ed21b', 1, 1, 'MyApp', '[]', 0, '2021-01-30 02:55:02', '2021-01-30 02:55:02', '2022-01-30 10:55:02'),
('da43e1b122bd1f29c0c68ea75d7aca95db81029136332266c571e347447d49d7b657f72ce4f845da', 1, 1, 'MyApp', '[]', 1, '2021-01-31 10:41:29', '2021-01-31 10:41:29', '2022-01-31 18:41:29'),
('dac44a45fba08ea22d3838dbd1d53577a6b506f7318dd7f185f170ca42de73b68ff5d60e51ef1c80', 1, 1, 'MyApp', '[]', 0, '2021-01-30 09:06:06', '2021-01-30 09:06:06', '2022-01-30 17:06:06'),
('db2d3e329520ea01ba78dfbb054aeb43a51eaca5d9cc90177f26ea722eab6cef52d7fb15ffad315d', 1, 1, 'MyApp', '[]', 1, '2021-02-02 22:03:12', '2021-02-02 22:03:12', '2022-02-03 06:03:12'),
('de79ada2ade547aad056c1fd1542cfc57d466add678042765cd8b6c1ce2d2d3598273fedfb466a36', 1, 1, 'MyApp', '[]', 1, '2021-02-04 00:07:28', '2021-02-04 00:07:28', '2022-02-04 08:07:28'),
('e03994a20787e9d764b6b4b88a3eccc2fbcb4795f28cac090289cd7ac04ffd404272bf08c4e616fc', 1, 1, 'MyApp', '[]', 1, '2021-01-30 09:21:03', '2021-01-30 09:21:03', '2022-01-30 17:21:03'),
('e088017d090e2cfcd98296dbb51051ff0c815f2d7864039c60726d24b8a204d4d06bdbd33fd74224', 1, 1, 'MyApp', '[]', 1, '2021-02-02 22:13:37', '2021-02-02 22:13:37', '2022-02-03 06:13:37'),
('e3205b9d7a554f5ea25a00cabb7fb3b5e2cd9b87c2faf56e7b9acc5f8de3fa7577c39b248ffcc7dd', 1, 1, 'MyApp', '[]', 1, '2021-01-31 02:44:05', '2021-01-31 02:44:05', '2022-01-31 10:44:05'),
('e389e324de61fdb06ef30a8bfc9a301dcbee023f8e12979c0044314e55eec4570366cbfbedcb638a', 1, 1, 'MyApp', '[]', 1, '2021-02-02 03:30:52', '2021-02-02 03:30:52', '2022-02-02 11:30:52'),
('e703554dc2bc53bfd65dd9033f9063de8ae7a5cea568f73e8dda1d4e77025c359fb64450c186ffe6', 1, 1, 'MyApp', '[]', 0, '2021-01-30 04:37:00', '2021-01-30 04:37:00', '2022-01-30 12:37:00'),
('e74d0224adc91ff5df62c10bd5b6d6bca62773c829142193d6f9c869390d913e8bf2ac779d1ab277', 1, 1, 'MyApp', '[]', 0, '2021-02-17 00:06:43', '2021-02-17 00:06:43', '2022-02-17 08:06:43'),
('efb9c68cdc748de992e414ef8477435c00982e14fbde7f979ec0f2952e906374842976865b18a2bc', 1, 1, 'MyApp', '[]', 1, '2021-01-31 02:51:20', '2021-01-31 02:51:20', '2022-01-31 10:51:20'),
('f41c80093d43fd6698b5ef102df4a403861432c7681198a4aa11cda238e763540f5f515436c3bcb9', 1, 1, 'MyApp', '[]', 1, '2021-02-25 05:59:44', '2021-02-25 05:59:44', '2022-02-25 13:59:44'),
('f520d4048edfdee6179a3c939f9a012b8a50167f12e10d86562812f39feafb11ac521605f3a47b0b', 1, 1, 'MyApp', '[]', 0, '2021-01-30 04:35:02', '2021-01-30 04:35:02', '2022-01-30 12:35:02'),
('f54352aa159305cc4d579b7ba4b41c13c5a44f4382bc3f14804e2e3966e049b57ee59f1979079630', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:45:51', '2021-02-25 06:45:51', '2022-02-25 14:45:51'),
('f56e09660f0af4b12ab013c6b6bc72ac8182638bb3fbda2b1ad17b7e52d5545be5b79d18b4b241ff', 1, 1, 'MyApp', '[]', 1, '2021-01-31 12:18:11', '2021-01-31 12:18:11', '2022-01-31 20:18:11'),
('f67b596750e9dbf7e66f82e4158fd71e0e298ffe95d4f404554e74fc5150e5e22ce3428d0a537034', 1, 1, 'MyApp', '[]', 1, '2021-02-02 23:32:10', '2021-02-02 23:32:10', '2022-02-03 07:32:10'),
('fa087ed4736c7524b20ba37bf66d8e83f330da1af5a5b35bfc16a77ba477a25c6664355bef17887d', 1, 1, 'MyApp', '[]', 1, '2021-02-03 08:32:14', '2021-02-03 08:32:14', '2022-02-03 16:32:14'),
('fa8028c3ce0d3e2ece6f1adfd4d27dcbde068e190d636009e111e6f45b21d4f8e517ae462f305f86', 1, 1, 'MyApp', '[]', 1, '2021-02-25 06:14:50', '2021-02-25 06:14:50', '2022-02-25 14:14:50'),
('fc9605d5493033f01c2fc1c4e4ea5d93b01665e074775c90941475921492a9315cbf4176094a2403', 1, 1, 'MyApp', '[]', 0, '2021-02-25 19:40:57', '2021-02-25 19:40:57', '2022-02-26 03:40:57'),
('ff2f0203d356055e8b109969a257adfdcc51ebc6c6f9e9cf84caa029b1a21b742d453764b19a47bb', 1, 1, 'MyApp', '[]', 0, '2021-01-30 02:27:22', '2021-01-30 02:27:22', '2022-01-30 10:27:22'),
('ffeb220a0c1d051af4623f345749ebec769a5f918d21ae8164fe1e65ca6a4d7b37fc6712e75fc3d3', 1, 1, 'MyApp', '[]', 0, '2021-01-30 03:01:30', '2021-01-30 03:01:30', '2022-01-30 11:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'j5xLAaUn2Fj9GO89ntsI5WtcWpMpRIgxDG2TRP3l', NULL, 'http://localhost', 1, 0, 0, '2021-01-28 07:16:45', '2021-01-28 07:16:45'),
(2, NULL, 'Laravel Password Grant Client', 'a9XwdLYIhEfX9wNmOAFfJ4RIqiV4J4vcmYBkd6G2', 'users', 'http://localhost', 0, 1, 0, '2021-01-28 07:16:45', '2021-01-28 07:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-28 07:16:45', '2021-01-28 07:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Breakfast', 'Boiled Egg', '2021-02-03 07:19:55', '2021-02-03 07:19:55'),
(2, 'Lunch', 'Chicken Adobo', '2021-02-03 07:20:21', '2021-02-03 07:20:21'),
(3, 'Dinner', 'Fried Chicken', '2021-02-03 07:20:49', '2021-02-03 07:20:49'),
(5, 'Breakfast', 'Ham', '2021-02-03 07:29:37', '2021-02-03 07:29:37'),
(6, 'Lunch', 'Caldereta', '2021-02-03 07:30:27', '2021-02-03 07:30:27'),
(7, 'Dinner', 'Lechon Belly', '2021-02-03 07:31:09', '2021-02-03 07:31:50'),
(8, 'Snack', 'Pizza', '2021-02-03 07:32:12', '2021-02-03 07:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', NULL, '$2y$10$WRSrGonAwp4891v/JfboXuEuBOe8pGo6M19ITqiIiYtmcIjO15bym', NULL, '2021-01-28 09:11:03', '2021-01-28 09:11:03'),
(2, 'test', 'sample@gmail.com', NULL, '$2y$10$8pd2ZoALz95HaMLJXOPVOOmRyj2EQT/gLH.1yd8LrBOVMTkLZk7/C', NULL, '2021-01-28 11:39:31', '2021-01-28 11:39:31'),
(4, 'Sample', 'fake@gmail.com', NULL, '$2y$10$RGlvsl1ssqpYOVXVAUIWB..rECYM7qCTQq7Gz8DA1qh7TAahUIpD6', NULL, '2021-01-28 12:04:54', '2021-01-28 12:04:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"exam_yana\",\"table\":\"users\"},{\"db\":\"exam_yana\",\"table\":\"exam_yana\"},{\"db\":\"laravel_react_crud_db\",\"table\":\"users\"},{\"db\":\"exam_yana\",\"table\":\"blogs\"},{\"db\":\"crud_codeigniter\",\"table\":\"blogs\"},{\"db\":\"fligno\",\"table\":\"migrations\"},{\"db\":\"fligno\",\"table\":\"users\"},{\"db\":\"fligno\",\"table\":\"tasks\"},{\"db\":\"test_exam\",\"table\":\"tasks\"},{\"db\":\"laravel_blog\",\"table\":\"blogs\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-02-26 03:36:26', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `students`
--
CREATE DATABASE IF NOT EXISTS `students` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `students`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_24_133518_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `studname`, `course`, `fee`, `created_at`, `updated_at`) VALUES
(6, 'Archie Mae', 'BSCPE', '10000', '2021-02-24 11:03:31', '2021-02-24 11:03:31'),
(7, 'Archie Mae', 'BSCPE', '10000', '2021-02-24 11:05:08', '2021-02-24 11:05:08'),
(8, 'Archie Mae', 'BSCPE', '10000', '2021-02-24 11:07:32', '2021-02-24 11:07:32'),
(9, 'Archie Mae', 'BSCPE', '10000', '2021-02-24 11:40:53', '2021-02-24 11:40:53'),
(10, 'Archie Mae', 'BSCPE', '10000', '2021-02-24 11:41:46', '2021-02-24 11:41:46'),
(11, 'Archie Mae', 'BSCPE', '1000', '2021-02-24 11:41:54', '2021-02-24 11:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
