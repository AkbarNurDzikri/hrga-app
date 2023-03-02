-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 02, 2023 at 02:16 AM
-- Server version: 10.2.44-MariaDB-log
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blasfoli_cuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `tgl_kunjungan` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat_perusahaan` varchar(255) NOT NULL,
  `personel_bfi` varchar(255) NOT NULL,
  `tujuan_kunjungan` varchar(255) NOT NULL,
  `dengan_janji` enum('Ya','Tidak') NOT NULL,
  `kendaraan` enum('Mobil','Motor') NOT NULL,
  `nomor_kendaraan` varchar(255) NOT NULL,
  `signatured` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `tgl_kunjungan`, `nama`, `nama_perusahaan`, `alamat_perusahaan`, `personel_bfi`, `tujuan_kunjungan`, `dengan_janji`, `kendaraan`, `nomor_kendaraan`, `signatured`, `timestamp`) VALUES
(33, '2023-03-01', 'Bintang', 'PT. Blasfolie', 'Karawang', 'Dzikri', 'Meeting', 'Ya', 'Motor', 'T 1678 FI', 'signature-1677654599.svg', '2023-03-01 14:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `leave_in`
--

CREATE TABLE `leave_in` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `number_of_day` decimal(3,1) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `year_stamp` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_in`
--

INSERT INTO `leave_in` (`id`, `emp_id`, `number_of_day`, `remarks`, `year_stamp`) VALUES
(99, 135, '12.0', 'Topup annual leave', 2023),
(100, 97, '12.0', 'Topup annual leave', 2023),
(101, 73, '12.0', 'Topup annual leave', 2023),
(102, 85, '12.0', 'Topup annual leave', 2023),
(103, 114, '12.0', 'Topup annual leave', 2023),
(104, 126, '12.0', 'Topup annual leave', 2023),
(105, 96, '12.0', 'Topup annual leave', 2023),
(106, 122, '12.0', 'Topup annual leave', 2023),
(107, 89, '12.0', 'Topup annual leave', 2023),
(108, 74, '12.0', 'Topup annual leave', 2023),
(110, 71, '12.0', 'Topup annual leave', 2023),
(111, 68, '12.0', 'Topup annual leave', 2023),
(112, 129, '12.0', 'Topup annual leave', 2023),
(113, 80, '12.0', 'Topup annual leave', 2023),
(114, 84, '12.0', 'Topup annual leave', 2023),
(115, 104, '12.0', 'Topup annual leave', 2023),
(116, 87, '12.0', 'Topup annual leave', 2023),
(117, 83, '12.0', 'Topup annual leave', 2023),
(118, 128, '12.0', 'Topup annual leave', 2023),
(119, 132, '12.0', 'Topup annual leave', 2023),
(121, 125, '12.0', 'Topup annual leave', 2023),
(122, 106, '12.0', 'Topup annual leave', 2023),
(123, 110, '12.0', 'Topup annual leave', 2023),
(124, 118, '12.0', 'Topup annual leave', 2023),
(125, 88, '12.0', 'Topup annual leave', 2023),
(126, 69, '12.0', 'Topup annual leave', 2023),
(127, 93, '12.0', 'Topup annual leave', 2023),
(129, 102, '12.0', 'Topup annual leave', 2023),
(130, 131, '12.0', 'Topup annual leave', 2023),
(131, 133, '12.0', 'Topup annual leave', 2023),
(132, 108, '12.0', 'Topup annual leave', 2023),
(134, 98, '12.0', 'Topup annual leave', 2023),
(137, 75, '12.0', 'Topup annual leave', 2023),
(138, 113, '12.0', 'Topup annual leave', 2023),
(139, 99, '12.0', 'Topup annual leave', 2023),
(140, 100, '12.0', 'Topup annual leave', 2023),
(141, 121, '12.0', 'Topup annual leave', 2023),
(142, 123, '12.0', 'Topup annual leave', 2023),
(143, 136, '12.0', 'Topup annual leave', 2023),
(144, 70, '12.0', 'Topup annual leave', 2023),
(145, 124, '12.0', 'Topup annual leave', 2023),
(146, 101, '12.0', 'Topup annual leave', 2023),
(147, 90, '12.0', 'Topup annual leave', 2023),
(148, 134, '12.0', 'Topup annual leave', 2023),
(149, 103, '12.0', 'Topup annual leave', 2023),
(150, 127, '12.0', 'Topup annual leave', 2023),
(151, 95, '12.0', 'Topup annual leave', 2023),
(152, 72, '12.0', 'Topup annual leave', 2023),
(153, 137, '12.0', 'Topup annual leave', 2023),
(154, 109, '12.0', 'Topup annual leave', 2023),
(156, 120, '12.0', 'Topup annual leave', 2023),
(157, 116, '12.0', 'Topup annual leave', 2023),
(158, 117, '12.0', 'Topup annual leave', 2023),
(159, 107, '12.0', 'Topup annual leave', 2023),
(160, 112, '12.0', 'Topup annual leave', 2023),
(161, 119, '12.0', 'Topup annual leave', 2023),
(162, 130, '12.0', 'Topup annual leave', 2023);

--
-- Triggers `leave_in`
--
DELIMITER $$
CREATE TRIGGER `update_leave_balance_leave_in` AFTER INSERT ON `leave_in` FOR EACH ROW BEGIN
UPDATE master_employees SET leave_balance = leave_balance + NEW.number_of_day WHERE id = NEW.emp_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `leave_out`
--

CREATE TABLE `leave_out` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `leave_type` enum('Annual Leave','Special Leave','Adjustment Leave') DEFAULT NULL,
  `leave_reason` varchar(255) NOT NULL,
  `leave_evidence` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `number_of_day` decimal(2,1) DEFAULT NULL,
  `has_halfday` tinyint(1) DEFAULT NULL,
  `has_holidays` decimal(2,1) DEFAULT NULL,
  `reason_rejected` varchar(255) DEFAULT NULL,
  `status` enum('Approved','Rejected') NOT NULL,
  `sign_to` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_out`
--

INSERT INTO `leave_out` (`id`, `emp_id`, `leave_type`, `leave_reason`, `leave_evidence`, `start_date`, `end_date`, `number_of_day`, `has_halfday`, `has_holidays`, `reason_rejected`, `status`, `sign_to`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(309, 135, 'Annual Leave', 'Sakit tidak ada SKD', '', '2023-01-16', '2023-01-16', '1.0', 0, '0.0', '', 'Approved', NULL, 135, 82, '2023-01-17 08:51:37', '2023-01-20 02:39:20'),
(310, 97, 'Annual Leave', 'Merawat orang tua di RS', '', '2023-01-17', '2023-01-18', '2.0', 0, '0.0', '', 'Approved', NULL, 97, 82, '2023-01-17 08:52:45', '2023-01-20 02:39:06'),
(311, 73, 'Annual Leave', 'Membantu tetangga hajatan', '', '2023-01-22', '2023-01-22', '1.0', 0, '0.0', '', 'Approved', NULL, 73, 82, '2023-01-17 08:55:09', '2023-01-24 11:45:40'),
(312, 85, 'Annual Leave', 'Saudara meninggal dunia dan di kebumikan Sabtu 14/01/23 TPU pondok Rangon Jakarta', '', '2023-01-14', '2023-01-14', '0.5', 1, '0.0', '', 'Approved', NULL, 85, 82, '2023-01-17 08:55:58', '2023-01-20 02:38:30'),
(313, 114, 'Annual Leave', 'Fisioterapi', '', '2023-01-18', '2023-01-18', '1.0', 0, '0.0', '', 'Approved', NULL, 114, 82, '2023-01-17 08:56:03', '2023-01-20 02:38:09'),
(314, 126, 'Annual Leave', 'Anak sakit', '', '2023-01-09', '2023-01-09', '1.0', 0, '0.0', '', 'Approved', NULL, 126, 82, '2023-01-17 08:57:02', '2023-01-20 02:37:50'),
(315, 96, 'Annual Leave', 'Orang tua di opname di rumah sakit', '', '2023-01-06', '2023-01-11', '5.0', 0, '1.0', '', 'Approved', NULL, 96, 82, '2023-01-17 08:58:25', '2023-01-20 02:37:22'),
(316, 122, 'Annual Leave', 'Kepentingan keluarga', '', '2023-01-28', '2023-01-29', '2.0', 0, '0.0', '', 'Approved', NULL, 122, 82, '2023-01-17 08:59:11', '2023-01-24 11:49:02'),
(317, 89, 'Annual Leave', 'Keperluan keluarga (Renovasi dapur) ', '', '2023-01-16', '2023-01-17', '2.0', 0, '0.0', '', 'Approved', NULL, 89, 82, '2023-01-17 09:01:04', '2023-01-19 11:27:25'),
(318, 74, 'Annual Leave', 'Keperluan keluarga', '', '2023-01-15', '2023-01-15', '1.0', 0, '0.0', '', 'Approved', NULL, 74, 82, '2023-01-17 09:02:20', '2023-01-20 02:36:52'),
(320, 71, 'Annual Leave', 'Mengantar istri periksa kandungan', '', '2023-01-09', '2023-01-09', '1.0', 0, '0.0', '', 'Approved', NULL, 71, 82, '2023-01-17 09:04:48', '2023-01-20 02:36:37'),
(321, 129, 'Annual Leave', 'Pulang kampung', '', '2023-01-03', '2023-01-04', '2.0', 0, '0.0', '', 'Approved', NULL, 129, 82, '2023-01-17 09:07:01', '2023-01-19 11:27:34'),
(322, 68, 'Annual Leave', 'Keperluan pribadi (keperluan persiapan pernikahan)', '', '2023-01-21', '2023-01-21', '0.5', 1, '0.0', '', 'Approved', NULL, 68, 82, '2023-01-17 09:07:55', '2023-01-24 11:48:38'),
(323, 80, 'Annual Leave', 'Pulang kampung ke tasik', '', '2023-01-07', '2023-01-09', '1.5', 1, '1.0', '', 'Approved', NULL, 80, 82, '2023-01-17 09:08:01', '2023-01-20 02:36:17'),
(325, 128, 'Annual Leave', 'Sakit', '', '2022-12-24', '2022-12-24', '1.0', 0, '0.0', '', 'Approved', NULL, 128, 82, '2023-01-19 06:26:43', '2023-01-24 11:48:50'),
(326, 132, 'Annual Leave', 'Acara keluarga (Khitanan keponakan)', '', '2023-01-28', '2023-01-29', '2.0', 0, '0.0', '', 'Approved', NULL, 132, 82, '2023-01-19 06:29:28', '2023-01-24 11:48:25'),
(327, 106, 'Annual Leave', 'Sakit ', '', '2023-01-18', '2023-01-18', '1.0', 0, '0.0', '', 'Approved', NULL, 106, 82, '2023-01-19 07:47:44', '2023-01-24 11:48:14'),
(328, 131, 'Annual Leave', 'Keperluan keluarga (Mertua umroh, antar ke bandara) ', '', '2023-01-25', '2023-01-25', '1.0', 0, '0.0', '', 'Approved', NULL, 131, 82, '2023-01-19 08:33:19', '2023-01-24 11:48:05'),
(329, 99, 'Annual Leave', 'Acara keluarga (sisa cuti tahun 2022) ', '', '2023-01-28', '2023-01-28', '1.0', 0, '0.0', '', 'Approved', NULL, 99, 82, '2023-01-20 01:53:43', '2023-01-24 11:47:51'),
(330, 70, 'Annual Leave', 'Pulang Kampung (Check Up Anak ke Dokter)', '', '2023-01-30', '2023-01-31', '2.0', 0, '0.0', '', 'Approved', NULL, 70, 82, '2023-01-21 08:43:01', '2023-01-24 11:47:36'),
(331, 89, 'Annual Leave', '(PINDAHAN RUMAH)', '', '2023-01-29', '2023-01-29', '1.0', 0, '0.0', '', 'Approved', NULL, 89, 82, '2023-01-21 11:49:32', '2023-01-24 11:47:14'),
(332, 96, 'Annual Leave', 'Orang tua istri saya meninggal ', '', '2023-01-23', '2023-01-24', '2.0', 0, '0.0', '', 'Approved', NULL, 96, 82, '2023-01-22 02:11:34', '2023-01-24 11:47:04'),
(333, 84, 'Annual Leave', 'Cuti Bersama - Tahun Baru Imlek 2574 Khongzili ', '', '2023-01-22', '2023-01-22', '1.0', 0, '0.0', '', 'Approved', NULL, 84, 82, '2023-01-22 02:52:08', '2023-01-24 11:46:48'),
(334, 83, 'Annual Leave', 'Imunisasi anak (bayi)', '', '2023-01-16', '2023-01-16', '1.0', 0, '0.0', '', 'Approved', NULL, 83, 82, '2023-01-23 01:14:43', '2023-01-24 11:46:38'),
(335, 135, 'Annual Leave', 'Sakit tidak ada skd (karna blm ada bpjs kesehatan)', '', '2023-01-20', '2023-01-20', '1.0', 0, '0.0', '', 'Approved', NULL, 135, 82, '2023-01-23 01:54:17', '2023-01-24 11:46:29'),
(336, 110, 'Annual Leave', 'Ada keperluan keluarga', '', '2023-01-20', '2023-01-20', '1.0', 0, '0.0', '', 'Approved', NULL, 110, 82, '2023-01-23 05:16:49', '2023-01-24 11:46:15'),
(337, 108, 'Annual Leave', 'Daftar sekolah anak ke tasikmalaya', '', '2023-01-28', '2023-01-30', '1.5', 1, '1.0', '', 'Approved', NULL, 108, 82, '2023-01-23 07:17:48', '2023-01-24 11:46:04'),
(338, 75, 'Annual Leave', 'Ada ke perluan keluarga', '', '2023-01-28', '2023-01-28', '1.0', 0, '0.0', '', 'Approved', NULL, 75, 82, '2023-01-23 08:37:46', '2023-01-24 11:45:51'),
(339, 128, 'Annual Leave', 'Keperluan keluarga, AQIQAH keponakan/anak kakak ', '', '2023-02-06', '2023-02-06', '1.0', 0, '0.0', '', 'Approved', NULL, 128, 82, '2023-01-24 01:37:00', '2023-02-02 02:34:48'),
(340, 74, 'Annual Leave', 'Keperluan keluarga(sisa cuti tahun 2022)', '', '2023-02-06', '2023-02-06', '1.0', 0, '0.0', '', 'Approved', NULL, 74, 82, '2023-01-27 02:18:02', '2023-02-02 02:36:01'),
(341, 84, 'Annual Leave', 'Perayaan Cap Go Meh 2023', '', '2023-02-03', '2023-02-03', '1.0', 0, '0.0', '', 'Approved', NULL, 84, 82, '2023-01-29 01:48:44', '2023-01-30 01:17:04'),
(342, 136, 'Annual Leave', 'Keperluan keluarga (nikahan saudara)', '', '2023-02-11', '2023-02-12', '2.0', 0, '0.0', '', 'Approved', NULL, 136, 82, '2023-01-30 12:14:12', '2023-02-06 11:40:06'),
(346, 68, 'Annual Leave', 'Keperluan pribadi ( persiapan acara pernikahan)', '', '2023-02-03', '2023-02-04', '1.5', 1, '0.0', '', 'Approved', NULL, 68, 82, '2023-01-30 02:51:23', '2023-02-02 02:37:50'),
(347, 131, 'Annual Leave', 'Anak sakit', '', '2023-01-24', '2023-01-24', '1.0', 0, '0.0', '', 'Approved', NULL, 131, 82, '2023-01-30 03:12:38', '2023-02-02 02:38:27'),
(349, 97, 'Annual Leave', 'Urusan keluarga ', '', '2023-01-26', '2023-01-26', '1.0', 0, '0.0', '', 'Approved', NULL, 97, 82, '2023-01-31 09:37:14', '2023-02-06 11:39:47'),
(350, 114, 'Annual Leave', 'Fisoterapi', '', '2023-01-31', '2023-01-31', '1.0', 0, '0.0', '', 'Approved', NULL, 114, 82, '2023-01-31 12:54:55', '2023-02-06 11:39:23'),
(351, 83, 'Annual Leave', 'Keperluan keluarga (cukur rambut bayi, suntik KB istri, beres2 rumah, dsb.)', '', '2023-02-03', '2023-02-04', '1.5', 1, '0.0', '', 'Approved', NULL, 83, 82, '2023-02-01 01:53:21', '2023-02-06 11:39:08'),
(352, 93, 'Annual Leave', 'Hajatan Nikahan adiknya istri', '', '2023-02-11', '2023-02-12', '2.0', 0, '0.0', '', 'Approved', NULL, 93, 82, '2023-02-02 10:02:23', '2023-02-06 11:38:31'),
(353, 135, 'Annual Leave', 'Keperluan keluarga', '', '2023-02-10', '2023-02-10', '1.0', 0, '0.0', '', 'Approved', NULL, 135, 82, '2023-02-02 02:58:42', '2023-02-06 11:38:49'),
(354, 98, 'Annual Leave', 'Keperluan keluarga.. Ade istri menikah', '', '2023-02-12', '2023-02-12', '1.0', 0, '0.0', '', 'Approved', NULL, 98, 82, '2023-02-03 08:13:08', '2023-02-10 08:20:31'),
(355, 123, 'Annual Leave', 'Penghabisan Sisa Cuti 2022', '', '2023-02-11', '2023-02-11', '0.5', 1, '0.0', '', 'Approved', NULL, 123, 82, '2023-02-06 08:30:38', '2023-02-06 11:38:13'),
(356, 87, 'Annual Leave', 'Ambil sisa cuti tahun 2022\r\n', '', '2023-02-11', '2023-02-12', '0.5', 1, '1.0', '', 'Approved', NULL, 87, 82, '2023-02-06 01:57:45', '2023-02-10 08:19:56'),
(357, 125, 'Annual Leave', 'Keperluan keluar (cuti tahun 2022)', '', '2023-02-13', '2023-02-13', '1.0', 0, '0.0', '', 'Approved', NULL, 125, 82, '2023-02-06 11:37:03', '2023-02-10 06:40:46'),
(358, 127, 'Annual Leave', 'Ada keperluan keluarga', '', '2023-02-11', '2023-02-11', '0.5', 1, '0.0', '', 'Approved', NULL, 127, 82, '2023-02-07 10:26:27', '2023-02-10 08:19:03'),
(359, 80, 'Annual Leave', 'Nikahan keponakan', '', '2023-02-11', '2023-02-11', '0.5', 1, '0.0', '', 'Approved', NULL, 80, 82, '2023-02-07 11:56:52', '2023-02-10 08:18:37'),
(360, 131, 'Annual Leave', 'Ibu sakit', '', '2023-01-31', '2023-02-01', '2.0', 0, '0.0', '', 'Approved', NULL, 131, 82, '2023-02-07 12:46:17', '2023-02-10 08:18:24'),
(361, 112, 'Annual Leave', 'Keperluan keluarga ', '', '2023-02-11', '2023-02-11', '0.5', 1, '0.0', '', 'Approved', NULL, 112, 82, '2023-02-07 02:19:25', '2023-02-10 08:19:21'),
(362, 121, 'Annual Leave', 'Istri sakit', '', '2023-02-07', '2023-02-07', '1.0', 0, '0.0', '', 'Approved', NULL, 121, 82, '2023-02-07 03:14:14', '2023-02-10 06:41:04'),
(363, 122, 'Annual Leave', 'Keperluan keluarga,bawa ibu mertua ke rumah sakit Tangerang (RS.SITANALA)', '', '2023-02-08', '2023-02-08', '1.0', 0, '0.0', '', 'Approved', NULL, 122, 82, '2023-02-08 09:08:39', '2023-02-10 06:40:30'),
(364, 85, 'Annual Leave', 'Kontrol RS Hosana Medica Cikarang', '', '2023-02-13', '2023-02-13', '1.0', 0, '1.0', '', 'Approved', NULL, 85, 82, '2023-02-08 09:33:13', '2023-02-10 08:18:08'),
(365, 74, 'Annual Leave', 'Keperluan keluarga (sisa cuti 2022)', '', '2023-02-27', '2023-02-27', '1.0', 0, '0.0', '', 'Approved', NULL, 74, 82, '2023-02-09 04:55:47', '2023-02-10 06:32:59'),
(366, 134, 'Annual Leave', 'Menghadiri pernikahan saudara', '', '2023-02-13', '2023-02-13', '1.0', 0, '0.0', '', 'Approved', NULL, 134, 82, '2023-02-10 10:15:56', '2023-02-10 06:32:44'),
(367, 90, 'Annual Leave', 'Keperluan keluarga', '', '2023-02-20', '2023-02-20', '1.0', 0, '0.0', '', 'Approved', NULL, 90, 82, '2023-02-10 08:18:41', '2023-02-17 08:31:21'),
(368, 71, 'Annual Leave', 'Syukuran anak ', '', '2023-02-17', '2023-02-20', '2.0', 0, '2.0', '', 'Approved', NULL, 71, 82, '2023-02-13 11:39:46', '2023-02-17 08:30:26'),
(369, 71, 'Special Leave', 'Istri Melahirkan', 'IMG-20230213-WA0037.jpg', '2023-02-10', '2023-02-11', '0.0', 0, '0.0', '', 'Approved', NULL, 71, 82, '2023-02-13 03:23:50', '2023-02-17 08:30:51'),
(370, 114, 'Annual Leave', 'Anak sakit', '', '2023-02-12', '2023-02-12', '1.0', 0, '0.0', '', 'Approved', 87, 114, 88, '2023-02-14 10:44:04', '2023-03-01 08:13:10'),
(371, 113, 'Annual Leave', 'Istri dan anak mengalami lakalantas ', '', '2023-02-14', '2023-02-14', '1.0', 0, '0.0', '', 'Approved', NULL, 113, 82, '2023-02-14 04:21:33', '2023-02-20 03:51:49'),
(372, 130, 'Annual Leave', 'Bantu2 acara pernikahan anak kakak', '', '2023-03-06', '2023-03-07', '2.0', 0, '0.0', '', 'Approved', NULL, 130, 82, '2023-02-15 06:51:43', '2023-02-23 01:49:19'),
(373, 119, 'Annual Leave', 'Sakit', '', '2023-02-09', '2023-02-09', '1.0', 0, '0.0', '', 'Approved', NULL, 119, 82, '2023-02-16 01:47:15', '2023-02-23 01:47:56'),
(374, 119, 'Annual Leave', 'Kepentingan kelurga.jemput anak d tangerang', '', '2023-02-26', '2023-02-26', '1.0', 0, '0.0', '', 'Approved', NULL, 119, 82, '2023-02-16 01:48:58', '2023-02-23 01:46:28'),
(375, 133, 'Annual Leave', 'ANTER ISTRI USG', '', '2023-02-16', '2023-02-16', '1.0', 0, '0.0', '', 'Approved', NULL, 133, 82, '2023-02-18 01:31:01', '2023-02-20 03:51:59'),
(376, 88, 'Annual Leave', 'Bayar pajak motor', '', '2023-02-28', '2023-02-28', '1.0', 0, '0.0', '', 'Approved', NULL, 88, 82, '2023-02-18 08:23:01', '2023-02-23 01:45:42'),
(377, 80, 'Annual Leave', 'Istirahat karena kondisi masih belum sehat (sakit) ', '', '2023-02-17', '2023-02-17', '1.0', 0, '0.0', '', 'Approved', NULL, 80, 82, '2023-02-20 09:07:39', '2023-02-20 03:52:09'),
(378, 87, 'Annual Leave', 'Keperluan keluarga, habiskan sisa cuti 2022.', '', '2023-02-25', '2023-02-25', '0.5', 1, '0.0', '', 'Approved', NULL, 87, 82, '2023-02-20 10:02:18', '2023-02-23 01:45:09'),
(380, 136, 'Annual Leave', 'Keperluan keluarga khitanan saudara / resepsi ', '', '2023-02-26', '2023-02-27', '2.0', 0, '0.0', '', 'Approved', NULL, 136, 82, '2023-02-20 01:12:13', '2023-03-02 09:14:30'),
(381, 114, 'Annual Leave', 'Anak sakit dirawat di rs', '', '2023-02-18', '2023-02-20', '3.0', 0, '0.0', '', 'Approved', 87, 114, 88, '2023-02-20 06:57:20', '2023-03-01 08:12:39'),
(382, 128, 'Annual Leave', 'Acara keluarga,nikahan kakak sepupu', '', '2023-03-05', '2023-03-06', '2.0', 0, '0.0', '', 'Approved', NULL, 128, 82, '2023-02-21 12:40:32', '2023-02-25 09:22:38'),
(383, 99, 'Annual Leave', 'Acara keluarga', '', '2023-03-04', '2023-03-05', '2.0', 0, '0.0', '', 'Approved', NULL, 99, 82, '2023-02-21 04:49:55', '2023-03-02 09:14:49'),
(384, 131, 'Annual Leave', 'Anak sakit huhuhuhu', '', '2023-02-20', '2023-02-20', '1.0', 0, '0.0', '', 'Approved', NULL, 131, 82, '2023-02-22 01:06:28', '2023-02-25 09:22:21'),
(385, 84, 'Annual Leave', 'Urusan Pabrik', '', '2023-02-23', '2023-02-23', '1.0', 0, '0.0', '', 'Approved', NULL, 84, 82, '2023-02-22 04:29:33', '2023-02-23 01:44:53'),
(386, 102, 'Annual Leave', 'Keperluan keluarga', '', '2023-02-27', '2023-02-28', '2.0', 0, '0.0', '', 'Approved', NULL, 102, 82, '2023-02-22 07:09:11', '2023-02-25 09:22:07'),
(387, 126, 'Annual Leave', '22-23 istri sakit\r\n24 rumah kebanjiran', '', '2023-02-22', '2023-02-24', '3.0', 0, '0.0', '', 'Approved', 87, 126, 88, '2023-02-23 08:30:03', '2023-03-01 08:08:50'),
(388, 143, 'Special Leave', 'Menikah', 'IMG-20230131-WA0015.jpg', '2023-03-06', '2023-03-08', '0.0', 0, '0.0', '', 'Approved', NULL, 143, 82, '2023-02-23 12:11:12', '2023-02-28 11:07:02'),
(389, 95, 'Annual Leave', 'Keperluan keluarga', '', '2023-02-25', '2023-02-27', '1.5', 1, '1.0', '', 'Approved', NULL, 95, 82, '2023-02-23 01:43:57', '2023-02-28 08:19:22'),
(392, 135, 'Annual Leave', 'Anter orang tua', '', '2023-03-05', '2023-03-05', '1.0', 0, '0.0', '', 'Approved', 87, 135, 88, '2023-02-26 11:20:58', '2023-03-01 08:12:16'),
(393, 122, 'Annual Leave', 'Rumah kebanjiran,beres\" barang dan lainnya,untuk mengungsi ke tempat yang lebih tinggi.', '', '2023-02-27', '2023-02-27', '1.0', 0, '0.0', '', 'Approved', 87, 122, 88, '2023-02-27 11:29:11', '2023-03-01 08:10:07'),
(394, 120, 'Annual Leave', 'Orang tua sakit (di kampung) ', '', '2023-03-05', '2023-03-05', '1.0', 0, '0.0', '', 'Approved', NULL, 120, 82, '2023-02-27 11:32:25', '2023-02-28 11:06:35'),
(395, 137, 'Annual Leave', 'Sakit', '', '2023-02-25', '2023-02-25', '1.0', 0, '0.0', '', 'Approved', 85, 137, 87, '2023-02-27 02:54:41', '2023-02-28 15:16:50'),
(396, 97, 'Annual Leave', 'Urusan keluarga ', '', '2023-02-23', '2023-02-23', '1.0', 0, '0.0', '', 'Approved', 85, 97, 87, '2023-02-27 17:35:26', '2023-02-28 15:16:29'),
(397, 98, 'Annual Leave', 'Rumah kebanjiran', '', '2023-02-27', '2023-02-27', '0.5', 1, '0.0', '', 'Approved', 87, 98, 88, '2023-02-27 18:29:05', '2023-03-01 08:10:41'),
(398, 88, 'Annual Leave', 'Banjir /akses jalan tergenang air tidak bisa dilalui kendaraan roda 2, SIAGA 1 kondisi saat banjir di rumah.', '', '2023-02-27', '2023-02-27', '1.0', 0, '0.0', '', 'Approved', 85, 88, 87, '2023-02-27 22:44:55', '2023-02-28 15:16:06'),
(399, 72, 'Annual Leave', 'Rumah kebanjiran', '', '2023-02-27', '2023-02-27', '1.0', 0, '0.0', '', 'Approved', 85, 72, NULL, '2023-02-28 11:54:08', NULL),
(400, 89, 'Annual Leave', 'Rumah Kebanjiran', '', '2023-02-27', '2023-02-27', '1.0', 0, '0.0', '', 'Approved', 85, 89, 87, '2023-02-28 14:46:44', '2023-02-28 15:15:12'),
(401, 87, 'Annual Leave', 'Rumah kebanjiran.', '', '2023-02-27', '2023-02-27', '1.0', 0, '0.0', '', 'Approved', 85, 87, NULL, '2023-02-28 15:19:45', NULL),
(402, 114, 'Annual Leave', 'Anak sakit', '', '2023-02-22', '2023-02-22', '1.0', 0, '0.0', '', 'Approved', 87, 114, 88, '2023-02-28 16:18:13', '2023-03-01 08:11:48'),
(403, 104, 'Annual Leave', 'Sakit', '', '2023-02-28', '2023-02-28', '1.0', 0, '0.0', '', 'Approved', 85, 104, NULL, '2023-03-01 11:49:23', NULL),
(404, 104, 'Annual Leave', 'Keperluan keluarga', '', '2023-03-11', '2023-03-11', '0.5', 1, '0.0', '', 'Approved', 85, 104, NULL, '2023-03-01 11:52:16', NULL),
(406, 135, 'Annual Leave', 'Keperluan kerluarga mendadak', '', '2023-02-27', '2023-02-27', '1.0', 0, '0.0', '', 'Approved', 88, 135, NULL, '2023-03-01 15:01:59', NULL);

--
-- Triggers `leave_out`
--
DELIMITER $$
CREATE TRIGGER `kurangiSaldoSaatPermohonan` AFTER INSERT ON `leave_out` FOR EACH ROW BEGIN
UPDATE master_employees
	SET leave_balance = leave_balance - NEW.number_of_day
    WHERE id = NEW.emp_id AND NEW.leave_type = 'Annual Leave';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambahSaldoSaatCutiDihapus` AFTER DELETE ON `leave_out` FOR EACH ROW BEGIN
	UPDATE master_employees
    SET leave_balance = leave_balance + OLD.number_of_day WHERE id = OLD.emp_id AND OLD.leave_type = 'Annual Leave';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateSaldoSaatUserUpdate` AFTER UPDATE ON `leave_out` FOR EACH ROW BEGIN
	UPDATE master_employees
    SET leave_balance =
    CASE NEW.status
    	WHEN 'Approved' THEN (leave_balance + OLD.number_of_day) - NEW.number_of_day
        WHEN 'Rejected' THEN (leave_balance + OLD.number_of_day)
	END
    WHERE id = NEW.emp_id AND NEW.leave_type = 'Annual Leave';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `master_depts`
--

CREATE TABLE `master_depts` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_depts`
--

INSERT INTO `master_depts` (`id`, `dept_name`) VALUES
(381, 'Marketing'),
(382, 'PPIC'),
(383, 'Purchasing'),
(384, 'Warehouse'),
(385, 'Production'),
(386, 'QC'),
(387, 'Maintenance'),
(388, 'IT'),
(389, 'HR/GA'),
(392, 'System'),
(393, 'R n D');

-- --------------------------------------------------------

--
-- Table structure for table `master_employees`
--

CREATE TABLE `master_employees` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `join_date` date NOT NULL,
  `leave_balance` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_employees`
--

INSERT INTO `master_employees` (`id`, `emp_name`, `join_date`, `leave_balance`) VALUES
(68, 'Handika', '2019-07-22', '12.0'),
(69, 'Margono', '2020-04-30', '12.0'),
(70, 'Tedi Candra', '2020-01-13', '10.0'),
(71, 'Sartono', '2017-08-01', '9.0'),
(72, 'Achmad Syarifudin', '2017-11-15', '11.0'),
(73, 'Wakirno', '2016-08-22', '11.0'),
(74, 'Rommi', '2016-08-22', '12.0'),
(75, 'Hudaiby Abdilah', '2016-09-19', '10.0'),
(77, 'R.A. Desi Putri Khoerunisa', '2022-08-10', '0.0'),
(79, 'Larasati Nur Renggani', '2022-09-26', '0.0'),
(80, 'M. Yusuf Amri', '2016-08-15', '8.0'),
(82, 'Bintang Edy Pradana', '2022-07-20', '0.0'),
(83, 'Dzikri Nur Akbar', '2016-10-07', '9.5'),
(84, 'Kevin Yuniar', '2018-10-15', '13.0'),
(85, 'Ediper Rudy Aslen Sinaga', '2020-07-02', '9.5'),
(87, 'Agung Widiadmoko', '2018-09-03', '11.0'),
(88, 'Agung Sulistiono', '2018-01-08', '11.0'),
(89, 'Hamdani Syofyan', '2016-10-03', '11.0'),
(90, 'Saeful Rohman', '2017-02-01', '11.0'),
(91, 'Kusnandi', '2019-02-26', '12.0'),
(92, 'Sudarmawan', '2022-04-04', '0.0'),
(93, 'Supriadi Zaratul Aziz', '2020-01-13', '12.0'),
(94, 'Ahmad Hidayat', '2022-04-21', '0.0'),
(95, 'Rizky Agung Nugroho', '2016-03-01', '11.0'),
(96, 'Nurasid', '2016-04-01', '5.0'),
(97, 'Ropa\'i', '2016-08-22', '7.0'),
(98, 'Dedi Darmawan', '2016-08-31', '10.5'),
(99, 'Edi Hasanudin', '2016-09-20', '10.0'),
(100, 'M. Endang Rohman', '2016-09-21', '12.0'),
(101, 'Ujang Supardi', '2016-10-03', '12.0'),
(102, 'Raspin', '2016-10-03', '10.0'),
(103, 'Samin', '2016-10-31', '12.0'),
(104, 'Kokom Komalasari', '2017-04-17', '10.0'),
(106, 'Marno Supriyadi', '2017-09-04', '11.0'),
(107, 'Aripin', '2017-09-25', '12.0'),
(108, 'Nana Suryana', '2017-10-26', '10.5'),
(109, 'Hasanudin', '2018-01-22', '12.0'),
(110, 'Dating', '2018-08-23', '12.0'),
(111, 'Gugun Gunawan', '2918-12-18', '12.0'),
(112, 'Juwita Novitasari', '2019-05-02', '14.0'),
(113, 'Aris Riswandi', '2019-07-08', '12.0'),
(114, 'Asep Riky', '2019-07-09', '4.0'),
(116, 'Ageng Setiawan', '2019-07-28', '12.0'),
(117, 'Ahmad Kosim', '2019-08-19', '12.0'),
(118, 'Dedi Hanapi', '2019-08-19', '12.0'),
(119, 'Munawir', '2019-10-01', '10.0'),
(120, 'Tardiana', '2019-10-11', '11.0'),
(121, 'Romi Saripudin', '2019-10-11', '11.0'),
(122, 'Yandri Injagi Geovani', '2019-12-18', '10.0'),
(123, 'Siska Milda Widyalestari', '2020-01-07', '12.0'),
(124, 'Irvan Wahyudin', '2020-01-07', '12.0'),
(125, 'Nanang Abdulah', '2020-01-17', '12.0'),
(126, 'R. Aldino Ibnu Sanjaya', '2020-02-03', '7.0'),
(127, 'Agung Budi Santoso', '2020-02-03', '11.5'),
(128, 'Safariyudin', '2020-02-24', '9.0'),
(129, 'Ester Putri Oktaviana', '2020-04-06', '10.0'),
(130, 'Saptoni Mulyo', '2020-05-04', '10.0'),
(131, 'Atin Dewisuryawati', '2020-06-08', '7.0'),
(132, 'Agus Mulyana', '2020-11-30', '10.0'),
(133, 'Roby Sugara', '2021-01-07', '11.0'),
(134, 'Muh Afifuddin', '2021-01-25', '12.0'),
(135, 'Angga Hary Saputro', '2021-01-29', '7.0'),
(136, 'Kandi Mardani', '2021-02-06', '12.0'),
(137, 'Tanjung Mukhtarom Lutfi', '2021-11-01', '11.0'),
(139, 'Novita Indriani', '2022-06-09', '0.0'),
(140, 'Azi Arif Mubarok', '2022-06-09', '0.0'),
(142, 'Oki Ardianto', '2022-04-21', '0.0'),
(143, 'Septia Anggreni', '2022-07-07', '0.0'),
(144, 'Santika Purwa Ningsih', '2022-08-22', '0.0'),
(145, 'Super Admin', '2023-01-13', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `master_positions`
--

CREATE TABLE `master_positions` (
  `id` int(11) NOT NULL,
  `position_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_positions`
--

INSERT INTO `master_positions` (`id`, `position_name`) VALUES
(12, 'General Manager'),
(13, 'Factory Manager'),
(14, 'Supervisor'),
(15, 'Leader'),
(16, 'Admin'),
(17, 'Helper'),
(18, 'Staff'),
(19, 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `master_status`
--

CREATE TABLE `master_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_status`
--

INSERT INTO `master_status` (`id`, `status_name`) VALUES
(1, 'Submitted'),
(3, 'Confirmed'),
(4, 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `master_users`
--

CREATE TABLE `master_users` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_users`
--

INSERT INTO `master_users` (`id`, `emp_id`, `dept_id`, `position_id`, `username`, `password`) VALUES
(9, 75, 385, 19, 'hudaiby', '$2y$10$WejoMg1gDJOyoSizMcP3D.ylygs9sXU8TtBNIwM/zDrWOlB2rvNOK'),
(11, 79, 384, 18, 'laras', '$2y$10$2hXnXIUHrCmBX7GXvGAYsebVTi8RW6aJjclOd9m2FCF0znG1adGgu'),
(13, 139, 384, 18, 'novi', '$2y$10$LCOs1BDRa5JzntCv3jJ.d.5Xhnvsgp71CwekfiNo8Cz7D/vcCJ.3S'),
(15, 74, 385, 19, 'rommi', '$2y$10$fwLDi1dkYLHdJKdBnfNqdOp1Ngfk/01PsqpTq/Y9Abb78xthdI3Xe'),
(19, 73, 385, 15, 'wakirno', '$2y$10$0Cw9xjwJIOesu/NwcXGNg.9yklmiHszkJVlCqYMn3/xuG0qar/0Py'),
(20, 80, 386, 14, 'yusuf_amri', '$2y$10$KQr9EqIZhWJ92MCh87bNOODAPvwSZKEHtab8s4694c6mI12Ljp8aO'),
(22, 82, 389, 18, 'bintang', '$2y$10$5WpvxIk8EjcCs5ZXyyn2GOcxWRYyjeL.sdLKXl2NOLuW4U60U7Qn2'),
(30, 89, 385, 15, 'hamdanis', '$2y$10$cBXj/L1ASzHlmyMJ6DbHzu8g.JG65.68/f3va6sZxzMmUOd2pmDxa'),
(31, 93, 386, 19, 'azis', '$2y$10$nmyR7U9b8EGflZAbRbwhEulSenwtZ71RkLiuWTwaoWhNP.8EdVYye'),
(36, 77, 385, 16, 'desi', '$2y$10$GjwIR9yQlJ3zqnF59YIwOOrFqpkxC/h1oTMJyDeYjB.3RegMJpJ3S'),
(39, 132, 385, 19, 'agus', '$2y$10$JIapvV2rMtCxlJT28x2bjusMpOXSgpYYYzWqBDVMUuCfD0f7S62Mi'),
(40, 94, 385, 17, 'ahmad_H', '$2y$10$YVophPWSfqXNCT2L9HztsOSQ4LIkSiGiXNDqUJ8XqqIi0nxF8p0bW'),
(41, 135, 385, 19, 'angga', '$2y$10$qg9kmT36RhxFtvUlYa3AQekPgNiNEAQ/IlqhLreU674UTDFOmI14m'),
(43, 113, 385, 17, 'aris', '$2y$10$yiGH7eqYYG8cmFM7vJRAVOGdsi9Jee/xMICLGwZmA5t8g85lzHYsG'),
(44, 114, 385, 17, 'asep', '$2y$10$2lnLOsxOj/.gniXDtISU7e4gk4Jwqz.oGbfTSWmk9qk8l8YW8VYQy'),
(45, 131, 382, 18, 'atin', '$2y$10$5PnNrmshJ82Nv5iZdWAqZ.s9pWMsQcJD061FyByAHhs4CBbtCDb1q'),
(47, 110, 385, 19, 'dating', '$2y$10$UQBDx8hfQnfhGC8vuqjqGOFU/5KpvNcgrIQyQBg/.NI.x2OFRfZ/.'),
(48, 98, 385, 17, 'dedi_d', '$2y$10$bZSWLpBlq0upTS8NKukSpeoIJDzb9Sz/4h.Qin8JiSoGS9fXByGv6'),
(49, 118, 385, 17, 'dedi_h', '$2y$10$zOSrqm3xoTTe2dWK7IG2vesz/ydhUzh/CFLaUjBBAgoSb1QYO8dke'),
(51, 129, 383, 18, 'ester', '$2y$10$Prq7WXk4aeQSEMb.taQ3zOFAWEnfXwMNQPl24VxMYSZ2mX.cBf9LC'),
(54, 124, 385, 17, 'irvan', '$2y$10$AarKmNOVHw/LvFdpjaxyAuimclVJSTyjPR9QUdABww4P/CchXcZQu'),
(55, 112, 389, 18, 'juwita', '$2y$10$QTtOU43dTEHYpUCZe6W5IuLnPSU5iH3uuJmGazEQWbrL07kBuHbJC'),
(56, 136, 385, 17, 'kandi', '$2y$10$rEA1fScnZUTNHB4uJsWbKecAPIORfn7QGxiTemSyw46FC6AJzPTPW'),
(57, 104, 389, 18, 'kokom', '$2y$10$V86JYASETIvJwxnfH0osH.cle9H2Q8.LE5Vti8ed59iWkTJhOXD3S'),
(59, 106, 385, 19, 'marno', '$2y$10$lm91V5tI1Y7oIZrNR6BjNOMgb.3Rwl3g/ErFhxEdVQUrWNeYwqPSO'),
(60, 134, 387, 19, 'afif', '$2y$10$Ba1H696cpepZLAIXIfbSCePfeHmMwgipV2tejyboP52mpdduqLtXW'),
(61, 119, 385, 17, 'munawir', '$2y$10$xkAiDbbXq6sR5HwaQ7TjxeucCOY0Jp.SJxVRrJh9uLaO/NW3JQWZK'),
(62, 108, 386, 15, 'nana', '$2y$10$cgrPCwuWf0VOVaQXV3rO5OmL9BfdzsToa1NY3sMyzI3HhXdaAiQ.a'),
(63, 125, 385, 17, 'nanang', '$2y$10$9uxbuLfZ4nce7TXIcHz0HOEEfUqpqQq.kMDZkUVQ1KfPKhGP7vZ9u'),
(64, 96, 385, 19, 'nurasid', '$2y$10$oe/XMg18z8pL.oSz3wT03.dMIyqpkih2AL04F4c6gtFw0hjwhPWmO'),
(65, 142, 385, 17, 'oki', '$2y$10$1c1/q37KiRltGDct8it4TOU8GCnjojnCvyqLJBhSA3ic3UgM5TLZS'),
(66, 126, 385, 17, 'aldino', '$2y$10$1PBnWBdKJrVxL6FKwEmf/.RxxgnULslmq3CeNkhWeHiVVJ7Hn2NmW'),
(67, 102, 385, 19, 'raspin', '$2y$10$mLw.yTftfEEbSwfQZaUgfOvs9J2u5X1JHsPbkLqFCyWGxw6cR4T0G'),
(68, 95, 387, 15, 'rizky', '$2y$10$Z5.shkMi/JVcx.LJe4nKneHkpwFlUDUhwV79TlF2tVIUTn/hAdnlW'),
(69, 133, 385, 17, 'roby', '$2y$10$HqA9uXq.PqJh06Ko3B4VZO7QiZhOdGcPMM3/sSPAzyGHxQhRi2egK'),
(70, 121, 386, 19, 'romi_s', '$2y$10$ntI5JnalU8tjYd2OaaaIrOtudKLWZtig2LEorxWpwOd25XeZax916'),
(71, 97, 385, 17, 'ropa\'i', '$2y$10$nDFY8uczq.5DgjYK1zjtO.ODB7IjJm7IcQjByrepOUtnbcxq.PhzS'),
(72, 128, 385, 17, 'safariyudin', '$2y$10$zTbffZNy3mRto4sPvnmx.uJu5jmGt1AQj04HFvxpph5h9a..vIRja'),
(73, 103, 387, 19, 'samin', '$2y$10$wjPbi1uCz94Sk2OewOpHpe/JeQAGbaxc0Bt.0ofv7uNG79k4zTqd6'),
(74, 144, 381, 18, 'santika', '$2y$10$eIw1LxRGsXIzXit4124FQ.DewrAqLA.9xDYuOANmLYF5gaFsNtM1S'),
(76, 123, 382, 18, 'siska', '$2y$10$WM/Pylq2hO9dm3aZDdSQCuVs4AwvT8pQgIC4ucH11AJNF35jNvwEm'),
(77, 137, 385, 17, 'tanjung', '$2y$10$BBgkHpOTXBP6m5vDVAJ39OYXS6IadQIzs2IZvK38L4S6qR04BxLdq'),
(79, 120, 386, 19, 'tardiana', '$2y$10$3ABzc0l3ANJjkDMmR.4KO.g6el5cisuLyp7XkT9TuPuInHlfqKuke'),
(80, 101, 385, 19, 'ujang', '$2y$10$yEVtrJ30l4lBtrE7/MGCu.3WVxjivTqeHvCW58z.XY9evsxTtaBf2'),
(81, 122, 385, 17, 'yandri', '$2y$10$Svgg.FVkD5xiA/jnqaTNAuVEdjS3Az8l1/oY1fUKAzQCQhOAmFEQK'),
(82, 145, 392, 16, 'blasfoli_admin', '$2y$10$UCYi5nGUYIAQzYHaQ62Y6ukZZph6dEtA9PFSjO.JbDKkK9twTKiw.'),
(83, 85, 393, 13, 'ediper', '$2y$10$uxwl7I9U1pSGMmv/4sdMp..bVlakwFSlm85PsOVYQYFRnfJzrrTga'),
(84, 84, 381, 12, 'kevin', '$2y$10$PRqO/U536/eJMUiS5Bh70OLJSqCG1jXFdhyYbBzVGHjGfmqs2Dw0e'),
(85, 83, 388, 18, 'dzikri', '$2y$10$PwUXGmklMOVkdHVAMWjsa.BWL1qJGIpeJ2sAZfSdRk11kejPVgLQe'),
(86, 88, 385, 15, 'agung_s', '$2y$10$2cz5QZZ5C1ekxC6yug28IubphOkhEHeuK6ppRJbF6ml//J4IrZbSK'),
(87, 87, 385, 14, 'agung_w', '$2y$10$ni9UqD.iSF3.Rt3MiHg6w.tiJATAWl5wJVlEAqINbtT6AAEnlGh5i'),
(88, 127, 387, 14, 'agung_b', '$2y$10$T8b2fV4QmgX3bf/B3fVceefiRe/MvxhsJZUI5DTyvWUGEwxCGRd1a'),
(89, 71, 384, 18, 'sartono', '$2y$10$BtSUH/9uYMYfP6eKTmiCW.xe1NsL3C5HgJ1A7pdnJO9VaaVn2EUhu'),
(90, 68, 384, 18, 'handika', '$2y$10$NuQZdr8kLWAC8sbFGmBhseWVdNtd6FkNLRkQBhAgM7ax0skUmmvZa'),
(91, 69, 384, 18, 'margono', '$2y$10$kz/YIWr2wrORPsRmO7UVy.W2.EuECbNGuLR/MgoqX7zrB16CE8lpy'),
(92, 99, 385, 19, 'edihasan', '$2y$10$oBWj5ez707eSz4J.crKVpu10jNQ2uCPLoTdzFY9HuGMf/nsAaSIk6'),
(93, 109, 385, 19, 'hasanudin', '$2y$10$FXxzzE0OK8tgyNcxKO.yXOvQNlEzmvgGCyKU2rmf8jPP2R9pl7ihm'),
(94, 100, 385, 19, 'endang', '$2y$10$B93X73ii5/MMCQOVyuqeKuD.w/FZUfYOjiifKV7Gi8pT12nq12dZO'),
(95, 116, 385, 17, 'ageng', '$2y$10$2VHXBd.iGsuEfSspmWCsN.Unt4wnpsCVkF10P2GwHCtvp.sw/LTam'),
(96, 140, 385, 17, 'azi', '$2y$10$jOVTBxBekKXDAmwqgAOfsunsbhn7hfap0jNNA..YHjH8yvEIvJs6q'),
(99, 70, 384, 18, 'teddy', '$2y$10$.uK/R4OF6bjbU2Ksax2I1eIgo5xBcFCnHjjeWCM0INqIqai4bsAkm'),
(100, 117, 385, 17, 'kosim', '$2y$10$bJJDq4lXngJqgl17QeBPP.G3XAxHi0Ekn7DZVrSQOEMTd0QqF55j.'),
(101, 90, 386, 15, 'saeful', '$2y$10$94jSRM1fNbb7E/UQtWX0rORqfYQes8gXJPGinYdj2fpnxgUBvcRzG'),
(102, 92, 386, 15, 'sudarmawan', '$2y$10$HHIYU7pBLsbHBd92jC05Z.oY6YC4GGDponCBxbkUhmRr9rjqM5SRm'),
(104, 72, 384, 18, 'achmad', '$2y$10$27ZidhnUtNZ4c1wrcoiqp.bEtbr0dT8E8wtkv.8epSdIe75rkrGUy'),
(105, 111, 385, 17, 'gugun', '$2y$10$WRH307ar7PhiTNqBESJoDuhIPgjxV0IdmnTvem3W/otLRcEHLuxbS'),
(106, 107, 384, 19, 'aripin', '$2y$10$/1YkUr.3rQvZ0FxT8cEdtu.tj.lmNq0ih6iU7Ya6nDXs3PrCAB2pC'),
(107, 91, 386, 15, 'kusnandi', '$2y$10$Kg7ZQV3vEeRY8qwf94ZGYeX7d7vml5N1htO/jXEurpflUgtKAVLWO'),
(108, 130, 385, 17, 'saptoni', '$2y$10$ltMaLvfbOe.bMD2UbLzoZO6fW7akdl/SXI02GDtPeGJ32loJ9JalS'),
(109, 143, 386, 16, 'septia', '$2y$10$fZ2Sq1IrKD7.UWGfsZdvne.q2/AU0vb7dl53dL29b9djG5WhSL85m');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_in`
--
ALTER TABLE `leave_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `leave_out`
--
ALTER TABLE `leave_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `sign_to` (`sign_to`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `master_depts`
--
ALTER TABLE `master_depts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_employees`
--
ALTER TABLE `master_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_positions`
--
ALTER TABLE `master_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_status`
--
ALTER TABLE `master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_users`
--
ALTER TABLE `master_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `dept_id` (`dept_id`),
  ADD KEY `position_id` (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `leave_in`
--
ALTER TABLE `leave_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `leave_out`
--
ALTER TABLE `leave_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `master_depts`
--
ALTER TABLE `master_depts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `master_employees`
--
ALTER TABLE `master_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `master_positions`
--
ALTER TABLE `master_positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `master_status`
--
ALTER TABLE `master_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_users`
--
ALTER TABLE `master_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `leave_in`
--
ALTER TABLE `leave_in`
  ADD CONSTRAINT `leave_in_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `master_users` (`emp_id`);

--
-- Constraints for table `leave_out`
--
ALTER TABLE `leave_out`
  ADD CONSTRAINT `leave_out_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `master_users` (`emp_id`),
  ADD CONSTRAINT `leave_out_ibfk_2` FOREIGN KEY (`sign_to`) REFERENCES `master_users` (`emp_id`),
  ADD CONSTRAINT `leave_out_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `master_users` (`emp_id`),
  ADD CONSTRAINT `leave_out_ibfk_4` FOREIGN KEY (`updated_by`) REFERENCES `master_users` (`emp_id`);

--
-- Constraints for table `master_users`
--
ALTER TABLE `master_users`
  ADD CONSTRAINT `master_users_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `master_employees` (`id`),
  ADD CONSTRAINT `master_users_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `master_depts` (`id`),
  ADD CONSTRAINT `master_users_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `master_positions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
