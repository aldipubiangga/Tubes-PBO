-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 06:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datapenduduk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) COLLATE utf8_slovenian_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `pass`) VALUES
('aldi_pubiangga', 'aldi123'),
('ridho', 'ridho123'),
('yeriko', 'yeriko123');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `Nama` varchar(30) COLLATE utf8_slovenian_ci NOT NULL,
  `NIK` int(13) NOT NULL,
  `Jenis Kelamin` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `Tempat Lahir` varchar(50) COLLATE utf8_slovenian_ci NOT NULL,
  `Tanggal Lahir` date NOT NULL,
  `Agama` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `Pendidikan` varchar(11) COLLATE utf8_slovenian_ci NOT NULL,
  `Pekerjaan` varchar(20) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`Nama`, `NIK`, `Jenis Kelamin`, `Tempat Lahir`, `Tanggal Lahir`, `Agama`, `Pendidikan`, `Pekerjaan`) VALUES
('agoi', 11112, 'laki', 'disini', '2000-11-02', 'islam', 'pend', 'lol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `password` (`pass`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`Nama`),
  ADD UNIQUE KEY `NIK` (`NIK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
