-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 06, 2024 lúc 08:36 PM
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

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`author_id`, `name`, `year_of_birth`) VALUES
(1, 'Không xác định', '0000');

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
(353, 'trinh-th-m', 'Trinh Thám', 'Truyện chuyện về những vụ án'),
(356, 'hgfdhgf', 'hgfdhgf', 'hgfdhgf'),
(357, 'hgfdhgfh', 'hgfdhgfh', 'hgfdhgdf'),
(358, 'hgfdhgfdh', 'hgfdhgfdh', 'hgfdhdfg'),
(378, 'gfd', 'gfd', 'gfd');

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
  `other_name` varchar(200) NOT NULL,
  `poster` varchar(50) NOT NULL DEFAULT 'public/img/image404.jpg',
  `slug` varchar(200) NOT NULL,
  `upload_by` int(11) NOT NULL,
  `status_id` int(1) NOT NULL,
  `author_id` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comics`
--

INSERT INTO `comics` (`comic_id`, `name`, `other_name`, `poster`, `slug`, `upload_by`, `status_id`, `author_id`, `description`, `created_at`, `updated_at`) VALUES
(54, 'gfdsgfds', 'gfd', 'public/img/image404.jpg', 'gfdsgfds', 3231, 1, 1, 'gfdgfd', '2024-02-03 22:38:46', '2024-02-03 22:38:46'),
(55, 'hgfhg', 'hgf', 'public/img/image404.jpg', 'hgfhg', 3231, 1, 1, 'hgfhgfh', '2024-02-03 22:43:32', '2024-02-03 22:43:32'),
(56, '543', '543', 'public/img/image404.jpg', '543', 3231, 1, 1, '5435', '2024-02-03 22:46:43', '2024-02-03 22:46:43'),
(57, '543', '543', 'public/img/image404.jpg', '543', 3231, 1, 1, '5435', '2024-02-03 22:48:07', '2024-02-03 22:48:07'),
(58, 'gfdsg', 'gfdsg', 'public/img/image404.jpg', 'gfdsg', 3231, 1, 1, 'fgdsgf', '2024-02-03 22:48:12', '2024-02-03 22:48:12'),
(59, '5643', '6546', 'public/img/image404.jpg', '5643', 3231, 1, 1, '6546', '2024-02-03 22:51:20', '2024-02-03 22:51:20'),
(60, 'BÁC SĨ TƯ NHÂN XIN TỪ CHỨC', 'Bác Sĩ Hoàn Thành Trách Nhiệm Rồi, Giờ Thì Nghỉ Việc Thôi; Bác Sĩ Hoàn Thành Trách Nhiệm Rồi', 'public/img/image404.jpg', 'b-c-s-t-nh-n-xin-t-ch-c', 3231, 2, 1, 'Khi công tước, người đang trong tình trạng tồi tệ, đột ngột qua đời, vùng đất này đã rơi vào tay của quân phản loạn. Trong một thời gian ngắn, cuộc nổi loạn đã bị hoàng thất đàn áp, nhưng…\r\nVấn đề là tôi, Lise Estelle, sẽ bị treo cổ vì tội phản loạn.\r\n“Th', '2024-02-03 22:58:33', '2024-02-03 22:58:33'),
(61, 'dfgfdsgf', 'hgdfshg', 'public/img/image404.jpg', 'dfgfdsgf', 3231, 1, 1, 'hgfdhgfd', '2024-02-06 18:00:38', '2024-02-06 18:00:38'),
(62, 'dfgfdsgf', 'vdvddv', 'https://i.imgur.com/q8BCQoN.jpg', 'dfgfdsgf', 3231, 1, 1, 'vdsv', '2024-02-06 19:22:31', '2024-02-06 19:22:31'),
(63, 'dfgfdsgf', 'hgdfshg', '', 'dfgfdsgf', 3231, 1, 1, 'sfdsfd', '2024-02-06 19:29:36', '2024-02-06 19:29:36'),
(64, 'hgf', 'hgfh', '', 'hgf', 3231, 1, 1, 'hgfh', '2024-02-06 19:31:00', '2024-02-06 19:31:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comic_category`
--

CREATE TABLE `comic_category` (
  `comic_id` int(10) NOT NULL,
  `category_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comic_category`
--

INSERT INTO `comic_category` (`comic_id`, `category_id`) VALUES
(58, 378),
(60, 353),
(61, 356),
(61, 357),
(61, 358),
(64, 378);

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
-- Cấu trúc bảng cho bảng `permisions`
--

CREATE TABLE `permisions` (
  `permision_id` int(3) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

--
-- Đang đổ dữ liệu cho bảng `status_default_list`
--

INSERT INTO `status_default_list` (`status_id`, `name`) VALUES
(1, 'Hoàn tất'),
(2, 'Đang tiến hành');

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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `middle_name`, `last_name`, `username`, `role_id`, `hashed_password`, `created_at`, `updated_at`) VALUES
(3231, 'Le', 'Van', 'Loc', 'levanloc8112', 9, 'KEKEKE', '2024-02-03 20:13:16', '2024-02-03 20:13:16'),
(3232, '', NULL, '', '', 0, '', '2024-02-03 20:13:16', '2024-02-03 20:13:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_permisions`
--

CREATE TABLE `user_permisions` (
  `permision_id` int(3) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD PRIMARY KEY (`comic_id`,`category_id`),
  ADD KEY `fk_cat` (`category_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comments_FK_comics` (`comic_id`),
  ADD KEY `comments_FK_users` (`user_id`);

--
-- Chỉ mục cho bảng `permisions`
--
ALTER TABLE `permisions`
  ADD PRIMARY KEY (`permision_id`);

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
-- Chỉ mục cho bảng `user_permisions`
--
ALTER TABLE `user_permisions`
  ADD PRIMARY KEY (`permision_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category_default_list`
--
ALTER TABLE `category_default_list`
  MODIFY `category_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

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
  MODIFY `comic_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `status_default_list`
--
ALTER TABLE `status_default_list`
  MODIFY `status_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3234;

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
  ADD CONSTRAINT `fk_cat` FOREIGN KEY (`category_id`) REFERENCES `category_default_list` (`category_id`),
  ADD CONSTRAINT `fk_comic` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`comic_id`);

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
  ADD CONSTRAINT `users_FK_role` FOREIGN KEY (`role_id`) REFERENCES `role_default_list` (`role_id`);

--
-- Các ràng buộc cho bảng `user_permisions`
--
ALTER TABLE `user_permisions`
  ADD CONSTRAINT `user_permisions_ibfk_1` FOREIGN KEY (`permision_id`) REFERENCES `permisions` (`permision_id`),
  ADD CONSTRAINT `user_permisions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
