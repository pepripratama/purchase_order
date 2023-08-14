-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2023 at 07:08 AM
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
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id` int(11) NOT NULL,
  `kode_artikel` varchar(50) NOT NULL,
  `nama_artikel` varchar(150) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `retail` int(11) DEFAULT 0,
  `grosir` int(11) DEFAULT 0,
  `grosir_10` int(11) DEFAULT 0,
  `het_jawa` int(11) DEFAULT 0,
  `indo_barat` int(11) DEFAULT 0,
  `special_price` int(11) DEFAULT 0,
  `kategori` int(1) NOT NULL COMMENT '0 = barang normal\r\n1 = barang X',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0 = tidak aktif\r\n1 = aktif',
  `updated_at` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id`, `kode_artikel`, `nama_artikel`, `satuan`, `retail`, `grosir`, `grosir_10`, `het_jawa`, `indo_barat`, `special_price`, `kategori`, `status`, `updated_at`, `id_user`) VALUES
(1, 'FG-HS-SC31 M B', 'Hicoop R Neck Simple Classic Pack 3-1 Seri Misty', 'Pck', 199900, 112500, 0, 229900, 0, 149900, 1, 1, '0000-00-00', 0),
(2, 'FG-HS-SC31 M C', 'Hicoop R Neck Simple Classic Pack 3-1 Seri Misty', 'Pck', 199900, 112500, 0, 229900, 0, 149900, 1, 1, '0000-00-00', 0),
(3, 'FG-HS-SC31 M D', 'Hicoop R Neck Simple Classic Pack 3-1 Seri Misty', 'Pck', 199900, 112500, 0, 229900, 0, 149900, 1, 1, '0000-00-00', 0),
(4, 'FG-HS-SK21A', 'Hicoop Oblong Special Kids Salur Putih', 'Pcs', 42900, 24167, 0, 49900, 0, 0, 1, 1, '0000-00-00', 0),
(5, 'FG-HS-SK21B', 'Hicoop Oblong Special Kids Salur Putih', 'Pcs', 42900, 24167, 0, 49900, 0, 0, 1, 1, '0000-00-00', 0),
(6, 'FG-HS-SK21C', 'Hicoop Oblong Special Kids Salur Putih', 'Pcs', 42900, 24167, 0, 49900, 0, 0, 0, 1, '0000-00-00', 0),
(7, 'FG-HS-SK21D', 'Hicoop Oblong Special Kids Salur Putih', 'Pcs', 42900, 24167, 0, 49900, 0, 0, 1, 1, '0000-00-00', 0),
(8, 'FG-HS-ST01 A', 'Hicoop R Neck Style ', 'Pcs', 74900, 39584, 0, 84900, 0, 0, 1, 1, '0000-00-00', 0),
(9, 'FG-HS-ST01 B', 'Hicoop R Neck Style ', 'Pcs', 74900, 39584, 0, 84900, 0, 0, 1, 1, '0000-00-00', 0),
(10, 'FG-HS-ST01 C', 'Hicoop R Neck Style ', 'Pcs', 74900, 39584, 0, 84900, 0, 0, 1, 1, '0000-00-00', 0),
(11, 'FG-HS-ST01 D', 'Hicoop R Neck Style ', 'Pcs', 74900, 39584, 0, 84900, 0, 0, 0, 1, '0000-00-00', 0),
(12, 'FG-HTSC01A', 'Hicoop Tanktop Simple Classic White', 'Pcs', 64900, 36667, 0, 69900, 0, 0, 1, 1, '0000-00-00', 0),
(13, 'FG-HTSC01B', 'Hicoop Tanktop Simple Classic White', 'Pcs', 64900, 36667, 0, 69900, 0, 0, 1, 1, '0000-00-00', 0),
(14, 'FG-HTSC01BL A', 'Hicoop Tanktop Simple Classic Black', 'Pcs', 69900, 38750, 0, 79900, 0, 0, 1, 1, '0000-00-00', 0),
(15, 'FG-HTSC01BL B', 'Hicoop Tanktop Simple Classic Black', 'Pcs', 69900, 38750, 0, 79900, 0, 0, 1, 1, '0000-00-00', 0),
(16, 'FG-HTSC01BL C', 'Hicoop Tanktop Simple Classic Black', 'Pcs', 69900, 38750, 0, 79900, 0, 0, 1, 1, '0000-00-00', 0),
(17, 'FG-HTSC01BL D', 'Hicoop Tanktop Simple Classic Black', 'Pcs', 69900, 38750, 0, 79900, 0, 0, 1, 1, '0000-00-00', 0),
(18, 'FG-HTSC01C', 'Hicoop Tanktop Simple Classic White', 'Pcs', 64900, 36667, 0, 69900, 0, 0, 1, 1, '0000-00-00', 0),
(19, 'FG-HTSC01D', 'Hicoop Tanktop Simple Classic White', 'Pcs', 64900, 36667, 0, 69900, 0, 0, 1, 1, '0000-00-00', 0),
(20, 'FG-HX01BL B', 'Hicoop Boxer Black', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 1, 1, '0000-00-00', 0),
(21, 'FG-HX01BL C', 'Hicoop Boxer Black', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(22, 'FG-HX01BL D', 'Hicoop Boxer Black', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 1, 1, '0000-00-00', 0),
(23, 'FG-HX01-MA B', 'Hicoop Boxer Misty Abu ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 1, 1, '0000-00-00', 0),
(24, 'FG-HX01-MA C', 'Hicoop Boxer Misty Abu ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 1, 1, '0000-00-00', 0),
(25, 'FG-HX01-MA D', 'Hicoop Boxer Misty Abu ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 1, 1, '0000-00-00', 0),
(26, 'FG-HX01-MA E', 'Hicoop Boxer Misty Abu ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(27, 'FG-HX01-MC B', 'Hicoop Boxer Misty Coklat ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(28, 'FG-HX01-MC C', 'Hicoop Boxer Misty Coklat ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(29, 'FG-HX01-MC D', 'Hicoop Boxer Misty Coklat ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(30, 'FG-HX01-MC E', 'Hicoop Boxer Misty Coklat ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(31, 'FG-HX01-MM B', 'Hicoop Boxer Misty Maroon', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(32, 'FG-HX01-MM C', 'Hicoop Boxer Misty Maroon', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(33, 'FG-HX01-MM D', 'Hicoop Boxer Misty Maroon', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(34, 'FG-HX01-MM E', 'Hicoop Boxer Misty Maroon', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(35, 'FG-HX01-MN B', 'Hicoop Boxer Misty Navy ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(36, 'FG-HX01-MN C', 'Hicoop Boxer Misty Navy ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(37, 'FG-HX01-MN D', 'Hicoop Boxer Misty Navy ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(38, 'FG-HX01-MN E', 'Hicoop Boxer Misty Navy ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(39, 'FG-HX01W B', 'Hicoop Boxer White ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(40, 'FG-HX01W C', 'Hicoop Boxer White ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(41, 'FG-HX01W D', 'Hicoop Boxer White ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900, 0, 1, '0000-00-00', 0),
(42, 'FG-HX03-1 B', 'Hicoop Boxer Tanggung ', 'Pcs', 64900, 35417, 0, 69900, 0, 0, 0, 1, '0000-00-00', 0),
(43, 'FG-HX03-1 D', 'Hicoop Boxer Tanggung ', 'Pcs', 64900, 35417, 0, 69900, 0, 0, 0, 1, '0000-00-00', 0),
(44, 'FG-HX05-M A', 'Hicoop Boxer Motif', 'Pcs', 54900, 32500, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(45, 'FG-HX05-M B', 'Hicoop Boxer Motif', 'Pcs', 54900, 32500, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(46, 'FG-HX05-M C', 'Hicoop Boxer Motif', 'Pcs', 54900, 32500, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(47, 'FG-HX05-M D', 'Hicoop Boxer Motif', 'Pcs', 54900, 32500, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(48, 'FG-HXKL-SC107 B', 'HICOOP BOXER K.LUAR KOMBINASI', 'Pcs', 59900, 32500, 0, 64900, 0, 0, 0, 1, '0000-00-00', 0),
(49, 'FG-HXKL-SC107 C', 'HICOOP BOXER K.LUAR KOMBINASI', 'Pcs', 59900, 32500, 0, 64900, 0, 0, 0, 1, '0000-00-00', 0),
(50, 'FG-HXKL-SC107 D', 'HICOOP BOXER K.LUAR KOMBINASI', 'Pcs', 59900, 32500, 0, 64900, 0, 0, 0, 1, '0000-00-00', 0),
(51, 'FG-HXKL-SC221A', 'Hicoop Waistband Boxer Basic Black 2-1', 'Box', 139900, 75000, 0, 149900, 0, 109900, 0, 1, '0000-00-00', 0),
(52, 'FG-HXKL-SC221B', 'Hicoop Waistband Boxer Basic Black 2-1', 'Box', 139900, 75000, 0, 149900, 0, 109900, 0, 1, '0000-00-00', 0),
(53, 'FG-HXKL-SC221C', 'Hicoop Waistband Boxer Basic Black 2-1', 'Box', 139900, 75000, 0, 149900, 0, 109900, 0, 1, '0000-00-00', 0),
(54, 'FG-HXKL-SC221D', 'Hicoop Waistband Boxer Basic Black 2-1', 'Box', 139900, 75000, 0, 149900, 0, 109900, 0, 1, '0000-00-00', 0),
(55, 'FG-HXKL-SC222BS E', 'Hicoop Waistband Boxer Black-Grey Big Size 2-1', 'Box', 139900, 68334, 0, 149900, 0, 0, 0, 1, '0000-00-00', 0),
(56, 'FG-HXKL-SC222BS F', 'Hicoop Waistband Boxer Black-Grey Big Size 2-1', 'Box', 139900, 68334, 0, 149900, 0, 0, 0, 1, '0000-00-00', 0),
(57, 'FG-HXKL-SC222BS G', 'Hicoop Waistband Boxer Black-Grey Big Size 2-1', 'Box', 139900, 68334, 0, 149900, 0, 0, 0, 1, '0000-00-00', 0),
(58, 'FG-HXKL-SC227 BL A', 'Hicoop Waistband Boxer Basic Black 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900, 0, 1, '0000-00-00', 0),
(59, 'FG-HXKL-SC227 BL B', 'Hicoop Waistband Boxer Basic Black 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900, 0, 1, '0000-00-00', 0),
(60, 'FG-HXKL-SC227 BL C', 'Hicoop Waistband Boxer Basic Black 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900, 0, 1, '0000-00-00', 0),
(61, 'FG-HXKL-SC227 BL D', 'Hicoop Waistband Boxer Basic Black 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900, 0, 1, '0000-00-00', 0),
(62, 'FG-HXKL-SC227 NV A', 'Hicoop Waistband Boxer Basic Navy 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900, 0, 1, '0000-00-00', 0),
(63, 'FG-HXKL-SC227 NV B', 'Hicoop Waistband Boxer Basic Navy 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900, 0, 1, '0000-00-00', 0),
(64, 'FG-HXKL-SC227 NV C', 'Hicoop Waistband Boxer Basic Navy 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900, 0, 1, '0000-00-00', 0),
(65, 'FG-HXKL-SC227 NV D', 'Hicoop Waistband Boxer Basic Navy 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900, 0, 1, '0000-00-00', 0),
(66, 'FG-HXKL-SK217 A', 'Hicoop Boxer Karet Luar Special Kids Lego 1-1 ', 'Box', 54900, 35000, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(67, 'FG-HXKL-SK217 B', 'Hicoop Boxer Karet Luar Special Kids Lego 1-1 ', 'Box', 54900, 35000, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(68, 'FG-HXKL-SK217 C', 'Hicoop Boxer Karet Luar Special Kids Lego 1-1 ', 'Box', 54900, 35000, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(69, 'FG-HXKL-SK217 D', 'Hicoop Boxer Karet Luar Special Kids Lego 1-1 ', 'Box', 54900, 35000, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(70, 'FG-HXKL-SP09A', 'Hicoop Boxer Karet Luar Sport Seri Line', 'Box', 74900, 37500, 0, 84900, 0, 0, 0, 1, '0000-00-00', 0),
(71, 'FG-HXKL-SP09B', 'Hicoop Boxer Karet Luar Sport Seri Line', 'Box', 74900, 37500, 0, 84900, 0, 0, 0, 1, '0000-00-00', 0),
(72, 'FG-HXKL-SP09C', 'Hicoop Boxer Karet Luar Sport Seri Line', 'Box', 74900, 37500, 0, 84900, 0, 0, 0, 1, '0000-00-00', 0),
(73, 'FG-HXKL-SP09D', 'Hicoop Boxer Karet Luar Sport Seri Line', 'Box', 74900, 37500, 0, 84900, 0, 0, 0, 1, '0000-00-00', 0),
(74, 'FG-HXKL-SP511 BL B', 'Hicoop Waistband Boxer Seamless Sport Balck 1-1', 'Box', 79900, 40000, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(75, 'FG-HXKL-SP511 BL C', 'Hicoop Waistband Boxer Seamless Sport Balck 1-1', 'Box', 79900, 40000, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(76, 'FG-HXKL-SP511 BL D', 'Hicoop Waistband Boxer Seamless Sport Balck 1-1 ', 'Box', 79900, 40000, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(77, 'FG-HXKL-SP511 GY B', 'Hicoop Waistband Boxer Seamless Sport Grey 1-1', 'Box', 79900, 40000, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(78, 'FG-HXKL-SP511 GY C', 'Hicoop Waistband Boxer Seamless Sport Grey 1-1', 'Box', 79900, 40000, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(79, 'FG-HXKL-SP511 GY D', 'Hicoop Waistband Boxer Seamless Sport Grey 1-1 ', 'Box', 79900, 40000, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(80, 'FG-HXKL-SP523-1 B', 'Hicoop Boxer Karet Luar Sport Seri Coklat 1-1 ', 'Box', 79900, 41667, 0, 89900, 0, 62900, 0, 1, '0000-00-00', 0),
(81, 'FG-HXKL-SP523-1 C', 'Hicoop Boxer Karet Luar Sport Seri Coklat 1-1 ', 'Box', 79900, 41667, 0, 89900, 0, 62900, 0, 1, '0000-00-00', 0),
(82, 'FG-HXKL-SP523-1 D', 'Hicoop Boxer Karet Luar Sport Seri Coklat 1-1 ', 'Box', 79900, 41667, 0, 89900, 0, 62900, 0, 1, '0000-00-00', 0),
(83, 'FG-HXKL-SP525 B', 'Hicoop Boxer Karet Luar Sport Salur 1-1', 'Box', 74900, 37500, 0, 84900, 0, 0, 0, 1, '0000-00-00', 0),
(84, 'FG-HXKL-SP525 C', 'Hicoop Boxer Karet Luar Sport Salur 1-1', 'Box', 74900, 37500, 0, 84900, 0, 0, 0, 1, '0000-00-00', 0),
(85, 'FG-HXKL-SP525 D', 'Hicoop Boxer Karet Luar Sport Salur 1-1', 'Box', 74900, 37500, 0, 84900, 0, 0, 0, 1, '0000-00-00', 0),
(86, 'FG-HXKL-ST106 BL B', 'Hicoop Boxer Karet Luar Style Full Colour Black 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900, 0, 1, '0000-00-00', 0),
(87, 'FG-HXKL-ST106 BL C', 'Hicoop Boxer Karet Luar Style Full Colour Black 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900, 0, 1, '0000-00-00', 0),
(88, 'FG-HXKL-ST106 BL D', 'Hicoop Boxer Karet Luar Style Full Colour Black 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900, 0, 1, '0000-00-00', 0),
(89, 'FG-HXKL-ST106 GY B', 'Hicoop Boxer Karet Luar Style Full Colour Grey 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900, 0, 1, '0000-00-00', 0),
(90, 'FG-HXKL-ST106 GY C', 'Hicoop Boxer Karet Luar Style Full Colour Grey 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900, 0, 1, '0000-00-00', 0),
(91, 'FG-HXKL-ST106 GY D', 'Hicoop Boxer Karet Luar Style Full Colour Grey 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900, 0, 1, '0000-00-00', 0),
(92, 'FG-HXKL-ST106 MRN B', 'Hicoop Boxer Karet Luar Style Full Colour Maroon 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900, 0, 1, '0000-00-00', 0),
(93, 'FG-HXKL-ST106 MRN C', 'Hicoop Boxer Karet Luar Style Full Colour Maroon 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900, 0, 1, '0000-00-00', 0),
(94, 'FG-HXKL-ST106 MRN D', 'Hicoop Boxer Karet Luar Style Full Colour Maroon 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900, 0, 1, '0000-00-00', 0),
(95, 'FG-HXKL-ST106B', 'Hicoop Boxer Karet Luar Style Full Colour 1-1', 'Box', 0, 0, 0, 0, 0, 54900, 0, 1, '0000-00-00', 0),
(96, 'FG-HXKL-ST106C', 'Hicoop Boxer Karet Luar Style Full Colour 1-1', 'Box', 0, 0, 0, 0, 0, 54900, 0, 1, '0000-00-00', 0),
(97, 'FG-HXKL-ST106D', 'Hicoop Boxer Karet Luar Style Full Colour 1-1', 'Box', 0, 0, 0, 0, 0, 54900, 0, 1, '0000-00-00', 0),
(98, 'FG-HXKL-ST115A', 'Hicoop Boxer Karet Luar Red List Edition', 'Pcs', 0, 0, 0, 0, 0, 59900, 0, 1, '0000-00-00', 0),
(99, 'FG-HXKL-ST115B', 'Hicoop Boxer Karet Luar Red List Edition', 'Pcs', 0, 0, 0, 0, 0, 59900, 0, 1, '0000-00-00', 0),
(100, 'FG-HXKL-ST115C', 'Hicoop Boxer Karet Luar Red List Edition', 'Pcs', 0, 0, 0, 0, 0, 59900, 0, 1, '0000-00-00', 0),
(101, 'FG-HXKL-ST115D', 'Hicoop Boxer Karet Luar Red List Edition', 'Pcs', 0, 0, 0, 0, 0, 59900, 0, 1, '0000-00-00', 0),
(102, 'FG-HXKL-ST116B', 'Hicoop Boxer Karet Luar Hitam List Kombinasi Warna', 'Pcs', 0, 0, 0, 0, 0, 52900, 0, 1, '0000-00-00', 0),
(103, 'FG-HXKL-ST116C', 'Hicoop Boxer Karet Luar Hitam List Kombinasi Warna', 'Pcs', 0, 0, 0, 0, 0, 52900, 0, 1, '0000-00-00', 0),
(104, 'FG-HXKL-ST116D', 'Hicoop Boxer Karet Luar Hitam List Kombinasi Warna', 'Pcs', 0, 0, 0, 0, 0, 52900, 0, 1, '0000-00-00', 0),
(105, 'FG-HXKL-ST221 B', 'Hicoop Waistband Boxer Style White Navy 2-1', 'Box', 149900, 79167, 0, 159900, 0, 119900, 0, 1, '0000-00-00', 0),
(106, 'FG-HXKL-ST221 C', 'Hicoop Waistband Boxer Style White Navy 2-1', 'Box', 149900, 79167, 0, 159900, 0, 119900, 0, 1, '0000-00-00', 0),
(107, 'FG-HXKL-ST221 D', 'Hicoop Waistband Boxer Style White Navy 2-1', 'Box', 149900, 79167, 0, 159900, 0, 119900, 0, 1, '0000-00-00', 0),
(108, 'FG-HXKL-ST819 MBL A', 'Hicoop Waistband Boxer Jeans Style Misty Black 1-1', 'Box', 69900, 33334, 0, 79900, 0, 0, 0, 1, '0000-00-00', 0),
(109, 'FG-HXKL-ST819 MBL B', 'Hicoop Waistband Boxer Jeans Style Misty Black 1-1', 'Box', 69900, 33334, 0, 79900, 0, 0, 0, 1, '0000-00-00', 0),
(110, 'FG-HXKL-ST819 MBL C', 'Hicoop Waistband Boxer Jeans Style Misty Black 1-1', 'Box', 69900, 33334, 0, 79900, 0, 0, 0, 1, '0000-00-00', 0),
(111, 'FG-HXKL-ST819 MBL D', 'Hicoop Waistband Boxer Jeans Style Misty Black 1-1', 'Box', 69900, 33334, 0, 79900, 0, 0, 0, 1, '0000-00-00', 0),
(112, 'FG-HXKL-ST908AMB', 'Hicoop Boxer Karet Luar Style Kartun Abu Muda 1-1', 'Box', 0, 0, 0, 0, 0, 59900, 0, 1, '0000-00-00', 0),
(113, 'FG-HXKL-ST908AMC', 'Hicoop Boxer Karet Luar Style Kartun Abu Muda 1-1', 'Box', 0, 0, 0, 0, 0, 59900, 0, 1, '0000-00-00', 0),
(114, 'FG-HXKL-ST908AMD', 'Hicoop Boxer Karet Luar Style Kartun Abu Muda 1-1', 'Box', 0, 0, 0, 0, 0, 59900, 0, 1, '0000-00-00', 0),
(115, 'FG-HXKL-ST909-1A', 'Hicoop Boxer Karet Luar Style Batik Gold 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(116, 'FG-HXKL-ST909-1B', 'Hicoop Boxer Karet Luar Style Batik Gold 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(117, 'FG-HXKL-ST909-1C', 'Hicoop Boxer Karet Luar Style Batik Gold 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(118, 'FG-HXKL-ST909-1D', 'Hicoop Boxer Karet Luar Style Batik Gold 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(119, 'FG-HXKL-ST909-2A', 'Hicoop Boxer Karet Luar Style Batik Blue 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(120, 'FG-HXKL-ST909-2B', 'Hicoop Boxer Karet Luar Style Batik Blue 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(121, 'FG-HXKL-ST909-2C', 'Hicoop Boxer Karet Luar Style Batik Blue 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(122, 'FG-HXKL-ST909-2D', 'Hicoop Boxer Karet Luar Style Batik Blue 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(123, 'FG-HX-SC08 B', 'Hicoop Boxer Motif Kombinasi TR', 'Pcs', 59900, 32500, 0, 64900, 0, 0, 0, 1, '0000-00-00', 0),
(124, 'FG-HX-SC08 C', 'Hicoop Boxer Motif Kombinasi TR', 'Pcs', 59900, 32500, 0, 64900, 0, 0, 0, 1, '0000-00-00', 0),
(125, 'FG-HX-SC08 D', 'Hicoop Boxer Motif Kombinasi TR', 'Pcs', 59900, 32500, 0, 64900, 0, 0, 0, 1, '0000-00-00', 0),
(126, 'FG-HX-SC187 B', 'Hicoop Boxer Basic Colour Pocket', 'Pcs', 64900, 37500, 0, 74900, 0, 0, 0, 1, '0000-00-00', 0),
(127, 'FG-HX-SC187 C', 'Hicoop Boxer Basic Colour Pocket', 'Pcs', 64900, 37500, 0, 74900, 0, 0, 0, 1, '0000-00-00', 0),
(128, 'FG-HX-SC187 D', 'Hicoop Boxer Basic Colour Pocket', 'Pcs', 64900, 37500, 0, 74900, 0, 0, 0, 1, '0000-00-00', 0),
(129, 'FG-HX-SC189 B', 'Hicoop Boxer Motif List Polos', 'Pcs', 84900, 41667, 0, 94900, 0, 0, 0, 1, '0000-00-00', 0),
(130, 'FG-HX-SC189 D', 'Hicoop Boxer Motif List Polos', 'Pcs', 84900, 41667, 0, 94900, 0, 0, 0, 1, '0000-00-00', 0),
(131, 'FG-HX-SC9 GY 11', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 0, 0, 0, 0, 0, 69900, 0, 1, '0000-00-00', 0),
(132, 'FG-HX-SC9 GY 11', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 0, 0, 0, 0, 0, 69900, 0, 1, '0000-00-00', 0),
(133, 'FG-HX-SC9 GY 11', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 0, 0, 0, 0, 0, 69900, 0, 1, '0000-00-00', 0),
(134, 'FG-HX-SC911 BL B', 'Hicoop Boxer Seamless Basic Black 1-1 ', 'Box', 74900, 38750, 0, 84900, 0, 59900, 0, 1, '0000-00-00', 0),
(135, 'FG-HX-SC911 BL C', 'Hicoop Boxer Seamless Basic Black 1-1 ', 'Box', 74900, 38750, 0, 84900, 0, 59900, 0, 1, '0000-00-00', 0),
(136, 'FG-HX-SC911 BL D', 'Hicoop Boxer Seamless Basic Black 1-1 ', 'Box', 74900, 38750, 0, 84900, 0, 59900, 0, 1, '0000-00-00', 0),
(137, 'FG-HX-SC911 GY B', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 74900, 38750, 0, 84900, 0, 59900, 0, 1, '0000-00-00', 0),
(138, 'FG-HX-SC911 GY C', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 74900, 38750, 0, 84900, 0, 59900, 0, 1, '0000-00-00', 0),
(139, 'FG-HX-SC911 GY D', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 74900, 38750, 0, 84900, 0, 59900, 0, 1, '0000-00-00', 0),
(140, 'FG-HX-SP010 BL B', 'Hicoop Boxer Training Black Series', 'Pcs', 79900, 41667, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(141, 'FG-HX-SP010 BL D', 'Hicoop Boxer Training Black Series', 'Pcs', 79900, 41667, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(142, 'FG-HX-SP010 GY B', 'Hicoop Boxer Training Grey Series', 'Pcs', 79900, 41667, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(143, 'FG-HX-SP010 GY D', 'Hicoop Boxer Training Grey Series', 'Pcs', 79900, 41667, 0, 89900, 0, 0, 0, 1, '0000-00-00', 0),
(144, 'FG-HX-SP011 B', 'Hicoop Boxer Training Back Pocket', 'Pcs', 89900, 45834, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(145, 'FG-HX-SP011 D', 'Hicoop Boxer Training Back Pocket ', 'Pcs', 89900, 45834, 0, 99900, 0, 0, 0, 1, '0000-00-00', 0),
(146, 'FG-HX-ST112B', 'Hicoop Boxer Medium Back Pocket Motif ', 'Pcs', 69900, 35834, 0, 79900, 0, 0, 0, 1, '0000-00-00', 0),
(147, 'FG-HX-ST112D', 'Hicoop Boxer Medium Back Pocket Motif ', 'Pcs', 69900, 35834, 0, 79900, 0, 0, 0, 1, '0000-00-00', 0),
(148, 'FG-L-HSC93 B', 'Hicoop Long Pant Ladies Back Pocket Mix Colour ', 'Pcs', 84900, 45000, 0, 94900, 0, 0, 0, 1, '0000-00-00', 0),
(149, 'FG-L-HSC93 D', 'Hicoop Long Pant Ladies Back Pocket Mix Colour ', 'Pcs', 84900, 45000, 0, 94900, 0, 0, 0, 1, '0000-00-00', 0),
(150, 'FG-L-HSC93 JB', 'Hicoop Long Pant Ladies Back Pocket Mix Colour (JUMBO)', 'Pcs', 94900, 47917, 0, 109900, 0, 0, 0, 1, '0000-00-00', 0),
(151, 'FG-L-HX-ST110B', 'Hicoop Boxer Short Ladies Side Pocket Motif (S/M)', 'Pcs', 49900, 30834, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(152, 'FG-L-HX-ST110D', 'Hicoop Boxer Short Ladies Side Pocket Motif (L/XL)', 'Pcs', 49900, 30834, 0, 59900, 0, 0, 0, 1, '0000-00-00', 0),
(153, 'FG-L-HX-ST111B', 'Hicoop Boxer Medium Ladies Back Pocket Motif', 'Pcs', 69900, 42500, 0, 79900, 0, 0, 0, 1, '0000-00-00', 0),
(154, 'FG-L-HX-ST111D', 'Hicoop Boxer Medium Ladies Back Pocket Motif', 'Pcs', 69900, 42500, 0, 79900, 0, 0, 0, 1, '0000-00-00', 0),
(155, 'FG-L-HX-ST119 B', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket', 'Pcs', 84900, 45000, 0, 94900, 0, 0, 0, 1, '0000-00-00', 0),
(156, 'FG-L-HX-ST119 D', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket ', 'Pcs', 84900, 45000, 0, 94900, 0, 0, 0, 1, '0000-00-00', 0),
(157, 'FG-L-HX-ST119 E', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket ', 'Pcs', 94900, 47917, 0, 109900, 0, 0, 0, 1, '0000-00-00', 0),
(158, 'FG-L-HX-ST119 F', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket ', 'Pcs', 94900, 47917, 0, 109900, 0, 0, 0, 1, '0000-00-00', 0),
(159, 'FG-L-HX-ST119 G', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket ', 'Pcs', 94900, 47917, 0, 109900, 0, 0, 0, 1, '0000-00-00', 0),
(160, 'FG-SH-L-ST102', 'Hicoop Ankle Sock Ladies 1', 'Psg', 31900, 0, 0, 0, 0, 31900, 0, 1, '0000-00-00', 0),
(161, 'FG-SH-L-ST103', 'Hicoop Ankle Sock Ladies 2', 'Psg', 31900, 0, 0, 0, 0, 31900, 0, 1, '0000-00-00', 0),
(162, 'FG-SH-L-ST104', 'Hicoop Ankle Sock Ladies 3', 'Psg', 31900, 0, 0, 0, 0, 31900, 0, 1, '0000-00-00', 0),
(163, 'FG-SH-M-LG209', 'Hicoop Mens Long Shocks Casual 1', 'Psg', 36900, 0, 0, 0, 0, 36900, 0, 1, '0000-00-00', 0),
(164, 'FG-SH-M-LG210', 'Hicoop Mens Long Shocks Casual 2', 'Psg', 36900, 0, 0, 0, 0, 36900, 0, 1, '0000-00-00', 0),
(165, 'FG-SH-M-LG211', 'Hicoop Mens Long Shocks Casual 3', 'Psg', 36900, 0, 0, 0, 0, 36900, 0, 1, '0000-00-00', 0),
(166, 'FG-SH-S-ST202', 'Hicoop Mens Ankle Sock Sport1', 'Psg', 44900, 0, 0, 0, 0, 44900, 0, 1, '0000-00-00', 0),
(167, 'FG-SH-S-ST203', 'Hicoop Mens Ankle Sock Sport 2', 'Psg', 44900, 0, 0, 0, 0, 44900, 0, 1, '0000-00-00', 0),
(168, 'FG-SH-S-ST204', 'Hicoop Mens Ankle Sock Sport 3', 'Psg', 44900, 0, 0, 0, 0, 44900, 0, 1, '0000-00-00', 0),
(169, 'FG-SH-M-CS301', 'Hicoop Mens Casual Socks-Old Motif', 'Psg', 34900, 0, 0, 0, 0, 34900, 0, 1, '0000-00-00', 0),
(170, 'FG-HT02MX-AR B', 'Hicoop Max Tank Top Army 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900, 0, 1, '0000-00-00', 0),
(171, 'FG-HT02MX-AR C', 'Hicoop Max Tank Top Army 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900, 0, 1, '0000-00-00', 0),
(172, 'FG-HT02MX-AR D', 'Hicoop Max Tank Top Army 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900, 0, 1, '0000-00-00', 0),
(173, 'FG-HT02MX-MRN B', 'Hicoop Max Tank Top Maroon 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900, 0, 1, '0000-00-00', 0),
(174, 'FG-HT02MX-MRN C', 'Hicoop Max Tank Top Maroon 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900, 0, 1, '0000-00-00', 0),
(175, 'FG-HT02MX-MRN D', 'Hicoop Max Tank Top Maroon 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900, 0, 1, '0000-00-00', 0),
(176, 'FG-HT02MX-NV B', 'Hicoop Max Tank Top Navy 1-1', 'Pcs', 59900, 36666, 0, 69900, 0, 44900, 0, 1, '0000-00-00', 0),
(177, 'FG-HT02MX-NV C', 'Hicoop Max Tank Top Navy 1-1', 'Pcs', 59900, 36666, 0, 69900, 0, 44900, 0, 1, '0000-00-00', 0),
(178, 'FG-HT02MX-NV D', 'Hicoop Max Tank Top Navy 1-1', 'Pcs', 59900, 36666, 0, 69900, 0, 44900, 0, 1, '0000-00-00', 0),
(179, 'FG-HS02MX-AR B', 'Hicoop Max R-Neck Army 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900, 0, 1, '0000-00-00', 0),
(180, 'FG-HS02MX-AR C', 'Hicoop Max R-Neck Army 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900, 0, 1, '0000-00-00', 0),
(181, 'FG-HS02MX-AR D', 'Hicoop Max R-Neck Army 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900, 0, 1, '0000-00-00', 0),
(182, 'FG-HS02MX-MRN B', 'Hicoop Max R-Neck Maroon 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900, 0, 1, '0000-00-00', 0),
(183, 'FG-HS02MX-MRN C', 'Hicoop Max R-Neck Maroon 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900, 0, 1, '0000-00-00', 0),
(184, 'FG-HS02MX-MRN D', 'Hicoop Max R-Neck Maroon 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900, 0, 1, '0000-00-00', 0),
(185, 'FG-HS02MX-NV B', 'Hicoop Max R-Neck Navy 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900, 0, 1, '0000-00-00', 0),
(186, 'FG-HS02MX-NV C', 'Hicoop Max R-Neck Navy 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900, 0, 1, '0000-00-00', 0),
(187, 'FG-HS02MX-NV D', 'Hicoop Max R-Neck Navy 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900, 0, 1, '0000-00-00', 0),
(188, 'FG-HXKL-ST106 BNH B', 'Hicoop Boxer Karet Luar Style Full Colour Benhur 1-1 ', 'Box', 57900, 31667, 0, 67900, 0, 0, 0, 1, '0000-00-00', 0),
(189, 'FG-HXKL-ST106 BNH C', 'Hicoop Boxer Karet Luar Style Full Colour Benhur 1-2', 'Box', 57900, 31667, 0, 67900, 0, 0, 0, 1, '0000-00-00', 0),
(190, 'FG-HXKL-ST106 BNH D', 'Hicoop Boxer Karet Luar Style Full Colour Benhur 1-3', 'Box', 57900, 31667, 0, 67900, 0, 0, 0, 1, '0000-00-00', 0),
(191, 'FG-HL09-1 A', 'Hicoop Oblong ', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(192, 'FG-HL09-1 B', 'Hicoop Oblong ', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(193, 'FG-HL09-1 C', 'Hicoop Oblong ', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(194, 'FG-HL09-1 D', 'Hicoop Oblong ', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(195, 'FG-HL09-1 MA B', 'Hicoop Oblong Misty Abu ', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(196, 'FG-HL09-1 MA C', 'Hicoop Oblong Misty Abu ', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(197, 'FG-HL09-1 MA D', 'Hicoop Oblong Misty Abu ', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(198, 'FG-HL09-1 MC B', 'Hicoop Oblong Misty Coklat', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(199, 'FG-HL09-1 MC C', 'Hicoop Oblong Misty Coklat', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(200, 'FG-HL09-1 MC D', 'Hicoop Oblong Misty Coklat', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(201, 'FG-HL09-1 BL B', 'Hicoop Oblong Black', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(202, 'FG-HL09-1 BL C', 'Hicoop Oblong Black', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(203, 'FG-HL09-1 BL D', 'Hicoop Oblong Black', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(204, 'FG-HL09-1 W B', 'Hicoop Oblong White', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(205, 'FG-HL09-1 W C', 'Hicoop Oblong White', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(206, 'FG-HL09-1 W D', 'Hicoop Oblong White', 'Pcs', 0, 0, 0, 57900, 0, 0, 0, 1, '0000-00-00', 0),
(207, 'FG-MEB-032 B (89)', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 89900, 0, 1, '0000-00-00', 0),
(208, 'FG-MEB-032 C (89)', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 89900, 0, 1, '0000-00-00', 0),
(209, 'FG-MEB-032 D (89)', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 89900, 0, 1, '0000-00-00', 0),
(210, 'FG-MEB-032 E (89)', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 89900, 0, 1, '0000-00-00', 0),
(211, 'FG-MEBKL-303 B (159)', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 159900, 0, 1, '0000-00-00', 0),
(212, 'FG-MEBKL-303 C (159)', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 159900, 0, 1, '0000-00-00', 0),
(213, 'FG-MEBKL-303 D (159)', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 159900, 0, 1, '0000-00-00', 0),
(214, 'FG-MEBKL-303 E (159)', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 159900, 0, 1, '0000-00-00', 0),
(215, 'FG-MEB-051 B', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 84900, 0, 1, '0000-00-00', 0),
(216, 'FG-MEB-051 C', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 84900, 0, 1, '0000-00-00', 0),
(217, 'FG-MEB-051 D', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 84900, 0, 1, '0000-00-00', 0),
(218, 'FG-MEB-051 E', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 84900, 0, 1, '0000-00-00', 0),
(219, 'FG-MEB-742 B', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 43333, 0, 0, 0, 64900, 0, 1, '0000-00-00', 0),
(220, 'FG-MEB-742 C', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 43333, 0, 0, 0, 64900, 0, 1, '0000-00-00', 0),
(221, 'FG-MEB-742 D', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 43333, 0, 0, 0, 64900, 0, 1, '0000-00-00', 0),
(222, 'FG-MEB-742 E', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 43333, 0, 0, 0, 64900, 0, 1, '0000-00-00', 0),
(223, 'FG-MEB-742 B  (129)', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 0, 0, 0, 0, 129900, 0, 1, '0000-00-00', 0),
(224, 'FG-MEB-742 C  (129)', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 0, 0, 0, 0, 129900, 0, 1, '0000-00-00', 0),
(225, 'FG-MEB-742 D  (129)', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 0, 0, 0, 0, 129900, 0, 1, '0000-00-00', 0),
(226, 'FG-MEB-742 E  (129)', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 0, 0, 0, 0, 129900, 0, 1, '0000-00-00', 0),
(227, 'FG-MEB-032 B', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 44900, 0, 1, '0000-00-00', 0),
(228, 'FG-MEB-032 C', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 44900, 0, 1, '0000-00-00', 0),
(229, 'FG-MEB-032 D', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 44900, 0, 1, '0000-00-00', 0),
(230, 'FG-MEB-032 E', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 44900, 0, 1, '0000-00-00', 0),
(231, 'FG-MEBKL-303 B', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 79900, 0, 1, '0000-00-00', 0),
(232, 'FG-MEBKL-303 C', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 79900, 0, 1, '2023-07-26', 1),
(233, 'FG-MEBKL-303 D', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 79900, 0, 1, '0000-00-00', 0),
(234, 'FG-MEBKL-303 E', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 79900, 0, 1, '0000-00-00', 0),
(235, 'FG-MEB-051 B (169)', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 169900, 0, 1, '0000-00-00', 0),
(236, 'FG-MEB-051 C (169)', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 169900, 0, 1, '0000-00-00', 0),
(237, 'FG-MEB-051 D (169)', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 169900, 0, 1, '0000-00-00', 0),
(238, 'FG-MEB-051 E (169)', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 169900, 0, 1, '0000-00-00', 0),
(239, 'FG-MEBKL-302 B (149)', 'Muscle Element Waistband Brief Black 3-1 ', 'Box', 9000000, 9000000, 9000000, 9000000, 8000000, 6000000, 0, 1, '2023-08-04', 3),
(257, 'ARTIKEL 001', 'sfafs', 'Pck', 700000, 8000000, 600000, 900000, 30000, 90000, 0, 0, '2023-07-26', 4),
(258, 'tes barang', 'tes barang', 'Pcs', 80000, 8000000, 600000, 90000, 8000000, 9000000, 0, 1, '2023-07-28', 3),
(259, 'tes barang normal', 'tes barang normal', 'Box', 790000, 4500000, 450000, 450000, 4500000, 5000000, 0, 0, '2023-07-28', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL,
  `id_sales` int(11) NOT NULL,
  `no_pelanggan` varchar(50) NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `area` varchar(50) NOT NULL,
  `minimum_order` int(11) NOT NULL,
  `tipe_harga` varchar(50) NOT NULL,
  `margin` varchar(50) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1 COMMENT '0 = non aktif\r\n1 = aktif\r\n',
  `id_user` int(11) DEFAULT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`id`, `id_sales`, `no_pelanggan`, `nama_customer`, `alamat`, `area`, `minimum_order`, `tipe_harga`, `margin`, `status`, `id_user`, `updated_at`) VALUES
(1, 6, '', 'ADA BARU SALATIGA', 'JL.JENDRAL SUDIRMAN NO.20, Telp 0298-3230962', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 0, 4, '2023-07-26'),
(2, 6, 'P0003', 'ADIJAYA WELAHAN', 'JL BANDUNG REJO KALIM YAMATAN JEPARA', 'JAWA TENGAH', 500000, 'RETAIL', '25%+7%', 1, 176, '2023-08-11'),
(3, 0, '', 'ADIJAYA MAYONG', 'JL BANDUNG REJO KALIM YAMATAN JEPARA', 'JAWA TENGAH', 2000000, 'RETAIL', '25%+7%', 1, NULL, '0000-00-00'),
(4, 0, '', 'ADIJAYA PURWOGONDO', 'Jl. Kromodiwiryo Purwogondo 2,  Hp. 088215558864', 'JAWA TENGAH', 2000000, 'RETAIL', '25%+7%', 1, NULL, '0000-00-00'),
(5, 0, '', 'ADIJAYA TELUK', 'JL BANDUNG REJO KALIM YAMATAN JEPARA', 'JAWA TENGAH', 2000000, 'RETAIL', '25%+7%', 1, NULL, '0000-00-00'),
(6, 0, '', 'ANEKA JAYA BANDUNG REJO', 'JL RAYA BANDUNG REJO NO.119 MERANGGEN, TELP.024-6700863', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(7, 0, '', 'ANEKA JAYA BOJA', 'JL. PEMUDA 234 BOJA KENDAL JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(8, 0, '', 'ANEKA JAYA DEMAK', 'JL. SULTAN FATAH NO.7 BOGORAME MANGUNJIWAN DEMAK JATENG NO TELP.0291-685100', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(9, 0, '', 'ANEKA JAYA DEMAK 2', 'JL. SULTAN HADI WIJAYA NO 17,  TELP.085727656584', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(10, 0, '', 'ANEKA JAYA KALI PANCUR', 'JL.UNTUNG SUROPATI NO.168 RT/RW 04/04, TELP.02476432302', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(11, 0, '', 'ANEKA JAYA KENDAL', 'JL.SOEKARNO HATTA RT/RW 06/05 LANGENHARJO KENDAL, TELP.02943691958', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(12, 0, '', 'ANEKA JAYA MANGKANG', 'JL.URIP SUMOHARJO KM.15 RT/RW 01/01 SEMARANG, TELP.0248663335', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(13, 0, '', 'ANEKA JAYA MAYONG', 'JL. RAYA JEPARA KUDUS KM 11 TUNGGUL PANDEAN NALUMSARI, JEPARA JATENG ', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(14, 0, '', 'ANEKA JAYA MRANGGEN', 'JL. RATA MRANGGEN NO.22, NO TELP.024-6773292', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(15, 0, '', 'ANEKA JAYA NGALIAN', 'JL.PROF DR.HAMKA NO 38A RT/RW 03/11, TELP : 0247603995', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(16, 0, '', 'ANEKA JAYA PATIMURA', 'Jl Pati mura No.32/34 Rt.01/04 Rejomulyo, TELP 085742422847', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(17, 0, '', 'ANEKA JAYA PETERONGAN', 'JL.WONODRI JONO 1 NO.981 SEMARANG, TELP.0248314714', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(18, 0, '', 'ANEKA JAYA SALATIGA', 'JL IMAM BONJOL NO 37 RT/RW 04/08', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(19, 0, '', 'ANEKA JAYA SAMBIROTA', 'JL.SAMBIROTO RAYA NO.100 RT/RW 02/02 SEMARANG, TELP. 0246719678', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(20, 0, '', 'ANEKA JAYA WOLTER', ' Jl.Wolter Mongonsidi No.100 Tlogo Mulyo Semarang Jawa-Tengah', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(21, 0, '', 'ANEKA SWALAYAN BREBES', 'JL. A  YANI RT/RW 01/17 BREBES JATENG, TELP. 0283672152', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(22, 0, '', 'ANUGERAH  MITRA PERKASA (AMP)', 'PERUM LIMAS AGUNG BLOK F.18 NO.10 PURWOKERTO - JAWA TENGAH', 'JAWA TENGAH', 2000000, 'GROSIR', '7%', 1, NULL, '0000-00-00'),
(23, 0, '', 'BANDUNG FASHION KAJAR', 'JL.RAYA PATI TAYU KM.12 RUKO KAJAR PATI JATENG, TELP. 0295-4102618', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(24, 0, '', 'BANJARAN PERMAI SWALAYAN', 'JL.RAYA BANJARAN TEMBOK BANJARAN ADIWERNA, KAB TEGAL TELP.0283-366006', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(25, 0, '', 'BARU SWALAYAN BUMIAYU', 'Jl.Pangeran Diponegoro No. 128 85880498660', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(26, 0, '', 'BARU TOKO BUMIAYU', 'Jl.Raya Kalierang No. 410,  TLP  0289-430498', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(27, 0, '', 'BARU TOSERBA', 'Jl. Jend. Soedirman No. 11 Wonogiri,   0273-321063', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(28, 0, '', 'BASA TOSERBA - BANJARAN TEGAL', 'JL.RAYA TEMBOK BANJARAN NO.49, TELP.02833448454', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(29, 0, '', 'BASA TOSERBA - PEMALANG', 'JL.JENDRAL SUDIRMAN NO.30 PEMALANG JATENG, TELP.0284321310', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(30, 0, '', 'BATIK MAHKOTA (MAHKOTA JAYA DAMAI SEJAHTERA, CV)', ' JL. HOS NOTO SUWIRYO NO.164 KARANG BAWANG ', 'JAWA TENGAH', 2000000, 'GROSIR', '7%', 1, NULL, '0000-00-00'),
(31, 0, '', 'BILKA SUPERMARKET', 'JL. NGAGEL JAYA SELATAN NO.103, TELP. 0315028988', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(32, 0, '', 'BORMA - BUAH BATU', 'JL. BUAH BATU NO. 235-A, Bandung', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(33, 0, '', 'BORMA - CIJERAH', 'JL.CIJERAH  NO. 9, Bandung', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(34, 0, '', 'BORMA - CIJERAH', 'JL. CIJERAH NO. 90', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(35, 0, '', 'BORMA - CIKUTRA', 'JL.CIKUTRA BARAT NO.66, Bandung', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(36, 0, '', 'BORMA - GEMPOL', 'JL. GEMPOL SARI RAYA NO. 9, Bandung', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(37, 0, '', 'BORMA - KERKOF', 'JL.KERKOF NO.23, Bandung', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(38, 0, '', 'BORMA - PRAMA BABAKAN SARI', 'JL.SUKARNO HATTA NO 271 BANDUNG ', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(39, 0, '', 'BORMA - PRAMA BANJARAN', 'JL. RAYA BANJARAN KAMPUNG SEREH RT.04.RW.01 LEBAK WANGI SAMPING PABRIK SAIMODA 0822-1401-8551', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(40, 0, '', 'BORMA - PRAMA CIPARAY', 'Jl. Raya Laswi No 382 Ciparay, Kabupaten Bandung', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(41, 0, '', 'BORMA TOSERBA - BOJONGSOANG', 'JL.CIJAGRA NO.06 A BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(42, 0, '', 'BORMA TOSERBA - CIHANJUANG', 'JL.DAENG MARDIWINATA NO.87 BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(43, 0, '', 'BORMA TOSERBA - DAKOTA', 'JL.DAKOTA RAYA NO.109 BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(44, 0, '', 'BORMA TOSERBA - DANGDEUR', 'JL.RANCAEKEK MAJALAYA NO.85,KP.RANCAEKEK WETAN KEC.RANCAEKEK KAB.BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(45, 0, '', 'BORMA TOSERBA - KETAPANG', 'JL.KATAPANG KM.12 BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(46, 0, '', 'BORMA TOSERBA - KIARA CONDONG', 'JL.TRS KIARA CONDONG NO.418 A BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(47, 0, '', 'BORMA TOSERBA - LEMBANG', '  JL.RAYA LEMBANG NO.278 BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(48, 0, '', 'BORMA TOSERBA - MARGA CINTA', 'JL.MARGACINTA NO.220 BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(49, 0, '', 'BORMA TOSERBA - PADALARANG', 'JL.RAYA PADALARANG NO.504 BANDUNG BARAT', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(50, 0, '', 'BORMA TOSERBA - PASIR IMPUN', 'JL.AH NASUTION NO.137 BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(51, 0, '', 'BORMA TOSERBA - PERMATA CIMAHI', 'KOMP. PERMATA CIMAHI 11 ,CIMAHI TELP.022-6027638', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(52, 0, '', 'BORMA TOSERBA - RANCAEKEK', 'JL.RAYA RANCAEKEK KM.25 NO.4 BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(53, 0, '', 'BORMA TOSERBA - RENCONG', 'JL.RAYA DAYEUH KOLOT BANJARAN NO.275 BALEENDAH BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(54, 0, '', 'BORMA TOSERBA - RIUNG BANDUNG', 'JL.CIPAMOKOLAN NO.50 BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(55, 0, '', 'BORMA TOSERBA - SETIA BUDI', '  JL.DR SETIABUDI NO.148 BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(56, 0, '', 'BORMA TOSERBA - TKI', 'KOMP.TAMAN KOPO INDAH BANDUNG', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(57, 0, '', 'BORNEO SUPERMARKET-RAFI\'I', 'JL. HM RAFI\'I KEL MADUREJO KEC ARUT SELATAN KAB WARINGIN BARAT PANGKALAN BUN KALTENG TELP.0532 2030782', 'KALIMANTAN 2', 14000000, 'HET JAWA', '25%', 1, NULL, '0000-00-00'),
(58, 0, '', 'BRAVO GROUP - BOJONEGORO', 'JL.PEMUDA NO.37-39 (0353)883193 / 885573', 'JAWA TIMUR', 2500000, 'RETAIL', '20%', 1, NULL, '0000-00-00'),
(59, 0, '', 'BRAVO GROUP - CEPU', 'JL.RAYA RANDUBLATUNG NO.08 BALUN CEPU BLORA JAWA TENGAH ', 'JAWA TENGAH', 2000000, 'RETAIL', '20%', 1, NULL, '0000-00-00'),
(60, 0, '', 'BRAVO GROUP - TUBAN', 'JL.BASUKI RACHMAD NO.64 RT.003 RW.002 KUTOREJO', 'JAWA TIMUR', 2500000, 'RETAIL', '20%', 1, NULL, '0000-00-00'),
(61, 0, '', 'BRITANIATOSERBA', 'JL.RAYA PUNCAK NO.593 CISARUA, BOGOR', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(62, 0, '', 'BUMI NYIUR SWALAYAN', 'ALAMAT KIRIM : LINGLING BNS  RUKO KENJERAN PALACE C17 JL KENJERAN 278 TAMBAK SARI SURABAYA TELP.085341877694', 'JAWA TIMUR', 2500000, 'HET JAWA', '25%', 1, NULL, '0000-00-00'),
(63, 0, '', 'CAKRA SWALAYAN', 'JL RUNGKUT TENGAH 3 NO 42 SURABAYA', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(64, 0, '', 'CV ANEKA JAYA BATANG', 'JL. DOKTOR WAHIDIN SUDIROHUSODO NO 42 KAUMAN BATANG, TLP 085640230017', 'JAWA TENGAH', 2000001, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(65, 0, '', 'CV CAKRA GEMILANG ABADI (MITRA GROUP)', 'JL.KEBALEN TENGAH 4A (BELAKANG BALAI KOTA SOLO) SOLO-JAWA TENGAH  0271-646691', 'JAWA TENGAH', 2000000, 'GROSIR', '7%', 1, NULL, '0000-00-00'),
(66, 0, '', 'CV MULIA JAYA (LUWES RAHAYU)', 'JL. RAYA 133 MRANGGEN, TELP. 0246725523', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(67, 0, '', 'CV PANGESTU JAYA (LUWES RAHAYU GUBUG)', 'JL.MT HARYONO NO.51-53 RT/RW 01/10 GUBUG GROBOGAN JATENG  ', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(68, 0, '', 'CV PLATINUM ABADI - LUWES CEPER', 'JL. MORISAN RT 002/008, CETAN, CEPER, KAB. KLATEN, JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(69, 0, '', 'CV PLATINUM ABADI - LUWES LOJIWETAN', 'JL. KAPTEN MULYADI NO 105, RT 003 RW007, KEDUNG LUMBU, PASAR KLIWON, KOTA SURAKARTA JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(70, 0, '', 'CV PLATINUM ABADI - LUWES PALUR', 'JL. RAYA SOLO KARANGANYAR KM 6.7, DAGEN, JATEN, KAB KARANGANYAR, JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(71, 0, '', 'CV PLATINUM ABADI - LUWES PONOROGO', 'JL.K.H ACHMAD DAHLAN NO 100 PONOROGO ', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(72, 0, '', 'CV PLATINUM ABADI - LUWES SRAGEN', 'JL. RAYA SUKOWATI NO 386 RT 012 RW004, SRAGEN WETAN, KAB. SRAGEN, JAWA TENGAH   TLP. 0271891020', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(73, 0, '', 'CV PLATINUM ABADI - LUWES WONOGIRI', 'JL. RAYA WONOGIRI NO 203 RT 003 RW 001, GIRITIRTO, KB. WONOGIRI, JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(74, 0, '', 'CV PLATINUM ABADI - SAMI LUWES', 'JL. HONGGOWONGSO NO 2 SRIWEDARI, LAWEYAN, SURAKARTA, JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(75, 0, '', 'CV ROBERTO', 'JL HASANUDIN 43 SUMBAWA BESAR NO TELP : 0371-21355', 'NTB', 6000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(76, 0, '', 'CV SINAR LANGGENG - SUMBER LESTARI', 'JL. RAYA BARAT NO 63 JATIBARANG, BREBES TLP. 08156688681', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(77, 0, '', 'CV SUBUR TOSERBA', 'JL . NGURAH RAI NO.40  JEMBRANA NEGARA BALI ', 'BALI', 3500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(78, 0, '', 'CV SUMBER BARU TOSERBA', 'JL. RAYA DEPAN POLSEK PASIRIAN RT 000/RW 000 PASIRIAN, KAB LUMAJANG JAWA TIMUR, TLP 085158596377', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(79, 0, '', 'CV SURYA ASIA PASIFIK (SANDANG AYU PASURUAN)', 'JL.ALUN ALUN UTARA BANGILAN PANGGUNG REJO, PASURUAN ', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(80, 0, '', 'CV.SURYA MAKMUR SENTOSA- SOREANG ', 'JL.RAYA SOREANG BANJARAN NO.428', 'JAWA BARAT', 1500000, 'HET JAWA', '35%', 1, NULL, '0000-00-00'),
(81, 0, '', 'DE PLUS (IDOLA FASHION) - KLATEN', 'JL.KEBON KACANG 9 NO 69 JAKPUS', 'JAKARTA', 0, 'RETAIL', '35%', 1, NULL, '0000-00-00'),
(82, 0, '', 'DE PLUS (IDOLA FASHION) - SRAGEN', 'JL.KEBON KACANG 9 NO 69 JAKPUS', 'JAKARTA', 0, 'RETAIL', '35%', 1, NULL, '0000-00-00'),
(83, 0, '', 'ENGKIM', 'Toko Meiry Jl. Cempaka No 3 E Pekanbaru', 'SUMATRA', 6000000, 'GROSIR', '7%', 1, NULL, '0000-00-00'),
(84, 0, '', 'ENGKIM NON BS', 'Toko Meiry Jl. Cempaka No 3 E Pekanbaru', 'SUMATRA', 6000000, 'GROSIR', '7%', 1, NULL, '0000-00-00'),
(85, 0, '', 'FAMILI SWALAYAN', 'RUKO PRAYUDAN PERMAI A. 7, MAGELANG TLP 0293 - 326280', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(86, 0, '', 'FRESH', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI ', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(87, 0, '', 'FRESH TOKO 1', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(88, 0, '', 'FRESH TOKO 10', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(89, 0, '', 'FRESH TOKO 11', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(90, 0, '', 'FRESH TOKO 12', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(91, 0, '', 'FRESH TOKO 13', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(92, 0, '', 'FRESH TOKO 14', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(93, 0, '', 'FRESH TOKO 15', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(94, 0, '', 'FRESH TOKO 2', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(95, 0, '', 'FRESH TOKO 3', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(96, 0, '', 'FRESH TOKO 4', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(97, 0, '', 'FRESH TOKO 5', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(98, 0, '', 'FRESH TOKO 6', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(99, 0, '', 'FRESH TOKO 7', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(100, 0, '', 'FRESH TOKO 8', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(101, 0, '', 'FRESH TOKO 9', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(102, 0, '', 'GARDENA MAGELANG', '', 'JAWA TENGAH', 2000000, 'RETAIL', '28%', 1, NULL, '0000-00-00'),
(103, 0, '', 'GARDENA YOGYA', 'JL.URIP SUMOHARJO 41 YOGYAKARTA ', 'JAWA TENGAH', 2000000, 'RETAIL', '28%', 1, NULL, '0000-00-00'),
(104, 0, '', 'GAYA - KEDUNG MUNDU', 'JL. KASIPAH NO 19 SEMARANG', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(105, 0, '', 'GAYA - TLOGOSARI', 'JL. KEDUNG MUNDU RAYA NO.3B, KEDUNG MUNDU TEMBALANG (SWALAYAN GAYA KEDUNG MUNDU)', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(106, 0, '', 'GOLDEN MARKET JEMBER', 'JL. TRUNOJOYO NO. 42', 'JAWA TIMUR', 2500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(107, 0, '', 'GOLDEN SWALAYAN KEDIRI', 'JL.HAYAM WURUK 121-12 KEDIRI 64122', 'JAWA TIMUR', 2500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(108, 0, '', 'GOORI MRANGGEN', 'JL. RAYA BANDUNG REJO NO.90 RT/RW 004/001 DEMAK', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(109, 0, '', 'GOORI SWALAYAN', 'JL. PROF HAMKA NO.99 NGALIAN SEMARANG', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(110, 0, '', 'GOORI SWALAYAN GUNUNG PATI', 'JL. PROF HAMKA NO.99 NGALIAN SEMARANG', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(111, 0, '', 'GRAHA MULIA', 'JL DR SUTOMO 42 TISNONEGARAN MAYANGAN PROBOLINGGO TELP.0335 421688', 'JAWA TIMUR', 2500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(112, 0, '', 'GRAHA MULIA LUMAJANG', 'JL.JEND SUDIRMAN 46 TOMPOKERSAN LUMAJANG , TELP. 0334891522', 'JAWA TIMUR', 2500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(113, 0, '', 'GRAHA MULIA PLAZA', 'Jl. Letkol Slamet Wardoyo No. 59B Labruk Lor Kab. Lumajang (Depan Pom Bensin Labruk) TELP. 03348783000', 'JAWA TIMUR', 2500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(114, 0, '', 'GREEN SMART SIDOARJO', 'KIRIM KE JL. RAYA SEPANDE NO.19 PERUM SAFIRA GARDEN SIDOARJO ', 'JAWA TIMUR', 2500000, 'GROSIR+10', '', 1, NULL, '0000-00-00'),
(115, 0, '', 'HADI SUPERMARKET', 'JL.DANAU SUNTER BLOK E-2 KOMPLEKS RUKAN PERMAI JAKUT, TELP.021-6520081', 'JAKARTA', 0, 'HET JAWA', '30%+10%', 1, NULL, '0000-00-00'),
(116, 0, '', 'HADI SUPERMARKET (BIAK)', 'JL. IMAM BONJOL NO II BIAK KAB BIAK NUMFOR PAPUA TLP 081289388047', '', 0, 'HET JAWA', '30+10%', 1, NULL, '0000-00-00'),
(117, 0, '', 'JEMBER ROXY SQUARE', 'JL. HAYAM WURUK JEMBER', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(118, 0, '', 'KARTINI FASHION', 'JL.IRIAN JAYA NO.26 SITUBONDO', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(119, 0, '', 'KAWAN MULIA', 'PINTU BESAR SELATAN NO 82 TLP 0216923817', '', 0, 'GROSIR', '5%', 1, NULL, '0000-00-00'),
(120, 0, '', 'KDS BOJONEGORO', 'JL.SUKEREJO RT/RW 000/000 BOJONEGORO', 'JAWA TIMUR', 2500000, 'RETAIL', '25%+1%', 1, NULL, '0000-00-00'),
(121, 0, '', 'KUSUKA SWALAYAN', 'JL. SIDOTOPO WETAN NO.34A SURABAYA TELP. 031 3715639', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(122, 0, '', 'LARIS - AMBARAWA', 'JL. JEND. SUDIRMAN 888 AMBARAWA 0298 595 609', 'JAWA TENGAH', 2000000, 'GROSIR+10', '', 1, NULL, '0000-00-00'),
(123, 0, '', 'LARIS - KARTASURA', 'JL. A. YANI 14 KARTASURA 0271 781 629', 'JAWA TENGAH', 2000000, 'GROSIR+10', '', 1, NULL, '0000-00-00'),
(124, 0, '', 'LARIS - KLATEN', 'JL.PEMUDA NO.164 KAB.KLATEN TENGAH JAWA TENGAH (0272)321822', 'JAWA TENGAH', 2000000, 'GROSIR+10', '', 1, NULL, '0000-00-00'),
(125, 0, '', 'LARIS - SOKOHARJO', 'JL.SLAMET RIYADI NO.82.84.86 BONDALEM RT.03 RW.10 GAYAM SUKOHARJO 0271 - 5991398', 'JAWA TENGAH', 2000000, 'GROSIR+10', '', 1, NULL, '0000-00-00'),
(126, 0, '', 'LARISSO', 'JL.WATU ULO NO 21 AMBULU JEMBER ', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(127, 0, '', 'LARISSO 2', 'JL.RAYA KRATON 4 KENCONG JEMBER ', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(128, 0, '', 'LUWES - BENGAWAN MULTI NUSUKAN', 'JL KAPTEN TENDEAN NO 207 RT 003 RW 002 NUSUKAN BANJARSARI,SURAKARTA JAWA ', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(129, 0, '', 'LUWES - BLORA', '  JL. PEMUDA NO. 75 BLORA', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(130, 0, '', 'LUWES - DELANGGU', 'JL RAYA DELANGGU UTARA NO 15, DELANGGU KLATEN JAWA  ', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(131, 0, '', 'LUWES - GADING', 'JL VETERAN NO 50 RT 01 /RW 01, GAJAHAN PASAR KLIWON , SURAKARTA JAWA TENGAH (57115)', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(132, 0, '', 'LUWES - GENTAN', '  JL SONGGOLANGIT, PONDOK   BARU, GENTAN SUKOHARJO,   JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(133, 0, '', 'LUWES - KARTASURO (BENGAWAN RETAIL)', 'JL ADI SUMARMO NO 95 RT01/RW 03 DS NGABEYAN KEC.KARTASURA ', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(134, 0, '', 'LUWES - KESTALAN', 'JL LETNAN JENDRAL S.PARMAN NO 117 RT 02 RW 02 KESTALAN BANJARSARI-SURAKARTA JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(135, 0, '', 'LUWES - PATI ', 'JL DR SUTOMO NO 26 DK.KRANGGAN RT 002/RW 003 PATI KIDUL JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(136, 0, '', 'LUWES - PURWODADI', 'JL R.SUPRAPTO NO.93B PURWODADI-GROBONGAN JAWA TENGAH', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(137, 0, '', 'LUWES - UNGARAN', 'JL BRIGJEND SUDIARTO RT.008 RW.02 UNGARAN KAB.SEMARANG JAWA TENGAH (50511)', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(138, 0, '', 'LUWES BOYOLALI', 'Jl. Pandanaran No.52 RT 001 RW 011 Boyolali', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(139, 0, '', 'MANDALA MART', 'SULTAN HASANUDIN 01 TALANG BAKUNG JAMBI 0741-3065657 / 0741-3065285', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(140, 0, '', 'MANDALA SUPERMARKET', 'JL.MR ASSAAT NO.10 JAMBI 0741-33534-35 / 0741-26054', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(141, 0, '', 'MARELAN RITELINDO, CV - IRIAN  BAHAGIA', 'JL.HM JONI NO.1 TELADAN TIMUR', 'SUMATRA', 6000000, 'HET JAWA', '36%', 1, NULL, '0000-00-00'),
(142, 0, '', 'MARELAN RITELINDO, CV - IRIAN AKSARA', 'JL.AKSARA NO.120 MEDAN ESTATE PERCUT SEI TUAN', 'SUMATRA', 6000000, 'HET JAWA', '36%', 1, NULL, '0000-00-00'),
(143, 0, '', 'MARELAN RITELINDO, CV - IRIAN KISARAN', 'JL.IMAM BONJOL NO.149 RT.RW. KEL.KISARAN TIMUR KEC.KOTA KISARAN TIMUR , ASAHAN SUMATERA UTARA', 'SUMATRA', 6000000, 'HET JAWA', '36%', 1, NULL, '0000-00-00'),
(144, 0, '', 'MARELAN RITELINDO, CV - IRIAN KONYA', 'JL.KARYA NO.116 SEI AGUL MEDAN BARAT', 'SUMATRA', 6000000, 'HET JAWA', '36%', 1, NULL, '0000-00-00'),
(145, 0, '', 'MARELAN RITELINDO, CV - IRIAN MARELAN', 'JL.MARELAN RAYA NO.188 RENGAS PULAU-MEDAN MARELAN', 'SUMATRA', 6000000, 'HET JAWA', '36%', 1, NULL, '0000-00-00'),
(146, 0, '', 'MARELAN RITELINDO, CV - IRIAN TAMORA', 'JL.IRIAN 83-D, TANJUNG MORAWA A TANJUNG MORAWA, DELI SERDANG SUMATERA UTARA', 'SUMATRA', 6000000, 'HET JAWA', '36%', 1, NULL, '0000-00-00'),
(147, 0, '', 'MARELAN RITELINDO, CV - IRIAN TEBING TINGGI', '  JL.THAMRIN 48 PASAR GAMBIR,   TEBING TINGGI', 'SUMATRA', 6000000, 'HET JAWA', '36%', 1, NULL, '0000-00-00'),
(148, 0, '', 'MARELAN RITELINDO, CV - IRIAN TEMBUNG', 'JL.MEDAN BATANG KUIS DSN XI NO 8 RT.0 RW.0 BANDAR KLIPPA-PERCUT SEI TUAN DELI SERDANG', 'SUMATRA', 6000000, 'HET JAWA', '36%', 1, NULL, '0000-00-00'),
(149, 8, '', 'MATAHARI TOSERBA', 'JL.RAYA SUKOWATI 273 SRAGEN', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, 3, '2023-08-10'),
(150, 0, '', 'MERANTI SWALAYAN', 'TALANG BANJAR (JL GR DJAMIN DATUK BAGINDO NO.52 , RT.013/04 JAMBI TIMUR , 0813 732 32 752 ', 'SUMATRA', 6000000, 'HET JAWA', '30%', 1, NULL, '0000-00-00'),
(151, 0, '', 'MICKEY MOUSE', 'JL.JATEN GEDHE TIMUR 2 NO.9 ', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(152, 0, '', 'MICKEY MOUSE WONOSOBO SHOP', 'JL.JATEN GEDHE TIMUR 2 NO.9 ', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(153, 0, '', 'MIROTA GEJAYA', 'JL. GEJAYAN CT9 YOGYAKARTA TELP. 0274558316', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(154, 0, '', 'MIROTA KAMPUS GODEAN', 'JL GODEAN KM 2.8 KM YOGYAKARTA ', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(155, 0, '', 'MIROTA KAMPUS SIMAJUNTAK', 'JL.C SIMANJUTAK NO.70  YOGYAKARTA TELP.0274-561254', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(156, 0, '', 'MIROTA PASARAYA', 'JL. KALIURANG KM6.1 YOGYAKARTA 55281, 0274 - 884571', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(157, 0, '', 'MITRA ARMADA SEJAHTERA, PT', 'JL. MAYJEND BAMBANG SOEGENG, MERTOYUDAN - MAGELANG, 0293 368282 / 368022', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(158, 0, '', 'MORO GROSIR & RITEL', 'JL. PERINTIS KEMERDEKAAN NO. 7 PURWOKERTO (0281) 625100', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, 4, '2023-07-26'),
(159, 0, '', 'MUTIARA CAHAYA - MALL', 'JL.LETJEN SUPRAPTO NO.71 SLAWI TEGAL', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(160, 0, '', 'MUTIARA CAHAYA - MEJASEM', 'JL.PALA RAYA NO.18 MEJASEM TEGAL, NO TELP.0283-6145448', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(161, 0, '', 'PANGESTU FASHION', 'JL.PANGLIMA SUDIRMAN NO.31 JUWANA PATI JATENG ', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(162, 0, '', 'PARKIR FASHION - PARKIR 1', 'KOMP PERTOKOAN GRIYA RIATUR MEDAN', 'SUMATRA', 6000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(163, 0, '', 'PARKIR FASHION - PARKIR 2', 'KOMP J CITYBLOCK 29', 'SUMATRA', 6000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(164, 0, '', 'PARKIR FASHION - PARKIR 3', 'KOMP MERCI MEDAN RESORT CITY', 'SUMATRA', 6000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(165, 0, '', 'PASARAYA JANUPURA', 'JL.RAYA CEBONGAN LOR TLOGOADI MLATI SLEMAN YOGYAKARTA', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(166, 0, '', 'PERSADA SWALAYAN', 'JL. MT HARYONO 11, DINOYO MALANG - JAWA TIMUR \'081384025975', 'JAWA TIMUR', 2500000, 'RETAIL', '20%', 1, NULL, '0000-00-00'),
(167, 0, '', 'PROGO', 'JL. SURYOTOMO NO. 29 YOGYAKARTA', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(168, 0, '', 'PT ASIA TRITUNGGAL JAYA -  ASIA CIHIDEUNG', 'Jl. Cihideung No 18 Rt 001. Rw 004 Yudanagara, Cihideung, Kota Tasikmalaya, Jawa Barat ', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(169, 0, '', 'PT ASIA TRITUNGGAL JAYA  - ASIA CIREBON', 'Jl. Karanggetas No 25-27 Rt 001 Rw 003 Kel Panjunan Kec Lemahwungkuk Kota Cirebon\n', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(170, 0, '', 'PT ASIA TRITUNGGAL JAYA  - ASIA GARUT', 'Jl. Jendral Ahmad Yani No 162 Kel. Ciwalen, Kec Garut Kota, Kab Garut', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(171, 0, '', 'PT ASIA TRITUNGGAL JAYA - ASIA SUMEDANG', 'Jl. Abdurahman Blok l 10 Kota Kaler Sumedang Utara, Sumedang Jawa barat', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(172, 0, '', 'PT ASIA TRITUNGGAL JAYA - JERRY TASIKMALAYA', 'JL. HZ MUSTOFA NO.326 TASIKMALAYA', 'JAWA BARAT', 1500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(173, 0, '', 'PUNCAK JAYA LESTARI - BLINYU', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', 'JAKARTA', 0, 'RETAIL', '25%+5%', 1, NULL, '0000-00-00'),
(174, 0, '', 'PUNCAK JAYA LESTARI - KEPAHIANG', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', 'JAKARTA', 0, 'RETAIL', '25%+5%', 1, NULL, '0000-00-00'),
(175, 0, '', 'PUNCAK JAYA LESTARI - MANGGAR', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', 'JAKARTA', 0, 'RETAIL', '25%+5%', 1, NULL, '0000-00-00'),
(176, 0, '', 'PUNCAK JAYA LESTARI - PANGKAL PINANG', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', 'JAKARTA', 0, 'RETAIL', '25%+5%', 1, NULL, '0000-00-00'),
(177, 0, '', 'PUNCAK JAYA LESTARI - PUNCAK BENGKULU', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS', 'JAKARTA', 0, 'RETAIL', '25%+5%', 1, NULL, '0000-00-00'),
(178, 0, '', 'PUNCAK JAYA LESTARI - SEMABUNG', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', 'JAKARTA', 0, 'RETAIL', '25%+5%', 1, NULL, '0000-00-00'),
(179, 0, '', 'PUNCAK JAYA LESTARI - SUNGAI LIAT', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', 'JAKARTA', 0, 'RETAIL', '25%+5%', 1, NULL, '0000-00-00'),
(180, 0, '', 'PUNCAK JAYA LESTARI - TANJUNG PANDAN', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', 'JAKARTA', 0, 'RETAIL', '25%+5%', 1, NULL, '0000-00-00'),
(181, 0, '', 'RAMA 88', 'JL.RAYA KELET JEPARA KM 36 SEBELAH TIMUR PASAR KELET, TELP. 0291 578070', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(182, 0, '', 'RAMA SWALAYAN KELET', 'Jl. Raya Jepara Kelet Depan RSUD Kelet', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(183, 0, '', 'RAMA SWALAYAN MLONGGO', 'JL.RAYA JEPARA BANGSRI SEBELAH TIMUR BALAI DESA SEKURO RT/RW 04/01  TELP. 085217322891', 'JAWA TENGAH', 2000002, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(184, 0, '', 'RAMAI', 'JL. JEND. A YANI 73, YOGYAKARTA - 55122', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(185, 0, '', 'RAMAI SUKSES MAKMUR', 'JL.ABDULRAHMAN SALEH 247 KEMBANGARUM SEMARANG 50148 SEMARANG TELP(0248)7624436/7624437', 'JAWA TENGAH', 2000000, 'GROSIR+10', '', 1, NULL, '0000-00-00'),
(186, 0, '', 'RAMAI SUKSES MAKMUR', 'JL.ABDULRAHMAN SALEH 247 KEMBANGARUM SEMARANG 50148 SEMARANG TELP(0248)7624436/7624437', 'JAWA TENGAH', 2000000, 'GROSIR+10', '', 1, NULL, '0000-00-00'),
(187, 0, '', 'RAMAI UNGARAN 1', 'JL. GATOT SUBROTO 142 UNGARAN (024) 6921781', 'JAWA TENGAH', 2000000, 'GROSIR', '', 1, NULL, '0000-00-00'),
(188, 0, '', 'RAMAI UNGARAN 2', 'JL. GATOT SUBROTO 142 UNGARAN (024) 6921782', 'JAWA TENGAH', 2000000, 'GROSIR', '25%+4%', 1, 3, '2023-08-10'),
(189, 0, '', 'RENY SWALAYANKU', 'JL. BRATANG GEDE NO 132-134 SURABAYA ', 'JAWA TIMUR', 2500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(190, 0, '', 'RITA RITELINDO - BARAT', 'JL.SLAMET SUPRIYADI NO.288', 'JAWA TENGAH', 2000000, 'RETAIL', '27%', 1, NULL, '0000-00-00'),
(191, 0, '', 'RITA RITELINDO - CILACAP', 'JL.SLAMET SUPRIYADI NO.288, PURWOKERTO - 53116', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(192, 0, '', 'RITA RITELINDO - ISOLA', 'JL.SLAMET SUPRIYADI NO.288', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(193, 0, '', 'RITA RITELINDO - KATO', 'JL.SLAMET SUPRIYADI NO.288', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(194, 0, '', 'RITA RITELINDO - KEBONDALEM', 'JL.SLAMET SUPRIYADI NO.288', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(195, 0, '', 'RITA RITELINDO - KEBUMEN', '  JL. SLAMET RIYADI NO. 70', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(196, 0, '', 'RITA RITELINDO - MALL PURWOKERTO (RL)', 'JL.SLAMET SUPRIYADI NO.288', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(197, 0, '', 'RITA RITELINDO - PASARAYA', 'JL. SLAMET RIYADI NO. 70', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(198, 0, '', 'RITA RITELINDO - SOKARAJA', ' JL. SLAMET RIYADI NO. 70', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(199, 0, '', 'RITA RITELINDO - SUPERMARKET MALL PURWOKERTO', '  JL.SLAMET SUPRIYADI NO.288 (GUDANG 1)', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(200, 0, '', 'RITA RITELINDO - SUPERMARKET MALL TEGAL', 'Jl KOLONEL  SUGIONO NO 155 TEGAL. JAWA TENGAH ', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(201, 0, '', 'RITA RITELINDO - TEGAL', 'JL.SLAMET SUPRIYADI NO.288', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(202, 0, '', 'RITA RITELINDO - WONOSOBO', '  JL.SLAMET SUPRIYADI NO.288', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(203, 0, '', 'ROMA SALATIGA', 'JL. JENDRAL SUDIRMAN KALICACING', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(204, 0, '', 'ROXY FASHION', '  JL. A.YANI NO 21-23 BANYUWANGI   JAWA TIMUR, TLP. 0333428684/081332515151', 'JAWA TIMUR', 2500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(205, 0, '', 'ROXY SITUBONDO', '  JL. BASUKI RAHMAT NO. 11   JATIM TLP. 0338671721', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(206, 0, '', 'RUBY 1', 'JL.RAYA PEJANGGIK NO.III F CAKRANEGARA BARAT CAKRANEGARA KODYA MATARAM - 83231 0370-624421', 'NTB', 6000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(207, 0, '', 'RUBY 2', 'JL.RAYA PEJANGGIK NO.III F CAKRANEGARA BARAT CAKRANEGARA KODYA MATARAM - 83231 0370-624421', 'NTB', 6000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(208, 0, '', 'SAKINAH', 'JL ARIF RAHMAN HAKIM NO 32 SURABAYA ', 'JAWA TIMUR', 2500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(209, 0, '', 'SAMA-SAMA', 'JL SOEKARNO HATTA NO 310 KENDAL TELP.0294381518', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(210, 0, '', 'SAMI LARIS (CV. ANGGRAINI SEJATI  CEMERLANG)', 'Jl. Jend. Suprapto No 69  Rt 07/Rw 07, Cilacap, Jawa Tengah', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(211, 0, '', 'SAMUDRA DEPT STORE - BANJAR', 'HZ. MUSTOPA NO.59 TASIKMALAYA TLP :0265-330081', 'JAWA BARAT', 1500000, 'RETAIL', '35%', 1, NULL, '0000-00-00'),
(212, 0, '', 'SAMUDRA DEPT STORE - BANJARSARI', 'JL. HZ MUSTOFA NO.59 - 123 TASIKMALAYA, 0265-330081', 'JAWA BARAT', 1500000, 'RETAIL', '35%', 1, NULL, '0000-00-00'),
(213, 0, '', 'SAMUDRA DEPT STORE - TASIKMALAYA', ' JL. HZ MUSTOFA NO.59 - 123 TASIKMALAYA,  0265-330081', 'JAWA BARAT', 1500000, 'RETAIL', '35%', 1, NULL, '0000-00-00'),
(214, 0, '', 'SAMUDRA SWALAYAN TUBAN', 'JL.DIPONEGORO NO 33 TUBAN', 'JAWA TIMUR', 2500000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(215, 0, '', 'SANRIO', 'JL.BHAYANGKARA 22  MOJOKERTO TELP. 0321 322631', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(216, 0, '', 'SAUDARA PUTRA PRIMA', 'JL. SOEKARNOHATTA KM.6 JEPARA', 'JAWA TENGAH', 2000000, 'RETAIL', '30%', 1, NULL, '0000-00-00'),
(217, 0, '', 'SENDY\'S PUTRA JAYA', 'JL.CILIK RIWUT KM.1, PALANGKARAYA, KALIMANTAN TENGAH TELP. 085751577471', 'KALIMANTAN 2', 14000000, 'HET JAWA', '25%', 1, NULL, '0000-00-00'),
(218, 0, '', 'SINAR ASIA PASIFIK (SANDANG AYU PANDAAN)', 'JL. KARTINI LINGKUNGAN JOGONALAN RT /RW 002/004, JOGOSARI PANDAAN PASURUAN JATIM (BEKAS BIOSKOP SRIKANDI), TELP. 0343636363', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(219, 0, '', 'SUJARWO AYU ', 'KIRIM KE ALAMAT : DESA SISUMUT, BLOK 9 JALAN JAWA KECAMATAN KOTA PINANG, KABUPATEN LABUHAN BATU SELATAN PROVINSI SUMATERA UTARA TELP. 081260444300', 'SUMATRA', 6000000, 'GROSIR', '', 1, NULL, '0000-00-00'),
(220, 0, '', 'SUN EAST MALL', 'JL.DIPONEGORO NO.11 GENTENG ', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(221, 0, '', 'SURYA LAKSANA PURWODADI', 'JL.R SUPRAPTO  NO 108 PURWODADI JATENG TELP.0292424333', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(222, 0, '', 'SURYA LAKSANA PURWODADI', 'Jl. Suprapto 108 Purwodadi 0292-424333 / 081910769779', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(223, 0, '', 'SURYA TOSERBA - CILEDUK', 'JL.MERDEKA BARAT NO. 42, CILEDUG - CIREBON', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(224, 0, '', 'SURYA TOSERBA - CIREBON', 'JL. KARANGGETAS NO. 23, CIREBON', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(225, 0, '', 'SURYA TOSERBA - INDRAMAYU', 'JL. JENDRAL SUDIRMAN NO. 46, INDRAMAYU', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(226, 0, '', 'SURYA TOSERBA - JALAKSANA', 'JL.RAYA JALAKSANA NO.190, KUNINGAN', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(227, 0, '', 'SURYA TOSERBA - JATIBARANG', '   JL.MAYOR DASUKI SEBELAH TERMINAL LAMA,    JATIBARANG', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(228, 0, '', 'SURYA TOSERBA - JATIWANGI', 'JL. LANUD S SUKATANI NO. 247 JATIWANGI, KAB. MAJALENGKA', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(229, 0, '', 'SURYA TOSERBA - KADIPATEN', 'JL.SILIWANGI (EX PABRIK GULA) KADIPATEN, MAJALENGKA', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(230, 0, '', 'SURYA TOSERBA - KUNINGAN', '   JL. SILIWANGI 99A,  KUNINGAN TLP   \'0232 871619', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(231, 0, '', 'SURYA TOSERBA - LURAGUNG', 'JL. KI GEDENG LURAGUNG BLOK TONJONG/BLOK MANIS RT/RW 02/01 DESA , LURAGUNG LANDEUH ', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, NULL, '0000-00-00'),
(232, 4, '', 'SURYA TOSERBA - PAMANUKAN', 'JL.CECE JAKARIA /JL.PASAR IMPRES DESA PANCASARI PENGADANGAN, KEC.PAMANUKAN KAB-SUBANG', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, 4, '0000-00-00'),
(233, 9, '', 'SURYA TOSERBA - RAJAWALI', 'JL. KARANGGETAS NO. 23, CIREBON TLP 0232 - 871619', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, 3, '2023-08-10'),
(234, 6, '', 'SURYA TOSERBA - SUMBER', 'JL.DEWI SARTIKA NO.3 SUMBER, 0232 - 871619', 'JAWA BARAT', 1500000, 'RETAIL', '25%', 1, 3, '2023-08-04'),
(235, 6, '', 'SWALAYAN MAHKOTA', ' JL. SULTAN AGUNG NO.61 SEMARANG', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 1, 4, '2023-07-26'),
(236, 6, '', 'TAMBAH JAYA SWALAYAN', 'Rungkut Madya No.141 Surabaya 085230410359', 'JAWA TIMUR', 2500000, 'RETAIL', '25%', 1, 4, '2023-07-26'),
(237, 6, '', 'TONG HIEN', ' JL. SULTAN AGUNG NO.61 SEMARANG,  TELP. 0248412817', 'JAWA TENGAH', 2000000, 'RETAIL', '25%', 0, 4, '2023-07-26'),
(257, 4, '', 'hiper mart', 'jakarta', 'JAKARTA', 600000, 'GROSIR+10', '25%', 0, 4, '0000-00-00'),
(258, 6, '', 'toko sales', 'adda', 'JAKARTA', 4500000, 'RETAIL', '25%+4%', 0, 4, '0000-00-00'),
(259, 4, '', 'hiper mart', 'adadad', 'JAKARTA', 600000, 'GROSIR+10', '25%+4%', 0, 4, '2023-07-26'),
(260, 4, '', 'hiper mart', 'adadad', 'JAKARTA', 600000, 'RETAIL', '25%+4%', 0, 4, '2023-07-26'),
(261, 0, '', 'hiper mart', 'adad', 'JAWA TENGAH', 4500000, 'RETAIL', '25%+4%', 0, 4, '2023-07-26'),
(262, 0, '', 'agus store', 'asa', 'JAKARTA', 600000, 'GROSIR+10', '25%+4%', 0, 4, '2023-07-26'),
(263, 6, '', 'HICOOP GROUP', 'sdD', 'JAWA BARAT', 4500000, 'RETAIL', '25%+4%', 0, 4, '2023-07-26'),
(264, 4, '', 'tes customer', 'fsf', 'JAKARTA', 600000, 'RETAIL', '25%+4%', 0, 4, '2023-07-26'),
(265, 4, '', 'toko', 'sfsf', 'JAWA BARAT', 4500000, 'GROSIR+10', '25%+4%', 0, 8, '2023-07-26'),
(266, 9, 'P0001(JATENG)', 'tes customer', 'sfsf', 'NTB', 4000000, 'RETAIL', '45%', 1, 3, '2023-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis` int(1) NOT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT current_timestamp(),
  `diskon` varchar(11) NOT NULL,
  `referensi` varchar(50) NOT NULL,
  `no_faktur` varchar(200) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id`, `id_customer`, `id_user`, `jenis`, `tanggal_dibuat`, `diskon`, `referensi`, `no_faktur`, `status`) VALUES
(1, 2, 3, 1, '2023-07-31 03:38:20', '30', 'FB0992782', 'SO-2023-08-0001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_detail`
--

CREATE TABLE `tb_order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon_barang` varchar(20) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_order_detail`
--

INSERT INTO `tb_order_detail` (`id`, `id_order`, `id_barang`, `qty`, `harga`, `diskon_barang`, `total`) VALUES
(1, 1, 24, 37, 47900, '25%+7%', 1240000),
(2, 1, 211, 40, 47800, '25%', 1240000),
(3, 1, 226, 35, 47800, '25%+7%', 1240000);

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
(4, 'tes', 'tes', '5f4dcc3b5aa765d61d8327deb882cf99', 0, 2),
(5, 'Agus Susanto', 'dddd', '444bcb3a3fcf8389296c49467f27e1d6', 0, 2),
(6, 'sales', 'sales', '9ed083b1436e5f40ef984b28255eef18', 0, 2),
(7, 'firqi', 'firqi', '0564b5009d5377ce081250fb161d53eb', 0, 1),
(8, 'SELVI MKT', 'MKT-SELVI', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1),
(9, 'Agus Susanto', 'tes', '28b662d883b6d76fd96e4ddc5e9ba780', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order_detail`
--
ALTER TABLE `tb_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `tb_order_detail`
--
ALTER TABLE `tb_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
