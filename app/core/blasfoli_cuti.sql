-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2023 at 03:55 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

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
  `signatured` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(163, 83, '12.0', 'Topup annual leave', 2023);

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
(83, 'Dzikri Nur Akbar', '2016-10-07', '24.0'),
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
(82, 145, 392, 16, 'blasfoli_admin', '$2y$10$UCYi5nGUYIAQzYHaQ62Y6ukZZph6dEtA9PFSjO.JbDKkK9twTKiw.'),
(85, 83, 388, 18, 'dzikri', '$2y$10$PwUXGmklMOVkdHVAMWjsa.BWL1qJGIpeJ2sAZfSdRk11kejPVgLQe');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `leave_in`
--
ALTER TABLE `leave_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `leave_out`
--
ALTER TABLE `leave_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

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
