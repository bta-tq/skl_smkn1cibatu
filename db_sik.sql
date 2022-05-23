-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 09:59 AM
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
(1, 'JR01', 'Teknik Kendaraan Ringan'),
(2, 'JR02', 'Teknik Komputer dan Jaringan'),
(3, 'JR03', 'Teknik Permesinan'),
(4, 'JR04', 'Akutansi dan Keuangan Lembaga'),
(5, 'JR05', 'Otomatisasi dan Tata Kelola Perkantoran'),
(6, 'JR06', 'UMUM');

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
(211, 9, 'Simulasi dan Komunikasi Digital', 'JR02'),
(212, 10, 'Fisika', 'JR02'),
(213, 11, 'Kimia', 'JR02'),
(221, 12, 'Sistem Komputer', 'JR02'),
(222, 13, 'Komputer dan Jaringan Dasar', 'JR02'),
(223, 14, 'Pemrograman Dasar', 'JR02'),
(224, 15, 'Dasar Desain Grafis', 'JR02'),
(231, 16, 'Teknologi WAN', 'JR02'),
(232, 17, 'Administrasi Infrastruktur Jaringan', 'JR02'),
(233, 18, 'Administrasi Sistem Jaringan', 'JR02'),
(234, 19, 'Teknologi Layanan Jaringan', 'JR02'),
(235, 20, 'Produk Kreatif dan Kewirausahaan', 'JR02'),
(511, 21, 'Simulasi dan Komunikasi Digital', 'JR05'),
(512, 22, 'Ekonomi Bisnis', 'JR05'),
(513, 23, 'Administrasi Umum', 'JR05'),
(514, 24, 'IPA', 'JR05'),
(521, 25, 'Teknologi Perkantoran', 'JR05'),
(522, 26, 'Korespondensi', 'JR05'),
(523, 27, 'Kearsipan', 'JR05'),
(531, 28, 'Otomatisasi Tata Kelola Kepegawaian', 'JR05'),
(532, 29, 'Otomatisasi Tata Kelola Keuangan', 'JR05'),
(533, 30, 'Otomatisasi Tata Kelola Sarana dan Prasarana', 'JR05'),
(534, 31, 'Otomatisasi Tata Kelola Humas dan Keprotokolan', 'JR05'),
(535, 32, 'Produk Kreatif dan Kewirausahaan', 'JR05'),
(611, 1, 'Pendidikan Agama dan Budi Pekerti', 'JR06'),
(612, 2, 'Pendidikan Pancasila dan Kewarganegaraan', 'JR06'),
(613, 3, 'Bahasa Indonesia', 'JR06'),
(614, 4, 'Matematika', 'JR06'),
(615, 5, 'Sejarah Indonesia', 'JR06'),
(616, 6, 'Bahasa Inggris dan Bahasa Asing Lainnya', 'JR06'),
(621, 7, 'Seni Budaya', 'JR06'),
(622, 8, 'Pendidikan Jasmani, Olahraga dan Kesehatan', 'JR06');

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
  `nisn` varchar(200) NOT NULL,
  `nis` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
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
  `16` varchar(200) NOT NULL,
  `17` varchar(200) NOT NULL,
  `18` varchar(200) NOT NULL,
  `19` varchar(200) NOT NULL,
  `20` varchar(200) NOT NULL,
  `21` varchar(200) NOT NULL,
  `22` varchar(200) NOT NULL,
  `32` varchar(200) NOT NULL,
  `24` varchar(200) NOT NULL,
  `25` varchar(200) NOT NULL,
  `26` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`no`, `noujian`, `nisn`, `nis`, `name`, `addresse`, `tgllhr`, `kelas`, `ket`, `sekolah`, `kd_jurusan`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `32`, `24`, `25`, `26`) VALUES
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '10001', '1111111111', '19001', 'DENI KURNIAWAN', 'JAKARTA', '01/01/2001', 'XII TKJ 1', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('10', '10010', '1111111120', '19010', 'DWI SEPTI WULAN A', 'JEPARA', '01/01/2010', 'XII TKJ 1', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('11', '10011', '1111111121', '19011', 'EKA RIZQI APRILIA', 'JAKARTA', '01/01/2011', 'XII TKJ 2', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('12', '10012', '1111111122', '19012', 'FEBRINA SOLKIA WARDANI', 'JEPARA', '01/01/2012', 'XII TKJ 2', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('13', '10013', '1111111123', '19013', 'ISMAIL BAKRIN', 'JAKARTA', '01/01/2013', 'XII TKJ 2', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('14', '10014', '1111111124', '19014', 'MIRANDA HIDAYAT', 'JEPARA', '01/01/2014', 'XII TKJ 2', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('15', '10015', '1111111125', '19015', 'MOHAMMAD YERI ARIF H', 'JAKARTA', '01/01/2015', 'XII TKJ 2', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('16', '10016', '1111111126', '19016', 'NADIA AULIA SARI', 'JEPARA', '01/01/2016', 'XII TKJ 2', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('17', '10017', '1111111127', '19017', 'NANANG QOSIM', 'JAKARTA', '01/01/2017', 'XII TKJ 2', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('18', '10018', '1111111128', '19018', 'RATNA?PUSPITA SARI', 'JEPARA', '01/01/2018', 'XII TKJ 2', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('19', '10019', '1111111129', '19019', 'SITI ANDARUNI', 'JAKARTA', '01/01/2019', 'XII TKJ 2', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('2', '10002', '1111111112', '19002', 'AMRIZAL NUR SHOLIHIN', 'JEPARA', '01/01/2002', 'XII TKJ 1', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('20', '10020', '1111111130', '19020', 'SITI FATIMATUS ZAHRO', 'JEPARA', '01/01/2020', 'XII TKJ 2', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('3', '10003', '1111111113', '19003', 'ADELLIA REGINA ANGGITA', 'JAKARTA', '01/01/2003', 'XII TKJ 1', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('4', '10004', '1111111114', '19004', 'AHMAD IRFANI', 'JEPARA', '01/01/2004', 'XII TKJ 1', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('5', '10005', '1111111115', '19005', 'AHMAD SYAIKHUL FURQON', 'JAKARTA', '01/01/2005', 'XII TKJ 1', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('6', '10006', '1111111116', '19006', 'ALVIAN SYAMSUL MUKHLISIN', 'JEPARA', '01/01/2006', 'XII TKJ 1', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('7', '10007', '1111111117', '19007', 'AN SURYADI', 'JAKARTA', '01/01/2007', 'XII TKJ 1', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78'),
('8', '10008', '1111111118', '19008', 'ANANDA IMELIA PUTRI', 'JEPARA', '01/01/2008', 'XII TKJ 1', '-', 'SMK NEGERI 1 CIBATU', 'JR02', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89'),
('9', '10009', '1111111119', '19009', 'DEDY IRAWAN', 'JAKARTA', '01/01/2009', 'XII TKJ 1', 'LULUS', 'SMK NEGERI 1 CIBATU', 'JR02', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78', '78');

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
  MODIFY `id_jurusan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id_mapel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=623;

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
