-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 02:49 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codementor`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_title` text NOT NULL,
  `blog_text` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_title`, `blog_text`) VALUES
(27, '5th blog coming up', 'apdi pode chumma de'),
(31, 'new blog comnig assjvbwjf', 'asdwefqgdvsdvregrfgegetg'),
(32, 'TITLE', 'BLOG CONTENT'),
(33, 'this is new blog woth edited text', ''),
(34, 'this is new one', '<p><strong>this is bold text</strong></p>\r\n\r\n<p><em>this is italic text</em></p>\r\n\r\n<p><s>this is scribbled text</s></p>'),
(35, 'new title', '<p>new text</p>');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(26, 6, '2020-07-09 08:13:09', 'no'),
(27, 7, '2020-07-09 08:15:22', 'no'),
(28, 6, '2020-07-09 11:20:59', 'no'),
(29, 6, '2020-07-09 11:23:04', 'no'),
(30, 7, '2020-07-09 11:24:59', 'no'),
(31, 5, '2020-07-09 11:28:31', 'no'),
(32, 6, '2020-07-09 11:41:25', 'no'),
(33, 6, '2020-07-09 11:38:24', 'no'),
(34, 6, '2020-07-09 11:39:38', 'no'),
(35, 7, '2020-07-09 11:50:48', 'no'),
(36, 6, '2020-07-09 11:48:58', 'no'),
(37, 6, '2020-07-09 11:54:45', 'no'),
(38, 7, '2020-07-09 11:54:02', 'no'),
(39, 8, '2020-07-09 12:49:30', 'no'),
(40, 7, '2020-07-09 12:36:40', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `student_user`
--

CREATE TABLE `student_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_profile_photo` blob NOT NULL,
  `user_pass` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `forgotten_answer` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_status` varchar(10) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `student_user`
--

INSERT INTO `student_user` (`user_id`, `user_name`, `user_email`, `user_profile_photo`, `user_pass`, `forgotten_answer`, `user_status`) VALUES
(8, 'sss', 's@s.s', 0x696d616765732f70726f66696c6550686f746f2e6a7067, 'sss', '', 'ONLINE'),
(10, 'pranav', 'p@p.p', 0x696d616765732f70726f66696c6550686f746f2e6a7067, 'ppp', 'amanda', ''),
(11, 'ramesh', 'r@r.r', 0x696d616765732f70726f66696c6550686f746f2e6a7067, 'ramesh', 'myself', 'ONLINE');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_user`
--

CREATE TABLE `teacher_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_profile_photo` blob NOT NULL,
  `user_pass` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `forgotten_answer` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `user_status` varchar(10) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `teacher_user`
--

INSERT INTO `teacher_user` (`user_id`, `user_name`, `user_email`, `user_profile_photo`, `user_pass`, `forgotten_answer`, `user_status`) VALUES
(1, 'PranavKurkure', 'pranav@pranav.com', 0x696d616765732f70726f66696c6550686f746f2e6a7067, '12345678987456321', '', 'ONLINE'),
(2, 'xyzxyz', 'xyz@xyz.com', 0x696d616765732f70726f66696c6550686f746f2e6a7067, '123456789', '', 'ONLINE'),
(3, 'aaa', 'a@a.a', '', 'aaaaaaaaa', '', 'ONLINE'),
(4, 'bbbbbb', 'b@b.b', '', 'bbbbbbbbb', '', ''),
(5, 'sss', 's@s.com', '', 'sssssssss', '', 'ONLINE'),
(6, 'ttt', 't@t.t', 0x2470726f66696c655f706963, 'ttt', 'ttt', 'ONLINE'),
(7, 'shlok', 'someone@site.com', 0x2470726f66696c655f706963, 'password', '', 'ONLINE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `student_user`
--
ALTER TABLE `student_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `teacher_user`
--
ALTER TABLE `teacher_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `student_user`
--
ALTER TABLE `student_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `teacher_user`
--
ALTER TABLE `teacher_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
