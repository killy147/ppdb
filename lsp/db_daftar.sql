-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 12:07 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_daftar`
--

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `ttl` varchar(250) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `warga` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `nohp` varchar(250) NOT NULL,
  `asalsmp` varchar(250) NOT NULL,
  `ayah` varchar(250) NOT NULL,
  `ibu` varchar(250) NOT NULL,
  `penghasilan` varchar(250) NOT NULL,
  `foto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `ttl`, `tanggal`, `warga`, `alamat`, `email`, `nohp`, `asalsmp`, `ayah`, `ibu`, `penghasilan`, `foto`) VALUES
(1, 'Ibnu Aqil', 'Bogor', '2004-06-17', 'INDONESIA', 'Leuwiliang', 'akil@gmail.com', '089654902861', 'SMP PESAT', 'Bill Gates', 'Puan Maharani', '30 Juta', 'i.jpg'),
(8, 'Azhar Nadhif', 'Jakarta', '2004-04-26', 'Indonesia', 'Cilebut', 'azharnadhif@gmail.com', '081234567834', 'SMPN Bojong 1', 'Gale', 'Imeh', '20 Juta', ''),
(9, 'Mahija Attar', 'Depok', '2022-01-01', 'Indonesia', 'Sindangbarang', 'attar@gmail.com', '089534325365', 'SMPN 5 Depok', 'Brian', 'Karen', '40 Juta', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'user', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
