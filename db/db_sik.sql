-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Agu 2021 pada 05.09
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

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
-- Struktur dari tabel `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int(3) NOT NULL,
  `kd_jurusan` varchar(10) NOT NULL,
  `nm_jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jurusan`, `kd_jurusan`, `nm_jurusan`) VALUES
(1, 'JR01', 'IPA'),
(2, 'JR02', 'IPS'),
(3, 'JR03', 'UMUM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id_mapel` int(3) NOT NULL,
  `no_urut` int(3) DEFAULT NULL,
  `nm_mapel` varchar(255) DEFAULT NULL,
  `kd_jurusan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id_mapel`, `no_urut`, `nm_mapel`, `kd_jurusan`) VALUES
(8, 1, 'Al-Qur\'an-Hadis', 'JR03'),
(9, 2, 'Aqidah-Akhlak', 'JR03'),
(10, 3, 'Fikih', 'JR03'),
(11, 4, 'Sejarah Kebudayaan Islam', 'JR03'),
(12, 15, 'Fisika', 'JR01'),
(13, 16, 'Biologi', 'JR01'),
(14, 17, 'Kimia', 'JR01'),
(15, 19, 'Ekonomi', 'JR02'),
(16, 20, 'Geografi', 'JR02'),
(17, 21, 'Sejarah', 'JR02'),
(18, 18, 'Matematika', 'JR01'),
(19, 22, 'Sosiologi', 'JR02'),
(20, 5, 'Pendidikan Pancasila dan Kewarganegaraan', 'JR03'),
(21, 6, 'Bahasa Indonesia', 'JR03'),
(22, 7, 'Bahasa Arab', 'JR03'),
(23, 8, 'Matematika', 'JR03'),
(24, 9, 'Sejarah Indonesia', 'JR03'),
(25, 10, 'Bahasa Inggris', 'JR03'),
(26, 11, 'Seni Budaya', 'JR03'),
(27, 12, 'Pendidikan Jasmani, Olahraga, dan Kesehatan', 'JR03'),
(28, 13, 'Prakarya dan Kewirausahaan', 'JR03'),
(29, 14, 'Mulok', 'JR03'),
(30, 23, 'Informatika', 'JR01'),
(31, 24, 'Bahasa dan Sastra Inggris', 'JR01'),
(32, 25, 'Informatika', 'JR02'),
(33, 26, 'Biologi', 'JR02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_profil`
--

CREATE TABLE `tbl_profil` (
  `id_profil` int(10) NOT NULL,
  `nm_sekolah` varchar(200) NOT NULL,
  `nm_aplikasi` varchar(200) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tgl_pengumuman` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_profil`
--

INSERT INTO `tbl_profil` (`id_profil`, `nm_sekolah`, `nm_aplikasi`, `tahun`, `tgl_pengumuman`) VALUES
(1, 'Madrasah Aliyah (MA) Negeri 1 Andalusia', 'E-MANDANET', 2021, '2021-08-12 12:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `no` varchar(200) NOT NULL,
  `nisn` varchar(200) NOT NULL,
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `pass`, `nama`) VALUES
(39, 'admin', '0192023a7bbd73250516f069df18b500', 'Deni Kurniawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `tbl_profil`
--
ALTER TABLE `tbl_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no` (`no`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `id_jurusan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id_mapel` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tbl_profil`
--
ALTER TABLE `tbl_profil`
  MODIFY `id_profil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
