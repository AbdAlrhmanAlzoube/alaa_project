-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 05, 2023 at 09:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grad`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_type`, `created_at`, `updated_at`) VALUES
(1, 'student', NULL, NULL),
(2, 'teacher', NULL, NULL),
(3, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `user_Name`, `img`, `remember_token`, `created_at`, `updated_at`, `account_id`) VALUES
(1, 'kassem', 'kassem@gmail.com', '$2y$10$MV.wecWLtSAAYE8i3EM9peE7KwZN4ZsN93I3WqCsnbOrrZyey.mqO', 'kasssssom', NULL, NULL, NULL, NULL, 3),
(2, 'math', 'math@gmail.com', '$2y$10$MV.wecWLtSAAYE8i3EM9peE7KwZN4ZsN93I3WqCsnbOrrZyey.mqO', 'mamamath', NULL, NULL, NULL, NULL, 3),
(3, 'Drow', 'Drow@gmail.com', '$2y$10$MV.wecWLtSAAYE8i3EM9peE7KwZN4ZsN93I3WqCsnbOrrZyey.mqO', 'Drowowowo', NULL, NULL, NULL, NULL, 3),
(4, 'Sport', 'Sport@gmail.com', '$2y$10$MV.wecWLtSAAYE8i3EM9peE7KwZN4ZsN93I3WqCsnbOrrZyey.mqO', 'Sportrtrt', NULL, NULL, NULL, NULL, 3),
(5, 'Music', 'Music@gmail.com', '$2y$10$MV.wecWLtSAAYE8i3EM9peE7KwZN4ZsN93I3WqCsnbOrrZyey.mqO', 'Musicicici', NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category__courses`
--

CREATE TABLE `category__courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category__courses`
--

INSERT INTO `category__courses` (`id`, `name`, `information`, `img`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'Programming', 'the programming is so important in the current time because become dally live', 'images/Course_Category/photo/O1.jfif', NULL, NULL, 1),
(2, 'math', 'the math is so important in the current time because become dally live', 'images/Course_Category/photo/O9.jfif', '2023-05-18 19:01:03', '2023-05-18 19:01:03', 2),
(3, 'Draw', 'the Drow is so important in the current time because become dally live', 'images/Course_Category/photo/O17.jfif', '2023-05-18 19:07:44', '2023-05-18 19:07:44', 3),
(4, 'Sport', 'the Sports so important in the current time because become dally live', 'images/Course_Category/photo/O5.jfif', '2023-05-18 19:11:56', '2023-05-18 19:11:56', 4),
(5, 'Music', 'the Music so important in the current time because become dally live', 'images/Course_Category/photo/O7.jfif', '2023-05-18 19:12:59', '2023-05-18 19:12:59', 5);

-- --------------------------------------------------------

--
-- Table structure for table `course__tranings`
--

CREATE TABLE `course__tranings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_episod` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` time NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aproved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `category__course_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course__tranings`
--

INSERT INTO `course__tranings` (`id`, `description`, `count_episod`, `price`, `duration`, `img`, `aproved`, `created_at`, `updated_at`, `teacher_id`, `category__course_id`) VALUES
(1, 'this course is a web design  i will learn how to become good student in this course in programming', 22, '25', '12:38:35', 'images/Course_Traning/photo/O2.jfif', 0, NULL, NULL, 3, 1),
(3, 'this course is a java we learn how the java work and syntax of language and how become beginner best in programming', 20, '44 $', '03:44:22', 'images/Course_Traning/photo/O4.jfif', 0, '2023-05-18 14:01:42', '2023-05-18 14:01:42', 5, 1),
(4, 'this course is a analysis in mathematical and basic of math and more of example', 20, '22', '03:44:22', 'images/Course_Traning/photo/1684773120.jfif', 0, '2023-05-22 23:32:00', '2023-05-22 23:32:00', 6, 2),
(5, 'this course is a nodosities we learn what is number complex and will solve equations with some exercises in math', 20, '31', '03:44:22', 'images/Course_Traning/photo/1684773146.jfif', 0, '2023-05-22 23:32:26', '2023-05-22 23:32:26', 8, 2),
(6, 'this course is a Calculation we learn what is calc on number and will do operation on numbers with some exercises in math', 20, '14', '03:44:22', 'images/Course_Traning/photo/1684773172.jpg', 0, '2023-05-22 23:32:52', '2023-05-22 23:32:52', 6, 2),
(7, 'this course is a shadiness we learn what is shadiness and how crosshatches step by step with some exercises in draw', 20, '16', '03:44:22', 'images/Course_Traning/photo/1684773282.jfif', 0, '2023-05-22 23:34:42', '2023-05-22 23:34:42', 7, 3),
(8, 'this course is a polyhedral we learn what is polyhedral and how draw step by step with some exercises in draw', 20, '19', '03:44:22', 'images/Course_Traning/photo/1684773301.jfif', 0, '2023-05-22 23:35:01', '2023-05-22 23:35:01', 9, 3),
(9, 'this course is a tinging we learn what is tinging and how variegates step by step with some exercises in draw', 20, '15', '03:44:22', 'images/Course_Traning/photo/1684773327.jfif', 0, '2023-05-22 23:35:27', '2023-05-22 23:35:27', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ct_users_pivot`
--

CREATE TABLE `ct_users_pivot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `course__traning_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `surial_number` int(11) NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `course__traning_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `title`, `description`, `surial_number`, `link`, `status`, `img`, `created_at`, `updated_at`, `teacher_id`, `course__traning_id`) VALUES
(5, 'the title of the episode 5', 'the Description  of the episode 5', 111, 'uploads/videos/episode/1684383162The End(720P_HD).mp4', 0, 'images/episode/photo/1684383162.jfif', '2023-05-18 11:12:42', '2023-05-18 11:12:42', 3, 1),
(6, 'the Title of the episode 6', 'the Description  of the episode 6', 111, 'uploads/videos/episode/16843833352  - create Virtual Device(720P_HD).mp4', 0, 'images/episode/photo/1684383335.jfif', '2023-05-18 11:15:35', '2023-05-18 11:15:35', 3, 1),
(7, 'the Title of the episode 7', 'the Description  of the episode 7', 111, 'uploads/videos/episode/16843833976 - Text Part 2(720P_HD).mp4', 0, 'images/episode/photo/1684383397.JPG', '2023-05-18 11:16:37', '2023-05-18 11:16:37', 3, 1),
(8, 'the Title of the episode 8', 'the Description  of the episode 8', 111, 'uploads/videos/episode/16843835254  - Page Components(720P_HD).mp4', 0, 'images/episode/photo/1684383525.jfif', '2023-05-18 11:18:45', '2023-05-18 11:18:45', 3, 1),
(9, 'the title episode 1', 'the Description  of the episode 1', 111, 'uploads/videos/episode/1684755804كيفية استخدام الموبايل بدلا من emulator(480P).mp4', 0, 'images/episode/photo/1684755804.jfif', '2023-05-22 18:43:24', '2023-05-22 18:43:24', 5, 3),
(10, 'the title episode 2', 'the Description  of the episode 2', 111, 'uploads/videos/episode/1684755883bottom sheet android __ Social Media App Using Firebase 2021(360P).mp4', 0, 'images/episode/photo/1684755883.jfif', '2023-05-22 18:44:43', '2023-05-22 18:44:43', 5, 3),
(11, 'the title episode 3', 'the Description  of the episode 3', 111, 'uploads/videos/episode/1684755914Create User Profile Using Cloud firestore 2020 __ firestore user profile(360P).mp4', 0, 'images/episode/photo/1684755913.jfif', '2023-05-22 18:45:14', '2023-05-22 18:45:14', 5, 3),
(12, 'the title episode 4', 'the Description  of the episode 4', 111, 'uploads/videos/episode/1684755926Delete image from firebase storage android __ Social media app using firebase 2020(360P).mp4', 0, 'images/episode/photo/1684755926.jfif', '2023-05-22 18:45:26', '2023-05-22 18:45:26', 5, 3),
(13, 'the title episode 5', 'the Description  of the episode 5', 111, 'uploads/videos/episode/1684755970firebase like button _ Likes Functionality using Firebase 2020(360P).mp4', 0, 'images/episode/photo/1684755970.jfif', '2023-05-22 18:46:10', '2023-05-22 18:46:10', 5, 3),
(15, 'the title episode 1', 'the Description  of the episode 1', 111, 'uploads/videos/episode/168477569001 فتح مستند جديد _ برنامج مايكروسوفت وورد 2016(360P).mp4', 0, 'images/episode/photo/1684775690.jfif', '2023-05-23 00:14:50', '2023-05-23 00:14:50', 6, 4),
(16, 'the title episode 2', 'the Description  of the episode 2', 111, 'uploads/videos/episode/168477574405 نسخ التنسيق  _ برنامج مايكروسوفت وورد 2016(360P).mp4', 0, 'images/episode/photo/1684775744.jfif', '2023-05-23 00:15:44', '2023-05-23 00:15:44', 6, 4),
(17, 'the title episode 2', 'the Description  of the episode 2', 111, 'uploads/videos/episode/168477577801 فتح مستند جديد _ برنامج مايكروسوفت وورد 2016(360P).mp4', 0, 'images/episode/photo/1684775778.jfif', '2023-05-23 00:16:19', '2023-05-23 00:16:19', 6, 4),
(18, 'the title episode 4', 'the Description  of the episode 4', 111, 'uploads/videos/episode/168477580307 حالة الاحرف ومسح التنسيق _ برنامج مايكروسوفت وورد 2016(360P).mp4', 0, 'images/episode/photo/1684775803.jfif', '2023-05-23 00:16:43', '2023-05-23 00:16:43', 6, 4),
(19, 'the title episode 1', 'the Description  of the episode 1', 111, 'uploads/videos/episode/168477609536   اضافة وتنسيق ارقام الصفحات  _ برنامج مايكروسوفت وورد 2016(360P).mp4', 0, 'images/episode/photo/1684776095.jfif', '2023-05-23 00:21:35', '2023-05-23 00:21:35', 8, 5),
(20, 'the title episode 2', 'the Description  of the episode 2', 111, 'uploads/videos/episode/1684776117File Save to Rest of ALL Ms Word Part 42 - R TecH BangLa(360P).mp4', 0, 'images/episode/photo/1684776117.jfif', '2023-05-23 00:21:57', '2023-05-23 00:21:57', 8, 5),
(21, 'the title episode 3', 'the Description  of the episode 3', 111, 'uploads/videos/episode/1684776219Ms Office 2016 Word  Proofing Part 31 - R TecH BangLa(360P).mp4', 0, 'images/episode/photo/1684776219.jfif', '2023-05-23 00:23:39', '2023-05-23 00:23:39', 8, 5),
(22, 'the title episode 1', 'the Description  of the episode 1', 111, 'uploads/videos/episode/1684776304MS OFFICE WORD 2016 FILE- open PART 41 - R TecH BangLa(360P).mp4', 0, 'images/episode/photo/1684776304.jpg', '2023-05-23 00:25:04', '2023-05-23 00:25:04', 6, 6),
(23, 'the title episode 2', 'the Description  of the episode 2', 111, 'uploads/videos/episode/168477635601 فتح مستند جديد _ برنامج مايكروسوفت وورد 2016(360P).mp4', 0, 'images/episode/photo/1684776356.jfif', '2023-05-23 00:25:56', '2023-05-23 00:25:56', 6, 6),
(24, 'the title episode 3', 'the Description  of the episode 3', 111, 'uploads/videos/episode/168477637719  خيارات الترقيم ، تغيير الوان الارقام والنقاط _ برنامج مايكروسوفت وورد 2016(360P).mp4', 0, 'images/episode/photo/1684776377.jfif', '2023-05-23 00:26:17', '2023-05-23 00:26:17', 6, 6),
(25, 'the title episode 1', 'the Description  of the episode 1', 111, 'uploads/videos/episode/1684776537CMD حيل مدهشة قد تعجبك يستعمله المحترفين إنشاء مجلد أو تغيير اسمه فقط عن طريق(240P).mp4', 0, 'images/episode/photo/1684776537.jfif', '2023-05-23 00:28:57', '2023-05-23 00:28:57', 7, 7),
(26, 'the title episode 2', 'the Description  of the episode 2', 111, 'uploads/videos/episode/1684776564CMD طريقة إنشاء مجلد وتغيير اسمه فقط عن طريق(240P).mp4', 0, 'images/episode/photo/1684776564.jfif', '2023-05-23 00:29:24', '2023-05-23 00:29:24', 7, 7),
(27, 'the title episode 3', 'the Description  of the episode 3', 111, 'uploads/videos/episode/1684776588CMD طريقة إنشاء مجلد وتغيير اسمه فقط عن طريق(240P).mp4', 0, 'images/episode/photo/1684776588.jfif', '2023-05-23 00:29:48', '2023-05-23 00:29:48', 7, 7),
(28, 'the title episode 1', 'the Description  of the episode 1', 111, 'uploads/videos/episode/1684776688اقوى طريقة لم تشرح من قبل على اليوتيوب حماية أي ملف لديك برقم سري مخفي بالكامل بدون برامج(240P).mp4', 0, 'images/episode/photo/1684776688.jfif', '2023-05-23 00:31:28', '2023-05-23 00:31:28', 9, 8),
(29, 'the title episode 2', 'the Description  of the episode 2', 111, 'uploads/videos/episode/1684776718ابهر اصدقائك بهذه الخلفية الديناميكية متحركة للشاشة Windows _8 _8_1 _7 _10 _ فيستا(240P).mp4', 0, 'images/episode/photo/1684776718.jfif', '2023-05-23 00:31:58', '2023-05-23 00:31:58', 9, 8),
(30, 'the title episode 3', 'the Description  of the episode 3', 111, 'uploads/videos/episode/1684776735ابهر اصدقائك بهذه الخلفية الديناميكية متحركة للشاشة Windows _8 _8_1 _7 _10 _ فيستا(240P).mp4', 0, 'images/episode/photo/1684776735.jfif', '2023-05-23 00:32:15', '2023-05-23 00:32:15', 9, 8),
(31, 'the title episode 1', 'the Description  of the episode 1', 111, 'uploads/videos/episode/1684776886Codewithsaad.com - موقع القناة الجديد تعريف بالموقع وكيفية المذاكرة مع القناة(360P).mp4', 0, 'images/episode/photo/1684776886.jfif', '2023-05-23 00:34:46', '2023-05-23 00:34:46', 10, 9),
(32, 'the title episode 2', 'the Description  of the episode 2', 111, 'uploads/videos/episode/1684776917CMD حيل مدهشة قد تعجبك يستعمله المحترفين إنشاء مجلد أو تغيير اسمه فقط عن طريق(240P).mp4', 0, 'images/episode/photo/1684776917.jfif', '2023-05-23 00:35:17', '2023-05-23 00:35:17', 10, 9),
(33, 'the title episode 3', 'the Description  of the episode 3', 111, 'uploads/videos/episode/1684776947Fix problem BitLocker D__ is not accessible(240P).mp4', 0, 'images/episode/photo/1684776947.jfif', '2023-05-23 00:35:47', '2023-05-23 00:35:47', 10, 9);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_04_07_035332_create_admins_table', 1),
(7, '2023_04_07_040128_create_teachers_table', 1),
(8, '2023_04_07_042946_create_category__courses_table', 1),
(9, '2023_04_07_043518_create_course__tranings_table', 1),
(10, '2023_04_07_044658_create_episodes_table', 1),
(11, '2023_04_07_045101_create_quizzes_table', 1),
(12, '2023_04_07_045241_create_questions_table', 1),
(13, '2023_04_07_045426_create_options_table', 1),
(14, '2023_04_07_050410_create_accounts_table', 1),
(15, '2023_04_07_052424_add_to_admins_table', 1),
(16, '2023_04_07_053015_add_to_teachers_table', 1),
(17, '2023_04_07_053721_add_to_options_table', 1),
(18, '2023_04_07_054006_add_to_questions_table', 1),
(19, '2023_04_07_054731_add_to_quizzes_table', 1),
(20, '2023_04_07_055259_add_to_episodes_table', 1),
(21, '2023_04_07_055528_add_to_episodes_table', 1),
(22, '2023_04_07_060336_add_to_course__tranings_table', 1),
(23, '2023_04_07_060527_add_to_course__tranings_table', 1),
(24, '2023_04_07_060830_add_to_category__courses_table', 1),
(25, '2023_04_14_060133_add_to_users_table', 1),
(26, '2023_04_14_060409_create_ct_users_pivot_table', 1),
(27, '2023_04_17_075723_add_to_teachers_table', 1),
(28, '2023_04_18_133743_create_student_quize_pivot_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ischoice` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('alaaaldeentaan@gmail.com', '$2y$10$o3Bkk8nS3dF1MzU6FekpzuKB0LSX3XxdgVDNc5BKw8dN9fG/jDk82', '2023-06-05 08:26:33'),
('std1@gmail.com', '$2y$10$ngUfuS7hyxolkBaWARBdlOIitufiXPtQmDUdUcpvqFAJypdSqTia.', '2023-06-04 15:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quiz_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `episode_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_quize_pivot`
--

CREATE TABLE `student_quize_pivot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `is_aproved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `user_Name`, `language`, `address`, `gender`, `dob`, `phone`, `email`, `password`, `img`, `certificate_img`, `remember_token`, `created_at`, `updated_at`, `account_id`, `is_aproved`) VALUES
(3, 'Ahmad', 'AAAAAA', 'AAAAAAAAAA', 'address     Alaa / tadamoon', 'male', '2023-04-14', '932885275', 'Ahmad@gmail.com', '$2y$10$MV.wecWLtSAAYE8i3EM9peE7KwZN4ZsN93I3WqCsnbOrrZyey.mqO', '/storage/images/teacher/photo/a.jpg', NULL, NULL, '2023-04-19 22:00:28', '2023-04-19 22:00:28', 2, 1),
(5, 'mohanad', 'BBBBBB', 'Arabic', 'address     mohanad/ tadamoon', 'male', '2023-04-13', '123456789', 'mohanad@gmail.com', '$2y$10$MV.wecWLtSAAYE8i3EM9peE7KwZN4ZsN93I3WqCsnbOrrZyey.mqO', '/storage/images/teacher/photo/b.jpg', '/storage/images/certificate/1681920988.m6.jpg', NULL, '2023-04-19 23:16:28', '2023-04-19 23:16:28', 2, 1),
(6, 'sasoo', 'SSSSSS', 'italic', 'address     jjjj/ oh', 'male', '2023-05-27', '0932885275', 'ala@gmail.com', '$2y$10$MV.wecWLtSAAYE8i3EM9peE7KwZN4ZsN93I3WqCsnbOrrZyey.mqO', '/storage/images/teacher/photo/c.jpg', '/storage/images/certificate/1684393831.m5.jpg', NULL, '2023-05-18 14:10:32', '2023-05-18 14:10:32', 2, 1),
(7, 'teach1', 'Teach', 'Aribic', 'address     teach1/ oh', 'male', '2023-05-26', '0932885255', 'teach1@gmail.com', '$2y$10$qYqjHBH/N3hTcNvaptEg1utimlefSgnviSaX6vHBi9YpFe55Jbxfu', '/storage/images/teacher/photo/d.jpg', '/storage/images/certificate/1684774259.Capture12.PNG', NULL, '2023-05-22 23:51:00', '2023-05-22 23:51:00', 2, 1),
(8, 'teach2', 'Teachoo', 'Aribic', 'address     teach2/ ohjoj', 'male', '2023-05-10', '0932885259', 'teach2@gmail.com', '$2y$10$lWDoU2KOVWQRdRFytvrDnOnUxI6Do2xZxrvVqcfxTvPelBtusIerC', '/storage/images/teacher/photo/e.jpg', '/storage/images/certificate/1684774416.Captur.PNG', NULL, '2023-05-22 23:53:36', '2023-05-22 23:53:36', 2, 1),
(9, 'teach3', 'Teachuu', 'Aribic', 'address     teach3/ ohjyytew', 'male', '2023-06-04', '0932883259', 'teach3@gmail.com', '$2y$10$38ZocpIjw0h50WOLhDtRtOzcxtcAcNsUScUcbafnxpgofj91VIy12', '/storage/images/teacher/photo/f.jpg', '/storage/images/certificate/1684774458.Capture22.PNG', NULL, '2023-05-22 23:54:18', '2023-05-22 23:54:18', 2, 1),
(10, 'teach4', 'Teachgggg', 'Aribic', 'address     teach4/ oeeeetew', 'male', '2023-07-06', '0932383259', 'teach4@gmail.com', '$2y$10$P353H76xKuaap9YC3nhkCexTHnbq2VQGmUzIQjKAA9QFNjfCDET4S', '/storage/images/teacher/photo/j.jpg', '/storage/images/certificate/1684774495.C1.PNG', NULL, '2023-05-22 23:54:55', '2023-05-22 23:54:55', 2, 1),
(11, 'teach5', 'Teachwww', 'Aribic', 'address     teach4/ oeeuwqq', 'male', '2023-07-22', '0932331259', 'teach5@gmail.com', '$2y$10$fLoRvYmS0IV45eD4c5BCweAhNEy1hputyoumNMM0ZqR.wyFQaQrLK', '/storage/images/teacher/photo/h.jpg', '/storage/images/certificate/1684774529.Capture4.PNG', NULL, '2023-05-22 23:55:29', '2023-05-22 23:55:29', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `user_name`, `email`, `email_verified_at`, `password`, `img`, `remember_token`, `created_at`, `updated_at`, `account_id`) VALUES
(2, 'Anss', 'Taan', 'std1', 'std1@gmail.com', NULL, '$2y$10$7JitZQOwiDSkl80FecNgb.y85aH2QrK4/8V7GKqSpwsa5DMCjSXBG', 'images/profile/photo/1684712810.jfif', NULL, '2023-05-22 06:09:23', '2023-05-22 06:46:50', 1),
(4, 'fofo', 'jasber', 'std2', 'std2@gmail.com', NULL, '$2y$10$s.5iDZuYLG7ZK3RUxtjPU.bVBPRcLaoAe3OK/fe6HyamW9GhrkK1K', 'images/profile/photo/def.jpg', NULL, '2023-05-22 06:52:14', '2023-05-22 06:52:14', 1),
(5, 'Alaa', 'Tn', 'Alaa Al King', 'alaaaldeentaan@gmail.com', NULL, '$2y$10$d4LdZmlUouHzHn6gpmV3I.Y/ROmiqXXEHqVGrnXpnG0nmumz1dBKi', 'images/profile/photo/def.jpg', NULL, '2023-06-04 15:41:48', '2023-06-04 15:41:48', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_account_id_foreign` (`account_id`);

--
-- Indexes for table `category__courses`
--
ALTER TABLE `category__courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category__courses_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `course__tranings`
--
ALTER TABLE `course__tranings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course__tranings_teacher_id_foreign` (`teacher_id`),
  ADD KEY `course__tranings_category__course_id_foreign` (`category__course_id`);

--
-- Indexes for table `ct_users_pivot`
--
ALTER TABLE `ct_users_pivot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episodes_teacher_id_foreign` (`teacher_id`),
  ADD KEY `episodes_course__traning_id_foreign` (`course__traning_id`);

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
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_quiz_id_foreign` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizzes_episode_id_foreign` (`episode_id`);

--
-- Indexes for table `student_quize_pivot`
--
ALTER TABLE `student_quize_pivot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`),
  ADD KEY `teachers_account_id_foreign` (`account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_account_id_foreign` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category__courses`
--
ALTER TABLE `category__courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course__tranings`
--
ALTER TABLE `course__tranings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ct_users_pivot`
--
ALTER TABLE `ct_users_pivot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_quize_pivot`
--
ALTER TABLE `student_quize_pivot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category__courses`
--
ALTER TABLE `category__courses`
  ADD CONSTRAINT `category__courses_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course__tranings`
--
ALTER TABLE `course__tranings`
  ADD CONSTRAINT `course__tranings_category__course_id_foreign` FOREIGN KEY (`category__course_id`) REFERENCES `category__courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course__tranings_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_course__traning_id_foreign` FOREIGN KEY (`course__traning_id`) REFERENCES `course__tranings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `episodes_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_episode_id_foreign` FOREIGN KEY (`episode_id`) REFERENCES `episodes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
