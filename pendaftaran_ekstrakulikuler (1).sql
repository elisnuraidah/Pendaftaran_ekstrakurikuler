-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2024 at 09:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran_ekstrakulikuler`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`no`, `nama`, `email`) VALUES
(1, 'elis', 'elis@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `no` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`no`, `username`, `password`, `level`) VALUES
(100008, 'ucup@maun', 'ucup', 'user'),
(100009, 'admin@gmail.com', 'admin', 'admin'),
(100012, 'a@a', '1', 'user'),
(100013, 'rian@gmail.com', '1234', 'user'),
(100014, 'dimas@gmail.com', '000', 'user'),
(100015, 'elisn@gmail.com', '000', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `no` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `user_id` int(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `tgl_daftar` varchar(100) NOT NULL,
  `Eskul` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`no`, `nama`, `first_name`, `last_name`, `user_id`, `kelas`, `jurusan`, `jk`, `tgl_daftar`, `Eskul`, `status`) VALUES
(35, 'ucup maun', 'ucup', 'maun', 100008, '12 rpl 1', 'RPL', 'perempuan', '2024-03-12', 'Pramuka', 'Anggota'),
(37, 'd', '', '', 0, '12 rpl 1', 'RPL', 'perempuan', '2024-03-15', 'voly', 'Anggota'),
(38, 'sita', '', '', 0, '12 RPL 3', 'RPL', 'perempuan', '2024-03-20', 'sepak bola', 'pendaftar'),
(41, 'rian s', 'rian', 's', 100013, '12 rpl 1', 'RPL', 'laki-laki', '2024-03-20', 'sepak bola', 'pendaftar'),
(42, 'agus', '', '', 0, '12 TBSM', 'TBSM', 'laki-laki', '2024-03-10', 'pramuka', 'anggota'),
(43, 'dim mas', 'dim', 'mas', 100014, '12 TBSM', 'TBSM', 'laki-laki', '2024-03-21', 'pramuka', 'Anggota');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_notif`
--

CREATE TABLE `siswa_notif` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `setatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `siswa_notif`
--
ALTER TABLE `siswa_notif`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100016;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `siswa_notif`
--
ALTER TABLE `siswa_notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
