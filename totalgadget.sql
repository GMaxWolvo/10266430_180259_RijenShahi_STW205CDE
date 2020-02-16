-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2020 at 07:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `totalgadget`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add recent gadgets', 7, 'add_recentgadgets'),
(26, 'Can change recent gadgets', 7, 'change_recentgadgets'),
(27, 'Can delete recent gadgets', 7, 'delete_recentgadgets'),
(28, 'Can view recent gadgets', 7, 'view_recentgadgets'),
(29, 'Can add review', 8, 'add_review'),
(30, 'Can change review', 8, 'change_review'),
(31, 'Can delete review', 8, 'delete_review'),
(32, 'Can view review', 8, 'view_review'),
(33, 'Can add reviews', 8, 'add_reviews'),
(34, 'Can change reviews', 8, 'change_reviews'),
(35, 'Can delete reviews', 8, 'delete_reviews'),
(36, 'Can view reviews', 8, 'view_reviews');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$nJDRzaQJ9EcE$V9PEdPlw8h5rVf/N8KcCWUKONQBhYXsun4mSGyop0qQ=', '2020-02-13 19:03:18.125105', 1, 'Rijen', '', '', 'hrizexshahi@gmail.com', 1, 1, '2020-02-08 07:34:15.442106'),
(4, 'pbkdf2_sha256$180000$F84AxL8OltbY$zEoafbeCdu6Pa2Rh/5wmsUXxarVe14xWDBOeatIRPdM=', NULL, 0, 'orange', '', '', 'orange@gmail.com', 0, 1, '2020-02-10 05:50:47.507178'),
(6, 'pbkdf2_sha256$180000$HPhJdkqfK5jD$pKznBlqb+FF+H9eW7k2STflZyaFUFJbOAD7aC8RIyec=', '2020-02-10 19:43:04.985900', 0, 'rijen555', '', '', 'hrizexshahi55@gmail.com', 0, 1, '2020-02-10 08:04:55.918802'),
(7, 'pbkdf2_sha256$180000$4hv9kzFdOSPI$iZjYpzDnEyuLEGwn8p+r8mbf9v0wOgDo4B7JvJbTNaw=', '2020-02-10 21:23:23.401483', 0, 'apple', '', '', 'apple@gmail.com', 0, 1, '2020-02-10 08:39:03.660177'),
(8, 'pbkdf2_sha256$180000$gfsOLLudroXF$yJOHw76wj5boysJqxWagtNtd53wjPHA/qIHJqMZkDzk=', '2020-02-13 19:04:56.792133', 0, 'Dikesh', '', '', 'dikesh@gmail.com', 0, 1, '2020-02-12 08:42:59.672427'),
(10, 'pbkdf2_sha256$180000$PmJGsrPfD4z9$9tByKCF5QMxsz0s5bzPtfQnMqsE0Ozt99sHIxk6P7dw=', '2020-02-13 08:47:50.609636', 0, 'game', '', '', 'game@gmail.com', 0, 1, '2020-02-12 08:45:14.475012'),
(11, 'pbkdf2_sha256$180000$LxPwRDlYI0Ic$xysf46efzEGA3Tb/syZGHL0h8t5pAJvZaACrKgA5syY=', '2020-02-13 18:58:09.469131', 0, 'Abhukar', '', '', 'abhukar@gmail.com', 0, 1, '2020-02-13 18:58:00.927633'),
(12, 'pbkdf2_sha256$180000$3dGpRZHBtH4J$J3qjcLeqFm2GijFaW4JgX727lyUNVzQN6ShNfZUZB8U=', '2020-02-14 14:22:46.050437', 0, 'Ashraya', '', '', 'ashraya@gmail.com', 0, 1, '2020-02-13 19:00:49.663741'),
(13, 'pbkdf2_sha256$180000$N6cBz4eITmY0$pLqSpr9SOGX5b40idAKB7TZXuokfpXCO3b5FQ6/iB0I=', '2020-02-13 19:06:04.034986', 0, 'Manish', '', '', 'manish@gmail.com', 0, 1, '2020-02-13 19:05:57.715075'),
(15, 'pbkdf2_sha256$180000$5PBRH3v7cIxz$0fnfd3lhOFiK6en67g2AfIK1enEkalJXIlohR8O+shQ=', '2020-02-13 19:10:05.112673', 0, 'Rojit', '', '', 'Rojit@gmail.com', 0, 1, '2020-02-13 19:09:58.823683');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-08 10:22:33.294090', '1', 'RecentGadgets object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-02-10 18:20:11.754740', '1', 'RecentGadgets object (1)', 3, '', 7, 1),
(3, '2020-02-10 18:21:01.205774', '2', 'RecentGadgets object (2)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2020-02-10 18:25:09.329046', '3', 'RecentGadgets object (3)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-02-12 04:35:13.556472', '4', 'GetX', 1, '[{\"added\": {}}]', 7, 1),
(6, '2020-02-13 18:29:46.099751', '4', 'GetX', 3, '', 7, 1),
(7, '2020-02-13 18:29:46.106734', '3', 'Prince of persia', 3, '', 7, 1),
(8, '2020-02-13 18:29:46.110723', '2', 'Dell', 3, '', 7, 1),
(9, '2020-02-13 18:44:30.681514', '5', 'Dell Alienware Area-51m:', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-02-13 18:45:22.864199', '6', 'Mi Smart Band 4:', 1, '[{\"added\": {}}]', 7, 1),
(11, '2020-02-13 18:46:11.520620', '7', 'XBox One X:', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-02-13 18:46:46.350287', '8', 'Microsoft Surface Laptop 2:', 1, '[{\"added\": {}}]', 7, 1),
(13, '2020-02-13 18:47:36.870623', '9', 'Nokia Power Earbuds:', 1, '[{\"added\": {}}]', 7, 1),
(14, '2020-02-13 18:50:01.867045', '10', 'OnePlus 7T Pro:', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'home', 'recentgadgets'),
(8, 'review', 'reviews'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-08 07:26:01.657921'),
(2, 'auth', '0001_initial', '2020-02-08 07:26:02.001918'),
(3, 'admin', '0001_initial', '2020-02-08 07:26:03.111363'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-08 07:26:03.330096'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-08 07:26:03.361294'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-08 07:26:03.564379'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-08 07:26:03.673719'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-08 07:26:03.704962'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-08 07:26:03.720897'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-08 07:26:03.799041'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-08 07:26:03.814628'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-08 07:26:03.830271'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-08 07:26:03.908358'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-08 07:26:03.939623'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-08 07:26:04.002090'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-08 07:26:04.033331'),
(17, 'sessions', '0001_initial', '2020-02-08 07:26:04.127054'),
(18, 'home', '0001_initial', '2020-02-08 10:09:36.895291'),
(19, 'home', '0002_auto_20200211_0003', '2020-02-10 18:19:08.944687'),
(20, 'review', '0001_initial', '2020-02-10 18:52:50.767420'),
(21, 'review', '0002_auto_20200211_0057', '2020-02-10 19:12:30.621398');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0d4vy503naeyts0v9ifupqzzi4b42901', 'OTkwMWEyMzI0MDFkZWViY2JmMWExYjIxNTZkYjFiYzM5MWEyZWVhZTp7fQ==', '2020-02-24 08:05:08.954199');

-- --------------------------------------------------------

--
-- Table structure for table `home_recentgadgets`
--

CREATE TABLE `home_recentgadgets` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_recentgadgets`
--

INSERT INTO `home_recentgadgets` (`id`, `img`, `name`, `desc`) VALUES
(5, '1.jfif', 'Dell Alienware Area-51m:', '9th Generation Intel® Core™ i7-9700, Windows 10 HomeNVIDIA®, GeForce GTX® 1660 Ti 6GB GDDR6, \r\n                            16GB, 2x8GB, DDR4, 2400MHz and 1TB (+8GB SSHD) Hybrid Drive'),
(6, '3.jfif', 'Mi Smart Band 4:', 'Weights 22.1g, 5ATM Water Resistance, Display Type - AMOLED, On-cell capacitive \r\n                                touchscreen, PPG heart rate sensor, Capacitive proximity sensor'),
(7, '4.jfif', 'XBox One X:', '8-core Jaguar \"Evolved\" CPU at 2.3GHz, 12GB of GDDR5 RAM, 40 CUs (1,172Mhz) 6 TF GPU, \r\n                                1TB, IR receiver/blaster, SPDIF digital audio, HDMI-in, HDMI-out, USB 3.0 , Ethernet, 4K UHD Blu Ray'),
(8, '5.jfif', 'Microsoft Surface Laptop 2:', '1920x1080 pixels, 8GB or 16GB RAM, Intel® Core™ 8th Gen i5 or i7, Intel® UHD Graphics 620 (i5/i7), \r\n                            Wi-Fi: IEEE 802.11 a/b/g/n/ac compatible, Bluetooth Wireless 4.1 technology'),
(9, '6.jfif', 'Nokia Power Earbuds:', '6mm graphene drivers, Universal Bluetooth 5.0, Voice assistant, Touch Controls, \r\n                                Waterproof, Earbuds: 25mm(L) x 23mm(W) x 23.8mm(D), 3000mAh battery, USB Type-C charging'),
(10, '2.jfif', 'OnePlus 7T Pro:', 'Performance	Snapdragon 855 Plus, Storage	256 GB, Camera	48MP + 16MP + 8MP, \r\n                                Battery	4085 mAh, Display	6.67\" (16.94 cm), Ram	8 GB');

-- --------------------------------------------------------

--
-- Table structure for table `review_reviews`
--

CREATE TABLE `review_reviews` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comments` longtext NOT NULL,
  `reviewedDate` date NOT NULL,
  `gadget_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_reviews`
--

INSERT INTO `review_reviews` (`id`, `email`, `comments`, `reviewedDate`, `gadget_id`, `user_id`) VALUES
(19, 'hrizexshahi@gmail.com', 'It is very powerful laptop. Every thing is awesome. Loved it.', '2020-02-14', 5, 1),
(20, 'abhukar@gmail.com', 'Health is first priority and having these smart gadgets in hand is another priority.', '2020-02-14', 6, 11),
(22, 'hrizexshahi@gmail.com', 'You will want one if you are a fan of light and clear device.', '2020-02-14', 8, 1),
(23, 'manish@gmail.com', 'These are my favourate air bud of them all.', '2020-02-14', 9, 13),
(24, 'rojit@gmail.com', 'I\'m still using this phone and upto date there is not even a single dissatisfaction.', '2020-02-14', 10, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_recentgadgets`
--
ALTER TABLE `home_recentgadgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_reviews`
--
ALTER TABLE `review_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_review_gadget_id_81f527c7_fk_home_recentgadgets_id` (`gadget_id`),
  ADD KEY `review_review_user_id_ff798828_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `home_recentgadgets`
--
ALTER TABLE `home_recentgadgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review_reviews`
--
ALTER TABLE `review_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `review_reviews`
--
ALTER TABLE `review_reviews`
  ADD CONSTRAINT `review_review_gadget_id_81f527c7_fk_home_recentgadgets_id` FOREIGN KEY (`gadget_id`) REFERENCES `home_recentgadgets` (`id`),
  ADD CONSTRAINT `review_review_user_id_ff798828_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
