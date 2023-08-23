-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 04:58 AM
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
-- Database: `db_purchase_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0 = tidak aktif\r\n1 = aktif',
  `id_role` int(1) NOT NULL COMMENT '1=administrator, 2=sales'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `status`, `id_role`) VALUES
(3, 'Agus Susanto', 'agus', 'fdf169558242ee051cca1479770ebac3', 1, 1),
(8, 'SELVI MKT', 'MKT-SELVI', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1),
(11, 'bu warih', 'sales-warih', 'd64bd9461581435deece5a0932777518', 1, 2),
(12, 'pak frengky', 'sales-frengky', '1dd13aad9691200591c58c6df07ad353', 1, 2),
(13, 'pak David', 'sales-david', '77cbf462e62abb63ff15f0172a580b76', 1, 2),
(14, 'pak eriyance', 'sales-eriyance', '574a1968e0d9c7952468ad6b1b431269', 1, 2),
(15, 'bu fauzi', 'sales-fauzi', '2f54ccaec45b30e465a7943a88f8d76d', 1, 2),
(16, 'Bu okta', 'sales-okta', '4ac241580a7ff218c2cd11efd7c8f74c', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
