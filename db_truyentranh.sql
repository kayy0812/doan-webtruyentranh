-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 31, 2024 lúc 01:44 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_truyentranh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `author_id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `year_of_birth` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_default_list`
--

CREATE TABLE `category_default_list` (
  `category_id` int(4) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL DEFAULT 'Chưa có thông tin cho thể loại truyện này :('
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category_default_list`
--

INSERT INTO `category_default_list` (`category_id`, `slug`, `name`, `description`) VALUES
(74, '-dsfads', 'àdsfads', 'Chưa có thông tin cho thể loại truyện này :('),
(75, 'fdsaff', 'fdsaff', 'Chưa có thông tin cho thể loại truyện này :('),
(76, '-dfdsafds', 'ádfdsafds', 'Chưa có thông tin cho thể loại truyện này :('),
(77, '-dsafdsaf', 'àdsafdsaf', 'Chưa có thông tin cho thể loại truyện này :('),
(78, '-dsafdsa', 'àdsafdsa', 'Chưa có thông tin cho thể loại truyện này :('),
(79, 'adfsfdsaf', 'adfsfdsaf', 'Chưa có thông tin cho thể loại truyện này :('),
(80, 'sdads', 'SDAds', 'Chưa có thông tin cho thể loại truyện này :('),
(81, 'rewqrew', 'rewqrew', 'Chưa có thông tin cho thể loại truyện này :('),
(115, 'rewrwe', 'rewrwe', 'Chưa có thông tin cho thể loại truyện này :('),
(117, 'rewrew', 'rewrew', 'Chưa có thông tin cho thể loại truyện này :('),
(119, 'gfdsgfdg', 'gfdsgfdg', 'Chưa có thông tin cho thể loại truyện này :('),
(279, 'fewfds', 'fewfds', 'Chưa có thông tin cho thể loại truyện này :('),
(282, 'vxcvcxvc', 'vxcvcxvc', 'Chưa có thông tin cho thể loại truyện này :('),
(305, 'hgfhfghfg', 'hgfhfghfg', 'Chưa có thông tin cho thể loại truyện này :('),
(320, 'jhgkjhgkjh', 'jhgkjhgkjh', 'Chưa có thông tin cho thể loại truyện này :('),
(322, 'hgfdhgf', 'hgfdhgf', 'Chưa có thông tin cho thể loại truyện này :('),
(323, 'bvcbvc', 'bvcbvc', 'Chưa có thông tin cho thể loại truyện này :('),
(324, 'tretre', 'tretre', 'Chưa có thông tin cho thể loại truyện này :('),
(325, 'mbnmnbm', 'mbnmnbm', 'Chưa có thông tin cho thể loại truyện này :('),
(326, 'bcvxbvcb', 'bcvxbvcb', 'Chưa có thông tin cho thể loại truyện này :('),
(327, 'nmnmnm', 'nmnmnm', 'Chưa có thông tin cho thể loại truyện này :('),
(328, 'fgbb', 'fgbb', 'Chưa có thông tin cho thể loại truyện này :('),
(329, 'ytryt', 'ytryt', 'Chưa có thông tin cho thể loại truyện này :('),
(330, 'jbvnfmn', 'jbvnfmn', 'Chưa có thông tin cho thể loại truyện này :('),
(331, 'yej', 'yej', 'Chưa có thông tin cho thể loại truyện này :('),
(332, 'kjhkfj', 'kjhkfj', 'Chưa có thông tin cho thể loại truyện này :('),
(333, 'dsfdsf', 'dsfdsf', 'Chưa có thông tin cho thể loại truyện này :('),
(336, 'bvcbvcb', 'bvcbvcb', 'Chưa có thông tin cho thể loại truyện này :('),
(340, 'fdsv', 'fdsv', 'Chưa có thông tin cho thể loại truyện này :('),
(353, 'trinh-th-m', 'Trinh Thám', 'Truyện chuyện về những vụ án');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapters`
--

CREATE TABLE `chapters` (
  `chapter_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `comic_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter_data`
--

CREATE TABLE `chapter_data` (
  `data_id` int(11) NOT NULL,
  `chapter_id` int(10) NOT NULL,
  `source` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comics`
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
-- Cấu trúc bảng cho bảng `comic_category`
--

CREATE TABLE `comic_category` (
  `comic_id` int(11) NOT NULL,
  `category_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
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
-- Cấu trúc bảng cho bảng `role_default_list`
--

CREATE TABLE `role_default_list` (
  `role_id` int(1) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role_default_list`
--

INSERT INTO `role_default_list` (`role_id`, `code`, `name`) VALUES
(0, 'MEM', 'Thanh Vien'),
(1, 'SUP', 'Giam Sat'),
(9, 'DEV', 'Nha Phat Trien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_default_list`
--

CREATE TABLE `status_default_list` (
  `status_id` int(1) NOT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Chỉ mục cho bảng `category_default_list`
--
ALTER TABLE `category_default_list`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`chapter_id`),
  ADD KEY `chapters_FK` (`comic_id`);

--
-- Chỉ mục cho bảng `chapter_data`
--
ALTER TABLE `chapter_data`
  ADD PRIMARY KEY (`data_id`),
  ADD KEY `chapter_data_FK` (`chapter_id`);

--
-- Chỉ mục cho bảng `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`comic_id`),
  ADD KEY `comics_FK` (`upload_by`),
  ADD KEY `comics_FK_status` (`status_id`),
  ADD KEY `comics_FK_author` (`author_id`);

--
-- Chỉ mục cho bảng `comic_category`
--
ALTER TABLE `comic_category`
  ADD KEY `comic_category_FK` (`category_id`),
  ADD KEY `comic_id` (`comic_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_FK_comics` (`comic_id`),
  ADD KEY `comments_FK_users` (`user_id`);

--
-- Chỉ mục cho bảng `role_default_list`
--
ALTER TABLE `role_default_list`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `status_default_list`
--
ALTER TABLE `status_default_list`
  ADD PRIMARY KEY (`status_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_unique` (`username`) USING BTREE,
  ADD KEY `users_FK_role` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category_default_list`
--
ALTER TABLE `category_default_list`
  MODIFY `category_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT cho bảng `chapters`
--
ALTER TABLE `chapters`
  MODIFY `chapter_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chapter_data`
--
ALTER TABLE `chapter_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comics`
--
ALTER TABLE `comics`
  MODIFY `comic_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `status_default_list`
--
ALTER TABLE `status_default_list`
  MODIFY `status_id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chapters`
--
ALTER TABLE `chapters`
  ADD CONSTRAINT `chapters_FK` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`comic_id`);

--
-- Các ràng buộc cho bảng `chapter_data`
--
ALTER TABLE `chapter_data`
  ADD CONSTRAINT `chapter_data_FK` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`chapter_id`);

--
-- Các ràng buộc cho bảng `comics`
--
ALTER TABLE `comics`
  ADD CONSTRAINT `comics_FK` FOREIGN KEY (`upload_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `comics_FK_author` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`),
  ADD CONSTRAINT `comics_FK_status` FOREIGN KEY (`status_id`) REFERENCES `status_default_list` (`status_id`);

--
-- Các ràng buộc cho bảng `comic_category`
--
ALTER TABLE `comic_category`
  ADD CONSTRAINT `comic_category_FK` FOREIGN KEY (`category_id`) REFERENCES `category_default_list` (`category_id`),
  ADD CONSTRAINT `comic_category_FK_1` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`comic_id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_FK_comics` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`comic_id`),
  ADD CONSTRAINT `comments_FK_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_FK_role` FOREIGN KEY (`role_id`) REFERENCES `role_default_list` (`role_id`),
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_permissions` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
