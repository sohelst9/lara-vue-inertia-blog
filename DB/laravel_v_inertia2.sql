-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2025 at 04:20 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_v_inertia2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `user_id`, `slug`, `description`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 1, 'web-development', 'Web development encompasses the creation and maintenance of websites and web applications. It involves frontend, backend, and full-stack development using technologies like HTML, CSS, JavaScript, PHP, Laravel, and more. Developers build user-friendly, high-performance websites and ensure seamless user experiences across devices.', 'uploads/category/1741329028.jpg', 'Web Development Tips, Tutorials & Best Practices', 'Explore the latest trends, tutorials, and best practices in web development, including PHP, Laravel, JavaScript, and frontend technologies.', 'web development, PHP, Laravel, JavaScript, frontend development, backend development, coding tutorials', '2025-03-07 00:30:28', '2025-03-07 00:30:28'),
(2, 'Game Development', 1, 'game-development', 'Game development can be a lucrative field with multiple monetization options, including ads, in-app purchases, and selling games on platforms like CodeCanyon, Google Play, and Steam. Learn how to turn your passion for game development into a sustainable income.', 'uploads/category/1741329234.jpg', 'How to Earn from Game Development', 'Explore different ways to monetize your game development skills through ads, in-app purchases, CodeCanyon sales, and more.', 'game monetization, earning from games, indie game development, Construct 3 earnings, CodeCanyon games', '2025-03-07 00:33:54', '2025-03-07 00:33:54'),
(3, 'History', 1, 'history', 'History', 'uploads/category/1741347717.jpg', 'History', 'History', 'History', '2025-03-07 05:41:57', '2025-03-07 05:41:57'),
(4, 'Sports', 1, 'sports', 'Eaque deserunt dolor', 'uploads/category/1741408381.jpg', 'Ipsam nesciunt volu', 'Tempora pariatur Se', 'Ipsa odit do impedi', '2025-03-07 22:33:01', '2025-03-07 22:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_03_180613_create_categories_table', 1),
(5, '2025_02_14_102601_create_tags_table', 1),
(6, '2025_02_14_102710_create_posts_table', 1),
(7, '2025_02_14_125115_create_post_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_view` bigint NOT NULL DEFAULT '0',
  `is_banner` tinyint NOT NULL DEFAULT '0',
  `is_best` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_popular` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `slug`, `sub_title`, `description`, `image`, `status`, `meta_title`, `meta_description`, `meta_keywords`, `total_view`, `is_banner`, `is_best`, `is_featured`, `is_popular`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'The Future of Web Development: Trends & Technologies, Trends & Technologies', 'the-future-of-web-development-trends-technologies-trends-technologies', 'Exploring the latest web development trends, tools, and frameworks shaping the digital landscape.', 'Web development is constantly evolving, with new technologies and frameworks emerging to enhance user experience and performance. The rise of JavaScript frameworks like React, Vue.js, and Angular has revolutionized frontend development. On the backend, PHP frameworks such as Laravel continue to dominate, offering robust features for web applications. AI-powered chatbots, Progressive Web Apps (PWAs), and headless CMS solutions are also gaining traction, making websites more dynamic and user-friendly. The adoption of WebAssembly is enabling high-performance applications on the web, while serverless computing is reducing infrastructure costs. As we move forward, security remains a top priority, with developers implementing better authentication and encryption methods. Keeping up with these trends ensures that developers stay ahead in the competitive tech landscape.', 'uploads/post/1741329851.jpg', 1, 'Future Trends in Web Development | Latest Technologies', 'Discover the latest web development trends, from JavaScript frameworks to AI-powered applications, and stay ahead in the tech industry.', 'web development, frontend trends, Laravel, JavaScript frameworks, PWAs, AI in web', 0, 1, 1, 0, 1, '2025-03-07 00:44:11', '2025-03-13 00:55:55'),
(2, 1, 2, 'How to Start Game Development: A Beginner’s Guide', 'how-to-start-game-development-a-beginners-guide', 'Learn the basics of game development, from choosing the right engine to publishing your first game.', 'Game development is an exciting field where creativity meets technology. Beginners can start by selecting a game engine like Construct 3, Unity, or Unreal Engine, depending on their preferred development approach. Construct 3 is ideal for those looking to create 2D games without coding, while Unity and Unreal Engine are powerful tools for 3D game development. Learning the basics of game design, such as level structuring, character movement, and physics interactions, is crucial. Monetization strategies like in-app purchases, ads, and premium game sales help developers earn from their creations. Platforms like Steam, Google Play, and itch.io provide excellent opportunities for game distribution. With dedication and practice, anyone can turn their game development passion into a successful career.', 'uploads/post/1741330706.jpg', 1, 'Beginner’s Guide to Game Development | Start Making Games', 'Learn how to start game development, choose the right engine, and create your first game with this step-by-step beginner’s guide.', 'game development, Construct 3, Unity, game engines, indie game development, monetization', 0, 1, 0, 1, 1, '2025-03-07 00:58:26', '2025-03-07 05:22:04'),
(3, 1, 3, 'Ea id autem enim inv', 'ea-id-autem-enim-inv', 'Doloribus anim beata', 'Dolores minima id si', 'uploads/post/1741360192.jpg', 1, 'Nihil natus totam co', 'Voluptatem optio co', 'Placeat odit rerum', 0, 0, 1, 0, 0, '2025-03-07 09:09:52', '2025-03-11 20:42:43'),
(4, 1, 3, 'Quis eius laudantium', 'quis-eius-laudantium', 'Similique modi liber', 'Assumenda adipisicin', 'uploads/post/1741360245.jpg', 1, 'Ut qui sit labore i', 'Vel veritatis minim', 'Consequuntur explica', 0, 0, 0, 0, 1, '2025-03-07 09:10:45', '2025-03-07 09:10:45'),
(5, 1, 2, 'Exercitationem tempo', 'exercitationem-tempo', 'Dolor accusantium es', 'Labore nostrud omnis', 'uploads/post/1741362247.jpg', 1, 'Non nihil officia ni', 'Iure modi enim ut el', 'Tenetur at voluptas', 0, 0, 0, 1, 0, '2025-03-07 09:44:07', '2025-03-07 09:44:07'),
(6, 1, 2, 'Molestiae ut alias i', 'molestiae-ut-alias-i', 'Autem doloribus elit', 'Irure ex explicabo', 'uploads/post/1741362277.jpg', 1, 'Nulla assumenda fuga', 'Aliquid harum assume', 'Atque molestiae tota', 0, 0, 1, 1, 1, '2025-03-07 09:44:37', '2025-03-07 09:44:37'),
(7, 1, 2, 'Velit quis esse porr', 'velit-quis-esse-porr', 'Minus mollit obcaeca', 'Ab harum anim molest', 'uploads/post/1741362318.jpg', 1, 'Rerum omnis ipsa ex', 'Qui ea sunt nemo est', 'Alias sit maiores a', 0, 0, 0, 1, 0, '2025-03-07 09:45:18', '2025-03-07 09:45:18'),
(8, 1, 1, 'In dolore qui amet', 'in-dolore-qui-amet', 'Amet id iste mollit', 'Est error quia delen', 'uploads/post/1741362368.jpg', 1, 'Cupiditate cupiditat', 'Ea nihil voluptate d', 'Cum lorem eos totam', 0, 0, 0, 1, 0, '2025-03-07 09:46:08', '2025-03-07 09:46:08'),
(9, 1, 1, 'Id aute ut qui delen', 'id-aute-ut-qui-delen', 'Laborum et expedita', 'Aspernatur sint qui', 'uploads/post/update_1741746020.jpg', 1, 'Consequatur nobis te', 'Rem sequi animi con', 'Aut corrupti volupt', 0, 1, 0, 0, 1, '2025-03-07 09:46:35', '2025-03-11 20:20:20'),
(10, 1, 3, 'Error aspernatur min', 'error-aspernatur-min', 'Excepturi odio iusto', 'Maxime soluta repudi', 'uploads/post/1741841057.jpg', 1, 'Autem et tenetur lab', 'Sunt fugiat non cil', 'Debitis voluptatem m', 0, 0, 1, 1, 0, '2025-03-12 22:44:17', '2025-03-12 22:44:17'),
(11, 1, 3, 'Nam Nam perferendis', 'nam-nam-perferendis', 'Dolorum qui aliqua', 'Adipisci rem et lore', 'uploads/post/1741841074.jpg', 1, 'Animi illum ad ape', 'Eveniet amet volup', 'Enim eveniet placea', 0, 0, 0, 1, 1, '2025-03-12 22:44:34', '2025-03-12 22:45:05'),
(12, 1, 3, 'Pariatur Qui et mag', 'pariatur-qui-et-mag', 'Veniam inventore ea', 'Aut at et nihil irur', 'uploads/post/1741841129.jpg', 1, 'Corrupti proident', 'Qui temporibus quia', 'Eum id ut et quasi p', 0, 0, 0, 1, 0, '2025-03-12 22:45:29', '2025-03-12 22:45:29'),
(13, 1, 3, 'Illo culpa expedita', 'illo-culpa-expedita', 'Ab magnam id doloru', 'Provident iure cons', 'uploads/post/1741841148.jpg', 1, 'Magna aperiam quam a', 'Pariatur Ipsum pro', 'Blanditiis quidem na', 0, 1, 1, 0, 0, '2025-03-12 22:45:48', '2025-03-12 22:45:48'),
(14, 1, 3, 'In sint aut maiores', 'in-sint-aut-maiores', 'Debitis eos eaque ex', 'Voluptas ut id conse', 'uploads/post/1741841169.jpg', 1, 'Unde est et reprehen', 'Nulla sed ipsam non', 'Odio incidunt dolor', 0, 0, 1, 0, 1, '2025-03-12 22:46:10', '2025-03-12 22:46:10'),
(15, 1, 3, 'Id et nisi est aper', 'id-et-nisi-est-aper', 'Iusto officiis aliqu', 'Dolore ex ad sit quo', 'uploads/post/1741841207.jpg', 1, 'Esse voluptatem Nam', 'Eum dolore aliqua R', 'Unde fuga Commodi v', 0, 0, 1, 0, 0, '2025-03-12 22:46:47', '2025-03-12 22:46:47'),
(16, 1, 3, 'Voluptatem Impedit', 'voluptatem-impedit', 'Eu ut dolorem laboru', 'Est rerum dolore nih', 'uploads/post/1741841292.jpg', 1, 'Non saepe in Nam pro', 'Incididunt incididun', 'Quibusdam et aliqua', 0, 1, 0, 0, 0, '2025-03-12 22:48:12', '2025-03-12 22:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 14, '2025-03-07 00:44:11', '2025-03-07 00:44:11'),
(2, 1, 15, '2025-03-07 00:44:11', '2025-03-07 00:44:11'),
(3, 2, 91, '2025-03-07 00:58:26', '2025-03-07 00:58:26'),
(4, 2, 92, '2025-03-07 00:58:26', '2025-03-07 00:58:26'),
(5, 2, 93, '2025-03-07 00:58:26', '2025-03-07 00:58:26'),
(6, 2, 94, '2025-03-07 00:58:26', '2025-03-07 00:58:26'),
(7, 3, 91, '2025-03-07 09:09:52', '2025-03-07 09:09:52'),
(18, 3, 109, '2025-03-07 09:09:52', '2025-03-07 09:09:52'),
(19, 3, 110, '2025-03-07 09:09:52', '2025-03-07 09:09:52'),
(85, 4, 118, '2025-03-07 09:10:45', '2025-03-07 09:10:45'),
(86, 4, 119, '2025-03-07 09:10:45', '2025-03-07 09:10:45'),
(87, 5, 89, '2025-03-07 09:44:07', '2025-03-07 09:44:07'),
(88, 5, 90, '2025-03-07 09:44:07', '2025-03-07 09:44:07'),
(89, 6, 98, '2025-03-07 09:44:37', '2025-03-07 09:44:37'),
(90, 6, 99, '2025-03-07 09:44:37', '2025-03-07 09:44:37'),
(91, 6, 66, '2025-03-07 09:44:37', '2025-03-07 09:44:37'),
(92, 7, 84, '2025-03-07 09:45:18', '2025-03-07 09:45:18'),
(93, 7, 85, '2025-03-07 09:45:18', '2025-03-07 09:45:18'),
(94, 8, 96, '2025-03-07 09:46:08', '2025-03-07 09:46:08'),
(95, 8, 14, '2025-03-07 09:46:08', '2025-03-07 09:46:08'),
(96, 8, 15, '2025-03-07 09:46:08', '2025-03-07 09:46:08'),
(97, 9, 120, '2025-03-07 09:46:35', '2025-03-07 09:46:35'),
(98, 9, 1, '2025-03-07 09:46:35', '2025-03-07 09:46:35'),
(99, 9, 2, '2025-03-07 09:46:35', '2025-03-07 09:46:35'),
(100, 3, 108, '2025-03-11 20:42:43', '2025-03-11 20:42:43'),
(101, 10, 31, '2025-03-12 22:44:17', '2025-03-12 22:44:17'),
(144, 11, 30, '2025-03-12 22:45:05', '2025-03-12 22:45:05'),
(145, 12, 5, '2025-03-12 22:45:29', '2025-03-12 22:45:29'),
(146, 13, 102, '2025-03-12 22:45:48', '2025-03-12 22:45:48'),
(147, 13, 103, '2025-03-12 22:45:48', '2025-03-12 22:45:48'),
(148, 13, 104, '2025-03-12 22:45:48', '2025-03-12 22:45:48'),
(149, 14, 30, '2025-03-12 22:46:10', '2025-03-12 22:46:10'),
(150, 14, 32, '2025-03-12 22:46:10', '2025-03-12 22:46:10'),
(151, 15, 37, '2025-03-12 22:46:47', '2025-03-12 22:46:47'),
(152, 15, 38, '2025-03-12 22:46:47', '2025-03-12 22:46:47'),
(153, 16, 46, '2025-03-12 22:48:12', '2025-03-12 22:48:12'),
(154, 16, 47, '2025-03-12 22:48:12', '2025-03-12 22:48:12'),
(155, 16, 48, '2025-03-12 22:48:12', '2025-03-12 22:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('j5ivTrEPoipY6izQpy0xTN37Ujc3JMaTDMcqSHZl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkh3aElKRU40R0dxT3AwdEhtazZISlZDU1FQOEJJZHBLZ3NXM3BCWCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO319', 1742012350),
('rfRdXrr7PFPLQLQCbVXAOwwbnRcaIOIZoQgaFRny', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia29ybVdKYTBlUkZzZllvbjJ0YkJJRDgzQXh5SVdhS1U3ajhaUHpxMSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1741850352);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Artificial Intelligence', 'artificial-intelligence', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(2, 'Machine Learning', 'machine-learning', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(3, 'Quantum Computing', 'quantum-computing', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(4, '5G Technology', '5g-technology', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(5, 'Blockchain', 'blockchain', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(6, 'Augmented Reality', 'augmented-reality', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(7, 'Virtual Reality', 'virtual-reality', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(8, 'Internet of Things', 'internet-of-things', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(9, 'Cybersecurity', 'cybersecurity', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(10, 'Data Science', 'data-science', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(11, 'Cloud Computing', 'cloud-computing', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(12, 'Big Data', 'big-data', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(13, 'Mobile Development', 'mobile-development', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(14, 'Software Engineering', 'software-engineering', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(15, 'Tech Innovation', 'tech-innovation', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(16, 'Smart Devices', 'smart-devices', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(17, 'Wearable Technology', 'wearable-technology', '2025-03-06 20:41:50', '2025-03-06 20:41:50'),
(18, 'Digital Transformation', 'digital-transformation', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(19, 'Smart Cities', 'smart-cities', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(20, 'Smart Home', 'smart-home', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(21, 'Minimalism', 'minimalism', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(22, 'Mindfulness', 'mindfulness', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(23, 'Mental Health', 'mental-health', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(24, 'Fitness Journey', 'fitness-journey', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(25, 'Sustainable Living', 'sustainable-living', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(26, 'Personal Growth', 'personal-growth', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(27, 'Work-Life Balance', 'work-life-balance', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(28, 'Productivity Hacks', 'productivity-hacks', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(29, 'Motivation', 'motivation', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(30, 'Healthy Habits', 'healthy-habits', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(31, 'Digital Detox', 'digital-detox', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(32, 'Self Care', 'self-care', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(33, 'Yoga', 'yoga', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(34, 'Healthy Lifestyle', 'healthy-lifestyle', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(35, 'Time Management', 'time-management', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(36, 'Stress Relief', 'stress-relief', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(37, 'Positive Thinking', 'positive-thinking', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(38, 'Life Hacks', 'life-hacks', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(39, 'Goal Setting', 'goal-setting', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(40, 'Journaling', 'journaling', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(41, 'Football', 'football', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(42, 'Basketball', 'basketball', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(43, 'Running', 'running', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(44, 'Swimming', 'swimming', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(45, 'Gym Workouts', 'gym-workouts', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(46, 'Strength Training', 'strength-training', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(47, 'Cycling', 'cycling', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(48, 'Martial Arts', 'martial-arts', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(49, 'Pilates', 'pilates', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(50, 'CrossFit', 'crossfit', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(51, 'Outdoor Adventures', 'outdoor-adventures', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(52, 'Rock Climbing', 'rock-climbing', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(53, 'Triathlon', 'triathlon', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(54, 'Endurance Training', 'endurance-training', '2025-03-06 20:41:51', '2025-03-06 20:41:51'),
(55, 'HIIT Workouts', 'hiit-workouts', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(56, 'Sports Nutrition', 'sports-nutrition', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(57, 'Tennis', 'tennis', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(58, 'Golf', 'golf', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(59, 'Track and Field', 'track-and-field', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(60, 'Boxing', 'boxing', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(61, 'Vegan Recipes', 'vegan-recipes', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(62, 'Healthy Eating', 'healthy-eating', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(63, 'Quick Recipes', 'quick-recipes', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(64, 'Comfort Food', 'comfort-food', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(65, 'Meal Prep', 'meal-prep', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(66, 'Keto Diet', 'keto-diet', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(67, 'Low Carb', 'low-carb', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(68, 'Gluten-Free', 'gluten-free', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(69, 'Food Pairings', 'food-pairings', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(70, 'Desserts', 'desserts', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(71, 'Smoothie Bowls', 'smoothie-bowls', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(72, 'Baking', 'baking', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(73, 'International Cuisine', 'international-cuisine', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(74, 'Mediterranean Diet', 'mediterranean-diet', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(75, 'Paleo Recipes', 'paleo-recipes', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(76, 'Farm-to-Table', 'farm-to-table', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(77, 'Homemade Sauces', 'homemade-sauces', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(78, 'Brunch Ideas', 'brunch-ideas', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(79, 'Vegetarian Meals', 'vegetarian-meals', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(80, 'Juicing', 'juicing', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(81, 'Esports', 'esports', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(82, 'PC Gaming', 'pc-gaming', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(83, 'Console Gaming', 'console-gaming', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(84, 'Mobile Games', 'mobile-games', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(85, 'Strategy Games', 'strategy-games', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(86, 'Adventure Games', 'adventure-games', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(87, 'RPG Games', 'rpg-games', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(88, 'FPS Games', 'fps-games', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(89, 'Multiplayer Games', 'multiplayer-games', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(90, 'VR Gaming', 'vr-gaming', '2025-03-06 20:41:52', '2025-03-06 20:41:52'),
(91, 'Game Development', 'game-development', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(92, 'Indie Games', 'indie-games', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(93, 'Gaming News', 'gaming-news', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(94, 'Online Gaming', 'online-gaming', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(95, 'Retro Games', 'retro-games', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(96, 'Board Games', 'board-games', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(97, 'Puzzle Games', 'puzzle-games', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(98, 'Action Games', 'action-games', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(99, 'Simulation Games', 'simulation-games', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(100, 'Fantasy Games', 'fantasy-games', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(101, 'Ancient Civilizations', 'ancient-civilizations', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(102, 'World Wars', 'world-wars', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(103, 'Renaissance Period', 'renaissance-period', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(104, 'Medieval History', 'medieval-history', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(105, 'Industrial Revolution', 'industrial-revolution', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(106, 'Cold War', 'cold-war', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(107, 'Modern History', 'modern-history', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(108, 'Historical Figures', 'historical-figures', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(109, 'Ancient Egypt', 'ancient-egypt', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(110, 'Greek Mythology', 'greek-mythology', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(111, 'Roman Empire', 'roman-empire', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(112, 'Viking History', 'viking-history', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(113, 'World History', 'world-history', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(114, 'Colonialism', 'colonialism', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(115, 'The Great Depression', 'the-great-depression', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(116, 'Revolutions', 'revolutions', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(117, 'Historical Events', 'historical-events', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(118, 'American History', 'american-history', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(119, 'Cultural History', 'cultural-history', '2025-03-06 20:41:53', '2025-03-06 20:41:53'),
(120, 'Historical Discoveries', 'historical-discoveries', '2025-03-06 20:41:53', '2025-03-06 20:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Sohel Rana', 'sohelrana@gmail.com', NULL, '$2y$12$VxduQZ4Eq2diwbGs0/7n8OwfMQqBdqboWOTSukCtMA4tV1Eyfvdm2', NULL, '2025-03-07 00:24:14', '2025-03-07 00:24:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
