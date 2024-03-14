-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-03-14 03:59:28
-- 伺服器版本： 10.4.28-MariaDB
-- PHP 版本： 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `laravel_0307`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cats`
--

CREATE TABLE `cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `cats`
--

INSERT INTO `cats` (`id`, `name`, `mobile`, `created_at`, `updated_at`, `address`) VALUES
(2, 'amy', '0911', NULL, NULL, 1),
(3, 'bob', '0922', NULL, NULL, 2),
(4, 'cat', '0933', NULL, NULL, 3),
(5, 'dog', '0944', NULL, NULL, 4),
(6, 'fox', '0955', NULL, NULL, 5),
(7, 'egg', '0966', NULL, NULL, 6),
(8, 'kai', NULL, NULL, NULL, 999),
(10, 'x1', 'x1x1', NULL, NULL, 999),
(11, 'x2', 'x2x2', '2024-03-07 06:38:48', '2024-03-07 06:38:48', 999),
(12, 'x123', '444', '2024-03-07 08:27:54', '2024-03-07 08:27:54', 999),
(13, 's1', 's22', '2024-03-07 08:28:26', '2024-03-07 08:28:26', 999);

-- --------------------------------------------------------

--
-- 資料表結構 `dogs`
--

CREATE TABLE `dogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `dogs`
--

INSERT INTO `dogs` (`id`, `name`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'dog1', NULL, NULL, NULL),
(2, 'dog2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `fish`
--

CREATE TABLE `fish` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `loves`
--

CREATE TABLE `loves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `love` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `loves`
--

INSERT INTO `loves` (`id`, `love`, `created_at`, `updated_at`, `student_id`) VALUES
(1, 'laravel', NULL, NULL, 3),
(2, 'jquery', NULL, NULL, 4),
(3, 'photoshop', NULL, NULL, 4),
(4, 'php', NULL, NULL, 4),
(5, 'php', '2024-03-14 01:46:47', '2024-03-14 01:46:47', 5),
(6, 'laravel', '2024-03-14 01:46:47', '2024-03-14 01:46:47', 5),
(7, 'js', '2024-03-14 01:46:47', '2024-03-14 01:46:47', 5),
(13, 'b1', '2024-03-14 02:42:46', '2024-03-14 02:42:46', 6),
(14, 'b2', '2024-03-14 02:42:46', '2024-03-14 02:42:46', 6);

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_07_025859_create_cats_table', 1),
(6, '2024_03_07_031200_alter_cats_table', 2),
(7, '2024_03_07_032054_alter_cats_table', 2),
(8, '2024_03_07_051717_create_dogs_table', 3),
(18, '2024_03_07_152105_create_fish_table', 4),
(19, '2024_03_07_154712_create_students_table', 4),
(20, '2024_03_07_155111_create_mobiles_table', 5),
(21, '2024_03_13_155606_create_loves_table', 6);

-- --------------------------------------------------------

--
-- 資料表結構 `mobiles`
--

CREATE TABLE `mobiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `mobiles`
--

INSERT INTO `mobiles` (`id`, `mobile`, `created_at`, `updated_at`, `student_id`) VALUES
(5, '123', '2024-03-13 07:50:02', '2024-03-13 07:50:02', 3),
(6, '456', '2024-03-13 07:50:08', '2024-03-13 07:50:08', 4),
(7, '0926', '2024-03-14 01:46:47', '2024-03-14 01:46:47', 5),
(9, '0955', '2024-03-14 02:42:46', '2024-03-14 02:42:46', 6);

-- --------------------------------------------------------

--
-- 資料表結構 `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `students`
--

INSERT INTO `students` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'amy', '2024-03-13 07:50:02', '2024-03-13 07:50:02'),
(4, 'bob', '2024-03-13 07:50:08', '2024-03-13 07:50:08'),
(5, 'zip', '2024-03-14 01:46:47', '2024-03-14 01:46:47'),
(6, 'test', '2024-03-14 01:47:12', '2024-03-14 01:47:12');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `dogs`
--
ALTER TABLE `dogs`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 資料表索引 `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `loves`
--
ALTER TABLE `loves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loves_student_id_foreign` (`student_id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobiles_student_id_foreign` (`student_id`);

--
-- 資料表索引 `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- 資料表索引 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- 資料表索引 `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cats`
--
ALTER TABLE `cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `dogs`
--
ALTER TABLE `dogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `fish`
--
ALTER TABLE `fish`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `loves`
--
ALTER TABLE `loves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `loves`
--
ALTER TABLE `loves`
  ADD CONSTRAINT `loves_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- 資料表的限制式 `mobiles`
--
ALTER TABLE `mobiles`
  ADD CONSTRAINT `mobiles_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
