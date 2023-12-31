-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2023 at 10:36 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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

-- --------------------------------------------------------

--
-- Table structure for table `category_default_list`
--

CREATE TABLE `category_default_list` (
  `category_id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
  `upload_by` int(11) NOT NULL,
  `status_id` int(1) NOT NULL,
  `author_id` int(10) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comic_category`
--

CREATE TABLE `comic_category` (
  `comic_id` int(11) NOT NULL,
  `category_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(6, ' Le ', ' Van ', ' Loc ', 'levanloc8112', 0, 'locdeptrai', '2023-12-23 21:05:47', '2023-12-23 21:05:47'),
(26, 'Le', 'Van', 'Loc', '<levanloc811></levanloc811>', 0, '$2y$10$iSUxXzLLCjyoiTmQahPDV.h0TMDwn0O2k9bpsJLWcKNYD6Hv/aUH2', '2023-12-31 19:41:21', '2023-12-31 19:41:21'),
(30, 'Le', 'Van', 'Loc', 'levanloc811', 0, '$2y$10$0IA80U5y1PwRJ3gUQKPHUeuERt.mORl0u4Uky7V5va3deD/KWBu.K', '2023-12-31 19:42:12', '2023-12-31 19:42:12'),
(54, 'Le', 'Van', 'Loc', 'levanloc8113', 0, '$2y$10$PEJ9uhtaaA3qYm1W94.vsOwJ3Ahoaa2GLDu2EcEccQSaJCrXkEvOi', '2023-12-31 19:53:25', '2023-12-31 19:53:25'),
(66, 'Le', 'Van', 'Loc', 'levanloc81134', 0, '$2y$10$Knzj33Yl2Mk54WU07fDW9Or/Qe6sqbAjYdF8F.ath9rtbnCpWTywK', '2023-12-31 19:53:41', '2023-12-31 19:53:41');

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
  ADD PRIMARY KEY (`category_id`);

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
  ADD KEY `comic_category_FK` (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_FK_comics` (`comic_id`),
  ADD KEY `comments_FK_users` (`user_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_default_list`
--
ALTER TABLE `category_default_list`
  MODIFY `category_id` int(4) NOT NULL AUTO_INCREMENT;

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
  MODIFY `comic_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_default_list`
--
ALTER TABLE `status_default_list`
  MODIFY `status_id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

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
  ADD CONSTRAINT `comic_category_FK` FOREIGN KEY (`category_id`) REFERENCES `category_default_list` (`category_id`),
  ADD CONSTRAINT `comic_category_FK_1` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`comic_id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
