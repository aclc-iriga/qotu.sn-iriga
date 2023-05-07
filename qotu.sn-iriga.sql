-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 06:45 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qotu.sn-iriga`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `number`, `name`, `avatar`, `username`, `password`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, '2023-02-19 07:36:32', '2023-05-05 09:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `arrangements`
--

CREATE TABLE `arrangements` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `competition_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `competition_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'pageant-night', 'Pageant Night', '2023-04-06 13:25:10', '2023-04-06 13:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 'qotu.sn-iriga-2023', 'Queen of the Universe 2023', '2023-04-06 13:24:04', '2023-05-03 19:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `event_id`, `title`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Poise, Projection & Carriage', 30, '2023-05-03 05:59:16', '2023-05-03 05:59:16'),
(2, 1, 'Stage Presence & Individual Presentation', 40, '2023-05-03 05:59:42', '2023-05-03 05:59:42'),
(3, 1, 'Overall Performance', 20, '2023-05-03 05:59:55', '2023-05-03 05:59:55'),
(4, 1, 'Audience Impact', 10, '2023-05-03 06:00:07', '2023-05-03 06:00:07'),
(5, 3, 'Poise, Projection, Carriage & Stance', 30, '2023-05-03 06:00:28', '2023-05-03 06:00:28'),
(6, 3, 'Body Figure & Beauty of Face', 30, '2023-05-03 06:00:52', '2023-05-03 06:00:52'),
(7, 3, 'Suitability & Overall Performance', 30, '2023-05-03 06:01:13', '2023-05-03 06:01:13'),
(8, 3, 'Audience Impact', 10, '2023-05-03 06:01:23', '2023-05-03 06:01:23'),
(9, 2, 'Uniqueness of the Attire', 30, '2023-05-03 06:01:59', '2023-05-03 06:01:59'),
(10, 2, 'Suitability of the Festival Costume', 30, '2023-05-03 06:02:13', '2023-05-03 06:02:13'),
(11, 2, 'Carriage, Poise, Projection & Stance', 30, '2023-05-03 06:02:34', '2023-05-03 06:02:44'),
(12, 2, 'Overall Impact', 10, '2023-05-03 06:02:59', '2023-05-03 06:02:59'),
(13, 5, 'Uniqueness of the Piece', 30, '2023-05-03 06:03:15', '2023-05-03 06:03:15'),
(14, 5, 'Execution and Mastery', 30, '2023-05-03 06:03:30', '2023-05-03 06:03:30'),
(15, 5, 'Relevance and Content of Talent', 30, '2023-05-03 06:03:46', '2023-05-03 06:03:46'),
(16, 5, 'Audience Impact', 10, '2023-05-03 06:04:04', '2023-05-03 06:04:04'),
(17, 6, 'Poise, Projection and Carriage', 30, '2023-05-03 06:04:26', '2023-05-03 06:04:26'),
(18, 6, 'Stage Presence & Overall Performance', 30, '2023-05-03 06:04:45', '2023-05-03 06:04:45'),
(19, 6, 'Beauty of Face & Suitability of Gown', 30, '2023-05-03 06:05:19', '2023-05-03 06:05:19'),
(20, 6, 'Audience Impact', 10, '2023-05-03 06:05:38', '2023-05-03 06:05:38'),
(21, 4, 'Delivery, Tonality, & Manner of Answering', 30, '2023-05-03 06:06:07', '2023-05-03 06:06:07'),
(22, 4, 'Beauty of Face & Overall Look', 30, '2023-05-03 06:06:25', '2023-05-03 06:06:25'),
(23, 4, 'Content of the Answer', 30, '2023-05-03 06:06:38', '2023-05-03 06:06:38'),
(24, 4, 'Audience Impact', 10, '2023-05-03 06:06:47', '2023-05-03 06:06:47'),
(25, 7, 'Intelligence', 50, '2023-05-03 06:07:27', '2023-05-03 06:07:27'),
(26, 7, 'Beauty of the Face', 40, '2023-05-03 06:07:42', '2023-05-03 06:07:42'),
(27, 7, 'Audience Impact', 10, '2023-05-03 06:07:55', '2023-05-03 06:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eliminations`
--

CREATE TABLE `eliminations` (
  `id` mediumint(9) NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eliminations`
--

INSERT INTO `eliminations` (`id`, `event_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2023-05-06 12:31:56', '2023-05-06 12:31:56'),
(2, 7, 2, '2023-05-06 12:31:57', '2023-05-06 12:31:57'),
(3, 7, 3, '2023-05-06 12:31:58', '2023-05-06 12:31:58'),
(4, 7, 4, '2023-05-06 12:31:58', '2023-05-06 12:31:58'),
(5, 7, 5, '2023-05-06 12:31:59', '2023-05-06 12:31:59'),
(6, 7, 6, '2023-05-06 12:31:59', '2023-05-06 12:31:59'),
(7, 7, 7, '2023-05-06 12:32:00', '2023-05-06 12:32:00'),
(8, 7, 8, '2023-05-06 12:32:00', '2023-05-06 12:32:00'),
(9, 7, 9, '2023-05-06 12:32:01', '2023-05-06 12:32:01'),
(10, 7, 10, '2023-05-06 12:32:01', '2023-05-06 12:32:01'),
(11, 7, 11, '2023-05-06 12:32:02', '2023-05-06 12:32:02'),
(12, 7, 12, '2023-05-06 12:32:03', '2023-05-06 12:32:03'),
(13, 7, 13, '2023-05-06 12:32:03', '2023-05-06 12:32:03'),
(14, 7, 14, '2023-05-06 12:32:03', '2023-05-06 12:32:03'),
(15, 5, 1, '2023-05-06 12:33:45', '2023-05-06 12:33:45'),
(16, 5, 2, '2023-05-06 12:33:45', '2023-05-06 12:33:45'),
(17, 5, 3, '2023-05-06 12:33:46', '2023-05-06 12:33:46'),
(18, 5, 4, '2023-05-06 12:33:47', '2023-05-06 12:33:47'),
(19, 5, 5, '2023-05-06 12:33:48', '2023-05-06 12:33:48'),
(20, 5, 7, '2023-05-06 12:33:49', '2023-05-06 12:33:49'),
(21, 5, 9, '2023-05-06 12:33:51', '2023-05-06 12:33:51'),
(22, 5, 10, '2023-05-06 12:33:52', '2023-05-06 12:33:52'),
(23, 5, 12, '2023-05-06 12:33:53', '2023-05-06 12:33:53'),
(24, 5, 13, '2023-05-06 12:33:54', '2023-05-06 12:33:54'),
(25, 5, 14, '2023-05-06 12:33:55', '2023-05-06 12:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `category_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'production', 'Production', '2023-05-03 05:53:05', '2023-05-03 05:53:05'),
(2, 1, 'national-costume', 'National Costume', '2023-05-03 05:53:35', '2023-05-07 04:41:23'),
(3, 1, 'swimsuit', 'Swimsuit', '2023-05-03 05:53:20', '2023-05-07 04:41:37'),
(4, 1, 'preliminary-q-a', 'Preliminary Q & A', '2023-05-03 05:54:24', '2023-05-07 04:43:12'),
(5, 1, 'talent', 'Talent', '2023-05-03 05:53:48', '2023-05-07 04:44:03'),
(6, 1, 'long-gown', 'Long Gown', '2023-05-03 05:53:59', '2023-05-07 04:44:23'),
(7, 1, 'final-q-a', 'Final Q & A', '2023-05-03 05:54:56', '2023-05-03 05:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `number`, `name`, `avatar`, `username`, `password`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Judge 01', 'no-avatar.jpg', 'judge01', 'judge01', NULL, NULL, '2023-04-06 13:58:11', '2023-04-06 13:58:11'),
(2, 2, 'Judge 02', 'no-avatar.jpg', 'judge02', 'judge02', NULL, NULL, '2023-04-06 13:58:28', '2023-04-06 13:58:28'),
(3, 3, 'Judge 03', 'no-avatar.jpg', 'judge03', 'judge03', NULL, NULL, '2023-04-06 13:58:42', '2023-04-06 13:58:42'),
(4, 4, 'Judge 04', 'no-avatar.jpg', 'judge04', 'judge04', NULL, NULL, '2023-04-06 13:59:26', '2023-04-06 13:59:26'),
(5, 5, 'Judge 05', 'no-avatar.jpg', 'judge05', 'judge05', NULL, NULL, '2023-04-06 14:00:00', '2023-04-06 14:00:00'),
(6, 6, 'Judge 06', 'no-avatar.jpg', 'judge06', 'judge06', NULL, NULL, '2023-05-05 09:35:36', '2023-05-05 09:40:01'),
(7, 7, 'Judge 07', 'no-avatar.jpg', 'judge07', 'judge07', NULL, NULL, '2023-05-05 09:37:40', '2023-05-05 09:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `judge_event`
--

CREATE TABLE `judge_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `is_chairman` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge_event`
--

INSERT INTO `judge_event` (`id`, `judge_id`, `event_id`, `is_chairman`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2023-05-03 18:55:50', '2023-05-03 19:11:06'),
(2, 1, 3, 0, '2023-05-03 18:55:52', '2023-05-03 19:11:08'),
(3, 1, 2, 0, '2023-05-03 18:55:55', '2023-05-03 19:11:12'),
(4, 1, 5, 0, '2023-05-03 18:55:58', '2023-05-03 19:11:18'),
(5, 1, 6, 0, '2023-05-03 18:56:00', '2023-05-03 19:11:21'),
(6, 1, 4, 0, '2023-05-03 18:56:38', '2023-05-03 19:11:24'),
(7, 1, 7, 0, '2023-05-03 18:56:41', '2023-05-03 19:11:29'),
(8, 2, 1, 0, '2023-05-03 18:57:11', '2023-05-03 19:11:32'),
(9, 2, 3, 0, '2023-05-03 18:58:04', '2023-05-03 19:11:36'),
(10, 2, 2, 0, '2023-05-03 18:58:07', '2023-05-03 19:11:39'),
(11, 2, 5, 0, '2023-05-03 18:58:10', '2023-05-03 19:11:41'),
(12, 2, 6, 0, '2023-05-03 18:58:37', '2023-05-03 19:11:44'),
(13, 2, 4, 0, '2023-05-03 18:58:39', '2023-05-03 19:11:47'),
(14, 2, 7, 0, '2023-05-03 18:58:42', '2023-05-03 19:11:51'),
(15, 3, 1, 0, '2023-05-03 18:58:46', '2023-05-03 19:11:54'),
(16, 3, 3, 0, '2023-05-03 18:58:48', '2023-05-03 19:11:57'),
(17, 3, 2, 0, '2023-05-03 18:58:51', '2023-05-03 19:12:01'),
(18, 3, 5, 0, '2023-05-03 18:58:53', '2023-05-03 19:12:04'),
(19, 3, 6, 0, '2023-05-03 18:58:56', '2023-05-03 19:12:08'),
(20, 3, 4, 0, '2023-05-03 18:58:58', '2023-05-03 19:12:13'),
(21, 3, 7, 0, '2023-05-03 18:59:01', '2023-05-03 19:12:17'),
(22, 4, 1, 0, '2023-05-03 18:59:23', '2023-05-03 19:12:20'),
(23, 4, 3, 0, '2023-05-03 18:59:25', '2023-05-03 19:12:23'),
(24, 4, 2, 0, '2023-05-03 18:59:38', '2023-05-03 19:12:27'),
(25, 4, 5, 0, '2023-05-03 18:59:41', '2023-05-03 19:12:30'),
(26, 4, 6, 0, '2023-05-03 18:59:46', '2023-05-03 19:12:33'),
(27, 4, 4, 0, '2023-05-03 18:59:48', '2023-05-03 19:12:37'),
(28, 4, 7, 0, '2023-05-03 18:59:50', '2023-05-03 19:12:40'),
(29, 5, 1, 0, '2023-05-03 19:00:01', '2023-05-03 19:12:43'),
(30, 5, 3, 0, '2023-05-03 19:00:03', '2023-05-03 19:12:47'),
(31, 5, 2, 0, '2023-05-03 19:00:06', '2023-05-03 19:12:52'),
(32, 5, 5, 0, '2023-05-03 19:00:09', '2023-05-03 19:12:58'),
(33, 5, 6, 0, '2023-05-03 19:00:11', '2023-05-03 19:13:04'),
(34, 5, 4, 0, '2023-05-03 19:00:14', '2023-05-03 19:13:07'),
(35, 5, 7, 0, '2023-05-03 19:00:16', '2023-05-03 19:13:11'),
(36, 6, 1, 0, '2023-05-05 09:42:03', '2023-05-05 09:42:03'),
(37, 6, 3, 0, '2023-05-05 09:42:06', '2023-05-05 09:42:06'),
(38, 6, 2, 0, '2023-05-05 09:42:09', '2023-05-05 09:42:09'),
(39, 6, 5, 0, '2023-05-05 09:42:11', '2023-05-05 09:42:11'),
(40, 6, 6, 0, '2023-05-05 09:42:14', '2023-05-05 09:42:14'),
(41, 6, 4, 0, '2023-05-05 09:42:17', '2023-05-05 09:42:17'),
(42, 6, 7, 0, '2023-05-05 09:42:20', '2023-05-05 09:42:20'),
(43, 7, 1, 0, '2023-05-05 09:43:15', '2023-05-05 09:43:15'),
(44, 7, 3, 0, '2023-05-05 09:43:17', '2023-05-05 09:43:17'),
(45, 7, 2, 0, '2023-05-05 09:43:19', '2023-05-05 09:43:19'),
(46, 7, 5, 0, '2023-05-05 09:43:21', '2023-05-05 09:43:21'),
(47, 7, 6, 0, '2023-05-05 09:43:23', '2023-05-05 09:43:23'),
(48, 7, 4, 0, '2023-05-05 09:43:25', '2023-05-05 09:43:25'),
(49, 7, 7, 0, '2023-05-05 09:43:28', '2023-05-05 09:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `noshows`
--

CREATE TABLE `noshows` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `criteria_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `location` varchar(32) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `number`, `name`, `location`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bett Azcarraga', 'Nabua, Cam. Sur', '01-bett-azcarraga.jpg', '2023-05-06 12:07:19', '2023-05-06 12:24:29'),
(2, 2, 'Francis Atutubo', 'Buhi, Cam. Sur', '02-francis-atutubo.jpg', '2023-05-06 12:07:58', '2023-05-06 12:24:34'),
(3, 3, 'Jay M. Tiu', 'Bato, Cam. Sur', '03-jay-m-tee.jpg', '2023-05-06 12:08:21', '2023-05-06 12:52:11'),
(4, 4, 'Chump Buena', 'Bato, Cam. Sur', '04-chump-buena.jpg', '2023-05-06 12:09:02', '2023-05-06 12:24:42'),
(5, 5, 'Margarette Marica', 'Bato, Cam. Sur', '05-margarette-marica.jpg', '2023-05-06 12:09:35', '2023-05-06 12:26:19'),
(6, 6, 'Amiela Joana Louisa Salcedo', 'Iriga City', '06-amiela-joana-louisa-roa-salcedo.jpg', '2023-05-06 12:10:19', '2023-05-06 12:26:23'),
(7, 7, 'Marco Belista', 'Bato, Cam. Sur', '07-marco-belista.jpg', '2023-05-06 12:10:56', '2023-05-06 12:26:28'),
(8, 8, 'Bryan Nava', 'Iriga City', '08-bryan-nava.jpg', '2023-05-06 12:11:26', '2023-05-06 12:26:31'),
(9, 9, 'Jaypee Montañez', 'Iriga City', '09-jaypee-montanez.jpg', '2023-05-06 12:13:20', '2023-05-06 12:26:35'),
(10, 10, 'Danica Jacobs', 'Iriga City', '10-danica-jacobs.jpg', '2023-05-06 12:13:45', '2023-05-06 12:26:39'),
(11, 11, 'Jerry Lou Lumbao', 'Iriga City', '11-jerry-lou-lumbao.jpg', '2023-05-06 12:14:17', '2023-05-06 12:26:44'),
(12, 12, 'Neigel Corporal', 'Iriga City', '12-neigel-corporal.jpg', '2023-05-06 12:14:41', '2023-05-06 12:26:47'),
(13, 13, 'Weng Arines', 'Iriga City', '13-weng-arines.jpg', '2023-05-06 12:15:20', '2023-05-06 12:42:36'),
(14, 14, 'Jhomel Embestro', 'Iriga City', '14-jhomel-embestro.jpg', '2023-05-06 12:15:53', '2023-05-06 12:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `technicals`
--

CREATE TABLE `technicals` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicals`
--

INSERT INTO `technicals` (`id`, `number`, `name`, `avatar`, `username`, `password`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Technical 01', 'no-avatar.jpg', 'technical01', 'technical01', NULL, NULL, '2023-02-19 08:58:58', '2023-04-06 14:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `technical_event`
--

CREATE TABLE `technical_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `event_id`, `rank`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Best in Production', '2023-05-04 11:36:48', '2023-05-04 11:39:15'),
(2, 3, 1, 'Best in Swimsuit', '2023-05-04 11:37:27', '2023-05-05 03:56:27'),
(3, 2, 1, 'Best in National Costume', '2023-05-04 11:37:30', '2023-05-05 03:56:30'),
(4, 5, 1, 'Best in Talent', '2023-05-04 11:37:34', '2023-05-05 03:56:33'),
(5, 6, 1, 'Best in Long Gown', '2023-05-04 11:37:37', '2023-05-05 03:56:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_id` (`category_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `noshows`
--
ALTER TABLE `noshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `criteria_id` (`criteria_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicals`
--
ALTER TABLE `technicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrangements`
--
ALTER TABLE `arrangements`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `noshows`
--
ALTER TABLE `noshows`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `technicals`
--
ALTER TABLE `technicals`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technical_event`
--
ALTER TABLE `technical_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD CONSTRAINT `arrangements_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrangements_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_3` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD CONSTRAINT `eliminations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eliminations_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD CONSTRAINT `judge_event_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noshows`
--
ALTER TABLE `noshows`
  ADD CONSTRAINT `noshows_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noshows_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`criteria_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD CONSTRAINT `technical_event_ibfk_2` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
