-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2024 at 07:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perkembangan_kesehatan_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'yusupds', 'ysp927');

-- --------------------------------------------------------

--
-- Table structure for table `data_kesehatan`
--

CREATE TABLE `data_kesehatan` (
  `id_data` int(10) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `tinggi_badan` varchar(10) NOT NULL,
  `berat_badan` varchar(10) NOT NULL,
  `tekanan_darah` varchar(10) NOT NULL,
  `bulan_pemeriksaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_kesehatan`
--

INSERT INTO `data_kesehatan` (`id_data`, `nama_siswa`, `tinggi_badan`, `berat_badan`, `tekanan_darah`, `bulan_pemeriksaan`) VALUES
(1, 'Linar', '165cm', '60kg', '180mmHg', 'Desember'),
(2, 'Pasya', '162cm', '55kg', '120mmHg', 'Oktober'),
(3, 'Uben', '155cm', '56kg', '140mmHg', 'Oktober'),
(4, 'Ruben', '161cm', '60kg', '120mmHg', 'Oktober'),
(5, 'Shalman', '167cm', '60kg', '170mmHg', 'Desember');

-- --------------------------------------------------------

--
-- Stand-in structure for view `dsiswa`
-- (See below for the actual view)
--
CREATE TABLE `dsiswa` (
`nama_siswa` varchar(20)
,`bulan_pemeriksaan` varchar(20)
,`berat_badan` varchar(10)
,`tinggi_badan` varchar(10)
,`tekanan_darah` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dwalikelas`
-- (See below for the actual view)
--
CREATE TABLE `dwalikelas` (
`nama_siswa` varchar(20)
,`kelas` varchar(10)
,`nama_walikelas` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(10) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `umur` int(20) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `kelas`, `umur`, `jenis_kelamin`) VALUES
(1, 'Linar', 'XI Oracle', 16, 'Laki-laki'),
(2, 'Pasya', 'XI Oracle', 16, 'Laki-laki'),
(3, 'Uben', 'X Oracle', 15, 'Laki-laki'),
(4, 'Ruben', 'X Oracle', 15, 'Laki-laki'),
(5, 'Shalman', 'XI Oracle', 16, 'Laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id_walikelas` int(10) NOT NULL,
  `nama_walikelas` varchar(20) NOT NULL,
  `kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id_walikelas`, `nama_walikelas`, `kelas`) VALUES
(1, 'Bu Tika', 'XI Oracle'),
(2, 'Pak Tamam', 'X Oracle');

-- --------------------------------------------------------

--
-- Structure for view `dsiswa`
--
DROP TABLE IF EXISTS `dsiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dsiswa`  AS SELECT `siswa`.`nama_siswa` AS `nama_siswa`, `data_kesehatan`.`bulan_pemeriksaan` AS `bulan_pemeriksaan`, `data_kesehatan`.`berat_badan` AS `berat_badan`, `data_kesehatan`.`tinggi_badan` AS `tinggi_badan`, `data_kesehatan`.`tekanan_darah` AS `tekanan_darah` FROM (`data_kesehatan` join `siswa` on(`siswa`.`nama_siswa` = `data_kesehatan`.`nama_siswa`))  ;

-- --------------------------------------------------------

--
-- Structure for view `dwalikelas`
--
DROP TABLE IF EXISTS `dwalikelas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dwalikelas`  AS SELECT `siswa`.`nama_siswa` AS `nama_siswa`, `siswa`.`kelas` AS `kelas`, `wali_kelas`.`nama_walikelas` AS `nama_walikelas` FROM (`wali_kelas` join `siswa` on(`siswa`.`kelas` = `wali_kelas`.`kelas`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `data_kesehatan`
--
ALTER TABLE `data_kesehatan`
  ADD PRIMARY KEY (`id_data`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_kesehatan`
--
ALTER TABLE `data_kesehatan`
  MODIFY `id_data` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id_walikelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
