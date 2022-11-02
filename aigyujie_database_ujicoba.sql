-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 05:33 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

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
(76, 'Can view revisi soal', 19, 'view_revisisoal');

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
(1, 'pbkdf2_sha256$120000$y6OYaOVv0ixO$SE+bT4qcpBWUEN8eRwT8cpPrv+W3CrQxgSCKAiY7Y6E=', '2020-05-29 13:33:27.865472', 1, 'admin', 'Ngadimin', 'Ahmad Sentosa', 'admin@aigyujiem.com', 1, 1, '2020-05-09 17:47:03.000000'),
(2, 'pbkdf2_sha256$120000$ZvsV58Q7QiQF$8iAUlI3uSNN/Sqg5xfrLxXV/UKibSy+JjLwInudOEmk=', NULL, 0, 'User2', '', '', '', 0, 1, '2020-05-17 09:15:09.848016'),
(3, 'pbkdf2_sha256$120000$XnohED6qJ97U$HV49SBbfgHfmrnZLlJzZeKM/FfmqsvNLIYA5oNF8qrw=', '2020-05-29 13:37:20.624486', 0, 'user1', 'Joni', 'Jonson', 'pjm.dig1@siap.puspendik', 0, 1, '2020-05-25 14:12:14.000000');

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
(1, 1, 1),
(2, 3, 2);

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
(153, '2020-05-28 16:26:50.251428', '1', 'Soal_PaketSoal object (1)', 1, '[{\"added\": {}}]', 17, 1);

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
(9, 'quiz', 'materi'),
(16, 'quiz', 'paketsoal'),
(10, 'quiz', 'profile'),
(19, 'quiz', 'revisisoal'),
(11, 'quiz', 'soal'),
(17, 'quiz', 'soal_paketsoal'),
(12, 'quiz', 'standarkompetensi'),
(18, 'quiz', 'statussoal'),
(13, 'quiz', 'templatesoal'),
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
(37, 'quiz', '0017_auto_20200530_2128', '2020-05-30 14:28:32.095272');

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
('ak455y1wpmkhfj1hsb5bxux1ahf90pnz', 'NzZlOTg1NThhMGFiODFlMjM0YzM0YjgzMTI1ZDQzNjViODBlMDRjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIiwic3RlbSI6IiIsImFtb3VudCI6IiIsImFycmFuZ2UiOiIiLCJ2YXJfdmFsdWUiOiIiLCJmb3JtdWxhIjoiIiwib3B0aW9uIjoiIiwidmFyX2Zvcm1fdmFsdWUiOiIiLCJxdWVzdGlvbiI6IiIsImFuc3dlciI6IiJ9', '2020-05-27 13:01:04.622264'),
('brwfylenllkl5byxxnf2vsbdhgmwn768', 'MzEwNGMyNWFjZDA1M2UxNDVmMTM0NjViNGFhOGNhNzU1YzZlZjBiNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIiwiaW51c19pZCI6IjciLCJpbmRpa2F0b3JfaWQiOiIxMCIsInN0ZW0iOiIiLCJhbW91bnQiOiIiLCJhcnJhbmdlIjoiIiwidmFyX3ZhbHVlIjoiIiwiZm9ybXVsYSI6IiIsIm9wdGlvbiI6IiIsInZhcl9mb3JtX3ZhbHVlIjoiIiwicXVlc3Rpb24iOiIiLCJhbnN3ZXIiOiIiLCJ2YXJfbmFtZSI6IlsnW2FdJywgJ1tjXSddIiwidGl0bGUiOiJTb2FsIEtpdGEifQ==', '2020-06-10 13:11:57.315751'),
('hbhh4yuw21y11212cbkdwu4946qnbblo', 'NzZlOTg1NThhMGFiODFlMjM0YzM0YjgzMTI1ZDQzNjViODBlMDRjMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhNTBiNzQwNWY4MDM0M2Y1YWMwNTRlMTczYTg5Y2Q0N2I2Y2Q4NjNjIiwic3RlbSI6IiIsImFtb3VudCI6IiIsImFycmFuZ2UiOiIiLCJ2YXJfdmFsdWUiOiIiLCJmb3JtdWxhIjoiIiwib3B0aW9uIjoiIiwidmFyX2Zvcm1fdmFsdWUiOiIiLCJxdWVzdGlvbiI6IiIsImFuc3dlciI6IiJ9', '2020-05-30 16:28:51.836449'),
('sbidu9uy9xrfj1y06zfczm8lpsr0izru', 'MDQ4MWM0YTU3NWM2MWU3NDIzZWMxYmQyZTE2ZDhmMGY0YzZiZDZiNzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ZDc2ZTQ4YTU0MDMxNGUwMmViOTU1OTE2NjhlYmFkNmEwZGJiODNmIiwicGFrZXRfc29hbF9pZCI6IjEyIiwiaW5kaWthdG9yIjoiMTAiLCJwYXJlbnQiOiI3Iiwib3ZlcmxvYWQiOiIiLCJpZCI6IjEwIiwicXVlc3Rpb24iOlsiQXBha2FoIDMgc2FtYSBkZW5nYW4gNCZuYnNwOyIsIkFwYWthaCAzIHNhbWEgZGVuZ2FuIDQmbmJzcDsiLCJBcGFrYWggMyBzYW1hIGRlbmdhbiA0Jm5ic3A7IiwiQXBha2FoIDQgc2FtYSBkZW5nYW4gNyZuYnNwOyJdLCJhbnN3ZXIiOltbInlhIiwiPGJyIC8+XHJcbnRpZGFrIl0sWyJ5YSIsIjxiciAvPlxyXG50aWRhayJdLFsieWEiLCI8YnIgLz5cclxudGlkYWsiXSxbInlhIiwiPGJyIC8+XHJcbnRpZGFrIl1dLCJ0aXRsZSI6IlNvYWwgS2VsYXMgMyBUS19QYWtldF8xIiwiYnJvdGhlcl9pZCI6Ijc2In0=', '2020-06-13 15:30:57.951091');

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
(1, 'Apakah 1 sama dengan 2&nbsp;', '[\'ya\', \'<br />\\r\\ntidak\']', 7),
(2, 'Apakah 2 sama dengan 5&nbsp;', '[\'ya\', \'<br />\\r\\ntidak\']', 7),
(3, 'Apakah 3 sama dengan 4&nbsp;', '[\'ya\', \'<br />\\r\\ntidak\']', 7),
(4, 'Apakah 4 sama dengan 7&nbsp;', '[\'ya\', \'<br />\\r\\ntidak\']', 7);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_indikator`
--

CREATE TABLE `quiz_indikator` (
  `id` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `level_kognitif` varchar(20) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `kompetensi_dasar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_indikator`
--

INSERT INTO `quiz_indikator` (`id`, `created_date`, `deskripsi`, `level_kognitif`, `creator_id`, `kompetensi_dasar_id`) VALUES
(9, '2020-05-18 22:32:24.000000', 'Siswa dapat menentukan jumlah n suku pertama dari barisan aritmatika', 'Pengetahuan', 1, 40),
(10, '2020-05-26 14:13:43.840978', 'Siswa dapat menjelaskan makna dari pertidaksamaan', 'Penalaran', 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_indikator_user`
--

CREATE TABLE `quiz_indikator_user` (
  `id` int(11) NOT NULL,
  `indikator_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_done` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_indikator_user`
--

INSERT INTO `quiz_indikator_user` (`id`, `indikator_id`, `user_id`, `is_done`) VALUES
(6, 9, 1, 1),
(7, 10, 1, 0),
(8, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_kompetensidasar`
--

CREATE TABLE `quiz_kompetensidasar` (
  `id` int(11) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `materi_id` int(11) NOT NULL,
  `StandarKompetensi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_kompetensidasar`
--

INSERT INTO `quiz_kompetensidasar` (`id`, `deskripsi`, `materi_id`, `StandarKompetensi_id`) VALUES
(1, '3.1 Mendeskripsikan jarak dalam ruang (antar titik, titik ke garis, dan titik ke bidang)', 1, 6),
(2, '3.2 Menentukan dan menganalisis ukuran pemusatan dan penyebaran data yang disajikan dalam bentuk tabel distribusi frekuensi dan histogram', 3, 6),
(3, '3.3 Menganalisis aturan pencacahan (aturan penjumlahan, aturan perkalian, permutasi, dan kombinasi) melalui masalah kontekstual', 2, 6),
(4, '3.4 Mendeskripsikan dan menentukan peluang kejadian majemuk (peluang kejadian-kejadian saling bebas, saling lepas, dan kejadian bersyarat) dari suatu percobaan acak', 2, 6),
(6, '4.1 Menentukan jarak dalam ruang (antar titik, titik ke garis, dan titik ke bidang)', 1, 7),
(7, '4.2 Menyelesaikan masalah yang berkaitan dengan penyajian data hasil pengukuran dan pencacahan dalam tabel distribusi frekuensi dan histogram', 3, 7),
(8, '4.3 Menyelesaikan masalah kontekstual yang berkaitan dengan kaidah pencacahan (aturan penjumlahan, aturan perkalian, permutasi, dan kombinasi)', 2, 7),
(9, '4.4 Menyelesaikan masalah yang berkaitan dengan peluang kejadian majemuk (peluang, kejadian-kejadian saling bebas, saling lepas, dan kejadian bersyarat)', 2, 7),
(10, '3.1 Mengintepretasi persamaan dan pertidaksamaan nilai mutlak dari bentuk linear satu variabel dengan persamaan dan pertidaksamaan linear Aljabar lainnya', 4, 2),
(11, '4.1 Menyelesaikan masalah yang berkaitan dengan persamaan dan pertidaksamaan nilai mutlak dari bentuk linear satu variabel', 4, 3),
(12, '3.2 Menjelaskan dan menentukan penyelesaian pertidaksamaan rasional dan irasional satu variabel', 4, 2),
(13, '4.2 Menyelesaikan masalah yang berkaitan dengan pertidaksamaan rasional dan irasional satu variabel', 4, 3),
(14, '3.3 Menyusun sistem persamaan linear tiga variabel dari masalah kontekstual', 5, 2),
(15, '4.3 Menyelesaikan masalah kontekstual yang berkaitan dengan sistem persamaan linear tiga variable', 5, 3),
(16, '3.4 Menjelaskan dan menentukan penyelesaian sistem pertidaksamaan dua variabel (linear-kuadrat dan kuadrat-kuadrat)', 5, 2),
(17, '4.4 Menyajikan dan menyelesaikan masalah yang berkaitan dengan sistem pertidaksamaan dua variabel (linear-kuadrat dan kuadrat-kuadrat)', 5, 3),
(18, '3.5 Menjelaskan dan menentukan fungsi (terutama fungsi linear, fungsi kuadrat, dan fungsi rasional) secara formal yang meliputi notasi, daerah asal, daerah hasil, dan ekspresi simbolik, serta sketsa grafiknya', 6, 2),
(19, '3.6 Menjelaskan operasi komposisi pada fungsi dan operasi invers pada fungsi invers serta sifat-sifatnya serta menentukan eksistensinya', 6, 2),
(20, '4.5 Menganalisa karakteristik masing-masing grafik (titik potong dengan sumbu, titik puncak, asimtot) dan perubahan grafik fungsinya akibat transformasi f^2(x), 1/f(x), |f(x)| dsb', 6, 3),
(21, '4.6 Menyelesaikan masalah yang berkaitan dengan operasi komposisi dan operasi invers suatu fungsi', 6, 3),
(22, '3.7 Menjelaskan rasio trigonometri (sinus, cosinus, tangen, cosecan, secan, dan cotangen) pada segitiga siku-siku', 7, 2),
(23, '4.7 Menyelesaikan masalah kontekstual yang berkaitan dengan rasio trigonometri (sinus, cosinus, tangen, cosecan, secan, dan cotangen) pada segitiga siku-siku', 7, 3),
(24, '3.8 Menggeneralisasi rasio trigonometri untuk sudut-sudut di berbagai kuadran dan sudut-sudut berelasi', 7, 2),
(25, '4.8 Menyelesaikan masalah kontekstual yang berkaitan dengan rasio trigonometri sudut-sudut di berbagai kuadran dan sudut-sudut berelasi', 7, 3),
(26, '3.9 Menjelaskan aturan sinus dan cosinus', 7, 2),
(27, '4.9 Menyelesaikan masalah yang berkaitan dengan aturan sinus dan cosinus', 7, 3),
(28, '3.10 Menjelaskan fungsi trigonometri dengan menggunakan lingkaran satuan', 7, 2),
(29, '4.10 Menganalisa perubahan grafik fungsi trigonometri akibat perubahan pada konstanta pada fungsi y = a sin b(x + c) + d.', 7, 3),
(30, '3.1 Menjelaskan metode pembuktian Pernyataan matematis berupa barisan, ketidaksamaan, keterbagiaan dengan induksi matematika', 8, 4),
(31, '4.1 Menggunakan metode pembuktian induksi matematika untuk menguji pernyataan matematis berupa barisan, ketidaksamaan, keterbagiaan', 8, 3),
(32, '3.2 Menjelaskan program linear dua variabel dan metode penyelesaiannya dengan menggunakan masalah kontekstual', 9, 4),
(33, '4.2 Menyelesaikan masalah kontekstual yang berkaitan dengan program linear dua variabel', 9, 5),
(34, '3.3 Menjelaskan matriks dan kesamaan matriks dengan menggunakan masalah kontekstual dan melakukan operasi pada matriks yang meliputi penjumlahan, pengurangan, perkalian skalar, dan perkalian, serta transpose', 10, 4),
(35, '4.3 Menyelesaikan masalah kontekstual yang berkaitan dengan matriks dan operasinya', 10, 5),
(36, '3.4 Menganalisis sifat-sifat determinan dan invers matriks berordo 2×2 dan 3×3', 10, 4),
(37, '4.4 Menyelesaikan masalah yang berkaitan dengan determinan dan invers matriks berordo 2×2 dan 3×3', 10, 5),
(38, '3.5 Menganalisis dan membandingkan transformasi dan komposisi transformasi dengan menggunakan matriks', 11, 4),
(39, '4.5 Menyelesaikan masalah yang berkaitan dengan matriks transformasi geometri (translasi, refleksi, dilatasi dan rotasi)', 11, 5),
(40, '3.6 Menggeneralisasi pola bilangan dan jumlah pada barisan Aritmetika dan Geometri', 12, 4),
(41, '4.6 Menggunakan pola barisan aritmetika atau geometri untuk menyajikan dan menyelesaikan masalah kontekstual (termasuk pertumbuhan, peluruhan, bunga majemuk, dan anuitas)', 12, 5),
(42, '3.7 Menjelaskan limit fungsi aljabar (fungsi polinom dan fungsi rasional) secara intuitif dan sifat-sifatnya, serta menentukan eksistensinya', 13, 4),
(43, '4.7 Menyelesaikan masalah yang berkaitan dengan limit fungsi aljabar', 13, 5),
(44, '3.8 Menjelaskan sifat-sifat turunan fungsi aljabar dan menentukan turunan fungsi aljabar menggunakan definisi atau sifatsifat turunan fungsi', 14, 4),
(45, '4.8 Menyelesaikan masalah yang berkaitan dengan turunan fungsi aljabar', 14, 5),
(46, '3.9 Menganalisis keberkaitanan turunan pertama fungsi dengan nilai maksimum, nilai minimum, dan selang kemonotonan fungsi, serta kemiringan garis singgung kurva', 14, 4),
(47, '4.9 Menggunakan turunan pertama fungsi untuk menentukan titik maksimum, titik minimum, dan selang kemonotonan fungsi, serta kemiringan garis singgung kurva, persamaan garis singgung, dan garis normal kurva berkaitan dengan masalah kontekstual', 14, 5),
(48, '3.10 Mendeskripsikan integral tak tentu (anti turunan) fungsi aljabar dan menganalisis sifatsifatnya berdasarkan sifat-sifat turunan fungsi', 15, 4),
(49, '4.10 Menyelesaikan masalah yang berkaitan dengan integral tak tentu (anti turunan) fungsi aljabar', 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_materi`
--

CREATE TABLE `quiz_materi` (
  `id` int(11) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_materi`
--

INSERT INTO `quiz_materi` (`id`, `deskripsi`, `kelas`) VALUES
(1, 'Dimensi Tiga', 12),
(2, 'Peluang', 12),
(3, 'Statistika', 12),
(4, 'Persamaan dan Pertidaksamaan Nilai Mutlak Linear Satu Variabel', 10),
(5, 'Sistem Persamaan Linear Tiga Variabel', 10),
(6, 'Fungsi', 10),
(7, 'Trigonometri', 10),
(8, 'Induksi Matematis', 11),
(9, 'Program Linear', 11),
(10, 'Matriks', 11),
(11, 'Transformasi', 11),
(12, 'Barisan', 11),
(13, 'Limit Fungsi', 11),
(14, 'Turunan', 11),
(15, 'Integral', 11);

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
  `kurikulum` int(11) DEFAULT NULL,
  `generated_date` datetime(6) DEFAULT NULL,
  `is_generated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_paketsoal`
--

INSERT INTO `quiz_paketsoal` (`id`, `created_date`, `judul`, `jumlah_paket`, `creator_id`, `kurikulum`, `generated_date`, `is_generated`) VALUES
(10, '2020-05-30 22:07:23.067012', 'SOAL KELAS 6 ABA', 3, 3, 2013, '2020-05-30 22:08:10.225305', 1),
(11, '2020-05-30 22:08:56.472673', 'Soal SD A', 3, 3, 2013, '2020-05-30 22:09:58.121486', 1),
(12, '2020-05-30 22:10:25.087692', 'Soal UTS SMA', 3, 3, 2013, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_profile`
--

CREATE TABLE `quiz_profile` (
  `id` int(11) NOT NULL,
  `sekolah` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `mapel` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_profile`
--

INSERT INTO `quiz_profile` (`id`, `sekolah`, `alamat`, `mapel`, `user_id`) VALUES
(1, 'SMA N 1 Padjajaran', 'Bandung', 'Matematika', 1),
(2, '', '', '', 2),
(3, '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_revisisoal`
--

CREATE TABLE `quiz_revisisoal` (
  `id` int(11) NOT NULL,
  `pesan` longtext NOT NULL,
  `soal_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_revisisoal`
--

INSERT INTO `quiz_revisisoal` (`id`, `pesan`, `soal_id`) VALUES
(6, 'COBA LAGI', 6);

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
  `indikator_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `variabel_gambar` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_soal`
--

INSERT INTO `quiz_soal` (`id`, `id_creator_id`, `judul`, `soal`, `variasi`, `pengacakan`, `var1`, `variabel`, `rumus`, `jawaban`, `created_date`, `indikator_id`, `status_id`, `variabel_gambar`) VALUES
(6, 1, 'dass', 'Diketuhi barisan aritmatika [a], [b], [c], ...., Un. Tentukan jumlah 100 suku pertama dari barisan tersebut...', 1, 'mapping', '[\'[a]\', \'[b]\', \'[c]\']', '[a]=ads, aaa;\r\n[b]=asd, 2;\r\n[c]=asd, 3', '---', 'adsdasdas', '2020-05-26 16:50:32.272822', 9, 1, '---'),
(7, 1, 'Soal Kita', 'Apakah [a] sama dengan [c]&nbsp;', 3, 'mapping', '[\'[a]\', \'[c]\']', '[a]= 1, 2, 3, 4;\r\n[c]= 2, 5, 4, 7', '---', 'ya;<br />\r\ntidak', '2020-05-27 18:24:42.023554', 10, 3, '---');

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
(62, 4, 10, 3, 1),
(63, 4, 10, 3, 2),
(64, 3, 10, 2, 2),
(66, 4, 10, 1, 1),
(67, 4, 10, 2, 1),
(68, 4, 10, 1, 2),
(69, 4, 11, 1, 1),
(71, 3, 11, 1, 2),
(72, 4, 11, 2, 1),
(73, 4, 11, 3, 1),
(74, 3, 11, 2, 2),
(75, 3, 11, 3, 2),
(79, 4, 12, 1, 1),
(80, 3, 12, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_standarkompetensi`
--

CREATE TABLE `quiz_standarkompetensi` (
  `id` int(11) NOT NULL,
  `kurikulum` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `tipe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_standarkompetensi`
--

INSERT INTO `quiz_standarkompetensi` (`id`, `kurikulum`, `kelas`, `deskripsi`, `tipe`) VALUES
(2, 2013, 10, '3. Memahami, menerapkan, dan menganalisis pengetahuan faktual, konseptual, prosedural berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humaniora dengan wawasan kemanusiaan, kebangsaan, kenegaraan, dan peradaban terkait penyebab fenomena dan kejadian, serta menerapkan pengetahuan prosedural pada bidang kajian yang spesifik sesuai dengan bakat dan minatnya untuk memecahkan masalah', 'Pengetahuan'),
(3, 2013, 10, '4. Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, dan mampu menggunakan metoda sesuai kaidah keilmuan', 'Keterampilan'),
(4, 2013, 11, '3. Memahami ,menerapkan, dan menganalisis pengetahuan faktual, konseptual, prosedural, dan metakognitif berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humaniora dengan wawasan kemanusiaan, kebangsaan, kenegaraan, dan peradaban terkait penyebab fenomena dan kejadian, serta menerapkan pengetahuan prosedural pada bidang kajian yang spesifik sesuai dengan bakat dan minatnya untuk memecahkan masalah', 'Pengetahuan'),
(5, 2013, 11, '4. Mengolah, menalar, dan menyaji dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri, bertindak secara efektif dan kreatif, serta mampu menggunakan metoda sesuai kaidah keilmuan', 'Keterampilan'),
(6, 2013, 12, '3. Memahami, menerapkan, menganalisis dan mengevaluasi pengetahuan faktual, konseptual, prosedural, dan metakognitif berdasarkan rasa ingintahunya tentang ilmu pengetahuan, teknologi, seni, budaya, dan humaniora dengan wawasan kemanusiaan, kebangsaan, kenegaraan, dan peradaban terkait penyebab fenomena dan kejadian, serta menerapkan pengetahuan prosedural pada bidang kajian yang spesifik sesuai dengan bakat dan minatnya untuk memecahkan masalah', 'Pengetahuan'),
(7, 2013, 12, '4. Mengolah, menalar, menyaji, dan mencipta dalam ranah konkret dan ranah abstrak terkait dengan pengembangan dari yang dipelajarinya di sekolah secara mandiri serta bertindak secara efektif dan kreatif, dan mampu menggunakan metoda sesuai kaidah keilmuan', 'Keterampilan');

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
(1, 'Menunggu Diverifikasi'),
(2, 'Ditolak'),
(3, 'Diterima');

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
-- Indexes for table `quiz_indikator`
--
ALTER TABLE `quiz_indikator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_indikator_creator_id_f719ba69_fk_auth_user_id` (`creator_id`),
  ADD KEY `quiz_indikator_kompetensi_dasar_id_2d3f6b07_fk_quiz_komp` (`kompetensi_dasar_id`);

--
-- Indexes for table `quiz_indikator_user`
--
ALTER TABLE `quiz_indikator_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_indikator_user_indikator_id_2d2238bb_fk_quiz_indikator_id` (`indikator_id`),
  ADD KEY `quiz_indikator_user_user_id_b516338a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `quiz_kompetensidasar`
--
ALTER TABLE `quiz_kompetensidasar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_kompetensidasar_materi_id_090549d9_fk_quiz_materi_id` (`materi_id`),
  ADD KEY `quiz_kompetensidasar_StandarKompetensi_id_41ca78c5_fk_quiz_stan` (`StandarKompetensi_id`);

--
-- Indexes for table `quiz_materi`
--
ALTER TABLE `quiz_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_paketsoal`
--
ALTER TABLE `quiz_paketsoal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_paketsoal_creator_id_f2ea0bed_fk_auth_user_id` (`creator_id`);

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
  ADD KEY `quiz_revisisoal_soal_id_e6e82c8d_fk_quiz_soal_id` (`soal_id`);

--
-- Indexes for table `quiz_soal`
--
ALTER TABLE `quiz_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_soal_indikator_id_8ce1cde7_fk_quiz_indikator_id` (`indikator_id`),
  ADD KEY `quiz_soal_status_id_3ccfad21_fk_quiz_statussoal_id` (`status_id`),
  ADD KEY `quiz_soal_id_creator_id_ec1cde0a` (`id_creator_id`);

--
-- Indexes for table `quiz_soal_paketsoal`
--
ALTER TABLE `quiz_soal_paketsoal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_soal_paketsoal_generated_soal_id_1030762c_fk_quiz_gene` (`generated_soal_id`),
  ADD KEY `quiz_soal_paketsoal_paket_soal_id_1abacbc4_fk_quiz_paketsoal_id` (`paket_soal_id`);

--
-- Indexes for table `quiz_standarkompetensi`
--
ALTER TABLE `quiz_standarkompetensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_statussoal`
--
ALTER TABLE `quiz_statussoal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_templatesoal`
--
ALTER TABLE `quiz_templatesoal`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `quiz_generatedsoal`
--
ALTER TABLE `quiz_generatedsoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_indikator`
--
ALTER TABLE `quiz_indikator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quiz_indikator_user`
--
ALTER TABLE `quiz_indikator_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_kompetensidasar`
--
ALTER TABLE `quiz_kompetensidasar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `quiz_materi`
--
ALTER TABLE `quiz_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `quiz_paketsoal`
--
ALTER TABLE `quiz_paketsoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quiz_profile`
--
ALTER TABLE `quiz_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz_revisisoal`
--
ALTER TABLE `quiz_revisisoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz_soal`
--
ALTER TABLE `quiz_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quiz_soal_paketsoal`
--
ALTER TABLE `quiz_soal_paketsoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `quiz_standarkompetensi`
--
ALTER TABLE `quiz_standarkompetensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quiz_statussoal`
--
ALTER TABLE `quiz_statussoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz_templatesoal`
--
ALTER TABLE `quiz_templatesoal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `quiz_indikator`
--
ALTER TABLE `quiz_indikator`
  ADD CONSTRAINT `quiz_indikator_creator_id_f719ba69_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `quiz_indikator_kompetensi_dasar_id_2d3f6b07_fk_quiz_komp` FOREIGN KEY (`kompetensi_dasar_id`) REFERENCES `quiz_kompetensidasar` (`id`);

--
-- Constraints for table `quiz_indikator_user`
--
ALTER TABLE `quiz_indikator_user`
  ADD CONSTRAINT `quiz_indikator_user_indikator_id_2d2238bb_fk_quiz_indikator_id` FOREIGN KEY (`indikator_id`) REFERENCES `quiz_indikator` (`id`),
  ADD CONSTRAINT `quiz_indikator_user_user_id_b516338a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `quiz_kompetensidasar`
--
ALTER TABLE `quiz_kompetensidasar`
  ADD CONSTRAINT `quiz_kompetensidasar_StandarKompetensi_id_41ca78c5_fk_quiz_stan` FOREIGN KEY (`StandarKompetensi_id`) REFERENCES `quiz_standarkompetensi` (`id`),
  ADD CONSTRAINT `quiz_kompetensidasar_materi_id_090549d9_fk_quiz_materi_id` FOREIGN KEY (`materi_id`) REFERENCES `quiz_materi` (`id`);

--
-- Constraints for table `quiz_paketsoal`
--
ALTER TABLE `quiz_paketsoal`
  ADD CONSTRAINT `quiz_paketsoal_creator_id_f2ea0bed_fk_auth_user_id` FOREIGN KEY (`creator_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `quiz_profile`
--
ALTER TABLE `quiz_profile`
  ADD CONSTRAINT `quiz_profile_user_id_43955dd8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `quiz_revisisoal`
--
ALTER TABLE `quiz_revisisoal`
  ADD CONSTRAINT `quiz_revisisoal_soal_id_e6e82c8d_fk_quiz_soal_id` FOREIGN KEY (`soal_id`) REFERENCES `quiz_soal` (`id`);

--
-- Constraints for table `quiz_soal`
--
ALTER TABLE `quiz_soal`
  ADD CONSTRAINT `quiz_soal_id_creator_id_ec1cde0a_fk_auth_user_id` FOREIGN KEY (`id_creator_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `quiz_soal_indikator_id_8ce1cde7_fk_quiz_indikator_id` FOREIGN KEY (`indikator_id`) REFERENCES `quiz_indikator` (`id`),
  ADD CONSTRAINT `quiz_soal_status_id_3ccfad21_fk_quiz_statussoal_id` FOREIGN KEY (`status_id`) REFERENCES `quiz_statussoal` (`id`);

--
-- Constraints for table `quiz_soal_paketsoal`
--
ALTER TABLE `quiz_soal_paketsoal`
  ADD CONSTRAINT `quiz_soal_paketsoal_generated_soal_id_1030762c_fk_quiz_gene` FOREIGN KEY (`generated_soal_id`) REFERENCES `quiz_generatedsoal` (`id`),
  ADD CONSTRAINT `quiz_soal_paketsoal_paket_soal_id_1abacbc4_fk_quiz_paketsoal_id` FOREIGN KEY (`paket_soal_id`) REFERENCES `quiz_paketsoal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
