-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2018 at 06:20 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nira_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Complaint', '2018-12-21 08:08:48', '2018-12-21 08:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `ticket_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'cghfgjhk;lj', '2018-12-21 01:16:55', '2018-12-21 01:16:55'),
(2, 10, 1, 'safdghjk', '2018-12-21 06:15:47', '2018-12-21 06:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `action`, `user_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Changed Ticket Visibility', 2, 'Changed Ticket with ID: FTYKDY2SUH visibility to Public', '2018-12-21 01:38:43', '2018-12-21 01:38:43'),
(2, 'Closed Ticket', 2, 'Closed Ticket with ID: ECN4OJSOCD', '2018-12-21 01:39:52', '2018-12-21 01:39:52'),
(3, 'Closed Ticket', 2, 'Closed Ticket with ID: NNRYTASK9N', '2018-12-21 01:40:28', '2018-12-21 01:40:28'),
(4, 'Changed Ticket Visibility', 2, 'Changed Ticket with ID: GPHQXX1QXR visibility to Public', '2018-12-21 06:51:39', '2018-12-21 06:51:39'),
(5, 'Changed Ticket Visibility', 2, 'Changed Ticket with ID: GPHQXX1QXR visibility to Public', '2018-12-21 06:51:44', '2018-12-21 06:51:44'),
(6, 'Changed Ticket Visibility', 2, 'Changed Ticket with ID: GPHQXX1QXR visibility to Public', '2018-12-21 06:52:21', '2018-12-21 06:52:21'),
(7, 'Closed Ticket', 2, 'Closed Ticket with ID: 3R5NNIAN6I', '2018-12-21 06:52:35', '2018-12-21 06:52:35'),
(8, 'Changed Ticket Visibility', 2, 'Changed Ticket with ID: ECN4OJSOCD visibility to Private', '2018-12-21 06:53:26', '2018-12-21 06:53:26'),
(9, 'Closed Ticket', 2, 'Closed Ticket with ID: XF9XQDUKHY', '2018-12-21 06:54:22', '2018-12-21 06:54:22'),
(10, 'Closed Ticket', 2, 'Closed Ticket with ID: WECJZ8IT1R', '2018-12-21 06:55:33', '2018-12-21 06:55:33'),
(11, 'Deleted Category', 2, 'Category Complaint has been Deleted', '2018-12-21 08:08:42', '2018-12-21 08:08:42'),
(12, 'Created New Category', 2, 'Category Complaint has been Created', '2018-12-21 08:08:48', '2018-12-21 08:08:48');

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
(3, '2018_03_05_144218_create_categories_table', 1),
(4, '2018_03_05_145253_create_tickets_table', 1),
(5, '2018_03_05_161420_create_comments_table', 1),
(6, '2018_03_27_231349_rename_is_public_column', 1),
(7, '2018_03_28_153242_create_logs_table', 1);

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
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `ticket_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `category_id`, `ticket_id`, `title`, `priority`, `message`, `status`, `created_at`, `updated_at`, `visibility`) VALUES
(1, 1, 1, 'UD4RFNHIAZ', 'myfirstcomplaint', 'low', 'akhilreddy', 'Open', '2018-12-21 00:42:43', '2018-12-21 00:42:43', 'public'),
(2, 1, 1, 'YXZ0O4TQPC', 'Prediction of heart Disease us', 'low', 'jhkl;fadsg', 'Open', '2018-12-21 00:43:14', '2018-12-21 00:43:14', 'public'),
(3, 1, 1, 'G6NJB8H7WB', 'khljdfasg', 'low', 'jkadsfhg;ldfajg', 'Open', '2018-12-21 00:49:24', '2018-12-21 00:49:24', 'public'),
(4, 1, 1, 'WECJZ8IT1R', 'Prediction of heart Dius', 'medium', 'djkfjlhsjl;', 'Closed', '2018-12-21 00:50:20', '2018-12-21 06:55:33', 'private'),
(5, 1, 1, 'XF9XQDUKHY', 'man,fdlk;ad', 'medium', 'hjkhljhj', 'Closed', '2018-12-21 00:51:51', '2018-12-21 06:54:22', 'private'),
(6, 1, 1, '3R5NNIAN6I', 'Prediction of heart Disease us', 'low', 'vhjkhlj', 'Closed', '2018-12-21 00:52:51', '2018-12-21 06:52:35', 'private'),
(7, 1, 1, 'NNRYTASK9N', 'xfgfhj', 'low', 'dfh;lgkjf', 'Closed', '2018-12-21 00:57:35', '2018-12-21 01:40:28', 'private'),
(8, 1, 1, 'ECN4OJSOCD', 'xfgfhj', 'low', 'dfh;lgkjf', 'Closed', '2018-12-21 01:04:10', '2018-12-21 01:39:52', 'private'),
(9, 1, 1, 'FTYKDY2SUH', 'e us', 'medium', 'hfjgkhljhjb', 'Open', '2018-12-21 01:16:14', '2018-12-21 01:38:43', 'public'),
(10, 1, 1, 'GPHQXX1QXR', 'aaaaaa', 'high', 'akhilreddy', 'Open', '2018-12-21 06:15:01', '2018-12-21 06:15:01', 'public'),
(11, 3, 1, 'ET6E2YPZ62', 'akb', 'high', 'abc', 'Open', '2018-12-21 11:15:14', '2018-12-21 11:15:14', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(62) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1234567887',
  `is_admin` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `telephone`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'akhi', 'mapvr3@gmail.com', '$2y$10$7Kf5y6cC8XIRHsEaKP3tTOt8FLdRWEtvyBc6qyrrXumAMaZ6AIibS', '1234567887', 0, 'NgpnEYD9mRLpmew0cDhKOFiYnXp5oIlCql3xIgMxRTimE885AlMTcBbFLZ43', '2018-12-20 23:53:33', '2018-12-20 23:53:33'),
(2, 'akki', 'mapvr@gmail.com', '$2y$10$DeY7NsBgMjApj8XE3.smeuSq/nDLsiCWag36IB6.8KV4yk/UaEQnm', '1234567887', 1, 'TxfVczgFWkkDF2YH7dORpgewiaWXP3EhyJn9dxoPqyc5SwhX0YOhk7K4L1p9', '2018-12-21 01:19:54', '2018-12-21 01:19:54'),
(3, 'reddy', 'akhil@gmail.com', '$2y$10$ZUtmRjdEAerYH1vzcqRvkeRx6QvMcxoIMAitT53c0YvpZe4L5rNmS', '1234567887', 0, 'iIjoZwbpRmhcoG0ChsQUtsuuDz3i48npLPYASc9KJWqLND2OVu0DXiu4SWXd', '2018-12-21 11:14:35', '2018-12-21 11:14:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
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
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_ticket_id_unique` (`ticket_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
