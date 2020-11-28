-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 12:16 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ziz`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `title`, `details`, `created_at`, `updated_at`) VALUES
(1, 'ejdekj', 'kjdekdej', 'ekjddek', '2020-07-27 23:11:12', '2020-07-27 23:11:12'),
(2, 'dejkdej', 'kdejjk', 'jdk', '2020-07-27 23:11:54', '2020-07-27 23:11:54'),
(3, 'edkjd', 'kejedjk', 'ekdjedkj', '2020-07-27 23:12:32', '2020-07-27 23:12:32');

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
(2, '2020_07_23_222948_cards', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_tablet` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type_brand_id` int(11) NOT NULL,
  `release_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `weight` varchar(11) NOT NULL,
  `type_material_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type_color_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `speaker` varchar(255) DEFAULT NULL,
  `type_screen_id` int(11) NOT NULL,
  `px_screen` varchar(255) NOT NULL,
  `type_resolution_id` int(11) NOT NULL,
  `diagonal` varchar(255) NOT NULL,
  `type_cpu_model_id` int(11) NOT NULL,
  `type_gpu_model_id` int(11) NOT NULL,
  `storage_ram` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`storage_ram`)),
  `is_sd` int(11) DEFAULT NULL,
  `fingerprint` int(11) DEFAULT NULL,
  `face_id` int(11) DEFAULT NULL,
  `cooling_system` int(11) DEFAULT NULL,
  `fan_system` int(11) DEFAULT NULL,
  `jack_headphone` int(11) DEFAULT NULL,
  `type_rear_camera_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `video_quality` varchar(255) NOT NULL,
  `selfi_camera` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `mobile_data` varchar(255) NOT NULL,
  `simcard` varchar(255) NOT NULL,
  `bluetooth` varchar(255) NOT NULL,
  `battery` int(11) NOT NULL,
  `type_battery_id` int(11) NOT NULL,
  `type_software_id` int(11) NOT NULL,
  `version_software` int(11) NOT NULL,
  `photos` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `video_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `deal` int(100) DEFAULT NULL,
  `antutu` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `photos_hd` varchar(255) NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`images`)),
  `urls_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`urls_json`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mobile_id` int(11) NOT NULL,
  `type_owns` int(11) NOT NULL COMMENT '1 haya / 2 habw / 3 batamam',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owns`
--

INSERT INTO `owns` (`id`, `user_id`, `mobile_id`, `type_owns`, `created_at`, `updated_at`) VALUES
(12, 4, 14, 1, '2020-07-28 21:33:03', '2020-07-28 21:33:03'),
(15, 4, 15, 1, '2020-07-29 03:46:39', '2020-07-29 03:46:39'),
(18, 4, 16, 3, '2020-07-29 03:50:16', '2020-07-29 03:50:16'),
(19, 5, 14, 1, '2020-07-29 06:00:58', '2020-07-29 06:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('othman@gmail.com', '$2y$10$sTbLY7/38vPAjuTeI2nO1.DMAnDCQeW92ELqOo73QcMhEGKkN616C', '2020-07-28 10:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `type_battery`
--

CREATE TABLE `type_battery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_battery`
--

INSERT INTO `type_battery` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Li-Polymer', '2020-07-24 06:57:12', '2020-07-24 06:57:12'),
(2, 'Li-Ion', '2020-07-24 06:57:12', '2020-07-24 06:57:12'),
(3, 'MacroX', '2020-07-30 10:25:36', '2020-07-30 21:07:47'),
(4, 'nashwan', '2020-07-30 21:07:51', '2020-07-30 21:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `type_brand`
--

CREATE TABLE `type_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_brand`
--

INSERT INTO `type_brand` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Lenovo', '1.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(2, 'LG', '2.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(3, 'MEIZU', '3.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(4, 'Microsoft', '4.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(5, 'OPPO', '5.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(6, 'Samsung', '6.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(7, 'Sony', '7.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(8, 'Vivo', '8.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(9, 'Xiaomi', '9.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(10, 'NUBIA', '10.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(11, 'Google', '11.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(12, 'RAZER', '12.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(13, 'Realme', '13.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(14, 'INFINIX', '14.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(15, 'Apple', '15.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(16, 'ASUS', '16.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(17, 'HTC', '17.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(18, 'Huawei', '18.png', '2020-07-30 10:18:14', '2020-07-30 10:18:14'),
(84, '360', '5131318422020080403214315965558018102050113894066171436548645.webp', '2020-08-04 12:43:21', '2020-08-04 12:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `type_color`
--

CREATE TABLE `type_color` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hex` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_color`
--

INSERT INTO `type_color` (`id`, `name`, `hex`, `created_at`, `updated_at`) VALUES
(1, 'ڕەش', '#000', '2020-07-24 06:43:31', '2020-07-24 06:43:31'),
(2, 'سپی', '#fff', '2020-07-24 06:43:31', '2020-07-24 06:43:31'),
(3, 'ئاڵتونی', '#AE703F', '2020-07-24 06:43:31', '2020-07-24 06:43:31'),
(4, 'زیوی', '#B7BBC2', '2020-07-24 06:43:31', '2020-07-24 06:43:31'),
(5, 'شین', '#2088E3', '2020-07-24 06:43:31', '2020-07-24 06:43:31'),
(6, 'سور', '#E62C2C', '2020-07-24 06:43:31', '2020-07-24 06:43:31'),
(7, 'زەرد', '#EFBF23', '2020-07-26 11:57:17', '2020-07-26 11:57:17'),
(8, 'مۆر', '#BEA9E1', '2020-07-26 11:57:17', '2020-07-26 11:57:17'),
(9, 'سەوز', '#B8DEC8', '2020-07-30 06:02:12', '2020-07-30 20:58:25'),
(10, 'بێجی', '#e5deaf', '2020-08-04 12:45:01', '2020-08-04 12:45:01'),
(11, 'ڕەساسی', '#898b96', '2020-08-04 12:46:07', '2020-08-04 12:46:07'),
(12, 'پەمەیی', '#fb54b2', '2020-08-06 10:15:29', '2020-08-06 10:15:29'),
(13, 'سەوز', '#4dbb42', '2020-08-06 10:16:29', '2020-08-06 10:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `type_cpu_model`
--

CREATE TABLE `type_cpu_model` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_cpu_model`
--

INSERT INTO `type_cpu_model` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Qualcomm Snapdragon 865', '2020-07-24 19:59:46', '2020-07-24 19:59:46'),
(2, 'A12', '2020-07-24 19:59:46', '2020-07-24 19:59:46'),
(3, 'A13 Bionic', '2020-07-30 05:34:10', '2020-07-30 20:55:28'),
(4, 'MediaTek MT6753', '2020-08-04 12:47:04', '2020-08-04 12:47:04'),
(5, 'MediaTek Dimensity 820 MT6875', '2020-08-06 10:16:55', '2020-08-06 10:16:55'),
(6, 'k', '2020-08-06 10:17:02', '2020-08-06 10:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `type_gpu_model`
--

CREATE TABLE `type_gpu_model` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_gpu_model`
--

INSERT INTO `type_gpu_model` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Apple 4 core A13 GPU', '2020-07-24 20:03:21', '2020-07-24 20:03:21'),
(2, 'Qualcomm Adreno 618', '2020-07-24 20:03:21', '2020-07-24 20:03:21'),
(3, 'Apple 5 Core', '2020-07-30 05:32:48', '2020-07-30 05:32:48'),
(4, 'Apple 5 Core 2', '2020-07-30 05:32:57', '2020-07-30 20:55:01'),
(5, 'ARM Mali-T720 MP4', '2020-08-04 12:49:01', '2020-08-04 12:49:01'),
(6, 'ARM Mali-G57 MC5', '2020-08-06 10:17:19', '2020-08-06 10:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `type_material`
--

CREATE TABLE `type_material` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_material`
--

INSERT INTO `type_material` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'پلاستیک', '2020-07-24 06:40:53', '2020-07-24 06:40:53'),
(2, 'باغە', '2020-07-24 06:40:53', '2020-07-24 06:40:53'),
(3, 'ئەلەملیۆم', '2020-07-24 06:40:53', '2020-07-24 06:40:53'),
(4, 'شوشە', '2020-07-24 06:40:53', '2020-07-24 06:40:53'),
(5, 'sexwith', '2020-07-30 04:39:05', '2020-07-30 20:54:42'),
(6, 'کانزا', '2020-08-04 12:49:22', '2020-08-04 12:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `type_rear_camera`
--

CREATE TABLE `type_rear_camera` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_rear_camera`
--

INSERT INTO `type_rear_camera` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Standard', '2020-07-24 06:52:15', '2020-07-24 06:52:15'),
(2, 'Portrait mode', '2020-07-24 06:52:15', '2020-07-24 06:52:15'),
(3, 'Macro lens', '2020-07-24 06:52:15', '2020-07-24 06:52:15'),
(4, 'Wide Angle lens', '2020-07-24 06:52:15', '2020-07-24 06:52:15'),
(5, 'ToF 3D sensor', '2020-07-24 06:52:15', '2020-07-24 06:52:15'),
(6, 'Telephoto lens', '2020-07-24 06:52:15', '2020-07-24 06:52:15'),
(7, 'MacroBS', '2020-07-30 04:01:03', '2020-07-30 20:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `type_resolution`
--

CREATE TABLE `type_resolution` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_resolution`
--

INSERT INTO `type_resolution` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'FHD+', '2020-07-27 00:21:07', '2020-07-27 00:21:07'),
(2, 'FHD', '2020-07-27 00:21:07', '2020-07-27 00:21:07'),
(3, 'Ultra FHD+', '2020-07-30 03:57:21', '2020-07-30 03:57:21'),
(4, 'MacroD', '2020-07-30 04:00:33', '2020-07-30 20:48:18'),
(5, 'the good doctor', '2020-07-30 20:51:56', '2020-07-30 20:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `type_screen`
--

CREATE TABLE `type_screen` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_screen`
--

INSERT INTO `type_screen` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'LCD IPS', '2020-07-24 06:48:00', '2020-07-24 06:48:00'),
(2, 'Amoled', '2020-07-24 06:48:00', '2020-07-24 06:48:00'),
(3, 'Super Amoled', '2020-07-24 06:48:00', '2020-07-24 06:48:00'),
(4, 'LCDP', '2020-07-30 03:51:33', '2020-07-30 20:47:35'),
(5, 'Oled', '2020-08-06 10:18:46', '2020-08-06 10:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `type_software`
--

CREATE TABLE `type_software` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_software`
--

INSERT INTO `type_software` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Android', '2020-07-24 06:58:29', '2020-07-24 06:58:29'),
(2, 'IOS', '2020-07-24 06:58:29', '2020-07-24 06:58:29'),
(3, 'Windows', '2020-07-30 03:33:58', '2020-07-30 03:33:58'),
(4, 'Linux', '2020-07-30 03:37:58', '2020-07-30 03:37:58'),
(5, 'L', '2020-07-30 20:36:13', '2020-07-30 20:40:52');

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
  `rule` int(11) NOT NULL COMMENT '0 user / 1 admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `rule`, `created_at`, `updated_at`) VALUES
(6, 'nashwan', 'nashwan@gmail.com', '2020-07-29 18:50:05', '$2y$10$ZdjFELzurbtCPoKTUgPzXuEF0suBmX/eAJVq2NiOisl3BRrRtB6Q2', NULL, 1, '2020-07-29 18:49:21', '2020-07-31 08:40:07'),
(7, 'karwan', 'karwan@gmail.com', '2020-07-29 18:50:05', '$2y$10$ZdjFELzurbtCPoKTUgPzXuEF0suBmX/eAJVq2NiOisl3BRrRtB6Q2', NULL, 0, '2020-07-29 18:49:21', '2020-07-31 08:55:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `type_battery`
--
ALTER TABLE `type_battery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_brand`
--
ALTER TABLE `type_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_color`
--
ALTER TABLE `type_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_cpu_model`
--
ALTER TABLE `type_cpu_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_gpu_model`
--
ALTER TABLE `type_gpu_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_material`
--
ALTER TABLE `type_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_rear_camera`
--
ALTER TABLE `type_rear_camera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_resolution`
--
ALTER TABLE `type_resolution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_screen`
--
ALTER TABLE `type_screen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_software`
--
ALTER TABLE `type_software`
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
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mobile`
--
ALTER TABLE `mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `owns`
--
ALTER TABLE `owns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `type_battery`
--
ALTER TABLE `type_battery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `type_brand`
--
ALTER TABLE `type_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `type_color`
--
ALTER TABLE `type_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `type_cpu_model`
--
ALTER TABLE `type_cpu_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type_gpu_model`
--
ALTER TABLE `type_gpu_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type_material`
--
ALTER TABLE `type_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `type_rear_camera`
--
ALTER TABLE `type_rear_camera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `type_resolution`
--
ALTER TABLE `type_resolution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `type_screen`
--
ALTER TABLE `type_screen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `type_software`
--
ALTER TABLE `type_software`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
