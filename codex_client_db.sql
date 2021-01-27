-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 08:05 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codex_client_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add services', 7, 'add_services'),
(26, 'Can change services', 7, 'change_services'),
(27, 'Can delete services', 7, 'delete_services'),
(28, 'Can view services', 7, 'view_services'),
(29, 'Can add student', 9, 'add_student'),
(30, 'Can change student', 9, 'change_student'),
(31, 'Can delete student', 9, 'delete_student'),
(32, 'Can view student', 9, 'view_student'),
(33, 'Can add main services', 10, 'add_mainservices'),
(34, 'Can change main services', 10, 'change_mainservices'),
(35, 'Can delete main services', 10, 'delete_mainservices'),
(36, 'Can view main services', 10, 'view_mainservices'),
(37, 'Can add user data', 11, 'add_userdata'),
(38, 'Can change user data', 11, 'change_userdata'),
(39, 'Can delete user data', 11, 'delete_userdata'),
(40, 'Can view user data', 11, 'view_userdata');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$zNW4THTx98Cb$G7vu5Oq6laMPC+kjfEC7myNh6l3RwTEUnr+t6R8IDl0=', '2020-11-19 18:32:45.990621', 1, 'saad', '', '', '', 1, 1, '2020-11-07 07:36:35.003786'),
(2, 'pbkdf2_sha256$216000$RhA16EwlwmAp$6sRzsy8bw2FeFPnKy/TeduSBgxP/7LJePU0Yd3mmows=', NULL, 0, 'henil_shah', '', '', '', 0, 1, '2020-11-07 15:07:26.382858');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `codex_home_iosuserdata`
--

CREATE TABLE `codex_home_iosuserdata` (
  `id` int(11) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `wpnumber` varchar(12) NOT NULL,
  `budget` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `applications` varchar(150) NOT NULL,
  `create_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `codex_home_mainservices`
--

CREATE TABLE `codex_home_mainservices` (
  `id` int(11) NOT NULL,
  `services_name` varchar(100) NOT NULL,
  `import_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codex_home_mainservices`
--

INSERT INTO `codex_home_mainservices` (`id`, `services_name`, `import_image`) VALUES
(1, 'Android App Development', 'None/android_cDn7mwA.png');

-- --------------------------------------------------------

--
-- Table structure for table `codex_home_mobuserdata`
--

CREATE TABLE `codex_home_mobuserdata` (
  `id` int(11) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `wpnumber` varchar(12) NOT NULL,
  `budget` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `applications` varchar(150) NOT NULL,
  `create_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codex_home_mobuserdata`
--

INSERT INTO `codex_home_mobuserdata` (`id`, `uname`, `email`, `phone`, `wpnumber`, `budget`, `description`, `applications`, `create_at`) VALUES
(11, 'saadmansuri', 'saadmansuri249@gmail.com', '6353121872', '6352148797', '112000', 'yvgubhinj', 'MOBILE APP DEVELOPMENT', '2020-11-24 16:24:20.610558'),
(12, 'saadmansuri', 'rocksalman249@gmail.com', '6353121872', '6352148797', '168000', 'hello world', 'MOBILE APP DEVELOPMENT', '2020-11-24 18:26:43.703048');

-- --------------------------------------------------------

--
-- Table structure for table `codex_home_webuserdata`
--

CREATE TABLE `codex_home_webuserdata` (
  `id` int(11) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `wpnumber` varchar(12) NOT NULL,
  `budget` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `applications` varchar(150) NOT NULL,
  `create_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `codex_home_winuserdata`
--

CREATE TABLE `codex_home_winuserdata` (
  `id` int(11) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `wpnumber` varchar(12) NOT NULL,
  `budget` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `applications` varchar(150) NOT NULL,
  `create_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codex_home_winuserdata`
--

INSERT INTO `codex_home_winuserdata` (`id`, `uname`, `email`, `phone`, `wpnumber`, `budget`, `description`, `applications`, `create_at`) VALUES
(15, 'saadmansuri', 'saadmansuri249@gmail.com', '6353121872', '6352148797', '140000', 'vtbuinj', 'WINDOW APP DEVELOPMENT', '2020-11-25 12:43:57.078464');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-07 08:44:44.357395', '1', 'services object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-11-07 13:42:54.986228', '2', 'services object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-11-07 13:43:09.523071', '1', 'services object (1)', 2, '[]', 7, 1),
(4, '2020-11-07 13:43:22.507312', '3', 'services object (3)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2020-11-07 13:45:31.905045', '1', 'services object (1)', 3, '', 7, 1),
(6, '2020-11-07 13:46:01.416811', '4', 'services object (4)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-11-07 15:07:26.932534', '2', 'henil_shah', 1, '[{\"added\": {}}]', 4, 1),
(8, '2020-11-09 06:57:41.851685', '1', 'student object (1)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-11-09 07:07:49.190822', '5', 'services object (5)', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-11-09 07:08:19.846202', '2', 'student object (2)', 1, '[{\"added\": {}}]', 9, 1),
(11, '2020-11-09 07:36:57.742925', '3', 'student object (3)', 1, '[{\"added\": {}}]', 9, 1),
(12, '2020-11-09 07:37:26.276117', '6', 'services object (6)', 1, '[{\"added\": {}}]', 7, 1),
(13, '2020-11-09 07:53:28.157769', '1', 'MainServices object (1)', 1, '[{\"added\": {}}]', 10, 1),
(14, '2020-11-09 07:58:26.955226', '1', 'MainServices object (1)', 2, '[]', 10, 1),
(15, '2020-11-24 16:19:25.322449', '6', 'saadmansuri', 3, '', 13, 1),
(16, '2020-11-24 16:19:30.751267', '3', 'saadmansuri', 3, '', 13, 1),
(17, '2020-11-24 16:19:35.203324', '2', 'rocksalman', 3, '', 13, 1),
(18, '2020-11-24 16:19:40.660798', '1', 'saadmansuriiiiiiiiiiiiii', 3, '', 13, 1),
(19, '2020-11-24 16:22:20.346773', '8', 'saadmansuri', 3, '', 13, 1),
(20, '2020-11-24 16:24:02.556800', '10', 'saadmansuri', 3, '', 13, 1),
(21, '2020-11-24 16:51:23.025953', '33', 'saadmansuri', 3, '', 12, 1),
(22, '2020-11-24 16:51:23.146331', '31', 'saadmansuri', 3, '', 12, 1),
(23, '2020-11-24 16:51:23.273267', '30', 'saadmansuri', 3, '', 12, 1),
(24, '2020-11-24 16:51:23.329427', '29', 'saadmansuri', 3, '', 12, 1),
(25, '2020-11-24 16:51:23.406844', '28', 'saadmansuri', 3, '', 12, 1),
(26, '2020-11-24 16:51:23.495580', '27', 'saadmansuri', 3, '', 12, 1),
(27, '2020-11-24 16:51:23.540510', '26', 'saadmansuri', 3, '', 12, 1),
(28, '2020-11-24 16:51:23.584496', '24', 'saadmansuri', 3, '', 12, 1),
(29, '2020-11-24 16:51:23.668620', '23', 'saadmansuri', 3, '', 12, 1),
(30, '2020-11-24 16:51:23.734898', '22', 'mayurgohil', 3, '', 12, 1),
(31, '2020-11-24 16:51:23.806662', '21', 'mayurgohil', 3, '', 12, 1),
(32, '2020-11-24 16:51:23.907199', '20', 'saadmansuri', 3, '', 12, 1),
(33, '2020-11-24 16:51:24.006731', '19', 'saadmansuri', 3, '', 12, 1),
(34, '2020-11-24 16:51:24.063243', '18', 'saadmansurisaadmansuri', 3, '', 12, 1),
(35, '2020-11-24 16:51:24.118503', '17', 'saadmansuri', 3, '', 12, 1),
(36, '2020-11-24 16:51:24.252596', '16', 'saadmansuri', 3, '', 12, 1),
(37, '2020-11-24 16:51:24.318098', '14', 'saadmansuri', 3, '', 12, 1),
(38, '2020-11-24 16:51:24.375096', '13', 'saadmansuri', 3, '', 12, 1),
(39, '2020-11-24 16:51:24.417983', '11', 'saadmansuri', 3, '', 12, 1),
(40, '2020-11-24 16:51:24.573942', '10', 'mayurgohil', 3, '', 12, 1),
(41, '2020-11-24 16:51:24.640750', '9', 'saadmansuri', 3, '', 12, 1),
(42, '2020-11-24 16:51:24.684660', '6', 'saadmansuri', 3, '', 12, 1),
(43, '2020-11-24 16:51:24.740710', '4', 'henil', 3, '', 12, 1),
(44, '2020-11-24 16:51:24.818101', '2', 'mayurgohil', 3, '', 12, 1),
(45, '2020-11-24 16:51:24.862961', '1', 'saadmansuri', 3, '', 12, 1),
(46, '2020-11-24 16:52:53.505871', '35', 'saadmansuri', 3, '', 12, 1),
(47, '2020-11-24 16:53:44.045796', '36', 'saadmansuri', 3, '', 12, 1),
(48, '2020-11-24 16:54:20.850289', '38', 'saadmansuri', 3, '', 12, 1),
(49, '2020-11-24 16:57:11.007035', '39', 'saadmansuri', 3, '', 12, 1),
(50, '2020-11-24 16:58:46.601102', '40', 'saadmansuri', 3, '', 12, 1),
(51, '2020-11-24 16:59:18.753901', '41', 'saadmansuri', 3, '', 12, 1),
(52, '2020-11-24 18:28:19.417286', '6', 'saadmansuri', 3, '', 14, 1),
(53, '2020-11-24 18:28:19.524512', '4', 'saadmansuri', 3, '', 14, 1),
(54, '2020-11-24 18:28:19.822975', '3', 'mayurgohil', 3, '', 14, 1),
(55, '2020-11-24 18:28:19.903022', '2', 'henil', 3, '', 14, 1),
(56, '2020-11-24 18:28:20.022967', '1', 'saadmansuriII', 3, '', 14, 1),
(57, '2020-11-24 18:30:32.909181', '6', 'henil', 3, '', 15, 1),
(58, '2020-11-24 18:30:32.989211', '5', 'parthparma', 3, '', 15, 1),
(59, '2020-11-24 18:30:33.045178', '4', 'mayurgohilLLLLLLLL', 3, '', 15, 1),
(60, '2020-11-24 18:30:33.101184', '3', 'mayurgohil', 3, '', 15, 1),
(61, '2020-11-24 18:30:33.277178', '1', 'rocksalman', 3, '', 15, 1),
(62, '2020-11-24 18:34:43.882221', '46', 'parthparma', 3, '', 12, 1),
(63, '2020-11-24 18:34:43.978215', '45', 'parthparma', 3, '', 12, 1),
(64, '2020-11-24 18:34:44.028709', '44', 'parthparma', 3, '', 12, 1),
(65, '2020-11-24 18:34:44.100489', '43', 'saadmansuri', 3, '', 12, 1),
(66, '2020-11-24 18:34:44.132489', '42', 'Tirth Jain', 3, '', 12, 1),
(67, '2020-11-24 18:38:03.706410', '47', 'saadmansuri', 3, '', 12, 1),
(68, '2020-11-24 18:39:51.001203', '7', 'saadmansuri', 3, '', 15, 1),
(69, '2020-11-24 18:41:12.662123', '8', 'krutimam', 3, '', 14, 1),
(70, '2020-11-25 12:08:25.514313', '9', 'saadmansuri', 3, '', 15, 1),
(71, '2020-11-25 12:43:35.274589', '13', 'saadmansuri', 3, '', 15, 1),
(72, '2020-11-25 12:43:35.472059', '11', 'saadmansuri', 3, '', 15, 1),
(73, '2020-11-26 18:24:05.539429', '48', 'saadmansuri', 3, '', 12, 1),
(74, '2020-11-27 06:00:31.106937', '50', 'saadmansuri', 3, '', 12, 1),
(75, '2020-11-27 06:04:44.108135', '51', 'saadmansuri', 3, '', 12, 1),
(76, '2020-11-27 06:04:57.654506', '53', 'saadmansuri', 3, '', 12, 1),
(77, '2020-11-27 06:05:46.586735', '49', 'mayurgohil', 3, '', 12, 1),
(78, '2020-11-27 06:07:17.982424', '55', 'saadmansuri', 3, '', 12, 1),
(79, '2020-11-27 06:36:15.563013', '54', 'parthparma', 3, '', 12, 1),
(80, '2020-11-27 06:48:55.827621', '70', 'pawansingh', 3, '', 12, 1),
(81, '2020-11-27 06:48:55.912392', '69', 'parthparma', 3, '', 12, 1),
(82, '2020-11-27 06:48:55.945305', '67', 'henil', 3, '', 12, 1),
(83, '2020-11-27 06:48:56.009149', '66', 'saadmansuri', 3, '', 12, 1),
(84, '2020-11-27 06:48:56.211601', '65', 'rocksalman', 3, '', 12, 1),
(85, '2020-11-27 06:48:56.264476', '64', 'mayurgohil', 3, '', 12, 1),
(86, '2020-11-27 06:48:56.345259', '63', 'saadmansuri', 3, '', 12, 1),
(87, '2020-11-27 06:48:56.401619', '62', 'saadmansuri', 3, '', 12, 1),
(88, '2020-11-27 06:48:56.456484', '60', 'saadmansuri', 3, '', 12, 1),
(89, '2020-11-27 06:48:56.514338', '58', 'saadmansuri', 3, '', 12, 1),
(90, '2020-11-27 06:48:56.580162', '52', 'parthparma', 3, '', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'codex_home', 'category'),
(14, 'codex_home', 'iosuserdata'),
(10, 'codex_home', 'mainservices'),
(13, 'codex_home', 'mobuserdata'),
(7, 'codex_home', 'services'),
(9, 'codex_home', 'student'),
(11, 'codex_home', 'userdata'),
(12, 'codex_home', 'webuserdata'),
(15, 'codex_home', 'winuserdata'),
(5, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-07 07:34:23.765755'),
(2, 'auth', '0001_initial', '2020-11-07 07:34:30.231732'),
(3, 'admin', '0001_initial', '2020-11-07 07:34:50.853727'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-07 07:34:56.775816'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-07 07:34:57.025164'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-07 07:35:02.957357'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-07 07:35:03.277166'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-07 07:35:03.601614'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-07 07:35:03.692324'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-07 07:35:06.271487'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-07 07:35:06.367091'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-07 07:35:06.593162'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-07 07:35:07.448759'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-07 07:35:07.937792'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-07 07:35:08.435846'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-07 07:35:09.063015'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-11-07 07:35:09.623686'),
(18, 'sessions', '0001_initial', '2020-11-07 07:35:10.573049'),
(19, 'codex_home', '0001_initial', '2020-11-07 08:21:44.692431'),
(20, 'codex_home', '0002_student', '2020-11-09 06:56:57.609363'),
(21, 'codex_home', '0003_services_year_in_school', '2020-11-09 07:09:29.843072'),
(22, 'codex_home', '0004_remove_services_year_in_school', '2020-11-09 07:33:04.149628'),
(23, 'codex_home', '0005_mainservices', '2020-11-09 07:53:06.227588');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('z40lvaftltkna50qgemg5fzw06jhwu1c', '.eJxVjMsOwiAQRf-FtSE8ClNcuvcbyAxMpWogKe3K-O_apAvd3nPOfYmI21ri1nmJcxZnocXpdyNMD647yHestyZTq-syk9wVedAury3z83K4fwcFe_nWSuuJHdo8WkgAHjwaawOYBGoK3mh2gxm9JedyVsTogSkExUxoh2DE-wPAvTdM:1kfoje:IBCNHXYOmGRgo2dTZVd9cbAJ8RZPY37-dfO1-1hR0Sc', '2020-12-03 18:32:46.197643');

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
-- Indexes for table `codex_home_iosuserdata`
--
ALTER TABLE `codex_home_iosuserdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `codex_home_mainservices`
--
ALTER TABLE `codex_home_mainservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codex_home_mobuserdata`
--
ALTER TABLE `codex_home_mobuserdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `codex_home_webuserdata`
--
ALTER TABLE `codex_home_webuserdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `codex_home_winuserdata`
--
ALTER TABLE `codex_home_winuserdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `codex_home_iosuserdata`
--
ALTER TABLE `codex_home_iosuserdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `codex_home_mainservices`
--
ALTER TABLE `codex_home_mainservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `codex_home_mobuserdata`
--
ALTER TABLE `codex_home_mobuserdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `codex_home_webuserdata`
--
ALTER TABLE `codex_home_webuserdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `codex_home_winuserdata`
--
ALTER TABLE `codex_home_winuserdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
