-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2018 at 05:21 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'laravel', '2018-04-26 07:01:10', '2018-04-26 07:01:10'),
(2, 'Wordpress', '2018-04-26 07:01:25', '2018-04-26 07:01:25'),
(3, 'Vue js', '2018-04-26 07:02:04', '2018-04-26 07:02:04'),
(4, 'PHP', '2018-04-26 07:02:17', '2018-04-26 07:02:17'),
(5, 'Python', '2018-04-26 07:24:16', '2018-04-26 07:24:16'),
(6, 'Django', '2018-04-26 12:18:19', '2018-04-26 12:18:19');

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
(33, '2014_10_12_000000_create_users_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2018_03_21_182436_create_posts_table', 1),
(36, '2018_03_21_183117_create_categories_table', 1),
(37, '2018_03_26_073324_create_tags_table', 1),
(38, '2018_03_26_075356_create_post_tag_table', 1),
(39, '2018_03_31_155207_create_profiles_table', 1),
(40, '2018_04_19_172044_create_settings_table', 2),
(41, '2018_05_03_075648_insert_user_id_column', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'What is php ?', 'what-is-php', 'um has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versio', 4, 'uploads/posts/15248360686.jpg', NULL, '2018-04-26 07:21:03', '2018-05-02 21:17:27', 2),
(2, 'What is laravel ?', 'what-is-laravel', 'um has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versio', 1, 'uploads/posts/1524836078404-img.png', NULL, '2018-04-26 07:22:04', '2018-04-27 07:34:38', 1),
(3, 'What is wordpress ?', 'what-is-wordpress', 'um has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versio', 2, 'uploads/posts/15247659702.png', NULL, '2018-04-26 07:22:26', '2018-04-26 12:06:10', 1),
(4, 'What is django ?', 'what-is-django', 'um has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versio', 6, 'uploads/posts/15247659331.png', NULL, '2018-04-26 07:23:11', '2018-05-02 11:16:24', 2),
(5, 'What is python ?', 'what-is-python', 'um has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versio', 5, 'uploads/posts/15247658703.jpg', NULL, '2018-04-26 07:24:53', '2018-04-26 12:04:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(5, 3, 2, NULL, NULL),
(7, 4, 5, NULL, NULL),
(8, 5, 6, NULL, NULL),
(9, 2, 1, NULL, NULL),
(10, 1, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/1522576890php7-transparent.png', 1, 'Nothing to say about this user.', 'https://facebook.com/lelinrashed', 'https://youtube.com/lelinrashed', '2018-04-01 02:00:55', '2018-04-01 04:03:09'),
(2, 'uploads/avatars/1522577433HD-149952.jpg', 2, 'This is my second profile.', 'https://facebook.com/lelinrashed', 'https://youtube.com/lelinrashed', '2018-04-01 02:01:58', '2018-04-01 04:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Laravel\'s blog', '01521417726', 'diitrashed@gmail.com', 'Merul Badda, Dhaka, Bangladesh', '2018-04-22 11:02:36', '2018-04-26 06:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', '2018-04-22 10:32:31', '2018-04-22 10:32:31'),
(2, 'wordpress', '2018-04-26 07:18:50', '2018-04-26 07:18:50'),
(3, 'js', '2018-04-26 07:18:58', '2018-04-26 07:18:58'),
(5, 'Django', '2018-04-26 07:19:18', '2018-04-26 07:19:18'),
(6, 'python', '2018-04-26 07:23:52', '2018-04-26 07:23:52'),
(7, 'PHP', '2018-05-02 21:20:32', '2018-05-02 21:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Md.Rashedul Islam', 'lelin.rashed784@gmail.com', 1, '$2y$10$rYNaW9qwffXXKhIB4JzAmuO2pew9AxhNNyVYdiHtCU/ipdwtMxCoy', 'qjSdefiJorPtC8qwITJoW4Myq3e0DKF6vWTzI8gaWEfiy0D21SBPhAwZKYxP', '2018-04-01 02:00:55', '2018-04-01 04:50:46'),
(2, 'lelinrashed', 'lelinbabu784@gmail.com', 0, '$2y$10$39cKCBRv6FmENCH0NXDDVu9TUq1Bw6dJy5I6eGEB.UPqzFro6hrxG', 'XPLIyYrkWF8qmXjp3S7ffAeny9w5J07PHdJIeLjRJFnVBYHqMABfVGueZRzj', '2018-04-01 02:01:58', '2018-04-19 10:40:55');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
