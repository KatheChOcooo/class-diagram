-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 05, 2025 at 06:25 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u262122282_web_ed`
--

-- --------------------------------------------------------

--
-- Table structure for table `absents`
--

CREATE TABLE `absents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `grade_handle_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `extension_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'Admin',
  `profile` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`id`, `id_number`, `name`, `gender`, `username`, `password`, `extension_name`, `email`, `position`, `role`, `profile`, `address`, `phone_number`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1919757448', 'Lonie Grimes', 'Male', 'Admin', '$2y$12$PgeQWhBbtY4SWmyIrILOdeYjuBczoDnbeeMVlLzriHRSOTJsXbcna', NULL, 'katherinegracemi@gmail.com', NULL, 'Admin', 'profiles/1733074996_student.png', '88195 Eliezer CircleWest Gerardo, MD 87277', '09615653697', NULL, NULL, '2024-08-14 02:11:22', '2024-12-02 01:43:16'),
(2, '1919584450', 'Admin jen', 'Female', 'adminJen', '$2y$12$4HGZmc5dAj7Wjsu3yP9.oOw48v0NVpRehMh348C2yqtaQem/x..Ai', NULL, '20210670@cstc.edu.ph', NULL, 'Admin', 'profiles/1732674458_C57D0A04-8C33-41E1-AEB5-0D4D57989616.jpeg', NULL, '09998989897', NULL, NULL, '2024-11-27 10:27:41', '2024-11-27 10:27:41'),
(4, '8807526777', 'jorge jader', 'Male', 'jorge', '$2y$12$kf7opdK0dOUm.7Wzp.jRZulA9rgaF2cGljazJ5tCfbgbRdvR5qH5i', NULL, 'dean@gmail.com', NULL, 'Admin', 'profiles/1732771040_app-development.png', NULL, '09999999999', NULL, NULL, '2024-11-28 13:17:23', '2024-11-28 13:17:23'),
(5, '8893946066', 'john lovete', 'Male', 'adminjl', '$2y$12$ifKDZje5FNucxMl.4enq2uKu5jui6D5r.JMIYqfPfDx4M685e.ic6', NULL, 'lovetejohnlemuel@gmail.com', NULL, 'Admin', 'profiles/1732791557_462550884_449244811509965_6951131729547954685_n - Copy (2).jpg', NULL, '09909090909', NULL, NULL, '2024-11-28 18:59:20', '2024-11-28 18:59:20'),
(6, '7886808865', 'katherine Inson', 'Female', 'adminkat', '$2y$12$WwN4Q6v5QBsqMqamKTInlOKlv5kwuTDZWKTVFRzRFlVI7QMgk7U5K', NULL, 'kathegracemadrideoinson@gmail.com', NULL, 'Admin', 'profiles/1732791641_1 (2) - Copy.jpg', NULL, '09999999999', NULL, NULL, '2024-11-28 19:00:43', '2024-11-28 19:00:43'),
(7, '1610751066', 'jenny Perez', 'Female', 'adminjen0', '$2y$12$m6N8OQwFJ4/0i/bFBBrom.3mbOZAiblm8NTzgb4a7.hV4icFJuY5S', NULL, 'jyjyperez@gmail.com', NULL, 'Admin', 'profiles/1732791723_student (3).png', NULL, '09909090909', NULL, NULL, '2024-11-28 19:02:05', '2024-11-28 19:02:05'),
(8, '3910169375', 'Jelo Masisim', 'Male', 'jelo', '$2y$12$D5yL/Exb98PHZqCdt6f.zutfhrHEqQ63jn.XT/zzeFiHUlCItmkoW', 'Masi', 'masi@gmail.com', NULL, 'Admin', 'profiles/1732856992_465369941_1104008104714268_1921778706229998634_n.jpg', NULL, '09090888888', NULL, NULL, '2024-11-29 13:09:57', '2024-11-29 13:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'low',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `type`, `user_id`, `title`, `message`, `is_seen`, `url`, `icon`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'alert', 1, 'Request profile update for John lovete', 'change profile', 0, 'https://mywebed.com/admin/account_management/student/5/edit', 'info-circle', 'high', '2024-11-28 13:41:47', '2024-11-28 13:41:47'),
(2, 'alert', 2, 'Request profile update for John lovete', 'change profile', 0, 'https://mywebed.com/admin/account_management/student/5/edit', 'info-circle', 'high', '2024-11-28 13:41:47', '2024-11-28 13:41:47'),
(3, 'alert', 4, 'Request profile update for John lovete', 'change profile', 0, 'https://mywebed.com/admin/account_management/student/5/edit', 'info-circle', 'high', '2024-11-28 13:41:47', '2024-11-28 13:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin_otp_accounts`
--

CREATE TABLE `admin_otp_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `grade_handle_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `announcement` varchar(255) NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `teacher_id`, `grade_handle_id`, `title`, `announcement`, `is_seen`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'HELLO I.C.T STUDENTS!', 'WE HAVE A CLASS TOMMORROW! 9-10 AM. THANK YOU!!', 0, NULL, '2024-11-28 02:03:08', '2024-11-28 02:03:08'),
(2, 1, 1, 'Science', 'Exam will move on December 10, 2024', 0, NULL, '2024-11-28 18:35:20', '2024-11-28 18:35:20'),
(3, 1, 1, 'match', 'exam will be posted by dec 3', 0, NULL, '2024-11-29 15:42:00', '2024-11-29 15:42:00'),
(4, 1, 1, 'hello everyone', 'we have a quiz for tommorow! pls be ready and review your recent module!!', 0, NULL, '2024-12-02 01:36:09', '2024-12-02 01:36:09'),
(5, 1, 1, 'EXAM', 'Exam will be on December 15. 2024\r\ngoodluck', 0, NULL, '2024-12-11 10:24:03', '2024-12-11 10:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_histories`
--

CREATE TABLE `attendance_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_model_id` bigint(20) UNSIGNED NOT NULL,
  `grade_handle_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time_in` varchar(255) NOT NULL DEFAULT 'N/A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_histories`
--

INSERT INTO `attendance_histories` (`id`, `subject_model_id`, `grade_handle_id`, `teacher_id`, `student_id`, `status`, `date`, `time_in`, `created_at`, `updated_at`) VALUES
(512, 56, 1, 1, 31, 'Present', '2024-12-10', '2024-12-10 18:09:53', '2024-12-10 18:09:53', '2024-12-10 18:09:53'),
(513, 56, 1, 1, 39, 'Present', '2024-12-10', '2024-12-10 18:10:02', '2024-12-10 18:10:02', '2024-12-10 18:10:02'),
(514, 56, 1, 1, 34, 'Present', '2024-12-10', '2024-12-10 18:10:08', '2024-12-10 18:10:08', '2024-12-10 18:10:08'),
(515, 56, 1, 1, 38, 'Present', '2024-12-10', '2024-12-10 18:10:17', '2024-12-10 18:10:17', '2024-12-10 18:10:17'),
(516, 78, 1, 1, 40, 'Present', '2024-12-11', '2024-12-11 10:10:54', '2024-12-11 10:10:54', '2024-12-11 10:10:54'),
(517, 78, 1, 1, 36, 'Present', '2024-12-11', '2024-12-11 10:10:58', '2024-12-11 10:10:58', '2024-12-11 10:10:58'),
(518, 78, 1, 1, 33, 'Present', '2024-12-11', '2024-12-11 10:11:07', '2024-12-11 10:11:07', '2024-12-11 10:11:07'),
(519, 56, 1, 1, 31, 'Present', '2024-12-11', '2024-12-11 18:16:39', '2024-12-11 18:16:39', '2024-12-11 18:16:39'),
(520, 56, 1, 1, 39, 'Present', '2024-12-11', '2024-12-11 18:16:43', '2024-12-11 18:16:43', '2024-12-11 18:16:43'),
(521, 58, 1, 1, 39, 'Present', '2024-12-12', '2024-12-12 13:44:14', '2024-12-12 13:44:14', '2024-12-12 13:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `face_recognition_keys`
--

CREATE TABLE `face_recognition_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_by_admin_id` bigint(20) UNSIGNED NOT NULL,
  `updated_by_admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `face_recognition_keys`
--

INSERT INTO `face_recognition_keys` (`id`, `pattern`, `image_path`, `created_by_admin_id`, `updated_by_admin_id`, `created_at`, `updated_at`) VALUES
(1, '$2y$12$5423iRi7KDrQiu9WYQ9MSOzK0ixUsGQO1iEN2ujyyWqVs.rlGHr2O', 'pattern_images/pattern1735558305.png', 1, 6, '2024-11-26 07:35:15', '2024-12-30 19:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `face_scans`
--

CREATE TABLE `face_scans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `time` time DEFAULT curtime(),
  `time_out` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `face_scans`
--

INSERT INTO `face_scans` (`id`, `student_id`, `time`, `time_out`, `created_at`, `updated_at`) VALUES
(23, 32, '15:40:38', NULL, '2024-12-07 15:40:38', '2024-12-07 15:40:38'),
(24, 33, '15:50:16', NULL, '2024-12-07 15:50:16', '2024-12-07 15:50:16'),
(25, 36, '16:09:59', NULL, '2024-12-07 16:09:59', '2024-12-07 16:09:59'),
(27, 38, '20:59:05', NULL, '2024-12-07 20:59:05', '2024-12-07 20:59:05'),
(28, 39, '17:50:57', NULL, '2024-12-10 17:50:57', '2024-12-10 17:50:57'),
(29, 39, '09:37:32', NULL, '2024-12-11 09:37:32', '2024-12-11 09:37:32'),
(31, 39, '10:27:49', NULL, '2024-12-12 10:27:49', '2024-12-12 10:27:49'),
(33, 39, '08:58:26', NULL, '2024-12-17 08:58:26', '2024-12-17 08:58:26');

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
-- Table structure for table `grading_headers`
--

CREATE TABLE `grading_headers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `region` varchar(255) DEFAULT 'IV - A',
  `division` varchar(255) DEFAULT '2nd',
  `school_name` varchar(255) DEFAULT 'Ark Technological Institute Education System Inc',
  `school_id` varchar(255) DEFAULT '405210',
  `school_year` varchar(255) DEFAULT '2023-2024',
  `grade_handle_id` int(11) DEFAULT NULL,
  `written_work_percentage` varchar(255) DEFAULT NULL,
  `performance_task_percentage` varchar(255) DEFAULT NULL,
  `quarterly_assessment_percentage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guidance_accounts`
--

CREATE TABLE `guidance_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `extension_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'Guidance',
  `profile` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guidance_accounts`
--

INSERT INTO `guidance_accounts` (`id`, `id_number`, `name`, `extension_name`, `gender`, `username`, `password`, `email`, `role`, `profile`, `address`, `phone_number`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '4117726942', 'Guidance jen', NULL, 'Female', 'Gjen', '$2y$12$1Nkzji..PAf6PfeOLOdKWOgORY3gU86M/yXvytIcnLJAKXwxTA.3.', '20210670@cstc.edu.ph', 'Guidance', 'profiles/1732674206_0B6035A4-FCF7-4DC9-998F-30D9233D4CAD.jpeg', NULL, '98989898988', NULL, NULL, '2024-11-27 10:23:26', '2024-11-27 10:23:26'),
(2, '1166683049', 'katherine Inson', NULL, 'Female', 'Gkat', '$2y$12$fk9Nnc2LjkYmOEdeAjJ3peZRpfLsYDeushkMG4PXe/jQiQohF1JCa', 'kathegracemadrideoinson@gmail.com', 'Guidance', 'profiles/1732791783_student (5).png', NULL, '09909090909', NULL, NULL, '2024-11-28 19:03:03', '2024-12-30 16:22:02'),
(3, '2299417116', 'john lovete', NULL, 'Male', 'Gjl', '$2y$12$1KxIS.K.SENEfHGlbzr8mOA3cGqjbl2mIgQ8NqcVgCOL6pTt0YSna', 'lovetejohnlemuel@gmail.com', 'Guidance', 'profiles/1732791854_462550884_449244811509965_6951131729547954685_n - Copy (2).jpg', NULL, '09432323299', NULL, NULL, '2024-11-28 19:04:14', '2024-11-28 19:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `guidance_notifications`
--

CREATE TABLE `guidance_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'low',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guidance_otp_accounts`
--

CREATE TABLE `guidance_otp_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `highest_possible_score_grading_sheets`
--

CREATE TABLE `highest_possible_score_grading_sheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_handle_id` int(11) DEFAULT NULL,
  `highest_possible_written_1` int(11) DEFAULT NULL,
  `highest_possible_written_2` int(11) DEFAULT NULL,
  `highest_possible_written_3` int(11) DEFAULT NULL,
  `highest_possible_written_4` int(11) DEFAULT NULL,
  `highest_possible_written_5` int(11) DEFAULT NULL,
  `highest_possible_written_6` int(11) DEFAULT NULL,
  `highest_possible_written_7` int(11) DEFAULT NULL,
  `highest_possible_written_8` int(11) DEFAULT NULL,
  `highest_possible_written_9` int(11) DEFAULT NULL,
  `highest_possible_written_10` int(11) DEFAULT NULL,
  `highest_possible_task_1` int(11) DEFAULT NULL,
  `highest_possible_task_2` int(11) DEFAULT NULL,
  `highest_possible_task_3` int(11) DEFAULT NULL,
  `highest_possible_task_4` int(11) DEFAULT NULL,
  `highest_possible_task_5` int(11) DEFAULT NULL,
  `highest_possible_task_6` int(11) DEFAULT NULL,
  `highest_possible_task_7` int(11) DEFAULT NULL,
  `highest_possible_task_8` int(11) DEFAULT NULL,
  `highest_possible_task_9` int(11) DEFAULT NULL,
  `highest_possible_task_10` int(11) DEFAULT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `highest_possible_score_grading_sheets`
--

INSERT INTO `highest_possible_score_grading_sheets` (`id`, `grade_handle_id`, `highest_possible_written_1`, `highest_possible_written_2`, `highest_possible_written_3`, `highest_possible_written_4`, `highest_possible_written_5`, `highest_possible_written_6`, `highest_possible_written_7`, `highest_possible_written_8`, `highest_possible_written_9`, `highest_possible_written_10`, `highest_possible_task_1`, `highest_possible_task_2`, `highest_possible_task_3`, `highest_possible_task_4`, `highest_possible_task_5`, `highest_possible_task_6`, `highest_possible_task_7`, `highest_possible_task_8`, `highest_possible_task_9`, `highest_possible_task_10`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 1, '2024-11-29 05:13:53', '2024-12-19 18:48:58'),
(2, NULL, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 2, '2024-12-04 11:32:56', '2024-12-04 11:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `history` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `position`, `user_id`, `history`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 'Create teacher account', 'ID Number: 2194586145, Name: Jenny Rose Perez', '2024-11-25 18:02:35', '2024-11-25 18:02:35'),
(2, 'Teacher', 1, 'Create student account', 'ID Number: 144755, Name: Jenny Rose Perez', '2024-11-25 18:05:56', '2024-11-25 18:05:56'),
(3, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-25 18:06:59', '2024-11-25 18:06:59'),
(4, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-25 18:07:19', '2024-11-25 18:07:19'),
(5, 'Teacher', 1, 'Create student account', 'ID Number: 328528, Name: Katherine Grace M. Inson', '2024-11-26 10:56:38', '2024-11-26 10:56:38'),
(6, 'Teacher', 1, 'Updated user account', 'ID Number: 328528, Name: Katherine Grace M. Inson', '2024-11-26 10:59:47', '2024-11-26 10:59:47'),
(7, 'Teacher', 1, 'Create student account', 'ID Number: 151082, Name: Even Joy Gonzalvo', '2024-11-26 17:59:44', '2024-11-26 17:59:44'),
(8, 'Teacher', 1, 'Updated user account', 'ID Number: 151082, Name: Even Joy Gonzalvo', '2024-11-26 18:01:39', '2024-11-26 18:01:39'),
(9, 'Teacher', 1, 'Updated user account', 'ID Number: 144755, Name: Jenny Rose Perez', '2024-11-27 07:35:37', '2024-11-27 07:35:37'),
(10, 'Admin', 1, 'Create guidance account', 'ID Number: 4117726942, Name: Guidance jen', '2024-11-27 10:23:26', '2024-11-27 10:23:26'),
(11, 'Admin', 1, 'Create admin account', 'ID Number: 1919584450, Name: Admin jen', '2024-11-27 10:27:41', '2024-11-27 10:27:41'),
(12, 'Admin', 1, 'Create student account', 'ID Number: 3343329190, Name: John lovete', '2024-11-27 10:33:44', '2024-11-27 10:33:44'),
(13, 'Admin', 1, 'Deleted student account', 'ID Number: 3343329190, Name: John lovete', '2024-11-27 10:49:49', '2024-11-27 10:49:49'),
(14, 'Teacher', 1, 'Create student account', 'ID Number: 423494, Name: John lovete', '2024-11-27 10:57:51', '2024-11-27 10:57:51'),
(15, 'Teacher', 1, 'Added the subject  to John lovete\'s account', NULL, '2024-11-27 10:59:04', '2024-11-27 10:59:04'),
(16, 'Teacher', 1, 'Added the subject  to John lovete\'s account', NULL, '2024-11-27 10:59:07', '2024-11-27 10:59:07'),
(17, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-11-27 15:09:24', '2024-11-27 15:09:24'),
(18, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-11-27 15:09:29', '2024-11-27 15:09:29'),
(19, 'Teacher', 1, 'Create student account', 'ID Number: 288231, Name: saira vergara', '2024-11-27 15:25:03', '2024-11-27 15:25:03'),
(20, 'Teacher', 1, 'Deleted student account', 'ID Number: 288231, Name: saira vergara', '2024-11-27 15:26:35', '2024-11-27 15:26:35'),
(21, 'Teacher', 1, 'Added the subject  to Katherine Grace M. Inson\'s account', NULL, '2024-11-27 15:29:10', '2024-11-27 15:29:10'),
(22, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-27 15:29:49', '2024-11-27 15:29:49'),
(23, 'Teacher', 1, 'Exported subject list', NULL, '2024-11-27 15:30:05', '2024-11-27 15:30:05'),
(24, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-11-27 15:30:19', '2024-11-27 15:30:19'),
(25, 'Teacher', 1, 'Exported subject list', NULL, '2024-11-27 15:44:19', '2024-11-27 15:44:19'),
(26, 'Admin', 2, 'Create admin account', 'ID Number: 3358777515, Name: Lyn Delas Alas', '2024-11-27 16:36:28', '2024-11-27 16:36:28'),
(27, 'Admin', 2, 'Deleted admin account', 'ID Number: 3358777515, Name: Lyn Delas Alas', '2024-11-27 16:42:33', '2024-11-27 16:42:33'),
(28, 'Admin', 2, 'Create student account', 'ID Number: 3033245143, Name: Cielo Mae Suico', '2024-11-27 16:48:04', '2024-11-27 16:48:04'),
(29, 'Admin', 2, 'Exported admin list', NULL, '2024-11-27 22:03:27', '2024-11-27 22:03:27'),
(30, 'Admin', 2, 'Updated admin account', 'ID Number: 1919757448, Name: Lonie Grimes', '2024-11-27 23:43:45', '2024-11-27 23:43:45'),
(31, 'Teacher', 1, 'Deleted student account', 'ID Number: 144755, Name: Jenny Rose Perez', '2024-11-28 09:38:40', '2024-11-28 09:38:40'),
(32, 'Teacher', 1, 'Deleted student account', 'ID Number: 3033245143, Name: Cielo Mae Suico', '2024-11-28 09:44:22', '2024-11-28 09:44:22'),
(33, 'Teacher', 1, 'Create student account', 'ID Number: 464361, Name: Aldrin Caballero', '2024-11-28 10:42:34', '2024-11-28 10:42:34'),
(34, 'Teacher', 1, 'Create student account', 'ID Number: 483900, Name: Evan tabar', '2024-11-28 10:43:17', '2024-11-28 10:43:17'),
(35, 'Teacher', 1, 'Deleted student account', 'ID Number: 151082, Name: Even Joy Gonzalvo', '2024-11-28 10:52:30', '2024-11-28 10:52:30'),
(36, 'Teacher', 1, 'Deleted student account', 'ID Number: 483900, Name: Evan tabar', '2024-11-28 10:52:33', '2024-11-28 10:52:33'),
(37, 'Teacher', 1, 'Create student account', 'ID Number: 686759, Name: Charles Cerrudo', '2024-11-28 10:56:20', '2024-11-28 10:56:20'),
(38, 'Teacher', 1, 'Create student account', 'ID Number: 181570, Name: Angelo Delos Reyes', '2024-11-28 11:08:14', '2024-11-28 11:08:14'),
(39, 'Teacher', 1, 'Create student account', 'ID Number: 860842, Name: Ceejay Ibabiosa', '2024-11-28 11:11:10', '2024-11-28 11:11:10'),
(40, 'Teacher', 1, 'Create student account', 'ID Number: 144244, Name: Dan Denver Deleon', '2024-11-28 11:15:41', '2024-11-28 11:15:41'),
(41, 'Teacher', 1, 'Create student account', 'ID Number: 914601, Name: Shaira Picondo', '2024-11-28 12:02:54', '2024-11-28 12:02:54'),
(42, 'Teacher', 1, 'Create student account', 'ID Number: 896678, Name: Sheena Picondo', '2024-11-28 12:05:04', '2024-11-28 12:05:04'),
(43, 'Teacher', 1, 'Updated user account', 'ID Number: 914601, Name: Shaira Picondo', '2024-11-28 12:09:05', '2024-11-28 12:09:05'),
(44, 'Admin', 1, 'Create admin account', 'ID Number: 8807526777, Name: jorge jader', '2024-11-28 13:17:23', '2024-11-28 13:17:23'),
(45, 'Admin', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-11-28 13:20:09', '2024-11-28 13:20:09'),
(46, 'Admin', 1, 'Exported subject list', NULL, '2024-11-28 13:21:34', '2024-11-28 13:21:34'),
(47, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:11:15', '2024-11-28 18:11:15'),
(48, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:11:47', '2024-11-28 18:11:47'),
(49, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:13:40', '2024-11-28 18:13:40'),
(50, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:14:50', '2024-11-28 18:14:50'),
(51, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:16:06', '2024-11-28 18:16:06'),
(52, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:16:57', '2024-11-28 18:16:57'),
(53, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:17:30', '2024-11-28 18:17:30'),
(54, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:18:04', '2024-11-28 18:18:04'),
(55, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:18:24', '2024-11-28 18:18:24'),
(56, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:18:48', '2024-11-28 18:18:48'),
(57, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:19:08', '2024-11-28 18:19:08'),
(58, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:21:02', '2024-11-28 18:21:02'),
(59, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:21:45', '2024-11-28 18:21:45'),
(60, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:22:12', '2024-11-28 18:22:12'),
(61, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:22:51', '2024-11-28 18:22:51'),
(62, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:23:20', '2024-11-28 18:23:20'),
(63, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:23:38', '2024-11-28 18:23:38'),
(64, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:23:55', '2024-11-28 18:23:55'),
(65, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:24:15', '2024-11-28 18:24:15'),
(66, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:24:51', '2024-11-28 18:24:51'),
(67, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:25:16', '2024-11-28 18:25:16'),
(68, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:25:32', '2024-11-28 18:25:32'),
(69, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:25:47', '2024-11-28 18:25:47'),
(70, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:26:22', '2024-11-28 18:26:22'),
(71, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:26:39', '2024-11-28 18:26:39'),
(72, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:26:54', '2024-11-28 18:26:54'),
(73, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:27:18', '2024-11-28 18:27:18'),
(74, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:27:48', '2024-11-28 18:27:48'),
(75, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:28:09', '2024-11-28 18:28:09'),
(76, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:28:46', '2024-11-28 18:28:46'),
(77, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:29:06', '2024-11-28 18:29:06'),
(78, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:29:28', '2024-11-28 18:29:28'),
(79, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:29:49', '2024-11-28 18:29:49'),
(80, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:30:18', '2024-11-28 18:30:18'),
(81, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:30:32', '2024-11-28 18:30:32'),
(82, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:30:59', '2024-11-28 18:30:59'),
(83, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:31:51', '2024-11-28 18:31:51'),
(84, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:32:12', '2024-11-28 18:32:12'),
(85, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:32:31', '2024-11-28 18:32:31'),
(86, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:32:51', '2024-11-28 18:32:51'),
(87, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:33:13', '2024-11-28 18:33:13'),
(88, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:33:36', '2024-11-28 18:33:36'),
(89, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-11-28 18:33:54', '2024-11-28 18:33:54'),
(90, 'Teacher', 1, 'Exported class history', NULL, '2024-11-28 18:35:49', '2024-11-28 18:35:49'),
(91, 'Teacher', 1, 'Exported subject list', NULL, '2024-11-28 18:44:55', '2024-11-28 18:44:55'),
(92, 'Teacher', 1, 'Exported subject list', NULL, '2024-11-28 18:48:32', '2024-11-28 18:48:32'),
(93, 'Teacher', 1, 'Exported subject list', NULL, '2024-11-28 18:48:33', '2024-11-28 18:48:33'),
(94, 'Admin', 2, 'Create admin account', 'ID Number: 8893946066, Name: john lovete', '2024-11-28 18:59:20', '2024-11-28 18:59:20'),
(95, 'Admin', 2, 'Create admin account', 'ID Number: 7886808865, Name: katherine Inson', '2024-11-28 19:00:43', '2024-11-28 19:00:43'),
(96, 'Admin', 2, 'Create admin account', 'ID Number: 1610751066, Name: jenny Perez', '2024-11-28 19:02:05', '2024-11-28 19:02:05'),
(97, 'Admin', 2, 'Create guidance account', 'ID Number: 1166683049, Name: katherine Inson', '2024-11-28 19:03:03', '2024-11-28 19:03:03'),
(98, 'Admin', 2, 'Create guidance account', 'ID Number: 2299417116, Name: john lovete', '2024-11-28 19:04:14', '2024-11-28 19:04:14'),
(99, 'Admin', 2, 'Create teacher account', 'ID Number: 8718810267, Name: katherine Inson', '2024-11-28 19:05:12', '2024-11-28 19:05:12'),
(100, 'Admin', 2, 'Create teacher account', 'ID Number: 5592760626, Name: john lovete', '2024-11-28 19:06:12', '2024-11-28 19:06:12'),
(101, 'Admin', 2, 'Create teacher account', 'ID Number: 7455837753, Name: Kat Reyes', '2024-11-28 19:07:14', '2024-11-28 19:07:14'),
(102, 'Admin', 2, 'Create teacher account', 'ID Number: 3980868637, Name: Mark  Suarez', '2024-11-28 19:08:25', '2024-11-28 19:08:25'),
(103, 'Admin', 2, 'Create teacher account', 'ID Number: 1786911941, Name: Aldrin Perez', '2024-11-28 19:09:17', '2024-11-28 19:09:17'),
(104, 'Teacher', 1, 'Create student account', 'ID Number: 560929, Name: Jenny Rose Perez', '2024-11-28 19:18:47', '2024-11-28 19:18:47'),
(105, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-11-28 19:19:39', '2024-11-28 19:19:39'),
(106, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-11-28 19:19:42', '2024-11-28 19:19:42'),
(107, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-11-28 19:19:45', '2024-11-28 19:19:45'),
(108, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-11-28 19:19:49', '2024-11-28 19:19:49'),
(109, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-11-28 19:19:53', '2024-11-28 19:19:53'),
(110, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-11-28 19:19:57', '2024-11-28 19:19:57'),
(111, 'Teacher', 2, 'Created a subject', 'Subject created: ', '2024-11-28 19:24:11', '2024-11-28 19:24:11'),
(112, 'Teacher', 2, 'Created a subject', 'Subject created: ', '2024-11-28 19:24:31', '2024-11-28 19:24:31'),
(113, 'Teacher', 2, 'Create student account', 'ID Number: 275725, Name: Kevin Durant', '2024-11-28 23:02:15', '2024-11-28 23:02:15'),
(114, 'Teacher', 2, 'Deleted student account', 'ID Number: 275725, Name: Kevin Durant', '2024-11-28 23:06:20', '2024-11-28 23:06:20'),
(115, 'Teacher', 1, 'Create student account', 'ID Number: 721026, Name: Test One', '2024-11-29 10:44:26', '2024-11-29 10:44:26'),
(116, 'Teacher', 1, 'Create student account', 'ID Number: 739869, Name: Test Two', '2024-11-29 10:46:49', '2024-11-29 10:46:49'),
(117, 'Admin', 1, 'Create admin account', 'ID Number: 3910169375, Name: Jelo Masisim', '2024-11-29 13:09:57', '2024-11-29 13:09:57'),
(118, 'Admin', 1, 'Exported admin list', NULL, '2024-11-29 13:37:05', '2024-11-29 13:37:05'),
(119, 'Teacher', 1, 'Create student account', 'ID Number: 890997, Name: Princess Angel T. Co', '2024-11-29 15:25:31', '2024-11-29 15:25:31'),
(120, 'Teacher', 1, 'Create student account', 'ID Number: 377110, Name: Gerald  ibarrola', '2024-11-29 15:52:36', '2024-11-29 15:52:36'),
(121, 'Admin', 1, 'Create student account', 'ID Number: 6070269508, Name: kimwell magalong', '2024-11-29 16:07:14', '2024-11-29 16:07:14'),
(122, 'Teacher', 1, 'Create student account', 'ID Number: 941348, Name: erica joyce reyes', '2024-11-29 16:13:47', '2024-11-29 16:13:47'),
(123, 'Teacher', 1, 'Updated user account', 'ID Number: 941348, Name: erica joyce reyes', '2024-11-29 16:17:33', '2024-11-29 16:17:33'),
(124, 'Teacher', 1, 'Added the subject  to erica joyce reyes\'s account', NULL, '2024-11-29 16:20:11', '2024-11-29 16:20:11'),
(125, 'Teacher', 1, 'Create student account', 'ID Number: 360730, Name: nick ederzon m. quebrado', '2024-11-29 16:29:34', '2024-11-29 16:29:34'),
(126, 'Teacher', 1, 'Deleted student account', 'ID Number: 739869, Name: Test Two', '2024-11-29 16:32:56', '2024-11-29 16:32:56'),
(127, 'Teacher', 1, 'Deleted student account', 'ID Number: 721026, Name: Test One', '2024-11-29 16:33:00', '2024-11-29 16:33:00'),
(128, 'Teacher', 1, 'Added the subject  to Katherine Grace M. Inson\'s account', NULL, '2024-12-01 22:31:37', '2024-12-01 22:31:37'),
(129, 'Teacher', 1, 'Added the subject  to Katherine Grace M. Inson\'s account', NULL, '2024-12-01 22:31:41', '2024-12-01 22:31:41'),
(130, 'Teacher', 1, 'Added the subject  to Katherine Grace M. Inson\'s account', NULL, '2024-12-01 22:31:44', '2024-12-01 22:31:44'),
(131, 'Teacher', 1, 'Exported student list', NULL, '2024-12-02 01:24:22', '2024-12-02 01:24:22'),
(132, 'Admin', 1, 'Update his/her profile photo', 'ID Number: 1919757448, Name: Lonie Grimes', '2024-12-02 01:43:16', '2024-12-02 01:43:16'),
(133, 'Teacher', 2, 'Create student account', 'ID Number: 832450, Name: Daniella Inson', '2024-12-02 01:56:01', '2024-12-02 01:56:01'),
(134, 'Teacher', 2, 'Updated user account', 'ID Number: 832450, Name: Daniella Inson', '2024-12-02 02:00:01', '2024-12-02 02:00:01'),
(135, 'Teacher', 2, 'Added the subject  to Daniella Inson\'s account', NULL, '2024-12-02 02:02:14', '2024-12-02 02:02:14'),
(136, 'Teacher', 2, 'Added the subject  to Daniella Inson\'s account', NULL, '2024-12-02 02:02:16', '2024-12-02 02:02:16'),
(137, 'Teacher', 2, 'Added the subject  to Daniella Inson\'s account', NULL, '2024-12-02 02:02:20', '2024-12-02 02:02:20'),
(138, 'Teacher', 2, 'Added the subject  to Daniella Inson\'s account', NULL, '2024-12-02 02:02:24', '2024-12-02 02:02:24'),
(139, 'Teacher', 2, 'Added the subject  to Daniella Inson\'s account', NULL, '2024-12-02 02:02:32', '2024-12-02 02:02:32'),
(140, 'Teacher', 2, 'Added the subject  to Daniella Inson\'s account', NULL, '2024-12-02 02:02:35', '2024-12-02 02:02:35'),
(141, 'Teacher', 2, 'Added the subject  to Daniella Inson\'s account', NULL, '2024-12-02 02:02:38', '2024-12-02 02:02:38'),
(142, 'Teacher', 2, 'Added the subject  to Daniella Inson\'s account', NULL, '2024-12-02 02:02:41', '2024-12-02 02:02:41'),
(143, 'Teacher', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-02 14:29:25', '2024-12-02 14:29:25'),
(144, 'Teacher', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-02 14:29:33', '2024-12-02 14:29:33'),
(145, 'Teacher', 1, 'Exported subject list', NULL, '2024-12-02 14:30:02', '2024-12-02 14:30:02'),
(146, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-02 14:31:00', '2024-12-02 14:31:00'),
(147, 'Teacher', 1, 'Exported class history', NULL, '2024-12-02 16:20:51', '2024-12-02 16:20:51'),
(148, 'Teacher', 2, 'Exported student list', NULL, '2024-12-04 11:33:27', '2024-12-04 11:33:27'),
(149, 'Teacher', 1, 'Updated user account', 'ID Number: 423494, Name: John lovete', '2024-12-06 13:50:46', '2024-12-06 13:50:46'),
(150, 'Teacher', 1, 'Deleted student account', 'ID Number: 423494, Name: John lovete', '2024-12-06 13:58:03', '2024-12-06 13:58:03'),
(151, 'Teacher', 1, 'Create student account', 'ID Number: 256632, Name: JL Lovete', '2024-12-06 13:59:46', '2024-12-06 13:59:46'),
(152, 'Teacher', 1, 'Updated user account', 'ID Number: 256632, Name: JL Lovete', '2024-12-06 14:05:27', '2024-12-06 14:05:27'),
(153, 'Admin', 1, 'Deleted student account', 'ID Number: 560929, Name: Jenny Rose Perez', '2024-12-06 14:15:59', '2024-12-06 14:15:59'),
(154, 'Teacher', 1, 'Create student account', 'ID Number: 567584, Name: Jenny Rose Perez', '2024-12-06 14:22:34', '2024-12-06 14:22:34'),
(155, 'Teacher', 1, 'Create student account', 'ID Number: 906056, Name: Jenny Rose Perez', '2024-12-06 14:37:53', '2024-12-06 14:37:53'),
(156, 'Teacher', 1, 'Updated user account', 'ID Number: 906056, Name: Jenny Rose Perez', '2024-12-06 21:16:57', '2024-12-06 21:16:57'),
(157, 'Teacher', 1, 'Deleted student account', 'ID Number: 906056, Name: Jenny Rose Perez', '2024-12-06 21:22:17', '2024-12-06 21:22:17'),
(158, 'Teacher', 1, 'Updated user account', 'ID Number: 567584, Name: Jenny Rose Perez', '2024-12-06 21:22:56', '2024-12-06 21:22:56'),
(159, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-06 22:12:01', '2024-12-06 22:12:01'),
(160, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-06 22:12:05', '2024-12-06 22:12:05'),
(161, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-06 22:12:09', '2024-12-06 22:12:09'),
(162, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-06 22:12:14', '2024-12-06 22:12:14'),
(163, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-06 22:12:19', '2024-12-06 22:12:19'),
(164, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-06 22:12:22', '2024-12-06 22:12:22'),
(165, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-06 22:22:32', '2024-12-06 22:22:32'),
(166, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-06 22:23:06', '2024-12-06 22:23:06'),
(167, 'Teacher', 1, 'Deleted all selected subjects', 'Deleted ids: 2,6,7,8,9,49', '2024-12-06 22:23:57', '2024-12-06 22:23:57'),
(168, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-06 22:24:55', '2024-12-06 22:24:55'),
(169, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-06 22:29:27', '2024-12-06 22:29:27'),
(170, 'Teacher', 1, 'Added the subject  to Gerald  ibarrola\'s account', NULL, '2024-12-06 22:35:29', '2024-12-06 22:35:29'),
(171, 'Teacher', 1, 'Added the subject  to Gerald  ibarrola\'s account', NULL, '2024-12-06 22:35:32', '2024-12-06 22:35:32'),
(172, 'Teacher', 1, 'Added the subject  to Gerald  ibarrola\'s account', NULL, '2024-12-06 22:35:35', '2024-12-06 22:35:35'),
(173, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-06 23:08:05', '2024-12-06 23:08:05'),
(174, 'Teacher', 1, 'Added the subject  to Katherine Grace M. Inson\'s account', NULL, '2024-12-06 23:59:01', '2024-12-06 23:59:01'),
(175, 'Teacher', 1, 'Added the subject  to Katherine Grace M. Inson\'s account', NULL, '2024-12-06 23:59:05', '2024-12-06 23:59:05'),
(176, 'Teacher', 1, 'Added the subject  to Katherine Grace M. Inson\'s account', NULL, '2024-12-06 23:59:11', '2024-12-06 23:59:11'),
(177, 'Teacher', 1, 'Create student account', 'ID Number: 500448, Name: John Lemuel', '2024-12-07 08:10:24', '2024-12-07 08:10:24'),
(178, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-07 08:19:08', '2024-12-07 08:19:08'),
(179, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-07 08:19:43', '2024-12-07 08:19:43'),
(180, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-07 08:20:49', '2024-12-07 08:20:49'),
(181, 'Teacher', 1, 'Added the subject  to John Lemuel\'s account', NULL, '2024-12-07 08:21:11', '2024-12-07 08:21:11'),
(182, 'Teacher', 1, 'Deleted student account', 'ID Number: 567584, Name: Jenny Rose Perez', '2024-12-07 08:24:05', '2024-12-07 08:24:05'),
(183, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-07 08:27:13', '2024-12-07 08:27:13'),
(184, 'Teacher', 1, 'Added the subject  to John Lemuel\'s account', NULL, '2024-12-07 08:29:55', '2024-12-07 08:29:55'),
(185, 'Teacher', 1, 'Added the subject  to John Lemuel\'s account', NULL, '2024-12-07 08:30:01', '2024-12-07 08:30:01'),
(186, 'Teacher', 1, 'Create student account', 'ID Number: 884878, Name: Jenny Rose Perez', '2024-12-07 08:31:56', '2024-12-07 08:31:56'),
(187, 'Teacher', 1, 'Exported class history', NULL, '2024-12-07 10:24:05', '2024-12-07 10:24:05'),
(188, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-07 12:42:22', '2024-12-07 12:42:22'),
(189, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-07 12:42:29', '2024-12-07 12:42:29'),
(190, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-07 12:42:34', '2024-12-07 12:42:34'),
(191, 'Teacher', 1, 'Added the subject  to Jenny Rose Perez\'s account', NULL, '2024-12-07 12:42:41', '2024-12-07 12:42:41'),
(192, 'Teacher', 1, 'Updated user account', 'ID Number: 328528, Name: Katherine Grace M Inson', '2024-12-07 12:46:34', '2024-12-07 12:46:34'),
(193, 'Teacher', 1, 'Create student account', 'ID Number: 761908, Name: jorge jader', '2024-12-07 13:49:05', '2024-12-07 13:49:05'),
(194, 'Teacher', 1, 'Added the subject  to jorge jader\'s account', NULL, '2024-12-07 13:50:30', '2024-12-07 13:50:30'),
(195, 'Teacher', 1, 'Added the subject  to jorge jader\'s account', NULL, '2024-12-07 13:50:36', '2024-12-07 13:50:36'),
(196, 'Teacher', 1, 'Deleted all selected students account', 'Deleted ids: 10,11,12,13,14,15,20,21,23,24', '2024-12-07 14:23:03', '2024-12-07 14:23:03'),
(197, 'Teacher', 1, 'Updated user account', 'ID Number: 761908, Name: jorge jader', '2024-12-07 15:17:45', '2024-12-07 15:17:45'),
(198, 'Teacher', 1, 'Create student account', 'ID Number: 505346, Name: Dan Denver Deleon', '2024-12-07 15:39:48', '2024-12-07 15:39:48'),
(199, 'Teacher', 1, 'Create student account', 'ID Number: 779907, Name: vernie jay albina', '2024-12-07 15:49:45', '2024-12-07 15:49:45'),
(200, 'Teacher', 1, 'Create student account', 'ID Number: 390256, Name: Ceejay Ibabiosa', '2024-12-07 15:55:40', '2024-12-07 15:55:40'),
(201, 'Teacher', 1, 'Create student account', 'ID Number: 820202, Name: John Lemuel Lovete', '2024-12-07 15:57:28', '2024-12-07 15:57:28'),
(202, 'Teacher', 1, 'Deleted student account', 'ID Number: 820202, Name: John Lemuel Lovete', '2024-12-07 15:59:46', '2024-12-07 15:59:46'),
(203, 'Teacher', 1, 'Create student account', 'ID Number: 494683, Name: Evan Tabar', '2024-12-07 16:06:49', '2024-12-07 16:06:49'),
(204, 'Teacher', 1, 'Deleted student account', 'ID Number: 884878, Name: Jenny Rose Tagal Perez', '2024-12-07 17:30:27', '2024-12-07 17:30:27'),
(205, 'Teacher', 1, 'Create student account', 'ID Number: 710244, Name: Jenny Rose Perez', '2024-12-07 17:32:28', '2024-12-07 17:32:28'),
(206, 'Teacher', 1, 'Updated user account', 'ID Number: 761908, Name: jorge jader', '2024-12-07 19:55:34', '2024-12-07 19:55:34'),
(207, 'Teacher', 1, 'Create student account', 'ID Number: 776658, Name: Erick Valencia', '2024-12-07 20:58:14', '2024-12-07 20:58:14'),
(208, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 07:29:32', '2024-12-10 07:29:32'),
(209, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 07:44:29', '2024-12-10 07:44:29'),
(210, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-10 07:45:09', '2024-12-10 07:45:09'),
(211, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-10 07:45:15', '2024-12-10 07:45:15'),
(212, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-10 07:45:34', '2024-12-10 07:45:34'),
(213, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-10 07:45:38', '2024-12-10 07:45:38'),
(214, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-10 07:45:42', '2024-12-10 07:45:42'),
(215, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-10 07:45:46', '2024-12-10 07:45:46'),
(216, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-10 07:45:51', '2024-12-10 07:45:51'),
(217, 'Teacher', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-10 07:52:25', '2024-12-10 07:52:25'),
(218, 'Teacher', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-10 07:53:32', '2024-12-10 07:53:32'),
(219, 'Teacher', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-10 07:53:41', '2024-12-10 07:53:41'),
(220, 'Admin', 1, 'Created a subject', 'Subject created: ', '2024-12-10 08:03:47', '2024-12-10 08:03:47'),
(221, 'Admin', 1, 'Updated user account', 'ID Number: 761908, Name: jorge jader', '2024-12-10 08:12:16', '2024-12-10 08:12:16'),
(222, 'Admin', 1, 'Created a subject', 'Subject created: ', '2024-12-10 08:15:11', '2024-12-10 08:15:11'),
(223, 'Admin', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-10 08:15:21', '2024-12-10 08:15:21'),
(224, 'Teacher', 1, 'Updated user account', 'ID Number: 710244, Name: Jenny Rose Tagal Perez', '2024-12-10 09:46:44', '2024-12-10 09:46:44'),
(225, 'Teacher', 1, 'Deleted student account', 'ID Number: 710244, Name: Jenny Rose Tagal Perez', '2024-12-10 17:47:48', '2024-12-10 17:47:48'),
(226, 'Teacher', 1, 'Create student account', 'ID Number: 203733, Name: Jennyrose T Perez', '2024-12-10 17:50:23', '2024-12-10 17:50:23'),
(227, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 18:51:31', '2024-12-10 18:51:31'),
(228, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:00:50', '2024-12-10 19:00:50'),
(229, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:01:46', '2024-12-10 19:01:46'),
(230, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:03:03', '2024-12-10 19:03:03'),
(231, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:03:46', '2024-12-10 19:03:46'),
(232, 'Teacher', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-10 19:03:57', '2024-12-10 19:03:57'),
(233, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:04:30', '2024-12-10 19:04:30'),
(234, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:05:03', '2024-12-10 19:05:03'),
(235, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:09:27', '2024-12-10 19:09:27'),
(236, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:11:38', '2024-12-10 19:11:38'),
(237, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:12:08', '2024-12-10 19:12:08'),
(238, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:12:51', '2024-12-10 19:12:51'),
(239, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:13:50', '2024-12-10 19:13:50'),
(240, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:14:23', '2024-12-10 19:14:23'),
(241, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:15:28', '2024-12-10 19:15:28'),
(242, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:15:58', '2024-12-10 19:15:58'),
(243, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:17:27', '2024-12-10 19:17:27'),
(244, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:17:58', '2024-12-10 19:17:58'),
(245, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:19:01', '2024-12-10 19:19:01'),
(246, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:19:33', '2024-12-10 19:19:33'),
(247, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:33:46', '2024-12-10 19:33:46'),
(248, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:36:20', '2024-12-10 19:36:20'),
(249, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:36:46', '2024-12-10 19:36:46'),
(250, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:37:12', '2024-12-10 19:37:12'),
(251, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:37:39', '2024-12-10 19:37:39'),
(252, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:39:01', '2024-12-10 19:39:01'),
(253, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:39:41', '2024-12-10 19:39:41'),
(254, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:40:05', '2024-12-10 19:40:05'),
(255, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:40:40', '2024-12-10 19:40:40'),
(256, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:42:11', '2024-12-10 19:42:11'),
(257, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:45:23', '2024-12-10 19:45:23'),
(258, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:45:56', '2024-12-10 19:45:56'),
(259, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:46:28', '2024-12-10 19:46:28'),
(260, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:46:57', '2024-12-10 19:46:57'),
(261, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:47:32', '2024-12-10 19:47:32'),
(262, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:48:03', '2024-12-10 19:48:03'),
(263, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:48:38', '2024-12-10 19:48:38'),
(264, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:49:15', '2024-12-10 19:49:15'),
(265, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:50:44', '2024-12-10 19:50:44'),
(266, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:51:12', '2024-12-10 19:51:12'),
(267, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:51:47', '2024-12-10 19:51:47'),
(268, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:52:23', '2024-12-10 19:52:23'),
(269, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:52:52', '2024-12-10 19:52:52'),
(270, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:53:20', '2024-12-10 19:53:20'),
(271, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:54:08', '2024-12-10 19:54:08'),
(272, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:54:48', '2024-12-10 19:54:48'),
(273, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:55:27', '2024-12-10 19:55:27'),
(274, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:55:59', '2024-12-10 19:55:59'),
(275, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:56:25', '2024-12-10 19:56:25'),
(276, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:57:00', '2024-12-10 19:57:00'),
(277, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 19:58:59', '2024-12-10 19:58:59'),
(278, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:04:32', '2024-12-10 20:04:32'),
(279, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:05:03', '2024-12-10 20:05:03'),
(280, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:05:41', '2024-12-10 20:05:41'),
(281, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:07:45', '2024-12-10 20:07:45'),
(282, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:08:15', '2024-12-10 20:08:15'),
(283, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:09:08', '2024-12-10 20:09:08'),
(284, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:09:39', '2024-12-10 20:09:39'),
(285, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:12:19', '2024-12-10 20:12:19'),
(286, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:12:52', '2024-12-10 20:12:52'),
(287, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:13:37', '2024-12-10 20:13:37'),
(288, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:14:16', '2024-12-10 20:14:16'),
(289, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:15:28', '2024-12-10 20:15:28'),
(290, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:15:58', '2024-12-10 20:15:58'),
(291, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:17:17', '2024-12-10 20:17:17'),
(292, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:18:17', '2024-12-10 20:18:17'),
(293, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:19:14', '2024-12-10 20:19:14'),
(294, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:20:00', '2024-12-10 20:20:00'),
(295, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:21:52', '2024-12-10 20:21:52'),
(296, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:22:34', '2024-12-10 20:22:34'),
(297, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:23:27', '2024-12-10 20:23:27'),
(298, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:23:54', '2024-12-10 20:23:54'),
(299, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:24:20', '2024-12-10 20:24:20'),
(300, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:24:47', '2024-12-10 20:24:47'),
(301, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-10 20:25:14', '2024-12-10 20:25:14'),
(302, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:11:55', '2024-12-11 08:11:55'),
(303, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:12:16', '2024-12-11 08:12:16'),
(304, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:12:44', '2024-12-11 08:12:44'),
(305, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:13:50', '2024-12-11 08:13:50'),
(306, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:14:14', '2024-12-11 08:14:14'),
(307, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:16:01', '2024-12-11 08:16:01'),
(308, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:16:35', '2024-12-11 08:16:35'),
(309, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:17:14', '2024-12-11 08:17:14'),
(310, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:20:03', '2024-12-11 08:20:03'),
(311, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:20:24', '2024-12-11 08:20:24'),
(312, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:20:52', '2024-12-11 08:20:52'),
(313, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:21:37', '2024-12-11 08:21:37'),
(314, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:22:00', '2024-12-11 08:22:00'),
(315, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:22:30', '2024-12-11 08:22:30'),
(316, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:26:39', '2024-12-11 08:26:39'),
(317, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:26:57', '2024-12-11 08:26:57'),
(318, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:33:03', '2024-12-11 08:33:03'),
(319, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:35:26', '2024-12-11 08:35:26'),
(320, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:35:54', '2024-12-11 08:35:54'),
(321, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:36:17', '2024-12-11 08:36:17'),
(322, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:36:41', '2024-12-11 08:36:41'),
(323, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:37:00', '2024-12-11 08:37:00'),
(324, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:37:27', '2024-12-11 08:37:27'),
(325, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:37:54', '2024-12-11 08:37:54'),
(326, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:38:15', '2024-12-11 08:38:15'),
(327, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:40:40', '2024-12-11 08:40:40'),
(328, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:41:00', '2024-12-11 08:41:00'),
(329, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:41:56', '2024-12-11 08:41:56'),
(330, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:42:20', '2024-12-11 08:42:20'),
(331, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:43:16', '2024-12-11 08:43:16'),
(332, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:43:40', '2024-12-11 08:43:40'),
(333, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:46:19', '2024-12-11 08:46:19'),
(334, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:46:42', '2024-12-11 08:46:42'),
(335, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:47:11', '2024-12-11 08:47:11'),
(336, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:47:31', '2024-12-11 08:47:31'),
(337, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:48:00', '2024-12-11 08:48:00'),
(338, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:48:38', '2024-12-11 08:48:38'),
(339, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:48:59', '2024-12-11 08:48:59'),
(340, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:49:36', '2024-12-11 08:49:36'),
(341, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 08:50:02', '2024-12-11 08:50:02'),
(342, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 09:28:18', '2024-12-11 09:28:18'),
(343, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 09:28:39', '2024-12-11 09:28:39'),
(344, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 09:29:01', '2024-12-11 09:29:01'),
(345, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 09:29:22', '2024-12-11 09:29:22'),
(346, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 09:29:44', '2024-12-11 09:29:44'),
(347, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 09:30:15', '2024-12-11 09:30:15'),
(348, 'Teacher', 1, 'Create student account', 'ID Number: 707200, Name: Charles Jasper Cerrudo', '2024-12-11 09:34:14', '2024-12-11 09:34:14'),
(349, 'Teacher', 1, 'Updated user account', 'ID Number: 779907, Name: vernie jay albina', '2024-12-11 09:36:30', '2024-12-11 09:36:30'),
(350, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 10:01:12', '2024-12-11 10:01:12'),
(351, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-11 10:01:29', '2024-12-11 10:01:29'),
(352, 'Teacher', 1, 'Exported subject list', NULL, '2024-12-11 10:12:55', '2024-12-11 10:12:55'),
(353, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-11 19:09:34', '2024-12-11 19:09:34'),
(354, 'Teacher', 1, 'Create student account', 'ID Number: 864794, Name: Aldrin E Caballero', '2024-12-12 09:46:30', '2024-12-12 09:46:30'),
(355, 'Teacher', 1, 'Deleted student account', 'ID Number: 864794, Name: Aldrin E Caballero', '2024-12-12 10:25:50', '2024-12-12 10:25:50'),
(356, 'Teacher', 1, 'Create student account', 'ID Number: 247753, Name: Aldrin E Caballero', '2024-12-12 18:37:47', '2024-12-12 18:37:47'),
(357, 'Teacher', 1, 'Create student account', 'ID Number: 805183, Name: sheena T Picondo', '2024-12-13 10:23:13', '2024-12-13 10:23:13'),
(358, 'Teacher', 1, 'Create student account', 'ID Number: 972841, Name: Mark Reyes', '2024-12-13 10:26:34', '2024-12-13 10:26:34'),
(359, 'Teacher', 1, 'Create student account', 'ID Number: 205042, Name: Shaira T Picondo', '2024-12-13 10:30:44', '2024-12-13 10:30:44'),
(360, 'Teacher', 1, 'Create student account', 'ID Number: 552697, Name: Gimwell C Abel', '2024-12-13 10:36:50', '2024-12-13 10:36:50'),
(361, 'Teacher', 1, 'Create student account', 'ID Number: 973749, Name: Makky d Lufyy', '2024-12-13 10:40:57', '2024-12-13 10:40:57'),
(362, 'Teacher', 1, 'Create student account', 'ID Number: 958630, Name: Mitch millanes Sabas', '2024-12-13 17:00:42', '2024-12-13 17:00:42'),
(363, 'Teacher', 1, 'Create student account', 'ID Number: 249597, Name: Mary Joy Lonceras', '2024-12-13 18:20:35', '2024-12-13 18:20:35'),
(364, 'Teacher', 1, 'Updated user account', 'ID Number: 958630, Name: Mitch millanes Sabas', '2024-12-13 18:24:28', '2024-12-13 18:24:28'),
(365, 'Teacher', 1, 'Added the subject  to Mitch millanes Sabas\'s account', NULL, '2024-12-13 18:24:36', '2024-12-13 18:24:36'),
(366, 'Teacher', 1, 'Added the subject  to Mitch millanes Sabas\'s account', NULL, '2024-12-13 18:24:48', '2024-12-13 18:24:48'),
(367, 'Teacher', 1, 'Deleted student account', 'ID Number: 958630, Name: Mitch millanes Sabas', '2024-12-13 18:40:25', '2024-12-13 18:40:25'),
(368, 'Teacher', 1, 'Create student account', 'ID Number: 278715, Name: Mitch millanes Sabas', '2024-12-13 18:45:33', '2024-12-13 18:45:33'),
(369, 'Teacher', 1, 'Added the subject  to Mitch millanes Sabas\'s account', NULL, '2024-12-13 18:53:09', '2024-12-13 18:53:09'),
(370, 'Teacher', 1, 'Deleted student account', 'ID Number: 247753, Name: Aldrin E Caballero', '2024-12-16 18:36:49', '2024-12-16 18:36:49'),
(371, 'Teacher', 1, 'Create student account', 'ID Number: 651687, Name: Kyle Anos', '2024-12-17 08:54:25', '2024-12-17 08:54:25'),
(372, 'Teacher', 1, 'Create student account', 'ID Number: 893177, Name: Katherine grace inson', '2024-12-17 08:56:44', '2024-12-17 08:56:44'),
(373, 'Teacher', 1, 'Added the subject  to Mitch millanes Sabas\'s account', NULL, '2024-12-17 09:31:18', '2024-12-17 09:31:18'),
(374, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:33:49', '2024-12-17 09:33:49'),
(375, 'Teacher', 1, 'Added the subject  to Mitch millanes Sabas\'s account', NULL, '2024-12-17 09:34:23', '2024-12-17 09:34:23'),
(376, 'Teacher', 1, 'Updated user account', 'ID Number: 761908, Name: jorge jader', '2024-12-17 09:36:05', '2024-12-17 09:36:05'),
(377, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:39:02', '2024-12-17 09:39:02'),
(378, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:40:25', '2024-12-17 09:40:25'),
(379, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:44:15', '2024-12-17 09:44:15'),
(380, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:45:20', '2024-12-17 09:45:20'),
(381, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:46:00', '2024-12-17 09:46:00'),
(382, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:46:26', '2024-12-17 09:46:26'),
(383, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:47:01', '2024-12-17 09:47:01'),
(384, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:47:38', '2024-12-17 09:47:38'),
(385, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:49:07', '2024-12-17 09:49:07'),
(386, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:49:53', '2024-12-17 09:49:53'),
(387, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:50:29', '2024-12-17 09:50:29'),
(388, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:51:06', '2024-12-17 09:51:06'),
(389, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:51:42', '2024-12-17 09:51:42'),
(390, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:52:27', '2024-12-17 09:52:27'),
(391, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:53:02', '2024-12-17 09:53:02'),
(392, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-17 09:53:31', '2024-12-17 09:53:31'),
(393, 'Teacher', 1, 'Updated user account', 'ID Number: 761908, Name: jorge jader', '2024-12-18 16:06:06', '2024-12-18 16:06:06'),
(394, 'Teacher', 1, 'Added the subject  to Mark Reyes\'s account', NULL, '2024-12-18 20:50:46', '2024-12-18 20:50:46'),
(395, 'Teacher', 1, 'Added the subject  to Mark Reyes\'s account', NULL, '2024-12-18 20:50:50', '2024-12-18 20:50:50'),
(396, 'Teacher', 1, 'Added the subject  to Mark Reyes\'s account', NULL, '2024-12-18 20:50:57', '2024-12-18 20:50:57'),
(397, 'Teacher', 1, 'Added the subject  to Mark Reyes\'s account', NULL, '2024-12-18 20:51:02', '2024-12-18 20:51:02'),
(398, 'Teacher', 1, 'Added the subject  to Mark Reyes\'s account', NULL, '2024-12-18 20:51:30', '2024-12-18 20:51:30'),
(399, 'Teacher', 1, 'Added the subject  to Shaira T Picondo\'s account', NULL, '2024-12-18 20:51:54', '2024-12-18 20:51:54'),
(400, 'Teacher', 1, 'Added the subject  to Shaira T Picondo\'s account', NULL, '2024-12-18 20:51:58', '2024-12-18 20:51:58'),
(401, 'Teacher', 1, 'Added the subject  to Shaira T Picondo\'s account', NULL, '2024-12-18 20:52:02', '2024-12-18 20:52:02'),
(402, 'Teacher', 1, 'Added the subject  to Shaira T Picondo\'s account', NULL, '2024-12-18 20:52:08', '2024-12-18 20:52:08'),
(403, 'Teacher', 1, 'Added the subject  to Shaira T Picondo\'s account', NULL, '2024-12-18 20:52:12', '2024-12-18 20:52:12'),
(404, 'Teacher', 1, 'Added the subject  to Shaira T Picondo\'s account', NULL, '2024-12-18 20:52:21', '2024-12-18 20:52:21'),
(405, 'Teacher', 1, 'Added the subject  to Shaira T Picondo\'s account', NULL, '2024-12-18 20:52:25', '2024-12-18 20:52:25'),
(406, 'Teacher', 1, 'Added the subject  to Shaira T Picondo\'s account', NULL, '2024-12-18 20:53:39', '2024-12-18 20:53:39'),
(407, 'Teacher', 1, 'Added the subject  to Gimwell C Abel\'s account', NULL, '2024-12-18 20:54:26', '2024-12-18 20:54:26'),
(408, 'Teacher', 1, 'Added the subject  to Gimwell C Abel\'s account', NULL, '2024-12-18 20:54:31', '2024-12-18 20:54:31'),
(409, 'Teacher', 1, 'Updated user account', 'ID Number: 973749, Name: Maky d Lufyy', '2024-12-19 10:31:03', '2024-12-19 10:31:03'),
(410, 'Teacher', 1, 'Added the subject  to jorge jader\'s account', NULL, '2024-12-19 11:03:16', '2024-12-19 11:03:16'),
(411, 'Teacher', 1, 'Added the subject  to jorge jader\'s account', NULL, '2024-12-19 11:03:22', '2024-12-19 11:03:22'),
(412, 'Teacher', 1, 'Added the subject  to jorge jader\'s account', NULL, '2024-12-19 11:03:27', '2024-12-19 11:03:27'),
(413, 'Teacher', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-19 14:01:47', '2024-12-19 14:01:47'),
(414, 'Teacher', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-19 14:01:56', '2024-12-19 14:01:56'),
(415, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-19 14:17:22', '2024-12-19 14:17:22'),
(416, 'Teacher', 1, 'Updated a subject ', 'Subject updated: ', '2024-12-19 14:17:36', '2024-12-19 14:17:36'),
(417, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 14:19:56', '2024-12-19 14:19:56'),
(418, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-19 14:24:18', '2024-12-19 14:24:18'),
(419, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 14:24:59', '2024-12-19 14:24:59'),
(420, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:09:56', '2024-12-19 15:09:56'),
(421, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:10:29', '2024-12-19 15:10:29'),
(422, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:11:05', '2024-12-19 15:11:05'),
(423, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:14:40', '2024-12-19 15:14:40'),
(424, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:15:00', '2024-12-19 15:15:00'),
(425, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:15:28', '2024-12-19 15:15:28'),
(426, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:15:51', '2024-12-19 15:15:51'),
(427, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:16:12', '2024-12-19 15:16:12'),
(428, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:17:21', '2024-12-19 15:17:21');
INSERT INTO `histories` (`id`, `position`, `user_id`, `history`, `description`, `created_at`, `updated_at`) VALUES
(429, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:18:10', '2024-12-19 15:18:10'),
(430, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:19:01', '2024-12-19 15:19:01'),
(431, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:19:55', '2024-12-19 15:19:55'),
(432, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:40:39', '2024-12-19 15:40:39'),
(433, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:41:08', '2024-12-19 15:41:08'),
(434, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 15:41:48', '2024-12-19 15:41:48'),
(435, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 19:17:04', '2024-12-19 19:17:04'),
(436, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 19:17:35', '2024-12-19 19:17:35'),
(437, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-19 19:18:04', '2024-12-19 19:18:04'),
(438, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-20 10:21:40', '2024-12-20 10:21:40'),
(439, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-20 10:27:26', '2024-12-20 10:27:26'),
(440, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-20 10:28:50', '2024-12-20 10:28:50'),
(441, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-20 10:30:42', '2024-12-20 10:30:42'),
(442, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-20 10:31:46', '2024-12-20 10:31:46'),
(443, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-20 10:34:40', '2024-12-20 10:34:40'),
(444, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-20 10:40:07', '2024-12-20 10:40:07'),
(445, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-20 10:41:25', '2024-12-20 10:41:25'),
(446, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-20 10:41:31', '2024-12-20 10:41:31'),
(447, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-20 10:49:40', '2024-12-20 10:49:40'),
(448, 'Teacher', 1, 'Deleted a subject ', 'Subject deleted: ', '2024-12-20 10:49:55', '2024-12-20 10:49:55'),
(449, 'Teacher', 1, 'Create student account', 'ID Number: 595847, Name: Saisair Vergara', '2024-12-20 13:51:47', '2024-12-20 13:51:47'),
(450, 'Teacher', 1, 'Created a subject', 'Subject created: ', '2024-12-20 14:13:03', '2024-12-20 14:13:03'),
(451, 'Teacher', 2, 'Create student account', 'ID Number: 893703, Name: Kyle Christian Anos', '2024-12-30 15:30:09', '2024-12-30 15:30:09'),
(452, 'Admin', 6, 'Updated guidance account', 'ID Number: 1166683049, Name: katherine Inson', '2024-12-30 16:22:02', '2024-12-30 16:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_type` varchar(255) NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `sender_type`, `receiver_id`, `receiver_type`, `id_number`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\Teacher\\TeacherAccount', 2, 'App\\Models\\Teacher\\TeacherAccount', '2194586145', 'uyu', '2024-12-02 01:38:59', '2024-12-02 01:38:59'),
(2, 1, 'App\\Models\\Teacher\\TeacherAccount', 2, 'App\\Models\\Teacher\\TeacherAccount', '2194586145', 'hello', '2024-12-02 14:33:28', '2024-12-02 14:33:28'),
(3, 1, 'App\\Models\\Admin\\AdminAccount', 2, 'App\\Models\\Teacher\\TeacherAccount', '1919757448', 'hi', '2024-12-02 17:14:10', '2024-12-02 17:14:10'),
(4, 1, 'App\\Models\\Teacher\\TeacherAccount', 2, 'App\\Models\\Teacher\\TeacherAccount', '2194586145', 'https://mywebed.com/send_mail_attendance', '2024-12-19 11:01:36', '2024-12-19 11:01:36'),
(5, 1, 'App\\Models\\Teacher\\TeacherAccount', 2, 'App\\Models\\Teacher\\TeacherAccount', '2194586145', 'hello man', '2025-01-04 17:51:04', '2025-01-04 17:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `presents`
--

CREATE TABLE `presents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `grade_handle_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `presents`
--

INSERT INTO `presents` (`id`, `student_id`, `subject_id`, `teacher_id`, `grade_handle_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, 1, '2024-11-27 11:00:40', '2024-11-27 11:00:40'),
(2, 1, 1, 1, 1, '2024-11-27 15:10:08', '2024-11-27 15:10:08'),
(3, 16, 2, 1, 1, '2024-11-29 13:42:27', '2024-11-29 13:42:27'),
(4, 5, 2, 1, 1, '2024-12-02 13:45:42', '2024-12-02 13:45:42'),
(5, 16, 2, 1, 1, '2024-12-05 22:23:18', '2024-12-05 22:23:18'),
(6, 27, 2, 1, 1, '2024-12-06 22:16:19', '2024-12-06 22:16:19'),
(7, 27, 5, 1, 1, '2024-12-06 23:18:20', '2024-12-06 23:18:20'),
(8, 29, 4, 1, 1, '2024-12-07 08:34:22', '2024-12-07 08:34:22'),
(9, 2, 4, 1, 1, '2024-12-07 12:48:39', '2024-12-07 12:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `qr_generates`
--

CREATE TABLE `qr_generates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `qr_code_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qr_generates`
--

INSERT INTO `qr_generates` (`id`, `subject_id`, `teacher_id`, `qr_code_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '67468b3927a0a', '2024-11-27 11:00:09', '2024-11-27 11:00:09'),
(2, 1, 1, '67468b3e43f6d', '2024-11-27 11:00:14', '2024-11-27 11:00:14'),
(3, 1, 1, '67468b5bd33ef', '2024-11-27 11:00:43', '2024-11-27 11:00:43'),
(4, 1, 1, '6746c5b8e29a7', '2024-11-27 15:09:44', '2024-11-27 15:09:44'),
(5, 1, 1, '6746c5c104c50', '2024-11-27 15:09:53', '2024-11-27 15:09:53'),
(6, 1, 1, '6746c5d87d055', '2024-11-27 15:10:16', '2024-11-27 15:10:16'),
(7, 1, 1, '6746ca96f3d1c', '2024-11-27 15:30:31', '2024-11-27 15:30:31'),
(8, 1, 1, '6746ca9c21c7e', '2024-11-27 15:30:36', '2024-11-27 15:30:36'),
(9, 1, 1, '6746caa91239c', '2024-11-27 15:30:49', '2024-11-27 15:30:49'),
(10, 1, 1, '6747dc3239920', '2024-11-28 10:57:54', '2024-11-28 10:57:54'),
(11, 1, 1, '6747dc35caf31', '2024-11-28 10:57:57', '2024-11-28 10:57:57'),
(12, 2, 1, '67480017bfba7', '2024-11-28 13:31:03', '2024-11-28 13:31:03'),
(13, 2, 1, '6748001b72097', '2024-11-28 13:31:07', '2024-11-28 13:31:07'),
(14, 47, 2, '6748839110cd6', '2024-11-28 22:52:01', '2024-11-28 22:52:01'),
(15, 47, 2, '674884a4d68f1', '2024-11-28 22:56:36', '2024-11-28 22:56:36'),
(16, 47, 2, '674884e3a4f86', '2024-11-28 22:57:39', '2024-11-28 22:57:39'),
(17, 47, 2, '674887788439f', '2024-11-28 23:08:40', '2024-11-28 23:08:40'),
(18, 47, 2, '674887de2130e', '2024-11-28 23:10:22', '2024-11-28 23:10:22'),
(19, 2, 1, '674953d879ae4', '2024-11-29 13:40:40', '2024-11-29 13:40:40'),
(20, 2, 1, '674953de48bf6', '2024-11-29 13:40:46', '2024-11-29 13:40:46'),
(21, 2, 1, '674954d14450f', '2024-11-29 13:44:49', '2024-11-29 13:44:49'),
(22, 2, 1, '674c939680721', '2024-12-02 00:49:26', '2024-12-02 00:49:26'),
(23, 2, 1, '674c93dacdd04', '2024-12-02 00:50:34', '2024-12-02 00:50:34'),
(24, 4, 1, '674c93ec8f193', '2024-12-02 00:50:52', '2024-12-02 00:50:52'),
(25, 9, 1, '674c93f73fcb4', '2024-12-02 00:51:03', '2024-12-02 00:51:03'),
(26, 2, 1, '674d453d8ccde', '2024-12-02 13:27:25', '2024-12-02 13:27:25'),
(27, 2, 1, '674d454293aae', '2024-12-02 13:27:30', '2024-12-02 13:27:30'),
(28, 2, 1, '674d497a015dc', '2024-12-02 13:45:30', '2024-12-02 13:45:30'),
(29, 2, 1, '674d497f09f33', '2024-12-02 13:45:35', '2024-12-02 13:45:35'),
(30, 2, 1, '674d498bf3a59', '2024-12-02 13:45:48', '2024-12-02 13:45:48'),
(31, 2, 1, '674d52dfa5a5a', '2024-12-02 14:25:35', '2024-12-02 14:25:35'),
(32, 2, 1, '674d52e707595', '2024-12-02 14:25:43', '2024-12-02 14:25:43'),
(33, 2, 1, '674d52f6e0d14', '2024-12-02 14:25:58', '2024-12-02 14:25:58'),
(34, 47, 2, '674fcc18ea200', '2024-12-04 11:27:20', '2024-12-04 11:27:20'),
(35, 47, 2, '674fcc1e4798c', '2024-12-04 11:27:26', '2024-12-04 11:27:26'),
(36, 2, 1, '6751b71951653', '2024-12-05 22:22:17', '2024-12-05 22:22:17'),
(37, 2, 1, '6751b71c844e1', '2024-12-05 22:22:20', '2024-12-05 22:22:20'),
(38, 2, 1, '6751b781e6384', '2024-12-05 22:24:01', '2024-12-05 22:24:01'),
(39, 49, 1, '6751b86d7a179', '2024-12-05 22:27:57', '2024-12-05 22:27:57'),
(40, 4, 1, '6751b87616457', '2024-12-05 22:28:06', '2024-12-05 22:28:06'),
(41, 4, 1, '6751b9443c12a', '2024-12-05 22:31:32', '2024-12-05 22:31:32'),
(42, 2, 1, '6753072952156', '2024-12-06 22:16:09', '2024-12-06 22:16:09'),
(43, 2, 1, '6753072c4480b', '2024-12-06 22:16:12', '2024-12-06 22:16:12'),
(44, 2, 1, '6753073a96732', '2024-12-06 22:16:26', '2024-12-06 22:16:26'),
(45, 4, 1, '675307913e980', '2024-12-06 22:17:53', '2024-12-06 22:17:53'),
(46, 7, 1, '675307dfaa096', '2024-12-06 22:19:11', '2024-12-06 22:19:11'),
(47, 2, 1, '6753080449244', '2024-12-06 22:19:48', '2024-12-06 22:19:48'),
(48, 5, 1, '6753159ce5a01', '2024-12-06 23:17:48', '2024-12-06 23:17:48'),
(49, 5, 1, '675315aae4f8a', '2024-12-06 23:18:02', '2024-12-06 23:18:02'),
(50, 5, 1, '675315d273022', '2024-12-06 23:18:42', '2024-12-06 23:18:42'),
(51, 4, 1, '675395168fcff', '2024-12-07 08:21:42', '2024-12-07 08:21:42'),
(52, 4, 1, '6753951b070af', '2024-12-07 08:21:47', '2024-12-07 08:21:47'),
(53, 4, 1, '675397dd6bc1d', '2024-12-07 08:33:33', '2024-12-07 08:33:33'),
(54, 4, 1, '6753d25cd02e0', '2024-12-07 12:43:08', '2024-12-07 12:43:08'),
(55, 4, 1, '6753d25ef1f67', '2024-12-07 12:43:10', '2024-12-07 12:43:10'),
(56, 4, 1, '6753d263a0a89', '2024-12-07 12:43:15', '2024-12-07 12:43:15'),
(57, 4, 1, '6753d2685772f', '2024-12-07 12:43:20', '2024-12-07 12:43:20'),
(58, 5, 1, '6753d27cadcf8', '2024-12-07 12:43:40', '2024-12-07 12:43:40'),
(59, 5, 1, '6753d280c9af2', '2024-12-07 12:43:44', '2024-12-07 12:43:44'),
(60, 4, 1, '6753d395773ca', '2024-12-07 12:48:21', '2024-12-07 12:48:21'),
(61, 4, 1, '6753d399aeb0a', '2024-12-07 12:48:25', '2024-12-07 12:48:25'),
(62, 4, 1, '6753d3abd5c2c', '2024-12-07 12:48:43', '2024-12-07 12:48:43'),
(63, 5, 1, '6753d3ca706cc', '2024-12-07 12:49:14', '2024-12-07 12:49:14'),
(64, 55, 1, '6753d3d287645', '2024-12-07 12:49:22', '2024-12-07 12:49:22'),
(65, 55, 1, '6753d3d87d585', '2024-12-07 12:49:28', '2024-12-07 12:49:28'),
(66, 4, 1, '6753d429e7fd8', '2024-12-07 12:50:49', '2024-12-07 12:50:49'),
(67, 4, 1, '6753d42c727e5', '2024-12-07 12:50:52', '2024-12-07 12:50:52'),
(68, 4, 1, '6753d432bf38f', '2024-12-07 12:50:58', '2024-12-07 12:50:58'),
(69, 4, 1, '6753d434e1698', '2024-12-07 12:51:00', '2024-12-07 12:51:00'),
(70, 4, 1, '6753d435b55c2', '2024-12-07 12:51:01', '2024-12-07 12:51:01'),
(71, 56, 1, '67581367a6192', '2024-12-10 18:09:43', '2024-12-10 18:09:43'),
(72, 56, 1, '6758136a68656', '2024-12-10 18:09:46', '2024-12-10 18:09:46'),
(73, 56, 1, '67581373a342b', '2024-12-10 18:09:55', '2024-12-10 18:09:55'),
(74, 56, 1, '6758137be47c0', '2024-12-10 18:10:03', '2024-12-10 18:10:03'),
(75, 56, 1, '675813819685e', '2024-12-10 18:10:09', '2024-12-10 18:10:09'),
(76, 56, 1, '6758138b31a2a', '2024-12-10 18:10:19', '2024-12-10 18:10:19'),
(77, 78, 1, '6758f4a47d21e', '2024-12-11 10:10:44', '2024-12-11 10:10:44'),
(78, 78, 1, '6758f4a7747c8', '2024-12-11 10:10:47', '2024-12-11 10:10:47'),
(79, 78, 1, '6758f4af59668', '2024-12-11 10:10:55', '2024-12-11 10:10:55'),
(80, 78, 1, '6758f4b415976', '2024-12-11 10:11:00', '2024-12-11 10:11:00'),
(81, 78, 1, '6758f4bcb6f15', '2024-12-11 10:11:08', '2024-12-11 10:11:08'),
(82, 56, 1, '675966807080d', '2024-12-11 18:16:32', '2024-12-11 18:16:32'),
(83, 56, 1, '6759668391ec1', '2024-12-11 18:16:35', '2024-12-11 18:16:35'),
(84, 56, 1, '67596688e14c8', '2024-12-11 18:16:40', '2024-12-11 18:16:40'),
(85, 56, 1, '6759668d0f414', '2024-12-11 18:16:45', '2024-12-11 18:16:45'),
(86, 58, 1, '675a7827eec38', '2024-12-12 13:44:07', '2024-12-12 13:44:07'),
(87, 58, 1, '675a782aaa425', '2024-12-12 13:44:10', '2024-12-12 13:44:10'),
(88, 58, 1, '675a783065c3e', '2024-12-12 13:44:16', '2024-12-12 13:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `seen_announcements`
--

CREATE TABLE `seen_announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `announcement_id` bigint(20) UNSIGNED NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `grade_handle_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0o7411m5F6xn7JFUApMmV1pnTeX2AM7BOUnTuFQC', NULL, '93.159.230.84', 'Mozilla/5.0 (Linux; arm_64; Android 12; CPH2205) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.86.00 SA/3 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXRkNGRoVG5MeFA2NGlYUXlLUzROa0lxSXVzdnV3R1Z4cmhYWHhPVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHBzOi8vbXl3ZWJlZC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736051996),
('5P9PTE6pvj48mPdyIvskNuXl8qmDpCaAfNr9nBRs', 2, '223.25.26.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN3RjNXExZzdyNHJZekdOeXpVcHNjTURsZmh5T280RTV5bEI0ZjgwTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vbXl3ZWJlZC5jb20vdGVhY2hlci9kYXNoYm9hcmQiO31zOjU0OiJsb2dpbl90ZWFjaGVyXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1736053506),
('E6lROhmxWTrHXiks9xyGUlIYw4as7L6EJ0J3pu6k', 54, '223.25.26.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiN2d1bDN5QnhWYnoxdDB1cmdRSWo5YjNmS0hKOGtNZ1hyb0VFNEtsVyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ3OiJodHRwczovL215d2ViZWQuY29tL3N0dWRlbnQvdW5zZWVuQW5ub3VuY2VtZW50cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTQ6ImxvZ2luX3N0dWRlbnRfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1NDt9', 1736058302);

-- --------------------------------------------------------

--
-- Table structure for table `student_accounts`
--

CREATE TABLE `student_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `extension_name` varchar(255) DEFAULT NULL,
  `strand` varchar(255) NOT NULL,
  `section` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `parents_contact_number` varchar(255) NOT NULL,
  `parents_email` varchar(255) DEFAULT NULL,
  `lrn` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'Student',
  `profile` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_accounts`
--

INSERT INTO `student_accounts` (`id`, `id_number`, `name`, `gender`, `extension_name`, `strand`, `section`, `grade`, `parents_contact_number`, `parents_email`, `lrn`, `birthdate`, `username`, `password`, `email`, `role`, `profile`, `address`, `phone_number`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(31, '761908', 'jorge jader', 'Female', 'Jorge', 'ICT', 'A', 11, '09999999999', 'jorabsse@gmail.com', '123453473848', '2000-10-09', 'jorge', '$2y$12$mV.V.dhhYLRIyLcTqN4buOsY56jh8RA54pQ4k4DIh32Yiu8ibLJQS', 'jorgejader@cstc.edu.ph', 'Student', 'profiles/1733572534_c83c910e-929e-4a76-bf45-cb590789023c.jpeg', NULL, '09999999999', NULL, NULL, '2024-12-07 13:49:05', '2024-12-18 16:06:06'),
(32, '505346', 'Dan Denver Deleon', 'Male', NULL, 'ICT', 'A', 11, '09999999999', 'kathedog@gmail.com', '122283388888', '2000-11-11', 'dan93', '$2y$12$dfeBmVMQcOOig4K/a9VK6eGuLbCYE7KFgsYqvWENDkuyundFQ8uKq', 'kathedog@gmail.com', 'Student', 'profiles/1733557188_462566945_4020800261473103_7415898977799714323_n.jpg', NULL, '09815153125', NULL, NULL, '2024-12-07 15:39:48', '2024-12-07 15:39:48'),
(33, '779907', 'vernie jay albina', 'Male', NULL, 'ICT', 'A', 11, '09898989989', 'kathedog@gmail.com', '122222222222', '2222-02-11', 'vernie', '$2y$12$j.dfGK7x4SG76ojrcbkLYOC2TWL1D4jzi4iz/4/PeDJGj7sG2FLWG', 'jyjyperez@gmail.com', 'Student', 'profiles/1733557785_4585aea5-a8b1-4eb5-b0ff-ea55b253b1fd.jpeg', NULL, '09815153125', NULL, NULL, '2024-12-07 15:49:45', '2024-12-11 09:36:30'),
(34, '390256', 'Ceejay Ibabiosa', 'Male', NULL, 'ICT', 'A', 11, '09999999999', 'kathedog@gmail.com', '122222222222', '2222-02-11', 'ceejay', '$2y$12$touCgF5/BrjydgBB7ia5X.76fCbbI2tOxWaEQDNu68a9kHeNCtTQ6', 'ceejay@gmail.com', 'Student', 'profiles/1733558140_462576376_1488331248494045_5755890805504653636_n.jpg', NULL, '09999999999', NULL, NULL, '2024-12-07 15:55:40', '2024-12-07 15:55:40'),
(36, '494683', 'Evan Tabar', 'Male', NULL, 'ICT', 'A', 11, '09183250603', 'evanogshaha@gmail.com', '434235264253', '2024-01-30', 'evan11', '$2y$12$EPbTi8PHLc.Rh8fDngFCzuOMqegjirf/WlhUwxSUkQDQHnVZRDp4m', 'evanroitabar11@gmail.com', 'Student', 'profiles/1733558809_462642068_1658878244837735_2476803798094847081_n.jpg', NULL, '09183250603', NULL, NULL, '2024-12-07 16:06:49', '2024-12-07 16:06:49'),
(38, '776658', 'Erick Valencia', 'Male', NULL, 'ICT', 'A', 11, '09898989989', 'kathedog@gmail.com', '122336336377', '2000-12-11', 'ericky', '$2y$12$cuO3PrCgsdeMBh/R9w7d5uVdAJICX4kv8NXJqHjGVbo05oJvKJwSO', 'erick@gmail.com', 'Student', 'profiles/1733576294_465236077_1153401336355900_5603218667070634138_n.jpg', NULL, '09999999999', NULL, NULL, '2024-12-07 20:58:14', '2024-12-07 20:58:14'),
(39, '203733', 'Jennyrose T Perez', 'Female', 'caballero', 'ICT', 'A', 11, '09463726104', 'jennyroseperez32@gmail.com', '123542566666', '2002-11-14', 'jenny', '$2y$12$bf7KSFHMBfjLnbZHNJjRDuDDg8xDe1C/0ctzb2pqeEdcUlgx7ItUO', 'jennyroseperez32@gmail.com', 'Student', 'profiles/1733824223_b0eb4157-b5ea-4a8b-94d2-f20f0c3d61e7.jpeg', NULL, '09463726104', NULL, NULL, '2024-12-10 17:50:23', '2024-12-10 17:50:23'),
(40, '707200', 'Charles Jasper Cerrudo', 'Male', NULL, 'ABM', 'A', 11, '09889898989', 'cerrudo@gmail.com', '123455433333', '2000-03-12', 'charles', '$2y$12$wFoq4VSUZJGIWloXMN.7Ne/coUsPRlLp4t.ekfCb3a0puVae85z6G', 'cerrudo@gmail.com', 'Student', 'profiles/1733880854_465369941_1104008104714268_1921778706229998634_n.jpg', NULL, '98989898989', NULL, NULL, '2024-12-11 09:34:14', '2024-12-11 09:34:14'),
(43, '805183', 'sheena T Picondo', 'Female', NULL, 'HUMSS', 'A', 11, '09999999999', 'shen@gmail.com', '090909090090', '2000-02-11', 'sheena', '$2y$12$tR/s4OrcBs10TrCe.s50zuVQX6xXWgu0TXRUkAG0YRrpKTihTmxT.', 'shen@gmail.com', 'Student', 'profiles/1734056593_462646034_1277456750050096_1772162974022016108_n.jpg', NULL, '09090909099', NULL, NULL, '2024-12-13 10:23:13', '2024-12-13 10:23:13'),
(44, '972841', 'Mark Reyes', 'Male', NULL, 'ABM', 'A', 12, '09999999999', 'mrak@gmail.com', '111132343454', '2000-01-04', 'mark', '$2y$12$tJJXx0jKSikqbSwEfveAHObvgeX3AeNubGS3osMuRscOyNqFbFe1K', 'mrak@gmail.com', 'Student', 'profiles/1734056794_b291d347-67b0-41eb-bf76-5db6e54d4bb7.jpeg', NULL, '09999999999', NULL, NULL, '2024-12-13 10:26:34', '2024-12-13 10:26:34'),
(45, '205042', 'Shaira T Picondo', 'Female', NULL, 'ICT', 'A', 12, '09090909090', 'sxka@gmail.com', '345229934394', '2003-04-03', 'shaira', '$2y$12$OmAHa6dt1BEA1y3B4KA3Hehn09Lsatgb5yLw/ogz9Kp9pt.bDGARe', 'sxka@gmail.com', 'Student', 'profiles/1734057044_462554177_598002239421213_7346530664379131474_n.jpg', NULL, '09009999999', NULL, NULL, '2024-12-13 10:30:44', '2024-12-13 10:30:44'),
(46, '552697', 'Gimwell C Abel', 'Male', NULL, 'HE', 'A', 12, '09090999999', 'zxs@gmail.com', '122222222223', '20003-02-12', 'gimwell', '$2y$12$FnEjuwKFxVNdVRHPWb.U4uYJgTTIyHfv5ycHbkw6Zc4mgbSaDKEJG', 'zxs@gmail.com', 'Student', 'profiles/1734057410_465697906_1639937956956601_5785090153773430754_n.jpg', NULL, '09090999999', NULL, NULL, '2024-12-13 10:36:50', '2024-12-13 10:36:50'),
(47, '973749', 'Maky d Lufyy', 'Male', NULL, 'HUMSS', 'A', 12, '99088888888', 'mxa2@gmail.com', '122111111111', '2200-12-12', 'monkeyIoaAQ', '$2y$12$m5Z/wr0saoW1z4vVKyLS4.PskZM2LFUtaM5PlUPaGJJCS45CXvtZi', 'mxa2@gmail.com', 'Student', 'profiles/1734057657_462560103_925421799090066_1746153398716365321_n.jpg', NULL, '09888888888', NULL, NULL, '2024-12-13 10:40:57', '2024-12-19 10:31:03'),
(49, '249597', 'Mary Joy Lonceras', 'Female', NULL, 'ICT', 'C', 11, '09999999999', 'Mjoylonceras@gmail.com', '123456789888', '2001-05-28', 'madam', '$2y$12$DG6BDXndLC8w71B/KCIkRedfBgURv6F/uZNAm5110nj7VHg3xCDZa', 'Mjoylonceras@gmail.com', 'Student', 'profiles/1734085235_23bb49d8-82e0-419e-af99-6e0e18da64c2.jpg', NULL, '98888888888', NULL, NULL, '2024-12-13 18:20:35', '2024-12-13 18:20:35'),
(50, '278715', 'Mitch millanes Sabas', 'Female', 'single', 'ICT', 'B', 11, '09090909090', 'mitchsabas6@gmail.com', '234456777889', '2002-04-04', 'mitch', '$2y$12$tsQkUmh2sBP6STjqnhxYFeuPMcIQDH8NxTKSUJ3pjoW1HcdszXvwO', 'mitchsabas6@gmail.com', 'Student', 'profiles/1734086733_acebb376-89d5-49c5-9718-66a132a76fb3.jpg', NULL, '09090909090', NULL, NULL, '2024-12-13 18:45:33', '2024-12-13 18:45:33'),
(51, '651687', 'Kyle Anos', 'Male', 'k', 'HE', 'A', 11, '09898989989', 'Kylechristian37@gmail.com', '123456788997', '2002-02-12', 'kyle', '$2y$12$958pMeSRk2Jgmld47Bz5IeKr8ZsdOaOGfqzztHe9ia5oaPysLYjQ.', 'Kylechristian37@gmail.com', 'Student', 'profiles/1734396865_c2f3c835-8ebe-42f7-b100-c967cc51b486.jpeg', NULL, '09463726104', NULL, NULL, '2024-12-17 08:54:25', '2024-12-17 08:54:25'),
(52, '893177', 'Katherine grace inson', 'Female', NULL, 'ICT', 'D', 11, '09898989989', 'katherinegracem.inson@gmail.com', '123456545666', '2000-04-10', 'katkat', '$2y$12$.rQ4ZV7YdrJOTH7htq82wOl9JjighuywaiU6SJoCRv7n9KWxsdlzO', 'katherinegracem.inson@gmail.com', 'Student', 'profiles/1734397004_8d434cf9-ee0a-4f4f-8f86-750b7bf8c7e6.jpeg', NULL, '09090909999', NULL, NULL, '2024-12-17 08:56:44', '2024-12-17 08:56:44'),
(53, '595847', 'Saisair Vergara', 'Female', NULL, 'HE', 'A', 11, '09999999999', 'sairavergara@gmail.com', '125364644766', '0200-02-12', 'saisairWaLwFuq', '$2y$12$7B2vOJVoCyC2raimCwlS7.MroOrjJUDfmHejB6azZly/vT/yxWBj.', 'sairavergara@gmail.com', 'Student', 'profiles/1734673907_462569067_436372072879683_95870299647142203_n.jpg', NULL, '09090909999', NULL, NULL, '2024-12-20 13:51:47', '2024-12-20 13:51:47'),
(54, '893703', 'Kyle Christian Anos', 'Female', 'Caagbay', 'ABM', 'B', 11, '09999999999', 'katherinegracemi@gmail.com', '111111111111', '2001-02-10', 'kc', '$2y$12$4Kd2gzkd9hdQLbTkP.CuUu9WuNighemcAcqz8GsrvQkvpDIvBWDgW', 'kathegracemadrideoinson@gmail.com', 'Student', 'profiles/1735543809_470647972_2251951715176867_3917293658509866016_n.jpg', NULL, '09090909999', NULL, NULL, '2024-12-30 15:30:09', '2024-12-30 15:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `student_grades`
--

CREATE TABLE `student_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade_handle_id` bigint(20) UNSIGNED NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `strand` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `quarter` varchar(255) DEFAULT NULL,
  `track` varchar(255) DEFAULT NULL,
  `written_1` int(11) DEFAULT NULL,
  `written_2` int(11) DEFAULT NULL,
  `written_3` int(11) DEFAULT NULL,
  `written_4` int(11) DEFAULT NULL,
  `written_5` int(11) DEFAULT NULL,
  `written_6` int(11) DEFAULT NULL,
  `written_7` int(11) DEFAULT NULL,
  `written_8` int(11) DEFAULT NULL,
  `written_9` int(11) DEFAULT NULL,
  `written_10` int(11) DEFAULT NULL,
  `written_total` int(11) DEFAULT NULL,
  `written_ps` int(11) DEFAULT NULL,
  `written_ws` int(11) DEFAULT NULL,
  `task_1` int(11) DEFAULT NULL,
  `task_2` int(11) DEFAULT NULL,
  `task_3` int(11) DEFAULT NULL,
  `task_4` int(11) DEFAULT NULL,
  `task_5` int(11) DEFAULT NULL,
  `task_6` int(11) DEFAULT NULL,
  `task_7` int(11) DEFAULT NULL,
  `task_8` int(11) DEFAULT NULL,
  `task_9` int(11) DEFAULT NULL,
  `task_10` int(11) DEFAULT NULL,
  `task_total` int(11) DEFAULT NULL,
  `task_ps` int(11) DEFAULT NULL,
  `task_ws` int(11) DEFAULT NULL,
  `quart_1` int(11) DEFAULT NULL,
  `quart_ps` int(11) DEFAULT NULL,
  `quart_ws` int(11) DEFAULT NULL,
  `initial_grade` double DEFAULT NULL,
  `quarterly_grade` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_grades`
--

INSERT INTO `student_grades` (`id`, `teacher_id`, `student_id`, `grade_handle_id`, `grade`, `strand`, `section`, `subject`, `semester`, `quarter`, `track`, `written_1`, `written_2`, `written_3`, `written_4`, `written_5`, `written_6`, `written_7`, `written_8`, `written_9`, `written_10`, `written_total`, `written_ps`, `written_ws`, `task_1`, `task_2`, `task_3`, `task_4`, `task_5`, `task_6`, `task_7`, `task_8`, `task_9`, `task_10`, `task_total`, `task_ps`, `task_ws`, `quart_1`, `quart_ps`, `quart_ws`, `initial_grade`, `quarterly_grade`, `created_at`, `updated_at`) VALUES
(353, 1, 32, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-10 09:42:00', '2024-12-19 20:15:32'),
(354, 1, 33, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-10 09:42:00', '2024-12-19 20:32:52'),
(355, 1, 34, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 8, 6, 7, 5, 8, 8, 10, 10, 10, 10, 82, 82, 21, 8, 8, 8, 6, 6, 7, 7, 8, 8, 10, 76, 76, 38, 100, 100, 25, 43.94, 70, '2024-12-10 09:42:00', '2024-12-19 20:32:52'),
(356, 1, 36, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 8, 9, 9, 9, 9, 6, 10, 10, 10, 10, 90, 90, 23, 9, 9, 8, 7, 7, 6, 6, 6, 5, 10, 73, 73, 37, 100, 100, 25, 44.19, 71, '2024-12-10 09:42:00', '2024-12-19 20:32:52'),
(357, 1, 38, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 9, 9, 9, 9, 9, 9, 8, 8, 8, 10, 88, 88, 44, 100, 100, 25, 25, 66, '2024-12-10 09:42:00', '2024-12-19 20:32:52'),
(358, 1, 31, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 10, 9, 9, 8, 8, 7, 6, 4, 7, 8, 76, 77, 19, 8, 8, 9, 9, 9, 9, 7, 6, 8, 7, 80, 80, 40, 100, 100, 25, 84.19, 90, '2024-12-10 09:42:00', '2024-12-19 16:04:19'),
(359, 1, 37, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 9, 9, 10, 8, 10, 10, 10, 8, 94, 94, 24, 10, 10, 10, 10, 8, 7, 5, 10, 10, NULL, 80, 80, 40, 5, 50, 13, 74, 83, '2024-12-10 09:42:00', '2024-12-10 09:42:00'),
(360, 1, 39, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 9, 8, 7, 10, 10, 10, 10, 10, 10, 10, 94, 94, 24, 9, 10, 10, 10, 10, 8, 9, 6, 10, 10, 92, 92, 46, 100, 100, 25, 25, 66, '2024-12-11 10:29:36', '2024-12-19 16:04:19'),
(368, 1, 32, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:30:25', '2024-12-11 10:30:25'),
(369, 1, 33, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:30:25', '2024-12-11 10:30:25'),
(370, 1, 34, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:30:25', '2024-12-11 10:30:25'),
(371, 1, 36, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:30:25', '2024-12-11 10:30:25'),
(372, 1, 38, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:30:25', '2024-12-11 10:30:25'),
(373, 1, 31, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:30:25', '2024-12-11 10:30:25'),
(374, 1, 39, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Core Subject', 9, 8, 7, 10, 10, 10, 10, 10, 10, 10, 94, 94, 24, 9, 10, 10, 10, 10, 8, 9, 6, 10, 10, 92, 92, 46, 10, 100, 25, 94.5, 96, '2024-12-11 10:30:25', '2024-12-11 10:30:25'),
(375, 1, 32, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 75, 84, '2024-12-11 10:34:42', '2024-12-11 10:34:42'),
(376, 1, 33, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 75, 84, '2024-12-11 10:34:42', '2024-12-11 10:34:42'),
(377, 1, 34, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 75, 84, '2024-12-11 10:34:42', '2024-12-11 10:34:42'),
(378, 1, 36, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 50, 72, '2024-12-11 10:34:42', '2024-12-11 10:34:42'),
(379, 1, 38, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 99, 99, 50, 100, 100, 25, 100, 100, '2024-12-11 10:34:42', '2024-12-11 10:34:42'),
(380, 1, 31, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 8, 7, 9, 9, 9, 5, 3, 10, 80, 80, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 95, 96, '2024-12-11 10:34:42', '2024-12-11 10:34:42'),
(381, 1, 39, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'Second Quarter', 'Core Subject', 9, 8, 7, 10, 10, 10, 10, 10, 10, 10, 94, 94, 24, 9, 10, 9, 8, 10, 8, 9, 10, 10, 10, 93, 93, 47, 100, 100, 25, 71.5, 82, '2024-12-11 10:34:42', '2024-12-11 10:34:42'),
(382, 1, 32, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Third Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 100, 100, 25, 25, 66, '2024-12-11 10:36:23', '2024-12-11 10:36:23'),
(383, 1, 33, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Third Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:36:23', '2024-12-11 10:36:23'),
(384, 1, 34, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Third Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:36:23', '2024-12-11 10:36:23'),
(385, 1, 36, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Third Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:36:23', '2024-12-11 10:36:23'),
(386, 1, 38, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Third Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:36:23', '2024-12-11 10:36:23'),
(387, 1, 31, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 50, 50, 13, 87.5, 92, '2024-12-11 10:36:23', '2024-12-11 10:36:23'),
(388, 1, 39, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 9, 10, 10, 10, 10, 8, 9, 10, 10, 10, 96, 96, 48, 50, 50, 13, 85.5, 90, '2024-12-11 10:36:23', '2024-12-11 10:36:23'),
(389, 1, 32, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:05', '2024-12-11 10:37:05'),
(390, 1, 33, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:05', '2024-12-11 10:37:05'),
(391, 1, 34, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:05', '2024-12-11 10:37:05'),
(392, 1, 36, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:05', '2024-12-11 10:37:05'),
(393, 1, 38, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:05', '2024-12-11 10:37:05'),
(394, 1, 31, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:05', '2024-12-11 10:37:05'),
(395, 1, 39, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'Second Semester', 'Fourth Quarter', 'Core Subject', 9, 8, 7, 10, 10, 10, 10, 10, 10, 10, 94, 94, 24, 9, 10, 10, 10, 10, 8, 9, 6, 10, 10, 92, 92, 46, 10, 100, 25, 94.5, 96, '2024-12-11 10:37:05', '2024-12-11 10:37:26'),
(396, 1, 32, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:16', '2024-12-11 10:37:16'),
(397, 1, 33, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:16', '2024-12-11 10:37:16'),
(398, 1, 34, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:16', '2024-12-11 10:37:16'),
(399, 1, 36, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:16', '2024-12-11 10:37:16'),
(400, 1, 38, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:16', '2024-12-11 10:37:16'),
(401, 1, 31, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:37:16', '2024-12-11 10:37:16'),
(402, 1, 39, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'Second Semester', 'Fourth Quarter', 'Core Subject', 9, 8, 7, 10, 10, 10, 10, 10, 10, 10, 94, 94, 24, 9, 10, 10, 10, 10, 8, 9, 6, 10, 10, 92, 92, 46, 10, 100, 25, 94.5, 96, '2024-12-11 10:37:16', '2024-12-11 10:37:16'),
(403, 1, 32, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-11 10:38:19', '2024-12-20 10:04:51'),
(404, 1, 33, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-11 10:38:19', '2024-12-20 10:04:51'),
(405, 1, 34, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-11 10:38:19', '2024-12-20 10:04:51'),
(406, 1, 36, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-11 10:38:19', '2024-12-20 10:04:51'),
(407, 1, 38, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-11 10:38:19', '2024-12-20 10:04:51'),
(408, 1, 31, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-11 10:38:19', '2024-12-20 10:04:51'),
(409, 1, 39, 1, '11', 'ICT', 'A', 'Oral Communication in Context', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-11 10:38:19', '2024-12-20 10:04:51'),
(410, 1, 32, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:39:23', '2024-12-11 10:39:23'),
(411, 1, 33, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:39:23', '2024-12-11 10:39:23'),
(412, 1, 34, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:39:23', '2024-12-11 10:39:23'),
(413, 1, 36, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:39:23', '2024-12-11 10:39:23'),
(414, 1, 38, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:39:23', '2024-12-11 10:39:23'),
(415, 1, 31, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:39:23', '2024-12-11 10:39:23'),
(416, 1, 39, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'First Semester', 'Second Quarter', 'Core Subject', 10, 5, 5, 9, 8, 10, 10, 10, 10, 10, 87, 87, 22, 9, 10, 10, 10, 10, 8, 9, 6, 10, 10, 92, 92, 46, 10, 100, 25, 94.5, 96, '2024-12-11 10:39:23', '2024-12-11 10:39:23'),
(417, 1, 32, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:40:18', '2024-12-11 10:40:18'),
(418, 1, 33, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:40:18', '2024-12-11 10:40:18'),
(419, 1, 34, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:40:18', '2024-12-11 10:40:18'),
(420, 1, 36, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:40:18', '2024-12-11 10:40:18'),
(421, 1, 38, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:40:18', '2024-12-11 10:40:18'),
(422, 1, 31, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:40:18', '2024-12-11 10:40:18'),
(423, 1, 39, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'Second Quarter', 'Core Subject', 9, 8, 7, 10, 10, 10, 10, 10, 10, 10, 94, 94, 24, 9, 10, 10, 10, 10, 8, 9, 10, 10, 10, 96, 96, 48, 10, 100, 25, 94.5, 96, '2024-12-11 10:40:18', '2024-12-11 10:40:18'),
(424, 1, 32, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:43:01', '2024-12-11 10:43:01'),
(425, 1, 33, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:43:01', '2024-12-11 10:43:01'),
(426, 1, 34, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:43:01', '2024-12-11 10:43:01'),
(427, 1, 36, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:43:01', '2024-12-11 10:43:01'),
(428, 1, 38, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:43:01', '2024-12-11 10:43:01'),
(429, 1, 31, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 10:43:01', '2024-12-11 10:43:01'),
(430, 1, 39, 1, '11', 'ICT', 'A', 'EARTH AND LIFE SCIENCE', 'First Semester', 'First Quarter', 'Core Subject', 9, 8, 10, 10, 10, 10, 10, 10, 10, 10, 97, 97, 24, 9, 10, 10, 10, 10, 8, 9, 6, 10, 10, 92, 92, 46, 10, 100, 25, 94.5, 96, '2024-12-11 10:43:01', '2024-12-11 10:43:01'),
(431, 1, 32, 1, '11', 'ICT', 'A', 'READING AND WRITING SKILLS', 'Second Semester', 'Third Quarter', 'Applied Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:15:45', '2024-12-11 11:15:45'),
(432, 1, 33, 1, '11', 'ICT', 'A', 'READING AND WRITING SKILLS', 'Second Semester', 'Third Quarter', 'Applied Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:15:45', '2024-12-11 11:15:45'),
(433, 1, 34, 1, '11', 'ICT', 'A', 'READING AND WRITING SKILLS', 'Second Semester', 'Third Quarter', 'Applied Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:15:45', '2024-12-11 11:15:45'),
(434, 1, 36, 1, '11', 'ICT', 'A', 'READING AND WRITING SKILLS', 'Second Semester', 'Third Quarter', 'Applied Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:15:45', '2024-12-11 11:15:45'),
(435, 1, 38, 1, '11', 'ICT', 'A', 'READING AND WRITING SKILLS', 'Second Semester', 'Third Quarter', 'Applied Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:15:45', '2024-12-11 11:15:45'),
(436, 1, 31, 1, '11', 'ICT', 'A', 'READING AND WRITING SKILLS', 'Second Semester', 'Third Quarter', 'Applied Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:15:45', '2024-12-11 11:15:45'),
(437, 1, 39, 1, '11', 'ICT', 'A', 'READING AND WRITING SKILLS', 'Second Semester', 'Third Quarter', 'Applied Subject', 10, 9, 7, 10, 10, 10, 10, 10, 10, 10, 96, 96, 24, 9, 10, 10, 10, 10, 8, 9, 5, 10, 10, 91, 91, 46, 10, 100, 25, 94.5, 96, '2024-12-11 11:15:45', '2024-12-11 11:15:45'),
(438, 1, 32, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:30:36', '2024-12-11 11:30:36'),
(439, 1, 33, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:30:36', '2024-12-11 11:30:36'),
(440, 1, 34, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:30:36', '2024-12-11 11:30:36'),
(441, 1, 36, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:30:36', '2024-12-11 11:30:36'),
(442, 1, 38, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:30:36', '2024-12-11 11:30:36'),
(443, 1, 31, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:30:36', '2024-12-11 11:30:36'),
(444, 1, 39, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'First Quarter', 'Core Subject', 10, 9, 8, 10, 10, 10, 10, 10, 10, 10, 97, 97, 24, 9, 10, 10, 10, 10, 8, 9, 6, 10, 10, 92, 92, 46, 10, 100, 25, 94.5, 96, '2024-12-11 11:30:36', '2024-12-11 11:30:36'),
(445, 1, 32, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:32:29', '2024-12-11 11:32:29'),
(446, 1, 33, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:32:29', '2024-12-11 11:32:29'),
(447, 1, 34, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:32:29', '2024-12-11 11:32:29'),
(448, 1, 36, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:32:29', '2024-12-11 11:32:29'),
(449, 1, 38, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:32:29', '2024-12-11 11:32:29'),
(450, 1, 31, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Fourth Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 11:32:29', '2024-12-11 11:32:29'),
(451, 1, 39, 1, '11', 'ICT', 'A', 'GENERAL MATHEMATICS', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 8, 7, 10, 10, 10, 10, 10, 10, 10, 95, 95, 24, 9, 10, 10, 10, 10, 8, 9, 6, 10, 10, 92, 92, 46, 10, 100, 25, 94.5, 96, '2024-12-11 11:32:29', '2024-12-11 11:32:29'),
(452, 1, 32, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 18:17:52', '2024-12-11 18:17:52'),
(453, 1, 33, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 18:17:52', '2024-12-11 18:17:52'),
(454, 1, 34, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 18:17:52', '2024-12-11 18:17:52'),
(455, 1, 36, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 18:17:52', '2024-12-11 18:17:52'),
(456, 1, 38, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 18:17:52', '2024-12-11 18:17:52'),
(457, 1, 31, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'Second Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-11 18:17:52', '2024-12-11 18:17:52'),
(458, 1, 39, 1, '11', 'ICT', 'A', 'EMPOWERMENT TECHNOLOGIES', 'First Semester', 'Second Quarter', 'Core Subject', 8, 8, 7, 10, 10, 10, 10, 10, 10, 10, 93, 93, 23, 9, 10, 10, 10, 10, 8, 9, 10, 10, 10, 96, 96, 48, 10, 100, 25, 94.5, 96, '2024-12-11 18:17:52', '2024-12-11 18:17:52'),
(689, 1, 46, 23, '12', 'HE', 'A', 'Research in Daily Life 2', 'First Semester', 'First Quarter', 'Applied Subject', 10, 9, 8, 7, 5, 7, 9, 9, 5, 8, 77, 78, 19, 9, 5, 8, 8, 9, 9, 9, 8, 8, 7, 80, 80, 40, 100, 100, 25, 84.44, 90, '2024-12-19 15:45:08', '2024-12-19 15:45:08'),
(690, 1, 40, 18, '11', 'ABM', 'A', 'Research in Daily Life 1', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-19 18:48:58', '2024-12-19 18:48:58'),
(691, 1, 45, 22, '12', 'ICT', 'A', 'CONTEMPORARY PHILIPPINE ARTS FROM THE REGIONS', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-19 18:51:43', '2024-12-19 18:51:43'),
(692, 1, 46, 23, '12', 'HE', 'A', 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'First Semester', 'Second Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 25, 84.44, 90, '2024-12-19 19:10:57', '2024-12-19 19:10:57'),
(693, 1, 46, 23, '12', 'HE', 'A', 'Media and Information Literacy', 'First Semester', 'Second Quarter', 'Core Subject', 10, 9, 8, 7, 5, 7, 9, 9, 5, 8, 77, 78, 19, 9, 5, 8, 8, 9, 9, 9, 10, 10, 10, 87, 87, 44, 100, 100, 25, 84.44, 90, '2024-12-19 19:11:59', '2024-12-19 19:12:00'),
(694, 1, 32, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 08:46:43', '2024-12-20 08:46:43'),
(695, 1, 33, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 08:46:43', '2024-12-20 08:46:43'),
(696, 1, 34, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 08:46:43', '2024-12-20 08:46:43'),
(697, 1, 36, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 08:46:43', '2024-12-20 08:46:43'),
(698, 1, 38, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 08:46:43', '2024-12-20 08:46:43'),
(699, 1, 31, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 08:46:43', '2024-12-20 08:46:43'),
(700, 1, 39, 1, '11', 'ICT', 'A', 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'First Semester', 'First Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 08:46:43', '2024-12-20 08:46:43'),
(701, 1, 32, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 08:51:45', '2024-12-20 08:51:45'),
(702, 1, 33, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 08:51:45', '2024-12-20 08:51:45'),
(703, 1, 34, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 08:51:45', '2024-12-20 08:51:45'),
(704, 1, 36, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 08:51:45', '2024-12-20 08:51:45'),
(705, 1, 38, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 08:51:45', '2024-12-20 08:51:45'),
(706, 1, 31, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 08:51:45', '2024-12-20 08:51:45'),
(707, 1, 39, 1, '11', 'ICT', 'A', 'PHYSICAL EDUCATION AND HEALTH', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 08:51:45', '2024-12-20 08:51:45'),
(708, 1, 32, 1, '11', 'ICT', 'A', 'RESEARCH IN DAILY LIFE 1', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 08:57:25', '2024-12-20 08:57:25'),
(709, 1, 33, 1, '11', 'ICT', 'A', 'RESEARCH IN DAILY LIFE 1', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 08:57:25', '2024-12-20 08:57:25'),
(710, 1, 34, 1, '11', 'ICT', 'A', 'RESEARCH IN DAILY LIFE 1', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 08:57:25', '2024-12-20 08:57:25'),
(711, 1, 36, 1, '11', 'ICT', 'A', 'RESEARCH IN DAILY LIFE 1', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 08:57:25', '2024-12-20 08:57:25'),
(712, 1, 38, 1, '11', 'ICT', 'A', 'RESEARCH IN DAILY LIFE 1', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 08:57:25', '2024-12-20 08:57:25'),
(713, 1, 31, 1, '11', 'ICT', 'A', 'RESEARCH IN DAILY LIFE 1', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 08:57:25', '2024-12-20 08:57:25'),
(714, 1, 39, 1, '11', 'ICT', 'A', 'RESEARCH IN DAILY LIFE 1', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 08:57:25', '2024-12-20 08:57:25'),
(715, 1, 40, 18, '11', 'ABM', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 08:58:18', '2024-12-20 08:58:18'),
(716, 1, 43, 20, '11', 'HUMSS', 'A', 'Earth and Life Science', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 08:59:36', '2024-12-20 08:59:36'),
(717, 1, 43, 20, '11', 'HUMSS', 'A', 'Reading and Writing Skills', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:03:39', '2024-12-20 09:03:39'),
(718, 1, 51, 19, '11', 'HE', 'A', 'Earth and Life Science', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:06:45', '2024-12-20 09:06:45'),
(719, 1, 51, 19, '11', 'HE', 'A', 'General Mathematics', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:06:59', '2024-12-20 09:06:59'),
(720, 1, 51, 19, '11', 'HE', 'A', 'Empowerment Technologies', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:07:09', '2024-12-20 09:07:09'),
(721, 1, 51, 19, '11', 'HE', 'A', 'Pagbasa at Pagsusuri ng Iba\'t-Ibang Teksto Tungo sa Pananaliksi', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:07:29', '2024-12-20 09:07:29'),
(722, 1, 45, 22, '12', 'ICT', 'A', 'CONTEMPORARY PHILIPPINE ARTS FROM THE REGIONS', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:08:28', '2024-12-20 09:08:28'),
(723, 1, 45, 22, '12', 'ICT', 'A', 'UNDERSTANDING CULTURE, SOCIETY AND POLITICS', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:09:53', '2024-12-20 09:09:53'),
(724, 1, 44, 21, '12', 'ABM', 'A', 'Contemporary Philippine Arts from the  Regions', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:14:01', '2024-12-20 09:14:01'),
(725, 1, 47, 24, '12', 'HUMSS', 'A', 'Contemporary Philippine Arts from the Regions', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:15:32', '2024-12-20 09:15:32'),
(726, 1, 46, 23, '12', 'HE', 'A', 'Contemporary Philippine Arts from the Regions', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:16:40', '2024-12-20 09:16:40'),
(727, 1, 46, 23, '12', 'HE', 'A', 'Research in Daily Life 2', 'Second Semester', 'Fourth Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 09:21:39', '2024-12-20 09:21:39'),
(728, 1, 46, 23, '12', 'HE', 'A', 'Research in Daily Life 2', 'First Semester', 'Second Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 09:25:43', '2024-12-20 09:25:43'),
(729, 1, 46, 23, '12', 'HE', 'A', 'Contemporary Philippine Arts from the Regions', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:28:47', '2024-12-20 09:28:47'),
(730, 1, 50, 25, '11', 'ICT', 'B', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:35:27', '2024-12-20 09:35:27'),
(731, 1, 50, 25, '11', 'ICT', 'B', 'Oral Communication in Context', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:35:48', '2024-12-20 09:35:48'),
(732, 1, 50, 25, '11', 'ICT', 'B', 'KOMUNIKASYON AT PANANALIKSIK SA WIKA AT KULTURANG PILIPINO', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:36:21', '2024-12-20 09:36:21'),
(733, 1, 50, 25, '11', 'ICT', 'B', 'KOMUNIKASYON AT PANANALIKSIK SA WIKA AT KULTURANG PILIPINO', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:36:30', '2024-12-20 09:36:30'),
(734, 1, 50, 25, '11', 'ICT', 'B', 'READING AND WRITING SKILLS', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:40:01', '2024-12-20 09:40:01'),
(735, 1, 50, 25, '11', 'ICT', 'B', 'READING AND WRITING SKILLS', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:40:17', '2024-12-20 09:40:17'),
(736, 1, 50, 25, '11', 'ICT', 'B', 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:41:47', '2024-12-20 09:41:48'),
(737, 1, 50, 25, '11', 'ICT', 'B', 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:41:57', '2024-12-20 09:41:57'),
(738, 1, 32, 1, '11', 'ICT', 'A', 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:48:04', '2024-12-20 09:48:04'),
(739, 1, 33, 1, '11', 'ICT', 'A', 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:48:04', '2024-12-20 09:48:04'),
(740, 1, 34, 1, '11', 'ICT', 'A', 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:48:04', '2024-12-20 09:48:04'),
(741, 1, 36, 1, '11', 'ICT', 'A', 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:48:04', '2024-12-20 09:48:04'),
(742, 1, 38, 1, '11', 'ICT', 'A', 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:48:04', '2024-12-20 09:48:04'),
(743, 1, 31, 1, '11', 'ICT', 'A', 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:48:04', '2024-12-20 09:48:04'),
(744, 1, 39, 1, '11', 'ICT', 'A', 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:48:04', '2024-12-20 09:48:04'),
(745, 1, 32, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:53:52', '2024-12-20 09:53:52'),
(746, 1, 33, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:53:52', '2024-12-20 09:53:52'),
(747, 1, 34, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:53:52', '2024-12-20 09:53:52'),
(748, 1, 36, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:53:52', '2024-12-20 09:53:52'),
(749, 1, 38, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:53:52', '2024-12-20 09:53:52'),
(750, 1, 31, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:53:52', '2024-12-20 09:53:52');
INSERT INTO `student_grades` (`id`, `teacher_id`, `student_id`, `grade_handle_id`, `grade`, `strand`, `section`, `subject`, `semester`, `quarter`, `track`, `written_1`, `written_2`, `written_3`, `written_4`, `written_5`, `written_6`, `written_7`, `written_8`, `written_9`, `written_10`, `written_total`, `written_ps`, `written_ws`, `task_1`, `task_2`, `task_3`, `task_4`, `task_5`, `task_6`, `task_7`, `task_8`, `task_9`, `task_10`, `task_total`, `task_ps`, `task_ws`, `quart_1`, `quart_ps`, `quart_ws`, `initial_grade`, `quarterly_grade`, `created_at`, `updated_at`) VALUES
(751, 1, 39, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:53:52', '2024-12-20 09:53:52'),
(752, 1, 40, 18, '11', 'ABM', 'A', 'Organization and Management', 'Second Semester', 'Fourth Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 09:54:34', '2024-12-20 09:54:34'),
(753, 1, 40, 18, '11', 'ABM', 'A', '21st Century Literature from the Philippines and the World', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 09:55:05', '2024-12-20 09:55:05'),
(754, 1, 40, 18, '11', 'ABM', 'A', 'Business Math', 'Second Semester', 'Fourth Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 09:55:31', '2024-12-20 09:55:31'),
(755, 1, 43, 20, '11', 'HUMSS', 'A', 'Oral Communication in Context', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:14:13', '2024-12-20 10:14:13'),
(756, 1, 43, 20, '11', 'HUMSS', 'A', 'Oral Communication in Context', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:14:27', '2024-12-20 10:14:27'),
(757, 1, 43, 20, '11', 'HUMSS', 'A', 'Komunikasyon at Pananaliksik sa Wika at  Kulturang Pilipino', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:14:40', '2024-12-20 10:14:40'),
(758, 1, 43, 20, '11', 'HUMSS', 'A', 'Komunikasyon at Pananaliksik sa Wika at  Kulturang Pilipino', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:14:49', '2024-12-20 10:14:49'),
(759, 1, 43, 20, '11', 'HUMSS', 'A', 'General Mathematics', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:15:18', '2024-12-20 10:15:18'),
(760, 1, 43, 20, '11', 'HUMSS', 'A', 'General Mathematics', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:15:40', '2024-12-20 10:15:40'),
(761, 1, 43, 20, '11', 'HUMSS', 'A', 'Earth and Life Science', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:17:04', '2024-12-20 10:17:04'),
(762, 1, 43, 20, '11', 'HUMSS', 'A', 'Physical Education and Health', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:17:38', '2024-12-20 10:17:38'),
(763, 1, 43, 20, '11', 'HUMSS', 'A', 'Physical Education and Health', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:17:45', '2024-12-20 10:17:45'),
(764, 1, 43, 20, '11', 'HUMSS', 'A', 'Empowerment Technologies  (E-Tech): ICT for Professional Tracks', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:18:01', '2024-12-20 10:18:01'),
(765, 1, 43, 20, '11', 'HUMSS', 'A', 'Empowerment Technologies  (E-Tech): ICT for Professional Tracks', 'First Semester', 'Second Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:18:10', '2024-12-20 10:18:10'),
(766, 1, 43, 20, '11', 'HUMSS', 'A', 'English for Academic and Professional  Purposes', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 20, 55, 73, '2024-12-20 10:18:47', '2024-12-20 10:18:47'),
(767, 1, 43, 20, '11', 'HUMSS', 'A', 'English for Academic and Professional  Purposes', 'First Semester', 'Second Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:18:56', '2024-12-20 10:18:56'),
(768, 1, 43, 20, '11', 'HUMSS', 'A', 'PHILIPPINE POLITICS AND GOVERNANCE', 'First Semester', 'Second Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 10:20:25', '2024-12-20 10:20:25'),
(769, 1, 43, 20, '11', 'HUMSS', 'A', 'Discipline and ideas in the social science', 'First Semester', 'First Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 10:22:34', '2024-12-20 10:22:34'),
(770, 1, 43, 20, '11', 'HUMSS', 'A', 'Discipline and ideas in the social science', 'First Semester', 'Second Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:22:42', '2024-12-20 10:22:42'),
(771, 1, 43, 20, '11', 'HUMSS', 'A', 'Physical Education and Health', 'Second Semester', 'Third Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:23:40', '2024-12-20 10:23:40'),
(772, 1, 43, 20, '11', 'HUMSS', 'A', 'Physical Education and Health', 'Second Semester', 'Fourth Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 10:23:54', '2024-12-20 10:23:54'),
(773, 1, 32, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:19:54', '2024-12-20 13:19:54'),
(774, 1, 33, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:19:54', '2024-12-20 13:19:54'),
(775, 1, 34, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:19:54', '2024-12-20 13:19:54'),
(776, 1, 36, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:19:54', '2024-12-20 13:19:54'),
(777, 1, 38, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:19:54', '2024-12-20 13:19:54'),
(778, 1, 31, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:19:54', '2024-12-20 13:19:54'),
(779, 1, 39, 1, '11', 'ICT', 'A', 'STATISTICS AND PROBABILITY', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:19:54', '2024-12-20 13:19:54'),
(780, 1, 32, 1, '11', 'ICT', 'A', 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 13:27:03', '2024-12-20 13:27:03'),
(781, 1, 33, 1, '11', 'ICT', 'A', 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 55, 73, '2024-12-20 13:27:03', '2024-12-20 13:27:03'),
(782, 1, 34, 1, '11', 'ICT', 'A', 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 13:27:03', '2024-12-20 13:27:03'),
(783, 1, 36, 1, '11', 'ICT', 'A', 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 13:27:03', '2024-12-20 13:27:03'),
(784, 1, 38, 1, '11', 'ICT', 'A', 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 13:27:03', '2024-12-20 13:27:03'),
(785, 1, 31, 1, '11', 'ICT', 'A', 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 13:27:03', '2024-12-20 13:27:03'),
(786, 1, 39, 1, '11', 'ICT', 'A', 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'First Semester', 'First Quarter', 'Applied Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 35, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 45, 100, 100, 20, 100, 100, '2024-12-20 13:27:03', '2024-12-20 13:27:03'),
(787, 1, 43, 20, '11', 'HUMSS', 'A', 'Reading and Writing Skills', 'First Semester', 'Second Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:35:09', '2024-12-20 13:35:09'),
(788, 1, 51, 19, '11', 'HE', 'A', 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', 'First Semester', 'First Quarter', 'Core Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:57:45', '2024-12-20 13:57:45'),
(789, 1, 53, 19, '11', 'HE', 'A', 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', 'First Semester', 'First Quarter', 'Core Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-20 13:57:45', '2024-12-20 13:57:45'),
(790, 1, 51, 19, '11', 'HE', 'A', 'Bread and Pastry Production', 'First Semester', 'First Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 25, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 50, 100, 100, 25, 100, 100, '2024-12-20 13:59:07', '2024-12-20 13:59:07'),
(791, 1, 53, 19, '11', 'HE', 'A', 'Bread and Pastry Production', 'First Semester', 'First Quarter', 'Specialized Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-20 13:59:07', '2024-12-20 13:59:07'),
(792, 1, 51, 19, '11', 'HE', 'A', 'Bread and Pastry Production NCII', 'Second Semester', 'Third Quarter', 'Specialized Subject', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 20, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 100, 100, 60, 100, 100, 20, 100, 100, '2024-12-20 14:14:59', '2024-12-20 14:14:59'),
(793, 1, 53, 19, '11', 'HE', 'A', 'Bread and Pastry Production NCII', 'Second Semester', 'Third Quarter', 'Specialized Subject', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-20 14:14:59', '2024-12-20 14:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `student_handles`
--

CREATE TABLE `student_handles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `grade_handle_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_handles`
--

INSERT INTO `student_handles` (`id`, `student_id`, `teacher_id`, `grade_handle_id`, `created_at`, `updated_at`) VALUES
(31, 31, 1, 1, '2024-12-07 13:49:05', '2024-12-07 13:49:05'),
(32, 32, 1, 1, '2024-12-07 15:39:48', '2024-12-07 15:39:48'),
(33, 33, 1, 1, '2024-12-07 15:49:45', '2024-12-07 15:49:45'),
(34, 34, 1, 1, '2024-12-07 15:55:40', '2024-12-07 15:55:40'),
(36, 36, 1, 1, '2024-12-07 16:06:49', '2024-12-07 16:06:49'),
(38, 38, 1, 1, '2024-12-07 20:58:14', '2024-12-07 20:58:14'),
(39, 39, 1, 1, '2024-12-10 17:50:23', '2024-12-10 17:50:23'),
(40, 40, 1, 18, '2024-12-11 09:34:14', '2024-12-11 09:34:14'),
(43, 43, 1, 20, '2024-12-13 10:23:13', '2024-12-13 10:23:13'),
(44, 44, 1, 21, '2024-12-13 10:26:34', '2024-12-13 10:26:34'),
(45, 45, 1, 22, '2024-12-13 10:30:44', '2024-12-13 10:30:44'),
(46, 46, 1, 23, '2024-12-13 10:36:50', '2024-12-13 10:36:50'),
(47, 47, 1, 24, '2024-12-13 10:40:57', '2024-12-13 10:40:57'),
(49, 49, 1, 26, '2024-12-13 18:20:35', '2024-12-13 18:20:35'),
(50, 50, 1, 25, '2024-12-13 18:45:33', '2024-12-13 18:45:33'),
(51, 51, 1, 19, '2024-12-17 08:54:25', '2024-12-17 08:54:25'),
(52, 52, 1, 27, '2024-12-17 08:56:44', '2024-12-17 08:56:44'),
(53, 53, 1, 19, '2024-12-20 13:51:47', '2024-12-20 13:51:47'),
(54, 54, 2, 10, '2024-12-30 15:30:09', '2024-12-30 15:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `student_images`
--

CREATE TABLE `student_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_images`
--

INSERT INTO `student_images` (`id`, `student_id`, `image_path`, `created_at`, `updated_at`) VALUES
(121, 32, 'face_images/Dan Denver Deleon/0.jpg', '2024-12-07 15:39:48', '2024-12-07 15:39:48'),
(122, 32, 'face_images/Dan Denver Deleon/1.jpg', '2024-12-07 15:39:48', '2024-12-07 15:39:48'),
(123, 32, 'face_images/Dan Denver Deleon/2.jpg', '2024-12-07 15:39:48', '2024-12-07 15:39:48'),
(124, 33, 'face_images/vernie jay albina/0.jpg', '2024-12-07 15:49:45', '2024-12-07 15:49:45'),
(125, 33, 'face_images/vernie jay albina/1.jpg', '2024-12-07 15:49:45', '2024-12-07 15:49:45'),
(126, 33, 'face_images/vernie jay albina/2.jpg', '2024-12-07 15:49:45', '2024-12-07 15:49:45'),
(127, 34, 'face_images/Ceejay Ibabiosa/0.jpg', '2024-12-07 15:55:40', '2024-12-07 15:55:40'),
(128, 34, 'face_images/Ceejay Ibabiosa/1.jpg', '2024-12-07 15:55:40', '2024-12-07 15:55:40'),
(129, 34, 'face_images/Ceejay Ibabiosa/2.jpg', '2024-12-07 15:55:40', '2024-12-07 15:55:40'),
(133, 36, 'face_images/Evan Tabar/0.jpg', '2024-12-07 16:06:49', '2024-12-07 16:06:49'),
(134, 36, 'face_images/Evan Tabar/1.jpg', '2024-12-07 16:06:49', '2024-12-07 16:06:49'),
(135, 36, 'face_images/Evan Tabar/2.jpg', '2024-12-07 16:06:49', '2024-12-07 16:06:49'),
(139, 31, 'face_images/jorge jader/0.jpg', '2024-12-07 19:55:34', '2024-12-07 19:55:34'),
(140, 31, 'face_images/jorge jader/1.jpg', '2024-12-07 19:55:34', '2024-12-07 19:55:34'),
(141, 31, 'face_images/jorge jader/2.jpg', '2024-12-07 19:55:34', '2024-12-07 19:55:34'),
(142, 38, 'face_images/Erick Valencia/0.jpg', '2024-12-07 20:58:14', '2024-12-07 20:58:14'),
(143, 38, 'face_images/Erick Valencia/1.jpg', '2024-12-07 20:58:14', '2024-12-07 20:58:14'),
(144, 38, 'face_images/Erick Valencia/2.jpg', '2024-12-07 20:58:14', '2024-12-07 20:58:14'),
(145, 39, 'face_images/Jennyrose T Perez/0.jpg', '2024-12-10 17:50:23', '2024-12-10 17:50:23'),
(146, 39, 'face_images/Jennyrose T Perez/1.jpg', '2024-12-10 17:50:23', '2024-12-10 17:50:23'),
(147, 39, 'face_images/Jennyrose T Perez/2.jpg', '2024-12-10 17:50:23', '2024-12-10 17:50:23'),
(148, 40, 'face_images/Charles Jasper Cerrudo/0.jpg', '2024-12-11 09:34:14', '2024-12-11 09:34:14'),
(149, 40, 'face_images/Charles Jasper Cerrudo/1.jpg', '2024-12-11 09:34:14', '2024-12-11 09:34:14'),
(150, 40, 'face_images/Charles Jasper Cerrudo/2.jpg', '2024-12-11 09:34:14', '2024-12-11 09:34:14'),
(157, 43, 'face_images/sheena T Picondo/0.jpg', '2024-12-13 10:23:13', '2024-12-13 10:23:13'),
(158, 43, 'face_images/sheena T Picondo/1.jpg', '2024-12-13 10:23:13', '2024-12-13 10:23:13'),
(159, 43, 'face_images/sheena T Picondo/2.jpg', '2024-12-13 10:23:13', '2024-12-13 10:23:13'),
(160, 44, 'face_images/Mark Reyes/0.jpg', '2024-12-13 10:26:34', '2024-12-13 10:26:34'),
(161, 44, 'face_images/Mark Reyes/1.jpg', '2024-12-13 10:26:34', '2024-12-13 10:26:34'),
(162, 44, 'face_images/Mark Reyes/2.jpg', '2024-12-13 10:26:34', '2024-12-13 10:26:34'),
(163, 45, 'face_images/Shaira T Picondo/0.jpg', '2024-12-13 10:30:44', '2024-12-13 10:30:44'),
(164, 45, 'face_images/Shaira T Picondo/1.jpg', '2024-12-13 10:30:44', '2024-12-13 10:30:44'),
(165, 45, 'face_images/Shaira T Picondo/2.jpg', '2024-12-13 10:30:44', '2024-12-13 10:30:44'),
(166, 46, 'face_images/Gimwell C Abel/0.jpg', '2024-12-13 10:36:50', '2024-12-13 10:36:50'),
(167, 46, 'face_images/Gimwell C Abel/1.jpg', '2024-12-13 10:36:50', '2024-12-13 10:36:50'),
(168, 46, 'face_images/Gimwell C Abel/2.jpg', '2024-12-13 10:36:50', '2024-12-13 10:36:50'),
(169, 47, 'face_images/Makky d Lufyy/0.jpg', '2024-12-13 10:40:57', '2024-12-13 10:40:57'),
(170, 47, 'face_images/Makky d Lufyy/1.jpg', '2024-12-13 10:40:57', '2024-12-13 10:40:57'),
(171, 47, 'face_images/Makky d Lufyy/2.jpg', '2024-12-13 10:40:57', '2024-12-13 10:40:57'),
(175, 49, 'face_images/Mary Joy Lonceras/0.jpg', '2024-12-13 18:20:35', '2024-12-13 18:20:35'),
(176, 49, 'face_images/Mary Joy Lonceras/1.jpg', '2024-12-13 18:20:35', '2024-12-13 18:20:35'),
(177, 49, 'face_images/Mary Joy Lonceras/2.jpg', '2024-12-13 18:20:35', '2024-12-13 18:20:35'),
(178, 50, 'face_images/Mitch millanes Sabas/0.jpg', '2024-12-13 18:45:33', '2024-12-13 18:45:33'),
(179, 50, 'face_images/Mitch millanes Sabas/1.jpg', '2024-12-13 18:45:33', '2024-12-13 18:45:33'),
(180, 50, 'face_images/Mitch millanes Sabas/2.jpg', '2024-12-13 18:45:33', '2024-12-13 18:45:33'),
(181, 51, 'face_images/Kyle Anos/0.jpg', '2024-12-17 08:54:25', '2024-12-17 08:54:25'),
(182, 51, 'face_images/Kyle Anos/1.jpg', '2024-12-17 08:54:25', '2024-12-17 08:54:25'),
(183, 51, 'face_images/Kyle Anos/2.jpg', '2024-12-17 08:54:25', '2024-12-17 08:54:25'),
(184, 52, 'face_images/Katherine grace inson/0.jpg', '2024-12-17 08:56:44', '2024-12-17 08:56:44'),
(185, 52, 'face_images/Katherine grace inson/1.jpg', '2024-12-17 08:56:44', '2024-12-17 08:56:44'),
(186, 52, 'face_images/Katherine grace inson/2.jpg', '2024-12-17 08:56:44', '2024-12-17 08:56:44'),
(187, 53, 'face_images/Saisair Vergara/0.jpg', '2024-12-20 13:51:47', '2024-12-20 13:51:47'),
(188, 53, 'face_images/Saisair Vergara/1.jpg', '2024-12-20 13:51:47', '2024-12-20 13:51:47'),
(189, 53, 'face_images/Saisair Vergara/2.jpg', '2024-12-20 13:51:47', '2024-12-20 13:51:47'),
(190, 54, 'face_images/Kyle Christian Anos/0.jpg', '2024-12-30 15:30:09', '2024-12-30 15:30:09'),
(191, 54, 'face_images/Kyle Christian Anos/1.jpg', '2024-12-30 15:30:09', '2024-12-30 15:30:09'),
(192, 54, 'face_images/Kyle Christian Anos/2.jpg', '2024-12-30 15:30:09', '2024-12-30 15:30:09');

-- --------------------------------------------------------

--
-- Table structure for table `student_notifications`
--

CREATE TABLE `student_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'low',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_notifications`
--

INSERT INTO `student_notifications` (`id`, `type`, `user_id`, `title`, `message`, `is_seen`, `url`, `icon`, `priority`, `created_at`, `updated_at`) VALUES
(35, 'alert', 31, 'Announcement -Jenny Rose Caballero', 'Exam will be on December 15. 2024\r\ngoodluck', 0, NULL, 'bell', 'medium', '2024-12-11 10:24:03', '2024-12-11 10:24:03'),
(36, 'alert', 32, 'Announcement -Jenny Rose Caballero', 'Exam will be on December 15. 2024\r\ngoodluck', 0, NULL, 'bell', 'medium', '2024-12-11 10:24:03', '2024-12-11 10:24:03'),
(37, 'alert', 33, 'Announcement -Jenny Rose Caballero', 'Exam will be on December 15. 2024\r\ngoodluck', 0, NULL, 'bell', 'medium', '2024-12-11 10:24:03', '2024-12-11 10:24:03'),
(38, 'alert', 34, 'Announcement -Jenny Rose Caballero', 'Exam will be on December 15. 2024\r\ngoodluck', 0, NULL, 'bell', 'medium', '2024-12-11 10:24:03', '2024-12-11 10:24:03'),
(39, 'alert', 36, 'Announcement -Jenny Rose Caballero', 'Exam will be on December 15. 2024\r\ngoodluck', 0, NULL, 'bell', 'medium', '2024-12-11 10:24:03', '2024-12-11 10:24:03'),
(40, 'alert', 38, 'Announcement -Jenny Rose Caballero', 'Exam will be on December 15. 2024\r\ngoodluck', 0, NULL, 'bell', 'medium', '2024-12-11 10:24:03', '2024-12-11 10:24:03'),
(41, 'alert', 39, 'Announcement -Jenny Rose Caballero', 'Exam will be on December 15. 2024\r\ngoodluck', 0, NULL, 'bell', 'medium', '2024-12-11 10:24:03', '2024-12-11 10:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `student_otp_accounts`
--

CREATE TABLE `student_otp_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE `student_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `grade_handle_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`id`, `student_id`, `subject_id`, `teacher_id`, `grade_handle_id`, `created_at`, `updated_at`) VALUES
(52, 44, 56, 1, 21, '2024-12-18 20:50:46', '2024-12-18 20:50:46'),
(53, 44, 57, 1, 21, '2024-12-18 20:50:50', '2024-12-18 20:50:50'),
(54, 44, 58, 1, 21, '2024-12-18 20:50:57', '2024-12-18 20:50:57'),
(55, 44, 59, 1, 21, '2024-12-18 20:51:02', '2024-12-18 20:51:02'),
(56, 44, 60, 1, 21, '2024-12-18 20:51:30', '2024-12-18 20:51:30'),
(57, 45, 56, 1, 22, '2024-12-18 20:51:54', '2024-12-18 20:51:54'),
(58, 45, 57, 1, 22, '2024-12-18 20:51:58', '2024-12-18 20:51:58'),
(59, 45, 58, 1, 22, '2024-12-18 20:52:02', '2024-12-18 20:52:02'),
(60, 45, 59, 1, 22, '2024-12-18 20:52:08', '2024-12-18 20:52:08'),
(61, 45, 60, 1, 22, '2024-12-18 20:52:12', '2024-12-18 20:52:12'),
(62, 45, 61, 1, 22, '2024-12-18 20:52:21', '2024-12-18 20:52:21'),
(64, 45, 64, 1, 22, '2024-12-18 20:53:39', '2024-12-18 20:53:39'),
(65, 46, 56, 1, 23, '2024-12-18 20:54:26', '2024-12-18 20:54:26'),
(67, 31, 56, 1, 1, '2024-12-19 11:03:16', '2024-12-19 11:03:16'),
(68, 31, 57, 1, 1, '2024-12-19 11:03:22', '2024-12-19 11:03:22'),
(69, 31, 58, 1, 1, '2024-12-19 11:03:27', '2024-12-19 11:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `subject_models`
--

CREATE TABLE `subject_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `grade_handle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `subject_track` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_models`
--

INSERT INTO `subject_models` (`id`, `subject`, `day`, `grade_handle_id`, `teacher_id`, `time`, `subject_track`, `created_at`, `updated_at`) VALUES
(56, 'Oral Communication in Context', 'Monday', 1, 1, '12:11 PM - 01:00 AM', 'Core Subject', '2024-12-10 07:29:32', '2024-12-10 07:53:41'),
(57, 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'Wednesday', 1, 1, '11:22 AM - 01:11 AM', 'Specialized Subject', '2024-12-10 07:44:29', '2024-12-19 14:01:56'),
(58, 'GENERAL MATHEMATICS', 'Monday', 1, 1, '12:13 PM - 02:02 AM', 'Core Subject', '2024-12-10 08:03:47', '2024-12-10 08:15:21'),
(59, 'EARTH AND LIFE SCIENCE', 'Thursday', 1, 1, '11:00 AM - 12:20 PM', 'Core Subject', '2024-12-10 08:15:11', '2024-12-10 08:15:11'),
(60, 'KOMUNIKASYON AT PANANALIKSIK SA WIKA AT KULTURANG PILIPINO', 'Monday', 1, 1, '12:23 PM - 01:00 AM', 'Core Subject', '2024-12-10 18:51:31', '2024-12-10 18:51:31'),
(61, 'PHYSICAL EDUCATION AND HEALTH', 'Monday', 1, 1, '12:22 PM - 02:00 AM', 'Core Subject', '2024-12-10 19:00:50', '2024-12-10 19:00:50'),
(63, 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Tuesday', 1, 1, '12:02 PM - 09:09 AM', 'Core Subject', '2024-12-10 19:03:03', '2024-12-10 19:03:03'),
(64, 'STATISTICS AND PROBABILITY', 'Tuesday', 1, 1, '03:33 AM - 04:00 AM', 'Core Subject', '2024-12-10 19:03:46', '2024-12-10 19:03:57'),
(65, '21ST CENTURY LITERATURE FROM THE PHILIPPINES AND THE WORLD', 'Thursday', 1, 1, '09:09 AM - 11:10 AM', 'Core Subject', '2024-12-10 19:04:30', '2024-12-10 19:04:30'),
(66, 'PERSONAL DEVELOPMENT', 'Wednesday', 1, 1, '09:00 AM - 10:02 PM', 'Core Subject', '2024-12-10 19:05:03', '2024-12-10 19:05:03'),
(67, 'PHYSICAL EDUCATION AND HEALTH', 'Thursday', 1, 1, '02:00 AM - 02:30 AM', 'Core Subject', '2024-12-10 19:09:27', '2024-12-10 19:09:27'),
(68, 'CONTEMPORARY PHILIPPINE ARTS FROM THE REGIONS', 'Tuesday', 22, 1, '08:08 AM - 09:00 AM', 'Core Subject', '2024-12-10 19:11:38', '2024-12-10 19:11:38'),
(69, 'MEDIA AND INFORMATION LITERACY', 'Thursday', 22, 1, '07:30 AM - 08:00 AM', 'Core Subject', '2024-12-10 19:12:08', '2024-12-10 19:12:08'),
(70, 'UNDERSTANDING CULTURE, SOCIETY AND POLITICS', 'Friday', 22, 1, '07:00 AM - 08:00 AM', 'Core Subject', '2024-12-10 19:12:51', '2024-12-10 19:12:51'),
(71, 'INTRODUCTION TO THE PHILOSOPHY OF THE HUMAN PERSON', 'Tuesday', 22, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 19:13:50', '2024-12-10 19:13:50'),
(72, 'PHYSICAL EDUCATION AND HEALTH', 'Thursday', 22, 1, '08:00 AM - 08:30 AM', 'Core Subject', '2024-12-10 19:14:23', '2024-12-10 19:14:23'),
(73, 'DISASTER READINESS AND RISK REDUCTION', 'Thursday', 22, 1, '09:30 AM - 11:11 AM', 'Core Subject', '2024-12-10 19:15:28', '2024-12-10 19:15:28'),
(74, 'PHYSICAL EDUCATION AND HEALTH', 'Wednesday', 22, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 19:15:58', '2024-12-10 19:15:58'),
(75, 'EMPOWERMENT TECHNOLOGIES', 'Tuesday', 1, 1, '10:00 AM - 11:01 AM', 'Applied Subject', '2024-12-10 19:17:27', '2024-12-10 19:17:27'),
(76, 'ENGLISH FOR ACADEMIC AND PROFESSIONAL PURPOSES', 'Friday', 1, 1, '11:00 AM - 12:00 PM', 'Applied Subject', '2024-12-10 19:17:58', '2024-12-10 19:17:58'),
(77, 'RESEARCH IN DAILY LIFE 1', 'Tuesday', 1, 1, '11:00 AM - 12:00 PM', 'Applied Subject', '2024-12-10 19:19:01', '2024-12-10 19:19:01'),
(78, 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'Tuesday', 1, 1, '09:00 AM - 10:00 AM', 'Applied Subject', '2024-12-10 19:19:33', '2024-12-10 19:19:33'),
(79, 'Oral Communication in Context', 'Monday', 18, 1, '07:00 AM - 08:00 AM', 'Core Subject', '2024-12-10 19:33:46', '2024-12-10 19:33:46'),
(80, 'Komunikasyon at Pananaliksik sa Wika at  Kulturang Pilipino', 'Tuesday', 18, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 19:36:20', '2024-12-10 19:36:20'),
(81, 'General Mathematics', 'Wednesday', 18, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 19:36:46', '2024-12-10 19:36:46'),
(82, 'Earth and Life Science', 'Tuesday', 18, 1, '07:00 AM - 08:00 AM', 'Core Subject', '2024-12-10 19:37:12', '2024-12-10 19:37:12'),
(83, 'Physical Education and Health', 'Thursday', 18, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 19:37:39', '2024-12-10 19:37:39'),
(84, 'Empowerment Technologies  (E-Tech): ICT for Professional Tracks', 'Monday', 18, 1, '09:00 AM - 10:00 AM', 'Applied Subject', '2024-12-10 19:39:01', '2024-12-10 19:39:01'),
(85, 'English for Academic and Professional  Purposes', 'Friday', 18, 1, '09:00 AM - 10:10 AM', 'Applied Subject', '2024-12-10 19:39:41', '2024-12-10 19:39:41'),
(86, 'Organization and Management', 'Tuesday', 18, 1, '08:00 AM - 09:00 AM', 'Specialized Subject', '2024-12-10 19:40:05', '2024-12-10 19:40:05'),
(87, 'Fundamentals of Accounting, Business and Management 1', 'Monday', 18, 1, '10:00 AM - 10:50 AM', 'Specialized Subject', '2024-12-10 19:40:40', '2024-12-10 19:40:40'),
(88, 'Reading and Writing Skills', 'Tuesday', 18, 1, '11:00 AM - 11:50 AM', 'Core Subject', '2024-12-10 19:42:11', '2024-12-10 19:42:11'),
(89, 'Pagbasa at Pagsusuri ng Iba’t- Ibang Teksto Tungo sa Pananaliksik', 'Monday', 18, 1, '03:00 AM - 04:00 AM', 'Core Subject', '2024-12-10 19:45:23', '2024-12-10 19:45:23'),
(91, '21st Century Literature from the Philippines and the World', 'Wednesday', 18, 1, '02:00 AM - 03:00 AM', 'Core Subject', '2024-12-10 19:46:28', '2024-12-10 19:46:28'),
(93, 'Physical Education and Health', 'Wednesday', 18, 1, '02:30 AM - 02:30 AM', 'Core Subject', '2024-12-10 19:47:32', '2024-12-10 19:47:32'),
(94, 'Research in Daily Life 1', 'Wednesday', 18, 1, '04:00 AM - 04:40 AM', 'Applied Subject', '2024-12-10 19:48:03', '2024-12-10 19:48:03'),
(95, 'Business Math', 'Tuesday', 18, 1, '03:00 AM - 04:50 AM', 'Specialized Subject', '2024-12-10 19:48:38', '2024-12-10 19:48:38'),
(96, 'Fundamentals of Accounting, Business and Management 2', 'Monday', 18, 1, '04:30 AM - 04:50 AM', 'Specialized Subject', '2024-12-10 19:49:15', '2024-12-10 19:49:15'),
(97, 'Contemporary Philippine Arts from the  Regions', 'Monday', 21, 1, '04:00 AM - 05:00 AM', 'Core Subject', '2024-12-10 19:50:44', '2024-12-10 19:50:44'),
(98, 'Media and Information Literacy', 'Tuesday', 21, 1, '07:00 AM - 08:00 AM', 'Core Subject', '2024-12-10 19:51:12', '2024-12-10 19:51:12'),
(99, 'Understanding Culture, Society and  Politics', 'Wednesday', 21, 1, '07:30 AM - 08:40 AM', 'Core Subject', '2024-12-10 19:51:47', '2024-12-10 19:51:47'),
(100, 'Introduction to the Philosophy of the  Human Person/ Pambungad sa Pilosopiya ng Tao', 'Thursday', 21, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 19:52:23', '2024-12-10 19:52:23'),
(101, 'Physical Education and Health', 'Friday', 21, 1, '08:00 AM - 08:40 AM', 'Core Subject', '2024-12-10 19:52:52', '2024-12-10 19:52:52'),
(102, 'Physical Science', 'Tuesday', 21, 1, '08:00 AM - 08:44 AM', 'Core Subject', '2024-12-10 19:53:20', '2024-12-10 19:53:20'),
(103, 'Physical Education and Health', 'Thursday', 21, 1, '10:00 AM - 11:00 AM', 'Core Subject', '2024-12-10 19:54:08', '2024-12-10 19:54:08'),
(104, 'Research in Daily Life 2', 'Monday', 21, 1, '03:00 AM - 04:00 AM', 'Applied Subject', '2024-12-10 19:54:48', '2024-12-10 19:54:48'),
(105, 'Pagsulat sa Filipino sa Piling Larangan  (Akademik)', 'Monday', 21, 1, '09:00 AM - 10:00 AM', 'Applied Subject', '2024-12-10 19:55:27', '2024-12-10 19:55:27'),
(106, 'Entrepreneurship', 'Thursday', 21, 1, '06:00 AM - 06:40 AM', 'Applied Subject', '2024-12-10 19:55:59', '2024-12-10 19:55:59'),
(107, 'Research Project', 'Thursday', 21, 1, '03:00 AM - 04:00 AM', 'Applied Subject', '2024-12-10 19:56:25', '2024-12-10 19:56:25'),
(108, 'Business Finance', 'Monday', 21, 1, '03:00 AM - 03:50 AM', 'Specialized Subject', '2024-12-10 19:57:00', '2024-12-10 19:57:00'),
(109, 'Business Ethics and Social Responsibility', 'Wednesday', 21, 1, '09:00 AM - 10:00 AM', 'Specialized Subject', '2024-12-10 19:58:59', '2024-12-10 19:58:59'),
(110, 'Business Ethics and Social Responsibility', 'Thursday', 21, 1, '04:00 AM - 05:00 AM', 'Specialized Subject', '2024-12-10 20:04:32', '2024-12-10 20:04:32'),
(111, 'Business Marketing', 'Tuesday', 21, 1, '08:00 AM - 09:00 AM', 'Specialized Subject', '2024-12-10 20:05:03', '2024-12-10 20:05:03'),
(112, 'Business Enterprise Simulation', 'Wednesday', 21, 1, '09:00 AM - 10:00 AM', 'Specialized Subject', '2024-12-10 20:05:41', '2024-12-10 20:05:41'),
(113, 'Oral Communication in Context', 'Monday', 20, 1, '07:00 AM - 08:00 AM', 'Core Subject', '2024-12-10 20:07:45', '2024-12-10 20:07:45'),
(114, 'Komunikasyon at Pananaliksik sa Wika at  Kulturang Pilipino', 'Monday', 20, 1, '07:00 AM - 08:00 AM', 'Core Subject', '2024-12-10 20:08:15', '2024-12-10 20:08:15'),
(115, 'General Mathematics', 'Wednesday', 20, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 20:09:08', '2024-12-10 20:09:08'),
(116, 'Earth and Life Science', 'Wednesday', 20, 1, '09:00 AM - 10:30 AM', 'Core Subject', '2024-12-10 20:09:39', '2024-12-10 20:09:39'),
(117, 'Physical Education and Health', 'Monday', 20, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 20:12:19', '2024-12-10 20:12:19'),
(118, 'Reading and Writing Skills', 'Wednesday', 20, 1, '01:00 AM - 02:00 AM', 'Core Subject', '2024-12-10 20:12:52', '2024-12-10 20:12:52'),
(119, 'Pagbasa at Pagsusuri ng Iba’t- Ibang Teksto Tungo sa Pananaliksik', 'Wednesday', 20, 1, '01:00 AM - 02:00 AM', 'Core Subject', '2024-12-10 20:13:37', '2024-12-10 20:13:37'),
(120, 'Statistics and Probability', 'Wednesday', 20, 1, '12:00 PM - 01:00 AM', 'Core Subject', '2024-12-10 20:14:16', '2024-12-10 20:14:16'),
(121, '21st Century Literature from the  Philippines and the World', 'Tuesday', 20, 1, '02:00 AM - 02:40 AM', 'Core Subject', '2024-12-10 20:15:28', '2024-12-10 20:15:28'),
(122, 'Personal Development/ Pansariling   Kaunluran', 'Wednesday', 20, 1, '01:00 AM - 02:00 AM', 'Core Subject', '2024-12-10 20:15:58', '2024-12-10 20:15:58'),
(123, 'Physical Education and Health', 'Tuesday', 20, 1, '03:00 AM - 04:00 AM', 'Core Subject', '2024-12-10 20:17:17', '2024-12-10 20:17:17'),
(124, 'Empowerment Technologies  (E-Tech): ICT for Professional Tracks', 'Wednesday', 20, 1, '09:00 AM - 10:00 AM', 'Applied Subject', '2024-12-10 20:18:17', '2024-12-10 20:18:17'),
(125, 'English for Academic and Professional  Purposes', 'Wednesday', 20, 1, '09:00 AM - 10:00 AM', 'Applied Subject', '2024-12-10 20:19:14', '2024-12-10 20:19:14'),
(127, 'Contemporary Philippine Arts from the Regions', 'Tuesday', 24, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 20:21:52', '2024-12-10 20:21:52'),
(128, 'Media and Information Literacy', 'Monday', 24, 1, '10:00 AM - 11:00 AM', 'Core Subject', '2024-12-10 20:22:34', '2024-12-10 20:22:34'),
(129, 'Understanding Culture, Society and  Politics', 'Tuesday', 24, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-10 20:23:27', '2024-12-10 20:23:27'),
(130, 'Introduction to the Philosophy of the  Human Person/ Pambungad sa Pilosopiya ng Tao', 'Wednesday', 24, 1, '09:00 AM - 10:30 AM', 'Core Subject', '2024-12-10 20:23:54', '2024-12-10 20:23:54'),
(131, 'Physical Education and Health', 'Friday', 24, 1, '03:00 AM - 04:00 AM', 'Core Subject', '2024-12-10 20:24:20', '2024-12-10 20:24:20'),
(132, 'Physical Science', 'Tuesday', 24, 1, '03:00 AM - 04:00 AM', 'Core Subject', '2024-12-10 20:24:47', '2024-12-10 20:24:47'),
(133, 'Physical Education and Health', 'Wednesday', 24, 1, '03:00 AM - 04:00 AM', 'Core Subject', '2024-12-10 20:25:14', '2024-12-10 20:25:14'),
(134, 'Oral Communication', 'Tuesday', 19, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-11 08:11:55', '2024-12-11 08:11:55'),
(135, 'Komunikasyon at Pananaliksik sa Wika at Kulturang Pilipino', 'Tuesday', 19, 1, '07:00 AM - 08:00 AM', 'Core Subject', '2024-12-11 08:12:16', '2024-12-11 08:12:16'),
(136, 'General Mathematics', 'Wednesday', 19, 1, '08:00 AM - 09:30 AM', 'Core Subject', '2024-12-11 08:12:44', '2024-12-11 08:12:44'),
(137, 'Earth and Life Science', 'Wednesday', 19, 1, '08:20 AM - 10:15 AM', 'Core Subject', '2024-12-11 08:13:50', '2024-12-11 08:13:50'),
(138, 'Physical Education and Health 1', 'Thursday', 19, 1, '12:18 PM - 01:19 PM', 'Core Subject', '2024-12-11 08:14:14', '2024-12-11 08:14:14'),
(139, 'Empowerment Technologies', 'Friday', 19, 1, '09:16 AM - 10:18 AM', 'Applied Subject', '2024-12-11 08:16:01', '2024-12-11 08:16:01'),
(140, 'English for Academic and Special Purposes', 'Friday', 19, 1, '02:09 AM - 02:55 AM', 'Applied Subject', '2024-12-11 08:16:35', '2024-12-11 08:16:35'),
(141, 'Bread and Pastry Production', 'Wednesday', 19, 1, '01:00 AM - 02:00 AM', 'Specialized Subject', '2024-12-11 08:17:14', '2024-12-11 08:17:14'),
(142, 'Reading and Writing Skills', 'Tuesday', 19, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-11 08:20:03', '2024-12-11 08:20:03'),
(143, 'Pagbasa at Pagsusuri ng Iba\'t-Ibang Teksto Tungo sa Pananaliksi', 'Thursday', 19, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-11 08:20:24', '2024-12-11 08:20:24'),
(144, 'Statistics and Probability', 'Wednesday', 19, 1, '08:00 AM - 09:00 AM', 'Core Subject', '2024-12-11 08:20:52', '2024-12-11 08:20:52'),
(145, '21st Century from the Philippines and the World', 'Tuesday', 19, 1, '09:40 AM - 10:40 AM', 'Core Subject', '2024-12-11 08:21:37', '2024-12-11 08:21:37'),
(146, 'Personal Development / Pansariling Kaunlaran', 'Thursday', 19, 1, '09:22 AM - 11:24 AM', 'Core Subject', '2024-12-11 08:22:00', '2024-12-11 08:22:00'),
(147, 'Physical Education and Health 2', 'Friday', 19, 1, '09:09 AM - 10:00 AM', 'Core Subject', '2024-12-11 08:22:30', '2024-12-11 08:22:30'),
(148, 'Research in Daily Life 2', 'Wednesday', 19, 1, '07:00 AM - 08:00 AM', 'Applied Subject', '2024-12-11 08:26:39', '2024-12-11 08:26:39'),
(149, 'Food and Beverage Services', 'Tuesday', 19, 1, '10:00 AM - 11:00 AM', 'Applied Subject', '2024-12-11 08:26:57', '2024-12-11 08:26:57'),
(150, 'Contemporary Philippine Arts from the Regions', 'Tuesday', 23, 1, '10:00 AM - 11:00 AM', 'Core Subject', '2024-12-11 08:33:03', '2024-12-11 08:33:03'),
(151, 'Media and Information Literacy', 'Monday', 23, 1, '09:00 AM - 09:55 AM', 'Core Subject', '2024-12-11 08:35:26', '2024-12-11 08:35:26'),
(152, 'Understanding Culture, Society and Politics', 'Thursday', 23, 1, '07:00 AM - 08:00 AM', 'Core Subject', '2024-12-11 08:35:54', '2024-12-11 08:35:54'),
(153, 'Introduction to the Philosophy of the Human', 'Thursday', 23, 1, '09:30 AM - 10:00 AM', 'Core Subject', '2024-12-11 08:36:17', '2024-12-11 08:36:17'),
(154, 'Person/Pambungad sa Pilosopiya ng Tao', 'Thursday', 23, 1, '01:00 AM - 02:00 AM', 'Core Subject', '2024-12-11 08:36:41', '2024-12-11 08:36:41'),
(155, 'Physical Education and Health 3', 'Friday', 23, 1, '02:00 AM - 03:00 AM', 'Core Subject', '2024-12-11 08:37:00', '2024-12-11 08:37:00'),
(156, 'Research in Daily Life 2', 'Thursday', 23, 1, '03:00 AM - 03:44 AM', 'Applied Subject', '2024-12-11 08:37:27', '2024-12-11 08:37:27'),
(157, 'Pagsulat sa Filipino sa Piling Larangan (Akademik)', 'Monday', 23, 1, '02:22 AM - 03:00 AM', 'Applied Subject', '2024-12-11 08:37:54', '2024-12-11 08:37:54'),
(158, 'Events Management Services NCIII', 'Monday', 23, 1, '10:00 AM - 11:00 AM', 'Specialized Subject', '2024-12-11 08:38:15', '2024-12-11 08:38:15'),
(159, 'Disaster Readiness and Risk Reduction', 'Tuesday', 23, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-11 08:40:40', '2024-12-11 08:40:40'),
(160, 'Physical Education and Health 4', 'Friday', 23, 1, '10:30 AM - 12:00 PM', 'Core Subject', '2024-12-11 08:41:00', '2024-12-11 08:41:00'),
(161, 'Entrepreneurship', 'Thursday', 23, 1, '10:00 AM - 12:00 PM', 'Applied Subject', '2024-12-11 08:41:56', '2024-12-11 08:41:56'),
(162, 'Research Project', 'Tuesday', 23, 1, '12:00 PM - 12:44 PM', 'Applied Subject', '2024-12-11 08:42:20', '2024-12-11 08:42:20'),
(163, 'Events Management Services NCIII', 'Thursday', 23, 1, '02:30 AM - 03:30 AM', 'Specialized Subject', '2024-12-11 08:43:16', '2024-12-11 08:43:16'),
(164, 'Work Immersion', 'Thursday', 23, 1, '10:00 AM - 12:00 PM', 'Specialized Subject', '2024-12-11 08:43:40', '2024-12-11 08:43:40'),
(165, 'Research in Daily Life 2', 'Tuesday', 24, 1, '03:30 AM - 04:00 AM', 'Applied Subject', '2024-12-11 08:46:19', '2024-12-11 08:46:19'),
(166, 'Pagsulat sa Filipino sa Piling Larangan (Akademik)', 'Wednesday', 24, 1, '11:00 AM - 12:12 PM', 'Applied Subject', '2024-12-11 08:46:42', '2024-12-11 08:46:42'),
(167, 'Entrepreneurship', 'Thursday', 24, 1, '04:00 AM - 05:00 AM', 'Applied Subject', '2024-12-11 08:47:11', '2024-12-11 08:47:11'),
(168, 'Research Project', 'Monday', 24, 1, '10:00 AM - 03:00 AM', 'Applied Subject', '2024-12-11 08:47:31', '2024-12-11 08:47:31'),
(169, 'Creative Writing/ Malikhaing Pagsulat', 'Tuesday', 24, 1, '09:00 AM - 10:00 AM', 'Specialized Subject', '2024-12-11 08:48:00', '2024-12-11 08:48:00'),
(170, 'Creative Nonfiction: The Literary Essay', 'Tuesday', 24, 1, '03:00 AM - 03:55 AM', 'Specialized Subject', '2024-12-11 08:48:38', '2024-12-11 08:48:38'),
(171, 'Community Engagement, Solidarity and Citizenship', 'Monday', 24, 1, '07:00 AM - 08:00 AM', 'Specialized Subject', '2024-12-11 08:48:59', '2024-12-11 08:48:59'),
(172, 'Trends, Networks and Critical Thinking in the 21st Century Culture', 'Monday', 24, 1, '02:00 AM - 03:00 AM', 'Specialized Subject', '2024-12-11 08:49:36', '2024-12-11 08:49:36'),
(173, 'Culminating Activity', 'Tuesday', 24, 1, '11:49 AM - 12:28 PM', 'Specialized Subject', '2024-12-11 08:50:02', '2024-12-11 08:50:02'),
(174, 'RESEARCH IN DAILY LIFE 2', 'Tuesday', 22, 1, '10:11 AM - 11:01 AM', 'Applied Subject', '2024-12-11 09:28:18', '2024-12-11 09:28:18'),
(175, 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'Friday', 22, 1, '11:01 AM - 12:02 PM', 'Applied Subject', '2024-12-11 09:28:39', '2024-12-11 09:28:39'),
(176, 'ENTREPRENEURSHIP', 'Thursday', 22, 1, '12:00 PM - 01:00 AM', 'Applied Subject', '2024-12-11 09:29:01', '2024-12-11 09:29:01'),
(177, 'RESEARCH PROJECT', 'Monday', 22, 1, '12:00 PM - 01:00 AM', 'Applied Subject', '2024-12-11 09:29:22', '2024-12-11 09:29:22'),
(178, 'COMPUTER PROGRAMMING (JAVA NCII)', 'Wednesday', 22, 1, '09:00 AM - 10:00 AM', 'Specialized Subject', '2024-12-11 09:29:44', '2024-12-11 09:29:44'),
(179, 'WORK IMMERSION', 'Wednesday', 22, 1, '08:00 AM - 09:00 AM', 'Specialized Subject', '2024-12-11 09:30:15', '2024-12-11 09:30:15'),
(181, 'Practical Research 1', 'Monday', 1, 1, '09:00 AM - 09:44 AM', 'Core Subject', '2024-12-11 19:09:34', '2024-12-11 19:09:34'),
(182, 'Oral Communication in Context', 'Tuesday', 25, 1, '12:00 PM - 01:00 AM', 'Core Subject', '2024-12-17 09:33:49', '2024-12-17 09:33:49'),
(183, 'COMPUTER PROGRAMMING (.NET TECHNOLOGY NCII)', 'Monday', 25, 1, '03:30 AM - 04:30 AM', 'Core Subject', '2024-12-17 09:39:02', '2024-12-17 09:39:02'),
(184, 'GENERAL MATHEMATICS', 'Tuesday', 25, 1, '01:00 AM - 02:00 AM', 'Core Subject', '2024-12-17 09:40:25', '2024-12-17 09:40:25'),
(185, 'EARTH AND LIFE SCIENCE', 'Wednesday', 25, 1, '05:00 AM - 07:00 AM', 'Core Subject', '2024-12-17 09:44:15', '2024-12-17 09:44:15'),
(186, 'KOMUNIKASYON AT PANANALIKSIK SA WIKA AT KULTURANG PILIPINO', 'Thursday', 25, 1, '09:00 AM - 11:00 AM', 'Core Subject', '2024-12-17 09:45:20', '2024-12-17 09:45:20'),
(187, 'PHYSICAL EDUCATION AND HEALTH', 'Friday', 25, 1, '11:00 AM - 01:00 AM', 'Core Subject', '2024-12-17 09:46:00', '2024-12-17 09:46:00'),
(188, 'READING AND WRITING SKILLS', 'Monday', 25, 1, '06:00 AM - 07:00 AM', 'Core Subject', '2024-12-17 09:46:26', '2024-12-17 09:46:26'),
(189, 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Tuesday', 25, 1, '03:00 AM - 05:00 AM', 'Core Subject', '2024-12-17 09:47:01', '2024-12-17 09:47:01'),
(190, 'STATISTICS AND PROBABILITY', 'Wednesday', 25, 1, '03:30 AM - 04:30 AM', 'Core Subject', '2024-12-17 09:47:38', '2024-12-17 09:47:38'),
(191, '21ST CENTURY LITERATURE FROM THE PHILIPPINES AND THE WORLD	J', 'Thursday', 25, 1, '03:00 AM - 06:00 AM', 'Core Subject', '2024-12-17 09:49:07', '2024-12-17 09:49:07'),
(192, 'PERSONAL DEVELOPMENT', 'Tuesday', 25, 1, '02:00 AM - 03:00 AM', 'Core Subject', '2024-12-17 09:49:53', '2024-12-17 09:49:53'),
(193, 'PHYSICAL EDUCATION AND HEALTH', 'Monday', 25, 1, '08:00 AM - 10:00 AM', 'Core Subject', '2024-12-17 09:50:29', '2024-12-17 09:50:29'),
(194, 'EMPOWERMENT TECHNOLOGIES', 'Thursday', 25, 1, '06:00 AM - 07:00 AM', 'Applied Subject', '2024-12-17 09:51:06', '2024-12-17 09:51:06'),
(195, 'ENGLISH FOR ACADEMIC AND PROFESSIONAL PURPOSES', 'Thursday', 25, 1, '01:00 AM - 03:00 AM', 'Applied Subject', '2024-12-17 09:51:42', '2024-12-17 09:51:42'),
(196, 'RESEARCH IN DAILY LIFE 1', 'Friday', 25, 1, '02:00 AM - 03:00 AM', 'Applied Subject', '2024-12-17 09:52:27', '2024-12-17 09:52:27'),
(197, 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'Monday', 25, 1, '07:00 AM - 09:00 AM', 'Applied Subject', '2024-12-17 09:53:02', '2024-12-17 09:53:02'),
(198, 'Practical Research 1', 'Thursday', 25, 1, '07:00 AM - 08:00 AM', 'Core Subject', '2024-12-17 09:53:31', '2024-12-17 09:53:31'),
(199, 'PHILIPPINE POLITICS AND GOVERNANCE', 'Monday', 20, 1, '09:00 AM - 10:00 AM', 'Specialized Subject', '2024-12-19 14:19:56', '2024-12-19 14:19:56'),
(200, 'Reading and Writing Skills', 'Monday', 1, 1, '10:00 AM - 11:00 AM', 'Core Subject', '2024-12-19 14:24:59', '2024-12-19 14:24:59'),
(201, 'READING AND WRITING SKILLS', 'Monday', 24, 1, '02:00 AM - 03:00 AM', 'Core Subject', '2024-12-19 15:09:56', '2024-12-19 15:09:56'),
(202, 'PAGBASA AT PAGSUSURI NG IBA\'T-IBANG TEKSTO TUNGO SA PANANALIKSIK', 'Tuesday', 24, 1, '08:00 AM - 09:00 AM', 'Core Subject', '2024-12-19 15:10:29', '2024-12-19 15:10:29'),
(203, 'STATISTICS AND PROBABILITY', 'Thursday', 24, 1, '04:00 AM - 05:00 AM', 'Core Subject', '2024-12-19 15:11:05', '2024-12-19 15:11:05'),
(204, 'Oral Communication in Context', 'Wednesday', 21, 1, '07:00 AM - 09:00 AM', 'Core Subject', '2024-12-19 15:14:40', '2024-12-19 15:14:40'),
(205, 'KOMUNIKASYON AT PANANALIKSIK SA WIKA AT KULTURANG PILIPINO', 'Monday', 21, 1, '08:00 AM - 09:00 AM', 'Core Subject', '2024-12-19 15:15:00', '2024-12-19 15:15:00'),
(206, 'GENERAL MATHEMATICS', 'Monday', 21, 1, '09:00 AM - 11:00 AM', 'Core Subject', '2024-12-19 15:15:28', '2024-12-19 15:15:28'),
(207, 'EARTH AND LIFE SCIENCE', 'Tuesday', 21, 1, '09:00 AM - 10:00 AM', 'Core Subject', '2024-12-19 15:15:51', '2024-12-19 15:15:51'),
(208, 'PHYSICAL EDUCATION AND HEALTH', 'Wednesday', 21, 1, '10:00 AM - 12:00 PM', 'Core Subject', '2024-12-19 15:16:12', '2024-12-19 15:16:12'),
(213, 'RESEARCH IN DAILY LIFE 1', 'Wednesday', 23, 1, '03:00 AM - 04:00 AM', 'Applied Subject', '2024-12-19 15:40:39', '2024-12-19 15:40:39'),
(214, 'PAGSULAT SA FILIPINO SA PILING LARANGAN (TEK-VOK)', 'Friday', 23, 1, '04:00 AM - 05:00 AM', 'Applied Subject', '2024-12-19 15:41:08', '2024-12-19 15:41:08'),
(215, 'EVENTS MANAGEMENT SERVICES NC III', 'Tuesday', 23, 1, '05:00 AM - 06:00 AM', 'Specialized Subject', '2024-12-19 15:41:48', '2024-12-19 15:41:48'),
(216, 'EMPOWERMENT TECHNOLOGIES', 'Monday', 23, 1, '10:00 AM - 11:30 AM', 'Applied Subject', '2024-12-19 19:17:04', '2024-12-19 19:17:04'),
(217, 'ENGLISH FOR ACADEMIC AND PROFESSIONAL PURPOSES', 'Monday', 23, 1, '12:30 PM - 01:30 AM', 'Applied Subject', '2024-12-19 19:17:35', '2024-12-19 19:17:35'),
(218, 'Bread and Pastry', 'Tuesday', 23, 1, '04:00 AM - 05:00 AM', 'Specialized Subject', '2024-12-19 19:18:04', '2024-12-19 19:18:04'),
(219, 'Discipline and ideas in the social science', 'Thursday', 20, 1, '10:00 AM - 12:00 AM', 'Specialized Subject', '2024-12-20 10:21:40', '2024-12-20 10:21:40'),
(220, 'Entrepreneurship', 'Wednesday', 20, 1, '11:00 AM - 12:00 AM', 'Applied Subject', '2024-12-20 10:27:26', '2024-12-20 10:27:26'),
(221, 'Research Project', 'Thursday', 20, 1, '09:28 AM - 10:28 AM', 'Applied Subject', '2024-12-20 10:28:50', '2024-12-20 10:28:50'),
(222, 'Creative Notification The literary Essay', 'Monday', 20, 1, '09:30 AM - 10:30 AM', 'Specialized Subject', '2024-12-20 10:30:42', '2024-12-20 10:30:42'),
(223, 'Trends, Network and Critical Thinking in the 21st  Century Culture', 'Tuesday', 20, 1, '08:00 AM - 09:00 AM', 'Specialized Subject', '2024-12-20 10:31:46', '2024-12-20 10:31:46'),
(224, 'Bread and Pastry Production NCII', 'Monday', 19, 1, '07:00 AM - 08:00 AM', 'Specialized Subject', '2024-12-20 14:13:03', '2024-12-20 14:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_accounts`
--

CREATE TABLE `teacher_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `extension_name` varchar(255) DEFAULT NULL,
  `lrn` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'Teacher',
  `profile` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_accounts`
--

INSERT INTO `teacher_accounts` (`id`, `id_number`, `name`, `gender`, `position`, `username`, `password`, `extension_name`, `lrn`, `birthdate`, `email`, `role`, `profile`, `address`, `phone_number`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '2194586145', 'Jenny Rose Caballero', 'Female', 'Teacher 1', 'jen01', '$2y$12$k6ZhVBeagXvBWZVWgOv8Qemv2bunJXTMRF8iNZc5ntf2Bkg/v34/u', NULL, NULL, NULL, 'jennyroseperez32@gmail.com', 'Teacher', 'profiles/1732528955_images-removebg-preview.png', 'sariaya quezon', '09512793354', NULL, NULL, '2024-11-25 18:02:35', '2024-12-02 16:06:03'),
(2, '8718810267', 'katherine Inson', 'Female', 'Teacher 2', 'kathe', '$2y$12$sYaXw.c3rSydGCwKrXC2qeE/bLAGFt0lC1HMAFmoAUUHGXzTBMIEi', NULL, NULL, NULL, 'kathegracemadrideoinson@gmail.com', 'Teacher', 'profiles/1732791912_317536059_1751212121917498_3306957696285863406_n (1).jpg', NULL, '09432323299', NULL, NULL, '2024-11-28 19:05:12', '2024-11-28 19:05:12'),
(3, '5592760626', 'john lovete', 'Male', 'Teacher 3', 'Jl', '$2y$12$/pVl09s./0nNOlczkxBga.l0JZV6/RyHPsIHtPInoLhJHiS1bU/qS', NULL, NULL, NULL, 'lovetejohnlemuel@gmail.com', 'Teacher', 'profiles/1732791972_462550884_449244811509965_6951131729547954685_n - Copy.jpg', NULL, '09909090909', NULL, NULL, '2024-11-28 19:06:12', '2024-11-28 19:06:12'),
(4, '7455837753', 'Kat Reyes', 'Female', 'Teacher 2', 'kattt', '$2y$12$TC/.BzF23zBUfDqTV8rNpOiAMmOuCW2hlPf6bskq7mRvfvrCm20YG', NULL, NULL, NULL, 'kat@gmail.com', 'Teacher', 'profiles/1732792034_Screenshot 2024-09-19 232041.png', NULL, '09909090909', NULL, NULL, '2024-11-28 19:07:14', '2024-11-28 19:07:14'),
(5, '3980868637', 'Mark  Suarez', 'Male', 'Teacher 1', 'mark', '$2y$12$mt.wzlb39c1hhH0gB7VQZO9PkEcwwhcQ/fm9z/.z3QIqxNj7SB/4m', 'a', NULL, NULL, 'mark2@gmail.com', 'Teacher', 'profiles/1732792105_student (5).png', NULL, '09444444444', NULL, NULL, '2024-11-28 19:08:25', '2024-11-28 19:08:25'),
(6, '1786911941', 'Aldrin Perez', 'Male', 'Teacher 1', 'aldrindG1', '$2y$12$gZdLslhbS0WXyS40HhVWd.nA/8OKzQ9juIwHpiGB0OFpr1YDWWZkW', NULL, NULL, NULL, 'aldrin@gmail.com', 'Teacher', 'profiles/1732792157_441877923_982410033591839_35136862208057362_n.jpg', NULL, '09444444444', NULL, NULL, '2024-11-28 19:09:17', '2024-11-28 19:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_grade_handles`
--

CREATE TABLE `teacher_grade_handles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `strand` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT 'First semester',
  `quarter` varchar(255) DEFAULT 'First quarter',
  `subject` varchar(255) DEFAULT NULL,
  `track` varchar(255) DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_grade_handles`
--

INSERT INTO `teacher_grade_handles` (`id`, `grade`, `strand`, `section`, `semester`, `quarter`, `subject`, `track`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, '11', 'ICT', 'A', 'First semester', 'First quarter', NULL, NULL, 1, '2024-11-25 18:04:32', '2024-12-05 22:27:13'),
(10, '11', 'ABM', 'B', 'First semester', 'First quarter', NULL, NULL, 2, '2024-11-28 19:23:40', '2024-11-28 19:23:40'),
(11, '11', 'ICT', 'C', 'First semester', 'First quarter', NULL, NULL, 2, '2024-11-28 19:23:51', '2024-11-28 19:23:51'),
(18, '11', 'ABM', 'A', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-07 14:05:28', '2024-12-07 14:05:28'),
(19, '11', 'HE', 'A', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-10 17:54:50', '2024-12-10 17:54:50'),
(20, '11', 'HUMSS', 'A', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-10 17:55:06', '2024-12-10 17:55:06'),
(21, '12', 'ABM', 'A', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-10 17:55:30', '2024-12-10 17:55:30'),
(22, '12', 'ICT', 'A', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-10 17:55:44', '2024-12-10 17:55:44'),
(23, '12', 'HE', 'A', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-10 17:55:56', '2024-12-10 17:55:56'),
(24, '12', 'HUMSS', 'A', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-10 17:56:45', '2024-12-10 17:56:45'),
(25, '11', 'ICT', 'B', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-11 18:56:20', '2024-12-11 18:56:20'),
(26, '11', 'ICT', 'C', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-13 17:05:39', '2024-12-13 17:05:39'),
(27, '11', 'ICT', 'D', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-13 17:05:56', '2024-12-13 17:05:56'),
(28, '11', 'ICT', 'E', 'First semester', 'First quarter', NULL, NULL, 1, '2024-12-13 17:06:12', '2024-12-13 17:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notifications`
--

CREATE TABLE `teacher_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'low',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_otp_accounts`
--

CREATE TABLE `teacher_otp_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absents`
--
ALTER TABLE `absents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_accounts_id_number_unique` (`id_number`),
  ADD UNIQUE KEY `admin_accounts_username_unique` (`username`),
  ADD UNIQUE KEY `admin_accounts_email_unique` (`email`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `admin_otp_accounts`
--
ALTER TABLE `admin_otp_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_histories`
--
ALTER TABLE `attendance_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_histories_student_id_foreign` (`student_id`),
  ADD KEY `attendance_histories_subject_model_id_foreign` (`subject_model_id`),
  ADD KEY `attendance_histories_teacher_id_foreign` (`teacher_id`),
  ADD KEY `attendance_histories_grade_handle_id_foreign` (`grade_handle_id`);

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
-- Indexes for table `face_recognition_keys`
--
ALTER TABLE `face_recognition_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `face_scans`
--
ALTER TABLE `face_scans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `face_scans_student_id_foreign` (`student_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grading_headers`
--
ALTER TABLE `grading_headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guidance_accounts`
--
ALTER TABLE `guidance_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guidance_accounts_id_number_unique` (`id_number`),
  ADD UNIQUE KEY `guidance_accounts_username_unique` (`username`),
  ADD UNIQUE KEY `guidance_accounts_email_unique` (`email`);

--
-- Indexes for table `guidance_notifications`
--
ALTER TABLE `guidance_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guidance_notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `guidance_otp_accounts`
--
ALTER TABLE `guidance_otp_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highest_possible_score_grading_sheets`
--
ALTER TABLE `highest_possible_score_grading_sheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_sender_type_index` (`sender_id`,`sender_type`),
  ADD KEY `messages_receiver_id_receiver_type_index` (`receiver_id`,`receiver_type`);

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
-- Indexes for table `presents`
--
ALTER TABLE `presents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qr_generates`
--
ALTER TABLE `qr_generates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seen_announcements`
--
ALTER TABLE `seen_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_accounts`
--
ALTER TABLE `student_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_accounts_id_number_unique` (`id_number`),
  ADD UNIQUE KEY `student_accounts_username_unique` (`username`),
  ADD UNIQUE KEY `student_accounts_email_unique` (`email`);

--
-- Indexes for table `student_grades`
--
ALTER TABLE `student_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_handles`
--
ALTER TABLE `student_handles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_handles_student_id_foreign` (`student_id`),
  ADD KEY `student_handles_grade_handle_id_foreign` (`grade_handle_id`);

--
-- Indexes for table `student_images`
--
ALTER TABLE `student_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_images_student_id_foreign` (`student_id`);

--
-- Indexes for table `student_notifications`
--
ALTER TABLE `student_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `student_otp_accounts`
--
ALTER TABLE `student_otp_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_subjects_student_id_foreign` (`student_id`),
  ADD KEY `student_subjects_subject_id_foreign` (`subject_id`),
  ADD KEY `student_subjects_grade_handle_id_foreign` (`grade_handle_id`);

--
-- Indexes for table `subject_models`
--
ALTER TABLE `subject_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_accounts`
--
ALTER TABLE `teacher_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teacher_accounts_id_number_unique` (`id_number`),
  ADD UNIQUE KEY `teacher_accounts_username_unique` (`username`),
  ADD UNIQUE KEY `teacher_accounts_email_unique` (`email`);

--
-- Indexes for table `teacher_grade_handles`
--
ALTER TABLE `teacher_grade_handles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_grade_handles_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `teacher_notifications`
--
ALTER TABLE `teacher_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `teacher_otp_accounts`
--
ALTER TABLE `teacher_otp_accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absents`
--
ALTER TABLE `absents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_otp_accounts`
--
ALTER TABLE `admin_otp_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attendance_histories`
--
ALTER TABLE `attendance_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `face_recognition_keys`
--
ALTER TABLE `face_recognition_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `face_scans`
--
ALTER TABLE `face_scans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grading_headers`
--
ALTER TABLE `grading_headers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guidance_accounts`
--
ALTER TABLE `guidance_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guidance_notifications`
--
ALTER TABLE `guidance_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guidance_otp_accounts`
--
ALTER TABLE `guidance_otp_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `highest_possible_score_grading_sheets`
--
ALTER TABLE `highest_possible_score_grading_sheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=453;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presents`
--
ALTER TABLE `presents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `qr_generates`
--
ALTER TABLE `qr_generates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `seen_announcements`
--
ALTER TABLE `seen_announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_accounts`
--
ALTER TABLE `student_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `student_grades`
--
ALTER TABLE `student_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=794;

--
-- AUTO_INCREMENT for table `student_handles`
--
ALTER TABLE `student_handles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `student_images`
--
ALTER TABLE `student_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `student_notifications`
--
ALTER TABLE `student_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `student_otp_accounts`
--
ALTER TABLE `student_otp_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_subjects`
--
ALTER TABLE `student_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `subject_models`
--
ALTER TABLE `subject_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `teacher_accounts`
--
ALTER TABLE `teacher_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher_grade_handles`
--
ALTER TABLE `teacher_grade_handles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `teacher_notifications`
--
ALTER TABLE `teacher_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_otp_accounts`
--
ALTER TABLE `teacher_otp_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD CONSTRAINT `admin_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `admin_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendance_histories`
--
ALTER TABLE `attendance_histories`
  ADD CONSTRAINT `attendance_histories_grade_handle_id_foreign` FOREIGN KEY (`grade_handle_id`) REFERENCES `teacher_grade_handles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_histories_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_histories_subject_model_id_foreign` FOREIGN KEY (`subject_model_id`) REFERENCES `subject_models` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_histories_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `face_scans`
--
ALTER TABLE `face_scans`
  ADD CONSTRAINT `face_scans_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guidance_notifications`
--
ALTER TABLE `guidance_notifications`
  ADD CONSTRAINT `guidance_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `guidance_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_handles`
--
ALTER TABLE `student_handles`
  ADD CONSTRAINT `student_handles_grade_handle_id_foreign` FOREIGN KEY (`grade_handle_id`) REFERENCES `teacher_grade_handles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_handles_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_images`
--
ALTER TABLE `student_images`
  ADD CONSTRAINT `student_images_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_notifications`
--
ALTER TABLE `student_notifications`
  ADD CONSTRAINT `student_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `student_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD CONSTRAINT `student_subjects_grade_handle_id_foreign` FOREIGN KEY (`grade_handle_id`) REFERENCES `teacher_grade_handles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subjects_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subject_models` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher_grade_handles`
--
ALTER TABLE `teacher_grade_handles`
  ADD CONSTRAINT `teacher_grade_handles_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_accounts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `teacher_notifications`
--
ALTER TABLE `teacher_notifications`
  ADD CONSTRAINT `teacher_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `teacher_accounts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
