-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 09:14 AM
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

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`no`, `noujian`, `nis`, `nisn`, `name`, `ortu`, `addresse`, `tgllhr`, `kelas`, `ket`, `sekolah`, `kd_jurusan`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`) VALUES
('1', '4-22-02-22-102-001-2', '19200001', '0043111983', 'ABDUL ROHMAN', 'TEDI RIADI', 'KARAWANG', '12/12/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('10', '4-22-02-22-102-012-3', '19200012', '0044450525', 'DZIKRI FATHIHATULMALIK', 'INDRA KURNIAWAN', 'PURWAKARTA', '18/02/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('100', '4-22-02-22-102-116-7', '19200116', '0032948815', 'ATMAJA', 'ADE', 'PURWAKARTA', '06/03/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('101', '4-22-02-22-102-117-8', '19200117', '0043205539', 'DANDI SEPTIANDA', 'PARTA', 'SUBANG', '19/09/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('102', '4-22-02-22-102-187-9', '19200187', '0039372891', 'DARMAN', 'JEJE', 'PURWAKARTA', '09/07/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('103', '4-22-02-22-102-119-2', '19200119', '0041020500', 'DONI ALPIANI', 'WARMINJ', 'PURWAKARTA', '17/02/2004', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('104', '4-22-02-22-102-121-3', '19200121', ';0037737004', 'ENJEN', 'ROJIK', 'PURWAKARTA', '02/08/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('105', '4-22-02-22-102-189-4', '19200189', '29206055', 'FARHAN NAZAR', 'MAMAN SUPRIATNA', 'PURWAKARTA', '28/12/2002', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('106', '4-22-02-22-102-122-5', '19200122', '0037699061', 'FARHAN NUGRAHA', 'ISEP MUHIIDIN', 'PURWAKARTA', '04/01/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('108', '4-22-02-22-102-196-7', '19200196', '0050596403', 'ILHAM PURNAMA', 'UCUP SUPANDI', 'PURWAKARTA', '25/03/2005', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('109', '4-22-02-22-102-123-8', '19200123', '0042008882', 'IQBAL SYAIFUL RIDWAN', 'WAWAN IWAN', 'SUBANG', '10/09/2004', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('11', '4-22-02-22-102-013-4', '19200013', '0037274959', 'EGI AHMAD PAHROJI', 'ENJANG', 'SUBANG', '25/02/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('110', '4-22-02-22-102-125-9', '19200125', '0039647875', 'M GILANG ROMADAN', 'ROSIM', 'PURWAKARTA', '29/10/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('111', '4-22-02-22-102-127-2', '19200127', '0034130938', 'MUHAMMAD ABDUL AZIS', 'EDI SUPARDI', 'SUBANG', '24/08/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('112', '4-22-02-22-102-128-3', '19200128', '0044559965', 'MUHAMAD EGI', 'ANDI SETIAWAN', 'PURWAKARTA', '29/07/2004', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('113', '4-22-02-22-102-130-4', '19200130', '0039700014', 'MUHAMAD ROSIDIN', 'DANU MAYA', 'PURWAKARTA', '11/05/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('114', '4-22-02-22-102-205-5', '19200205', '0036864009', 'RAIHAN NUGRAHA', 'ROHANDA', 'PURWAKARTA', '14/07/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('115', '4-22-02-22-102-133-6', '19200133', '0037274958', 'RASMAN ARDIANSYAH', 'TARSIM', 'SUBANG', '16/02/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('116', '4-22-02-22-102-207-7', '19200207', '0029485545', 'RENDI', 'SUGANDA', 'PURWAKARTA', '13/08/2002', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('117', '4-22-02-22-102-135-8', '19200135', '0049603110', 'REVAN RAZI ZAHARA', 'DEDIN CARNUDI', 'PURWAKARTA', '01/05/2004', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('118', '4-22-02-22-102-137-9', '19200137', '0048778031', 'RIKI RUKMANA', 'RUDI (ALM)', 'PURWAKARTA', '14/02/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('119', '4-22-02-22-102-140-2', '19200140', '0048688624', 'SUKMA SEJATI', 'ASEP SARIPUDIN', 'PURWAKARTA', '11/05/2004', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12', '4-22-02-22-102-014-5', '19200014', '0043613176', 'FAIZ FADIL FADUROHMAN', 'HOTIB', 'SUBANG', '14/10/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('120', '4-22-02-22-102-141-3', '19200141', '0034117364', 'SUPRIYATNA', 'ALI SURYANTO', 'CIAMIS', '09/09/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('121', '4-22-02-22-102-213-4', '19200213', '0047815452', 'SURYANA', 'NATA', 'PURWAKARTA', '05/08/2004', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('122', '4-22-02-22-102-215-5', '19200215', '0039585103', 'WAWAN GUNAWAN', 'TASIM', 'PURWAKARTA', '19/07/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('123', '4-22-02-22-102-145-6', '19200145', '0022944414', 'AGUNG FIRDAUS', 'SOHIB', 'PURWAKARTA', '07/04/2002', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('124', '4-22-02-22-102-146-7', '19200146', '0044433535', 'AHMAD KOMARUDIN', 'CARMA', 'PURWAKARTA', '07/07/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('125', '4-22-02-22-102-147-8', '19200147', '0032209471', 'ANDI KUSUMAH', 'SULAEMAN', 'PURWAKARTA', '26/05/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('126', '4-22-02-22-102-148-9', '19200148', '0049634489', 'ANGGA ADITIA', 'DADANG', 'PURWAKARTA', '13/07/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('127', '4-22-02-22-102-150-2', '19200150', '0038050019', 'ASEP MAULANA', 'ADE RAHMAN', 'SUBANG', '08/05/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('128', '4-22-02-22-102-151-3', '19200151', '0046245904', 'BAGAS TINO PRABOWO', 'BUNOKO', 'SUBANG', '21/08/2005', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('129', '4-22-02-22-102-155-4', '19200155', '0038016895', 'DIYANA PRIYANTO', 'KRISNO', 'SUBANG', '29/08/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('13', '4-22-02-22-102-015-6', '19200015', '0048939767', 'FAJAR NUGRAHA', 'RUKMANA', 'PURWAKARTA', '25/09/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('130', '4-22-02-22-102-188-5', '19200188', '0044479255', 'EGA SUPRIATNA', 'KARNADI', 'PURWAKARTA', '03/05/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('131', '4-22-02-22-102-156-6', '19200156', '0048785768', 'FAHRIZAL YUDIANSYAH', 'EDIH', 'PURWAKARTA', '26/05/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('132', '4-22-02-22-102-190-7', '19200190', '0043742598', 'FEBBY ADETYA SHOLIHIN', 'ACEP SOLIHIN', 'PURWAKARTA', '08/01/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('133', '4-22-02-22-102-158-8', '19200158', '0032206751', 'HAERUL RAHMAN', 'SUDIRMAN (ALM)', 'PURWAKARTA', '10/02/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('134', '4-22-02-22-102-195-9', '19200195', '0044310907', 'HILMAN S ABDUL MUIS', 'OBAN SARIPUDIN', 'SUBANG', '18/05/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('135', '4-22-02-22-102-197-2', '19200197', '0037274965', 'INDRA AWALUDDIN ZAMIL', 'CADIM', 'SUBANG', '08/07/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('136', '4-22-02-22-102-160-3', '19200160', '0043592335', 'INDRA DARMAWAN', 'SUHENDI', 'SUBANG', '02/09/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('137', '4-22-02-22-102-161-4', '19200161', '0048036001', 'IQBAL BAHTIAR', 'AKBARI', 'PURWAKARTA', '22/11/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('138', '4-22-02-22-102-162-5', '19200162', '0046204478', 'MAHMUD FADILLAH', 'SUNANDAR DINATA', 'MAJALENGKA', '15/07/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('139', '4-22-02-22-102-163-6', '19200163', '0038228279', 'MANSUR FAUZI', 'NAJUM', 'PURWAKARTA', '30/03/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('14', '4-22-02-22-102-016-7', '19200016', '0043611717', 'FAUZI APRIYADI', 'TAHARUDDIN', 'KARAWANG', '18/04/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('140', '4-22-02-22-102-167-7', '19200167', '0044293613', 'MUHAMMAD ARI SIGIT', 'SUGIRI', 'SUBANG', '18/03/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('141', '4-22-02-22-102-168-8', '19200168', '0044645603', 'PARID PADILAH', 'ASEP SUMARDI', 'PURWAKARTA', '20/09/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('142', '4-22-02-22-102-206-9', '19200206', '0044365065', 'RAYA ADITYA KERAY', 'LUKAS LAWO RAIN', 'PURWAKARTA', '01/05/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('143', '4-22-02-22-102-169-2', '19200169', '0043900524', 'RIDHO STIAWAN', 'DIDIN SARIPUDIN', 'PURWAKARTA', '26/09/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('144', '4-22-02-22-102-171-3', '19200171', '0032701056', 'ROBY RUSTANDI WINATA', 'SAMSUDIN', 'PURWAKARTA', '19/03/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('145', '4-22-02-22-102-172-4', '19200172', '0034952927', 'RYAN RAHAYU', 'TOSRI', 'PURWAKARTA', '08/06/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('146', '4-22-02-22-102-173-5', '19200173', '0077070302', 'SADUDIN', 'RUHIYAT', 'PURWAKARTA', '26/08/2002', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('147', '4-22-02-22-102-174-6', '19200174', '0034867739', 'SANDI', 'NATA', 'PURWAKARTA', '16/12/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('148', '4-22-02-22-102-176-7', '19200176', '0046387631', 'SHARUKKAN', 'ENDANG', 'SUBANG', '11/01/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('149', '4-22-02-22-102-177-8', '19200177', '0050577232', 'SIDIK RAHMATULLAH', 'RIYANTO', 'SUBANG', '16/11/2005', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('15', '4-22-02-22-102-017-8', '19200017', '0042624409', 'GIO NUGRAHA', 'ANUNG SUPRIATNA', 'SUBANG', '02/10/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('150', '4-22-02-22-102-212-9', '19200212', '0039706631', 'SUDRAJAT', 'HARI MANDALANSAH', 'PURWAKARTA', '23/05/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('151', '4-22-02-22-102-179-2', '19200179', '0034069199', 'SURYANA', 'CATAM', 'PURWAKARTA', '22/05/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('152', '4-22-02-22-102-214-3', '19200214', '0048359240', 'TAUFIK HIDAYAT', 'UJANG WASLIM', 'PURWAKARTA', '12/06/2004', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('153', '4-22-02-22-102-323-4', '19200323', '0034130126', 'ARJU SIMANULLANG', 'JONIOR P. SIMANULLANG', 'SUBANG', '08/07/2003', 'XII TPM 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('154', '4-22-02-22-102-109-5', '19200109', '0037320517', 'ADNAN MOCH AMIRUDDIN', 'UJANG TARKIM', 'PURWAKARTA', '19/10/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('155', '4-22-02-22-102-181-6', '19200181', '0044219755', 'ADRIAN RIZKI MAULANA', 'AGUS SUYANTO', 'PURWAKARTA', '11/08/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('156', '4-22-02-22-102-182-7', '19200182', '0020261775', 'AHMAD SAEPUDIN', 'OMIN', 'PURWAKARTA', '26/07/2002', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('157', '4-22-02-22-102-111-8', '19200111', '0032346228', 'AJI PERMANA', 'SURMANA', 'PURWAKARTA', '31/08/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('158', '4-22-02-22-102-212-9', '19200183', '0034128904', 'ALIF ZIKRI FAHREZI', 'HAMDANI MUCHTAR', 'SUBANG', '20/04/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('159', '4-22-02-22-102-183-2', '19200185', '0038238704', 'ASEP BAYU', 'AMUD', 'PURWAKARTA', '23/04/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('16', '4-22-02-22-102-018-9', '19200018', '0044330276', 'GIRANG KARTONO', 'KARTONO', 'SUBANG', '17/04/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('160', '4-22-02-22-102-152-3', '19200152', '0035826270', 'DANI SUHENDA', 'ANDI IRAWAN', 'PURWAKARTA', '19/12/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('161', '4-22-02-22-102-118-4', '19200118', '0022552912', 'DIAN', 'KARDI', 'SUBANG', '19/05/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('162', '4-22-02-22-102-157-5', '19200157', '0038019835', 'FIAR RAMADAN', 'ASID', 'SUBANG', '23/11/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('163', '4-22-02-22-102-192-6', '19200192', '0038154957', 'GUNAWAN', 'ADE SURATMAN', 'PURWAKARTA', '12/10/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('164', '4-22-02-22-102-193-7', '19200193', '0044293821', 'HAERUL ILHAM', 'SUPRIATNA', 'SUBANG', '18/08/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('165', '4-22-02-22-102-194-8', '19200194', '0038058316', 'HAMDAN ALAMIN', 'NANANG', 'PURWAKARTA', '25/03/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('166', '4-22-02-22-102-159-9', '19200159', '0048181311', 'HARIS HERYANTO', 'KARPIN', 'PURWAKARTA', '07/04/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('167', '4-22-02-22-102-200-2', '19200200', '0029359488', 'LUKMAN SETIAWAN', 'YAYAT AULYANSYAH', 'PURWAKARTA', '05/03/2002', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('168', '4-22-02-22-102-126-3', '19200126', '0040435466', 'M RIKI SUBAGJA', 'KASRI', 'PURWAKARTA', '09/04/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('169', '4-22-02-22-102-164-4', '19200164', '0044559966', 'MOHAMAD MAULANA ILHAM', 'TARSUM', 'PURWAKARTA', '12/06/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('170', '4-22-02-22-102-201-5', '19200201', '0043938091', 'MOHAMMAD FARIZ RAMADHAN', 'ENDANG', 'BEKASI', '15/10/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('171', '4-22-02-22-102-165-6', '19200165', '0048803393', 'MUHAMAD HIDAYATTULLOH', 'MULYANA', 'PURWAKARTA', '10/10/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('172', '4-22-02-22-102-129-7', '19200129', '0049372275', 'MUHAMAD IMAM MAHAERONI', 'ADUNG', 'PURWAKARTA', '30/01/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('173', '4-22-02-22-102-202-8', '19200202', '0038199011', 'MUHAMAD OLEH', 'UMAR', 'PURWAKARTA', '18/08/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('175', '4-22-02-22-102-132-2', '19200132', '0089970939', 'MUHAMMAD JAFAR SIDIQ', 'EDENG', 'PURWAKARTA', '09/08/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('176', '4-22-02-22-102-203-3', '19200203', '0044433601', 'PIRDAUS ALPARIJ', 'JUDIN', 'PURWAKARTA', '09/08/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('177', '4-22-02-22-102-204-4', '19200204', '0037254372', 'RAFIANDA DESLIANSYAH', 'ISMAN HAFIZ', 'SUBANG', '16/12/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('178', '4-22-02-22-102-208-5', '19200208', '0032541547', 'RHIKO AZHAR PADILAH', 'WARMAN', 'BANDUNG', '20/04/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('179', '4-22-02-22-102-138-6', '19200138', '0049835583', 'SAIFUDIN KAMAL', 'SUKARMAN', 'JEPARA', '20/07/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('18', '4-22-02-22-102-021-3', '19200021', '0035288097', 'M ZULFIKAR', 'OPAN SOPANDI', 'PURWAKARTA', '13/07/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('180', '4-22-02-22-102-175-7', '19200175', '0032465318', 'SANDI SAPUTRA', 'KARJUDIN', 'PURWAKARTA', '01/03/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('181', '4-22-02-22-102-211-8', '19200211', '0038546576', 'SONI WIHARJA', 'ROSIM', 'PURWAKARTA', '07/08/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('182', '4-22-02-22-102-178-9', '19200178', '0037853706', 'SURYADIVA', 'MULYANA', 'PURWAKARTA', '13/12/2003', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('183', '4-22-02-22-102-142-2', '19200142', '0001044337', 'WIRANTA', 'ANDI (ALM)', 'PURWAKARTA', '24/06/2000', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('184', '4-22-02-22-102-143-3', '19200143', '0045171651', 'YANA', 'OMAN', 'PURWAKARTA', '03/06/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('185', '4-22-02-22-102-180-4', '19200180', '0046116625', 'YOGA TRI ALFANDI', 'MUHAMAD NURDIN', 'SERANG', '04/01/2004', 'XII TPM 3', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('186', '4-22-02-22-102-216-2', '19200216', '0043688259', 'ABDUL WAHAB', 'DEDE KUSNADI', 'PURWAKARTA', '10/04/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('187', '4-22-02-22-102-217-3', '19200217', '0038260719', 'ADE KOMA NURJAMAN', 'ASEP SAEPUL RAHMAN', 'PURWAKARTA', '19/09/2003', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('188', '4-22-02-22-102-219-4', '19200219', '0048279989', 'AHMAD RIZKI', 'KUSWORO', 'PURWAKARTA', '02/10/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('189', '4-22-02-22-102-220-5', '19200220', '0047755633', 'ALDI PRATAMA', 'MUDILI', 'JAKARTA', '28/06/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('19', '4-22-02-22- 102-022-4', '19200022', '0038238709', 'M. REJA RAMADAN', 'ANDA SURYAWINATA', 'PURWAKARTA', '20/11/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('190', '4-22-02-22-102-221-6', '19200221', '0044313142', 'ANDIKA KURNIAWAN', 'ASEP TATA', 'SUBANG', '05/07/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('191', '4-22-02-22-102-222-7', '19200222', '0043635350', 'ANITA KARLINA', 'AHIDIN', 'SUBANG', '22/12/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('192', '4-22-02-22-102-223-8', '19200223', '0033802052', 'APENDI', 'ASEP HIDAYAT (ALM)', 'PURWAKARTA', '24/04/2003', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('193', '4-22-02-22-102-224-9', '19200224', '0047278079', 'BUNGA FEBY ASTUTI', 'SLAMET', 'PURWAKARTA', '18/02/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('194', '4-22-02-22-102-226-2', '19200226', '0043635328', 'BUNGA VIDI VICI', 'BELUM', 'SUBANG', '25/01/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('195', '4-22-02-22-102-227-3', '19200227', '0037298338', 'CITRA SULISTIANI', 'SUHENDA', 'SUBANG', '18/12/2003', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('196', '4-22-02-22-102-230-4', '19200230', '0047707150', 'ELSA SEPTIANI', 'UCA', 'SUBANG', '14/09/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('197', '4-22-02-22-102-233-5', '19200233', '0039273173', 'GIANTO', 'JUJU', 'PURWAKARTA', '16/11/2003', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('198', '4-22-02-22-102-234-6', '19200234', '0036243576', 'HERIYANTO', 'RASDI', 'PURWAKARTA', '09/03/2003', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('199', '4-22-02-22-102-235-7', '19200235', '0050530724', 'INDRI AMALIA DEWI', 'ITA SASMITA', 'SUBANG', '08/01/2005', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('2', '4-22-02-22-102-002-3', '19200002', '0037274981', 'AEP', 'ASIM', 'SUBANG', '19/12/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('20', '4-22-02-22-102-023-5', '19200023', '0046354886', 'MUHAMAD RIFKI HAKIKI', 'HENDAR', 'PURWAKARTA', '23/04/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('200', '4-22-02-22-102-236-8', '19200236', '0047956472', 'JAJANG MULYANA', 'SUBRI', 'PURWAKARTA', '29/08/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('201', '4-22-02-22-102-237-9', '19200237', '0025126219', 'KOMARUDIN', 'ROHMAN', 'PURWAKARTA', '07/02/2002', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('202', '4-22-02-22-102-239-2', '19200239', '0024356964', 'MOCH GUNTA RIKRIYANSYAH', 'MAMAN SODIK', 'PURWAKARTA', '26/10/2002', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('203', '4-22-02-22-102-241-3', '19200241', '0037856882', 'NURHALIMAH', 'ASIM ZARKASIH (ALM)', 'SUBANG', '15/06/2003', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('204', '4-22-02-22-102-242-4', '19200242', '0038859258', 'RIFKI PERMANA', 'KASIM', 'PURWAKARTA', '06/08/2003', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('205', '4-22-02-22-102-243-5', '19200243', '0045483693', 'RINDU SAKINAH DIAH', 'ASEP SURYANA', 'PURWAKARTA', '13/08/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('206', '4-22-02-22-102-244-6', '19200244', '0056912683', 'SITI LAILA MUSLIHAT', 'DIDIN', 'PURWAKARTA', '12/09/2005', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('207', '4-22-02-22-102-246-7', '19200246', '0020449829', 'SRI AIDA FITRIA', 'TATA', 'SUBANG', '16/12/2002', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('208', '4-22-02-22-102-247-8', '19200247', '0050577486', 'TITA KURNIA DEWI', 'KENDA', 'SUBANG', '12/01/2005', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('209', '4-22-02-22-102-248-9', '19200248', '0041429893', 'WARNO', 'TAKIM', 'PURWAKARTA', '21/08/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('21', '4-22-02-22-102-024-6', '19200024', '0040574247', 'MOCH. BADRI MISBAHUL KHOER', 'DAURI ', 'PURWAKARTA', '17/07/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('210', '4-22-02-22-102-250-2', '19200250', '0044310926', 'YOGI MAHENDRA', 'SUHERMAN', 'PADANG', '16/05/2004', 'XII AKL', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR04', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('211', '4-22-02-22-102-252-2', '19200252', '0048117781', 'ANISA PITRIYANI', 'ANAM SURYANA', 'PURWAKARTA', '16/05/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('212', '4-22-02-22-102-253-3', '19200253', '0036706784', 'ASEP ROSADI', 'BAKRI', 'PURWAKARTA', '04/09/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('213', '4-22-02-22-102-254-4', '19200254', '0048409266', 'ASIH MUSTIKA', 'ONDO', 'PURWAKARTA', '07/08/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('214', '4-22-02-22-102-256-5', '19200256', '0035185388', 'DEDE RIAN JAMALUDIN', 'DARPIN', 'PURWAKARTA', '04/09/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('215', '4-22-02-22-102-257-6', '19200257', '0037286355', 'DEVI JULYANTI', 'TOTO', 'PURWAKARTA', '18/07/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('216', '4-22-02-22-102-258-7', '19200258', '0032769524', 'DIAH SADIAH', 'ATANG SURYANA', 'PURWAKARTA', '15/03/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('217', '4-22-02-22-102-259-8', '19200259', '0039554968', 'ERWIN ERLANGGA', 'KOSAN', 'PURWAKARTA', '15/01/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('218', '4-22-02-22-102-260-9', '19200260', '0041669504', 'GINI ANTIKA', 'GANDA WIJAYA', 'PURWAKARTA', '11/09/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('219', '4-22-02-22-102-261-2', '19200261', '0043182795', 'HERI ARIYANTO', 'ATO', 'PURWAKARTA', '22/08/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('22', '4-22-02-22-102-025-7', '19200025', '0035203867', 'MUHAMAD HIFNI ALATOILAH', 'ADE SUNARDI', 'PURWAKARTA', '06/12/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('220', '4-22-02-22-102-262-3', '19200262', '0042881776', 'IRA DARA KARTIKA', 'SARMIN', 'PURWAKARTA', '06/02/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('221', '4-22-02-22-102-263-4', '19200263', '0042515967', 'KAREN KIRANA', 'AHMAD M', 'PURWAKARTA', '16/12/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('222', '4-22-02-22-102-264-5', '19200264', '0050533550', 'JISIKA AMANDA', 'SARIPUDIN', 'PURWAKARTA', '11/03/2005', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('223', '4-22-02-22-102-265-6', '19200265', '0028682288', 'LIONI YOYA PUTRI SUANDI', 'SUPRIONO', 'JAKARTA', '31/07/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('224', '4-22-02-22-102-266-7', '19200266', '0046976064', 'MELINDA BERLIANA', 'HAKIM MAKAGIANSAR', 'PURWAKARTA', '29/08/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('225', '4-22-02-22-102-268-8', '19200268', '0048826001', 'MIMIN MINTARSIH', 'MISLAN', 'PURWAKARTA', '08/11/2005', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('226', '4-22-02-22-102-269-9', '19200269', '0034191000', 'MUHAMAD RIDWAN FERDIANSYAH', 'ERWIN LESMANA', 'PURWAKARTA', '08/05/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('227', '4-22-02-22-102-270-2', '19200270', '0041223815', 'MUHAMAD SULAEMAN', 'ADIH SUGIARTO (ALM)', 'PURWAKARTA', '25/04/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('228', '4-22-02-22-102-271-3', '19200271', '0047204951', 'NENG IPUN', 'HUSEN', 'PURWAKARTA', '21/05/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('229', '4-22-02-22-102-273-4', '19200273', '0046065446', 'NURAENI', 'YAHYA', 'PURWAKARTA', '13/05/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('23', '4-22-02-22-102-026-8', '19200026', '0037856882', 'MUHAMAD RIDWAN HADIS', 'TARYA', 'SUBANG', '31/12/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('230', '4-22-02-22-102-275-5', '19200275', '0035845527', 'NURHAFIZIN', 'IMRON', 'PANDEGLANG', '01/12/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('231', '4-22-02-22-102-276-6', '19200276', '0038439811', 'PAULANA', 'CASWIN', 'PURWAKARTA', '31/01/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('232', '4-22-02-22-102-277-7', '19200277', '0049508944', 'RIANTI SIFA PAUJIAH', 'FIQIH UBAY DILAH', 'PURWAKARTA', '22/06/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('233', '4-22-02-22-102-278-8', '19200278', '0038519960', 'RISKY BAMBANG TRIONO', 'ONO WAHONO', 'PURWAKARTA', '02/12/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('234', '4-22-02-22-102-279-9', '19200279', '0045375144', 'SALWA ARIYANTI', 'ABDUL ROHIM', 'PURWAKARTA', '25/06/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('235', '4-22-02-22-102-280-2', '19200280', '0046240579', 'SILVY', 'JAENUDIN', 'PURWAKARTA', '15/08/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('236', '4-22-02-22-102-281-3', '19200281', '0032019927', 'SOPIAH PITRIYANI', 'ENDIL (ALM)', 'SUBANG', '27/08/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('237', '4-22-02-22-102-283-4', '19200283', '0036707886', 'THALITA NURASIFA', 'DODI KURNIAWAN', 'PURWAKARTA', '15/07/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('238', '4-22-02-22-102-284-5', '19200284', '0035323118', 'TIRA', 'SUPRIYATNA', 'PURWAKARTA', '28/05/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('239', '4-22-02-22-102-285-6', '19200285', '0045661870', 'YESA YANRI SETIANI', 'YAYAN MULYANA', 'PURWAKARTA', '25/05/2004', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('24', '4-22-02-22-102-027-9', '19200027', '0047787794', 'MUHAMMAD RIZKI', 'MASTUR ABDUL GANI', 'PURWAKARTA', '01/01/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('240', '4-22-02-22-102-286-7', '19200286', '0031500827', 'ZAIN ALFADINAR', 'SAEPUDIN, S.Ag., MM.Pd', 'PURWAKARTA', '20/11/2003', 'XII OTKP 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('241', '4-22-02-22-102-287-8', '19200287', '0044598235', 'AGUS SUKIMAN', 'WALIM', 'PURWAKARTA', '10/09/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('242', '4-22-02-22-102-288-9', '19200288', '0036201517', 'AKMAL WIRA ARDIANSYAH', 'OBAY SUMARNA', 'PURWAKARTA', '04/10/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('243', '4-22-02-22-102-289-2', '19200289', '0047821418', 'ANITA FEBRIYANI', 'TATA SUYATNA', 'PURWAKARTA', '05/02/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('244', '4-22-02-22-102-290-3', '19200290', '0048898634', 'DIKI FAUZI', 'ARMIN SUGIATNA', 'PURWAKARTA', '07/05/2005', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('245', '4-22-02-22-102-291-4', '19200291', '0049524569', 'DILA ARYANI', 'YAYAN KUSNADI', 'PURWAKARTA', '31/03/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('246', '4-22-02-22-102-292-5', '19200292', '0038242592', 'DINA CAHYA MUSTIKA', 'CAHYA', 'PURWAKARTA', '29/09/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('247', '4-22-02-22-102-293-6', '19200293', '0034201770', 'DINI KEMALA DEWI', 'CAHYA', 'PURWAKARTA', '29/09/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('248', '4-22-02-22-102-294-7', '19200294', '0049492758', 'FITRI GUCI ANDAYANI', 'O. SARIP SAEPUDIN', 'PURWAKARTA', '25/11/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('249', '4-22-02-22-102-295-8', '19200295', '0043242624', 'FITRI INDIANI', 'IPIT', 'PURWAKARTA', '01/02/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('25', '4-22-02-22-102-029-2', '19200029', '0037274983', 'RENAL SARIPUDIN', 'SAMIN', 'SUBANG', '20/12/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('250', '4-22-02-22-102-296-9', '19200296', '0035489793', 'HANDAYANI', 'EDI GUNAWAN', 'PURWAKARTA', '23/05/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('251', '4-22-02-22-102-297-2', '19200297', '0045729294', 'IKMAL FAUZY', 'AE SARIL', 'PURWAKARTA', '19/02/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('252', '4-22-02-22-102-298-3', '19200298', '0035767786', 'INDAH SULISTIAWATI', 'AHMAD SOLEH', 'PURWAKARTA', '15/12/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('253', '4-22-02-22-102-299-4', '19200299', '0044945991', 'INTAN MELATI KUSUMA DEWI', 'ASEP SUNARYA (ALM)', 'PURWAKARTA', '13/04/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('254', '4-22-02-22-102-300-5', '19200300', '0044373830', 'KARMILA', 'SUKARDI', 'PURWAKARTA', '21/03/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('255', '4-22-02-22-102-301-6', '19200301', '0042409678', 'MEYLANI', 'AHEN', 'PURWAKARTA', '06/05/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('256', '4-22-02-22-102-302-7', '19200302', '0038159113', 'MUHAMAD ALPIAN', 'ATIM', 'PURWAKARTA', '12/06/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('257', '4-22-02-22-102-304-8', '19200304', '0044559967', 'MUHAMAD RIPQI PAUZAN', 'ROHMAT', 'PURWAKARTA', '25/05/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('258', '4-22-02-22-102-305-9', '19200305', '0031164781', 'NOVI ANDANI', 'SUTIM', 'PURWAKARTA', '19/12/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('259', '4-22-02-22-102-306-2', '19200306', '0027128971', 'NURHAYATI', 'TATA SUPRIATNA', 'PURWAKARTA', '06/06/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('26', '4-22-02-22-102-030-3', '19200030', '0038210230', 'RENDI WAHYU HIDAYAT', 'ASEP KOMARUDIN', 'SUBANG', '08/10/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('260', '4-22-02-22-102-307-3', '19200307', '0049997661', 'NURHOLIPAH', 'MAMAN ABDUL ROHMAN', 'PURWAKARTA', '07/05/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('261', '4-22-02-22-102-308-4', '19200308', '0047227108', 'NURUL FAIDA', 'BURHAN', 'PURWAKARTA', '14/10/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('262', '4-22-02-22-102-309-5', '19200309', '0039335662', 'PIPIT SUGIARTI', 'SUMARNA', 'PURWAKARTA', '27/02/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('263', '4-22-02-22-102-310-6', '19200310', '0033341349', 'PURNAMA SABILI MAULIDA', 'AEP SAEPUL MULUK', 'PURWAKARTA', '21/08/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('264', '4-22-02-22-102-311-7', '19200311', '0033386521', 'QARIRAH AL KHANTSA', 'SOLEH', 'PURWAKARTA', '02/12/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('265', '4-22-02-22-102-312-8', '19200312', '0046840730', 'RIDWAN ABDUL ROJAK', 'ROHIM IBROHIM', 'PURWAKARTA', '11/02/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('266', '4-22-02-22-102-313-9', '19200313', '0049252333', 'RIZKI MAULANA', 'ISNO', 'PURWAKARTA', '21/09/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('267', '4-22-02-22-102-314-2', '19200314', '0044986793', 'RIJWAN SOPIYAN', 'JUHANA (ALM)', 'PURWAKARTA', '10/06/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('268', '4-22-02-22-102-315-3', '19200315', '0023446603', 'SISKA NOPITA', 'ROHMAN', 'PURWAKARTA', '27/11/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('269', '4-22-02-22-102-316-4', '19200316', '0050578754', 'SITI NURKOMALA', 'DANA', 'SUBANG', '19/01/2005', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('27', '4-22-02-22-102-031-4', '19200031', '0044433716', 'RENO NUGROHO', 'DASIM', 'PURWAKARTA', '16/05/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('270', '4-22-02-22-102-317-5', '19200317', '0038103203', 'SITI ROMLAH', 'ITA SUPRIATNA', 'PURWAKARTA', '21/08/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('271', '4-22-02-22-102-318-6', '19200318', '0044039822', 'SUMIRA PEBRIANI', 'DEDI MULYADI', 'PURWAKARTA', '07/02/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('272', '4-22-02-22-102-319-7', '19200319', '0039482967', 'SUSI SUSANTI', 'WARDI', 'PURWAKARTA', '11/11/2003', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('273', '4-22-02-22-102-320-8', '19200320', '0058641134', 'TOPAN ANUGRAH', 'JAHIDIN', 'PURWAKARTA', '09/02/2005', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('274', '4-22-02-22-102-321-9', '19200321', '0040314929', 'YANI ALVIANI', 'DAWUD', 'SUBANG', '13/04/2004', 'XII OTKP 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR05', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('28', '4-22-02-22-102-032-5', '19200032', '0037114667', 'RIZA PUADI', 'HENDRA KURNIA', 'SUBANG', '28/08/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('29', '4-22-02-22-102-033-6', '19200033', '0037856885', 'RIZAL ANDRIYANTO', 'WARISMAN', 'SUBANG', '24/10/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('3', '4-22-02-22-102-003-4', '19200003', '0037256613', 'AHMAD HIDAYAT', 'DARMO', 'SUBANG', '06/10/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('30', '4-22-02-22-102-034-7', '19200034', '0044926190', 'SUHERMAN', 'CAMING', 'PURWAKARTA', '26/04/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `tbl_siswa` (`no`, `noujian`, `nis`, `nisn`, `name`, `ortu`, `addresse`, `tgllhr`, `kelas`, `ket`, `sekolah`, `kd_jurusan`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`) VALUES
('31', '4-22-02-22-102-035-8', '19200035', '0037856889', 'TAUFIK HAMZAH', 'RAHMAN', 'SUBANG', '17/11/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('32', '4-22-02-22-102-036-9', '19200036', '0037256611', 'WANDA AGUSTIAN', 'AHMAD YANI', 'SUBANG', '26/08/2003', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('33', '4-22-02-22-102-037-2', '19200037', '0050596006', 'ADITYA AGUSTIAN', 'H. KASTIM', 'PURWAKARTA', '06/08/2005', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('34', '4-22-02-22-102-038-3', '19200038', '0033125259', 'AHMAD NURHASAN', 'DEDEN AHMAD NAWAWI', 'PURWAKARTA', '27/07/2003', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('35', '4-22-02-22-102-039-4', '19200039', '0042409420', 'AHMAD SULAEMAN', 'MAMAN', 'PURWAKARTA', '24/04/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('36', '4-22-02-22-102-040-5', '19200040', '0035527959', 'ANISA RAHAYU', 'EDI', 'PURWAKARTA', '02/11/2003', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('37', '4-22-02-22-102-041-6', '19200041', '0047240255', 'ATIN JUWITA APRIYANTI', 'AKIM', 'PURWAKARTA', '17/04/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('38', '4-22-02-22-102-042-7', '19200042', '0033404556', 'BAGUS RAHMAYUDA', 'HADA PERMANA', 'PURWAKARTA', '21/11/2003', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('39', '4-22-02-22-102-043-8', '19200043', '0037736992', 'BURHANUDIN', 'MAKIN', 'PURWAKARTA', '25/03/2003', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('4', '4-22-02-22-102-004-5', '19200004', '0049464265', 'AHMAD SOPIAN', 'SUANDA', 'PURWAKARTA', '08/08/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('40', '4-22-02-22-102-044-9', '19200044', '0049437642', 'CINDY HANISA', 'JUHANA', 'PURWAKARTA', '05/01/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('41', '4-22-02-22-102- 046-2', '19200046', '0048784282', 'DIAN MARDIANA', 'MULYANA', 'SUBANG', '05/12/2003', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('42', '4-22-02-22-102-047-3', '19200047', '0038039632', 'DICKY ADRYAN MAULANA', 'DEDE RUHAEMAN', 'SUBANG', '11/09/2003', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('43', '4-22-02-22-102-048-4', '19200048', '0048940486', 'EFHAL RHEVALDY', 'HENDRIK KENRIAWAN', 'PURWAKARTA', '05/01/2005', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('44', '4-22-02-22-102-049-5', '19200049', '0046690198', 'ELIS MULYATI', 'WASIM', 'PURWAKARTA', '24/03/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('45', '4-22-02-22-102-050-6', '19200050', '0044330273', 'ERLANGGA WIDIATMOKO', 'NUR WIDIYANTO', 'SUBANG', '01/04/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('46', '4-22-02-22-102-051-7', '19200051', '0048765813', 'FERI SANDRIA', 'SUKANDA', 'PURWAKARTA', '14/01/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('47', '4-22-02-22-102-052-8', '19200052', '0048249138', 'JAMILAH KOMALA DEWI', 'H. ASMARI', 'PURWAKARTA', '03/07/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('48', '4-22-02-22-102-053-9', '19200053', '0044510395', 'KAMAL ABDUL MUJIB', 'UJANG MAMAN', 'PURWAKARTA', '31/03/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('49', '4-22-02-22-102-054-2', '19200054', '0043608143', 'LAELA SITI FATIMATUL ZAHRO', 'ARIYA PINASTA', 'PURWAKARTA', '26/09/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('5', '4-22-02-22-102-005-6', '19200005', '0034952929', 'ANDRI SETIAWAN', 'TAMIN', 'PURWAKARTA', '02/07/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('50', '4-22-02-22-102-056-3', '19200056', '0043973916', 'M IHSAN KAMILUDIN', 'M. SAMSURI', 'PURWAKARTA', '03/01/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('51', '4-22-02-22- 102-057-4', '19200057', '0038408433', 'MILAWATI DEWI', 'ACE IWAN SETIAWAN', 'PURWAKARTA', '15/05/2003', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('52', '4-22-02-22-102-058-5', '19200058', '0046609713', 'MOCHAMMAD IKHSANUL AL RAFFI', 'GANDA MIARSA', 'PURWAKARTA', '19/03/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('53', '4-22-02-22-102-060-6', '19200060', '0041472985', 'NISA HERDIYANI', 'CENCEN SUHAENI (ALM)', 'CIANJUR', '04/01/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('54', '4-22-02-22-102-061-7', '19200061', '0054455054', 'PADIL NUR ALAM', 'SUDERLAN', 'PURWAKARTA', '10/03/2005', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('55', '4-22-02-22-102-062-8', '19200062', '0039164799', 'RANI HARYATI', 'HENDA', 'CIANJUR', '17/04/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('56', '4-22-02-22-102-063-9', '19200063', '0040575061', 'RIDA JULIA', 'TATANG SURYANA (ALM)', 'PURWAKARTA', '11/07/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('57', '4-22-02-22-102-064-2', '19200064', '0049886335', 'RIFKY ANDRIANSAH', 'KAMIN', 'PURWAKARTA', '19/04/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('59', '4-22-02-22-102-067-4', '19200067', '0028285203', 'SHIVA ANDIRA', 'AMELIA', 'PURWAKARTA', '18/10/2003', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('6', '4-22-02-22-102-007-7', '19200007', '0040172065', 'BINTANG CHANDRA SASONGKO', 'AJI SASONGKO W', 'BANYUMAS', '23/01/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('60', '4-22-02-22-102-068-5', '19200068', '0043823694', 'SRI WIDIASTUTI', 'JERY', 'PURWAKARTA', '07/08/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('61', '4-22-02-22-102-069-6', '19200069', '0044330175', 'TITA MAYA SOPA', 'CARTIM', 'SUBANG', '07/01/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('62', '4-22-02-22-102-070-7', '19200070', '0049281366', 'WIDIA SASISKA', 'SAYAT', 'PURWAKARTA', '21/03/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('63', '4-22-02-22-102-071-8', '19200071', '0041908942', 'WINDI PEBRIANTI', 'KARYA', 'PURWAKARTA', '02/01/2004', 'XII TKJ 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('64', '4-22-02-22-102-073-9', '19200073', '0038238702', 'AHMAD JAELANI', 'IDING', 'PURWAKARTA', '03/12/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('65', '4-22-02-22-102-074-2', '19200074', '0045911600', 'ALIKA SITI MARIYAM', 'DEDE AHMAD NU (ALM)', 'BANDUNG', '21/02/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('66', '4-22-02-22-102-075-3', '19200075', '0036522275', 'ALVINA DAMAYANTI', 'MAMAN SUPARMAN', 'PURWAKARTA', '06/05/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('67', '4-22-02-22-102-076-4', '19200076', '0038173427', 'ANDREANSYAH', 'IWAN IRAWAN', 'PURWAKARTA', '27/10/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('68', '4-22-02-22-102-077-5', '19200077', '0034409075', 'BARNABAS SOEMANTRI', 'MEMEN SUBARKAH', 'PURWAKARTA', '05/10/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('69', '4-22-02-22-102-078-6', '19200078', '0046901537', 'DANIL NURUL RUKMANA', 'RUHIYAT', 'SUBANG', '17/03/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('7', '4-22-02-22-102-009-8', '19200009', '0043433188', 'DEDE YUSUP', 'ENDAR SUTIANA', 'SUBANG', '08/03/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('70', '4-22-02-22-102-080-7', '19200080', '0039014571', 'ELMA AMELIA', 'KARMIN', 'PURWAKARTA', '23/07/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('71', '4-22-02-22-102-081-8', '19200081', '0032977701', 'FIRDAUS DAMAI MAHESA', 'MASJUKI AR', 'CILEGON', '06/01/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('72', '4-22-02-22-102-082-9', '19200082', '0049864603', 'HERAWATI', 'SUKANDA', 'PURWAKARTA', '27/10/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('73', '4-22-02-22-102-084-2', '19200084', '0039590079', 'KARNO', 'ADI', 'PURWAKARTA', '30/03/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('74', '4-22-02-22-102-085-3', '19200085', '0044156908', 'KHALID AIMAN', 'VERI JUFRIZAL', 'SUBANG', '17/02/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('75', '4-22-02-22-102-086-4', '19200086', '0047387239', 'LIAWATI', 'AMING', 'PURWAKARTA', '04/08/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('76', '4-22-02-22-102-087-5', '19200087', '0044032283', 'MOCH. ARDIANSYAH MAULANA', 'UJANG SUJANA', 'PURWAKARTA', '22/04/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('77', '4-22-02-22-102-088-6', '19200088', '0048610609', 'MUHAMAD GILANG RAMADHAN', 'WAWAN', 'PURWAKARTA', '26/12/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('78', '4-22-02-22-102-089-7', '19200089', '0002683166', 'MUHAMAD SAMSUL ANWAR', 'YANTO SULAEMAN', 'PURWAKARTA', '16/12/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('79', '4-22-02-22-102-090-8', '19200090', '0038039631', 'MUHAMMAD BAGUSTIAN', 'WAHYUDI', 'SUBANG', '14/08/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('8', '4-22-02-22-102-010-9', '19200010', '0048056070', 'DERI HERIAWAN', 'IKAM JUNAEDI', 'SUBANG', '04/06/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('80', '4-22-02-22-102-091-9', '19200091', '0044479356', 'MUHAMMAD FAKHRI FADHILA', 'YUSUP SAEPUL BAHRI', 'PURWAKARTA', '14/07/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('81', '4-22-02-22-102-092-2', '19200092', '0033761203', 'NURCAHYA', 'SATIM', 'PURWAKARTA', '20/06/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('82', '4-22-02-22-102-094-3', '19200094', '0046988525', 'PERA PATIMAH', 'UHAD', 'PURWAKARTA', '10/02/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('83', '4-22-02-22-102-095-4', '19200095', '0047551283', 'PIRA PEBRIANTI', 'DARPI', 'PURWAKARTA', '01/02/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('84', '4-22-02-22-102-096-5', '19200096', '0032108162', 'REPI', 'UDUS', 'PURWAKARTA', '25/07/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('85', '4-22-02-22-102-097-6', '19200097', '0048755205', 'RIDHO PUTRA HABIT', 'EBIT', 'PURWAKARTA', '03/10/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('86', '4-22-02-22-102-098-7', '19200098', '0043607380', 'RINDU MERLINDA', 'ENDANG SUPRIATNA', 'PURWAKARTA', '26/05/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('87', '4-22-02-22-102-099-8', '19200099', '0043755814', 'RISTA SINDY APRILIYANTI', 'SUNARSO', 'SUMEDANG', '27/04/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('88', '4-22-02-22-102-100-9', '19200100', '0038473747', 'ROBIATUL HAKIAH', 'LILI SUNARLI', 'PURWAKARTA', '10/09/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('89', '4-22-02-22-102-101-2', '19200101', '0046848499', 'SAEPUDIN', 'ENDI', 'PURWAKARTA', '26/04/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('9', '4-22-02-22-102-011-2', '19200011', '0049713799', 'DIMAS DERMAWAN', 'ABDULLAH', 'SUBANG', '06/02/2004', 'XII TKRO', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR01', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('90', '4-22-02-22-102-102-3', '19200102', '0047807370', 'SAYPI NAZWA ALIFIYAH RAMADANI', 'EPUL SAEPUDIN', 'PURWAKARTA', '03/11/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('91', '4-22-02-22-102-104-4', '19200104', '0045171648', 'SOPIAH', 'MAMAD', 'PURWAKARTA', '26/02/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('92', '4-22-02-22-102-105-5', '19200105', '0049393476', 'SYIFA NADIYA', 'KOSASIH', 'PURWAKARTA', '19/07/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('93', '4-22-02-22-102-107-6', '19200107', '0046452360', 'VERDINAN AHMED ZAELANI', 'ZAENAL ABIDIN', 'BEKASI', '14/01/2004', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('94', '4-22-02-22-102-108-7', '19200108', '0033325940', 'YULA YULIANTI', 'WARYA', 'PURWAKARTA', '31/08/2003', 'XII TKJ 2', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR02', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('95', '4-22-02-22-102-110-2', '19200110', '0037298331', 'AHMAD ANDRIAN', 'ATA', 'SUBANG', '10/10/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('96', '4-22-02-22-102-112-3', '19200112', '0020389839', 'ANDRIANSYAH', 'PEPEN', 'PURWAKARTA', '21/08/2002', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('97', '4-22-02-22-102-184-4', '19200184', '0045924823', 'ANGGI ANGGARA', 'AJAN', 'PURWAKARTA', '09/07/2004', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('98', '4-22-02-22-102-186-5', '19200186', '0037083435', 'ASEP IRWAN', 'WANTO', 'SUBANG', '01/12/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('99', '4-22-02-22-102-115-6', '19200115', '0038050032', 'ASEP LILI', 'SOBAR', 'SUBANG', '07/09/2003', 'XII TPM 1', '', 'SMK NEGERI 1 CIBATU PURWAKARTA', 'JR03', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

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
