-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2016 at 07:37 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicles`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `key`, `secret`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Asgard Connect', '111222333', 'aaabbbccc', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `application_user`
--

CREATE TABLE `application_user` (
  `application_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `Authorization_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_22_180225_create_vehicles_table', 2),
(4, '2016_11_23_183355_create_vihicles_table', 3),
(5, '2016_11_26_002549_add_deleted_to_vihivles_table', 4),
(6, '2016_11_28_165249_create_applications_table', 5),
(7, '2016_11_28_165457_create_application_user_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `manufacturer` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `year` varchar(8) NOT NULL,
  `color` varchar(20) NOT NULL,
  `mileage` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thembinkosi', 'terafumba@gmail.com', '$2y$10$Hag6IpfHxP.vpAWBkr9Ed.HIApKPIh8kghixisCC25dL8anuVlIpu', 'm8vJT6by6LW05ehZD1IuXHakPAuXoNxhnVNVjUgYjYtvsiYXGBXEfcaXSbZW', '2016-11-26 16:53:26', '2016-11-28 20:14:02'),
(2, 'zizipho', 'zmkontwna@gmail.com', '$2y$10$SmcgNjKNB.motJyPwFj.juwLyA.C0MIYJiQb0iPejLBucu435fO2C', 'VtSx23m7JRQU1jnlFCY4ZwFdkB6obdFfPv7DT1FbAQ5gEQa0uLNbwjQtL77U', '2016-11-27 10:43:27', '2016-11-27 10:44:49'),
(3, 'NOKULUNGA', 'nokulunga@gmail.com', '$2y$10$vqWIY.m5vkQ3qk8Sq8rSUukBZaL8El36/PWXjtMu3O6O9vzQlVNv6', NULL, '2016-11-27 10:45:28', '2016-11-27 10:45:28'),
(4, 'Mandilakhe', 'mandifumba@gmail.com', '$2y$10$eKeQj284W36OYF4zjGsctOWk703q1yNaixymM5/leUu8LEalqOa9W', '5maJ3PMKKEWHkOtm6VnvxtEcMCip8FZeIcPeYp8nUzu2Ae85JWcxopHXVXyB', '2016-11-27 13:37:34', '2016-11-27 13:45:12'),
(5, 'nontombana', 'nontombi@gmail.com', '$2y$10$RGrEtUoSDZT54jqnKYn45O/Pw1OJrfUtMgpo//m/OC7Adh0eBsS0e', '14zFKmJydRFAzkdyP4TtNHzMuk8ZWYpHT72xOGGNJkwpwge2q03sJfeUXHc3', '2016-11-27 13:45:53', '2016-11-27 14:12:21'),
(6, 'tera', 'fumba@gmail.com', '$2y$10$eyHQHgdmnsVFEBdZcX3QXuPSxEsXVllz5yPyO4exYTjDemjNPx5e.', 'O53KkfOzPoptZmfBVAmGREo2rLfKaAwgmBrbzZ2KuuId7rWDvLReYjxH8Irt', '2016-11-27 14:32:26', '2016-11-27 14:38:28'),
(7, 'tera', 'tera@gmail.com', '$2y$10$0mHWw692SczfzyLSMFBTJeNwvOMlM/qRlmqEYxt3My6fUZjWd3g.W', 'pRQkinixI1kWKJjyzgGd81stbt4n1KH2wu22XAsRzjGUt4jpZtUNrQ5Up0xn', '2016-11-27 14:40:07', '2016-11-27 14:44:37'),
(8, 'mandi', 'mandi@gmail.com', '$2y$10$X7qTixa267PSH/vXq8R./OHLJp/vOD5rm3212iNzMN4N07li9GZfi', 'ApERgvO0FoqoNLJfhc3lnKrUwSu1Bql54G12lIbaYDusRy5PzI3hV4QessXc', '2016-11-27 15:09:49', '2016-11-27 15:53:46'),
(9, 'tera', 'fumba1@gmail.com', '$2y$10$mGXiBtqALBHQzh9sJoKj2.N1JnqIVbrQvDLeTqxk4AMp.32./ZWQm', NULL, '2016-11-27 15:56:12', '2016-11-27 15:56:12'),
(10, 'ter', 'fumba121@gmail.com', '$2y$10$qFswIClwA1hQrG.INSUomul4QigAcOLU6W/Uw3mbI7O6Lx9F76vkm', 'PRhcIYpbd4dM79SdcWKaJXW4wHSdhWgXYrNweedmSYH9nmOvgwVHuOx2M8za', '2016-11-27 15:58:28', '2016-11-27 16:09:40'),
(11, 'Thembinkosi Fumba', 'tera23@gmail.com', '$2y$10$9IK7bhvKDJS9s1jLbaB4MOXWHckzVEdIXoBKj6fWKV.6Uee7ho1tC', 'GlpGC1SYKvXAFwp03ZYH9RaIwKNtVOWM1eyl7KhqdteFAYGBvjQClh916f8N', '2016-11-27 16:51:36', '2016-11-27 17:21:47'),
(12, 'Thembi go', 'go1@gmail.com', '$2y$10$YXiiYqMfCy7.9rNXxvsV.eBQjH4DNi1Rv41qHJ0.TZH8Hlu4LDeSq', 'Mp2LVh2wh6v1yFVVgFQYbGUsNuWXHE8qLXvpRZGxTmiA9mds74R251M8231z', '2016-11-27 17:22:34', '2016-11-27 17:23:53'),
(13, 'testing testing', 'testingmail@gmail.com', '$2y$10$XeOwNuUc.RbI/NfypWabRej1veevkt1XmbDPqDXpAC44x.k0UQU2O', NULL, '2016-11-28 20:14:51', '2016-11-28 20:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `colour` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mileage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `first_name`, `last_name`, `phone`, `email`, `manufacturer`, `type`, `year`, `colour`, `mileage`, `created_at`, `updated_at`) VALUES
(1, 'Thembinkosi', 'Fumba', '0789870123', 'tera@gmail.com', 'VW', 'Polo', '2016', 'Black', '2000K', '2016-11-22 19:39:44', '2016-11-22 19:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `vihicles`
--

CREATE TABLE `vihicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `colour` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mileage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vihicles`
--

INSERT INTO `vihicles` (`id`, `first_name`, `last_name`, `phone`, `email`, `manufacturer`, `type`, `year`, `colour`, `mileage`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'tera', 'Fumba', '0789870123', 'terafumba@gmail.com', 'VW', 'cross Polo', '2014', 'red', '200', '2016-11-23 18:36:19', '2016-11-23 18:36:19', '2016-11-26 00:22:48'),
(5, 'tera', 'Fumba', '0789870123', 'terafumba@gmail.com', 'VW', 'cross Polo', '2014', 'red', '200', '2016-11-23 18:38:49', '2016-11-23 18:38:49', '2016-11-26 00:22:48'),
(6, 'tera', 'Fumba', '0789870123', 'terafumba@gmail.com', 'VW', 'cross Polo', '2014', 'red', '200', '2016-11-23 18:43:36', '2016-11-23 18:43:36', '2016-11-26 00:22:48'),
(8, 'tera', 'Fumba', '0789870123', 'terafumba@gmail.com', 'VW', 'cross Polo', '2014', 'red', '200', '2016-11-23 18:46:08', '2016-11-23 18:46:08', '2016-11-26 00:22:48'),
(9, 'tera', 'Fumba', '0789870123', 'terafumba@gmail.com', 'VW', 'cross Polo', '2014', 'red', '200', '2016-11-23 18:46:33', '2016-11-23 18:46:33', '2016-11-26 00:22:48'),
(14, 'new Vehicle', 'Fumba', '0789870123', 'terafumba@gmail.com', 'VW', 'polo', '1991', 'red', '2000', '2016-11-25 22:33:15', '2016-11-25 22:33:15', '2016-11-26 00:37:08'),
(15, 'new2', 'Fumba', '0789870123', 'ter', 'manufacture', 'polo', '198', 'red', '2000', '2016-11-25 22:41:19', '2016-11-25 22:41:32', '2016-11-25 22:41:32'),
(16, 'new Vehicle', 'Fumba', '0789870123', 'terafumba@gmail.com', 'VW', 'Polo', '1991', 'red', '2000', '2016-11-25 22:43:13', '2016-11-26 16:07:13', '2016-11-26 16:07:13'),
(17, 'tera', 'Fumba', '0789870123', 'terafumba@gmail.com', 'BMW', '3 series', '200', 'red', '2000', '2016-11-26 16:08:31', '2016-11-26 16:08:31', NULL),
(18, 'tera', 'Fumba', '0789870123', 'email', 'Mercedees', 'C class', '2000', 'red', '4400', '2016-11-26 16:38:20', '2016-11-26 17:26:20', '2016-11-26 17:26:20'),
(19, 'Mandilakhe', 'Fumba', '0789870123', 'eer', 'man', 'polo', '1991', 'red', '2000', '2016-11-27 13:36:01', '2016-11-27 13:36:01', NULL),
(20, 'ter', 'fumba', 'ters', 'mail', 'man', 'polo', '200', 'red', 'mile', '2016-11-27 17:28:01', '2016-11-27 17:28:01', NULL),
(21, 'mail', 'unique', '017898522', 'terb40@gmail.com', 'mana', 'yrry', '2000', 'ururu', 'fjfj', '2016-11-27 17:52:47', '2016-11-27 17:56:23', NULL),
(22, 'tera', 'fumba', '0789872', 'teabu@gmail.com', 'polo', 'polo', '200', 'red', '2000', '2016-11-27 17:54:06', '2016-11-27 17:54:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `applications_key_unique` (`key`);

--
-- Indexes for table `application_user`
--
ALTER TABLE `application_user`
  ADD PRIMARY KEY (`application_id`,`user_id`),
  ADD KEY `application_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vihicles`
--
ALTER TABLE `vihicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vihicles`
--
ALTER TABLE `vihicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
