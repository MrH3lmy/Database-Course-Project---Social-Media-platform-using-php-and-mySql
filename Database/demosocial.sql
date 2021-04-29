-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 01:37 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demosocial`
--

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(2, 'ahmed_hassan', 29),
(3, 'ahmed_hassan', 30),
(4, 'sara_ahmed', 30),
(5, 'sara_ahmed', 29),
(6, 'ahmed_hassan', 37),
(7, 'ahmed_hassan', 36),
(8, 'ahmed_hassan', 53),
(9, 'ahmed_hassan', 57),
(10, 'ahmed_hassan', 65),
(11, 'sara_ahmed', 65),
(13, 'ali_ashraf', 65),
(14, 'adel_shakal', 64),
(15, 'sara_ahmed', 64),
(16, 'ahmed_hassan', 64),
(17, 'ali_ashraf', 64),
(18, 'mundi_shakal', 66),
(19, 'mundi_shakal', 64),
(20, 'adel_shakal', 74),
(23, 'adel_shakal', 65),
(26, 'adel_shakal', 66),
(29, 'ahmed_helmy', 95),
(30, 'mohamed_alaa', 86),
(31, 'ahmed_helmy', 86),
(32, 'alia_saad', 86);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'sara_ahmed', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=29', '2020-05-15 22:37:59', 'yes', 'yes'),
(2, 'ahmed_hassan', 'sara_ahmed', 'Sara Ahmed liked your post', 'post.php?id=30', '2020-05-15 22:38:12', 'yes', 'yes'),
(3, 'ahmed_hassan', 'ali_ashraf', 'Ali Ashraf liked your post', 'post.php?id=31', '2020-05-16 10:43:30', 'yes', 'yes'),
(4, 'sara_ahmed', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=57', '2020-05-16 14:23:27', 'yes', 'yes'),
(5, 'sara_ahmed', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=65', '2020-05-16 21:28:38', 'no', 'yes'),
(6, 'sara_ahmed', 'adel_shakal', 'Adel Shakal liked your post', 'post.php?id=65', '2020-05-16 21:29:01', 'no', 'yes'),
(7, 'sara_ahmed', 'ali_ashraf', 'Ali Ashraf liked your post', 'post.php?id=65', '2020-05-16 21:29:09', 'no', 'yes'),
(8, 'adel_shakal', 'sara_ahmed', 'Sara Ahmed liked your post', 'post.php?id=64', '2020-05-16 21:29:37', 'no', 'yes'),
(9, 'adel_shakal', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=64', '2020-05-16 21:29:48', 'no', 'yes'),
(10, 'adel_shakal', 'ali_ashraf', 'Ali Ashraf liked your post', 'post.php?id=64', '2020-05-16 21:30:11', 'no', 'yes'),
(11, 'adel_shakal', 'mundi_shakal', 'Mundi Shakal liked your post', 'post.php?id=66', '2020-05-16 21:39:53', 'no', 'yes'),
(12, 'adel_shakal', 'mundi_shakal', 'Mundi Shakal liked your post', 'post.php?id=64', '2020-05-16 21:39:55', 'no', 'yes'),
(13, 'sara_ahmed', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=68', '2020-05-17 09:52:15', 'no', 'yes'),
(14, 'sara_ahmed', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=69', '2020-05-17 09:53:18', 'no', 'yes'),
(15, 'adel_shakal', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=70', '2020-05-17 09:54:38', 'no', 'yes'),
(16, 'adel_shakal', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=71', '2020-05-17 09:56:30', 'no', 'yes'),
(17, 'sara_ahmed', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=72', '2020-05-17 09:56:49', 'no', 'yes'),
(18, 'sara_ahmed', 'ahmed_hassan', 'Ahmed Hassan liked your post', 'post.php?id=73', '2020-05-17 10:00:23', 'no', 'yes'),
(19, 'ahmed_hassan', 'adel_shakal', 'Adel Shakal liked your post', 'post.php?id=74', '2020-05-17 11:03:24', 'yes', 'yes'),
(20, 'sara_ahmed', 'adel_shakal', 'Adel Shakal liked your post', 'post.php?id=65', '2020-05-17 11:29:46', 'no', 'yes'),
(21, 'alia_saad', 'ahmed_helmy', 'Ahmed Helmy liked your post', 'post.php?id=94', '2020-05-17 12:07:28', 'no', 'yes'),
(22, 'ahmed_helmy', 'alia_saad', 'Alia Saad liked your post', 'post.php?id=95', '2020-05-17 12:27:26', 'no', 'yes'),
(23, 'alia_saad', 'ahmed_helmy', 'Ahmed Helmy liked your post', 'post.php?id=95', '2020-05-17 12:27:49', 'no', 'yes'),
(24, 'lena_alaa', 'mohamed_alaa', 'Mohamed Alaa liked your post', 'post.php?id=97', '2020-05-17 12:31:16', 'no', 'no'),
(25, 'alia_saad', 'mohamed_alaa', 'Mohamed Alaa liked your post', 'post.php?id=86', '2020-05-17 12:32:13', 'no', 'yes'),
(26, 'alia_saad', 'ahmed_helmy', 'Ahmed Helmy liked your post', 'post.php?id=86', '2020-05-17 12:32:21', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `photo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `photo`) VALUES
(86, 'Hello everybody ', 'alia_saad', 'none', '2020-05-13 12:04:21', 'no', 'no', 3, 'posts/post1.jpg'),
(93, 'I am a bit sad today ', 'alia_saad', 'none', '2020-05-16 12:06:41', 'no', 'no', 0, 'posts/post4.jpg'),
(94, 'what\'s wrong ?!!', 'ahmed_helmy', 'alia_saad', '2020-05-17 12:07:28', 'no', 'no', 0, 'posts/'),
(95, 'Hii', 'alia_saad', 'ahmed_helmy', '2020-05-17 12:27:25', 'no', 'no', 1, 'posts/'),
(96, 'Hello everyone', 'lena_alaa', 'none', '2020-05-17 12:30:11', 'no', 'no', 0, 'posts/post10.jpg'),
(97, 'Hiii Lena', 'mohamed_alaa', 'lena_alaa', '2020-05-17 12:31:16', 'no', 'no', 0, 'posts/');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `home` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`, `gender`, `date`, `home`, `phone`, `status`) VALUES
(6, 'Ahmed', 'Helmy', 'ahmed_helmy', 'Ahmed@yahoo.com', '670b14728ad9902aecba32e22fa4f6bd', '2020-05-15', 'profilePicture/boy1.jpg', 35, 6, 'no', ',ali_ashraf,adel_shakal,sara_ahmed,aber_ahmed,mohamed_alaa,', 'Male', '0000-00-00', 'abc', '01144444444', 'Engaged'),
(7, 'Aber', 'Ahmed', 'aber_ahmed', 'aber@yahoo.com', '670b14728ad9902aecba32e22fa4f6bd', '2020-05-15', 'profilePicture/girl1.jpg', 4, 7, 'no', ',ali_ashraf,adel_shakal,ahmed_hassan,ahmed_helmy,', 'Female', '0000-00-00', 'def', '01222222', 'Single'),
(10, 'Ali', 'Ashraf', 'ali_ashraf', 'Ali@yahoo.com', '670b14728ad9902aecba32e22fa4f6bd', '2020-05-15', 'profilePicture/boy2.jpg', 5, 0, 'no', ',sara_ahmed,ahmed_hassan,', 'Male', '2020-05-25', 'xyz', '01144444444', 'Single'),
(11, 'Alia', 'Saad', 'alia_saad', 'Alia@yahoo.com', '670b14728ad9902aecba32e22fa4f6bd', '2020-05-16', 'profilePicture/girl2.jpg', 22, 11, 'no', ',ahmed_hassan,sara_ahmed,mundi_shakal,mohamed_alaa,lena_alaa,', 'Male', '2020-05-21', 'alhadara', '0101111002', 'Married'),
(12, 'Hend', 'Mahmoud', 'hend_shakal', 'Hend@yahoo.com', '670b14728ad9902aecba32e22fa4f6bd', '2020-05-16', 'profilePicture/girl3.jpg', 1, 0, 'no', ',adel_shakal,', 'Male', '2020-05-26', 'egypt', '0123', 'Single'),
(13, 'Mohamed', 'Alaa', 'mohamed_alaa', 'Mohamed@yahoo.com', '670b14728ad9902aecba32e22fa4f6bd', '2020-05-17', 'profilePicture/smileBoy9.jpg', 1, 0, 'no', ',lena_alaa,ahmed_helmy,alia_saad,', 'Male', '2020-05-19', 'America', '0123456', 'Single'),
(14, 'Lena', 'Alaa', 'lena_alaa', 'Lena@yahoo.com', '670b14728ad9902aecba32e22fa4f6bd', '2020-05-17', 'profilePicture/post12.jpg', 1, 0, 'no', ',mohamed_alaa,alia_saad,', 'Male', '2020-05-27', 'America', '0109874512', 'Single');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
