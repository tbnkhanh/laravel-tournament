-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 08, 2024 at 11:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tournament`
--

-- --------------------------------------------------------

--
-- Table structure for table `chirps`
--

CREATE TABLE `chirps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chirps`
--

INSERT INTO `chirps` (`id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(3, 2, 'zl', '2024-02-29 21:35:51', '2024-03-03 19:42:06'),
(7, 2, 'gfn', '2024-03-01 01:53:27', '2024-03-01 01:53:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tournament_id` bigint(20) UNSIGNED NOT NULL,
  `round_number` int(11) NOT NULL,
  `match_number` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `team1_id` bigint(20) UNSIGNED NOT NULL,
  `team2_id` bigint(20) UNSIGNED NOT NULL,
  `winner_team_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_02_29_084721_create_chirps_table', 1),
(11, '2024_03_03_122533_create_tournaments_table', 2),
(12, '2024_03_03_123135_create_matches_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `in_game_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `user_id`, `team_id`, `in_game_name`, `created_at`, `updated_at`) VALUES
(2, 4, 1, 'gohan', '2024-03-04 10:16:42', '2024-03-06 23:44:52'),
(36, 6, 2, 'darius', '2024-03-07 06:37:38', '2024-03-06 23:46:27'),
(38, 5, 2, 'yasuo1', '2024-03-07 06:42:28', '2024-03-07 06:42:28'),
(41, 7, 1, 'frieza', '2024-03-07 09:25:24', '2024-03-07 09:25:24'),
(42, 8, 3, 'gano', '2024-03-07 09:25:54', '2024-03-07 09:25:54'),
(43, 9, 3, 'bulk', '2024-03-07 09:25:54', '2024-03-07 09:25:54'),
(44, 10, 4, 'mata', '2024-03-07 09:28:16', '2024-03-07 09:28:16'),
(45, 11, 4, 'vladi', '2024-03-07 09:28:16', '2024-03-07 09:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `tournament_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_name`, `tournament_id`, `created_at`, `updated_at`) VALUES
(1, 'Team KNA', 1, '2024-03-04 09:20:41', '2024-03-04 09:20:41'),
(2, 'Team PTIT', 1, '2024-03-06 23:37:38', '2024-03-06 23:37:38'),
(3, 'Team JSA', 1, '2024-03-07 02:25:54', '2024-03-07 02:25:54'),
(4, 'Team MAT', 1, '2024-03-07 02:28:16', '2024-03-07 02:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tournament_name` varchar(255) NOT NULL,
  `tournament_description` varchar(255) NOT NULL,
  `game_played` varchar(255) NOT NULL,
  `team_size` varchar(11) NOT NULL,
  `team_number` int(11) NOT NULL,
  `is_genarate_bracket` varchar(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tournaments`
--

INSERT INTO `tournaments` (`id`, `user_id`, `tournament_name`, `tournament_description`, `game_played`, `team_size`, `team_number`, `is_genarate_bracket`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 2, 'League of Legends World Championship', 'This tournament is about League of Legends, this is the World Championship', 'FIFA', '2', 4, '0', '2024-03-07', '2024-03-13', '2024-03-03 03:16:10', '2024-03-08 03:00:51'),
(2, 2, 'CS:GO World Championship', 'Description about CS:GO World Championship', 'CS:GO', '3', 8, '0', '2024-03-06', '2024-03-07', '2024-03-04 01:32:33', '2024-03-06 03:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'viewer',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Viewer', 'viewer@gmail.com', NULL, '$2y$12$X8rFT8WIlz4El4E40z2Th.wlfqh9XoxMp29HMn4b7gw9z.xynChT6', 'viewer', NULL, '2024-02-29 20:48:22', '2024-03-03 19:11:02'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$12$/ZhHVHsR5n21qBpfbBDZjeSyBjMW2C1CSjVn0HW2rvbAZfI8hr7Rm', 'admin', NULL, '2024-02-29 20:49:34', '2024-02-29 21:42:08'),
(4, 'Hai', 'player1@gmail.com', NULL, '$2y$12$PfP/Mxfuf4oQ0fRPdMM3v.NujXzPTfDaNNdtn8tETE2AVwyLYmMNK', 'player', NULL, '2024-03-04 03:07:58', '2024-03-04 03:07:58'),
(5, 'Hoang', 'player2@gmail.com', NULL, '$2y$12$ej/1e4bJv1WrIG85nuONvuX9Lq/f4Q3xeip0pvYm4eo.bjK..iPNe', 'player', NULL, '2024-03-04 03:08:54', '2024-03-04 03:08:54'),
(6, 'Long', 'player3@gmail.com', NULL, '$2y$12$F/QhhtKmEaqkzbq7/BSvMOthQycuKVtbbQCp.rPfzcHvP2h054mzi', 'player', NULL, '2024-03-04 18:37:14', '2024-03-04 18:37:14'),
(7, 'Thanh', 'player4@gmail.com', NULL, '$2y$12$0sBRdDfYZejuiddXSHTuV.99d86JD3WNzzGHKX7KKsIVCziuxzBmS', 'player', NULL, '2024-03-04 18:38:01', '2024-03-04 18:38:01'),
(8, 'Vuong', 'player5@gmail.com', NULL, '$2y$12$WtIH86wIRvPmxFz/Pj3EmOgad2fItm02jXQ3NA9q.nFRGasASk/r.', 'player', NULL, '2024-03-04 20:19:42', '2024-03-04 20:19:42'),
(9, 'Khai', 'player6@gmail.com', NULL, '$2y$12$IthKHbiBBQmrI/xLMyoFxuCm7sguCpjgQEFPtK2rVA0AwEDXXrEyu', 'player', NULL, '2024-03-06 03:02:01', '2024-03-06 03:02:01'),
(10, 'Dan', 'player7@gmail.com', NULL, '$2y$12$4REUlCSjpy4s68nYPLWbw..OOnmr/gOj9hPjII4CFseT9rzpIxq9O', 'player', NULL, '2024-03-07 02:26:48', '2024-03-07 02:26:48'),
(11, 'Bao', 'player8@gmail.com', NULL, '$2y$12$wh.Yvrq3XAdKdS.xQdtWPem6qoOMfJup5UuLhP/b1/pR3T0M66bXu', 'player', NULL, '2024-03-07 02:27:15', '2024-03-07 02:27:15'),
(12, 'Khanh', 'player9@gmail.com', NULL, '$2y$12$6ulzlGmfu7Ym3hkLCvNZWeP9n15VYeUHCCYcxlXwW0bNd8ndglzJe', 'player', NULL, '2024-03-01 01:52:47', '2024-03-03 19:10:43'),
(13, 'Dat', 'player10@gmail.com', NULL, '$2y$12$xejEbPWV3k1ZWj5P6lR7T.MhfoalJkpm2tOwj93e5U/9uxlN//4Bi', 'player', NULL, '2024-03-08 02:52:02', '2024-03-08 02:52:02'),
(14, 'Bang', 'player11@gmail.com', NULL, '$2y$12$KwjDAFmnyfP.fDBP/SbUJefWi7fVMS6IfepusGDLM3Dhup2yZblF2', 'player', NULL, '2024-03-08 02:52:20', '2024-03-08 02:52:20'),
(15, 'Eric', 'player12@gmail.com', NULL, '$2y$12$cSirIYy15MI2e7I37jNOKOFjSE2qYch2ADFX6HvoB1hWYP1.gu0Ue', 'player', NULL, '2024-03-08 02:52:39', '2024-03-08 02:52:39'),
(16, 'Naka', 'player13@gmail.com', NULL, '$2y$12$uRgN/gNq5ZNa.YhhRIxQwelCCl8g/KAw2iVsirqM0CbTKjrO0J0pO', 'player', NULL, '2024-03-08 02:52:52', '2024-03-08 02:52:52'),
(17, 'Uma', 'player14@gmail.com', NULL, '$2y$12$qM1FP46vg7tG5aHHQ3DfXOCTbTQpMOfU9gQJHjfQce3p157Bre6oa', 'player', NULL, '2024-03-08 02:53:32', '2024-03-08 02:53:32'),
(18, 'Onaka', 'player15@gmail.com', NULL, '$2y$12$2.Qx3r8ynrYu2KCmyG6hIOYzB91Oo0mzrP0XWX1hner7Yt2dBcIRS', 'player', NULL, '2024-03-08 02:53:57', '2024-03-08 02:53:57'),
(19, 'Jina', 'player16@gmail.com', NULL, '$2y$12$2ky9nv554ssW4g1SelwQYu8luyMWYuAdbb3MGpXcPcbb6EZbXQrwe', 'player', NULL, '2024-03-08 02:55:01', '2024-03-08 02:55:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chirps`
--
ALTER TABLE `chirps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chirps_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matches_team1_id_foreign` (`team1_id`),
  ADD KEY `matches_team2_id_foreign` (`team2_id`),
  ADD KEY `matches_tournament_id_foreign` (`tournament_id`),
  ADD KEY `matches_winner_team_id_foreign` (`winner_team_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_team_id_foreign` (`team_id`),
  ADD KEY `players_user_id_foreign` (`user_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_tournament_id_foreign` (`tournament_id`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournaments_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `chirps`
--
ALTER TABLE `chirps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chirps`
--
ALTER TABLE `chirps`
  ADD CONSTRAINT `chirps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_team1_id_foreign` FOREIGN KEY (`team1_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matches_team2_id_foreign` FOREIGN KEY (`team2_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matches_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `matches_winner_team_id_foreign` FOREIGN KEY (`winner_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `players_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `team_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD CONSTRAINT `tournaments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
