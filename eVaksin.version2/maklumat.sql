-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 06:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaksinasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `maklumat`
--

CREATE TABLE `maklumat` (
  `id_pelajar` varchar(5) NOT NULL,
  `nama_pelajar` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `jenis_vaksin` varchar(10) NOT NULL,
  `tarikh_vaksin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maklumat`
--

INSERT INTO `maklumat` (`id_pelajar`, `nama_pelajar`, `kelas`, `jenis_vaksin`, `tarikh_vaksin`) VALUES
('D2001', 'MUHAMMAD ADAM BIN DANIEL', '2 SVM', 'SINOPHARM', '2022-02-10'),
('D2003', 'ALISHA DAMIA BINTI MIKAEL', '2 SVM', 'COVAXIN', '2022-02-10'),
('D2005', 'NUR QIESYA BINTI ABD RAHMAN', '2 SVM', 'SINOPHARM', '2022-02-11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
