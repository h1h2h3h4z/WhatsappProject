-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2024 at 05:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whatsappproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `friendrequest`
--

CREATE TABLE `friendrequest` (
  `friendrequestid` int(11) NOT NULL,
  `senderid` int(11) NOT NULL,
  `requestid` int(11) NOT NULL,
  `accept` enum('yes','no') NOT NULL DEFAULT 'no',
  `readn` enum('yes','no') NOT NULL DEFAULT 'no',
  `dateofsend` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friendrequest`
--

INSERT INTO `friendrequest` (`friendrequestid`, `senderid`, `requestid`, `accept`, `readn`, `dateofsend`) VALUES
(51, 1, 6, 'yes', 'yes', '2024-07-28'),
(52, 2, 1, 'yes', 'yes', '2024-08-02'),
(53, 6, 2, 'yes', 'yes', '2024-08-04'),
(54, 1, 7, 'yes', 'yes', '2024-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageid` int(11) NOT NULL,
  `senderid` int(11) NOT NULL,
  `receverid` int(11) NOT NULL,
  `textmessage` varchar(1000) NOT NULL,
  `dateofsend` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageid`, `senderid`, `receverid`, `textmessage`, `dateofsend`) VALUES
(10, 6, 1, 'HI', '2024-08-02 22:41:31'),
(11, 1, 6, 'hello', '2024-08-02 22:41:50'),
(12, 6, 1, 'whrer', '2024-08-02 22:42:12'),
(13, 6, 1, 'are yoi', '2024-08-02 22:42:17'),
(14, 1, 6, 'iam', '2024-08-02 22:44:55'),
(15, 6, 1, 'k', '2024-08-02 22:45:17'),
(16, 6, 1, 'HOW', '2024-08-02 22:45:52'),
(17, 6, 1, 'my f', '2024-08-02 22:50:06'),
(18, 1, 6, 'thx', '2024-08-02 22:50:34'),
(19, 6, 1, 'how are you', '2024-08-02 22:59:49'),
(20, 1, 6, 'fine thak you ', '2024-08-02 23:00:07'),
(21, 1, 6, '<html lang=\"en\"> <head>     <meta charset=\"UTF-8\">     <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">     <title>Full Container Background Example</title>     <link href=\"https://cdn.jsdelivr.net/npm/tailwindcss@3.0.0/dist/tailwind.min.css\" rel=\"stylesheet\"> </head>', '2024-08-02 23:07:21'),
(22, 1, 6, '<html lang=\"en\"> <head>     <meta charset=\"UTF-8\">     <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">     <title>Full Container Background Example</title> ', '2024-08-02 23:07:28'),
(23, 1, 6, 'head', '2024-08-02 23:07:35'),
(24, 6, 1, 'skcsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', '2024-08-02 23:21:23'),
(25, 6, 1, 'iam hussein', '2024-08-02 23:22:41'),
(26, 1, 6, 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '2024-08-02 23:23:09'),
(27, 1, 2, 'to z', '2024-08-02 23:31:49'),
(28, 1, 2, 'iam sender hussein', '2024-08-02 23:48:52'),
(29, 1, 6, 'hello', '2024-08-03 00:42:02'),
(30, 2, 1, 'iam z', '2024-08-03 00:42:32'),
(31, 1, 2, 'hello', '2024-08-03 11:13:44'),
(32, 2, 1, 'how are you', '2024-08-03 11:14:07'),
(33, 1, 2, 'hi', '2024-08-03 11:15:16'),
(34, 1, 2, '', '2024-08-03 11:15:24'),
(35, 1, 2, '', '2024-08-03 11:15:26'),
(36, 1, 2, 'iam fine', '2024-08-03 11:16:01'),
(37, 1, 2, 'hello', '2024-08-03 11:16:17'),
(38, 1, 2, 'hi', '2024-08-03 11:17:37'),
(39, 1, 2, 'how', '2024-08-03 11:17:49'),
(40, 2, 1, 'iam z send to hussein message', '2024-08-03 11:21:15'),
(41, 1, 2, 'iam hussein send to z message', '2024-08-03 11:21:43'),
(42, 1, 2, 'hi', '2024-08-03 11:25:41'),
(43, 1, 2, 'hi', '2024-08-03 11:26:10'),
(44, 1, 2, 'iam hussei', '2024-08-03 11:32:56'),
(45, 2, 1, '	 2024-08-02 23:00:07 	 Edit Edit Copy Copy Delete Delete 21 1 6 <html lang=\"en\"> <head>     <meta charset=\"UTF-8\">... 2024-08-02 23:07:21 	 Edit Edit Copy Copy Delete Delete 22 1 6 <html lang=\"en\"> <head>     <meta charset=\"UTF-8\">... 2024-08-02 23:07:28 	 Edit Edit Copy Copy Delete Delete 23 1 6 head 2024-08-02 23:07:35 	 Edit Edit Copy Copy Delete Delete 24 6 1 skcsssssssssssssssssssssssssssssssssssssssssssssss... 2024-08-02 23:21:23 	 Edit Edit Copy Copy Delete Delete 25 6 1 iam hussein 2024-08-02 23:22:41 	 Edit Edit Copy Copy Delete Delete 26 1 6 ffffffffffffffffffffffffffffffffffffffffffffffffff... 2024-08-02 23:23:09 	 Edit Edit Copy Copy Delete Delete 27 1 2 to z 2024-08-02 23:31:49', '2024-08-03 11:37:24'),
(46, 1, 2, 'اث', '2024-08-03 23:11:26'),
(47, 1, 2, 'hi', '2024-08-04 17:50:10'),
(48, 1, 2, 'how are you', '2024-08-04 17:52:19'),
(49, 1, 2, 'hi', '2024-08-04 18:07:05'),
(50, 1, 6, 'hi', '2024-08-04 18:08:27'),
(51, 1, 2, 'hello', '2024-08-04 18:12:32'),
(52, 1, 6, 'how are ypu', '2024-08-04 18:12:44'),
(53, 6, 1, 'iam fine ', '2024-08-04 18:14:00'),
(54, 1, 6, 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', '2024-08-04 18:14:42'),
(55, 1, 2, 'h', '2024-08-04 18:17:48'),
(56, 1, 2, 'to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 Edit Edit Copy Copy Delete Delete 22 1 6 ... 2024-08-02 23:07:28 Edit Edit Copy Copy Delete Delete 23 1 6 head 2024-08-02 23:07:35 Edit Edit Copy Copy Delete Delete 24 6 1 skcsssssssssssssssssssssssssssssssssssssssssssssss... 2024-08-02 23:21:23 Edit Edit Copy Copy Delete Delete 25 6 1 iam hussein 2024-08-02 23:22:41 Edit Edit Copy Copy Delete Delete 26 1 6 ffffffffffffffffffffffffffffffffffffffffffffffffff... 2024-08-02 23:23:09 Edit Edit Copy Copy Delete Delete 27 1 2 to z 2024-08-02 23:31:49', '2024-08-04 18:18:47'),
(57, 6, 1, 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', '2024-08-04 18:19:16'),
(58, 2, 1, 'heelo', '2024-08-04 18:53:10'),
(59, 2, 6, 'hello my friend', '2024-08-04 18:53:22'),
(60, 6, 2, 'hello how are you', '2024-08-04 18:53:46'),
(61, 2, 6, 'iam fine', '2024-08-04 18:53:59'),
(62, 2, 6, '	1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	datetime			No	current_timestamp()			Change Change	Drop Drop	', '2024-08-04 18:55:38'),
(63, 2, 6, '	1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	datetime			No	current_timestamp()			Change Change	Drop Drop		1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	datetime			No	current_timestamp()			Change Change	Drop Drop		1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	d', '2024-08-04 18:55:51'),
(64, 6, 2, '	1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	datetime			No	current_timestamp()			Change Change	Drop Drop		1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	datetime			No	current_timestamp()			Change Change	Drop Drop		1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	d', '2024-08-04 18:56:03'),
(65, 6, 2, '	1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	datetime			No	current_timestamp()			Change Change	Drop Drop	', '2024-08-04 18:56:08'),
(66, 6, 2, '	1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	datetime			No	current_timestamp()			Change Change	Drop Drop	', '2024-08-04 18:56:10'),
(67, 6, 2, '	1	messageid Primary	int(11)			No	None		AUTO_INCREMENT	Change Change	Drop Drop	 	2	senderid	int(11)			No	None			Change Change	Drop Drop	 	3	receverid	int(11)			No	None			Change Change	Drop Drop	 	4	textmessage	varchar(1000)	utf8mb4_general_ci		No	None			Change Change	Drop Drop	 	5	dateofsend	datetime			No	current_timestamp()			Change Change	Drop Drop	', '2024-08-04 18:56:13'),
(68, 2, 1, 'what you do ', '2024-08-04 21:46:47'),
(69, 2, 1, 'if ($(\".messagesview\").scrollTop() + $(\".messagesview\").height() >= $(\".messagesview\")[0].scrollHeight) {                     $(\".messagesview\").scrollTop($(\".messagesview\")[0].scrollHeight);                 }if ($(\".messagesview\").scrollTop() + $(\".messagesview\").height() >= $(\".messagesview\")[0].scrollHeight) {                     $(\".messagesview\").scrollTop($(\".messagesview\")[0].scrollHeight);                 }', '2024-08-04 21:47:04'),
(70, 2, 1, 'if ($(\".messagesview\").scrollTop() + $(\".messagesview\").height() >= $(\".messagesview\")[0].scrollHeight) {                     $(\".messagesview\").scrollTop($(\".messagesview\")[0].scrollHeight);                 }', '2024-08-04 21:47:09'),
(71, 6, 2, '1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() ', '2024-08-05 00:08:04'),
(72, 6, 2, 'hello my friend hello how are you iam fine 1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() Change Change Drop Drop 1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() Change Change Drop Drop 1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() Cha', '2024-08-05 00:08:18'),
(73, 6, 2, 'hello my friend hello how are you iam fine 1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() Change Change Drop Drop 1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() Change Change Drop Drop 1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() Cha', '2024-08-05 00:08:26'),
(74, 6, 2, 'hello my friend hello how are you iam fine 1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() Change Change Drop Drop 1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() Change Change Drop Drop 1 messageid Primary int(11) No None AUTO_INCREMENT Change Change Drop Drop 2 senderid int(11) No None Change Change Drop Drop 3 receverid int(11) No None Change Change Drop Drop 4 textmessage varchar(1000) utf8mb4_general_ci No None Change Change Drop Drop 5 dateofsend datetime No current_timestamp() Cha', '2024-08-05 00:08:30'),
(75, 6, 2, 'حسين', '2024-08-05 00:37:39'),
(76, 2, 1, 'hello ', '2024-08-05 12:29:43'),
(77, 1, 6, 'iam hussein', '2024-08-08 03:29:00'),
(78, 1, 2, 'hi', '2024-08-08 03:29:14'),
(79, 1, 6, 'hi', '2024-08-08 03:31:08'),
(80, 1, 6, 'iam hussein sender', '2024-08-08 03:31:19'),
(81, 6, 1, 'iam ali zreik sender', '2024-08-08 03:32:29'),
(82, 1, 2, 'k', '2024-08-08 09:47:39'),
(83, 1, 2, 'to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 Edit Edit Copy Copy Delete Delete 22 1 6 ... 2024-08-02 23:07:28 Edit Edit Copy Copy Delete Delete 23 1 6 head 2024-08-02 23:07:35 Edit Edit Copy Copy Delete Delete 24 6 1 skcsssssssssssssssssssssssssssssssssssssssssssssss... 2024-08-02 23:21:23 Edit Edit Copy Copy Delete Delete 25 6 1 iam hussein 2024-08-02 23:22:41 Edit Edit Copy Copy Delete Delete 26 1 6 ffffffffffffffffffffffffffffffffffffffffffffffffff... 2024-08-02 23:23:09 Edit Edit Copy Copy Delete Delete 27 1 2 to z 2024-08-02 23:31:49 اث hi how are you hi hello h to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 E', '2024-08-08 09:48:07'),
(84, 7, 1, 'hello iam mhmd', '2024-08-08 10:00:11'),
(85, 1, 7, 'hello iam hussein', '2024-08-08 10:00:41'),
(86, 7, 1, 'hhhh', '2024-08-08 10:06:33'),
(87, 1, 2, 'ok', '2024-08-09 22:48:48'),
(88, 1, 2, 'to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 Edit Edit Copy Copy Delete Delete 22 1 6 ... 2024-08-02 23:07:28 Edit Edit Copy Copy Delete Delete 23 1 6 head 2024-08-02 23:07:35 Edit Edit Copy Copy Delete Delete 24 6 1 skcsssssssssssssssssssssssssssssssssssssssssssssss... 2024-08-02 23:21:23 Edit Edit Copy Copy Delete Delete 25 6 1 iam hussein 2024-08-02 23:22:41 Edit Edit Copy Copy Delete Delete 26 1 6 ffffffffffffffffffffffffffffffffffffffffffffffffff... 2024-08-02 23:23:09 Edit Edit Copy Copy Delete Delete 27 1 2 to z 2024-08-02 23:31:49 اث hi how are you hi hello h to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 E', '2024-08-09 22:49:07'),
(89, 1, 2, 'https://otaku-gate.com/watch-anime?anime_name=Naruto%20Shippuden&ep_num=137&ep_id=2530&anime_id=118', '2024-08-09 22:49:24'),
(90, 1, 6, 'iam hussein send to ali zreik', '2024-08-09 22:52:16'),
(91, 1, 2, 'to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 Edit Edit Copy Copy Delete Delete 22 1 6 ... 2024-08-02 23:07:28 Edit Edit Copy Copy Delete Delete 23 1 6 head 2024-08-02 23:07:35 Edit Edit Copy Copy Delete Delete 24 6 1 skcsssssssssssssssssssssssssssssssssssssssssssssss... 2024-08-02 23:21:23 Edit Edit Copy Copy Delete Delete 25 6 1 iam hussein 2024-08-02 23:22:41 Edit Edit Copy Copy Delete Delete 26 1 6 ffffffffffffffffffffffffffffffffffffffffffffffffff... 2024-08-02 23:23:09 Edit Edit Copy Copy Delete Delete 27 1 2 to z 2024-08-02 23:31:49 اث hi how are you hi hello h to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 E', '2024-08-10 10:41:25'),
(92, 1, 2, 'to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 Edit Edit Copy Copy Delete Delete 22 1 6 ... 2024-08-02 23:07:28 Edit Edit Copy Copy Delete Delete 23 1 6 head 2024-08-02 23:07:35 Edit Edit Copy Copy Delete Delete 24 6 1 skcsssssssssssssssssssssssssssssssssssssssssssssss... 2024-08-02 23:21:23 Edit Edit Copy Copy Delete Delete 25 6 1 iam hussein 2024-08-02 23:22:41 Edit Edit Copy Copy Delete Delete 26 1 6 ffffffffffffffffffffffffffffffffffffffffffffffffff... 2024-08-02 23:23:09 Edit Edit Copy Copy Delete Delete 27 1 2 to z 2024-08-02 23:31:49 اث hi how are you hi hello h to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 E', '2024-08-10 10:41:45'),
(93, 1, 2, 'to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 Edit Edit Copy Copy Delete Delete 22 1 6 ... 2024-08-02 23:07:28 Edit Edit Copy Copy Delete Delete 23 1 6 head 2024-08-02 23:07:35 Edit Edit Copy Copy Delete Delete 24 6 1 skcsssssssssssssssssssssssssssssssssssssssssssssss... 2024-08-02 23:21:23 Edit Edit Copy Copy Delete Delete 25 6 1 iam hussein 2024-08-02 23:22:41 Edit Edit Copy Copy Delete Delete 26 1 6 ffffffffffffffffffffffffffffffffffffffffffffffffff... 2024-08-02 23:23:09 Edit Edit Copy Copy Delete Delete 27 1 2 to z 2024-08-02 23:31:49 اث hi how are you hi hello h to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 E', '2024-08-10 10:42:12'),
(94, 1, 7, 'to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 Edit Edit Copy Copy Delete Delete 22 1 6 ... 2024-08-02 23:07:28 Edit Edit Copy Copy Delete Delete 23 1 6 head 2024-08-02 23:07:35 Edit Edit Copy Copy Delete Delete 24 6 1 skcsssssssssssssssssssssssssssssssssssssssssssssss... 2024-08-02 23:21:23 Edit Edit Copy Copy Delete Delete 25 6 1 iam hussein 2024-08-02 23:22:41 Edit Edit Copy Copy Delete Delete 26 1 6 ffffffffffffffffffffffffffffffffffffffffffffffffff... 2024-08-02 23:23:09 Edit Edit Copy Copy Delete Delete 27 1 2 to z 2024-08-02 23:31:49 اث hi how are you hi hello h to z iam sender hussein iam z hello how are you hi iam fine hello hi how iam z send to hussein message iam hussein send to z message hi hi iam hussei 2024-08-02 23:00:07 Edit Edit Copy Copy Delete Delete 21 1 6 ... 2024-08-02 23:07:21 E', '2024-08-10 11:54:21'),
(95, 7, 1, 'h', '2024-08-11 13:53:19'),
(96, 7, 1, '           ', '2024-08-12 19:46:47'),
(97, 1, 2, 'hjhhjjhjhjh', '2024-10-28 09:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `whatsappuser`
--

CREATE TABLE `whatsappuser` (
  `userid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dateofregester` datetime NOT NULL DEFAULT current_timestamp(),
  `userimage` varchar(200) NOT NULL,
  `lastactivity` datetime NOT NULL DEFAULT current_timestamp(),
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `whatsappuser`
--

INSERT INTO `whatsappuser` (`userid`, `username`, `email`, `password`, `dateofregester`, `userimage`, `lastactivity`, `description`) VALUES
(1, 'hussein', 'hussein@gmail.com', '1234567890', '2024-07-11 16:04:19', 'hussein.jpg', '2024-07-11 16:04:19', ''),
(2, 'z', 'cscscscs@gmail.com', '123', '2024-07-11 16:08:19', 'profile.png', '2024-07-11 16:08:19', 'iam hussein'),
(6, 'alizreik', 'alizreik@gmail.com', '1234567890', '2024-07-12 15:15:40', 'user.png', '2024-07-12 15:15:40', 'no'),
(7, 'mhmd', 'h12345@gmail.com', '1234567890', '2024-08-08 09:51:41', 'assassins-creed-mirage.jpg', '2024-08-08 09:51:41', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friendrequest`
--
ALTER TABLE `friendrequest`
  ADD PRIMARY KEY (`friendrequestid`),
  ADD KEY `fk_senderid` (`senderid`),
  ADD KEY `fk_requestid` (`requestid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `whatsappuser`
--
ALTER TABLE `whatsappuser`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friendrequest`
--
ALTER TABLE `friendrequest`
  MODIFY `friendrequestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `whatsappuser`
--
ALTER TABLE `whatsappuser`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friendrequest`
--
ALTER TABLE `friendrequest`
  ADD CONSTRAINT `fk_requestid` FOREIGN KEY (`requestid`) REFERENCES `whatsappuser` (`userid`),
  ADD CONSTRAINT `fk_senderid` FOREIGN KEY (`senderid`) REFERENCES `whatsappuser` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
