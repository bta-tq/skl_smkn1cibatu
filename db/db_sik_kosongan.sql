-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 05:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(3) NOT NULL,
  `kd_jurusan` varchar(10) NOT NULL,
  `nm_jurusan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `kd_jurusan`, `nm_jurusan`) VALUES
(1, 'JR01', 'TEKNIK KENDARAAN RINGAN OTOMOTIF'),
(2, 'JR02', 'TEKNIK KOMPUTER DAN JARINGAN'),
(3, 'JR03', 'TEKNIK PEMESINAN'),
(4, 'JR04', 'AKUNTANSI DAN KEUANGAN LEMBAGA'),
(5, 'JR05', 'OTOMATISASI DAN TATA KELOLA PERKANTORAN'),
(6, 'JR06', 'UMUM'),
(7, 'JR07', 'KEAHLIAN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id_mapel` int(3) NOT NULL,
  `no_urut` int(3) DEFAULT NULL,
  `nm_mapel` varchar(255) DEFAULT NULL,
  `kd_jurusan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `no_urut`, `nm_mapel`, `kd_jurusan`) VALUES
(611, 1, 'Pendidikan Agama dan Budi Pekerti', 'JR06'),
(612, 2, 'Pendidikan Pancasila dan Kewarganegaraan', 'JR06'),
(613, 3, 'Bahasa Indonesia', 'JR06'),
(614, 4, 'Matematika', 'JR06'),
(615, 5, 'Sejarah Indonesia', 'JR06'),
(616, 6, 'Bahasa Inggris', 'JR06'),
(621, 7, 'Seni Budaya', 'JR06'),
(622, 8, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'JR06'),
(623, 9, 'Bahasa Sunda', 'JR06'),
(711, 10, 'Simulasi dan Komunikasi Digital', 'JR07'),
(712, 11, 'Fisika', 'JR07'),
(713, 12, 'Kimia', 'JR07'),
(714, 13, 'Dasar Program Keahlian', 'JR07'),
(715, 14, 'Kompetensi Keahlian', 'JR07'),
(716, 15, 'Ilmu Pengetahuan Alam (IPA)', 'JR07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `id_profil` int(10) NOT NULL,
  `nm_sekolah` varchar(200) NOT NULL,
  `nm_aplikasi` varchar(200) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tgl_pengumuman` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_profil`
--

INSERT INTO `tbl_profil` (`id_profil`, `nm_sekolah`, `nm_aplikasi`, `tahun`, `tgl_pengumuman`) VALUES
(1, 'SMK NEGERI 1 CIBATU ', 'E-SKL', 2022, '2022-05-20 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `no` varchar(200) NOT NULL,
  `noujian` varchar(200) NOT NULL,
  `nis` varchar(200) NOT NULL,
  `nisn` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `ortu` varchar(200) NOT NULL,
  `addresse` varchar(200) NOT NULL,
  `tgllhr` varchar(200) NOT NULL,
  `kelas` varchar(200) NOT NULL,
  `ket` varchar(200) NOT NULL,
  `sekolah` varchar(200) NOT NULL,
  `kd_jurusan` varchar(10) NOT NULL,
  `1` varchar(200) NOT NULL,
  `2` varchar(200) NOT NULL,
  `3` varchar(200) NOT NULL,
  `4` varchar(200) NOT NULL,
  `5` varchar(200) NOT NULL,
  `6` varchar(200) NOT NULL,
  `7` varchar(200) NOT NULL,
  `8` varchar(200) NOT NULL,
  `9` varchar(200) NOT NULL,
  `10` varchar(200) NOT NULL,
  `11` varchar(200) NOT NULL,
  `12` varchar(200) NOT NULL,
  `13` varchar(200) NOT NULL,
  `14` varchar(200) NOT NULL,
  `15` varchar(200) NOT NULL,
  `16` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `nama`) VALUES
(39, 'admin', '0192023a7bbd73250516f069df18b500', 'Bari Taqiyyah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id_mapel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=718;

--
-- AUTO_INCREMENT for table `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id_profil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
