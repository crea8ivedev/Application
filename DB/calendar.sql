-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2017 at 03:18 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `color` varchar(30) NOT NULL,
  `user_id` int(10) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `color`, `user_id`, `photo`) VALUES
(6, 'ok3', '2017-03-07 00:00:00', '2017-03-08 00:00:00', '#000', 1, ''),
(7, 'ok4', '2017-03-09 00:00:00', '2017-03-10 00:00:00', '#000', 2, ''),
(8, 'ok4', '2017-03-10 00:00:00', '2017-03-11 00:00:00', '#FF0000', 2, ''),
(10, 'bu', '2017-03-02 00:00:00', '2017-03-03 00:00:00', '#FFD700', 0, ''),
(11, 'bu', '2017-03-09 00:00:00', '2017-03-10 00:00:00', '#FFD700', 0, ''),
(12, 'bu', '2017-03-09 00:00:00', '2017-03-10 00:00:00', '#40E0D0', 0, ''),
(13, '', '2017-03-09 00:00:00', '2017-03-10 00:00:00', '', 0, ''),
(14, 'ok no ', '2016-01-06 12:05:00', '2016-01-07 00:00:00', '', 0, ''),
(15, 'ok no ', '2016-01-06 00:00:00', '2016-01-07 00:00:00', '', 0, ''),
(16, 'rrerer', '2017-03-08 00:00:00', '2017-03-09 00:00:00', '#40E0D0', 0, ''),
(17, 'q', '2017-03-01 00:00:00', '2017-03-02 00:00:00', '#FF8C00', 0, ''),
(18, 'darshan', '2017-03-11 00:00:00', '2017-03-12 00:00:00', '#FFD700', 0, ''),
(19, 'adaasa', '2017-03-16 00:00:00', '2017-03-17 00:00:00', '#FF0000', 0, ''),
(20, 'asasa', '2017-03-16 00:00:00', '2017-03-17 00:00:00', '#40E0D0', 0, ''),
(21, 'done', '2017-03-11 00:00:00', '2017-03-12 00:00:00', '#008000', 0, ''),
(22, 'done', '2017-03-04 00:00:00', '2017-03-05 00:00:00', '#008000', 2, ''),
(23, 'by', '2017-03-06 00:00:00', '2017-03-07 00:00:00', '#FFD700', 2, ''),
(24, 'done by d66', '2017-03-04 00:00:00', '2017-03-05 00:00:00', '#008000', 3, ''),
(25, 'yo success', '2017-03-09 00:00:00', '2017-03-10 00:00:00', '#000', 3, ''),
(26, 'aa', '2017-03-02 00:00:00', '2017-03-03 00:00:00', '#40E0D0', 0, ''),
(27, 'sdsd', '2017-03-09 00:00:00', '2017-03-10 00:00:00', '#0071c5', 0, ''),
(28, 'aa', '2017-03-01 00:00:00', '2017-03-02 00:00:00', '#0071c5', 2, ''),
(29, 'ddddddd', '2017-03-16 00:00:00', '2017-03-17 00:00:00', '', 2, 'jack'),
(30, 'tetestaseasdf', '2017-03-18 00:00:00', '2017-03-19 00:00:00', '', 2, 'jack');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` enum('','facebook','google','twitter') COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
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
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
