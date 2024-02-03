-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2024 at 12:03 AM
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
-- Database: `db_truyentranh`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `year_of_birth` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `name`, `year_of_birth`) VALUES
(1, 'Không xác định', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `category_default_list`
--

CREATE TABLE `category_default_list` (
  `category_id` int(4) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL DEFAULT 'Chưa có thông tin cho thể loại truyện này :('
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category_default_list`
--

INSERT INTO `category_default_list` (`category_id`, `slug`, `name`, `description`) VALUES
(353, 'trinh-th-m', 'Trinh Thám', 'Truyện chuyện về những vụ án'),
(354, 'ghfdsh', 'ghfdsh', 'hgfdh'),
(355, 'hgfdh', 'hgfdh', 'hgfdg'),
(356, 'hgfdhgf', 'hgfdhgf', 'hgfdhgf'),
(357, 'hgfdhgfh', 'hgfdhgfh', 'hgfdhgdf'),
(358, 'hgfdhgfdh', 'hgfdhgfdh', 'hgfdhdfg'),
(360, 'tretyre', 'tretyre', 'trewtre'),
(361, 'ytreyrt', 'ytreyrt', 'uyuyu'),
(362, 'wterwt', 'wterwt', 'hgfsdh'),
(363, 'hgfdhjgf', 'hgfdhjgf', 'ytrewy'),
(364, 'yutuiyr', 'yutuiyr', 'iuyiu'),
(365, 'oiuoioi', 'oiuoioi', 'poipoi'),
(366, 'oiuto', 'oiuto', 'hgfj'),
(367, 'j', 'j', 'gj'),
(368, 'hgf', 'hgf', 'k'),
(369, 'ri', 'ri', 'ri'),
(370, 'uyr', 'uyr', 'uyt'),
(371, 'uiy', 'uiy', 'u'),
(372, '-iuytriuyr', 'ỷiuytriuyr', 'i'),
(378, 'gfd', 'gfd', 'gfd');

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `chapter_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `comic_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapter_data`
--

CREATE TABLE `chapter_data` (
  `data_id` int(11) NOT NULL,
  `chapter_id` int(10) NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comics`
--

CREATE TABLE `comics` (
  `comic_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `other_name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `upload_by` int(11) NOT NULL,
  `status_id` int(1) NOT NULL,
  `author_id` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `comics`
--

INSERT INTO `comics` (`comic_id`, `name`, `other_name`, `slug`, `upload_by`, `status_id`, `author_id`, `description`, `created_at`, `updated_at`) VALUES
(54, 'gfdsgfds', 'gfd', 'gfdsgfds', 3231, 1, 1, 'gfdgfd', '2024-02-03 22:38:46', '2024-02-03 22:38:46'),
(55, 'hgfhg', 'hgf', 'hgfhg', 3231, 1, 1, 'hgfhgfh', '2024-02-03 22:43:32', '2024-02-03 22:43:32'),
(56, '543', '543', '543', 3231, 1, 1, '5435', '2024-02-03 22:46:43', '2024-02-03 22:46:43'),
(57, '543', '543', '543', 3231, 1, 1, '5435', '2024-02-03 22:48:07', '2024-02-03 22:48:07'),
(58, 'gfdsg', 'gfdsg', 'gfdsg', 3231, 1, 1, 'fgdsgf', '2024-02-03 22:48:12', '2024-02-03 22:48:12'),
(59, '5643', '6546', '5643', 3231, 1, 1, '6546', '2024-02-03 22:51:20', '2024-02-03 22:51:20'),
(60, 'BÁC SĨ TƯ NHÂN XIN TỪ CHỨC', 'Bác Sĩ Hoàn Thành Trách Nhiệm Rồi, Giờ Thì Nghỉ Việc Thôi; Bác Sĩ Hoàn Thành Trách Nhiệm Rồi', 'b-c-s-t-nh-n-xin-t-ch-c', 3231, 2, 1, 'Khi công tước, người đang trong tình trạng tồi tệ, đột ngột qua đời, vùng đất này đã rơi vào tay của quân phản loạn. Trong một thời gian ngắn, cuộc nổi loạn đã bị hoàng thất đàn áp, nhưng…\r\nVấn đề là tôi, Lise Estelle, sẽ bị treo cổ vì tội phản loạn.\r\n“Th', '2024-02-03 22:58:33', '2024-02-03 22:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `comic_category`
--

CREATE TABLE `comic_category` (
  `comic_id` int(10) NOT NULL,
  `category_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comic_category`
--

INSERT INTO `comic_category` (`comic_id`, `category_id`) VALUES
(58, 378),
(60, 353);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `comic_id` int(10) NOT NULL,
  `content` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permisions`
--

CREATE TABLE `permisions` (
  `permision_id` int(3) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_default_list`
--

CREATE TABLE `role_default_list` (
  `role_id` int(1) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role_default_list`
--

INSERT INTO `role_default_list` (`role_id`, `code`, `name`) VALUES
(0, 'MEM', 'Thanh Vien'),
(1, 'SUP', 'Giam Sat'),
(9, 'DEV', 'Nha Phat Trien');

-- --------------------------------------------------------

--
-- Table structure for table `status_default_list`
--

CREATE TABLE `status_default_list` (
  `status_id` int(1) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `status_default_list`
--

INSERT INTO `status_default_list` (`status_id`, `name`) VALUES
(1, 'Hoàn tất'),
(2, 'Đang tiến hành');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `hashed_password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `middle_name`, `last_name`, `username`, `role_id`, `hashed_password`, `created_at`, `updated_at`) VALUES
(3231, 'Le', 'Van', 'Loc', 'levanloc8112', 9, 'KEKEKE', '2024-02-03 20:13:16', '2024-02-03 20:13:16'),
(3232, '', NULL, '', '', 0, '', '2024-02-03 20:13:16', '2024-02-03 20:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_permisions`
--

CREATE TABLE `user_permisions` (
  `permision_id` int(3) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `category_default_list`
--
ALTER TABLE `category_default_list`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`chapter_id`),
  ADD KEY `chapters_FK` (`comic_id`);

--
-- Indexes for table `chapter_data`
--
ALTER TABLE `chapter_data`
  ADD PRIMARY KEY (`data_id`),
  ADD KEY `chapter_data_FK` (`chapter_id`);

--
-- Indexes for table `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`comic_id`),
  ADD KEY `comics_FK` (`upload_by`),
  ADD KEY `comics_FK_status` (`status_id`),
  ADD KEY `comics_FK_author` (`author_id`);

--
-- Indexes for table `comic_category`
--
ALTER TABLE `comic_category`
  ADD PRIMARY KEY (`comic_id`,`category_id`),
  ADD KEY `fk_cat` (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_FK_comics` (`comic_id`),
  ADD KEY `comments_FK_users` (`user_id`);

--
-- Indexes for table `permisions`
--
ALTER TABLE `permisions`
  ADD PRIMARY KEY (`permision_id`);

--
-- Indexes for table `role_default_list`
--
ALTER TABLE `role_default_list`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `status_default_list`
--
ALTER TABLE `status_default_list`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_unique` (`username`) USING BTREE,
  ADD KEY `users_FK_role` (`role_id`);

--
-- Indexes for table `user_permisions`
--
ALTER TABLE `user_permisions`
  ADD PRIMARY KEY (`permision_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_default_list`
--
ALTER TABLE `category_default_list`
  MODIFY `category_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `chapter_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapter_data`
--
ALTER TABLE `chapter_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comics`
--
ALTER TABLE `comics`
  MODIFY `comic_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_default_list`
--
ALTER TABLE `status_default_list`
  MODIFY `status_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3234;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_FK` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`comic_id`);

--
-- Constraints for table `chapter_data`
--
ALTER TABLE `chapter_data`
  ADD CONSTRAINT `chapter_data_FK` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`chapter_id`);

--
-- Constraints for table `comics`
--
ALTER TABLE `comics`
  ADD CONSTRAINT `comics_FK` FOREIGN KEY (`upload_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `comics_FK_author` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`),
  ADD CONSTRAINT `comics_FK_status` FOREIGN KEY (`status_id`) REFERENCES `status_default_list` (`status_id`);

--
-- Constraints for table `comic_category`
--
ALTER TABLE `comic_category`
  ADD CONSTRAINT `fk_cat` FOREIGN KEY (`category_id`) REFERENCES `category_default_list` (`category_id`),
  ADD CONSTRAINT `fk_comic` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`comic_id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_FK_comics` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`comic_id`),
  ADD CONSTRAINT `comments_FK_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_FK_role` FOREIGN KEY (`role_id`) REFERENCES `role_default_list` (`role_id`);

--
-- Constraints for table `user_permisions`
--
ALTER TABLE `user_permisions`
  ADD CONSTRAINT `user_permisions_ibfk_1` FOREIGN KEY (`permision_id`) REFERENCES `permisions` (`permision_id`),
  ADD CONSTRAINT `user_permisions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
