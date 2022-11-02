-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2021 at 02:25 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aigyujie_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'creator'),
(2, 'reviewer');

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
(25, 'Can add indikator', 7, 'add_indikator'),
(26, 'Can change indikator', 7, 'change_indikator'),
(27, 'Can delete indikator', 7, 'delete_indikator'),
(28, 'Can view indikator', 7, 'view_indikator'),
(29, 'Can add kompetensi dasar', 8, 'add_kompetensidasar'),
(30, 'Can change kompetensi dasar', 8, 'change_kompetensidasar'),
(31, 'Can delete kompetensi dasar', 8, 'delete_kompetensidasar'),
(32, 'Can view kompetensi dasar', 8, 'view_kompetensidasar'),
(33, 'Can add materi', 9, 'add_materi'),
(34, 'Can change materi', 9, 'change_materi'),
(35, 'Can delete materi', 9, 'delete_materi'),
(36, 'Can view materi', 9, 'view_materi'),
(37, 'Can add profile', 10, 'add_profile'),
(38, 'Can change profile', 10, 'change_profile'),
(39, 'Can delete profile', 10, 'delete_profile'),
(40, 'Can view profile', 10, 'view_profile'),
(41, 'Can add soal', 11, 'add_soal'),
(42, 'Can change soal', 11, 'change_soal'),
(43, 'Can delete soal', 11, 'delete_soal'),
(44, 'Can view soal', 11, 'view_soal'),
(45, 'Can add standar kompetensi', 12, 'add_standarkompetensi'),
(46, 'Can change standar kompetensi', 12, 'change_standarkompetensi'),
(47, 'Can delete standar kompetensi', 12, 'delete_standarkompetensi'),
(48, 'Can view standar kompetensi', 12, 'view_standarkompetensi'),
(49, 'Can add template soal', 13, 'add_templatesoal'),
(50, 'Can change template soal', 13, 'change_templatesoal'),
(51, 'Can delete template soal', 13, 'delete_templatesoal'),
(52, 'Can view template soal', 13, 'view_templatesoal'),
(53, 'Can add generated soal', 14, 'add_generatedsoal'),
(54, 'Can change generated soal', 14, 'change_generatedsoal'),
(55, 'Can delete generated soal', 14, 'delete_generatedsoal'),
(56, 'Can view generated soal', 14, 'view_generatedsoal'),
(57, 'Can add indikator_ user', 15, 'add_indikator_user'),
(58, 'Can change indikator_ user', 15, 'change_indikator_user'),
(59, 'Can delete indikator_ user', 15, 'delete_indikator_user'),
(60, 'Can view indikator_ user', 15, 'view_indikator_user'),
(61, 'Can add paket soal', 16, 'add_paketsoal'),
(62, 'Can change paket soal', 16, 'change_paketsoal'),
(63, 'Can delete paket soal', 16, 'delete_paketsoal'),
(64, 'Can view paket soal', 16, 'view_paketsoal'),
(65, 'Can add soal_ paket soal', 17, 'add_soal_paketsoal'),
(66, 'Can change soal_ paket soal', 17, 'change_soal_paketsoal'),
(67, 'Can delete soal_ paket soal', 17, 'delete_soal_paketsoal'),
(68, 'Can view soal_ paket soal', 17, 'view_soal_paketsoal'),
(69, 'Can add status soal', 18, 'add_statussoal'),
(70, 'Can change status soal', 18, 'change_statussoal'),
(71, 'Can delete status soal', 18, 'delete_statussoal'),
(72, 'Can view status soal', 18, 'view_statussoal'),
(73, 'Can add revisi soal', 19, 'add_revisisoal'),
(74, 'Can change revisi soal', 19, 'change_revisisoal'),
(75, 'Can delete revisi soal', 19, 'delete_revisisoal'),
(76, 'Can view revisi soal', 19, 'view_revisisoal'),
(77, 'Can add student outcome', 20, 'add_studentoutcome'),
(78, 'Can change student outcome', 20, 'change_studentoutcome'),
(79, 'Can delete student outcome', 20, 'delete_studentoutcome'),
(80, 'Can view student outcome', 20, 'view_studentoutcome'),
(81, 'Can add learning outcome', 21, 'add_learningoutcome'),
(82, 'Can change learning outcome', 21, 'change_learningoutcome'),
(83, 'Can delete learning outcome', 21, 'delete_learningoutcome'),
(84, 'Can view learning outcome', 21, 'view_learningoutcome'),
(85, 'Can add mata kuliah', 22, 'add_matakuliah'),
(86, 'Can change mata kuliah', 22, 'change_matakuliah'),
(87, 'Can delete mata kuliah', 22, 'delete_matakuliah'),
(88, 'Can view mata kuliah', 22, 'view_matakuliah'),
(89, 'Can add topic', 23, 'add_topic'),
(90, 'Can change topic', 23, 'change_topic'),
(91, 'Can delete topic', 23, 'delete_topic'),
(92, 'Can view topic', 23, 'view_topic'),
(93, 'Can add penugasan', 24, 'add_penugasan'),
(94, 'Can change penugasan', 24, 'change_penugasan'),
(95, 'Can delete penugasan', 24, 'delete_penugasan'),
(96, 'Can view penugasan', 24, 'view_penugasan');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$y6OYaOVv0ixO$SE+bT4qcpBWUEN8eRwT8cpPrv+W3CrQxgSCKAiY7Y6E=', '2021-06-20 10:53:28.821711', 1, 'admin', 'Ngadimin', 'Ahmad Sentosa', 'admin@aigyujiem.com', 1, 1, '2020-05-09 17:47:03.000000'),
(65, 'pbkdf2_sha256$120000$kX3EZRGkLAiy$eTuBRcl+6q1mNudgai1V03U/ldbkMQZ1hs8uDtiUQvY=', '2021-06-15 19:04:55.594279', 0, 'creator_1', '', '', '', 0, 1, '2021-05-30 22:59:36.000000'),
(66, 'pbkdf2_sha256$120000$8mRitBEOW2P6$aQyaoqfhvjArp9dva6D4YLC85YJd9hmbkW3MSV5heZ8=', '2021-06-20 10:54:28.392844', 0, 'creator_2', '', '', '', 0, 1, '2021-05-30 23:01:50.000000'),
(67, 'pbkdf2_sha256$120000$mOEcyc1UCCHb$pUqI90dWebt3xNd3Cqym7mKT+m4NDLNJczEoBEX1MHI=', '2021-06-16 12:54:09.737864', 0, 'creator_3', '', '', '', 0, 1, '2021-05-30 23:02:13.000000'),
(68, 'pbkdf2_sha256$120000$kxF4h4tZcXwG$qoWQfZ38jFrmy0opePohhmes9aeLR6T/QlhXyNDHeDQ=', '2021-06-05 11:09:37.231613', 0, 'creator_4', '', '', '', 0, 1, '2021-05-30 23:02:35.000000'),
(69, 'pbkdf2_sha256$120000$NMNGk3kWhg2j$mMAYdL/XAYp4++9BkkNPYyC8Hx0JyJsV4hwqHXT+XWg=', '2021-06-01 09:55:56.656857', 0, 'pjm_1', '', '', '', 0, 1, '2021-05-30 23:04:24.000000'),
(70, 'pbkdf2_sha256$120000$tNACA0LnITHT$3VHFtepVhU7M7Y+GsdS3ZXYnyDDGF5BRS4nVksV87Hk=', '2021-06-08 21:31:14.470350', 0, 'pjm_2', '', '', '', 0, 1, '2021-05-30 23:04:57.000000'),
(71, 'pbkdf2_sha256$120000$fG2x3Vh85GHa$PUzX6n8g+bRcraf+38wdotXAwD7LOQDymdZYAomNCTE=', '2021-05-31 03:40:36.734024', 0, 'pjm_3', '', '', '', 0, 1, '2021-05-30 23:05:15.000000'),
(72, 'pbkdf2_sha256$120000$PxUy41upNz5N$ZcHBazX9Ouk8Tjp0RDtRbOG63V0Pco9YR9LdK6dk6tE=', '2021-05-31 03:40:48.586323', 0, 'pjm_4', '', '', '', 0, 1, '2021-05-30 23:05:33.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 65, 1),
(2, 66, 1),
(3, 67, 1),
(4, 68, 1),
(5, 69, 2),
(6, 70, 2),
(7, 71, 2),
(8, 72, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 63, 1),
(2, 63, 2),
(3, 63, 3),
(4, 63, 4),
(5, 63, 5),
(6, 63, 6),
(7, 63, 7),
(8, 63, 8),
(9, 63, 9),
(10, 63, 10),
(11, 63, 11),
(12, 63, 12),
(13, 63, 13),
(14, 63, 14),
(15, 63, 15),
(16, 63, 16),
(17, 63, 17),
(18, 63, 18),
(19, 63, 19),
(20, 63, 20),
(21, 63, 21),
(22, 63, 22),
(23, 63, 23),
(24, 63, 24),
(25, 63, 25),
(26, 63, 26),
(27, 63, 27),
(28, 63, 28),
(29, 63, 29),
(30, 63, 30),
(31, 63, 31),
(32, 63, 32),
(33, 63, 33),
(34, 63, 34),
(35, 63, 35),
(36, 63, 36),
(37, 63, 37),
(38, 63, 38),
(39, 63, 39),
(40, 63, 40),
(41, 63, 41),
(42, 63, 42),
(43, 63, 43),
(44, 63, 44),
(45, 63, 45),
(46, 63, 46),
(47, 63, 47),
(48, 63, 48),
(49, 63, 49),
(50, 63, 50),
(51, 63, 51),
(52, 63, 52),
(53, 63, 53),
(54, 63, 54),
(55, 63, 55),
(56, 63, 56),
(57, 63, 57),
(58, 63, 58),
(59, 63, 59),
(60, 63, 60),
(61, 63, 61),
(62, 63, 62),
(63, 63, 63),
(64, 63, 64),
(65, 63, 65),
(66, 63, 66),
(67, 63, 67),
(68, 63, 68),
(69, 63, 69),
(70, 63, 70),
(71, 63, 71),
(72, 63, 72),
(73, 63, 73),
(74, 63, 74),
(75, 63, 75),
(76, 63, 76);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-05-09 18:14:20.507099', '1', '2222 - 222', 1, '[{\"added\": {}}]', 12, 1),
(2, '2020-05-10 16:00:01.500978', '1', '2222 - 222', 3, '', 12, 1),
(3, '2020-05-10 16:11:53.017409', '2', '10 - Memahami, menerapkan, dan menganalisis pengetahuan faktual, konseptual, prosedural berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humaniora dengan wawasan ke', 1, '[{\"added\": {}}]', 12, 1),
(4, '2020-05-10 16:14:32.516411', '3', '10 - Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, dan mampu menggunakan metoda sesuai kaidah keil', 1, '[{\"added\": {}}]', 12, 1),
(5, '2020-05-10 16:15:33.110189', '4', '11 - Memahami ,menerapkan, dan menganalisis pengetahuan faktual, konseptual, prosedural, dan metakognitif berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humaniora', 1, '[{\"added\": {}}]', 12, 1),
(6, '2020-05-10 16:15:58.215438', '5', '11 - Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, bertindak secara efektif dan kreatif, serta mam', 1, '[{\"added\": {}}]', 12, 1),
(7, '2020-05-10 16:16:26.215585', '6', '11 - Memahami, menerapkan, menganalisis dan mengevaluasi pengetahuan faktual, konseptual, prosedural, dan metakognitif berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, ', 1, '[{\"added\": {}}]', 12, 1),
(8, '2020-05-10 16:16:53.914100', '7', '12 - Mengolah, menalar, menyaji, dan mencipta dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri serta bertindak secara efektif dan kre', 1, '[{\"added\": {}}]', 12, 1),
(9, '2020-05-10 16:18:09.232160', '6', '12 - Memahami, menerapkan, menganalisis dan mengevaluasi pengetahuan faktual, konseptual, prosedural, dan metakognitif berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, ', 2, '[{\"changed\": {\"fields\": [\"kelas\"]}}]', 12, 1),
(10, '2020-05-10 16:48:48.136106', '1', 'Dimensi Tiga', 1, '[{\"added\": {}}]', 9, 1),
(11, '2020-05-10 16:48:58.518918', '2', 'Peluang', 1, '[{\"added\": {}}]', 9, 1),
(12, '2020-05-10 16:49:06.677342', '3', 'Statistika', 1, '[{\"added\": {}}]', 9, 1),
(13, '2020-05-10 16:49:13.629748', '1', 'Dimensi Tiga', 2, '[{\"changed\": {\"fields\": [\"kelas\"]}}]', 9, 1),
(14, '2020-05-10 16:54:28.849284', '1', 'Mendeskripsikan jarak dalam ruang (antar titik, titik ke garis, dan titik ke bidang)', 1, '[{\"added\": {}}]', 8, 1),
(15, '2020-05-10 16:55:17.130675', '2', 'Menentukan dan menganalisis ukuran pemusatan dan penyebaran data yang disajikan dalam bentuk tabel distribusi frekuensi dan histogram', 1, '[{\"added\": {}}]', 8, 1),
(16, '2020-05-10 16:56:21.927388', '3', 'Menganalisis aturan pencacahan (aturan penjumlahan, aturan perkalian, permutasi, dan kombinasi) melalui masalah kontekstual', 1, '[{\"added\": {}}]', 8, 1),
(17, '2020-05-10 16:56:43.097213', '4', 'Mendeskripsikan dan menentukan peluang kejadian majemuk (peluang kejadian-kejadian saling bebas, saling lepas, dan kejadian bersyarat) dari suatu percobaan acak', 1, '[{\"added\": {}}]', 8, 1),
(18, '2020-05-10 16:57:24.093988', '5', 'Menentukan jarak dalam ruang (antar titik, titik ke garis, dan titik ke bidang)', 1, '[{\"added\": {}}]', 8, 1),
(19, '2020-05-10 16:57:24.269514', '6', 'Menentukan jarak dalam ruang (antar titik, titik ke garis, dan titik ke bidang)', 1, '[{\"added\": {}}]', 8, 1),
(20, '2020-05-10 16:57:52.379124', '7', 'Menyelesaikan masalah yang berkaitan dengan penyajian data hasil pengukuran dan pencacahan dalam tabel distribusi frekuensi dan histogram', 1, '[{\"added\": {}}]', 8, 1),
(21, '2020-05-10 16:58:17.237746', '8', 'Menyelesaikan masalah kontekstual yang berkaitan dengan kaidah pencacahan (aturan penjumlahan, aturan perkalian, permutasi, dan kombinasi)', 1, '[{\"added\": {}}]', 8, 1),
(22, '2020-05-10 16:58:42.227891', '9', 'Menyelesaikan masalah yang berkaitan dengan peluang kejadian majemuk (peluang, kejadian-kejadian saling bebas, saling lepas, dan kejadian bersyarat)', 1, '[{\"added\": {}}]', 8, 1),
(23, '2020-05-10 17:12:19.650717', '4', 'Persamaan dan Pertidaksamaan Nilai Mutlak Linear Satu Variabel', 1, '[{\"added\": {}}]', 9, 1),
(24, '2020-05-10 17:13:47.746861', '5', 'Sistem Persamaan Linear Tiga Variabel', 1, '[{\"added\": {}}]', 9, 1),
(25, '2020-05-10 17:13:58.183580', '6', 'Fungsi', 1, '[{\"added\": {}}]', 9, 1),
(26, '2020-05-10 17:14:07.665399', '7', 'Trigonometri', 1, '[{\"added\": {}}]', 9, 1),
(27, '2020-05-10 17:17:46.063115', '10', 'Mengintepretasi persamaan dan pertidaksamaan nilai mutlak dari bentuk linear satu variabel dengan persamaan dan pertidaksamaan linear Aljabar lainnya', 1, '[{\"added\": {}}]', 8, 1),
(28, '2020-05-10 17:18:16.536212', '11', 'Menyelesaikan masalah yang berkaitan dengan persamaan dan pertidaksamaan nilai mutlak dari bentuk linear satu variabel', 1, '[{\"added\": {}}]', 8, 1),
(29, '2020-05-10 17:20:33.151382', '12', 'Menjelaskan dan menentukan penyelesaian pertidaksamaan rasional dan irasional satu variabel', 1, '[{\"added\": {}}]', 8, 1),
(30, '2020-05-10 17:20:51.200327', '13', 'Menyelesaikan masalah yang berkaitan dengan pertidaksamaan rasional dan irasional satu variabel', 1, '[{\"added\": {}}]', 8, 1),
(31, '2020-05-10 17:21:32.548348', '14', 'Menyusun sistem persamaan linear tiga variabel dari masalah kontekstual', 1, '[{\"added\": {}}]', 8, 1),
(32, '2020-05-10 17:22:22.884480', '15', 'Menyelesaikan masalah kontekstual yang berkaitan dengan sistem persamaan linear tiga variable', 1, '[{\"added\": {}}]', 8, 1),
(33, '2020-05-10 17:23:06.445572', '16', 'Menjelaskan dan menentukan penyelesaian sistem pertidaksamaan dua variabel (linear-kuadrat dan kuadrat-kuadrat)', 1, '[{\"added\": {}}]', 8, 1),
(34, '2020-05-10 17:23:27.610317', '17', 'Menyajikan dan menyelesaikan masalah yang berkaitan dengan sistem pertidaksamaan dua variabel (linear-kuadrat dan kuadrat-kuadrat)', 1, '[{\"added\": {}}]', 8, 1),
(35, '2020-05-10 18:16:02.480563', '18', 'Menjelaskan dan menentukan fungsi (terutama fungsi linear, fungsi kuadrat, dan fungsi rasional) secara formal yang meliputi notasi, daerah asal, daerah hasil, dan ekspresi simbolik, serta sketsa grafi', 1, '[{\"added\": {}}]', 8, 1),
(36, '2020-05-10 18:16:32.005908', '19', 'Menjelaskan operasi komposisi pada fungsi dan operasi invers pada fungsi invers serta sifat-sifatnya serta menentukan eksistensinya', 1, '[{\"added\": {}}]', 8, 1),
(37, '2020-05-10 18:17:11.023023', '20', 'Menganalisa karakteristik masing – masing grafik (titik potong dengan sumbu, titik puncak, asimtot) dan perubahan grafik fungsinya akibat transformasi f^2(x), 1/f(x), |f(x)| dsb', 1, '[{\"added\": {}}]', 8, 1),
(38, '2020-05-10 18:17:36.458772', '21', 'Menyelesaikan masalah yang berkaitan dengan operasi komposisi dan operasi invers suatu fungsi', 1, '[{\"added\": {}}]', 8, 1),
(39, '2020-05-10 18:18:24.142527', '22', 'Menjelaskan rasio trigonometri (sinus, cosinus, tangen, cosecan, secan, dan cotangen) pada segitiga siku-siku', 1, '[{\"added\": {}}]', 8, 1),
(40, '2020-05-10 18:18:44.306397', '23', 'Menyelesaikan masalah kontekstual yang berkaitan dengan rasio trigonometri (sinus, cosinus, tangen, cosecan, secan, dan cotangen) pada segitiga siku-siku', 1, '[{\"added\": {}}]', 8, 1),
(41, '2020-05-10 18:19:52.965311', '24', 'Menggeneralisasi rasio trigonometri untuk sudut-sudut di berbagai kuadran dan sudut-sudut berelasi', 1, '[{\"added\": {}}]', 8, 1),
(42, '2020-05-10 18:20:14.882061', '25', 'Menyelesaikan masalah kontekstual yang berkaitan dengan rasio trigonometri sudut-sudut di berbagai kuadran dan sudut-sudut berelasi', 1, '[{\"added\": {}}]', 8, 1),
(43, '2020-05-10 18:20:47.905882', '26', '3.9 Menjelaskan aturan sinus dan cosinus', 1, '[{\"added\": {}}]', 8, 1),
(44, '2020-05-10 18:21:21.062024', '27', '4.9 Menyelesaikan masalah yang berkaitan dengan aturan sinus dan cosinus', 1, '[{\"added\": {}}]', 8, 1),
(45, '2020-05-10 18:21:36.369658', '28', '3.10 Menjelaskan fungsi trigonometri dengan menggunakan lingkaran satuan', 1, '[{\"added\": {}}]', 8, 1),
(46, '2020-05-10 18:21:56.230227', '29', '4.10 Menganalisa perubahan grafik fungsi trigonometri akibat perubahan pada konstanta pada fungsi y = a sin b(x + c) + d.', 1, '[{\"added\": {}}]', 8, 1),
(47, '2020-05-10 18:22:22.187857', '25', '4.8 Menyelesaikan masalah kontekstual yang berkaitan dengan rasio trigonometri sudut-sudut di berbagai kuadran dan sudut-sudut berelasi', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(48, '2020-05-10 18:22:34.510183', '24', '3.8 Menggeneralisasi rasio trigonometri untuk sudut-sudut di berbagai kuadran dan sudut-sudut berelasi', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(49, '2020-05-10 18:23:09.908215', '23', '4.7 Menyelesaikan masalah kontekstual yang berkaitan dengan rasio trigonometri (sinus, cosinus, tangen, cosecan, secan, dan cotangen) pada segitiga siku-siku', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(50, '2020-05-10 18:23:21.943003', '22', '3.7 Menjelaskan rasio trigonometri (sinus, cosinus, tangen, cosecan, secan, dan cotangen) pada segitiga siku-siku', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(51, '2020-05-10 18:23:48.592616', '21', '4.6 Menyelesaikan masalah yang berkaitan dengan operasi komposisi dan operasi invers suatu fungsi', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(52, '2020-05-10 18:24:12.813386', '20', '4.5 Menganalisa karakteristik masing-masing grafik (titik potong dengan sumbu, titik puncak, asimtot) dan perubahan grafik fungsinya akibat transformasi f^2(x), 1/f(x), |f(x)| dsb', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(53, '2020-05-10 18:24:32.440884', '19', '3.6 Menjelaskan operasi komposisi pada fungsi dan operasi invers pada fungsi invers serta sifat-sifatnya serta menentukan eksistensinya', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(54, '2020-05-10 18:24:53.522585', '18', '3.5 Menjelaskan dan menentukan fungsi (terutama fungsi linear, fungsi kuadrat, dan fungsi rasional) secara formal yang meliputi notasi, daerah asal, daerah hasil, dan ekspresi simbolik, serta sketsa g', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(55, '2020-05-10 18:26:43.251286', '17', '4.4 Menyajikan dan menyelesaikan masalah yang berkaitan dengan sistem pertidaksamaan dua variabel (linear-kuadrat dan kuadrat-kuadrat)', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(56, '2020-05-10 18:27:00.398519', '16', '3.4 Menjelaskan dan menentukan penyelesaian sistem pertidaksamaan dua variabel (linear-kuadrat dan kuadrat-kuadrat)', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(57, '2020-05-10 18:27:18.640616', '15', '4.3 Menyelesaikan masalah kontekstual yang berkaitan dengan sistem persamaan linear tiga variable', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(58, '2020-05-10 18:27:35.466259', '14', '3.3 Menyusun sistem persamaan linear tiga variabel dari masalah kontekstual', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(59, '2020-05-10 18:27:57.448183', '13', '4.2 Menyelesaikan masalah yang berkaitan dengan pertidaksamaan rasional dan irasional satu variabel', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(60, '2020-05-10 18:28:09.506199', '12', '3.2 Menjelaskan dan menentukan penyelesaian pertidaksamaan rasional dan irasional satu variabel', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(61, '2020-05-10 18:28:20.164914', '11', '4.1 Menyelesaikan masalah yang berkaitan dengan persamaan dan pertidaksamaan nilai mutlak dari bentuk linear satu variabel', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(62, '2020-05-10 18:28:30.477375', '10', '3.1 Mengintepretasi persamaan dan pertidaksamaan nilai mutlak dari bentuk linear satu variabel dengan persamaan dan pertidaksamaan linear Aljabar lainnya', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(63, '2020-05-10 18:30:03.526600', '9', '4.4 Menyelesaikan masalah yang berkaitan dengan peluang kejadian majemuk (peluang, kejadian-kejadian saling bebas, saling lepas, dan kejadian bersyarat)', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(64, '2020-05-10 18:30:16.285331', '8', '3.4 Menyelesaikan masalah kontekstual yang berkaitan dengan kaidah pencacahan (aturan penjumlahan, aturan perkalian, permutasi, dan kombinasi)', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(65, '2020-05-10 18:30:30.893743', '7', '4.3 Menyelesaikan masalah yang berkaitan dengan penyajian data hasil pengukuran dan pencacahan dalam tabel distribusi frekuensi dan histogram', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(66, '2020-05-10 18:31:07.819118', '6', '4.1 Menentukan jarak dalam ruang (antar titik, titik ke garis, dan titik ke bidang)', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(67, '2020-05-10 18:31:22.078287', '5', 'Menentukan jarak dalam ruang (antar titik, titik ke garis, dan titik ke bidang)', 3, '', 8, 1),
(68, '2020-05-10 18:31:39.296380', '4', '3.4 Mendeskripsikan dan menentukan peluang kejadian majemuk (peluang kejadian-kejadian saling bebas, saling lepas, dan kejadian bersyarat) dari suatu percobaan acak', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(69, '2020-05-10 18:31:58.555015', '8', '4.3 Menyelesaikan masalah kontekstual yang berkaitan dengan kaidah pencacahan (aturan penjumlahan, aturan perkalian, permutasi, dan kombinasi)', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(70, '2020-05-10 18:32:18.929250', '7', '4.2 Menyelesaikan masalah yang berkaitan dengan penyajian data hasil pengukuran dan pencacahan dalam tabel distribusi frekuensi dan histogram', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(71, '2020-05-10 18:32:28.182765', '3', '3.3 Menganalisis aturan pencacahan (aturan penjumlahan, aturan perkalian, permutasi, dan kombinasi) melalui masalah kontekstual', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(72, '2020-05-10 18:32:36.564376', '2', '3.2 Menentukan dan menganalisis ukuran pemusatan dan penyebaran data yang disajikan dalam bentuk tabel distribusi frekuensi dan histogram', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(73, '2020-05-10 18:32:44.261278', '1', '3.1 Mendeskripsikan jarak dalam ruang (antar titik, titik ke garis, dan titik ke bidang)', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 8, 1),
(74, '2020-05-10 18:33:11.134482', '7', '12 - 4. Mengolah, menalar, menyaji, dan mencipta dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri serta bertindak secara efektif dan ', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 12, 1),
(75, '2020-05-10 18:33:22.365790', '6', '12 - 3. Memahami, menerapkan, menganalisis dan mengevaluasi pengetahuan faktual, konseptual, prosedural, dan metakognitif berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, buday', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 12, 1),
(76, '2020-05-10 18:33:54.159915', '5', '11 - 4. Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, bertindak secara efektif dan kreatif, serta ', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 12, 1),
(77, '2020-05-10 18:34:02.137510', '4', '11 - 3. Memahami ,menerapkan, dan menganalisis pengetahuan faktual, konseptual, prosedural, dan metakognitif berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humani', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 12, 1),
(78, '2020-05-10 18:34:10.356530', '3', '10 - 4. Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, dan mampu menggunakan metoda sesuai kaidah k', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 12, 1),
(79, '2020-05-10 18:34:17.895259', '2', '10 - 3. Memahami, menerapkan, dan menganalisis pengetahuan faktual, konseptual, prosedural berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humaniora dengan wawasan', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 12, 1),
(80, '2020-05-10 18:40:12.146642', '8', 'Induksi Matematis', 1, '[{\"added\": {}}]', 9, 1),
(81, '2020-05-10 18:40:27.884005', '9', 'Program Linear', 1, '[{\"added\": {}}]', 9, 1),
(82, '2020-05-10 18:40:53.166719', '10', 'Matriks', 1, '[{\"added\": {}}]', 9, 1),
(83, '2020-05-10 18:41:08.100543', '11', 'Transformasi', 1, '[{\"added\": {}}]', 9, 1),
(84, '2020-05-10 18:41:22.902467', '12', 'Barisan', 1, '[{\"added\": {}}]', 9, 1),
(85, '2020-05-10 18:41:33.985445', '11', 'Transformasi', 2, '[{\"changed\": {\"fields\": [\"kelas\"]}}]', 9, 1),
(86, '2020-05-10 18:41:43.437837', '10', 'Matriks', 2, '[{\"changed\": {\"fields\": [\"kelas\"]}}]', 9, 1),
(87, '2020-05-10 18:41:48.751559', '9', 'Program Linear', 2, '[{\"changed\": {\"fields\": [\"kelas\"]}}]', 9, 1),
(88, '2020-05-10 18:41:54.106401', '8', 'Induksi Matematis', 2, '[{\"changed\": {\"fields\": [\"kelas\"]}}]', 9, 1),
(89, '2020-05-10 18:42:06.475067', '13', 'Limit Fungsi', 1, '[{\"added\": {}}]', 9, 1),
(90, '2020-05-10 18:42:21.244133', '14', 'Turunan', 1, '[{\"added\": {}}]', 9, 1),
(91, '2020-05-10 18:42:31.636224', '15', 'Integral', 1, '[{\"added\": {}}]', 9, 1),
(92, '2020-05-10 18:43:39.828211', '30', '3.1 Menjelaskan metode pembuktian Pernyataan matematis berupa barisan, ketidaksamaan, keterbagiaan dengan induksi matematika', 1, '[{\"added\": {}}]', 8, 1),
(93, '2020-05-10 18:44:14.516688', '31', '4.1 Menggunakan metode pembuktian induksi matematika untuk menguji pernyataan matematis berupa barisan, ketidaksamaan, keterbagiaan', 1, '[{\"added\": {}}]', 8, 1),
(94, '2020-05-10 18:45:38.485381', '32', '3.2 Menjelaskan program linear dua variabel dan metode penyelesaiannya dengan menggunakan masalah kontekstual', 1, '[{\"added\": {}}]', 8, 1),
(95, '2020-05-10 18:46:06.801736', '33', '4.2 Menyelesaikan masalah kontekstual yang berkaitan dengan program linear dua variabel', 1, '[{\"added\": {}}]', 8, 1),
(96, '2020-05-10 18:46:39.012203', '34', '3.3 Menjelaskan matriks dan kesamaan matriks dengan menggunakan masalah kontekstual dan melakukan operasi pada matriks yang meliputi penjumlahan, pengurangan, perkalian skalar, dan perkalian, serta tr', 1, '[{\"added\": {}}]', 8, 1),
(97, '2020-05-10 18:47:10.314339', '35', '4.3 Menyelesaikan masalah kontekstual yang berkaitan dengan matriks dan operasinya', 1, '[{\"added\": {}}]', 8, 1),
(98, '2020-05-10 18:47:38.563382', '36', '3.4 Menganalisis sifat-sifat determinan dan invers matriks berordo 2×2 dan 3×3', 1, '[{\"added\": {}}]', 8, 1),
(99, '2020-05-10 18:47:54.751165', '37', '4.4 Menyelesaikan masalah yang berkaitan dengan determinan dan invers matriks berordo 2×2 dan 3×3', 1, '[{\"added\": {}}]', 8, 1),
(100, '2020-05-10 18:48:44.555603', '38', '3.5 Menganalisis dan membandingkan transformasi dan komposisi transformasi dengan menggunakan matriks', 1, '[{\"added\": {}}]', 8, 1),
(101, '2020-05-10 18:49:06.517025', '39', '4.5 Menyelesaikan masalah yang berkaitan dengan matriks transformasi geometri (translasi, refleksi, dilatasi dan rotasi)', 1, '[{\"added\": {}}]', 8, 1),
(102, '2020-05-10 18:49:42.883655', '40', '3.6 Menggeneralisasi pola bilangan dan jumlah pada barisan Aritmetika dan Geometri', 1, '[{\"added\": {}}]', 8, 1),
(103, '2020-05-10 18:50:03.096325', '41', '4.6 Menggunakan pola barisan aritmetika atau geometri untuk menyajikan dan menyelesaikan masalah kontekstual (termasuk pertumbuhan, peluruhan, bunga majemuk, dan anuitas)', 1, '[{\"added\": {}}]', 8, 1),
(104, '2020-05-10 18:50:39.903322', '42', '3.7 Menjelaskan limit fungsi aljabar (fungsi polinom dan fungsi rasional) secara intuitif dan sifat-sifatnya, serta menentukan eksistensinya', 1, '[{\"added\": {}}]', 8, 1),
(105, '2020-05-10 18:50:58.284961', '43', '4.7 Menyelesaikan masalah yang berkaitan dengan limit fungsi aljabar', 1, '[{\"added\": {}}]', 8, 1),
(106, '2020-05-10 18:51:43.169074', '44', '3.8 Menjelaskan sifat-sifat turunan fungsi aljabar dan menentukan turunan fungsi aljabar menggunakan definisi atau sifatsifat turunan fungsi', 1, '[{\"added\": {}}]', 8, 1),
(107, '2020-05-10 18:52:00.400431', '45', '4.8 Menyelesaikan masalah yang berkaitan dengan turunan fungsi aljabar', 1, '[{\"added\": {}}]', 8, 1),
(108, '2020-05-10 18:52:22.171167', '46', '3.9 Menganalisis keberkaitanan turunan pertama fungsi dengan nilai maksimum, nilai minimum, dan selang kemonotonan fungsi, serta kemiringan garis singgung kurva', 1, '[{\"added\": {}}]', 8, 1),
(109, '2020-05-10 18:52:40.685014', '47', '4.9 Menggunakan turunan pertama fungsi untuk menentukan titik maksimum, titik minimum, dan selang kemonotonan fungsi, serta kemiringan garis singgung kurva, persamaan garis singgung, dan garis normal ', 1, '[{\"added\": {}}]', 8, 1),
(110, '2020-05-10 18:52:58.412370', '48', '3.10 Mendeskripsikan integral tak tentu (anti turunan) fungsi aljabar dan menganalisis sifatsifatnya berdasarkan sifat-sifat turunan fungsi', 1, '[{\"added\": {}}]', 8, 1),
(111, '2020-05-10 18:53:16.766957', '49', '4.10 Menyelesaikan masalah yang berkaitan dengan integral tak tentu (anti turunan) fungsi aljabar', 1, '[{\"added\": {}}]', 8, 1),
(112, '2020-05-10 18:55:43.390488', '1', 'ajadskasd', 1, '[{\"added\": {}}]', 7, 1),
(113, '2020-05-10 18:55:51.411395', '1', 'ajadskasd', 3, '', 7, 1),
(114, '2020-05-13 05:55:41.646887', '1', 'Admin', 1, '[{\"added\": {}}]', 7, 1),
(115, '2020-05-13 12:56:23.552666', '7', '4. Mengolah, menalar, menyaji, dan mencipta dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri serta bertindak secara efektif dan kreat', 2, '[{\"changed\": {\"fields\": [\"short\"]}}]', 12, 1),
(116, '2020-05-13 12:56:32.718333', '6', '3. Memahami, menerapkan, menganalisis dan mengevaluasi pengetahuan faktual, konseptual, prosedural, dan metakognitif berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, da', 2, '[{\"changed\": {\"fields\": [\"short\"]}}]', 12, 1),
(117, '2020-05-13 12:56:41.662669', '5', '4. Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, bertindak secara efektif dan kreatif, serta mampu', 2, '[{\"changed\": {\"fields\": [\"short\"]}}]', 12, 1),
(118, '2020-05-13 12:56:50.362688', '4', '3. Memahami ,menerapkan, dan menganalisis pengetahuan faktual, konseptual, prosedural, dan metakognitif berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humaniora d', 2, '[{\"changed\": {\"fields\": [\"short\"]}}]', 12, 1),
(119, '2020-05-13 12:57:01.370978', '3', '4. Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, dan mampu menggunakan metoda sesuai kaidah keilmu', 2, '[{\"changed\": {\"fields\": [\"short\"]}}]', 12, 1),
(120, '2020-05-13 12:57:06.156119', '3', '4. Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, dan mampu menggunakan metoda sesuai kaidah keilmu', 2, '[]', 12, 1),
(121, '2020-05-13 12:57:10.533655', '3', '4. Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, dan mampu menggunakan metoda sesuai kaidah keilmu', 2, '[]', 12, 1),
(122, '2020-05-13 12:57:20.293650', '2', '3. Memahami, menerapkan, dan menganalisis pengetahuan faktual, konseptual, prosedural berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humaniora dengan wawasan kema', 2, '[{\"changed\": {\"fields\": [\"short\"]}}]', 12, 1),
(123, '2020-05-14 13:37:27.720945', '7', 'Keterampilan - Kelas 12', 2, '[]', 12, 1),
(124, '2020-05-17 07:59:26.896499', '1', 'StatusSoal object (1)', 1, '[{\"added\": {}}]', 18, 1),
(125, '2020-05-17 07:59:34.462880', '2', 'StatusSoal object (2)', 1, '[{\"added\": {}}]', 18, 1),
(126, '2020-05-17 07:59:41.202372', '3', 'StatusSoal object (3)', 1, '[{\"added\": {}}]', 18, 1),
(127, '2020-05-17 08:01:17.839528', '1', 'StatusSoal object (1)', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 18, 1),
(128, '2020-05-17 08:02:29.717169', '1', 'dasasddas', 1, '[{\"added\": {}}]', 11, 1),
(129, '2020-05-17 08:04:44.936413', '1', 'dasasddas', 2, '[]', 11, 1),
(130, '2020-05-17 08:05:50.385459', '1', 'dasasddas', 2, '[]', 11, 1),
(131, '2020-05-17 09:15:10.001078', '2', 'User2', 1, '[{\"added\": {}}]', 4, 1),
(132, '2020-05-17 14:32:35.508961', '2', '<p>Sebuah deret aritmatika [x], [y], [z], &hellip; , tentukan jumlah [n] suku pertama deret tersebut</p>', 1, '[{\"added\": {}}]', 11, 1),
(133, '2020-05-18 15:26:22.849731', '8', 'Ini Indikatornya yaa', 3, '', 7, 1),
(134, '2020-05-18 15:26:27.286233', '7', 'jjj', 3, '', 7, 1),
(135, '2020-05-18 15:26:32.294487', '6', 'ASDADS', 3, '', 7, 1),
(136, '2020-05-18 15:26:36.474494', '5', 'Ini Indikatornya', 3, '', 7, 1),
(137, '2020-05-18 15:26:43.044466', '4', 'kk', 3, '', 7, 1),
(138, '2020-05-18 15:26:47.464402', '3', 'asdad', 3, '', 7, 1),
(139, '2020-05-18 15:26:52.631619', '1', 'Admin', 3, '', 7, 1),
(140, '2020-05-18 15:26:57.776763', '2', 'asdad', 3, '', 7, 1),
(141, '2020-05-18 15:27:08.974258', '5', '[a]', 3, '', 11, 1),
(142, '2020-05-18 15:27:14.387652', '2', '<p>Sebuah deret aritmatika [x], [y], [z], &hellip; , tentukan jumlah [n] suku pertama deret tersebut</p>', 3, '', 11, 1),
(143, '2020-05-18 15:33:43.292819', '9', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika', 2, '[{\"changed\": {\"fields\": [\"deskripsi\"]}}]', 7, 1),
(144, '2020-05-18 15:48:33.017818', '6', 'Diketuhi barisan aritmatika [a], [b], [c], ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 11, 1),
(145, '2020-05-18 16:04:47.025527', '6', 'Diketuhi barisan aritmatika [a], [b], [c], ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 11, 1),
(146, '2020-05-18 16:09:30.877485', '6', 'Diketuhi barisan aritmatika [a], [b], [c], ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 11, 1),
(147, '2020-05-18 16:10:17.349212', '6', 'Diketuhi barisan aritmatika [a], [b], [c], ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 11, 1),
(148, '2020-05-18 16:12:43.119362', '6', 'Diketuhi barisan aritmatika [a], [b], [c], ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', 2, '[{\"changed\": {\"fields\": [\"status\"]}}]', 11, 1),
(149, '2020-05-25 14:12:14.964945', '3', 'user1', 1, '[{\"added\": {}}]', 4, 1),
(150, '2020-05-25 14:13:04.432215', '3', 'user1', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(151, '2020-05-26 06:46:00.647829', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(152, '2020-05-26 06:54:26.186885', '1', 'Profile object (1)', 2, '[{\"changed\": {\"fields\": [\"sekolah\", \"alamat\", \"mapel\"]}}]', 10, 1),
(153, '2020-05-28 16:26:50.251428', '1', 'Soal_PaketSoal object (1)', 1, '[{\"added\": {}}]', 17, 1),
(154, '2020-06-03 03:15:20.125242', '4', 'creator1', 1, '[{\"added\": {}}]', 4, 1),
(155, '2020-06-03 03:16:01.658473', '5', 'reviewer1', 1, '[{\"added\": {}}]', 4, 1),
(156, '2020-06-03 03:16:07.885926', '5', 'reviewer1', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(157, '2020-06-03 03:16:17.417902', '4', 'creator1', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(158, '2020-06-03 03:33:22.009376', '5', 'reviewer1', 2, '[{\"changed\": {\"fields\": [\"sekolah\", \"alamat\", \"mapel\", \"nomer_hp\", \"jabatan\", \"nip\", \"golongan\", \"pangkat\"]}}]', 10, 1),
(159, '2020-06-03 04:11:55.199480', '4', 'creator1', 2, '[{\"changed\": {\"fields\": [\"first_name\"]}}]', 4, 1),
(160, '2020-06-03 08:03:04.096165', '13', 'mantab anjay', 3, '', 7, 1),
(161, '2020-06-03 08:03:22.701929', '12', 'Ini indikator', 3, '', 7, 1),
(162, '2020-06-03 08:03:22.705219', '11', 'aaaa', 3, '', 7, 1),
(163, '2020-06-03 08:03:22.707969', '10', 'Siswa dapat menjelaskan makna dari pertidaksamaan', 3, '', 7, 1),
(164, '2020-06-03 08:03:22.710049', '9', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika', 3, '', 7, 1),
(165, '2020-06-03 08:04:45.768355', '7', 'Apakah [a] sama dengan [c]&nbsp;', 3, '', 11, 1),
(166, '2020-06-03 08:04:45.774042', '6', 'Diketuhi barisan aritmatika [a], [b], [c], ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', 3, '', 11, 1),
(167, '2020-06-03 08:08:42.226547', '6', 'ahmad_reviewer', 1, '[{\"added\": {}}]', 4, 1),
(168, '2020-06-03 08:09:31.372191', '6', 'ahmad_reviewer', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(169, '2020-06-03 08:10:06.223091', '7', 'ahmad_creator', 1, '[{\"added\": {}}]', 4, 1),
(170, '2020-06-03 08:10:38.268600', '7', 'ahmad_creator', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(171, '2020-06-03 08:13:01.046104', '7', 'ahmad_creator', 2, '[{\"changed\": {\"fields\": [\"sekolah\", \"alamat\", \"mapel\", \"nomer_hp\", \"jabatan\", \"nip\", \"golongan\", \"pangkat\"]}}]', 10, 1),
(172, '2020-06-03 08:14:18.513297', '6', 'ahmad_reviewer', 2, '[{\"changed\": {\"fields\": [\"sekolah\", \"alamat\", \"mapel\", \"nomer_hp\", \"jabatan\", \"nip\", \"golongan\", \"pangkat\"]}}]', 10, 1),
(173, '2020-06-05 14:55:10.455481', '8', 'bagas_creator', 1, '[{\"added\": {}}]', 4, 1),
(174, '2020-06-05 14:55:19.782475', '8', 'bagas_creator', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(175, '2020-06-07 00:08:11.656129', '9', 'parker_reviewer', 1, '[{\"added\": {}}]', 4, 1),
(176, '2020-06-07 00:09:01.313036', '9', 'parker_reviewer', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(177, '2020-06-07 00:09:46.359845', '10', 'parker_creator', 1, '[{\"added\": {}}]', 4, 1),
(178, '2020-06-07 00:10:30.361108', '10', 'parker_creator', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(179, '2020-06-07 00:11:49.746419', '10', 'parker_creator', 2, '[{\"changed\": {\"fields\": [\"sekolah\", \"alamat\", \"mapel\", \"nomer_hp\", \"jabatan\", \"nip\", \"golongan\", \"pangkat\"]}}]', 10, 1),
(180, '2020-06-07 00:12:51.813101', '9', 'parker_reviewer', 2, '[{\"changed\": {\"fields\": [\"sekolah\", \"alamat\", \"mapel\", \"nomer_hp\", \"jabatan\", \"nip\", \"golongan\", \"pangkat\"]}}]', 10, 1),
(181, '2020-06-07 13:16:23.060891', '11', 'bambang_creator', 1, '[{\"added\": {}}]', 4, 1),
(182, '2020-06-07 13:16:50.629260', '11', 'bambang_creator', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(183, '2020-06-07 13:17:05.491330', '11', 'bambang_creator', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(184, '2020-06-07 13:17:41.017148', '12', 'bambang_reviewer', 1, '[{\"added\": {}}]', 4, 1),
(185, '2020-06-07 13:18:28.220469', '12', 'bambang_reviewer', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(186, '2020-06-07 13:20:14.084656', '12', 'bambang_reviewer', 2, '[{\"changed\": {\"fields\": [\"sekolah\", \"alamat\", \"mapel\", \"nomer_hp\", \"jabatan\", \"nip\", \"golongan\", \"pangkat\"]}}]', 10, 1),
(187, '2020-06-07 13:21:09.017419', '11', 'bambang_creator', 2, '[{\"changed\": {\"fields\": [\"sekolah\", \"alamat\", \"mapel\", \"nomer_hp\", \"jabatan\", \"nip\", \"golongan\", \"pangkat\"]}}]', 10, 1),
(188, '2020-06-09 04:29:50.314030', '1', 'TemplateSoal object (1)', 1, '[{\"added\": {}}]', 13, 1),
(189, '2020-06-17 15:22:27.538380', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(190, '2020-06-17 15:23:53.298570', '13', 'eka_PJM', 1, '[{\"added\": {}}]', 4, 1),
(191, '2020-06-17 15:24:15.608185', '14', 'eka_penulis', 1, '[{\"added\": {}}]', 4, 1),
(192, '2020-06-17 15:24:38.552183', '15', 'aditya_PJM', 1, '[{\"added\": {}}]', 4, 1),
(193, '2020-06-17 15:24:58.682404', '16', 'aditya_penulis', 1, '[{\"added\": {}}]', 4, 1),
(194, '2020-06-17 15:25:27.387814', '17', 'ardiani_PJM', 1, '[{\"added\": {}}]', 4, 1),
(195, '2020-06-17 15:31:24.277151', '18', 'ardiani_penulis', 1, '[{\"added\": {}}]', 4, 1),
(196, '2020-06-17 15:31:46.935432', '19', 'adi_PJM', 1, '[{\"added\": {}}]', 4, 1),
(197, '2020-06-17 15:32:11.030226', '20', 'adi_penulis', 1, '[{\"added\": {}}]', 4, 1),
(198, '2020-06-17 15:32:38.391421', '21', 'phaksi_PJM', 1, '[{\"added\": {}}]', 4, 1),
(199, '2020-06-17 15:32:53.561199', '22', 'phaksi_penulis', 1, '[{\"added\": {}}]', 4, 1),
(200, '2020-06-17 15:33:14.171795', '23', 'anggoro_PJM', 1, '[{\"added\": {}}]', 4, 1),
(201, '2020-06-17 15:33:30.173537', '24', 'anggoro_penulis', 1, '[{\"added\": {}}]', 4, 1),
(202, '2020-06-17 15:43:43.147599', '16', 'aditya_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(203, '2020-06-17 15:44:17.453583', '15', 'aditya_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(204, '2020-06-17 15:44:56.137369', '20', 'adi_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(205, '2020-06-17 15:45:16.693239', '19', 'adi_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(206, '2020-06-17 15:46:03.658501', '24', 'anggoro_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(207, '2020-06-17 15:46:42.043693', '23', 'anggoro_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(208, '2020-06-17 15:47:22.556026', '18', 'ardiani_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(209, '2020-06-17 15:47:46.740996', '17', 'ardiani_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(210, '2020-06-17 15:48:16.106097', '14', 'eka_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(211, '2020-06-17 15:48:37.802395', '13', 'eka_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(212, '2020-06-17 15:49:08.234803', '22', 'phaksi_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(213, '2020-06-17 15:49:32.748213', '21', 'phaksi_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(214, '2020-06-17 18:22:11.142193', '32', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 1, '[{\"added\": {}}]', 7, 1),
(215, '2020-06-17 18:22:31.790146', '32', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 2, '[{\"changed\": {\"fields\": [\"creator\"]}}]', 7, 1),
(216, '2020-06-17 18:22:38.223809', '32', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 2, '[{\"changed\": {\"fields\": [\"creator\"]}}]', 7, 1),
(217, '2020-06-17 18:22:45.255946', '32', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 2, '[{\"changed\": {\"fields\": [\"creator\"]}}]', 7, 1),
(218, '2020-06-17 18:22:52.932122', '32', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 2, '[{\"changed\": {\"fields\": [\"creator\"]}}]', 7, 1),
(219, '2020-06-17 18:22:59.917505', '32', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 2, '[{\"changed\": {\"fields\": [\"creator\"]}}]', 7, 1),
(220, '2020-06-17 18:23:26.857662', '32', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 2, '[]', 7, 1),
(221, '2020-06-17 18:23:44.282026', '33', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 1, '[{\"added\": {}}]', 7, 1),
(222, '2020-06-17 18:24:01.786740', '34', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 1, '[{\"added\": {}}]', 7, 1),
(223, '2020-06-17 18:24:21.032192', '35', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 1, '[{\"added\": {}}]', 7, 1),
(224, '2020-06-17 18:24:40.448250', '36', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 1, '[{\"added\": {}}]', 7, 1),
(225, '2020-06-17 18:24:57.967185', '37', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika/geometri', 1, '[{\"added\": {}}]', 7, 1),
(226, '2020-06-17 18:26:01.159947', '38', 'Siswa dapat menentukan bentuk paling sederhana dari sebuah pecahan', 1, '[{\"added\": {}}]', 7, 1),
(227, '2020-06-17 18:26:15.889574', '39', 'Siswa dapat menentukan bentuk paling sederhana dari sebuah pecahan', 1, '[{\"added\": {}}]', 7, 1),
(228, '2020-06-17 18:26:32.756604', '40', 'Siswa dapat menentukan bentuk paling sederhana dari sebuah pecahan', 1, '[{\"added\": {}}]', 7, 1),
(229, '2020-06-17 18:26:48.788930', '41', 'Siswa dapat menentukan bentuk paling sederhana dari sebuah pecahan', 1, '[{\"added\": {}}]', 7, 1),
(230, '2020-06-17 18:27:05.885587', '42', 'Siswa dapat menentukan bentuk paling sederhana dari sebuah pecahan', 1, '[{\"added\": {}}]', 7, 1),
(231, '2020-06-17 18:27:23.068949', '43', 'Siswa dapat menentukan bentuk paling sederhana dari sebuah pecahan', 1, '[{\"added\": {}}]', 7, 1),
(232, '2020-06-17 18:28:04.535297', '44', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 1, '[{\"added\": {}}]', 7, 1),
(233, '2020-06-17 18:28:19.900217', '45', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 1, '[{\"added\": {}}]', 7, 1),
(234, '2020-06-17 18:28:35.869193', '46', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 1, '[{\"added\": {}}]', 7, 1),
(235, '2020-06-17 18:28:54.862585', '47', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 1, '[{\"added\": {}}]', 7, 1),
(236, '2020-06-17 18:29:14.510786', '48', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 1, '[{\"added\": {}}]', 7, 1),
(237, '2020-06-17 18:29:33.689893', '49', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 1, '[{\"added\": {}}]', 7, 1),
(238, '2020-06-17 18:31:20.452638', '18', '<strong>Harga tiket kelas I dalam final Piala Presiden 2018 adalah Rp 500.000,00. Panitia menyediakan [x] baris untuk kelas I, dengan rincian pada baris pertama terdapat [a] kursi, baris kedua [a2] ku', 2, '[]', 11, 1),
(239, '2020-06-17 18:50:14.286007', '49', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 3, '', 7, 1),
(240, '2020-06-17 18:50:14.289768', '48', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 3, '', 7, 1),
(241, '2020-06-17 18:50:14.296870', '47', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 3, '', 7, 1),
(242, '2020-06-17 18:50:14.299329', '46', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 3, '', 7, 1),
(243, '2020-06-17 18:50:14.302704', '45', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 3, '', 7, 1),
(244, '2020-06-17 18:50:14.305260', '44', 'Siswa dapat menyebutkan ciri-ciri dari bangun ruang tertentu', 3, '', 7, 1),
(245, '2020-06-17 19:13:02.095461', '1', 'TemplateSoal object (1)', 3, '', 13, 1),
(246, '2020-06-22 07:07:03.670682', '25', 'yani_PJM', 1, '[{\"added\": {}}]', 4, 1),
(247, '2020-06-22 07:07:28.687509', '26', 'Yani_penulis', 1, '[{\"added\": {}}]', 4, 1),
(248, '2020-06-22 07:08:16.353145', '26', 'yani_penulis', 2, '[{\"changed\": {\"fields\": [\"username\", \"first_name\", \"last_name\", \"groups\"]}}]', 4, 1),
(249, '2020-06-22 07:08:41.778250', '25', 'yani_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"groups\"]}}]', 4, 1),
(250, '2020-06-22 16:42:38.815468', '27', 'joshua_PJM', 1, '[{\"added\": {}}]', 4, 1),
(251, '2020-06-22 16:43:29.096671', '28', 'joshua_penulis', 1, '[{\"added\": {}}]', 4, 1),
(252, '2020-06-22 16:43:46.818422', '29', 'kezia_PJM', 1, '[{\"added\": {}}]', 4, 1),
(253, '2020-06-22 16:44:07.949140', '30', 'kezia_penulis', 1, '[{\"added\": {}}]', 4, 1),
(254, '2020-06-22 16:45:03.632620', '30', 'kezia_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(255, '2020-06-22 16:45:24.684077', '29', 'kezia_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(256, '2020-06-22 16:45:53.295445', '27', 'joshua_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(257, '2020-06-22 16:46:09.481533', '28', 'joshua_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(258, '2020-06-23 13:38:24.708471', '28', 'joshua_penulis', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(259, '2020-06-25 06:02:10.785433', '31', 'khotimatul_pjm', 1, '[{\"added\": {}}]', 4, 1),
(260, '2020-06-25 06:02:25.234038', '32', 'khotimatul_penulis', 1, '[{\"added\": {}}]', 4, 1),
(261, '2020-06-25 06:03:15.297220', '33', 'Chalimatus_PJM', 1, '[{\"added\": {}}]', 4, 1),
(262, '2020-06-25 06:03:32.803471', '34', 'Chalimatus_penulis', 1, '[{\"added\": {}}]', 4, 1),
(263, '2020-06-25 06:04:48.869243', '35', 'Syarifah_PJM', 1, '[{\"added\": {}}]', 4, 1),
(264, '2020-06-25 06:04:59.636822', '36', 'Syarifah_penulis', 1, '[{\"added\": {}}]', 4, 1),
(265, '2020-06-25 06:05:34.493079', '37', 'Abhallaali_PJM', 1, '[{\"added\": {}}]', 4, 1),
(266, '2020-06-25 06:05:48.420216', '38', 'Abhallaali_penulis', 1, '[{\"added\": {}}]', 4, 1),
(267, '2020-06-25 06:06:08.153126', '39', 'Rizka_PJM', 1, '[{\"added\": {}}]', 4, 1),
(268, '2020-06-25 06:06:19.035041', '40', 'Rizka_penulis', 1, '[{\"added\": {}}]', 4, 1),
(269, '2020-06-25 06:06:47.449424', '41', 'Aulia_PJM', 1, '[{\"added\": {}}]', 4, 1),
(270, '2020-06-25 06:06:57.473410', '42', 'Aulia_penulis', 1, '[{\"added\": {}}]', 4, 1),
(271, '2020-06-25 06:07:29.155936', '43', 'Lutfiyah_PJM', 1, '[{\"added\": {}}]', 4, 1),
(272, '2020-06-25 06:07:42.437613', '44', 'Lutfiyah_Penulis', 1, '[{\"added\": {}}]', 4, 1),
(273, '2020-06-25 06:08:03.977783', '45', 'Nurul_PJM', 1, '[{\"added\": {}}]', 4, 1),
(274, '2020-06-25 06:08:20.487357', '46', 'Nurul_Penulis', 1, '[{\"added\": {}}]', 4, 1),
(275, '2020-06-25 06:08:43.120002', '47', 'UmiFatihah_PJM', 1, '[{\"added\": {}}]', 4, 1),
(276, '2020-06-25 06:09:05.333093', '48', 'UmiFatihah', 1, '[{\"added\": {}}]', 4, 1),
(277, '2020-06-25 06:09:24.118178', '48', 'UmiFatihah_Penulis', 2, '[{\"changed\": {\"fields\": [\"username\", \"groups\"]}}]', 4, 1),
(278, '2020-06-25 06:09:55.023860', '49', 'Umniyyatur_PJM', 1, '[{\"added\": {}}]', 4, 1),
(279, '2020-06-25 06:10:10.670810', '50', 'Umniyyatur_penulis', 1, '[{\"added\": {}}]', 4, 1),
(280, '2020-06-25 06:10:34.686898', '51', 'Esti_PJM', 1, '[{\"added\": {}}]', 4, 1),
(281, '2020-06-25 06:10:46.923257', '52', 'Esti_Penulis', 1, '[{\"added\": {}}]', 4, 1),
(282, '2020-06-25 06:11:11.014377', '53', 'Teny_PJM', 1, '[{\"added\": {}}]', 4, 1),
(283, '2020-06-25 06:11:21.844499', '54', 'Teny_Penulis', 1, '[{\"added\": {}}]', 4, 1),
(284, '2020-06-25 06:11:38.880627', '55', 'UmiLatifah_PJM', 1, '[{\"added\": {}}]', 4, 1),
(285, '2020-06-25 06:11:52.418546', '56', 'UmiLatifah_Penulis', 1, '[{\"added\": {}}]', 4, 1),
(286, '2020-06-25 06:12:20.090414', '57', 'Ririn_PJM', 1, '[{\"added\": {}}]', 4, 1),
(287, '2020-06-25 06:12:33.670280', '58', 'Ririn_Penulis', 1, '[{\"added\": {}}]', 4, 1),
(288, '2020-06-25 06:12:57.967757', '59', 'AyuPusvita_PJM', 1, '[{\"added\": {}}]', 4, 1),
(289, '2020-06-25 06:13:37.547359', '59', 'AyuPusvita_PJM', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(290, '2020-06-25 06:14:13.215794', '60', 'AyuPusvita_Penulis', 1, '[{\"added\": {}}]', 4, 1),
(291, '2020-06-25 06:14:38.331186', '61', 'Febry_PJM', 1, '[{\"added\": {}}]', 4, 1),
(292, '2020-06-25 06:14:56.185760', '62', 'Febry_Penulis', 1, '[{\"added\": {}}]', 4, 1),
(293, '2020-06-25 06:15:24.402947', '32', 'khotimatul_penulis', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(294, '2020-06-25 06:15:46.409296', '31', 'khotimatul_pjm', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(295, '2020-06-25 06:16:14.510781', '34', 'Chalimatus_penulis', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(296, '2020-06-25 06:16:27.396543', '33', 'Chalimatus_PJM', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(297, '2020-06-25 06:18:04.057993', '38', 'Abhallaali_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"email\", \"groups\"]}}]', 4, 1),
(298, '2020-06-25 06:18:21.129295', '37', 'Abhallaali_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"email\", \"groups\"]}}]', 4, 1),
(299, '2020-06-25 06:19:05.863481', '42', 'Aulia_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(300, '2020-06-25 06:19:28.688540', '41', 'Aulia_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(301, '2020-06-25 06:20:02.689451', '60', 'AyuPusvita_Penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(302, '2020-06-25 06:20:30.660776', '59', 'AyuPusvita_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(303, '2020-06-25 06:21:16.042569', '34', 'Chalimatus_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(304, '2020-06-25 06:21:54.255185', '33', 'Chalimatus_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(305, '2020-06-25 06:22:32.392185', '51', 'Esti_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(306, '2020-06-25 06:22:56.489390', '52', 'Esti_Penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(307, '2020-06-25 06:24:00.842226', '62', 'Febry_Penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(308, '2020-06-25 06:24:25.122405', '61', 'Febry_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(309, '2020-06-25 06:25:02.960166', '32', 'khotimatul_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(310, '2020-06-25 06:25:23.468348', '31', 'khotimatul_pjm', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(311, '2020-06-25 06:26:17.600862', '44', 'Lutfiyah_Penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(312, '2020-06-25 06:26:39.835952', '43', 'Lutfiyah_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(313, '2020-06-25 06:27:30.567501', '46', 'Nurul_Penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(314, '2020-06-25 06:27:55.572973', '45', 'Nurul_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(315, '2020-06-25 06:28:31.668887', '58', 'Ririn_Penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(316, '2020-06-25 06:28:58.678731', '57', 'Ririn_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(317, '2020-06-25 06:29:40.854470', '40', 'Rizka_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(318, '2020-06-25 06:30:22.181625', '39', 'Rizka_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(319, '2020-06-25 06:34:09.856288', '36', 'Syarifah_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(320, '2020-06-25 06:34:48.986679', '35', 'Syarifah_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(321, '2020-06-25 06:36:08.705538', '54', 'Teny_Penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(322, '2020-06-25 06:36:26.974733', '53', 'Teny_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(323, '2020-06-25 06:37:10.578510', '48', 'UmiFatihah_Penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(324, '2020-06-25 06:37:32.219179', '47', 'UmiFatihah_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(325, '2020-06-25 06:38:10.061664', '56', 'UmiLatifah_Penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(326, '2020-06-25 06:38:26.783155', '55', 'UmiLatifah_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(327, '2020-06-25 06:39:15.498653', '50', 'Umniyyatur_penulis', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(328, '2020-06-25 06:39:42.063743', '49', 'Umniyyatur_PJM', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"groups\"]}}]', 4, 1),
(329, '2020-07-06 01:10:15.625063', '6', 'ahmad_reviewer', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(330, '2021-04-05 18:51:38.307290', '63', 'superdeal4m', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(331, '2021-04-05 18:52:57.735442', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"is_staff\", \"is_superuser\", \"groups\", \"user_permissions\"]}}]', 4, 1),
(332, '2021-04-05 18:53:58.649990', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 63),
(333, '2021-04-07 19:28:35.201848', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(334, '2021-04-09 02:14:34.190484', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 63),
(335, '2021-04-09 02:14:56.640476', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 63),
(336, '2021-04-15 19:24:49.526648', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(337, '2021-04-15 20:15:33.624105', '12', 'bambang_reviewer', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(338, '2021-04-15 20:15:37.396802', '12', 'bambang_reviewer', 2, '[]', 4, 1),
(339, '2021-04-15 20:16:17.767391', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(340, '2021-04-15 20:17:15.906814', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(341, '2021-04-15 20:18:28.432852', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(342, '2021-04-17 19:10:15.281454', '63', 'superdeal4m', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(343, '2021-04-17 19:10:34.155745', '64', 'superdeal2m', 1, '[{\"added\": {}}]', 4, 1),
(344, '2021-04-17 19:11:04.485852', '64', 'superdeal2m', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]', 4, 1),
(345, '2021-05-30 22:59:36.754009', '65', 'Creator_1', 1, '[{\"added\": {}}]', 4, 1),
(346, '2021-05-30 23:00:43.372021', '65', 'Creator_1', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(347, '2021-05-30 23:01:50.510154', '66', 'Creator_2', 1, '[{\"added\": {}}]', 4, 1),
(348, '2021-05-30 23:01:57.385910', '66', 'Creator_2', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(349, '2021-05-30 23:02:13.185870', '67', 'Creator_3', 1, '[{\"added\": {}}]', 4, 1),
(350, '2021-05-30 23:02:20.048964', '67', 'Creator_3', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(351, '2021-05-30 23:02:35.255154', '68', 'Creator_4', 1, '[{\"added\": {}}]', 4, 1),
(352, '2021-05-30 23:02:41.149909', '68', 'Creator_4', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(353, '2021-05-30 23:04:24.348898', '69', 'PJM_1', 1, '[{\"added\": {}}]', 4, 1),
(354, '2021-05-30 23:04:31.563797', '69', 'PJM_1', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(355, '2021-05-30 23:04:57.127955', '70', 'PJM_2', 1, '[{\"added\": {}}]', 4, 1),
(356, '2021-05-30 23:05:01.805581', '70', 'PJM_2', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(357, '2021-05-30 23:05:15.493159', '71', 'PJM_3', 1, '[{\"added\": {}}]', 4, 1),
(358, '2021-05-30 23:05:20.620323', '71', 'PJM_3', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(359, '2021-05-30 23:05:33.451330', '72', 'PJM_4', 1, '[{\"added\": {}}]', 4, 1),
(360, '2021-05-30 23:05:38.026773', '72', 'PJM_4', 2, '[{\"changed\": {\"fields\": [\"groups\"]}}]', 4, 1),
(361, '2021-05-31 03:36:35.582290', '65', 'creator_1', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 4, 1),
(362, '2021-05-31 03:36:49.225784', '66', 'creator_2', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 4, 1),
(363, '2021-05-31 03:36:56.334763', '67', 'creator_3', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 4, 1),
(364, '2021-05-31 03:37:04.253583', '68', 'creator_4', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 4, 1),
(365, '2021-05-31 03:37:26.735451', '69', 'PJM_1', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(366, '2021-05-31 03:37:35.524595', '69', 'PJM_1', 2, '[]', 4, 1),
(367, '2021-05-31 03:37:51.994553', '70', 'PJM_2', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(368, '2021-05-31 03:37:55.147112', '70', 'PJM_2', 2, '[]', 4, 1),
(369, '2021-05-31 03:38:08.872413', '71', 'PJM_3', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(370, '2021-05-31 03:38:11.887340', '71', 'PJM_3', 2, '[]', 4, 1),
(371, '2021-05-31 03:38:26.978480', '72', 'PJM_4', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(372, '2021-05-31 03:38:30.858104', '72', 'PJM_4', 2, '[]', 4, 1),
(373, '2021-05-31 03:39:30.382898', '69', 'pjm_1', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 4, 1),
(374, '2021-05-31 03:39:41.630813', '70', 'pjm_2', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 4, 1),
(375, '2021-05-31 03:39:48.771715', '71', 'pjm_3', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 4, 1),
(376, '2021-05-31 03:39:59.477105', '72', 'pjm_4', 2, '[{\"changed\": {\"fields\": [\"username\"]}}]', 4, 1),
(377, '2021-06-20 10:53:38.752112', '1', 'SO(a) Fundamental and Engineering Knowledge', 2, '[{\"changed\": {\"fields\": [\"matkul\"]}}]', 20, 1),
(378, '2021-06-20 10:53:42.933931', '2', 'SO(b) Development of Engineering Solution', 2, '[{\"changed\": {\"fields\": [\"matkul\"]}}]', 20, 1),
(379, '2021-06-20 10:54:12.839453', '2', 'SO(b) Development of Engineering Solution', 2, '[]', 20, 1);

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
(5, 'contenttypes', 'contenttype'),
(14, 'quiz', 'generatedsoal'),
(7, 'quiz', 'indikator'),
(15, 'quiz', 'indikator_user'),
(8, 'quiz', 'kompetensidasar'),
(21, 'quiz', 'learningoutcome'),
(22, 'quiz', 'matakuliah'),
(9, 'quiz', 'materi'),
(16, 'quiz', 'paketsoal'),
(24, 'quiz', 'penugasan'),
(10, 'quiz', 'profile'),
(19, 'quiz', 'revisisoal'),
(11, 'quiz', 'soal'),
(17, 'quiz', 'soal_paketsoal'),
(12, 'quiz', 'standarkompetensi'),
(18, 'quiz', 'statussoal'),
(20, 'quiz', 'studentoutcome'),
(13, 'quiz', 'templatesoal'),
(23, 'quiz', 'topic'),
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
(1, 'contenttypes', '0001_initial', '2020-05-09 17:42:56.344588'),
(2, 'auth', '0001_initial', '2020-05-09 17:43:02.354627'),
(3, 'admin', '0001_initial', '2020-05-09 17:43:06.150266'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-05-09 17:43:06.815989'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-09 17:43:07.291177'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-05-09 17:43:10.305945'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-05-09 17:43:11.642658'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-05-09 17:43:13.350978'),
(9, 'auth', '0004_alter_user_username_opts', '2020-05-09 17:43:13.395211'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-05-09 17:43:15.209438'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-05-09 17:43:15.400299'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-05-09 17:43:15.673618'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-05-09 17:43:16.270381'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-05-09 17:43:16.626867'),
(15, 'quiz', '0001_initial', '2020-05-09 17:43:25.368740'),
(16, 'quiz', '0002_standarkompetensi_aaasuuu', '2020-05-09 17:43:25.593000'),
(17, 'sessions', '0001_initial', '2020-05-09 17:43:29.410097'),
(18, 'quiz', '0003_remove_standarkompetensi_aaasuuu', '2020-05-09 17:44:22.052605'),
(19, 'quiz', '0004_standarkompetensi_aaasuu', '2020-05-09 17:48:39.956998'),
(20, 'quiz', '0005_remove_standarkompetensi_aaasuu', '2020-05-09 17:48:57.065296'),
(21, 'quiz', '0006_auto_20200510_2344', '2020-05-10 16:45:02.328307'),
(22, 'quiz', '0002_standarkompetensi_short', '2020-05-13 12:53:27.005060'),
(23, 'quiz', '0003_auto_20200516_1702', '2020-05-16 10:03:22.066676'),
(24, 'quiz', '0004_auto_20200517_0941', '2020-05-17 02:42:01.788631'),
(25, 'quiz', '0005_auto_20200517_1501', '2020-05-17 08:01:11.302485'),
(26, 'quiz', '0006_auto_20200517_1504', '2020-05-17 08:04:22.485426'),
(27, 'quiz', '0007_revisisoal', '2020-05-17 17:21:09.203624'),
(28, 'quiz', '0008_paketsoal_generate_date', '2020-05-17 21:53:51.592800'),
(29, 'quiz', '0009_auto_20200518_2105', '2020-05-18 14:05:47.532294'),
(30, 'quiz', '0010_auto_20200518_2242', '2020-05-18 15:42:51.776658'),
(31, 'quiz', '0011_paketsoal_kurikulum', '2020-05-27 05:29:51.597923'),
(32, 'quiz', '0012_auto_20200527_1431', '2020-05-27 07:31:15.556531'),
(33, 'quiz', '0013_auto_20200527_1614', '2020-05-27 09:14:54.446851'),
(34, 'quiz', '0014_auto_20200527_1909', '2020-05-27 12:09:46.544925'),
(35, 'quiz', '0015_auto_20200527_2145', '2020-05-27 14:45:31.176382'),
(36, 'quiz', '0016_soal_variabel_gambar', '2020-05-29 13:03:52.607016'),
(37, 'quiz', '0017_auto_20200530_2128', '2020-05-30 14:28:32.095272'),
(38, 'quiz', '0018_auto_20200602_2054', '2020-06-03 03:14:11.080699'),
(39, 'quiz', '0019_auto_20210418_0306', '2021-04-17 19:07:04.913533'),
(41, 'quiz', '0020_studentoutcome', '2021-04-17 19:56:06.345742'),
(42, 'quiz', '0021_learningoutcome', '2021-04-17 20:40:59.188322'),
(43, 'quiz', '0022_auto_20210418_2246', '2021-04-18 18:50:17.662485'),
(44, 'quiz', '0023_matakuliah', '2021-04-18 18:50:17.700384'),
(45, 'quiz', '0024_auto_20210419_0247', '2021-04-18 18:50:17.834027'),
(46, 'quiz', '0025_topic', '2021-04-18 18:50:17.870930'),
(62, 'quiz', '0026_matakuliah_kode_matkul', '2021-04-21 20:20:08.777434'),
(63, 'quiz', '0027_matakuliah_so', '2021-04-21 20:20:19.892777'),
(64, 'quiz', '0028_auto_20210422_0424', '2021-04-21 20:24:50.112411'),
(65, 'quiz', '0029_auto_20210422_0428', '2021-04-21 20:29:00.047429'),
(67, 'quiz', '0030_auto_20210423_0312', '2021-04-22 19:17:59.973356'),
(68, 'quiz', '0031_remove_indikator_user_indikator', '2021-04-27 05:57:42.884826'),
(69, 'quiz', '0032_indikator_user_indikator', '2021-04-27 05:58:39.639251'),
(70, 'quiz', '0033_auto_20210427_1958', '2021-04-27 12:00:02.374937'),
(71, 'quiz', '0034_remove_soal_indikator', '2021-04-27 12:00:02.459708'),
(72, 'quiz', '0035_soal_indikator', '2021-04-27 12:01:06.581359'),
(73, 'quiz', '0002_paketsoal_kurikulum', '2021-05-26 12:03:04.083759'),
(74, 'quiz', '0003_auto_20210526_2259', '2021-05-26 14:59:47.544277'),
(75, 'quiz', '0004_auto_20210526_2342', '2021-05-26 15:42:06.650816'),
(76, 'quiz', '0005_auto_20210526_2343', '2021-05-26 15:43:49.474957'),
(77, 'quiz', '0006_auto_20210527_0235', '2021-05-26 18:35:48.437726'),
(78, 'quiz', '0007_auto_20210528_2309', '2021-05-30 22:51:57.200811'),
(79, 'quiz', '0008_revisisoal_id_user', '2021-05-30 22:51:57.292112'),
(80, 'quiz', '0009_soal_rebuild', '2021-06-06 20:45:38.711652'),
(81, 'quiz', '0010_remove_soal_rebuild', '2021-06-06 20:46:38.215208'),
(82, 'quiz', '0019_merge_20210531_1038', '2021-06-20 10:16:35.850132'),
(83, 'quiz', '0020_auto_20210531_1038', '2021-06-20 10:16:36.010729'),
(84, 'quiz', '0021_merge_20210620_1816', '2021-06-20 10:16:36.016687'),
(85, 'quiz', '0022_auto_20210620_1820', '2021-06-20 10:20:22.923759'),
(86, 'quiz', '0023_auto_20210620_1826', '2021-06-20 10:26:35.881443');

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
('1j2o4xgyoyibnhq0rf2jsx5e6yblvogd', 'Mzg2ZTRiYmQ2ZTE3ODI1ZTQzNTZiMTYyYThkMWZjM2MzNTVlM2I2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIn0=', '2020-06-09 13:53:01.930371'),
('2i8to5pm67mk4gnlvut61fkq2iffovkx', 'MDI4ZDBlMDVkOTQ2YjcwNDdlY2JlYmM2M2M4ODlmYzk1NGQwYmU3Mjp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMDRjNGU2NzkyODkyODI3ZDU0ZmMwNDBlZmU5NjExZmE5MzYyZjViZCIsImludXNfaWQiOiI2MCIsImluZGlrYXRvcl9pZCI6IjU5Iiwic3RlbSI6Ikppa2Egc2luIFt4XSA9IFt5XSAsbWFrYSBuaWxhaSBjb3MgW3pdPS4uLiIsImFtb3VudCI6IjUiLCJhcnJhbmdlIjoibWFwcGluZyIsInZhcl92YWx1ZSI6Ilt4XT0gMCwzMCw0NSw2MCw5MDtcclxuW3ldPSAwLDAuNSwwLjcwNywwLjg2NiwxO1xyXG5bel09IDkwLDYwLDQ1LDMwLDAiLCJmb3JtdWxhIjoiW2JlbmFyXT0oW3ldKTtcclxuW3NhbGFoMV09IChbYmVuYXJdKzEpO1xyXG5bc2FsYWgyXT0gKFtiZW5hcl0tMSk7XHJcbltzYWxhaDNdPSgxLVtiZW5hcl0pO1xyXG5bc2FsYWg0XT0oLVtiZW5hcl0pIiwib3B0aW9uIjoiYS4gW3NhbGFoMV07PGJyIC8+XHJcbmIuIFtzYWxhaDJdOzxiciAvPlxyXG5jLiBbYmVuYXJdOzxiciAvPlxyXG5kLiBbc2FsYWgzXTs8YnIgLz5cclxuZS4gW3NhbGFoNF0iLCJ2YXJfZm9ybV92YWx1ZSI6Ilt4XT1cblt5XT1cblt6XT1cbiIsInF1ZXN0aW9uIjpbIkppa2Egc2luIDAgPSAwICxtYWthIG5pbGFpIGNvcyA5MD0uLi4iLCJKaWthIHNpbiAzMCA9IDAuNSAsbWFrYSBuaWxhaSBjb3MgNjA9Li4uIiwiSmlrYSBzaW4gNDUgPSAwLjcwNyAsbWFrYSBuaWxhaSBjb3MgNDU9Li4uIiwiSmlrYSBzaW4gNjAgPSAwLjg2NiAsbWFrYSBuaWxhaSBjb3MgMzA9Li4uIiwiSmlrYSBzaW4gOTAgPSAxICxtYWthIG5pbGFpIGNvcyAwPS4uLiJdLCJhbnN3ZXIiOltbImEuIDEiLCI8YnIgLz5cclxuYi4gLTEiLCI8YnIgLz5cclxuYy4gMCIsIjxiciAvPlxyXG5kLiAxIiwiPGJyIC8+XHJcbmUuIDAiXSxbImEuIDEuNSIsIjxiciAvPlxyXG5iLiAtMC41IiwiPGJyIC8+XHJcbmMuIDAuNSIsIjxiciAvPlxyXG5kLiAwLjUiLCI8YnIgLz5cclxuZS4gLTAuNSJdLFsiYS4gMS43MDciLCI8YnIgLz5cclxuYi4gLTAuMjkzIiwiPGJyIC8+XHJcbmMuIDAuNzA3IiwiPGJyIC8+XHJcbmQuIDAuMjkzIiwiPGJyIC8+XHJcbmUuIC0wLjcwNyJdLFsiYS4gMS44NjYiLCI8YnIgLz5cclxuYi4gLTAuMTM0IiwiPGJyIC8+XHJcbmMuIDAuODY2IiwiPGJyIC8+XHJcbmQuIDAuMTM0IiwiPGJyIC8+XHJcbmUuIC0wLjg2NiJdLFsiYS4gMiIsIjxiciAvPlxyXG5iLiAwIiwiPGJyIC8+XHJcbmMuIDEiLCI8YnIgLz5cclxuZC4gMCIsIjxiciAvPlxyXG5lLiAtMSJdXSwiaW1nX3ZhciI6Ii0tLSIsInZhcl9uYW1lIjpbIlt4XSIsIlt5XSIsIlt6XSJdfQ==', '2020-07-07 15:12:29.892447'),
('3x6u60qf2mqe1nhdrk1h732mwxge11y3', 'MTdkODViMmRmNThiMDk4MmNmY2I1OTVkZTA2MDE3ZmU4OTQ5MjBhMDp7Il9hdXRoX3VzZXJfaWQiOiI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTIzZGRhYTI0NGIwZGNhZDQ1MWRkZjdmYjEwNzhjMTQzYzllYTE1ZiIsImludXNfaWQiOiIxIiwicGVudWdhc2FuX2lkIjoiMyIsInNvYWxfaWQiOiI5Iiwic3RlbSI6IlRFU1RFUiEhISZuYnNwO1RFU1RFUiEhISZuYnNwO1RFU1RFUiEhISBURVNURVIhISEgVEVTVEVSISEhPGJyIC8+XHJcbjxiciAvPlxyXG48YnIgLz5cclxuRGlrZXR1aGkgYmFyaXNhbiBhcml0bWF0aWthIFthXSwgW2JdLCBbY10sIC4uLi4sIFVuLiBUZW50dWthbiBqdW1sYWggMTAwIHN1a3UgcGVydGFtYSBkYXJpIGJhcmlzYW4gdGVyc2VidXQuLi4iLCJhbW91bnQiOjUsImFycmFuZ2UiOiJtYXBwaW5nIiwidmFyX3ZhbHVlIjoiW2FdPWFkcztcclxuW2JdPWFzZDtcclxuW2NdPWFzZCIsImZvcm11bGEiOiItLS0iLCJ2YXJfbmFtZSI6IlsnW2FdJywgJ1tiXScsICdbY10nXSIsIm9wdGlvbiI6InNhZGFzZCIsInRpdGxlIjoiU29hbCBDcmVhdG9yXzMgVW5pdCBTeXN0ZW0iLCJpbWdfdmFyIjoiLS0tIiwicXVlc3Rpb24iOlsiPHN0cm9uZz5URVNURVIhISEmbmJzcDtURVNURVIhISEmbmJzcDtURVNURVIhISEgVEVTVEVSISEhIFRFU1RFUiEhITxiciAvPlxyXG48YnIgLz5cclxuPGJyIC8+XHJcbkRpa2V0dWhpIGJhcmlzYW4gYXJpdG1hdGlrYSBhZHMsIGFzZCwgYXNkLCAuLi4uLCBVbi4gVGVudHVrYW4ganVtbGFoIDEwMCBzdWt1IHBlcnRhbWEgZGFyaSBiYXJpc2FuIHRlcnNlYnV0Li4uPC9zdHJvbmc+Il0sImFuc3dlciI6W1siSW5pIE9wc2kgSmF3YWJhbiJdXSwiaW5kaWthdG9yX2lkIjpudWxsLCJ2YXJfZm9ybV92YWx1ZSI6IlthXT1hZHM7XHJcbltiXT1hc2Q7XHJcbltjXT1hc2QifQ==', '2021-06-20 21:10:35.643137'),
('48fj98dk3bbs4moa5gxhuehhe9w9w1go', 'YmIxY2RlNDRkYTFjZmQzM2Q5NTM1ZGQ0NDc3MjNmYzQ4Mjk5MTAwYzp7fQ==', '2021-06-29 19:10:28.893957'),
('7p19xooevkdbhndh55wxky4udg2a7ehx', 'NWMyYWViOGZmMzUzOWQ0OGI2ODJlM2EyYTNhMDgxNWQxYjc2ZTI0ZDp7Il9hdXRoX3VzZXJfaWQiOiI2NiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTIzZGRhYTI0NGIwZGNhZDQ1MWRkZjdmYjEwNzhjMTQzYzllYTE1ZiJ9', '2021-07-04 10:54:28.404812'),
('81kagwn1pk81kla6se1xswox9x7o0659', 'YmM2MzM5NDEyN2NmMDI2YzM1YzFmNDk5MjEyMTc0YmM4NmE5Njk5NTp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDYzOWM0OWM3NjEyZjBjMGRlOWIxNzYwYWQ5OThhYzMzMTVkZmRmYiIsImludXNfaWQiOiI1NCIsImluZGlrYXRvcl9pZCI6IjUzIiwic3RlbSI6Ik5pbGFpIG1pbmltdW0gZGFyaSBmdW5nc2kmbmJzcDs8c3BhbiBjbGFzcz1cIm1hdGgtdGV4XCI+XFwoZih4KT1bYV14XjIrW2JdeCtbY11cXCk8L3NwYW4+Jm5ic3A7YWRhbGFoLi4uLiIsImFtb3VudCI6IjUiLCJhcnJhbmdlIjoibWFwcGluZyIsInZhcl92YWx1ZSI6IlthXT0xLDI7XHJcbltiXT00LC04O1xyXG5bY109OCwtMTAiLCJmb3JtdWxhIjoiW3RdPS1bYl07XHJcblt5XT0yKlthXSIsIm9wdGlvbiI6ImEuIFxcKHtbdF0gXFxvdmVyIFt5XX1cXCk7PGJyIC8+XHJcbmIuXHUwMGEwIiwidmFyX2Zvcm1fdmFsdWUiOiJbYV09MSwyO1xyXG5bYl09NCwtODtcclxuW2NdPTgsLTEwIiwicXVlc3Rpb24iOlsiTmlsYWkgbWluaW11bSBkYXJpIGZ1bmdzaSZuYnNwOzxzcGFuIGNsYXNzPVwibWF0aC10ZXhcIj5cXChmKHgpPTF4XjIrNHgrOFxcKTwvc3Bhbj4mbmJzcDthZGFsYWguLi4uIiwiTmlsYWkgbWluaW11bSBkYXJpIGZ1bmdzaSZuYnNwOzxzcGFuIGNsYXNzPVwibWF0aC10ZXhcIj5cXChmKHgpPTJ4XjIrLTh4Ky0xMFxcKTwvc3Bhbj4mbmJzcDthZGFsYWguLi4uIl0sImFuc3dlciI6W1siYS4gXFwoey00IFxcb3ZlciAyfVxcKSIsIjxiciAvPlxyXG5iLlx1MDBhMCJdLFsiYS4gXFwoezggXFxvdmVyIDR9XFwpIiwiPGJyIC8+XHJcbmIuXHUwMGEwIl1dLCJpbWdfdmFyIjoiLS0tIiwidmFyX25hbWUiOiJbJ1thXScsICdbYl0nLCAnW2NdJ10ifQ==', '2020-07-04 14:19:40.790817'),
('8g56wxcoszscwahwcx0gs50iyc9mdeqn', 'NDExYWJiZGJiNWIwNDEyNDgyNTgwYThlN2NlMGY1NjdlMjM0NDJkMzp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzcwZWI1MzhmOTg0ZGMzYTMwNmE1OTA4MTU3MThjODg0YWQ1MGM2ZCIsImlkIjoiNTQiLCJpZF9zb2FsIjoiMzYiLCJzdGVtIjoiTmlsYWkgZGFyaSA8c3BhbiBjbGFzcz1cIm1hdGgtdGV4XCI+XFwoc2luXFwpPC9zcGFuPiBbeF08c3BhbiBjbGFzcz1cIm1hdGgtdGV4XCI+XFwoXm9cXCk8L3NwYW4+Jm5ic3A7YWRhbGFoIC4uLi4iLCJhbW91bnQiOjUsImFycmFuZ2UiOiJrb21iaW5hc2kiLCJ2YXJfdmFsdWUiOiJbeF09MTIwLCAxNTAiLCJmb3JtdWxhIjoiW2JlbmFyXT1zaW5beF07XHJcbltzYWxhaDFdPWNvc1t4XTtcclxuW3NhbGFoMl09dGFuW3hdO1xyXG5bc2FsYWgzXT0xL3Npblt4XTtcclxuW3NhbGFoNF09MS9jb3NbeF0iLCJ2YXJfbmFtZSI6IlsnW3hdJ10iLCJvcHRpb24iOiJhLiBbYmVuYXJdPGJyIC8+XHJcbmIuXHUwMGEwW3NhbGFoMV08YnIgLz5cclxuYy5cdTAwYTBbc2FsYWgyXTxiciAvPlxyXG5kLiBbc2FsYWgzXTxiciAvPlxyXG5lLiBbc2FsYWg0XSIsInRpdGxlIjoicGFrZXQgYWRpdHlhX1Bha2V0XzEiLCJpbWdfdmFyIjoiLS0tIiwicXVlc3Rpb24iOlsiU2tldHNhIGdyYWZpayB1bnR1ayBmdW5nc2kmbmJzcDs8c3BhbiBjbGFzcz1cIm1hdGgtdGV4XCI+XFwoZih4KT0teF4yLTV4KzZcXCk8L3NwYW4+IGFkYWxhaCAuLi4uIiwiQWdhciBtZW1iZW50dWsgYmFyaXNhbiBhcml0bWV0aWthLCBzdWt1IGJlcmlrdXRueWEgZGFyaSBiYXJpc2FuIDQsIDgsIDEyLCAuLi4uIiwiTmlsYWkgZGFyaSA8c3BhbiBjbGFzcz1cIm1hdGgtdGV4XCI+XFwoc2luXFwpPC9zcGFuPiAxMjA8c3BhbiBjbGFzcz1cIm1hdGgtdGV4XCI+XFwoXm9cXCk8L3NwYW4+Jm5ic3A7YWRhbGFoIC4uLi4iXSwiYW5zd2VyIjpbWyJhLiA8aW1nIHNyYz1cImh0dHBzOi8vZmlyZWJhc2VzdG9yYWdlLmdvb2dsZWFwaXMuY29tL3YwL2IvYWlneXVqaWVtLWltYWdlLmFwcHNwb3QuY29tL28vaW1hZ2VzJTJGMTU5MjY1ODY1My4xMDI2NmQuUE5HP2FsdD1tZWRpYVwiPjxiciAvPlxyXG5iLiA8aW1nIHNyYz1cImh0dHBzOi8vZmlyZWJhc2VzdG9yYWdlLmdvb2dsZWFwaXMuY29tL3YwL2IvYWlneXVqaWVtLWltYWdlLmFwcHNwb3QuY29tL28vaW1hZ2VzJTJGMTU5MjY1ODY5NS45MDUyODJhLlBORz9hbHQ9bWVkaWFcIj48YnIgLz5cclxuYy4gPGltZyBzcmM9XCJodHRwczovL2ZpcmViYXNlc3RvcmFnZS5nb29nbGVhcGlzLmNvbS92MC9iL2FpZ3l1amllbS1pbWFnZS5hcHBzcG90LmNvbS9vL2ltYWdlcyUyRjE1OTI2NTg3MDguMDY1MDA5Yi5QTkc/YWx0PW1lZGlhXCI+PGJyIC8+XHJcbmQuIDxpbWcgc3JjPVwiaHR0cHM6Ly9maXJlYmFzZXN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vdjAvYi9haWd5dWppZW0taW1hZ2UuYXBwc3BvdC5jb20vby9pbWFnZXMlMkYxNTkyNjU4NzgzLjIyMzc0M2MuUE5HP2FsdD1tZWRpYVwiPjxiciAvPlxyXG5lLiA8aW1nIHNyYz1cImh0dHBzOi8vZmlyZWJhc2VzdG9yYWdlLmdvb2dsZWFwaXMuY29tL3YwL2IvYWlneXVqaWVtLWltYWdlLmFwcHNwb3QuY29tL28vaW1hZ2VzJTJGMTU5MjY1ODc5NS40MjQyNmYuUE5HP2FsdD1tZWRpYVwiPiJdLFsiYS4gMTc8YnIgLz5cclxuYi4gMTg8YnIgLz5cclxuYy4gMjg8YnIgLz5cclxuZC4gMTY8YnIgLz5cclxuZS4gMjAiXSxbImEuIDAuODY2PGJyIC8+XHJcbmIuXHUwMGEwLTAuNTxiciAvPlxyXG5jLlx1MDBhMC0xLjczMjE8YnIgLz5cclxuZC4gMS4xNTQ3PGJyIC8+XHJcbmUuIC0yIl1dLCJwYWtldF9zb2FsX2lkIjoyMiwiaW5kaWthdG9yIjoiNTEiLCJwYXJlbnQiOiIzNiIsIm92ZXJsb2FkIjoiIn0=', '2020-07-04 13:35:49.195198'),
('8jl28qa4xjz4oz0i31l0bwvl2nbowa2m', 'MWYyNjdiMmM5OTRiOGU3MzcyM2QxMjQ0NDNhNTk5ZmExYTgzMzg5ZTp7Il9hdXRoX3VzZXJfaWQiOiI2NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjRmODA1NjA5ZjhkOWY1ZDU3NWE3NzYwZGQyZTllOTM0YTBmZWVhNiIsImlkIjoiMTAiLCJpZF9zb2FsIjoiNTQiLCJzdGVtIjoiSGFyZ2EgdGlrZXQga2VsYXMgSSBkYWxhbSBmaW5hbCBQaWFsYSBQcmVzaWRlbiAyMDE4IGFkYWxhaCBScCA1MDAuMDAwLDAwLiBQYW5pdGlhIG1lbnllZGlha2FuIFt4XSBiYXJpcyB1bnR1ayBrZWxhcyBJLCBkZW5nYW4gcmluY2lhbiBwYWRhIGJhcmlzIHBlcnRhbWEgdGVyZGFwYXQgW2FdIGt1cnNpLCBiYXJpcyBrZWR1YSBbYTJdIGt1cnNpLCBwYWRhIGJhcmlzIGtldGlnYSBbYTNdIGt1cnNpIGRhbiBzZXRlcnVzbnlhLiBKaWthIGt1cnNpIHRlcmlzaSBzZW11YSBwYWRhIGtlbGFzIHRlcnNlYnV0LCBtYWthIHBlbmRhcGF0YW4geWFuZyBkaXRlcmltYSBkYXJpIGtlbGFzIEkgYWRhbGFoLi4uLjxiciAvPlxyXG4mbmJzcDsiLCJhbW91bnQiOjUsImFycmFuZ2UiOiJtYXBwaW5nIiwidmFyX3ZhbHVlIjoiW3hdPSA2LDgsIDEwO1xyXG5bYV09IDYsOCwgMTA7XHJcblthMl09IDgsIDEwLCAxMjtcclxuW2EzXT0gMTAsIDEyLCAxNCIsImZvcm11bGEiOiJbYl0gPSBbYTJdLVthXTtcclxuW24xXSA9IFt4XS0xO1xyXG5bU25dID0gKFt4XS8yKSooMipbYV0rW24xXSpbYl0pO1xyXG5bYmVuYXJdID0gW1NuXSo1MDAwMDA7XHJcbltzYWxhaF0gPSBbU25dKjEwMDAwMDtcclxuW3NhbGFoMl0gPSBbU25dKjI1MDAwMDtcclxuW3NhbGFoM10gPSBbU25dKjEwMDAwMDAiLCJ2YXJfbmFtZSI6IlsnW3hdJywgJ1thXScsICdbYTJdJywgJ1thM10nXSIsIm9wdGlvbiI6ImEuIFtiZW5hcl08YnIgLz48YnIgLz5cclxuYi4gW3NhbGFoXTxiciAvPjxiciAvPlxyXG5jLiBbc2FsYWgyXTxiciAvPjxiciAvPlxyXG5kLiBbc2FsYWgzXTxiciAvPlxyXG5cdTAwYTAiLCJ0aXRsZSI6InRlc3Rlcl9QYWtldF8xIiwiaW1nX3ZhciI6Ii0tLSIsInF1ZXN0aW9uIjpbIkhhcmdhIHRpa2V0IGtlbGFzIEkgZGFsYW0gZmluYWwgUGlhbGEgUHJlc2lkZW4gMjAxOCBhZGFsYWggUnAgNTAwLjAwMCwwMC4gUGFuaXRpYSBtZW55ZWRpYWthbiAxMCBiYXJpcyB1bnR1ayBrZWxhcyBJLCBkZW5nYW4gcmluY2lhbiBwYWRhIGJhcmlzIHBlcnRhbWEgdGVyZGFwYXQgMTAga3Vyc2ksIGJhcmlzIGtlZHVhIDEyIGt1cnNpLCBwYWRhIGJhcmlzIGtldGlnYSAxNCBrdXJzaSBkYW4gc2V0ZXJ1c255YS4gSmlrYSBrdXJzaSB0ZXJpc2kgc2VtdWEgcGFkYSBrZWxhcyB0ZXJzZWJ1dCwgbWFrYSBwZW5kYXBhdGFuIHlhbmcgZGl0ZXJpbWEgZGFyaSBrZWxhcyBJIGFkYWxhaC4uLi48YnIgLz5cclxuJm5ic3A7Il0sImFuc3dlciI6W1siYS4gOTUwMDAwMDA8YnIgLz48YnIgLz5cclxuYi4gMTkwMDAwMDA8YnIgLz48YnIgLz5cclxuYy4gNDc1MDAwMDA8YnIgLz48YnIgLz5cclxuZC4gMTkwMDAwMDAwPGJyIC8+XHJcblx1MDBhMCJdXSwicGFrZXRfc29hbF9pZCI6MzN9', '2021-06-10 12:21:26.990791'),
('aidbxd50emx34h3hk4y7510pt8pev29q', 'Njg3ZTU3MDhlMDY3NWZlNGNjMmFlMDhkY2I2MzhlMmU4MDIwZTMzNjp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTgyY2MxZTc4NWY5NTYyNjRmNGY2NTU1MjRlZTQwYWZiMWIwOGVhMCJ9', '2020-06-23 04:42:36.742982'),
('ak455y1wpmkhfj1hsb5bxux1ahf90pnz', 'NzZlOTg1NThhMGFiODFlMjM0YzM0YjgzMTI1ZDQzNjViODBlMDRjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIiwic3RlbSI6IiIsImFtb3VudCI6IiIsImFycmFuZ2UiOiIiLCJ2YXJfdmFsdWUiOiIiLCJmb3JtdWxhIjoiIiwib3B0aW9uIjoiIiwidmFyX2Zvcm1fdmFsdWUiOiIiLCJxdWVzdGlvbiI6IiIsImFuc3dlciI6IiJ9', '2020-05-27 13:01:04.622264'),
('al7fe3n0az4596whxfgfqy77x3a3pgsy', 'MTdkMGQ4YWFjNjU1MjI2N2NjOGE5NmNjMDkyOTRjYjYxODRmNTI4MDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjg4NDBjNDJhODhmNjI5MDcwZDBkYWM2ODU1ZTNmMmEyY2U4MDVhIn0=', '2020-06-17 22:29:08.399809'),
('brwfylenllkl5byxxnf2vsbdhgmwn768', 'MzEwNGMyNWFjZDA1M2UxNDVmMTM0NjViNGFhOGNhNzU1YzZlZjBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIiwiaW51c19pZCI6IjciLCJpbmRpa2F0b3JfaWQiOiIxMCIsInN0ZW0iOiIiLCJhbW91bnQiOiIiLCJhcnJhbmdlIjoiIiwidmFyX3ZhbHVlIjoiIiwiZm9ybXVsYSI6IiIsIm9wdGlvbiI6IiIsInZhcl9mb3JtX3ZhbHVlIjoiIiwicXVlc3Rpb24iOiIiLCJhbnN3ZXIiOiIiLCJ2YXJfbmFtZSI6IlsnW2FdJywgJ1tjXSddIiwidGl0bGUiOiJTb2FsIEtpdGEifQ==', '2020-06-10 13:11:57.315751'),
('cquk83egce956krwnea92l7l6xz1dnds', 'MTdkMGQ4YWFjNjU1MjI2N2NjOGE5NmNjMDkyOTRjYjYxODRmNTI4MDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjg4NDBjNDJhODhmNjI5MDcwZDBkYWM2ODU1ZTNmMmEyY2U4MDVhIn0=', '2020-06-29 07:44:58.213220'),
('dp9c39lyk58qwmvebf2xz9hmyrxb2ror', 'ZjUzNTQyYjQwNTQ5MGVmNTYyZDY3ZDgxZGNmOThiYmY2MmE1M2NjNjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYjU2ZmM4ZGEwZTExMWYxMzQ2M2Y3ZjNhODI2MWU0ZmZjYTIzMmRlIn0=', '2020-06-18 10:41:21.868944'),
('exk686r1mncn0ndcfxdocoue8tibr4ym', 'YTIyNmFhM2FlMzA1ZDdiMWE3ZWZhMzNjMzA5OGUyOWY4MzIxOTIzZjp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjg4NDBjNDJhODhmNjI5MDcwZDBkYWM2ODU1ZTNmMmEyY2U4MDVhIiwiaW51c19pZCI6IjI5IiwiaW5kaWthdG9yX2lkIjoiMjQiLCJzdGVtIjoiTWFuYWthaCB5YW5nIG1lcnVwYWthbiBqYXJpbmctamFyaW5nIGt1YnVzPyIsImFtb3VudCI6IjUiLCJhcnJhbmdlIjoibWFwcGluZyIsInZhcl92YWx1ZSI6IiIsImZvcm11bGEiOiItLS0iLCJ2YXJfbmFtZSI6IltdIiwib3B0aW9uIjoiYS4gW2t1YnVzXTxiciAvPlxyXG5iLiBbYjFdPGJyIC8+XHJcbmMuIFtiMl08YnIgLz5cclxuZC4gW2IzXSIsInRpdGxlIjoiQmFuZ3VuIHJ1YW5nIDIiLCJpbWdfdmFyIjoiW2t1YnVzXT1odHRwczovL2ZpcmViYXNlc3RvcmFnZS5nb29nbGVhcGlzLmNvbS92MC9iL2FpZ3l1amllbS1pbWFnZS5hcHBzcG90LmNvbS9vL2ltYWdlcyUyRjE1OTE0ODg3MjEuNzQxOTI0MTU5MTQxMzc2NS41ODA2OTZBcnRib2FyZDFfMi5qcGc/YWx0PW1lZGlhLGh0dHBzOi8vZmlyZWJhc2VzdG9yYWdlLmdvb2dsZWFwaXMuY29tL3YwL2IvYWlneXVqaWVtLWltYWdlLmFwcHNwb3QuY29tL28vaW1hZ2VzJTJGMTU5MTQ4ODcyMi40NTExMzYxNTkxNDEzNzY1LjAwNTA1NEFydGJvYXJkMS5qcGc/YWx0PW1lZGlhOyBbYjFdPWh0dHBzOi8vZmlyZWJhc2VzdG9yYWdlLmdvb2dsZWFwaXMuY29tL3YwL2IvYWlneXVqaWVtLWltYWdlLmFwcHNwb3QuY29tL28vaW1hZ2VzJTJGMTU5MTQ4ODczMC43OTA3NzcxNTkxNDEzNzgxLjcwNjk2OUFydGJvYXJkMl8yLmpwZz9hbHQ9bWVkaWEsaHR0cHM6Ly9maXJlYmFzZXN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vdjAvYi9haWd5dWppZW0taW1hZ2UuYXBwc3BvdC5jb20vby9pbWFnZXMlMkYxNTkxNDg4NzMxLjM4MDA2NTE1OTE0MTM3ODEuMTMwMTU4QXJ0Ym9hcmQyLmpwZz9hbHQ9bWVkaWE7IFtiMl09aHR0cHM6Ly9maXJlYmFzZXN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vdjAvYi9haWd5dWppZW0taW1hZ2UuYXBwc3BvdC5jb20vby9pbWFnZXMlMkYxNTkxNDg4NzM5LjMzNjQzMzE1OTE0MTM3OTMuNjI0MDgyQXJ0Ym9hcmQyXzUuanBnP2FsdD1tZWRpYSxodHRwczovL2ZpcmViYXNlc3RvcmFnZS5nb29nbGVhcGlzLmNvbS92MC9iL2FpZ3l1amllbS1pbWFnZS5hcHBzcG90LmNvbS9vL2ltYWdlcyUyRjE1OTE0ODg3MzkuODk5MTE1MTU5MTQxMzc5My4wNTg5ODNBcnRib2FyZDJfNC5qcGc/YWx0PW1lZGlhOyBbYjNdPWh0dHBzOi8vZmlyZWJhc2VzdG9yYWdlLmdvb2dsZWFwaXMuY29tL3YwL2IvYWlneXVqaWVtLWltYWdlLmFwcHNwb3QuY29tL28vaW1hZ2VzJTJGMTU5MTQ4ODc0OC40NDEyMzQxNTkxNDEzODAzLjU3NDEyMUFydGJvYXJkMl84LmpwZz9hbHQ9bWVkaWEsaHR0cHM6Ly9maXJlYmFzZXN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vdjAvYi9haWd5dWppZW0taW1hZ2UuYXBwc3BvdC5jb20vby9pbWFnZXMlMkYxNTkxNDg4NzQ5LjA0NzI1MTU5MTQxMzgwMy4wMzgzNjNBcnRib2FyZDJfNy5qcGc/YWx0PW1lZGlhIiwicXVlc3Rpb24iOlsiTWFuYWthaCB5YW5nIG1lcnVwYWthbiBqYXJpbmctamFyaW5nIGt1YnVzPyIsIk1hbmFrYWggeWFuZyBtZXJ1cGFrYW4gamFyaW5nLWphcmluZyBrdWJ1cz8iXSwiYW5zd2VyIjpbWyJhLiA8aW1nIHNyYz1cImh0dHBzOi8vZmlyZWJhc2VzdG9yYWdlLmdvb2dsZWFwaXMuY29tL3YwL2IvYWlneXVqaWVtLWltYWdlLmFwcHNwb3QuY29tL28vaW1hZ2VzJTJGMTU5MTQ4ODcyMS43NDE5MjQxNTkxNDEzNzY1LjU4MDY5NkFydGJvYXJkMV8yLmpwZz9hbHQ9bWVkaWFcIj48YnIgLz5cclxuYi4gPGltZyBzcmM9XCJodHRwczovL2ZpcmViYXNlc3RvcmFnZS5nb29nbGVhcGlzLmNvbS92MC9iL2FpZ3l1amllbS1pbWFnZS5hcHBzcG90LmNvbS9vL2ltYWdlcyUyRjE1OTE0ODg3MzAuNzkwNzc3MTU5MTQxMzc4MS43MDY5NjlBcnRib2FyZDJfMi5qcGc/YWx0PW1lZGlhXCI+PGJyIC8+XHJcbmMuIDxpbWcgc3JjPVwiaHR0cHM6Ly9maXJlYmFzZXN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vdjAvYi9haWd5dWppZW0taW1hZ2UuYXBwc3BvdC5jb20vby9pbWFnZXMlMkYxNTkxNDg4NzM5LjMzNjQzMzE1OTE0MTM3OTMuNjI0MDgyQXJ0Ym9hcmQyXzUuanBnP2FsdD1tZWRpYVwiPjxiciAvPlxyXG5kLiA8aW1nIHNyYz1cImh0dHBzOi8vZmlyZWJhc2VzdG9yYWdlLmdvb2dsZWFwaXMuY29tL3YwL2IvYWlneXVqaWVtLWltYWdlLmFwcHNwb3QuY29tL28vaW1hZ2VzJTJGMTU5MTQ4ODc0OC40NDEyMzQxNTkxNDEzODAzLjU3NDEyMUFydGJvYXJkMl84LmpwZz9hbHQ9bWVkaWFcIj4iXSxbImEuIDxpbWcgc3JjPVwiaHR0cHM6Ly9maXJlYmFzZXN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vdjAvYi9haWd5dWppZW0taW1hZ2UuYXBwc3BvdC5jb20vby9pbWFnZXMlMkYxNTkxNDg4NzIyLjQ1MTEzNjE1OTE0MTM3NjUuMDA1MDU0QXJ0Ym9hcmQxLmpwZz9hbHQ9bWVkaWFcIj48YnIgLz5cclxuYi4gPGltZyBzcmM9XCJodHRwczovL2ZpcmViYXNlc3RvcmFnZS5nb29nbGVhcGlzLmNvbS92MC9iL2FpZ3l1amllbS1pbWFnZS5hcHBzcG90LmNvbS9vL2ltYWdlcyUyRjE1OTE0ODg3MzEuMzgwMDY1MTU5MTQxMzc4MS4xMzAxNThBcnRib2FyZDIuanBnP2FsdD1tZWRpYVwiPjxiciAvPlxyXG5jLiA8aW1nIHNyYz1cImh0dHBzOi8vZmlyZWJhc2VzdG9yYWdlLmdvb2dsZWFwaXMuY29tL3YwL2IvYWlneXVqaWVtLWltYWdlLmFwcHNwb3QuY29tL28vaW1hZ2VzJTJGMTU5MTQ4ODczOS44OTkxMTUxNTkxNDEzNzkzLjA1ODk4M0FydGJvYXJkMl80LmpwZz9hbHQ9bWVkaWFcIj48YnIgLz5cclxuZC4gPGltZyBzcmM9XCJodHRwczovL2ZpcmViYXNlc3RvcmFnZS5nb29nbGVhcGlzLmNvbS92MC9iL2FpZ3l1amllbS1pbWFnZS5hcHBzcG90LmNvbS9vL2ltYWdlcyUyRjE1OTE0ODg3NDkuMDQ3MjUxNTkxNDEzODAzLjAzODM2M0FydGJvYXJkMl83LmpwZz9hbHQ9bWVkaWFcIj4iXV0sInZhcl9mb3JtX3ZhbHVlIjoiIn0=', '2020-06-22 17:46:54.074993'),
('gpoefvlvha3otin8fgti3y5fxx7j5r2z', 'YmIxY2RlNDRkYTFjZmQzM2Q5NTM1ZGQ0NDc3MjNmYzQ4Mjk5MTAwYzp7fQ==', '2021-06-29 19:03:02.706349'),
('gql3k6ec7b8geynqm68ot7xjqxifzzdw', 'Mzg2ZTRiYmQ2ZTE3ODI1ZTQzNTZiMTYyYThkMWZjM2MzNTVlM2I2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIn0=', '2020-06-21 13:08:58.605912'),
('gwaj7s6kuc1qlzjlgnnbfpyg5j60lx82', 'ZjE2MDQzNjEzMWIzOGIwMjQwNDFmNWM3OTY5YTMyMmI4NmU4ZTQwZTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTgyY2MxZTc4NWY5NTYyNjRmNGY2NTU1MjRlZTQwYWZiMWIwOGVhMCIsImlkIjoiNjEiLCJpZF9zb2FsIjoiNDQiLCJzdGVtIjoiQmVyaWt1dCBpbmkgeWFuZyBtZXJ1cGFrYW4gY2lyaS1jaXJpIGRhcmkgYmFuZ3VuIHJ1YW5nIGxpbWFzIHNlZ2kgW25dIGFkYWxhaD8iLCJhbW91bnQiOjUsImFycmFuZ2UiOiJtYXBwaW5nIiwidmFyX3ZhbHVlIjoiW25dPTMsNCw1LDYsOCw5LDEwIiwiZm9ybXVsYSI6IlttXSA9IFtuXSArIDI7XHJcbltsXSA9IFtuXSAtIDEiLCJ2YXJfbmFtZSI6IlsnW25dJ10iLCJvcHRpb24iOiJhLiBtZW1pbGlraSBbbV0gdGl0aWsgc3VkdXQ8YnIgLz48YnIgLz5cclxuYi4gbWVtaWxpa2kgW2xdIHNpc2k8YnIgLz48YnIgLz5cclxuYy4gbWVtaWxpa2kgW21dIHJ1c3VrPGJyIC8+PGJyIC8+XHJcbmQuIG1lbWlsaWtpIFtuXSBzaXNpIHRlZ2FrIiwidGl0bGUiOiJTb2FsIFVUUyBLZWxhcyAxMl9QYWtldF8yOCIsImltZ192YXIiOiItLS0iLCJxdWVzdGlvbiI6WyJCZXJpa3V0IGluaSB5YW5nIG1lcnVwYWthbiBjaXJpLWNpcmkgZGFyaSBiYW5ndW4gcnVhbmcgbGltYXMgc2VnaSA1IGFkYWxhaD8iLCI8c3Ryb25nPkhhcmdhIHRpa2V0IGtlbGFzIEkgZGFsYW0gZmluYWwgUGlhbGEgUHJlc2lkZW4gMjAxOCBhZGFsYWggUnAgNTAwLjAwMCwwMC4gUGFuaXRpYSBtZW55ZWRpYWthbiA4IGJhcmlzIHVudHVrIGtlbGFzIEksIGRlbmdhbiByaW5jaWFuIHBhZGEgYmFyaXMgcGVydGFtYSB0ZXJkYXBhdCA4IGt1cnNpLCBiYXJpcyBrZWR1YSAxMCBrdXJzaSwgcGFkYSBiYXJpcyBrZXRpZ2EgMTIga3Vyc2kgZGFuIHNldGVydXNueWEuIEppa2Ega3Vyc2kgdGVyaXNpIHNlbXVhIHBhZGEga2VsYXMgdGVyc2VidXQsIG1ha2EgcGVuZGFwYXRhbiB5YW5nIGRpdGVyaW1hIGRhcmkga2VsYXMgSSBhZGFsYWguLi4uPC9zdHJvbmc+Il0sImFuc3dlciI6W1siYS4gbWVtaWxpa2kgNyB0aXRpayBzdWR1dDxiciAvPjxiciAvPlxyXG5iLiBtZW1pbGlraSA0IHNpc2k8YnIgLz48YnIgLz5cclxuYy4gbWVtaWxpa2kgNyBydXN1azxiciAvPjxiciAvPlxyXG5kLiBtZW1pbGlraSA1IHNpc2kgdGVnYWsiXSxbImEuIDYwMDAwMDAwPGJyIC8+XHJcbmIuIDEyMDAwMDAwPGJyIC8+XHJcbmMuIDMwMDAwMDAwPGJyIC8+XHJcbmQuIDEyMDAwMDAwMCJdXSwicGFrZXRfc29hbF9pZCI6IjI3IiwiaW5kaWthdG9yIjoiMjkiLCJwYXJlbnQiOiIxOCIsIm92ZXJsb2FkIjoiIn0=', '2020-07-22 07:38:44.303220'),
('hakex133xs03jbmdp92sltzzj6bw0nyg', 'YmIxY2RlNDRkYTFjZmQzM2Q5NTM1ZGQ0NDc3MjNmYzQ4Mjk5MTAwYzp7fQ==', '2021-06-29 19:04:55.586331'),
('hbhh4yuw21y11212cbkdwu4946qnbblo', 'NzZlOTg1NThhMGFiODFlMjM0YzM0YjgzMTI1ZDQzNjViODBlMDRjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIiwic3RlbSI6IiIsImFtb3VudCI6IiIsImFycmFuZ2UiOiIiLCJ2YXJfdmFsdWUiOiIiLCJmb3JtdWxhIjoiIiwib3B0aW9uIjoiIiwidmFyX2Zvcm1fdmFsdWUiOiIiLCJxdWVzdGlvbiI6IiIsImFuc3dlciI6IiJ9', '2020-05-30 16:28:51.836449'),
('ifd6m5xcpf53yvytu8ez2sv01jlugdb2', 'YmIxY2RlNDRkYTFjZmQzM2Q5NTM1ZGQ0NDc3MjNmYzQ4Mjk5MTAwYzp7fQ==', '2020-06-17 03:13:45.028707'),
('ij2dasc53g9ibgnocn3wgt5k0w7v1n5v', 'MzhhOGQyMDNkMzQ5YmRlYzQxY2Q0Mjc4NWFiZTZiYjUzYjRkMDY0YTp7Il9hdXRoX3VzZXJfaWQiOiIyOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMWQxZjI2YjAxMGEwYTc3ZTEyODcwOTZkZDBlMTY5MmFmMzYyMzdjNSJ9', '2020-07-07 12:19:10.564685'),
('kgirww0fum1mu6czkedsitivf8ra8dpm', 'Mzg2ZTRiYmQ2ZTE3ODI1ZTQzNTZiMTYyYThkMWZjM2MzNTVlM2I2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIn0=', '2020-07-20 01:10:15.642117'),
('kgovmmmjc76eivrawv1hmi8zup61i9rt', 'YmIxY2RlNDRkYTFjZmQzM2Q5NTM1ZGQ0NDc3MjNmYzQ4Mjk5MTAwYzp7fQ==', '2021-06-29 19:16:08.341336'),
('lxwajhhmrjjo6dm907cthizkflo1nr9a', 'MTliYjdjNTA5MGNlODViMzYwZmVhNDNkNTQ4YWE0ZjM4MDlhYmRhNjp7Il9hdXRoX3VzZXJfaWQiOiI1MyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWNlNTRiYTQ4MTIwZjI0ZjEyYTFjNDRmOTgzYTRiODdjMmZjMzQ3NSJ9', '2020-07-20 03:28:24.544562'),
('m8aooztcrey80gh61jf5m15pj5e4p3k7', 'MTkyODQyOGRjZGVlYmMwNjU3NmZmYTJiMGQwNTcyMjJmYzg4YTYwYzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjg4NDBjNDJhODhmNjI5MDcwZDBkYWM2ODU1ZTNmMmEyY2U4MDVhIiwiaW51c19pZCI6IjYxIiwiaW5kaWthdG9yX2lkIjoiMzAiLCJzdGVtIjoiIiwiYW1vdW50IjoiIiwiYXJyYW5nZSI6IiIsInZhcl92YWx1ZSI6IiIsImZvcm11bGEiOiIiLCJvcHRpb24iOiIiLCJ2YXJfZm9ybV92YWx1ZSI6IiIsInF1ZXN0aW9uIjoiIiwiYW5zd2VyIjoiIiwiaW1nX3ZhciI6IiJ9', '2020-07-08 05:47:08.090855'),
('monika7m9k4rutyqz1eczq89tl6bdtif', 'MDQ2NTFhMDljZjEyNDkyNWQ0N2E1MmY1NGQwN2JiMzAyNjNkM2Y0ZDp7Il9hdXRoX3VzZXJfaWQiOiIzNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmI4OWViZTcyYzE3MDc5ZjQyOTczODRiOWQ5MWIxMGUzZTRjZmFjYyJ9', '2020-07-20 02:54:23.990910'),
('mt79gsjgsf2wac6hlskuupz5lqwg0ujy', 'NWViZDc4MDZhNDQyNmU3YzQxMGU5ZDMxZmQ1YzAwOTE1OTQ0ODI0Mzp7Il9hdXRoX3VzZXJfaWQiOiI2NCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjRmODA1NjA5ZjhkOWY1ZDU3NWE3NzYwZGQyZTllOTM0YTBmZWVhNiIsImlkIjoiNCIsImlkX3NvYWwiOiI0NSIsInN0ZW0iOiJTdWF0dSBzdW5nYWkgZGVuZ2FuIGxlYmFyIFt4XW0gZGFuIG1lbWlsaWtpIGtlY2VwYXRhbiBhcnVzIFt5XW0vcy4gU2VidWFoIHBlcmFodSBtZW55ZWJlcmFuZ2kgc3VuZ2FpIGl0dSBkZW5nYW4ga2VjZXBhdGFuIFt6XW0vcy4gQmVyYXBhIHN1ZHV0IHBlcmFodSBoYXJ1cyBkaWFyYWhrYW4gc3VwYXlhIHBlcmFodSBkYXBhdCBzYW1wYWkgdGVwYXQgZGkgc2ViZXJhbmdueWEgdGFucGEgdGVyYmF3YSBhcnVzPyIsImFtb3VudCI6NSwiYXJyYW5nZSI6Im1hcHBpbmciLCJ2YXJfdmFsdWUiOiJbeF09MTAwXFxzcXJ0MywgMTAwMFxcc3FydDM7XHJcblt5XT00LDQwO1xyXG5bel09OCw4MCIsImZvcm11bGEiOiJbYmVuYXJdPVxcYXJjY29ze1xcZnJhY3t5fXt6fX07XHJcbltzYWxhaDFdPVxcYXJjc2lue1xcZnJhY3t5fXt6fX07XHJcbltzYWxhaDJdPVxcYXJjY29ze1xcZnJhY3t6fXt5fX07XHJcbltzYWxhaDNdPVxcYXJjdGFue1xcZnJhY3t5fXt6fX0iLCJ2YXJfbmFtZSI6IlsnW3hdJywgJ1t5XScsICdbel0nXSIsIm9wdGlvbiI6IkEuW3NhbGFoMV07PGJyIC8+XHJcbkIuW3NhbGFoMl07PGJyIC8+XHJcbkMuW2JlbmFyXTs8YnIgLz5cclxuRC5bc2FsYWgzXSIsInRpdGxlIjoiTWVueWViZXJhbmdpIFN1bmdhaSIsImltZ192YXIiOiItLS0iLCJxdWVzdGlvbiI6WyJTdWF0dSBzdW5nYWkgZGVuZ2FuIGxlYmFyIDEwMFxcc3FydDNtIGRhbiBtZW1pbGlraSBrZWNlcGF0YW4gYXJ1cyA0bS9zLiBTZWJ1YWggcGVyYWh1IG1lbnllYmVyYW5naSBzdW5nYWkgaXR1IGRlbmdhbiBrZWNlcGF0YW4gOG0vcy4gQmVyYXBhIHN1ZHV0IHBlcmFodSBoYXJ1cyBkaWFyYWhrYW4gc3VwYXlhIHBlcmFodSBkYXBhdCBzYW1wYWkgdGVwYXQgZGkgc2ViZXJhbmdueWEgdGFucGEgdGVyYmF3YSBhcnVzPyIsIlN1YXR1IHN1bmdhaSBkZW5nYW4gbGViYXIgMTAwMFxcc3FydDNtIGRhbiBtZW1pbGlraSBrZWNlcGF0YW4gYXJ1cyA0MG0vcy4gU2VidWFoIHBlcmFodSBtZW55ZWJlcmFuZ2kgc3VuZ2FpIGl0dSBkZW5nYW4ga2VjZXBhdGFuIDgwbS9zLiBCZXJhcGEgc3VkdXQgcGVyYWh1IGhhcnVzIGRpYXJhaGthbiBzdXBheWEgcGVyYWh1IGRhcGF0IHNhbXBhaSB0ZXBhdCBkaSBzZWJlcmFuZ255YSB0YW5wYSB0ZXJiYXdhIGFydXM/Il0sImFuc3dlciI6W1siQS5cXGFyY3NpbntcXGZyYWN7eX17en19IiwiPGJyIC8+XHJcbkIuXFxhcmNjb3N7XFxmcmFje3p9e3l9fSIsIjxiciAvPlxyXG5DLlxcYXJjY29ze1xcZnJhY3t5fXt6fX0iLCI8YnIgLz5cclxuRC5cXGFyY3RhbntcXGZyYWN7eX17en19Il0sWyJBLlxcYXJjc2lue1xcZnJhY3t5fXt6fX0iLCI8YnIgLz5cclxuQi5cXGFyY2Nvc3tcXGZyYWN7en17eX19IiwiPGJyIC8+XHJcbkMuXFxhcmNjb3N7XFxmcmFje3l9e3p9fSIsIjxiciAvPlxyXG5ELlxcYXJjdGFue1xcZnJhY3t5fXt6fX0iXV19', '2021-05-11 13:46:56.248748'),
('ni1ktgcs73shhuf388yd659jgkapgedy', 'NTgxZDAxNTRiZWVjNGEzMmE5ZjI0MzVjZDg5MTU1YzhjYWZjZjBhMjp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDg0NGJlNTc4NTE4ODAwOWI1YTFlN2EzYzIyODliMjRlYjgyN2IzNCIsImludXNfaWQiOiI1NiIsImluZGlrYXRvcl9pZCI6IjU1Iiwic3RlbSI6IkJ1ZGkgbWVtYmVsaSAyIGtnIGFwZWwsIDEga2cgbWFuZ2dhIGRhbiAzIGtnIGplcnVrIGRhbiBtZW1iYXlhciBScCA4Ny41MDAsMDAuIEtlZXNva2FuIGhhcmlueWEsIEFseWEgbWVtYmF5YXIgc2ViZXNhciBScCA5NS4wMDAsMDAgdW50dWsgbWVtYmVsaSAzIGtnIGFwZWwsIDIga2cgbWFuZ2dhIGRhbiAxIGtnIGplcnVrIGRpdG9rbyBidWFoIHlhbmcgc2FtYS4gRHVhIGhhcmkga2VtdWRpYW4sIFJhcmEganVnYSBtZW1iZWxpIDEga2cgYXBlbCwgMiBrZyBtYW5nZ2EgZGFuIDEga2cgamVydWsgZGFuIG1lbWJheWFyIFJwIDYwLjAwMCwwMCBkaSB0b2tvIGJ1YWggdGVyc2VidXQuIE1ha2EgbW9kZWwgbWF0ZW1hdGlrYSBkYXJpIHBlcm1hc2FsYWhhbiB0ZXJzZWJ1dCBhZGFsYWguLi4iLCJhbW91bnQiOiI1IiwiYXJyYW5nZSI6Im1hcHBpbmciLCJ2YXJfdmFsdWUiOiIiLCJmb3JtdWxhIjoiIiwib3B0aW9uIjoiIiwidmFyX2Zvcm1fdmFsdWUiOiIiLCJxdWVzdGlvbiI6IiIsImFuc3dlciI6IiIsImltZ192YXIiOiIiLCJ2YXJfbmFtZSI6W119', '2020-07-07 02:55:59.736118'),
('nyetdcvt87gtnk6gmjgx5p0l3q27ozf0', 'Mzg2ZTRiYmQ2ZTE3ODI1ZTQzNTZiMTYyYThkMWZjM2MzNTVlM2I2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIn0=', '2020-07-22 06:17:35.389674'),
('nytkdint44v1dkk0rnnperaug94h6cb1', 'MWUzNjc2YWJkZjg5NWE0MWM5N2MzOTQ4MTNlOWU3YjQ4MTQxNDdhMDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjg4NDBjNDJhODhmNjI5MDcwZDBkYWM2ODU1ZTNmMmEyY2U4MDVhIiwiaW51c19pZCI6IjI1IiwiaW5kaWthdG9yX2lkIjoiMjIiLCJzdGVtIjoiQmVyaWt1dCBpbmkgeWFuZyBtZXJ1cGFrYW4gY2lyaS1jaXJpIGRhcmkgYmFuZ3VuIHJ1YW5nIGxpbWFzIHNlZ2kgW25dIGFkYWxhaD8iLCJhbW91bnQiOjUsImFycmFuZ2UiOiJtYXBwaW5nIiwidmFyX3ZhbHVlIjoiW25dPTMsNCw1LDYsOCw5LDEwIiwiZm9ybXVsYSI6IlttXSA9IFtuXSArIDI7XHJcbltsXSA9IFtuXSAtIDEiLCJvcHRpb24iOiJhLiBtZW1pbGlraSBbbV0gdGl0aWsgc3VkdXQ8YnIgLz5cclxuYi4gbWVtaWxpa2kgW2xdIHNpc2k8YnIgLz5cclxuYy4gbWVtaWxpa2kgW21dIHJ1c3VrPGJyIC8+XHJcbmQuIG1lbWlsaWtpIFtuXSBzaXNpIHRlZ2FrIiwidmFyX2Zvcm1fdmFsdWUiOiJbbl09Myw0LDUsNiIsInF1ZXN0aW9uIjpbIkJlcmlrdXQgaW5pIHlhbmcgbWVydXBha2FuIGNpcmktY2lyaSBkYXJpIGJhbmd1biBydWFuZyBsaW1hcyBzZWdpIDMgYWRhbGFoPyIsIkJlcmlrdXQgaW5pIHlhbmcgbWVydXBha2FuIGNpcmktY2lyaSBkYXJpIGJhbmd1biBydWFuZyBsaW1hcyBzZWdpIDQgYWRhbGFoPyIsIkJlcmlrdXQgaW5pIHlhbmcgbWVydXBha2FuIGNpcmktY2lyaSBkYXJpIGJhbmd1biBydWFuZyBsaW1hcyBzZWdpIDUgYWRhbGFoPyIsIkJlcmlrdXQgaW5pIHlhbmcgbWVydXBha2FuIGNpcmktY2lyaSBkYXJpIGJhbmd1biBydWFuZyBsaW1hcyBzZWdpIDYgYWRhbGFoPyIsIkJlcmlrdXQgaW5pIHlhbmcgbWVydXBha2FuIGNpcmktY2lyaSBkYXJpIGJhbmd1biBydWFuZyBsaW1hcyBzZWdpIDggYWRhbGFoPyIsIkJlcmlrdXQgaW5pIHlhbmcgbWVydXBha2FuIGNpcmktY2lyaSBkYXJpIGJhbmd1biBydWFuZyBsaW1hcyBzZWdpIDkgYWRhbGFoPyIsIkJlcmlrdXQgaW5pIHlhbmcgbWVydXBha2FuIGNpcmktY2lyaSBkYXJpIGJhbmd1biBydWFuZyBsaW1hcyBzZWdpIDEwIGFkYWxhaD8iXSwiYW5zd2VyIjpbWyJhLiBtZW1pbGlraSA1IHRpdGlrIHN1ZHV0PGJyIC8+XHJcbmIuIG1lbWlsaWtpIDIgc2lzaTxiciAvPlxyXG5jLiBtZW1pbGlraSA1IHJ1c3VrPGJyIC8+XHJcbmQuIG1lbWlsaWtpIDMgc2lzaSB0ZWdhayJdLFsiYS4gbWVtaWxpa2kgNiB0aXRpayBzdWR1dDxiciAvPlxyXG5iLiBtZW1pbGlraSAzIHNpc2k8YnIgLz5cclxuYy4gbWVtaWxpa2kgNiBydXN1azxiciAvPlxyXG5kLiBtZW1pbGlraSA0IHNpc2kgdGVnYWsiXSxbImEuIG1lbWlsaWtpIDcgdGl0aWsgc3VkdXQ8YnIgLz5cclxuYi4gbWVtaWxpa2kgNCBzaXNpPGJyIC8+XHJcbmMuIG1lbWlsaWtpIDcgcnVzdWs8YnIgLz5cclxuZC4gbWVtaWxpa2kgNSBzaXNpIHRlZ2FrIl0sWyJhLiBtZW1pbGlraSA4IHRpdGlrIHN1ZHV0PGJyIC8+XHJcbmIuIG1lbWlsaWtpIDUgc2lzaTxiciAvPlxyXG5jLiBtZW1pbGlraSA4IHJ1c3VrPGJyIC8+XHJcbmQuIG1lbWlsaWtpIDYgc2lzaSB0ZWdhayJdLFsiYS4gbWVtaWxpa2kgMTAgdGl0aWsgc3VkdXQ8YnIgLz5cclxuYi4gbWVtaWxpa2kgNyBzaXNpPGJyIC8+XHJcbmMuIG1lbWlsaWtpIDEwIHJ1c3VrPGJyIC8+XHJcbmQuIG1lbWlsaWtpIDggc2lzaSB0ZWdhayJdLFsiYS4gbWVtaWxpa2kgMTEgdGl0aWsgc3VkdXQ8YnIgLz5cclxuYi4gbWVtaWxpa2kgOCBzaXNpPGJyIC8+XHJcbmMuIG1lbWlsaWtpIDExIHJ1c3VrPGJyIC8+XHJcbmQuIG1lbWlsaWtpIDkgc2lzaSB0ZWdhayJdLFsiYS4gbWVtaWxpa2kgMTIgdGl0aWsgc3VkdXQ8YnIgLz5cclxuYi4gbWVtaWxpa2kgOSBzaXNpPGJyIC8+XHJcbmMuIG1lbWlsaWtpIDEyIHJ1c3VrPGJyIC8+XHJcbmQuIG1lbWlsaWtpIDEwIHNpc2kgdGVnYWsiXV0sImltZ192YXIiOiItLS0iLCJ2YXJfbmFtZSI6IlsnW25dJ10iLCJ0aXRsZSI6IkJhbmd1biBydWFuZyJ9', '2020-06-20 03:28:16.893854'),
('obf6esxor5srdbw9h0vho5lksesylz4e', 'Mzg2ZTRiYmQ2ZTE3ODI1ZTQzNTZiMTYyYThkMWZjM2MzNTVlM2I2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIn0=', '2020-06-22 17:28:34.824052'),
('oxim2uolvn2qrzcsq32sthy9b9bkrn5r', 'ZmFkM2YyYjU1NzhjOGE3MWMxZTBkZmE0NmM0ZmI5N2VkNzE5MmIwYTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTgyY2MxZTc4NWY5NTYyNjRmNGY2NTU1MjRlZTQwYWZiMWIwOGVhMCIsImlkIjoiMjYiLCJpZF9zb2FsIjoiMTQiLCJzdGVtIjoiSGFyZ2EgdGlrZXQga2VsYXMgSSBkYWxhbSBmaW5hbCBQaWFsYSBQcmVzaWRlbiAyMDE4IGFkYWxhaCBScCA1MDAuMDAwLDAwLiBQYW5pdGlhIG1lbnllZGlha2FuIFt4XSBiYXJpcyB1bnR1ayBrZWxhcyBJLCBkZW5nYW4gcmluY2lhbiBwYWRhIGJhcmlzIHBlcnRhbWEgdGVyZGFwYXQgW2FdIGt1cnNpLCBiYXJpcyBrZWR1YSBbYl0ga3Vyc2ksIHBhZGEgYmFyaXMga2V0aWdhIFtjXSBrdXJzaSBkYW4gc2V0ZXJ1c255YS4gSmlrYSBrdXJzaSB0ZXJpc2kgc2VtdWEgcGFkYSBrZWxhcyB0ZXJzZWJ1dCwgbWFrYSBwZW5kYXBhdGFuIHlhbmcgZGl0ZXJpbWEgZGFyaSBrZWxhcyBJIGFkYWxhaC4uLi4iLCJhbW91bnQiOjUsImFycmFuZ2UiOiJtYXBwaW5nIiwidmFyX3ZhbHVlIjoiW3hdPSA1LCA4O1xyXG5bYV09IDYsIDg7XHJcbltiXT0gMTAsIDEwO1xyXG5bY109IDE0LCAxMiIsImZvcm11bGEiOiJbYmVkYV0gPSBbYl0tW2FdO1xyXG5bdTFdID0gW2FdO1xyXG5bbl0gPSBbeF0tMTtcclxuW1N4XSA9IChbeF0vMikqKDIqW3UxXStbYmVkYV0qW25dKTtcclxuW2JlbmFyXSA9IFtTeF0qNTAwMDAwO1xyXG5bc2FsYWhdID0gW1N4XSAqIDEwMDAwMCIsInZhcl9uYW1lIjoiWydbeF0nLCAnW2FdJywgJ1tiXScsICdbY10nXSIsIm9wdGlvbiI6ImEuIFJwIFtiZW5hcl08YnIgLz5cclxuYi4gUnAgW3NhbGFoXTxiciAvPlxyXG5cdTAwYTAiLCJ0aXRsZSI6IlNPQUwgVUpJQU4gU01BIDUgR01fUGFrZXRfMSIsImltZ192YXIiOiItLS0iLCJxdWVzdGlvbiI6WyJQZXJzYW1hYW4gZ3JhZmlrIGZ1bmdzaSBwYWRhIGdhbWJhciBkaSBiYXdhaCBhZGFsYWgmaGVsbGlwOy4mbmJzcDsiLCJIYXJnYSB0aWtldCBrZWxhcyBJIGRhbGFtIGZpbmFsIFBpYWxhIFByZXNpZGVuIDIwMTggYWRhbGFoIFJwIDUwMC4wMDAsMDAuIFBhbml0aWEgbWVueWVkaWFrYW4gOCBiYXJpcyB1bnR1ayBrZWxhcyBJLCBkZW5nYW4gcmluY2lhbiBwYWRhIGJhcmlzIHBlcnRhbWEgdGVyZGFwYXQgOCBrdXJzaSwgYmFyaXMga2VkdWEgMTAga3Vyc2ksIHBhZGEgYmFyaXMga2V0aWdhIDEyIGt1cnNpIGRhbiBzZXRlcnVzbnlhLiBKaWthIGt1cnNpIHRlcmlzaSBzZW11YSBwYWRhIGtlbGFzIHRlcnNlYnV0LCBtYWthIHBlbmRhcGF0YW4geWFuZyBkaXRlcmltYSBkYXJpIGtlbGFzIEkgYWRhbGFoLi4uLiJdLCJhbnN3ZXIiOltbIjxpbWcgc3JjPVwiaHR0cHM6Ly9maXJlYmFzZXN0b3JhZ2UuZ29vZ2xlYXBpcy5jb20vdjAvYi9haWd5dWppZW0taW1hZ2UuYXBwc3BvdC5jb20vby9pbWFnZXMlMkYxNTkxNTQwNjIzLjA2NzE0NWU4ZWU1ODhhN2Q4Zi5qcGc/YWx0PW1lZGlhXCI+Il0sWyJhLiBScCA2MDAwMDAwMDxiciAvPlxyXG5iLiBScCAxMjAwMDAwMDxiciAvPlxyXG5cdTAwYTAiXV0sInBha2V0X3NvYWxfaWQiOiIxNyIsImluZGlrYXRvciI6IjI4IiwicGFyZW50IjoiMTciLCJvdmVybG9hZCI6IiIsImJyb3RoZXJfaWQiOiI5NiJ9', '2020-06-21 14:45:44.372736'),
('p0hzvbxvci5guujopub3969222xx2v22', 'Mzg2ZTRiYmQ2ZTE3ODI1ZTQzNTZiMTYyYThkMWZjM2MzNTVlM2I2Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIn0=', '2020-07-01 18:48:07.142773'),
('pbahcmhvgtb89tqqgh6fmfnb06d8qnu9', 'YzBjNjg1ODgxN2Q1YzFkYjI4ZmIyZmY3NWYzYWJmNjUzNDgzOTUxZDp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OGQ3N2FlOTA0OGM0Mzc1N2JmODc2ZjI0Y2VmOTdkMmZhN2UyNjA1In0=', '2020-06-23 15:17:39.963693'),
('r7fqkwpcyg6fyohdgeqobgq76ws9yswn', 'MDcwMmY4MzkzNGZkZmNmMWNiOTFjMmRiMDEzYzUxOGI3MDQ1YjZiYzp7Il9hdXRoX3VzZXJfaWQiOiI2MSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzUzNzlhYTYwYzk0ZTg1M2U5ZGRmYjBlMmQ5MGI1ZDI1YTIwNmMwMCJ9', '2020-07-20 09:20:19.912037'),
('sbidu9uy9xrfj1y06zfczm8lpsr0izru', 'MDQ4MWM0YTU3NWM2MWU3NDIzZWMxYmQyZTE2ZDhmMGY0YzZiZDZiNzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDc2ZTQ4YTU0MDMxNGUwMmViOTU1OTE2NjhlYmFkNmEwZGJiODNmIiwicGFrZXRfc29hbF9pZCI6IjEyIiwiaW5kaWthdG9yIjoiMTAiLCJwYXJlbnQiOiI3Iiwib3ZlcmxvYWQiOiIiLCJpZCI6IjEwIiwicXVlc3Rpb24iOlsiQXBha2FoIDMgc2FtYSBkZW5nYW4gNCZuYnNwOyIsIkFwYWthaCAzIHNhbWEgZGVuZ2FuIDQmbmJzcDsiLCJBcGFrYWggMyBzYW1hIGRlbmdhbiA0Jm5ic3A7IiwiQXBha2FoIDQgc2FtYSBkZW5nYW4gNyZuYnNwOyJdLCJhbnN3ZXIiOltbInlhIiwiPGJyIC8+XHJcbnRpZGFrIl0sWyJ5YSIsIjxiciAvPlxyXG50aWRhayJdLFsieWEiLCI8YnIgLz5cclxudGlkYWsiXSxbInlhIiwiPGJyIC8+XHJcbnRpZGFrIl1dLCJ0aXRsZSI6IlNvYWwgS2VsYXMgMyBUS19QYWtldF8xIiwiYnJvdGhlcl9pZCI6Ijc2In0=', '2020-06-13 15:30:57.951091'),
('sk8i2ifeh6mcyqbsr0mdgyuyxa79k7rv', 'YmIxY2RlNDRkYTFjZmQzM2Q5NTM1ZGQ0NDc3MjNmYzQ4Mjk5MTAwYzp7fQ==', '2021-06-29 19:05:24.879922'),
('t0vspn28mfy0vr9rg42stjpixvvmkuhh', 'YmIxY2RlNDRkYTFjZmQzM2Q5NTM1ZGQ0NDc3MjNmYzQ4Mjk5MTAwYzp7fQ==', '2021-06-29 19:04:14.112277'),
('tbal3famp640qqs81avyqqpinwm7own9', 'NGVmYmNiYzM2MjE4ZTNiNTYxOWRmZTU4OGZjYjhkYjE0OGM1ZTgxMDp7Il9hdXRoX3VzZXJfaWQiOiIyNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiY2NmZWFhMGQ2NTdkMWRjMGZkNWU1NzNhYTcwOWFhNGM5Y2NiMGJjMyIsInBha2V0X3NvYWxfaWQiOiIyMyIsImluZGlrYXRvciI6IjU2IiwicGFyZW50IjoiNDAiLCJvdmVybG9hZCI6IiIsImlkIjoiNTYiLCJpZF9zb2FsIjoiNDAiLCJzdGVtIjoiSmlrYSBuaWxhaSBzaW4gZGFyaSBzZWJ1YWggc2VnaXRpZ2EgeWFpdHUgW3hdL1t5XSwgbWFrYSBuaWxhaSBjb3MgZGFyaSBzZWdpdGlnYSB0ZXJzZWJ1dCBhZGFsYWg/IiwiYW1vdW50Ijo1LCJhcnJhbmdlIjoibWFwcGluZyIsInZhcl92YWx1ZSI6Ilt4XT0zLCA1O1xyXG5beV09NSwgMTMiLCJmb3JtdWxhIjoiW3NhbXBpbmddPXBvdygoKFt5XSpbeV0pLShbeF0qW3hdKSksMC41KSIsInZhcl9uYW1lIjoiWydbeF0nLCAnW3ldJ10iLCJvcHRpb24iOiJBLiBbc2FtcGluZ10vW3ldOzxiciAvPlxyXG5CLiBbeF0vW3NhbXBpbmddOzxiciAvPlxyXG5DLiBbeV0vW3NhbXBpbmddOzxiciAvPlxyXG5ELiBbeF0vW3ldOzxiciAvPlxyXG5FLiAxLzIiLCJ0aXRsZSI6IlBha2V0IFNvYWwgTWF0ZW1hdGlrYSBLZWxhcyAxMF9QYWtldF8xIiwiaW1nX3ZhciI6Ii0tLSIsInF1ZXN0aW9uIjpbIkJlcmFwYWthaCB0aXRpayBwb3RvbmcgZih4KSA9Jm5ic3A7PHNwYW4gY2xhc3M9XCJtYXRoLXRleFwiPlxcKHheMiAtIDZ4ICsgOFxcKTwvc3Bhbj4mbmJzcDtwYWRhIHN1bWJ1IHk/IiwiSmlrYSBuaWxhaSBzaW4gZGFyaSBzZWJ1YWggc2VnaXRpZ2EgeWFpdHUgMy81LCBtYWthIG5pbGFpIGNvcyBkYXJpIHNlZ2l0aWdhIHRlcnNlYnV0IGFkYWxhaD8iXSwiYW5zd2VyIjpbWyJBLiAoOCwwKSIsIjxiciAvPlxyXG5CLiAoLTIsMCkiLCI8YnIgLz5cclxuQy4gKC00LDApIiwiPGJyIC8+XHJcbkQuICgtMiwtNCkiLCI8YnIgLz5cclxuRS4gKDgsLTIpIl0sWyJBLiA0LzUiLCI8YnIgLz5cclxuQi4gMy80IiwiPGJyIC8+XHJcbkMuIDUvNCIsIjxiciAvPlxyXG5ELiAzLzUiLCI8YnIgLz5cclxuRS4gMS8yIl1dfQ==', '2020-07-07 14:37:25.081069'),
('uuuk9qmsg10aq14uub0tftv7olqjl14q', 'MWZhMjY2NDlmMDRhY2MwNDlhNDQ5ZjI5NzA5YTY0NWFlODE4NjRkMDp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhYjNhNjg0Yzk5YzNiMWYwNTU4NjgxZDQ5ZDNmNjI4MDc5ZTUwNzYwIiwicGFrZXRfc29hbF9pZCI6MjUsImluZGlrYXRvciI6IjE3IiwicGFyZW50IjoiOCIsIm92ZXJsb2FkIjoiIn0=', '2020-07-08 08:07:36.066270'),
('w0580lweph1nieravyphb1au2335y5ab', 'NGYzOGY3NDM3NTRhMWZhMDg4ODE2YWZlMjE2MzBhODJjZWFkMTQzMzp7Il9hdXRoX3VzZXJfaWQiOiIyNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGZlNDEwNjEwNGE4MjFhM2QzMjY1NGVhNDQ4YjkxZTQwYjI3YTAyMyJ9', '2020-07-10 01:44:55.449707'),
('w1uemuzcrfxosj0natlrbt3oy10wsyeb', 'YzBjNjg1ODgxN2Q1YzFkYjI4ZmIyZmY3NWYzYWJmNjUzNDgzOTUxZDp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2OGQ3N2FlOTA0OGM0Mzc1N2JmODc2ZjI0Y2VmOTdkMmZhN2UyNjA1In0=', '2020-06-23 15:07:45.402153'),
('z22d77ocmg0qbwotse9st2a415vhjq7o', 'YmIxY2RlNDRkYTFjZmQzM2Q5NTM1ZGQ0NDc3MjNmYzQ4Mjk5MTAwYzp7fQ==', '2021-06-29 19:02:51.406551'),
('zke09iv1rzn4vzhcpdx34ulemdytbyy2', 'MTU1YjNhNmRmNWY4N2Q2N2I2YjlhY2ZhNjdjNmE3NGVlNDZiY2MyYTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNjFmYzRhNWUyNzgzNzE0YTI0ZmY1YjFhYzMzZTk2YmM2YWYwMWViIn0=', '2020-06-17 04:04:03.134459');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_generatedsoal`
--

CREATE TABLE `quiz_generatedsoal` (
  `id` int(11) NOT NULL,
  `generated_soal` longtext NOT NULL,
  `generated_option` longtext,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_generatedsoal`
--

INSERT INTO `quiz_generatedsoal` (`id`, `generated_soal`, `generated_option`, `parent_id`) VALUES
(1, 'TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika ads, asd, asd, ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', '[\'sadasd\']', 1),
(2, 'Sebuah balok memiliki panjang 15 cm, lebar 7 cm, dan tinggi 8 cm. Luas balok tersebut adalah...', '[\'A. 562<br />\\r\\nB. 1680<br />\\r\\nC. 840\']', 12),
(3, 'Sebuah balok memiliki panjang 15 cm, lebar 7 cm, dan tinggi 9 cm. Luas balok tersebut adalah...', '[\'A. 606<br />\\r\\nB. 1890<br />\\r\\nC. 945\']', 12),
(4, 'Sebuah balok memiliki panjang 15 cm, lebar 7 cm, dan tinggi 10 cm. Luas balok tersebut adalah...', '[\'A. 650<br />\\r\\nB. 2100<br />\\r\\nC. 1050\']', 12),
(5, 'Sebuah balok memiliki panjang 15 cm, lebar 8 cm, dan tinggi 8 cm. Luas balok tersebut adalah...', '[\'A. 608<br />\\r\\nB. 1920<br />\\r\\nC. 960\']', 12),
(6, 'Sebuah balok memiliki panjang 15 cm, lebar 8 cm, dan tinggi 9 cm. Luas balok tersebut adalah...', '[\'A. 654<br />\\r\\nB. 2160<br />\\r\\nC. 1080\']', 12),
(7, 'Sebuah balok memiliki panjang 15 cm, lebar 8 cm, dan tinggi 10 cm. Luas balok tersebut adalah...', '[\'A. 700<br />\\r\\nB. 2400<br />\\r\\nC. 1200\']', 12),
(8, 'Sebuah balok memiliki panjang 15 cm, lebar 9 cm, dan tinggi 8 cm. Luas balok tersebut adalah...', '[\'A. 654<br />\\r\\nB. 2160<br />\\r\\nC. 1080\']', 12),
(9, 'Sebuah balok memiliki panjang 15 cm, lebar 9 cm, dan tinggi 9 cm. Luas balok tersebut adalah...', '[\'A. 702<br />\\r\\nB. 2430<br />\\r\\nC. 1215\']', 12),
(10, 'Sebuah balok memiliki panjang 15 cm, lebar 9 cm, dan tinggi 10 cm. Luas balok tersebut adalah...', '[\'A. 750<br />\\r\\nB. 2700<br />\\r\\nC. 1350\']', 12),
(11, 'Sebuah balok memiliki panjang 16 cm, lebar 7 cm, dan tinggi 8 cm. Luas balok tersebut adalah...', '[\'A. 592<br />\\r\\nB. 1792<br />\\r\\nC. 896\']', 12),
(12, 'Sebuah balok memiliki panjang 16 cm, lebar 7 cm, dan tinggi 9 cm. Luas balok tersebut adalah...', '[\'A. 638<br />\\r\\nB. 2016<br />\\r\\nC. 1008\']', 12),
(13, 'Sebuah balok memiliki panjang 16 cm, lebar 7 cm, dan tinggi 10 cm. Luas balok tersebut adalah...', '[\'A. 684<br />\\r\\nB. 2240<br />\\r\\nC. 1120\']', 12),
(14, 'Sebuah balok memiliki panjang 16 cm, lebar 8 cm, dan tinggi 8 cm. Luas balok tersebut adalah...', '[\'A. 640<br />\\r\\nB. 2048<br />\\r\\nC. 1024\']', 12),
(15, 'Sebuah balok memiliki panjang 16 cm, lebar 8 cm, dan tinggi 9 cm. Luas balok tersebut adalah...', '[\'A. 688<br />\\r\\nB. 2304<br />\\r\\nC. 1152\']', 12),
(16, 'Sebuah balok memiliki panjang 16 cm, lebar 8 cm, dan tinggi 10 cm. Luas balok tersebut adalah...', '[\'A. 736<br />\\r\\nB. 2560<br />\\r\\nC. 1280\']', 12),
(17, 'Sebuah balok memiliki panjang 16 cm, lebar 9 cm, dan tinggi 8 cm. Luas balok tersebut adalah...', '[\'A. 688<br />\\r\\nB. 2304<br />\\r\\nC. 1152\']', 12),
(18, 'Sebuah balok memiliki panjang 16 cm, lebar 9 cm, dan tinggi 9 cm. Luas balok tersebut adalah...', '[\'A. 738<br />\\r\\nB. 2592<br />\\r\\nC. 1296\']', 12),
(19, 'Sebuah balok memiliki panjang 16 cm, lebar 9 cm, dan tinggi 10 cm. Luas balok tersebut adalah...', '[\'A. 788<br />\\r\\nB. 2880<br />\\r\\nC. 1440\']', 12),
(20, 'Sebuah balok memiliki panjang 17 cm, lebar 7 cm, dan tinggi 8 cm. Luas balok tersebut adalah...', '[\'A. 622<br />\\r\\nB. 1904<br />\\r\\nC. 952\']', 12),
(21, 'Sebuah balok memiliki panjang 17 cm, lebar 7 cm, dan tinggi 9 cm. Luas balok tersebut adalah...', '[\'A. 670<br />\\r\\nB. 2142<br />\\r\\nC. 1071\']', 12),
(22, 'Sebuah balok memiliki panjang 17 cm, lebar 7 cm, dan tinggi 10 cm. Luas balok tersebut adalah...', '[\'A. 718<br />\\r\\nB. 2380<br />\\r\\nC. 1190\']', 12),
(23, 'Sebuah balok memiliki panjang 17 cm, lebar 8 cm, dan tinggi 8 cm. Luas balok tersebut adalah...', '[\'A. 672<br />\\r\\nB. 2176<br />\\r\\nC. 1088\']', 12),
(24, 'Sebuah balok memiliki panjang 17 cm, lebar 8 cm, dan tinggi 9 cm. Luas balok tersebut adalah...', '[\'A. 722<br />\\r\\nB. 2448<br />\\r\\nC. 1224\']', 12),
(25, 'Sebuah balok memiliki panjang 17 cm, lebar 8 cm, dan tinggi 10 cm. Luas balok tersebut adalah...', '[\'A. 772<br />\\r\\nB. 2720<br />\\r\\nC. 1360\']', 12),
(26, 'Sebuah balok memiliki panjang 17 cm, lebar 9 cm, dan tinggi 8 cm. Luas balok tersebut adalah...', '[\'A. 722<br />\\r\\nB. 2448<br />\\r\\nC. 1224\']', 12),
(27, 'Sebuah balok memiliki panjang 17 cm, lebar 9 cm, dan tinggi 9 cm. Luas balok tersebut adalah...', '[\'A. 774<br />\\r\\nB. 2754<br />\\r\\nC. 1377\']', 12),
(28, 'Sebuah balok memiliki panjang 17 cm, lebar 9 cm, dan tinggi 10 cm. Luas balok tersebut adalah...', '[\'A. 826<br />\\r\\nB. 3060<br />\\r\\nC. 1530\']', 12),
(29, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 5 cm. Balok tersebut memiliki panjang 20 cm, lebar 5 cm dan tinggi 5 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 625<br />\\r\\nB. -375<br />\\r\\nC. 8500\']', 13),
(30, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 5 cm. Balok tersebut memiliki panjang 20 cm, lebar 5 cm dan tinggi 10 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 1125<br />\\r\\nB. -875<br />\\r\\nC. 9000\']', 13),
(31, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 5 cm. Balok tersebut memiliki panjang 25 cm, lebar 5 cm dan tinggi 5 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 750<br />\\r\\nB. -500<br />\\r\\nC. 16250\']', 13),
(32, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 5 cm. Balok tersebut memiliki panjang 25 cm, lebar 5 cm dan tinggi 10 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 1375<br />\\r\\nB. -1125<br />\\r\\nC. 16875\']', 13),
(33, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 10 cm. Balok tersebut memiliki panjang 20 cm, lebar 10 cm dan tinggi 5 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 2000<br />\\r\\nB. 0<br />\\r\\nC. 9000\']', 13),
(34, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 10 cm. Balok tersebut memiliki panjang 20 cm, lebar 10 cm dan tinggi 10 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 3000<br />\\r\\nB. -1000<br />\\r\\nC. 10000\']', 13),
(35, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 10 cm. Balok tersebut memiliki panjang 25 cm, lebar 10 cm dan tinggi 5 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 2250<br />\\r\\nB. -250<br />\\r\\nC. 16875\']', 13),
(36, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 10 cm. Balok tersebut memiliki panjang 25 cm, lebar 10 cm dan tinggi 10 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 3500<br />\\r\\nB. -1500<br />\\r\\nC. 18125\']', 13),
(37, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 15 cm. Balok tersebut memiliki panjang 20 cm, lebar 15 cm dan tinggi 5 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 4875<br />\\r\\nB. 1875<br />\\r\\nC. 9500\']', 13),
(38, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 15 cm. Balok tersebut memiliki panjang 20 cm, lebar 15 cm dan tinggi 10 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 6375<br />\\r\\nB. 375<br />\\r\\nC. 11000\']', 13),
(39, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 15 cm. Balok tersebut memiliki panjang 25 cm, lebar 15 cm dan tinggi 5 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 5250<br />\\r\\nB. 1500<br />\\r\\nC. 17500\']', 13),
(40, 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar 15 cm. Balok tersebut memiliki panjang 25 cm, lebar 15 cm dan tinggi 10 cm. Tentukan volume gabungan balok dan kubus tersebut...', '[\'A. 7125<br />\\r\\nB. -375<br />\\r\\nC. 19375\']', 13);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_indikator_user`
--

CREATE TABLE `quiz_indikator_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_done` tinyint(1) NOT NULL,
  `penugasan_id` int(11) DEFAULT NULL,
  `learning_outcome_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_indikator_user`
--

INSERT INTO `quiz_indikator_user` (`id`, `user_id`, `is_done`, `penugasan_id`, `learning_outcome_id`) VALUES
(1, 66, 1, 3, 1),
(2, 67, 1, 3, 1),
(3, 68, 1, 3, 1),
(4, 66, 1, 2, 1),
(5, 67, 1, 2, 1),
(6, 68, 1, 2, 1),
(7, 66, 1, 1, 1),
(8, 67, 1, 1, 1),
(9, 68, 1, 1, 1),
(10, 66, 1, 4, 1),
(11, 66, 1, 5, 1),
(12, 66, 1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_learningoutcome`
--

CREATE TABLE `quiz_learningoutcome` (
  `id` int(11) NOT NULL,
  `LO` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `SO_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_learningoutcome`
--

INSERT INTO `quiz_learningoutcome` (`id`, `LO`, `deskripsi`, `SO_id`) VALUES
(1, 'LO1', 'Students are able to understand and know the aspects related\r\nto kinematics, mechanics and able to apply Newton’s laws in\r\ndynamic static and spinning motion', 1),
(2, 'LO2', 'Students are able to understand and know the characteristics\r\nof heat, thermodynamic laws and thermal properties of objects', 1),
(3, 'LO3', 'Students are able to understand and analyze the mechanics\r\nand flow of non-viscous and viscous fluids, as well as cohesive\r\nforces in the liquid', 1),
(4, 'LO4', 'Students are able to understand the wave characteristics, their\r\nproperties and energies, and finally their application to sound\r\nwaves', 2),
(5, 'LO5', 'Students are able to understand and analyze light as a wave\r\nand its application to the optical system', 2),
(6, 'LO6', 'Students are able to understand and analyze light as particle\r\nand quantum mechanics principle with their application', 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_matakuliah`
--

CREATE TABLE `quiz_matakuliah` (
  `id` int(11) NOT NULL,
  `matkul` longtext NOT NULL,
  `kode_matkul` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_matakuliah`
--

INSERT INTO `quiz_matakuliah` (`id`, `matkul`, `kode_matkul`) VALUES
(1, 'Fisika Teknik', 'TKIE161202'),
(2, 'Fisika Elektro', 'TKIE161102');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_paketsoal`
--

CREATE TABLE `quiz_paketsoal` (
  `id` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `judul` longtext NOT NULL,
  `jumlah_paket` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `generated_date` datetime(6) DEFAULT NULL,
  `is_generated` tinyint(1) DEFAULT NULL,
  `kurikulum` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_paketsoal`
--

INSERT INTO `quiz_paketsoal` (`id`, `created_date`, `judul`, `jumlah_paket`, `creator_id`, `generated_date`, `is_generated`, `kurikulum`) VALUES
(1, '2021-06-16 03:32:57.553644', 'Tester Paket Soal', 2, 66, '2021-06-16 21:15:42.701220', 1, '2016');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_penugasan`
--

CREATE TABLE `quiz_penugasan` (
  `id` int(11) NOT NULL,
  `kurikulum` varchar(200) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `learning_outcome_id` int(11) NOT NULL,
  `mata_kuliah_id` int(11) NOT NULL,
  `student_outcome_id` int(11) NOT NULL,
  `topik_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_penugasan`
--

INSERT INTO `quiz_penugasan` (`id`, `kurikulum`, `created_date`, `creator_id`, `learning_outcome_id`, `mata_kuliah_id`, `student_outcome_id`, `topik_id`) VALUES
(1, '2016', '2021-06-01 17:25:29.989128', 70, 1, 1, 1, 1),
(2, '2016', '2021-06-01 17:25:44.576628', 70, 1, 1, 1, 2),
(3, '2016', '2021-06-01 17:25:53.893244', 70, 1, 1, 1, 3),
(4, '2016', '2021-06-16 16:36:26.251728', 66, 1, 2, 1, 3),
(5, '2016', '2021-06-16 20:36:58.835622', 66, 1, 1, 1, 13),
(6, '2016', '2021-06-16 21:01:33.067698', 66, 1, 1, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_profile`
--

CREATE TABLE `quiz_profile` (
  `id` int(11) NOT NULL,
  `sekolah` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `mapel` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `golongan` varchar(4) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nomer_hp` varchar(20) NOT NULL,
  `pangkat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_profile`
--

INSERT INTO `quiz_profile` (`id`, `sekolah`, `alamat`, `mapel`, `user_id`, `golongan`, `jabatan`, `nip`, `nomer_hp`, `pangkat`) VALUES
(1, 'SMA N 1 Padjajaran', 'Bandung', 'Matematika', 1, '', '', '', '', ''),
(65, '', '', '', 65, '', '', '', '', ''),
(66, '', '', '', 66, '', '', '', '', ''),
(67, '', '', '', 67, '', '', '', '', ''),
(68, '', '', '', 68, '', '', '', '', ''),
(69, '', '', '', 69, '', '', '', '', ''),
(70, '', '', '', 70, '', '', '', '', ''),
(71, '', '', '', 71, '', '', '', '', ''),
(72, '', '', '', 72, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_revisisoal`
--

CREATE TABLE `quiz_revisisoal` (
  `id` int(11) NOT NULL,
  `pesan` longtext NOT NULL,
  `soal_id` int(11) NOT NULL,
  `id_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_revisisoal`
--

INSERT INTO `quiz_revisisoal` (`id`, `pesan`, `soal_id`, `id_user_id`) VALUES
(16, 'Komentar Creator_2', 7, 66),
(18, 'Creator_2', 5, 66),
(19, 'cxzcasd', 9, 66),
(20, 'Tambah komentar video', 9, 66),
(21, 'Pilihan B masih terlalu Jelas salah', 12, 67);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_soal`
--

CREATE TABLE `quiz_soal` (
  `id` int(11) NOT NULL,
  `id_creator_id` int(11) DEFAULT NULL,
  `judul` longtext NOT NULL,
  `soal` longtext NOT NULL,
  `variasi` int(11) NOT NULL,
  `pengacakan` varchar(20) NOT NULL,
  `var1` varchar(100) NOT NULL,
  `variabel` longtext NOT NULL,
  `rumus` longtext NOT NULL,
  `jawaban` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `variabel_gambar` longtext,
  `indikator_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_soal`
--

INSERT INTO `quiz_soal` (`id`, `id_creator_id`, `judul`, `soal`, `variasi`, `pengacakan`, `var1`, `variabel`, `rumus`, `jawaban`, `created_date`, `status_id`, `variabel_gambar`, `indikator_id`) VALUES
(1, 66, 'Tester Komentar', 'TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika [a], [b], [c], ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', 5, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=ads;\r\n[b]=asd;\r\n[c]=asd', '---', 'sadasd', '2021-06-01 17:30:12.753337', 2, '---', 3),
(2, 66, 'Soal Creator_2 Linear Movement', 'Diketuhi barisan aritmatika [a], [b], [c], ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', 5, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=variabelA;\r\n[b]=variabelB;\r\n[c]=variabelC', '---', 'Ini Opsi Jawaban', '2021-06-05 19:01:56.453206', 1, '---', 2),
(3, 66, 'Soal Creator_2 Unit System', '<strong>TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika ads, asd, asd, ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...</strong>', 5, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=variabelA; [b]=variabelB; [c]=variabelC', '---', 'Ini Opsi Jawaban', '2021-06-05 19:04:01.088216', 1, '---', 1),
(4, 67, 'Soal Creator_3 Circular Motion', '<strong>TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika ads, asd, asd, ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...</strong>', 5, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=variabelA; [b]=variabelB; [c]=variabelC', '---', 'Ini Opsi Jawaban', '2021-06-05 19:04:51.343224', 1, '---', 3),
(5, 67, 'Soal Creator_3 Linear Movement', '<strong>TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika ads, asd, asd, ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...</strong>', 5, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=variabelA; [b]=variabelB; [c]=variabelC', '---', 'Ini Opsi Jawaban', '2021-06-05 19:05:20.029566', 1, '---', 2),
(6, 67, 'Soal Creator_3 Unit System', '<strong>TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika ads, asd, asd, ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...</strong>', 5, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=variabelA; [b]=variabelB; [c]=variabelC', '---', 'Ini Opsi Jawaban', '2021-06-05 19:06:17.604229', 1, '---', 1),
(7, 68, 'Soal Creator_4 Circular Motion', '<strong>TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika ads, asd, asd, ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...</strong>', 5, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=variabelA; [b]=variabelB; [c]=variabelC', '---', 'Ini Opsi Jawaban', '2021-06-05 19:07:40.308767', 1, '---', 3),
(8, 68, 'Soal Creator_4 Linear Movement', '<strong>TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika ads, asd, asd, ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...</strong>', 5, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=variabelA; [b]=variabelB; [c]=variabelC', '---', 'Ini Opsi Jawaban', '2021-06-05 19:07:59.981867', 1, '---', 2),
(9, 68, 'Soal Creator_4 Unit System', '<strong>TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika ads, asd, asd, ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...</strong>', 5, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=variabelA; [b]=variabelB; [c]=variabelC', '---', 'Ini Opsi Jawaban', '2021-06-05 19:08:26.954801', 1, '---', 1),
(10, 67, 'Soal Creator_3 Circular Motion_New', '<strong>TESTER!!!&nbsp;TESTER!!!&nbsp;TESTER!!! TESTER!!! TESTER!!!<br />\r\n<br />\r\n<br />\r\nDiketuhi barisan aritmatika ads, asd, asd, ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...</strong>', 5, 'mapping', '[]', '', '---', 'Ini Opsi Jawaban', '2021-06-07 02:18:59.567840', 1, '---', 3),
(11, 66, 'Tester Soal LO kembar', 'Tester soal LO kembar', 5, 'mapping', '[]', '', '---', 'Tester', '2021-06-16 16:36:46.963562', 1, '---', 4),
(12, 66, 'Tester Luas Balok', 'Sebuah balok memiliki panjang [A] cm, lebar [B] cm, dan tinggi [C] cm. Luas balok tersebut adalah...', 5, 'kombinasi', '[\'[A]\', \'[B]\', \'[C]\']', '[A]=15,16,17;\r\n[B]=7,8,9;\r\n[C]=8,9,10', '[Benar]=(2*[A]*[B])+(2*[A]*[C])+(2*[C]*[B]);\r\n[Salah1]=([A]*[B])*2*[C];\r\n[Salah2]=[A]*[B]*[C]', 'A. [Benar]<br />\r\nB. [Salah1]<br />\r\nC. [Salah2]', '2021-06-16 20:53:32.251647', 2, '---', 5),
(13, 66, 'Tester Volume Gabungan Balok Kubus', 'Sebuah bangun ruang gabungan balok dan kubus. Kubus tersebut memiliki rusuk sebesar [A] cm. Balok tersebut memiliki panjang [B] cm, lebar [A] cm dan tinggi [C] cm. Tentukan volume gabungan balok dan kubus tersebut...', 5, 'kombinasi', '[\'[A]\', \'[B]\', \'[A]\', \'[C]\']', '[A]=5,10,15;\r\n[B]=20,25;\r\n[C]=5,10', '[VolumeKubus]=[A]*[A]*[A];\r\n[VolumeSalah]=[B]*[B]*[B];\r\n[VolumeBalok] = [A]*[B]*[C];\r\n[Benar] = [VolumeKubus]+[VolumeBalok];\r\n[Salah1] = [VolumeKubus]-[VolumeBalok];\r\n[Salah2] = [VolumeSalah]+[VolumeBalok]', 'A. [Benar]<br />\r\nB. [Salah1]<br />\r\nC. [Salah2]', '2021-06-16 21:09:36.171292', 2, '---', 6);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_soal_paketsoal`
--

CREATE TABLE `quiz_soal_paketsoal` (
  `id` int(11) NOT NULL,
  `generated_soal_id` int(11) DEFAULT NULL,
  `paket_soal_id` int(11) DEFAULT NULL,
  `nomer_paket` int(11) DEFAULT NULL,
  `nomer_urut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_soal_paketsoal`
--

INSERT INTO `quiz_soal_paketsoal` (`id`, `generated_soal_id`, `paket_soal_id`, `nomer_paket`, `nomer_urut`) VALUES
(1, 26, 1, 1, 1),
(2, 25, 1, 2, 1),
(3, 39, 1, 2, 2),
(4, 38, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_statussoal`
--

CREATE TABLE `quiz_statussoal` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_statussoal`
--

INSERT INTO `quiz_statussoal` (`id`, `status`) VALUES
(1, 'Menunggu diverivikasi'),
(2, 'Soal Telah Disubmit');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_studentoutcome`
--

CREATE TABLE `quiz_studentoutcome` (
  `id` int(11) NOT NULL,
  `SO` varchar(200) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `matkul_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_studentoutcome`
--

INSERT INTO `quiz_studentoutcome` (`id`, `SO`, `deskripsi`, `matkul_id`) VALUES
(1, 'SO(a)', 'Fundamental and Engineering Knowledge', 1),
(2, 'SO(b)', 'Development of Engineering Solution', 1),
(3, 'SO(c)', 'Engineering Design', NULL),
(4, 'SO(d)', 'Data and Experiment', NULL),
(5, 'SO(e)', 'Modern Tool Utilization', NULL),
(6, 'SO(f)', 'Knowledge of Contemporary Issues', NULL),
(7, 'SO(g)', 'Effective Communication', NULL),
(8, 'SO(h)', 'Multidisciplinary Teamwork', NULL),
(9, 'SO(i)', 'Professional and Ethical Responsibility', NULL),
(10, 'SO(j)', 'Engineering Awareness and Society', NULL),
(11, 'SO(k)', 'Sustainable Learning', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_templatesoal`
--

CREATE TABLE `quiz_templatesoal` (
  `id` int(11) NOT NULL,
  `judul` longtext NOT NULL,
  `soal` longtext NOT NULL,
  `variasi` int(11) NOT NULL,
  `pengacakan` varchar(20) NOT NULL,
  `var1` varchar(20) NOT NULL,
  `variabel` longtext NOT NULL,
  `rumus` longtext NOT NULL,
  `jawaban` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_topic`
--

CREATE TABLE `quiz_topic` (
  `id` int(11) NOT NULL,
  `Topik` longtext,
  `matkul_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_topic`
--

INSERT INTO `quiz_topic` (`id`, `Topik`, `matkul_id`) VALUES
(1, 'Unit system', 1),
(2, 'Law of movement - Linear movement, Movement on plane, Movement in\r\nspace, Law of motion', 1),
(3, 'Statics Dynamics and (Newton\'s Law), Circular motion', 1),
(4, 'Work, Energy, and Power', 1),
(5, 'Linear Momentum and Angular Momentum', 1),
(6, 'Wave and Sound', 1),
(7, 'Heat and temperature', 1),
(8, 'Thermodynamics', 1),
(9, 'Fluid', 1),
(10, 'Light and Fiber Optic', 1),
(11, 'Special Relativity', 1),
(12, 'Quantum Mechanics', 1),
(13, 'Nuclear Physics', 1);

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
-- Indexes for table `quiz_generatedsoal`
--
ALTER TABLE `quiz_generatedsoal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_generatedsoal_parent_id_0f650d50_fk_quiz_soal_id` (`parent_id`);

--
-- Indexes for table `quiz_indikator_user`
--
ALTER TABLE `quiz_indikator_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_indikator_user_user_id_b516338a_fk_auth_user_id` (`user_id`),
  ADD KEY `quiz_indikator_user_penugasan_id_302ffb68_fk_quiz_penugasan_id` (`penugasan_id`),
  ADD KEY `quiz_indikator_user_learning_outcome_id_8ab08e38_fk_quiz_lear` (`learning_outcome_id`);

--
-- Indexes for table `quiz_learningoutcome`
--
ALTER TABLE `quiz_learningoutcome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_learningoutcome_SO_id_235e73c4_fk_quiz_studentoutcome_id` (`SO_id`);

--
-- Indexes for table `quiz_matakuliah`
--
ALTER TABLE `quiz_matakuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_paketsoal`
--
ALTER TABLE `quiz_paketsoal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_paketsoal_creator_id_f2ea0bed_fk_auth_user_id` (`creator_id`);

--
-- Indexes for table `quiz_penugasan`
--
ALTER TABLE `quiz_penugasan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_penugasan_creator_id_173d7dea_fk_auth_user_id` (`creator_id`),
  ADD KEY `quiz_penugasan_learning_outcome_id_379eff7b_fk_quiz_lear` (`learning_outcome_id`),
  ADD KEY `quiz_penugasan_mata_kuliah_id_67ae0b40_fk_quiz_matakuliah_id` (`mata_kuliah_id`),
  ADD KEY `quiz_penugasan_student_outcome_id_60a1eb6b_fk_quiz_stud` (`student_outcome_id`),
  ADD KEY `quiz_penugasan_topik_id_0ae7ba51_fk_quiz_topic_id` (`topik_id`);

--
-- Indexes for table `quiz_profile`
--
ALTER TABLE `quiz_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `quiz_revisisoal`
--
ALTER TABLE `quiz_revisisoal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_revisisoal_soal_id_e6e82c8d_fk_quiz_soal_id` (`soal_id`),
  ADD KEY `quiz_revisisoal_id_user_id_71fb1265_fk_auth_user_id` (`id_user_id`);

--
-- Indexes for table `quiz_soal`
--
ALTER TABLE `quiz_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_soal_status_id_3ccfad21_fk_quiz_statussoal_id` (`status_id`),
  ADD KEY `quiz_soal_id_creator_id_ec1cde0a` (`id_creator_id`),
  ADD KEY `quiz_soal_indikator_id_8ce1cde7_fk_quiz_penugasan_id` (`indikator_id`);

--
-- Indexes for table `quiz_soal_paketsoal`
--
ALTER TABLE `quiz_soal_paketsoal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_soal_paketsoal_generated_soal_id_1030762c_fk_quiz_gene` (`generated_soal_id`),
  ADD KEY `quiz_soal_paketsoal_paket_soal_id_1abacbc4_fk_quiz_paketsoal_id` (`paket_soal_id`);

--
-- Indexes for table `quiz_statussoal`
--
ALTER TABLE `quiz_statussoal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_studentoutcome`
--
ALTER TABLE `quiz_studentoutcome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_studentoutcome_matkul_id_1f740de3_fk_quiz_matakuliah_id` (`matkul_id`);

--
-- Indexes for table `quiz_templatesoal`
--
ALTER TABLE `quiz_templatesoal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_topic`
--
ALTER TABLE `quiz_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_topic_matkul_id_51fb1671_fk_quiz_matakuliah_id` (`matkul_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `quiz_generatedsoal`
--
ALTER TABLE `quiz_generatedsoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `quiz_indikator_user`
--
ALTER TABLE `quiz_indikator_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quiz_learningoutcome`
--
ALTER TABLE `quiz_learningoutcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz_matakuliah`
--
ALTER TABLE `quiz_matakuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_paketsoal`
--
ALTER TABLE `quiz_paketsoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz_penugasan`
--
ALTER TABLE `quiz_penugasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz_profile`
--
ALTER TABLE `quiz_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `quiz_revisisoal`
--
ALTER TABLE `quiz_revisisoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quiz_soal`
--
ALTER TABLE `quiz_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `quiz_soal_paketsoal`
--
ALTER TABLE `quiz_soal_paketsoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_statussoal`
--
ALTER TABLE `quiz_statussoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quiz_studentoutcome`
--
ALTER TABLE `quiz_studentoutcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz_templatesoal`
--
ALTER TABLE `quiz_templatesoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_topic`
--
ALTER TABLE `quiz_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Constraints for table `quiz_generatedsoal`
--
ALTER TABLE `quiz_generatedsoal`
  ADD CONSTRAINT `quiz_generatedsoal_parent_id_0f650d50_fk_quiz_soal_id` FOREIGN KEY (`parent_id`) REFERENCES `quiz_soal` (`id`);

--
-- Constraints for table `quiz_indikator_user`
--
ALTER TABLE `quiz_indikator_user`
  ADD CONSTRAINT `quiz_indikator_user_learning_outcome_id_8ab08e38_fk_quiz_lear` FOREIGN KEY (`learning_outcome_id`) REFERENCES `quiz_learningoutcome` (`id`),
  ADD CONSTRAINT `quiz_indikator_user_penugasan_id_302ffb68_fk_quiz_penugasan_id` FOREIGN KEY (`penugasan_id`) REFERENCES `quiz_penugasan` (`id`),
  ADD CONSTRAINT `quiz_indikator_user_user_id_b516338a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `quiz_learningoutcome`
--
ALTER TABLE `quiz_learningoutcome`
  ADD CONSTRAINT `quiz_learningoutcome_SO_id_235e73c4_fk_quiz_studentoutcome_id` FOREIGN KEY (`SO_id`) REFERENCES `quiz_studentoutcome` (`id`);

--
-- Constraints for table `quiz_paketsoal`
--
ALTER TABLE `quiz_paketsoal`
  ADD CONSTRAINT `quiz_paketsoal_creator_id_f2ea0bed_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `quiz_penugasan`
--
ALTER TABLE `quiz_penugasan`
  ADD CONSTRAINT `quiz_penugasan_creator_id_173d7dea_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `quiz_penugasan_learning_outcome_id_379eff7b_fk_quiz_lear` FOREIGN KEY (`learning_outcome_id`) REFERENCES `quiz_learningoutcome` (`id`),
  ADD CONSTRAINT `quiz_penugasan_mata_kuliah_id_67ae0b40_fk_quiz_matakuliah_id` FOREIGN KEY (`mata_kuliah_id`) REFERENCES `quiz_matakuliah` (`id`),
  ADD CONSTRAINT `quiz_penugasan_student_outcome_id_60a1eb6b_fk_quiz_stud` FOREIGN KEY (`student_outcome_id`) REFERENCES `quiz_studentoutcome` (`id`),
  ADD CONSTRAINT `quiz_penugasan_topik_id_0ae7ba51_fk_quiz_topic_id` FOREIGN KEY (`topik_id`) REFERENCES `quiz_topic` (`id`);

--
-- Constraints for table `quiz_profile`
--
ALTER TABLE `quiz_profile`
  ADD CONSTRAINT `quiz_profile_user_id_43955dd8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `quiz_revisisoal`
--
ALTER TABLE `quiz_revisisoal`
  ADD CONSTRAINT `quiz_revisisoal_id_user_id_71fb1265_fk_auth_user_id` FOREIGN KEY (`id_user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `quiz_revisisoal_soal_id_e6e82c8d_fk_quiz_soal_id` FOREIGN KEY (`soal_id`) REFERENCES `quiz_soal` (`id`);

--
-- Constraints for table `quiz_soal_paketsoal`
--
ALTER TABLE `quiz_soal_paketsoal`
  ADD CONSTRAINT `quiz_soal_paketsoal_generated_soal_id_1030762c_fk_quiz_gene` FOREIGN KEY (`generated_soal_id`) REFERENCES `quiz_generatedsoal` (`id`),
  ADD CONSTRAINT `quiz_soal_paketsoal_paket_soal_id_1abacbc4_fk_quiz_paketsoal_id` FOREIGN KEY (`paket_soal_id`) REFERENCES `quiz_paketsoal` (`id`);

--
-- Constraints for table `quiz_studentoutcome`
--
ALTER TABLE `quiz_studentoutcome`
  ADD CONSTRAINT `quiz_studentoutcome_matkul_id_1f740de3_fk_quiz_matakuliah_id` FOREIGN KEY (`matkul_id`) REFERENCES `quiz_matakuliah` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
