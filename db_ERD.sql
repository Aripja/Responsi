-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 19 Nov 2021 pada 14.18
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ERD`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Absensi`
--

CREATE TABLE `Absensi` (
  `Hadir` int(11) NOT NULL,
  `Ijin` int(11) NOT NULL,
  `Alpa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Administrasi`
--

CREATE TABLE `Administrasi` (
  `Data_dosen` varchar(50) NOT NULL,
  `Data_mhs` varchar(50) NOT NULL,
  `Keuangan` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Dosen`
--

CREATE TABLE `Dosen` (
  `NUP` bigint(11) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `No_Tlp` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Jadwal`
--

CREATE TABLE `Jadwal` (
  `id` int(11) NOT NULL,
  `Hari` date NOT NULL,
  `Waktu` time(6) NOT NULL,
  `Ruangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `Mahasiswa`
--

CREATE TABLE `Mahasiswa` (
  `NIM` bigint(11) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Prodi` varchar(50) NOT NULL,
  `Angkatan` int(5) NOT NULL,
  `Semester` int(15) NOT NULL,
  `SKS` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `Mahasiswa`
--

INSERT INTO `Mahasiswa` (`NIM`, `Nama`, `Prodi`, `Angkatan`, `Semester`, `SKS`) VALUES
(5200411131, 'Visco Adam Bramasta', 'Informatika', 2020, 3, 22),
(5200411174, 'Arief Dwi Yuliana', 'Informatika', 2020, 3, 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `Matkul`
--

CREATE TABLE `Matkul` (
  `Kode_matkul` varchar(11) NOT NULL,
  `Nama_matkul` varchar(50) NOT NULL,
  `SKS` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Dosen`
--
ALTER TABLE `Dosen`
  ADD PRIMARY KEY (`NUP`);

--
-- Indeks untuk tabel `Jadwal`
--
ALTER TABLE `Jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `Mahasiswa`
--
ALTER TABLE `Mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `Matkul`
--
ALTER TABLE `Matkul`
  ADD PRIMARY KEY (`Kode_matkul`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `Dosen`
--
ALTER TABLE `Dosen`
  MODIFY `NUP` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `Jadwal`
--
ALTER TABLE `Jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
