/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `like_res`;
CREATE TABLE `like_res` (
  `user_id` int DEFAULT NULL,
  `res_id` int DEFAULT NULL,
  `date_like` datetime DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `res_id` (`res_id`),
  CONSTRAINT `like_res_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `like_res_ibfk_2` FOREIGN KEY (`res_id`) REFERENCES `restaurant` (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(18, 2, '2023-04-11 10:19:11');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(7, 24, '2022-12-08 14:49:19');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(6, 16, '2023-08-08 18:41:01');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(35, 25, '2023-04-05 19:51:59'),
(38, 39, '2023-06-03 21:57:56'),
(14, 11, '2022-11-30 13:05:09'),
(64, 38, '2023-03-17 04:53:24'),
(7, 40, '2023-06-17 17:54:28'),
(86, 29, '2022-12-22 05:35:31'),
(3, 11, '2023-02-17 19:44:42'),
(96, 44, '2023-09-01 16:32:38'),
(39, 17, '2023-06-22 06:06:37'),
(7, 23, '2022-10-03 06:50:25'),
(64, 2, '2022-11-17 22:51:00'),
(87, 28, '2023-07-05 09:20:27'),
(38, 16, '2022-12-14 19:04:27'),
(74, 12, '2023-06-04 03:31:55'),
(9, 32, '2023-06-22 00:02:11'),
(14, 5, '2023-04-01 01:30:38'),
(69, 24, '2023-01-19 21:19:07'),
(88, 22, '2023-01-04 22:02:13'),
(36, 50, '2022-12-02 19:31:37'),
(84, 21, '2023-03-25 08:58:26'),
(89, 21, '2023-06-25 04:20:33'),
(74, 34, '2023-05-31 00:10:08'),
(85, 34, '2023-05-30 02:51:28'),
(66, 14, '2023-02-15 12:48:01'),
(67, 11, '2023-05-08 03:34:57'),
(23, 20, '2023-07-21 12:32:15'),
(29, 15, '2022-10-03 04:46:36'),
(89, 7, '2023-02-20 13:14:46'),
(46, 47, '2023-07-20 20:46:45'),
(25, 23, '2023-03-06 20:14:01'),
(22, 18, '2023-06-20 22:35:53'),
(66, 50, '2023-03-24 03:57:14'),
(82, 30, '2022-11-23 22:45:25'),
(69, 29, '2023-07-10 21:57:31'),
(80, 10, '2023-03-12 05:21:40'),
(84, 17, '2023-04-06 16:08:30'),
(16, 34, '2023-05-15 07:33:20'),
(72, 35, '2023-02-19 23:44:36'),
(89, 24, '2023-09-04 04:51:02'),
(71, 13, '2023-09-05 16:38:33'),
(2, 14, '2023-05-31 07:04:37'),
(96, 12, '2022-10-16 21:30:25'),
(22, 45, '2022-10-09 11:20:49'),
(41, 44, '2023-08-29 15:52:31'),
(5, 32, '2023-04-15 18:57:29'),
(28, 39, '2023-05-19 23:17:32'),
(39, 8, '2023-05-26 11:51:56'),
(6, 26, '2022-12-06 03:47:45'),
(21, 46, '2022-10-08 22:45:39'),
(77, 30, '2023-05-19 20:31:06'),
(77, 25, '2023-04-15 11:44:59'),
(23, 30, '2022-12-25 12:20:22'),
(87, 20, '2023-04-26 23:10:52'),
(30, 24, '2023-09-03 16:21:33'),
(49, 38, '2023-09-07 06:46:02'),
(57, 14, '2023-07-09 08:50:15'),
(74, 19, '2023-01-13 16:26:29'),
(24, 14, '2023-01-21 20:29:21'),
(88, 8, '2023-06-05 15:15:20'),
(13, 27, '2023-07-14 06:22:17'),
(22, 30, '2023-04-22 20:48:37'),
(3, 15, '2022-10-07 08:07:35'),
(52, 34, '2023-04-24 22:38:20'),
(80, 46, '2023-06-24 21:15:37'),
(41, 33, '2023-08-10 13:42:22'),
(5, 11, '2023-01-30 16:36:58'),
(91, 34, '2023-06-12 07:55:35'),
(43, 48, '2023-07-08 14:17:00'),
(60, 22, '2022-11-20 17:24:55'),
(96, 48, '2022-09-30 01:01:48'),
(51, 3, '2023-05-03 13:25:10'),
(29, 41, '2023-03-17 18:11:48'),
(64, 20, '2022-09-27 23:52:35'),
(24, 41, '2023-07-06 10:19:33'),
(26, 13, '2022-10-12 04:59:13'),
(61, 7, '2023-07-03 03:39:16'),
(77, 13, '2023-05-31 22:45:14'),
(96, 5, '2023-02-26 23:44:29'),
(43, 39, '2023-03-20 06:12:52'),
(70, 2, '2022-10-27 17:25:48'),
(3, 14, '2023-05-13 11:53:41'),
(36, 25, '2023-01-06 05:16:10'),
(4, 15, '2022-11-30 06:30:56'),
(49, 39, '2023-04-20 12:46:55'),
(10, 11, '2023-01-04 10:23:59'),
(5, 37, '2022-10-17 13:03:57'),
(12, 15, '2022-11-02 00:22:32'),
(10, 22, '2022-10-08 16:35:35'),
(28, 43, '2022-11-17 15:53:55'),
(94, 38, '2022-12-16 02:52:34'),
(30, 36, '2023-04-13 21:34:46'),
(62, 33, '2022-11-17 15:17:53'),
(75, 34, '2023-06-09 10:12:09'),
(10, 25, '2023-04-13 11:27:01'),
(5, 37, '2022-10-23 04:28:57'),
(83, 14, '2023-06-01 22:07:29'),
(43, 40, '2022-10-08 01:24:29'),
(54, 14, '2023-04-24 01:58:48'),
(29, 45, '2022-12-08 02:01:20'),
(45, 2, '2023-07-07 21:46:05'),
(54, 38, '2023-09-06 15:43:37'),
(94, 7, '2023-01-15 04:43:57'),
(9, 6, '2022-12-14 03:08:53'),
(85, 22, '2023-08-06 14:34:47'),
(19, 7, '2023-01-01 18:54:01'),
(80, 7, '2023-04-03 06:06:35'),
(80, 50, '2022-12-31 22:57:46'),
(6, 7, '2023-04-14 10:03:25'),
(83, 17, '2023-03-19 06:30:15'),
(59, 49, '2023-08-04 19:30:22'),
(68, 41, '2022-12-13 03:56:05'),
(4, 8, '2023-05-08 02:08:59'),
(77, 5, '2023-05-06 23:00:25'),
(22, 17, '2022-11-01 08:04:15'),
(28, 32, '2023-06-17 20:02:19'),
(12, 4, '2022-11-17 16:51:33'),
(64, 40, '2023-06-28 19:18:50'),
(67, 20, '2023-04-20 07:44:48'),
(97, 7, '2022-11-07 12:45:15'),
(24, 45, '2023-09-18 21:08:32'),
(95, 18, '2023-01-10 19:38:41'),
(24, 14, '2023-01-03 21:50:41'),
(12, 46, '2022-10-12 21:28:22'),
(47, 9, '2023-05-09 12:06:11'),
(6, 3, '2023-02-11 05:59:58'),
(29, 2, '2023-01-28 01:30:17'),
(84, 40, '2023-07-04 22:23:08'),
(38, 49, '2023-02-21 18:55:50'),
(95, 24, '2023-07-22 18:35:33'),
(40, 22, '2022-10-24 13:59:54'),
(1, 38, '2023-03-31 20:51:12'),
(98, 21, '2022-12-20 05:09:04'),
(26, 35, '2023-07-13 23:47:18'),
(84, 43, '2023-06-20 00:41:44'),
(69, 46, '2023-03-22 15:45:52'),
(99, 43, '2023-02-05 17:41:04'),
(53, 48, '2023-03-04 01:48:53'),
(47, 7, '2022-11-14 13:17:24'),
(94, 4, '2023-06-12 23:22:35'),
(36, 41, '2023-05-19 12:49:25'),
(82, 41, '2023-08-16 02:57:27'),
(91, 38, '2023-02-18 10:47:58'),
(8, 18, '2023-02-14 00:22:43'),
(20, 4, '2022-11-12 15:19:46'),
(40, 19, '2023-09-07 05:34:40'),
(17, 28, '2023-04-14 12:09:03'),
(73, 36, '2023-04-22 23:06:46'),
(40, 27, '2023-02-19 09:06:01'),
(38, 17, '2023-08-05 22:45:58'),
(11, 35, '2023-04-09 16:55:17'),
(59, 1, '2022-11-17 11:43:20'),
(35, 7, '2023-03-11 13:07:13'),
(70, 18, '2023-03-26 17:50:31'),
(77, 49, '2022-11-11 03:27:24'),
(60, 16, '2023-06-30 13:49:30'),
(32, 16, '2023-08-15 10:44:10'),
(73, 28, '2023-07-15 04:45:00'),
(17, 18, '2023-06-09 17:30:47'),
(98, 24, '2023-02-23 15:11:16'),
(24, 23, '2023-06-25 21:22:13'),
(11, 38, '2023-03-03 03:07:05'),
(4, 46, '2023-01-16 19:16:59'),
(27, 7, '2022-12-14 10:13:11'),
(95, 42, '2023-05-09 04:57:47'),
(42, 43, '2023-02-13 23:28:34'),
(25, 8, '2023-04-10 06:53:42'),
(4, 44, '2023-04-07 17:20:18'),
(49, 10, '2023-09-09 17:23:54'),
(71, 48, '2023-04-29 02:27:34'),
(20, 44, '2023-01-28 14:24:37'),
(93, 45, '2022-11-19 15:28:12'),
(31, 1, '2023-07-19 06:35:11'),
(25, 42, '2023-06-28 13:50:11'),
(26, 36, '2023-04-13 18:24:20'),
(16, 46, '2023-01-05 20:43:17'),
(38, 24, '2022-10-29 13:14:20'),
(29, 24, '2023-09-12 16:29:13'),
(35, 5, '2022-12-28 01:25:35'),
(100, 15, '2023-06-08 17:26:31'),
(85, 47, '2022-12-30 20:43:02'),
(74, 48, '2023-01-07 04:08:24'),
(1, 48, '2023-07-28 23:02:43'),
(77, 49, '2023-05-23 16:35:45'),
(42, 25, '2023-05-31 03:21:34'),
(10, 37, '2023-04-28 17:23:39'),
(49, 32, '2023-06-14 13:42:48'),
(31, 1, '2023-06-28 22:48:03'),
(99, 5, '2023-07-21 10:28:44'),
(56, 19, '2023-03-27 19:08:41'),
(19, 20, '2023-03-06 05:59:34'),
(33, 11, '2023-06-15 01:01:58');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(33, 22, '2023-08-29 08:33:34'),
(81, 45, '2022-12-02 12:59:35'),
(17, 40, '2023-07-05 14:27:06'),
(81, 33, '2023-01-21 12:00:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;