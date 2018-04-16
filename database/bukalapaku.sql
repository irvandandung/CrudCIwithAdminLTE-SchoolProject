-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2018 pada 04.48
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukalapaku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation`
--

CREATE TABLE `reservation` (
  `id` int(5) NOT NULL,
  `reservation_code` varchar(6) NOT NULL,
  `reservation_at` varchar(20) NOT NULL,
  `reservation_date` varchar(30) NOT NULL,
  `customerid` varchar(10) NOT NULL,
  `seat_code` varchar(10) NOT NULL,
  `ruteid` varchar(10) NOT NULL,
  `depart_at` varchar(20) NOT NULL,
  `price` varchar(200) NOT NULL,
  `userid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rute`
--

CREATE TABLE `rute` (
  `id` int(5) NOT NULL,
  `depart_at` varchar(20) NOT NULL,
  `rute_form` varchar(30) NOT NULL,
  `rute_to` varchar(30) NOT NULL,
  `price` varchar(200) NOT NULL,
  `transportationid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation`
--

CREATE TABLE `transportation` (
  `id` int(5) NOT NULL,
  `code` varchar(6) NOT NULL,
  `description` varchar(200) NOT NULL,
  `seat_qty` varchar(100) NOT NULL,
  `transportation_typeid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transportation_type`
--

CREATE TABLE `transportation_type` (
  `id` int(5) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transportation_type`
--
ALTER TABLE `transportation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
