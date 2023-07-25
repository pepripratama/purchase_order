-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jul 2023 pada 08.26
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id` int(11) NOT NULL,
  `kode_artikel` varchar(50) NOT NULL,
  `nama_artikel` varchar(150) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `retail` int(11) DEFAULT '0',
  `grosir` int(11) DEFAULT '0',
  `grosir_10` int(11) DEFAULT '0',
  `het_jawa` int(11) DEFAULT '0',
  `indo_barat` int(11) DEFAULT '0',
  `special_price` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id`, `kode_artikel`, `nama_artikel`, `satuan`, `retail`, `grosir`, `grosir_10`, `het_jawa`, `indo_barat`, `special_price`) VALUES
(1, 'FG-HS-SC31 M B', 'Hicoop R Neck Simple Classic Pack 3-1 Seri Misty', 'Pck', 199900, 112500, 0, 229900, 0, 149900),
(2, 'FG-HS-SC31 M C', 'Hicoop R Neck Simple Classic Pack 3-1 Seri Misty', 'Pck', 199900, 112500, 0, 229900, 0, 149900),
(3, 'FG-HS-SC31 M D', 'Hicoop R Neck Simple Classic Pack 3-1 Seri Misty', 'Pck', 199900, 112500, 0, 229900, 0, 149900),
(4, 'FG-HS-SK21A', 'Hicoop Oblong Special Kids Salur Putih', 'Pcs', 42900, 24167, 0, 49900, 0, 0),
(5, 'FG-HS-SK21B', 'Hicoop Oblong Special Kids Salur Putih', 'Pcs', 42900, 24167, 0, 49900, 0, 0),
(6, 'FG-HS-SK21C', 'Hicoop Oblong Special Kids Salur Putih', 'Pcs', 42900, 24167, 0, 49900, 0, 0),
(7, 'FG-HS-SK21D', 'Hicoop Oblong Special Kids Salur Putih', 'Pcs', 42900, 24167, 0, 49900, 0, 0),
(8, 'FG-HS-ST01 A', 'Hicoop R Neck Style ', 'Pcs', 74900, 39584, 0, 84900, 0, 0),
(9, 'FG-HS-ST01 B', 'Hicoop R Neck Style ', 'Pcs', 74900, 39584, 0, 84900, 0, 0),
(10, 'FG-HS-ST01 C', 'Hicoop R Neck Style ', 'Pcs', 74900, 39584, 0, 84900, 0, 0),
(11, 'FG-HS-ST01 D', 'Hicoop R Neck Style ', 'Pcs', 74900, 39584, 0, 84900, 0, 0),
(12, 'FG-HTSC01A', 'Hicoop Tanktop Simple Classic White', 'Pcs', 64900, 36667, 0, 69900, 0, 0),
(13, 'FG-HTSC01B', 'Hicoop Tanktop Simple Classic White', 'Pcs', 64900, 36667, 0, 69900, 0, 0),
(14, 'FG-HTSC01BL A', 'Hicoop Tanktop Simple Classic Black', 'Pcs', 69900, 38750, 0, 79900, 0, 0),
(15, 'FG-HTSC01BL B', 'Hicoop Tanktop Simple Classic Black', 'Pcs', 69900, 38750, 0, 79900, 0, 0),
(16, 'FG-HTSC01BL C', 'Hicoop Tanktop Simple Classic Black', 'Pcs', 69900, 38750, 0, 79900, 0, 0),
(17, 'FG-HTSC01BL D', 'Hicoop Tanktop Simple Classic Black', 'Pcs', 69900, 38750, 0, 79900, 0, 0),
(18, 'FG-HTSC01C', 'Hicoop Tanktop Simple Classic White', 'Pcs', 64900, 36667, 0, 69900, 0, 0),
(19, 'FG-HTSC01D', 'Hicoop Tanktop Simple Classic White', 'Pcs', 64900, 36667, 0, 69900, 0, 0),
(20, 'FG-HX01BL B', 'Hicoop Boxer Black', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(21, 'FG-HX01BL C', 'Hicoop Boxer Black', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(22, 'FG-HX01BL D', 'Hicoop Boxer Black', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(23, 'FG-HX01-MA B', 'Hicoop Boxer Misty Abu ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(24, 'FG-HX01-MA C', 'Hicoop Boxer Misty Abu ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(25, 'FG-HX01-MA D', 'Hicoop Boxer Misty Abu ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(26, 'FG-HX01-MA E', 'Hicoop Boxer Misty Abu ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(27, 'FG-HX01-MC B', 'Hicoop Boxer Misty Coklat ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(28, 'FG-HX01-MC C', 'Hicoop Boxer Misty Coklat ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(29, 'FG-HX01-MC D', 'Hicoop Boxer Misty Coklat ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(30, 'FG-HX01-MC E', 'Hicoop Boxer Misty Coklat ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(31, 'FG-HX01-MM B', 'Hicoop Boxer Misty Maroon', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(32, 'FG-HX01-MM C', 'Hicoop Boxer Misty Maroon', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(33, 'FG-HX01-MM D', 'Hicoop Boxer Misty Maroon', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(34, 'FG-HX01-MM E', 'Hicoop Boxer Misty Maroon', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(35, 'FG-HX01-MN B', 'Hicoop Boxer Misty Navy ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(36, 'FG-HX01-MN C', 'Hicoop Boxer Misty Navy ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(37, 'FG-HX01-MN D', 'Hicoop Boxer Misty Navy ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(38, 'FG-HX01-MN E', 'Hicoop Boxer Misty Navy ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(39, 'FG-HX01W B', 'Hicoop Boxer White ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(40, 'FG-HX01W C', 'Hicoop Boxer White ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(41, 'FG-HX01W D', 'Hicoop Boxer White ', 'Pcs', 42900, 20417, 0, 47900, 0, 32900),
(42, 'FG-HX03-1 B', 'Hicoop Boxer Tanggung ', 'Pcs', 64900, 35417, 0, 69900, 0, 0),
(43, 'FG-HX03-1 D', 'Hicoop Boxer Tanggung ', 'Pcs', 64900, 35417, 0, 69900, 0, 0),
(44, 'FG-HX05-M A', 'Hicoop Boxer Motif', 'Pcs', 54900, 32500, 0, 59900, 0, 0),
(45, 'FG-HX05-M B', 'Hicoop Boxer Motif', 'Pcs', 54900, 32500, 0, 59900, 0, 0),
(46, 'FG-HX05-M C', 'Hicoop Boxer Motif', 'Pcs', 54900, 32500, 0, 59900, 0, 0),
(47, 'FG-HX05-M D', 'Hicoop Boxer Motif', 'Pcs', 54900, 32500, 0, 59900, 0, 0),
(48, 'FG-HXKL-SC107 B', 'HICOOP BOXER K.LUAR KOMBINASI', 'Pcs', 59900, 32500, 0, 64900, 0, 0),
(49, 'FG-HXKL-SC107 C', 'HICOOP BOXER K.LUAR KOMBINASI', 'Pcs', 59900, 32500, 0, 64900, 0, 0),
(50, 'FG-HXKL-SC107 D', 'HICOOP BOXER K.LUAR KOMBINASI', 'Pcs', 59900, 32500, 0, 64900, 0, 0),
(51, 'FG-HXKL-SC221A', 'Hicoop Waistband Boxer Basic Black 2-1', 'Box', 139900, 75000, 0, 149900, 0, 109900),
(52, 'FG-HXKL-SC221B', 'Hicoop Waistband Boxer Basic Black 2-1', 'Box', 139900, 75000, 0, 149900, 0, 109900),
(53, 'FG-HXKL-SC221C', 'Hicoop Waistband Boxer Basic Black 2-1', 'Box', 139900, 75000, 0, 149900, 0, 109900),
(54, 'FG-HXKL-SC221D', 'Hicoop Waistband Boxer Basic Black 2-1', 'Box', 139900, 75000, 0, 149900, 0, 109900),
(55, 'FG-HXKL-SC222BS E', 'Hicoop Waistband Boxer Black-Grey Big Size 2-1', 'Box', 139900, 68334, 0, 149900, 0, 0),
(56, 'FG-HXKL-SC222BS F', 'Hicoop Waistband Boxer Black-Grey Big Size 2-1', 'Box', 139900, 68334, 0, 149900, 0, 0),
(57, 'FG-HXKL-SC222BS G', 'Hicoop Waistband Boxer Black-Grey Big Size 2-1', 'Box', 139900, 68334, 0, 149900, 0, 0),
(58, 'FG-HXKL-SC227 BL A', 'Hicoop Waistband Boxer Basic Black 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900),
(59, 'FG-HXKL-SC227 BL B', 'Hicoop Waistband Boxer Basic Black 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900),
(60, 'FG-HXKL-SC227 BL C', 'Hicoop Waistband Boxer Basic Black 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900),
(61, 'FG-HXKL-SC227 BL D', 'Hicoop Waistband Boxer Basic Black 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900),
(62, 'FG-HXKL-SC227 NV A', 'Hicoop Waistband Boxer Basic Navy 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900),
(63, 'FG-HXKL-SC227 NV B', 'Hicoop Waistband Boxer Basic Navy 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900),
(64, 'FG-HXKL-SC227 NV C', 'Hicoop Waistband Boxer Basic Navy 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900),
(65, 'FG-HXKL-SC227 NV D', 'Hicoop Waistband Boxer Basic Navy 1-1', 'Box', 57900, 34167, 0, 64900, 0, 44900),
(66, 'FG-HXKL-SK217 A', 'Hicoop Boxer Karet Luar Special Kids Lego 1-1 ', 'Box', 54900, 35000, 0, 59900, 0, 0),
(67, 'FG-HXKL-SK217 B', 'Hicoop Boxer Karet Luar Special Kids Lego 1-1 ', 'Box', 54900, 35000, 0, 59900, 0, 0),
(68, 'FG-HXKL-SK217 C', 'Hicoop Boxer Karet Luar Special Kids Lego 1-1 ', 'Box', 54900, 35000, 0, 59900, 0, 0),
(69, 'FG-HXKL-SK217 D', 'Hicoop Boxer Karet Luar Special Kids Lego 1-1 ', 'Box', 54900, 35000, 0, 59900, 0, 0),
(70, 'FG-HXKL-SP09A', 'Hicoop Boxer Karet Luar Sport Seri Line', 'Box', 74900, 37500, 0, 84900, 0, 0),
(71, 'FG-HXKL-SP09B', 'Hicoop Boxer Karet Luar Sport Seri Line', 'Box', 74900, 37500, 0, 84900, 0, 0),
(72, 'FG-HXKL-SP09C', 'Hicoop Boxer Karet Luar Sport Seri Line', 'Box', 74900, 37500, 0, 84900, 0, 0),
(73, 'FG-HXKL-SP09D', 'Hicoop Boxer Karet Luar Sport Seri Line', 'Box', 74900, 37500, 0, 84900, 0, 0),
(74, 'FG-HXKL-SP511 BL B', 'Hicoop Waistband Boxer Seamless Sport Balck 1-1', 'Box', 79900, 40000, 0, 89900, 0, 0),
(75, 'FG-HXKL-SP511 BL C', 'Hicoop Waistband Boxer Seamless Sport Balck 1-1', 'Box', 79900, 40000, 0, 89900, 0, 0),
(76, 'FG-HXKL-SP511 BL D', 'Hicoop Waistband Boxer Seamless Sport Balck 1-1 ', 'Box', 79900, 40000, 0, 89900, 0, 0),
(77, 'FG-HXKL-SP511 GY B', 'Hicoop Waistband Boxer Seamless Sport Grey 1-1', 'Box', 79900, 40000, 0, 89900, 0, 0),
(78, 'FG-HXKL-SP511 GY C', 'Hicoop Waistband Boxer Seamless Sport Grey 1-1', 'Box', 79900, 40000, 0, 89900, 0, 0),
(79, 'FG-HXKL-SP511 GY D', 'Hicoop Waistband Boxer Seamless Sport Grey 1-1 ', 'Box', 79900, 40000, 0, 89900, 0, 0),
(80, 'FG-HXKL-SP523-1 B', 'Hicoop Boxer Karet Luar Sport Seri Coklat 1-1 ', 'Box', 79900, 41667, 0, 89900, 0, 62900),
(81, 'FG-HXKL-SP523-1 C', 'Hicoop Boxer Karet Luar Sport Seri Coklat 1-1 ', 'Box', 79900, 41667, 0, 89900, 0, 62900),
(82, 'FG-HXKL-SP523-1 D', 'Hicoop Boxer Karet Luar Sport Seri Coklat 1-1 ', 'Box', 79900, 41667, 0, 89900, 0, 62900),
(83, 'FG-HXKL-SP525 B', 'Hicoop Boxer Karet Luar Sport Salur 1-1', 'Box', 74900, 37500, 0, 84900, 0, 0),
(84, 'FG-HXKL-SP525 C', 'Hicoop Boxer Karet Luar Sport Salur 1-1', 'Box', 74900, 37500, 0, 84900, 0, 0),
(85, 'FG-HXKL-SP525 D', 'Hicoop Boxer Karet Luar Sport Salur 1-1', 'Box', 74900, 37500, 0, 84900, 0, 0),
(86, 'FG-HXKL-ST106 BL B', 'Hicoop Boxer Karet Luar Style Full Colour Black 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900),
(87, 'FG-HXKL-ST106 BL C', 'Hicoop Boxer Karet Luar Style Full Colour Black 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900),
(88, 'FG-HXKL-ST106 BL D', 'Hicoop Boxer Karet Luar Style Full Colour Black 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900),
(89, 'FG-HXKL-ST106 GY B', 'Hicoop Boxer Karet Luar Style Full Colour Grey 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900),
(90, 'FG-HXKL-ST106 GY C', 'Hicoop Boxer Karet Luar Style Full Colour Grey 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900),
(91, 'FG-HXKL-ST106 GY D', 'Hicoop Boxer Karet Luar Style Full Colour Grey 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900),
(92, 'FG-HXKL-ST106 MRN B', 'Hicoop Boxer Karet Luar Style Full Colour Maroon 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900),
(93, 'FG-HXKL-ST106 MRN C', 'Hicoop Boxer Karet Luar Style Full Colour Maroon 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900),
(94, 'FG-HXKL-ST106 MRN D', 'Hicoop Boxer Karet Luar Style Full Colour Maroon 1-1', 'Box', 57900, 31667, 0, 67900, 0, 44900),
(95, 'FG-HXKL-ST106B', 'Hicoop Boxer Karet Luar Style Full Colour 1-1', 'Box', 0, 0, 0, 0, 0, 54900),
(96, 'FG-HXKL-ST106C', 'Hicoop Boxer Karet Luar Style Full Colour 1-1', 'Box', 0, 0, 0, 0, 0, 54900),
(97, 'FG-HXKL-ST106D', 'Hicoop Boxer Karet Luar Style Full Colour 1-1', 'Box', 0, 0, 0, 0, 0, 54900),
(98, 'FG-HXKL-ST115A', 'Hicoop Boxer Karet Luar Red List Edition', 'Pcs', 0, 0, 0, 0, 0, 59900),
(99, 'FG-HXKL-ST115B', 'Hicoop Boxer Karet Luar Red List Edition', 'Pcs', 0, 0, 0, 0, 0, 59900),
(100, 'FG-HXKL-ST115C', 'Hicoop Boxer Karet Luar Red List Edition', 'Pcs', 0, 0, 0, 0, 0, 59900),
(101, 'FG-HXKL-ST115D', 'Hicoop Boxer Karet Luar Red List Edition', 'Pcs', 0, 0, 0, 0, 0, 59900),
(102, 'FG-HXKL-ST116B', 'Hicoop Boxer Karet Luar Hitam List Kombinasi Warna', 'Pcs', 0, 0, 0, 0, 0, 52900),
(103, 'FG-HXKL-ST116C', 'Hicoop Boxer Karet Luar Hitam List Kombinasi Warna', 'Pcs', 0, 0, 0, 0, 0, 52900),
(104, 'FG-HXKL-ST116D', 'Hicoop Boxer Karet Luar Hitam List Kombinasi Warna', 'Pcs', 0, 0, 0, 0, 0, 52900),
(105, 'FG-HXKL-ST221 B', 'Hicoop Waistband Boxer Style White Navy 2-1', 'Box', 149900, 79167, 0, 159900, 0, 119900),
(106, 'FG-HXKL-ST221 C', 'Hicoop Waistband Boxer Style White Navy 2-1', 'Box', 149900, 79167, 0, 159900, 0, 119900),
(107, 'FG-HXKL-ST221 D', 'Hicoop Waistband Boxer Style White Navy 2-1', 'Box', 149900, 79167, 0, 159900, 0, 119900),
(108, 'FG-HXKL-ST819 MBL A', 'Hicoop Waistband Boxer Jeans Style Misty Black 1-1', 'Box', 69900, 33334, 0, 79900, 0, 0),
(109, 'FG-HXKL-ST819 MBL B', 'Hicoop Waistband Boxer Jeans Style Misty Black 1-1', 'Box', 69900, 33334, 0, 79900, 0, 0),
(110, 'FG-HXKL-ST819 MBL C', 'Hicoop Waistband Boxer Jeans Style Misty Black 1-1', 'Box', 69900, 33334, 0, 79900, 0, 0),
(111, 'FG-HXKL-ST819 MBL D', 'Hicoop Waistband Boxer Jeans Style Misty Black 1-1', 'Box', 69900, 33334, 0, 79900, 0, 0),
(112, 'FG-HXKL-ST908AMB', 'Hicoop Boxer Karet Luar Style Kartun Abu Muda 1-1', 'Box', 0, 0, 0, 0, 0, 59900),
(113, 'FG-HXKL-ST908AMC', 'Hicoop Boxer Karet Luar Style Kartun Abu Muda 1-1', 'Box', 0, 0, 0, 0, 0, 59900),
(114, 'FG-HXKL-ST908AMD', 'Hicoop Boxer Karet Luar Style Kartun Abu Muda 1-1', 'Box', 0, 0, 0, 0, 0, 59900),
(115, 'FG-HXKL-ST909-1A', 'Hicoop Boxer Karet Luar Style Batik Gold 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0),
(116, 'FG-HXKL-ST909-1B', 'Hicoop Boxer Karet Luar Style Batik Gold 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0),
(117, 'FG-HXKL-ST909-1C', 'Hicoop Boxer Karet Luar Style Batik Gold 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0),
(118, 'FG-HXKL-ST909-1D', 'Hicoop Boxer Karet Luar Style Batik Gold 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0),
(119, 'FG-HXKL-ST909-2A', 'Hicoop Boxer Karet Luar Style Batik Blue 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0),
(120, 'FG-HXKL-ST909-2B', 'Hicoop Boxer Karet Luar Style Batik Blue 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0),
(121, 'FG-HXKL-ST909-2C', 'Hicoop Boxer Karet Luar Style Batik Blue 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0),
(122, 'FG-HXKL-ST909-2D', 'Hicoop Boxer Karet Luar Style Batik Blue 1-1', 'Box', 89900, 43750, 0, 99900, 0, 0),
(123, 'FG-HX-SC08 B', 'Hicoop Boxer Motif Kombinasi TR', 'Pcs', 59900, 32500, 0, 64900, 0, 0),
(124, 'FG-HX-SC08 C', 'Hicoop Boxer Motif Kombinasi TR', 'Pcs', 59900, 32500, 0, 64900, 0, 0),
(125, 'FG-HX-SC08 D', 'Hicoop Boxer Motif Kombinasi TR', 'Pcs', 59900, 32500, 0, 64900, 0, 0),
(126, 'FG-HX-SC187 B', 'Hicoop Boxer Basic Colour Pocket', 'Pcs', 64900, 37500, 0, 74900, 0, 0),
(127, 'FG-HX-SC187 C', 'Hicoop Boxer Basic Colour Pocket', 'Pcs', 64900, 37500, 0, 74900, 0, 0),
(128, 'FG-HX-SC187 D', 'Hicoop Boxer Basic Colour Pocket', 'Pcs', 64900, 37500, 0, 74900, 0, 0),
(129, 'FG-HX-SC189 B', 'Hicoop Boxer Motif List Polos', 'Pcs', 84900, 41667, 0, 94900, 0, 0),
(130, 'FG-HX-SC189 D', 'Hicoop Boxer Motif List Polos', 'Pcs', 84900, 41667, 0, 94900, 0, 0),
(131, 'FG-HX-SC9 GY 11', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 0, 0, 0, 0, 0, 69900),
(132, 'FG-HX-SC9 GY 11', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 0, 0, 0, 0, 0, 69900),
(133, 'FG-HX-SC9 GY 11', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 0, 0, 0, 0, 0, 69900),
(134, 'FG-HX-SC911 BL B', 'Hicoop Boxer Seamless Basic Black 1-1 ', 'Box', 74900, 38750, 0, 84900, 0, 59900),
(135, 'FG-HX-SC911 BL C', 'Hicoop Boxer Seamless Basic Black 1-1 ', 'Box', 74900, 38750, 0, 84900, 0, 59900),
(136, 'FG-HX-SC911 BL D', 'Hicoop Boxer Seamless Basic Black 1-1 ', 'Box', 74900, 38750, 0, 84900, 0, 59900),
(137, 'FG-HX-SC911 GY B', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 74900, 38750, 0, 84900, 0, 59900),
(138, 'FG-HX-SC911 GY C', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 74900, 38750, 0, 84900, 0, 59900),
(139, 'FG-HX-SC911 GY D', 'Hicoop Boxer Seamless Basic Grey  1-1', 'Box', 74900, 38750, 0, 84900, 0, 59900),
(140, 'FG-HX-SP010 BL B', 'Hicoop Boxer Training Black Series', 'Pcs', 79900, 41667, 0, 89900, 0, 0),
(141, 'FG-HX-SP010 BL D', 'Hicoop Boxer Training Black Series', 'Pcs', 79900, 41667, 0, 89900, 0, 0),
(142, 'FG-HX-SP010 GY B', 'Hicoop Boxer Training Grey Series', 'Pcs', 79900, 41667, 0, 89900, 0, 0),
(143, 'FG-HX-SP010 GY D', 'Hicoop Boxer Training Grey Series', 'Pcs', 79900, 41667, 0, 89900, 0, 0),
(144, 'FG-HX-SP011 B', 'Hicoop Boxer Training Back Pocket', 'Pcs', 89900, 45834, 0, 99900, 0, 0),
(145, 'FG-HX-SP011 D', 'Hicoop Boxer Training Back Pocket ', 'Pcs', 89900, 45834, 0, 99900, 0, 0),
(146, 'FG-HX-ST112B', 'Hicoop Boxer Medium Back Pocket Motif ', 'Pcs', 69900, 35834, 0, 79900, 0, 0),
(147, 'FG-HX-ST112D', 'Hicoop Boxer Medium Back Pocket Motif ', 'Pcs', 69900, 35834, 0, 79900, 0, 0),
(148, 'FG-L-HSC93 B', 'Hicoop Long Pant Ladies Back Pocket Mix Colour ', 'Pcs', 84900, 45000, 0, 94900, 0, 0),
(149, 'FG-L-HSC93 D', 'Hicoop Long Pant Ladies Back Pocket Mix Colour ', 'Pcs', 84900, 45000, 0, 94900, 0, 0),
(150, 'FG-L-HSC93 JB', 'Hicoop Long Pant Ladies Back Pocket Mix Colour (JUMBO)', 'Pcs', 94900, 47917, 0, 109900, 0, 0),
(151, 'FG-L-HX-ST110B', 'Hicoop Boxer Short Ladies Side Pocket Motif (S/M)', 'Pcs', 49900, 30834, 0, 59900, 0, 0),
(152, 'FG-L-HX-ST110D', 'Hicoop Boxer Short Ladies Side Pocket Motif (L/XL)', 'Pcs', 49900, 30834, 0, 59900, 0, 0),
(153, 'FG-L-HX-ST111B', 'Hicoop Boxer Medium Ladies Back Pocket Motif', 'Pcs', 69900, 42500, 0, 79900, 0, 0),
(154, 'FG-L-HX-ST111D', 'Hicoop Boxer Medium Ladies Back Pocket Motif', 'Pcs', 69900, 42500, 0, 79900, 0, 0),
(155, 'FG-L-HX-ST119 B', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket', 'Pcs', 84900, 45000, 0, 94900, 0, 0),
(156, 'FG-L-HX-ST119 D', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket ', 'Pcs', 84900, 45000, 0, 94900, 0, 0),
(157, 'FG-L-HX-ST119 E', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket ', 'Pcs', 94900, 47917, 0, 109900, 0, 0),
(158, 'FG-L-HX-ST119 F', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket ', 'Pcs', 94900, 47917, 0, 109900, 0, 0),
(159, 'FG-L-HX-ST119 G', 'Hicoop Boxer 7/8 Ladies Motif Right Pocket ', 'Pcs', 94900, 47917, 0, 109900, 0, 0),
(160, 'FG-SH-L-ST102', 'Hicoop Ankle Sock Ladies 1', 'Psg', 31900, 0, 0, 0, 0, 31900),
(161, 'FG-SH-L-ST103', 'Hicoop Ankle Sock Ladies 2', 'Psg', 31900, 0, 0, 0, 0, 31900),
(162, 'FG-SH-L-ST104', 'Hicoop Ankle Sock Ladies 3', 'Psg', 31900, 0, 0, 0, 0, 31900),
(163, 'FG-SH-M-LG209', 'Hicoop Mens Long Shocks Casual 1', 'Psg', 36900, 0, 0, 0, 0, 36900),
(164, 'FG-SH-M-LG210', 'Hicoop Mens Long Shocks Casual 2', 'Psg', 36900, 0, 0, 0, 0, 36900),
(165, 'FG-SH-M-LG211', 'Hicoop Mens Long Shocks Casual 3', 'Psg', 36900, 0, 0, 0, 0, 36900),
(166, 'FG-SH-S-ST202', 'Hicoop Mens Ankle Sock Sport1', 'Psg', 44900, 0, 0, 0, 0, 44900),
(167, 'FG-SH-S-ST203', 'Hicoop Mens Ankle Sock Sport 2', 'Psg', 44900, 0, 0, 0, 0, 44900),
(168, 'FG-SH-S-ST204', 'Hicoop Mens Ankle Sock Sport 3', 'Psg', 44900, 0, 0, 0, 0, 44900),
(169, 'FG-SH-M-CS301', 'Hicoop Mens Casual Socks-Old Motif', 'Psg', 34900, 0, 0, 0, 0, 34900),
(170, 'FG-HT02MX-AR B', 'Hicoop Max Tank Top Army 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900),
(171, 'FG-HT02MX-AR C', 'Hicoop Max Tank Top Army 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900),
(172, 'FG-HT02MX-AR D', 'Hicoop Max Tank Top Army 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900),
(173, 'FG-HT02MX-MRN B', 'Hicoop Max Tank Top Maroon 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900),
(174, 'FG-HT02MX-MRN C', 'Hicoop Max Tank Top Maroon 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900),
(175, 'FG-HT02MX-MRN D', 'Hicoop Max Tank Top Maroon 1-1 ', 'Pcs', 59900, 36666, 0, 69900, 0, 44900),
(176, 'FG-HT02MX-NV B', 'Hicoop Max Tank Top Navy 1-1', 'Pcs', 59900, 36666, 0, 69900, 0, 44900),
(177, 'FG-HT02MX-NV C', 'Hicoop Max Tank Top Navy 1-1', 'Pcs', 59900, 36666, 0, 69900, 0, 44900),
(178, 'FG-HT02MX-NV D', 'Hicoop Max Tank Top Navy 1-1', 'Pcs', 59900, 36666, 0, 69900, 0, 44900),
(179, 'FG-HS02MX-AR B', 'Hicoop Max R-Neck Army 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900),
(180, 'FG-HS02MX-AR C', 'Hicoop Max R-Neck Army 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900),
(181, 'FG-HS02MX-AR D', 'Hicoop Max R-Neck Army 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900),
(182, 'FG-HS02MX-MRN B', 'Hicoop Max R-Neck Maroon 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900),
(183, 'FG-HS02MX-MRN C', 'Hicoop Max R-Neck Maroon 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900),
(184, 'FG-HS02MX-MRN D', 'Hicoop Max R-Neck Maroon 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900),
(185, 'FG-HS02MX-NV B', 'Hicoop Max R-Neck Navy 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900),
(186, 'FG-HS02MX-NV C', 'Hicoop Max R-Neck Navy 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900),
(187, 'FG-HS02MX-NV D', 'Hicoop Max R-Neck Navy 1-1 ', 'Pcs', 64900, 39583, 0, 74900, 0, 49900),
(188, 'FG-HXKL-ST106 BNH B', 'Hicoop Boxer Karet Luar Style Full Colour Benhur 1-1 ', 'Box', 57900, 31667, 0, 67900, 0, 0),
(189, 'FG-HXKL-ST106 BNH C', 'Hicoop Boxer Karet Luar Style Full Colour Benhur 1-2', 'Box', 57900, 31667, 0, 67900, 0, 0),
(190, 'FG-HXKL-ST106 BNH D', 'Hicoop Boxer Karet Luar Style Full Colour Benhur 1-3', 'Box', 57900, 31667, 0, 67900, 0, 0),
(191, 'FG-HL09-1 A', 'Hicoop Oblong ', 'Pcs', 0, 0, 0, 57900, 0, 0),
(192, 'FG-HL09-1 B', 'Hicoop Oblong ', 'Pcs', 0, 0, 0, 57900, 0, 0),
(193, 'FG-HL09-1 C', 'Hicoop Oblong ', 'Pcs', 0, 0, 0, 57900, 0, 0),
(194, 'FG-HL09-1 D', 'Hicoop Oblong ', 'Pcs', 0, 0, 0, 57900, 0, 0),
(195, 'FG-HL09-1 MA B', 'Hicoop Oblong Misty Abu ', 'Pcs', 0, 0, 0, 57900, 0, 0),
(196, 'FG-HL09-1 MA C', 'Hicoop Oblong Misty Abu ', 'Pcs', 0, 0, 0, 57900, 0, 0),
(197, 'FG-HL09-1 MA D', 'Hicoop Oblong Misty Abu ', 'Pcs', 0, 0, 0, 57900, 0, 0),
(198, 'FG-HL09-1 MC B', 'Hicoop Oblong Misty Coklat', 'Pcs', 0, 0, 0, 57900, 0, 0),
(199, 'FG-HL09-1 MC C', 'Hicoop Oblong Misty Coklat', 'Pcs', 0, 0, 0, 57900, 0, 0),
(200, 'FG-HL09-1 MC D', 'Hicoop Oblong Misty Coklat', 'Pcs', 0, 0, 0, 57900, 0, 0),
(201, 'FG-HL09-1 BL B', 'Hicoop Oblong Black', 'Pcs', 0, 0, 0, 57900, 0, 0),
(202, 'FG-HL09-1 BL C', 'Hicoop Oblong Black', 'Pcs', 0, 0, 0, 57900, 0, 0),
(203, 'FG-HL09-1 BL D', 'Hicoop Oblong Black', 'Pcs', 0, 0, 0, 57900, 0, 0),
(204, 'FG-HL09-1 W B', 'Hicoop Oblong White', 'Pcs', 0, 0, 0, 57900, 0, 0),
(205, 'FG-HL09-1 W C', 'Hicoop Oblong White', 'Pcs', 0, 0, 0, 57900, 0, 0),
(206, 'FG-HL09-1 W D', 'Hicoop Oblong White', 'Pcs', 0, 0, 0, 57900, 0, 0),
(207, 'FG-MEB-032 B (89)', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 89900),
(208, 'FG-MEB-032 C (89)', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 89900),
(209, 'FG-MEB-032 D (89)', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 89900),
(210, 'FG-MEB-032 E (89)', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 89900),
(211, 'FG-MEBKL-303 B (159)', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 159900),
(212, 'FG-MEBKL-303 C (159)', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 159900),
(213, 'FG-MEBKL-303 D (159)', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 159900),
(214, 'FG-MEBKL-303 E (159)', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 159900),
(215, 'FG-MEB-051 B', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 84900),
(216, 'FG-MEB-051 C', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 84900),
(217, 'FG-MEB-051 D', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 84900),
(218, 'FG-MEB-051 E', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 84900),
(219, 'FG-MEB-742 B', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 43333, 0, 0, 0, 64900),
(220, 'FG-MEB-742 C', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 43333, 0, 0, 0, 64900),
(221, 'FG-MEB-742 D', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 43333, 0, 0, 0, 64900),
(222, 'FG-MEB-742 E', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 43333, 0, 0, 0, 64900),
(223, 'FG-MEB-742 B  (129)', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 0, 0, 0, 0, 129900),
(224, 'FG-MEB-742 C  (129)', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 0, 0, 0, 0, 129900),
(225, 'FG-MEB-742 D  (129)', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 0, 0, 0, 0, 129900),
(226, 'FG-MEB-742 E  (129)', 'Muscle Element Brief Seri Coklat 4-1 ', 'Box', 0, 0, 0, 0, 0, 129900),
(227, 'FG-MEB-032 B', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 44900),
(228, 'FG-MEB-032 C', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 44900),
(229, 'FG-MEB-032 D', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 44900),
(230, 'FG-MEB-032 E', 'Muscle Element Brief Black Edition Stripe Tengah 3-1 ', 'Box', 0, 0, 0, 0, 0, 44900),
(231, 'FG-MEBKL-303 B', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 79900),
(232, 'FG-MEBKL-303 C', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 79900),
(233, 'FG-MEBKL-303 D', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 79900),
(234, 'FG-MEBKL-303 E', 'Muscle Element Waistband Blue-Red-Green Brief 3-1 ', 'Box', 0, 0, 0, 0, 0, 79900),
(235, 'FG-MEB-051 B (169)', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 169900),
(236, 'FG-MEB-051 C (169)', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 169900),
(237, 'FG-MEB-051 D (169)', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 169900),
(238, 'FG-MEB-051 E (169)', 'Muscle Element Brief Motif Stripe 5-1', 'Box', 0, 0, 0, 0, 0, 169900),
(239, 'FG-MEBKL-302 B (149)', 'Muscle Element Waistband Brief Black 3-1 ', 'Box', 0, 0, 0, 0, 0, 149900),
(240, 'FG-MEBKL-302 C (149)', 'Muscle Element Waistband Brief Black 3-1 ', 'Box', 0, 0, 0, 0, 0, 149900),
(241, 'FG-MEBKL-302 D (149)', 'Muscle Element Waistband Brief Black 3-1 ', 'Box', 0, 0, 0, 0, 0, 149900),
(242, 'FG-MEBKL-302 E (149)', 'Muscle Element Waistband Brief Black 3-1 ', 'Box', 0, 0, 0, 0, 0, 149900);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `area` varchar(50) NOT NULL,
  `minimum_order` int(11) NOT NULL,
  `tipe_harga` varchar(50) NOT NULL,
  `margin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_customer`
--

INSERT INTO `tb_customer` (`id`, `nama_customer`, `alamat`, `id_user`, `area`, `minimum_order`, `tipe_harga`, `margin`) VALUES
(1, 'ADA BARU SALATIGA', 'JL.JENDRAL SUDIRMAN NO.20, Telp 0298-3230962', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(2, 'ADIJAYA WELAHAN', 'JL BANDUNG REJO KALIM YAMATAN JEPARA', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%+7%'),
(3, 'ADIJAYA MAYONG', 'JL BANDUNG REJO KALIM YAMATAN JEPARA', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%+7%'),
(4, 'ADIJAYA PURWOGONDO', 'Jl. Kromodiwiryo Purwogondo 2,  Hp. 088215558864', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%+7%'),
(5, 'ADIJAYA TELUK', 'JL BANDUNG REJO KALIM YAMATAN JEPARA', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%+7%'),
(6, 'ANEKA JAYA BANDUNG REJO', 'JL RAYA BANDUNG REJO NO.119 MERANGGEN, TELP.024-6700863', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(7, 'ANEKA JAYA BOJA', 'JL. PEMUDA 234 BOJA KENDAL JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(8, 'ANEKA JAYA DEMAK', 'JL. SULTAN FATAH NO.7 BOGORAME MANGUNJIWAN DEMAK JATENG NO TELP.0291-685100', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(9, 'ANEKA JAYA DEMAK 2', 'JL. SULTAN HADI WIJAYA NO 17,  TELP.085727656584', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(10, 'ANEKA JAYA KALI PANCUR', 'JL.UNTUNG SUROPATI NO.168 RT/RW 04/04, TELP.02476432302', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(11, 'ANEKA JAYA KENDAL', 'JL.SOEKARNO HATTA RT/RW 06/05 LANGENHARJO KENDAL, TELP.02943691958', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(12, 'ANEKA JAYA MANGKANG', 'JL.URIP SUMOHARJO KM.15 RT/RW 01/01 SEMARANG, TELP.0248663335', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(13, 'ANEKA JAYA MAYONG', 'JL. RAYA JEPARA KUDUS KM 11 TUNGGUL PANDEAN NALUMSARI, JEPARA JATENG ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(14, 'ANEKA JAYA MRANGGEN', 'JL. RATA MRANGGEN NO.22, NO TELP.024-6773292', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(15, 'ANEKA JAYA NGALIAN', 'JL.PROF DR.HAMKA NO 38A RT/RW 03/11, TELP : 0247603995', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(16, 'ANEKA JAYA PATIMURA', 'Jl Pati mura No.32/34 Rt.01/04 Rejomulyo, TELP 085742422847', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(17, 'ANEKA JAYA PETERONGAN', 'JL.WONODRI JONO 1 NO.981 SEMARANG, TELP.0248314714', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(18, 'ANEKA JAYA SALATIGA', 'JL IMAM BONJOL NO 37 RT/RW 04/08', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(19, 'ANEKA JAYA SAMBIROTA', 'JL.SAMBIROTO RAYA NO.100 RT/RW 02/02 SEMARANG, TELP. 0246719678', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(20, 'ANEKA JAYA WOLTER', ' Jl.Wolter Mongonsidi No.100 Tlogo Mulyo Semarang Jawa-Tengah', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(21, 'ANEKA SWALAYAN BREBES', 'JL. A  YANI RT/RW 01/17 BREBES JATENG, TELP. 0283672152', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(22, 'ANUGERAH  MITRA PERKASA (AMP)', 'PERUM LIMAS AGUNG BLOK F.18 NO.10 PURWOKERTO - JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'GROSIR', '7%'),
(23, 'BANDUNG FASHION KAJAR', 'JL.RAYA PATI TAYU KM.12 RUKO KAJAR PATI JATENG, TELP. 0295-4102618', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(24, 'BANJARAN PERMAI SWALAYAN', 'JL.RAYA BANJARAN TEMBOK BANJARAN ADIWERNA, KAB TEGAL TELP.0283-366006', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(25, 'BARU SWALAYAN BUMIAYU', 'Jl.Pangeran Diponegoro No. 128 85880498660', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(26, 'BARU TOKO BUMIAYU', 'Jl.Raya Kalierang No. 410,  TLP  0289-430498', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(27, 'BARU TOSERBA', 'Jl. Jend. Soedirman No. 11 Wonogiri,   0273-321063', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(28, 'BASA TOSERBA - BANJARAN TEGAL', 'JL.RAYA TEMBOK BANJARAN NO.49, TELP.02833448454', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(29, 'BASA TOSERBA - PEMALANG', 'JL.JENDRAL SUDIRMAN NO.30 PEMALANG JATENG, TELP.0284321310', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(30, 'BATIK MAHKOTA (MAHKOTA JAYA DAMAI SEJAHTERA, CV)', ' JL. HOS NOTO SUWIRYO NO.164 KARANG BAWANG ', NULL, 'JAWA TENGAH', 2000000, 'GROSIR', '7%'),
(31, 'BILKA SUPERMARKET', 'JL. NGAGEL JAYA SELATAN NO.103, TELP. 0315028988', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(32, 'BORMA - BUAH BATU', 'JL. BUAH BATU NO. 235-A, Bandung', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(33, 'BORMA - CIJERAH', 'JL.CIJERAH  NO. 9, Bandung', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(34, 'BORMA - CIJERAH', 'JL. CIJERAH NO. 90', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(35, 'BORMA - CIKUTRA', 'JL.CIKUTRA BARAT NO.66, Bandung', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(36, 'BORMA - GEMPOL', 'JL. GEMPOL SARI RAYA NO. 9, Bandung', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(37, 'BORMA - KERKOF', 'JL.KERKOF NO.23, Bandung', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(38, 'BORMA - PRAMA BABAKAN SARI', 'JL.SUKARNO HATTA NO 271 BANDUNG ', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(39, 'BORMA - PRAMA BANJARAN', 'JL. RAYA BANJARAN KAMPUNG SEREH RT.04.RW.01 LEBAK WANGI SAMPING PABRIK SAIMODA 0822-1401-8551', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(40, 'BORMA - PRAMA CIPARAY', 'Jl. Raya Laswi No 382 Ciparay, Kabupaten Bandung', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(41, 'BORMA TOSERBA - BOJONGSOANG', 'JL.CIJAGRA NO.06 A BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(42, 'BORMA TOSERBA - CIHANJUANG', 'JL.DAENG MARDIWINATA NO.87 BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(43, 'BORMA TOSERBA - DAKOTA', 'JL.DAKOTA RAYA NO.109 BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(44, 'BORMA TOSERBA - DANGDEUR', 'JL.RANCAEKEK MAJALAYA NO.85,KP.RANCAEKEK WETAN KEC.RANCAEKEK KAB.BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(45, 'BORMA TOSERBA - KETAPANG', 'JL.KATAPANG KM.12 BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(46, 'BORMA TOSERBA - KIARA CONDONG', 'JL.TRS KIARA CONDONG NO.418 A BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(47, 'BORMA TOSERBA - LEMBANG', '  JL.RAYA LEMBANG NO.278 BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(48, 'BORMA TOSERBA - MARGA CINTA', 'JL.MARGACINTA NO.220 BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(49, 'BORMA TOSERBA - PADALARANG', 'JL.RAYA PADALARANG NO.504 BANDUNG BARAT', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(50, 'BORMA TOSERBA - PASIR IMPUN', 'JL.AH NASUTION NO.137 BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(51, 'BORMA TOSERBA - PERMATA CIMAHI', 'KOMP. PERMATA CIMAHI 11 ,CIMAHI TELP.022-6027638', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(52, 'BORMA TOSERBA - RANCAEKEK', 'JL.RAYA RANCAEKEK KM.25 NO.4 BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(53, 'BORMA TOSERBA - RENCONG', 'JL.RAYA DAYEUH KOLOT BANJARAN NO.275 BALEENDAH BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(54, 'BORMA TOSERBA - RIUNG BANDUNG', 'JL.CIPAMOKOLAN NO.50 BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(55, 'BORMA TOSERBA - SETIA BUDI', '  JL.DR SETIABUDI NO.148 BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(56, 'BORMA TOSERBA - TKI', 'KOMP.TAMAN KOPO INDAH BANDUNG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(57, 'BORNEO SUPERMARKET-RAFI\'I', 'JL. HM RAFI\'I KEL MADUREJO KEC ARUT SELATAN KAB WARINGIN BARAT PANGKALAN BUN KALTENG TELP.0532 2030782', NULL, 'KALIMANTAN 2', 14000000, 'HET JAWA', '25%'),
(58, 'BRAVO GROUP - BOJONEGORO', 'JL.PEMUDA NO.37-39 (0353)883193 / 885573', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '20%'),
(59, 'BRAVO GROUP - CEPU', 'JL.RAYA RANDUBLATUNG NO.08 BALUN CEPU BLORA JAWA TENGAH ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '20%'),
(60, 'BRAVO GROUP - TUBAN', 'JL.BASUKI RACHMAD NO.64 RT.003 RW.002 KUTOREJO', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '20%'),
(61, 'BRITANIATOSERBA', 'JL.RAYA PUNCAK NO.593 CISARUA, BOGOR', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(62, 'BUMI NYIUR SWALAYAN', 'ALAMAT KIRIM : LINGLING BNS  RUKO KENJERAN PALACE C17 JL KENJERAN 278 TAMBAK SARI SURABAYA TELP.085341877694', NULL, 'JAWA TIMUR', 2500000, 'HET JAWA', '25%'),
(63, 'CAKRA SWALAYAN', 'JL RUNGKUT TENGAH 3 NO 42 SURABAYA', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(64, 'CV ANEKA JAYA BATANG', 'JL. DOKTOR WAHIDIN SUDIROHUSODO NO 42 KAUMAN BATANG, TLP 085640230017', NULL, 'JAWA TENGAH', 2000001, 'RETAIL', '25%'),
(65, 'CV CAKRA GEMILANG ABADI (MITRA GROUP)', 'JL.KEBALEN TENGAH 4A (BELAKANG BALAI KOTA SOLO) SOLO-JAWA TENGAH  0271-646691', NULL, 'JAWA TENGAH', 2000000, 'GROSIR', '7%'),
(66, 'CV MULIA JAYA (LUWES RAHAYU)', 'JL. RAYA 133 MRANGGEN, TELP. 0246725523', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(67, 'CV PANGESTU JAYA (LUWES RAHAYU GUBUG)', 'JL.MT HARYONO NO.51-53 RT/RW 01/10 GUBUG GROBOGAN JATENG  ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(68, 'CV PLATINUM ABADI - LUWES CEPER', 'JL. MORISAN RT 002/008, CETAN, CEPER, KAB. KLATEN, JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(69, 'CV PLATINUM ABADI - LUWES LOJIWETAN', 'JL. KAPTEN MULYADI NO 105, RT 003 RW007, KEDUNG LUMBU, PASAR KLIWON, KOTA SURAKARTA JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(70, 'CV PLATINUM ABADI - LUWES PALUR', 'JL. RAYA SOLO KARANGANYAR KM 6.7, DAGEN, JATEN, KAB KARANGANYAR, JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(71, 'CV PLATINUM ABADI - LUWES PONOROGO', 'JL.K.H ACHMAD DAHLAN NO 100 PONOROGO ', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(72, 'CV PLATINUM ABADI - LUWES SRAGEN', 'JL. RAYA SUKOWATI NO 386 RT 012 RW004, SRAGEN WETAN, KAB. SRAGEN, JAWA TENGAH   TLP. 0271891020', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(73, 'CV PLATINUM ABADI - LUWES WONOGIRI', 'JL. RAYA WONOGIRI NO 203 RT 003 RW 001, GIRITIRTO, KB. WONOGIRI, JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(74, 'CV PLATINUM ABADI - SAMI LUWES', 'JL. HONGGOWONGSO NO 2 SRIWEDARI, LAWEYAN, SURAKARTA, JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(75, 'CV ROBERTO', 'JL HASANUDIN 43 SUMBAWA BESAR NO TELP : 0371-21355', NULL, 'NTB', 6000000, 'RETAIL', '25%'),
(76, 'CV SINAR LANGGENG - SUMBER LESTARI', 'JL. RAYA BARAT NO 63 JATIBARANG, BREBES TLP. 08156688681', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(77, 'CV SUBUR TOSERBA', 'JL . NGURAH RAI NO.40  JEMBRANA NEGARA BALI ', NULL, 'BALI', 3500000, 'RETAIL', '30%'),
(78, 'CV SUMBER BARU TOSERBA', 'JL. RAYA DEPAN POLSEK PASIRIAN RT 000/RW 000 PASIRIAN, KAB LUMAJANG JAWA TIMUR, TLP 085158596377', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(79, 'CV SURYA ASIA PASIFIK (SANDANG AYU PASURUAN)', 'JL.ALUN ALUN UTARA BANGILAN PANGGUNG REJO, PASURUAN ', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(80, 'CV.SURYA MAKMUR SENTOSA- SOREANG ', 'JL.RAYA SOREANG BANJARAN NO.428', NULL, 'JAWA BARAT', 1500000, 'HET JAWA', '35%'),
(81, 'DE PLUS (IDOLA FASHION) - KLATEN', 'JL.KEBON KACANG 9 NO 69 JAKPUS', NULL, 'JAKARTA', 0, 'RETAIL', '35%'),
(82, 'DE PLUS (IDOLA FASHION) - SRAGEN', 'JL.KEBON KACANG 9 NO 69 JAKPUS', NULL, 'JAKARTA', 0, 'RETAIL', '35%'),
(83, 'ENGKIM', 'Toko Meiry Jl. Cempaka No 3 E Pekanbaru', NULL, 'SUMATRA', 6000000, 'GROSIR', '7%'),
(84, 'ENGKIM NON BS', 'Toko Meiry Jl. Cempaka No 3 E Pekanbaru', NULL, 'SUMATRA', 6000000, 'GROSIR', '7%'),
(85, 'FAMILI SWALAYAN', 'RUKO PRAYUDAN PERMAI A. 7, MAGELANG TLP 0293 - 326280', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(86, 'FRESH', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI ', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(87, 'FRESH TOKO 1', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(88, 'FRESH TOKO 10', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(89, 'FRESH TOKO 11', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(90, 'FRESH TOKO 12', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(91, 'FRESH TOKO 13', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(92, 'FRESH TOKO 14', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(93, 'FRESH TOKO 15', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(94, 'FRESH TOKO 2', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(95, 'FRESH TOKO 3', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(96, 'FRESH TOKO 4', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(97, 'FRESH TOKO 5', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(98, 'FRESH TOKO 6', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(99, 'FRESH TOKO 7', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(100, 'FRESH TOKO 8', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(101, 'FRESH TOKO 9', 'JLN SENTOT ALI BASA NO.61 PAYO SELINCAH JAMBI 0741 573801  (IBU YENI )', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(102, 'GARDENA MAGELANG', '', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '28%'),
(103, 'GARDENA YOGYA', 'JL.URIP SUMOHARJO 41 YOGYAKARTA ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '28%'),
(104, 'GAYA - KEDUNG MUNDU', 'JL. KASIPAH NO 19 SEMARANG', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(105, 'GAYA - TLOGOSARI', 'JL. KEDUNG MUNDU RAYA NO.3B, KEDUNG MUNDU TEMBALANG (SWALAYAN GAYA KEDUNG MUNDU)', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(106, 'GOLDEN MARKET JEMBER', 'JL. TRUNOJOYO NO. 42', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '30%'),
(107, 'GOLDEN SWALAYAN KEDIRI', 'JL.HAYAM WURUK 121-12 KEDIRI 64122', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '30%'),
(108, 'GOORI MRANGGEN', 'JL. RAYA BANDUNG REJO NO.90 RT/RW 004/001 DEMAK', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(109, 'GOORI SWALAYAN', 'JL. PROF HAMKA NO.99 NGALIAN SEMARANG', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(110, 'GOORI SWALAYAN GUNUNG PATI', 'JL. PROF HAMKA NO.99 NGALIAN SEMARANG', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(111, 'GRAHA MULIA', 'JL DR SUTOMO 42 TISNONEGARAN MAYANGAN PROBOLINGGO TELP.0335 421688', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '30%'),
(112, 'GRAHA MULIA LUMAJANG', 'JL.JEND SUDIRMAN 46 TOMPOKERSAN LUMAJANG , TELP. 0334891522', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '30%'),
(113, 'GRAHA MULIA PLAZA', 'Jl. Letkol Slamet Wardoyo No. 59B Labruk Lor Kab. Lumajang (Depan Pom Bensin Labruk) TELP. 03348783000', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '30%'),
(114, 'GREEN SMART SIDOARJO', 'KIRIM KE JL. RAYA SEPANDE NO.19 PERUM SAFIRA GARDEN SIDOARJO ', NULL, 'JAWA TIMUR', 2500000, 'GROSIR+10', ''),
(115, 'HADI SUPERMARKET', 'JL.DANAU SUNTER BLOK E-2 KOMPLEKS RUKAN PERMAI JAKUT, TELP.021-6520081', NULL, 'JAKARTA', 0, 'HET JAWA', '30%+10%'),
(116, 'HADI SUPERMARKET (BIAK)', 'JL. IMAM BONJOL NO II BIAK KAB BIAK NUMFOR PAPUA TLP 081289388047', NULL, '', 0, 'HET JAWA', '30+10%'),
(117, 'JEMBER ROXY SQUARE', 'JL. HAYAM WURUK JEMBER', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(118, 'KARTINI FASHION', 'JL.IRIAN JAYA NO.26 SITUBONDO', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(119, 'KAWAN MULIA', 'PINTU BESAR SELATAN NO 82 TLP 0216923817', NULL, '', 0, 'GROSIR', '5%'),
(120, 'KDS BOJONEGORO', 'JL.SUKEREJO RT/RW 000/000 BOJONEGORO', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%+1%'),
(121, 'KUSUKA SWALAYAN', 'JL. SIDOTOPO WETAN NO.34A SURABAYA TELP. 031 3715639', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(122, 'LARIS - AMBARAWA', 'JL. JEND. SUDIRMAN 888 AMBARAWA 0298 595 609', NULL, 'JAWA TENGAH', 2000000, 'GROSIR+10', ''),
(123, 'LARIS - KARTASURA', 'JL. A. YANI 14 KARTASURA 0271 781 629', NULL, 'JAWA TENGAH', 2000000, 'GROSIR+10', ''),
(124, 'LARIS - KLATEN', 'JL.PEMUDA NO.164 KAB.KLATEN TENGAH JAWA TENGAH (0272)321822', NULL, 'JAWA TENGAH', 2000000, 'GROSIR+10', ''),
(125, 'LARIS - SOKOHARJO', 'JL.SLAMET RIYADI NO.82.84.86 BONDALEM RT.03 RW.10 GAYAM SUKOHARJO 0271 - 5991398', NULL, 'JAWA TENGAH', 2000000, 'GROSIR+10', ''),
(126, 'LARISSO', 'JL.WATU ULO NO 21 AMBULU JEMBER ', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(127, 'LARISSO 2', 'JL.RAYA KRATON 4 KENCONG JEMBER ', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(128, 'LUWES - BENGAWAN MULTI NUSUKAN', 'JL KAPTEN TENDEAN NO 207 RT 003 RW 002 NUSUKAN BANJARSARI,SURAKARTA JAWA ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(129, 'LUWES - BLORA', '  JL. PEMUDA NO. 75 BLORA', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(130, 'LUWES - DELANGGU', 'JL RAYA DELANGGU UTARA NO 15, DELANGGU KLATEN JAWA  ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(131, 'LUWES - GADING', 'JL VETERAN NO 50 RT 01 /RW 01, GAJAHAN PASAR KLIWON , SURAKARTA JAWA TENGAH (57115)', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(132, 'LUWES - GENTAN', '  JL SONGGOLANGIT, PONDOK   BARU, GENTAN SUKOHARJO,   JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(133, 'LUWES - KARTASURO (BENGAWAN RETAIL)', 'JL ADI SUMARMO NO 95 RT01/RW 03 DS NGABEYAN KEC.KARTASURA ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(134, 'LUWES - KESTALAN', 'JL LETNAN JENDRAL S.PARMAN NO 117 RT 02 RW 02 KESTALAN BANJARSARI-SURAKARTA JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(135, 'LUWES - PATI ', 'JL DR SUTOMO NO 26 DK.KRANGGAN RT 002/RW 003 PATI KIDUL JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(136, 'LUWES - PURWODADI', 'JL R.SUPRAPTO NO.93B PURWODADI-GROBONGAN JAWA TENGAH', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(137, 'LUWES - UNGARAN', 'JL BRIGJEND SUDIARTO RT.008 RW.02 UNGARAN KAB.SEMARANG JAWA TENGAH (50511)', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(138, 'LUWES BOYOLALI', 'Jl. Pandanaran No.52 RT 001 RW 011 Boyolali', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(139, 'MANDALA MART', 'SULTAN HASANUDIN 01 TALANG BAKUNG JAMBI 0741-3065657 / 0741-3065285', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(140, 'MANDALA SUPERMARKET', 'JL.MR ASSAAT NO.10 JAMBI 0741-33534-35 / 0741-26054', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(141, 'MARELAN RITELINDO, CV - IRIAN  BAHAGIA', 'JL.HM JONI NO.1 TELADAN TIMUR', NULL, 'SUMATRA', 6000000, 'HET JAWA', '36%'),
(142, 'MARELAN RITELINDO, CV - IRIAN AKSARA', 'JL.AKSARA NO.120 MEDAN ESTATE PERCUT SEI TUAN', NULL, 'SUMATRA', 6000000, 'HET JAWA', '36%'),
(143, 'MARELAN RITELINDO, CV - IRIAN KISARAN', 'JL.IMAM BONJOL NO.149 RT.RW. KEL.KISARAN TIMUR KEC.KOTA KISARAN TIMUR , ASAHAN SUMATERA UTARA', NULL, 'SUMATRA', 6000000, 'HET JAWA', '36%'),
(144, 'MARELAN RITELINDO, CV - IRIAN KONYA', 'JL.KARYA NO.116 SEI AGUL MEDAN BARAT', NULL, 'SUMATRA', 6000000, 'HET JAWA', '36%'),
(145, 'MARELAN RITELINDO, CV - IRIAN MARELAN', 'JL.MARELAN RAYA NO.188 RENGAS PULAU-MEDAN MARELAN', NULL, 'SUMATRA', 6000000, 'HET JAWA', '36%'),
(146, 'MARELAN RITELINDO, CV - IRIAN TAMORA', 'JL.IRIAN 83-D, TANJUNG MORAWA A TANJUNG MORAWA, DELI SERDANG SUMATERA UTARA', NULL, 'SUMATRA', 6000000, 'HET JAWA', '36%'),
(147, 'MARELAN RITELINDO, CV - IRIAN TEBING TINGGI', '  JL.THAMRIN 48 PASAR GAMBIR,   TEBING TINGGI', NULL, 'SUMATRA', 6000000, 'HET JAWA', '36%'),
(148, 'MARELAN RITELINDO, CV - IRIAN TEMBUNG', 'JL.MEDAN BATANG KUIS DSN XI NO 8 RT.0 RW.0 BANDAR KLIPPA-PERCUT SEI TUAN DELI SERDANG', NULL, 'SUMATRA', 6000000, 'HET JAWA', '36%'),
(149, 'MATAHARI TOSERBA', 'JL.RAYA SUKOWATI 273 SRAGEN', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(150, 'MERANTI SWALAYAN', 'TALANG BANJAR (JL GR DJAMIN DATUK BAGINDO NO.52 , RT.013/04 JAMBI TIMUR , 0813 732 32 752 ', NULL, 'SUMATRA', 6000000, 'HET JAWA', '30%'),
(151, 'MICKEY MOUSE', 'JL.JATEN GEDHE TIMUR 2 NO.9 ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(152, 'MICKEY MOUSE WONOSOBO SHOP', 'JL.JATEN GEDHE TIMUR 2 NO.9 ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(153, 'MIROTA GEJAYA', 'JL. GEJAYAN CT9 YOGYAKARTA TELP. 0274558316', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(154, 'MIROTA KAMPUS GODEAN', 'JL GODEAN KM 2.8 KM YOGYAKARTA ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(155, 'MIROTA KAMPUS SIMAJUNTAK', 'JL.C SIMANJUTAK NO.70  YOGYAKARTA TELP.0274-561254', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(156, 'MIROTA PASARAYA', 'JL. KALIURANG KM6.1 YOGYAKARTA 55281, 0274 - 884571', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(157, 'MITRA ARMADA SEJAHTERA, PT', 'JL. MAYJEND BAMBANG SOEGENG, MERTOYUDAN - MAGELANG, 0293 368282 / 368022', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(158, 'MORO GROSIR & RITEL', 'JL. PERINTIS KEMERDEKAAN NO. 7 PURWOKERTO (0281) 625100', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(159, 'MUTIARA CAHAYA - MALL', 'JL.LETJEN SUPRAPTO NO.71 SLAWI TEGAL', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(160, 'MUTIARA CAHAYA - MEJASEM', 'JL.PALA RAYA NO.18 MEJASEM TEGAL, NO TELP.0283-6145448', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(161, 'PANGESTU FASHION', 'JL.PANGLIMA SUDIRMAN NO.31 JUWANA PATI JATENG ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(162, 'PARKIR FASHION - PARKIR 1', 'KOMP PERTOKOAN GRIYA RIATUR MEDAN', NULL, 'SUMATRA', 6000000, 'RETAIL', '30%'),
(163, 'PARKIR FASHION - PARKIR 2', 'KOMP J CITYBLOCK 29', NULL, 'SUMATRA', 6000000, 'RETAIL', '30%'),
(164, 'PARKIR FASHION - PARKIR 3', 'KOMP MERCI MEDAN RESORT CITY', NULL, 'SUMATRA', 6000000, 'RETAIL', '30%'),
(165, 'PASARAYA JANUPURA', 'JL.RAYA CEBONGAN LOR TLOGOADI MLATI SLEMAN YOGYAKARTA', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(166, 'PERSADA SWALAYAN', 'JL. MT HARYONO 11, DINOYO MALANG - JAWA TIMUR \'081384025975', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '20%'),
(167, 'PROGO', 'JL. SURYOTOMO NO. 29 YOGYAKARTA', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(168, 'PT ASIA TRITUNGGAL JAYA -  ASIA CIHIDEUNG', 'Jl. Cihideung No 18 Rt 001. Rw 004 Yudanagara, Cihideung, Kota Tasikmalaya, Jawa Barat ', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(169, 'PT ASIA TRITUNGGAL JAYA  - ASIA CIREBON', 'Jl. Karanggetas No 25-27 Rt 001 Rw 003 Kel Panjunan Kec Lemahwungkuk Kota Cirebon\n', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(170, 'PT ASIA TRITUNGGAL JAYA  - ASIA GARUT', 'Jl. Jendral Ahmad Yani No 162 Kel. Ciwalen, Kec Garut Kota, Kab Garut', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(171, 'PT ASIA TRITUNGGAL JAYA - ASIA SUMEDANG', 'Jl. Abdurahman Blok l 10 Kota Kaler Sumedang Utara, Sumedang Jawa barat', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(172, 'PT ASIA TRITUNGGAL JAYA - JERRY TASIKMALAYA', 'JL. HZ MUSTOFA NO.326 TASIKMALAYA', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '30%'),
(173, 'PUNCAK JAYA LESTARI - BLINYU', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', NULL, 'JAKARTA', 0, 'RETAIL', '25%+5%'),
(174, 'PUNCAK JAYA LESTARI - KEPAHIANG', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', NULL, 'JAKARTA', 0, 'RETAIL', '25%+5%'),
(175, 'PUNCAK JAYA LESTARI - MANGGAR', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', NULL, 'JAKARTA', 0, 'RETAIL', '25%+5%'),
(176, 'PUNCAK JAYA LESTARI - PANGKAL PINANG', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', NULL, 'JAKARTA', 0, 'RETAIL', '25%+5%'),
(177, 'PUNCAK JAYA LESTARI - PUNCAK BENGKULU', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS', NULL, 'JAKARTA', 0, 'RETAIL', '25%+5%'),
(178, 'PUNCAK JAYA LESTARI - SEMABUNG', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', NULL, 'JAKARTA', 0, 'RETAIL', '25%+5%'),
(179, 'PUNCAK JAYA LESTARI - SUNGAI LIAT', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', NULL, 'JAKARTA', 0, 'RETAIL', '25%+5%'),
(180, 'PUNCAK JAYA LESTARI - TANJUNG PANDAN', 'JL. TUBAGUS ANGKE KOMP. DUTA MAS, BLOK E9 NO.27', NULL, 'JAKARTA', 0, 'RETAIL', '25%+5%'),
(181, 'RAMA 88', 'JL.RAYA KELET JEPARA KM 36 SEBELAH TIMUR PASAR KELET, TELP. 0291 578070', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(182, 'RAMA SWALAYAN KELET', 'Jl. Raya Jepara Kelet Depan RSUD Kelet', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(183, 'RAMA SWALAYAN MLONGGO', 'JL.RAYA JEPARA BANGSRI SEBELAH TIMUR BALAI DESA SEKURO RT/RW 04/01  TELP. 085217322891', NULL, 'JAWA TENGAH', 2000002, 'RETAIL', '25%'),
(184, 'RAMAI', 'JL. JEND. A YANI 73, YOGYAKARTA - 55122', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(185, 'RAMAI SUKSES MAKMUR', 'JL.ABDULRAHMAN SALEH 247 KEMBANGARUM SEMARANG 50148 SEMARANG TELP(0248)7624436/7624437', NULL, 'JAWA TENGAH', 2000000, 'GROSIR+10', ''),
(186, 'RAMAI SUKSES MAKMUR', 'JL.ABDULRAHMAN SALEH 247 KEMBANGARUM SEMARANG 50148 SEMARANG TELP(0248)7624436/7624437', NULL, 'JAWA TENGAH', 2000000, 'GROSIR+10', ''),
(187, 'RAMAI UNGARAN 1', 'JL. GATOT SUBROTO 142 UNGARAN (024) 6921781', NULL, 'JAWA TENGAH', 2000000, 'GROSIR', ''),
(188, 'RAMAI UNGARAN 2', 'JL. GATOT SUBROTO 142 UNGARAN (024) 6921782', NULL, 'JAWA TENGAH', 2000000, 'GROSIR', ''),
(189, 'RENY SWALAYANKU', 'JL. BRATANG GEDE NO 132-134 SURABAYA ', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '30%'),
(190, 'RITA RITELINDO - BARAT', 'JL.SLAMET SUPRIYADI NO.288', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '27%'),
(191, 'RITA RITELINDO - CILACAP', 'JL.SLAMET SUPRIYADI NO.288, PURWOKERTO - 53116', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(192, 'RITA RITELINDO - ISOLA', 'JL.SLAMET SUPRIYADI NO.288', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(193, 'RITA RITELINDO - KATO', 'JL.SLAMET SUPRIYADI NO.288', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(194, 'RITA RITELINDO - KEBONDALEM', 'JL.SLAMET SUPRIYADI NO.288', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(195, 'RITA RITELINDO - KEBUMEN', '  JL. SLAMET RIYADI NO. 70', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(196, 'RITA RITELINDO - MALL PURWOKERTO (RL)', 'JL.SLAMET SUPRIYADI NO.288', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(197, 'RITA RITELINDO - PASARAYA', 'JL. SLAMET RIYADI NO. 70', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(198, 'RITA RITELINDO - SOKARAJA', ' JL. SLAMET RIYADI NO. 70', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(199, 'RITA RITELINDO - SUPERMARKET MALL PURWOKERTO', '  JL.SLAMET SUPRIYADI NO.288 (GUDANG 1)', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(200, 'RITA RITELINDO - SUPERMARKET MALL TEGAL', 'Jl KOLONEL  SUGIONO NO 155 TEGAL. JAWA TENGAH ', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(201, 'RITA RITELINDO - TEGAL', 'JL.SLAMET SUPRIYADI NO.288', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(202, 'RITA RITELINDO - WONOSOBO', '  JL.SLAMET SUPRIYADI NO.288', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(203, 'ROMA SALATIGA', 'JL. JENDRAL SUDIRMAN KALICACING', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(204, 'ROXY FASHION', '  JL. A.YANI NO 21-23 BANYUWANGI   JAWA TIMUR, TLP. 0333428684/081332515151', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '30%'),
(205, 'ROXY SITUBONDO', '  JL. BASUKI RAHMAT NO. 11   JATIM TLP. 0338671721', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(206, 'RUBY 1', 'JL.RAYA PEJANGGIK NO.III F CAKRANEGARA BARAT CAKRANEGARA KODYA MATARAM - 83231 0370-624421', NULL, 'NTB', 6000000, 'RETAIL', '30%'),
(207, 'RUBY 2', 'JL.RAYA PEJANGGIK NO.III F CAKRANEGARA BARAT CAKRANEGARA KODYA MATARAM - 83231 0370-624421', NULL, 'NTB', 6000000, 'RETAIL', '30%'),
(208, 'SAKINAH', 'JL ARIF RAHMAN HAKIM NO 32 SURABAYA ', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '30%'),
(209, 'SAMA-SAMA', 'JL SOEKARNO HATTA NO 310 KENDAL TELP.0294381518', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(210, 'SAMI LARIS (CV. ANGGRAINI SEJATI  CEMERLANG)', 'Jl. Jend. Suprapto No 69  Rt 07/Rw 07, Cilacap, Jawa Tengah', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(211, 'SAMUDRA DEPT STORE - BANJAR', 'HZ. MUSTOPA NO.59 TASIKMALAYA TLP :0265-330081', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '35%'),
(212, 'SAMUDRA DEPT STORE - BANJARSARI', 'JL. HZ MUSTOFA NO.59 - 123 TASIKMALAYA, 0265-330081', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '35%'),
(213, 'SAMUDRA DEPT STORE - TASIKMALAYA', ' JL. HZ MUSTOFA NO.59 - 123 TASIKMALAYA,  0265-330081', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '35%'),
(214, 'SAMUDRA SWALAYAN TUBAN', 'JL.DIPONEGORO NO 33 TUBAN', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '30%'),
(215, 'SANRIO', 'JL.BHAYANGKARA 22  MOJOKERTO TELP. 0321 322631', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(216, 'SAUDARA PUTRA PRIMA', 'JL. SOEKARNOHATTA KM.6 JEPARA', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '30%'),
(217, 'SENDY\'S PUTRA JAYA', 'JL.CILIK RIWUT KM.1, PALANGKARAYA, KALIMANTAN TENGAH TELP. 085751577471', NULL, 'KALIMANTAN 2', 14000000, 'HET JAWA', '25%'),
(218, 'SINAR ASIA PASIFIK (SANDANG AYU PANDAAN)', 'JL. KARTINI LINGKUNGAN JOGONALAN RT /RW 002/004, JOGOSARI PANDAAN PASURUAN JATIM (BEKAS BIOSKOP SRIKANDI), TELP. 0343636363', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(219, 'SUJARWO AYU ', 'KIRIM KE ALAMAT : DESA SISUMUT, BLOK 9 JALAN JAWA KECAMATAN KOTA PINANG, KABUPATEN LABUHAN BATU SELATAN PROVINSI SUMATERA UTARA TELP. 081260444300', NULL, 'SUMATRA', 6000000, 'GROSIR', ''),
(220, 'SUN EAST MALL', 'JL.DIPONEGORO NO.11 GENTENG ', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(221, 'SURYA LAKSANA PURWODADI', 'JL.R SUPRAPTO  NO 108 PURWODADI JATENG TELP.0292424333', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(222, 'SURYA LAKSANA PURWODADI', 'Jl. Suprapto 108 Purwodadi 0292-424333 / 081910769779', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(223, 'SURYA TOSERBA - CILEDUK', 'JL.MERDEKA BARAT NO. 42, CILEDUG - CIREBON', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(224, 'SURYA TOSERBA - CIREBON', 'JL. KARANGGETAS NO. 23, CIREBON', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(225, 'SURYA TOSERBA - INDRAMAYU', 'JL. JENDRAL SUDIRMAN NO. 46, INDRAMAYU', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(226, 'SURYA TOSERBA - JALAKSANA', 'JL.RAYA JALAKSANA NO.190, KUNINGAN', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(227, 'SURYA TOSERBA - JATIBARANG', '   JL.MAYOR DASUKI SEBELAH TERMINAL LAMA,    JATIBARANG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(228, 'SURYA TOSERBA - JATIWANGI', 'JL. LANUD S SUKATANI NO. 247 JATIWANGI, KAB. MAJALENGKA', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(229, 'SURYA TOSERBA - KADIPATEN', 'JL.SILIWANGI (EX PABRIK GULA) KADIPATEN, MAJALENGKA', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(230, 'SURYA TOSERBA - KUNINGAN', '   JL. SILIWANGI 99A,  KUNINGAN TLP   \'0232 871619', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(231, 'SURYA TOSERBA - LURAGUNG', 'JL. KI GEDENG LURAGUNG BLOK TONJONG/BLOK MANIS RT/RW 02/01 DESA , LURAGUNG LANDEUH ', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(232, 'SURYA TOSERBA - PAMANUKAN', 'JL.CECE JAKARIA /JL.PASAR IMPRES DESA PANCASARI PENGADANGAN, KEC.PAMANUKAN KAB-SUBANG', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(233, 'SURYA TOSERBA - RAJAWALI', 'JL. KARANGGETAS NO. 23, CIREBON TLP 0232 - 871619', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(234, 'SURYA TOSERBA - SUMBER', 'JL.DEWI SARTIKA NO.3 SUMBER, 0232 - 871619', NULL, 'JAWA BARAT', 1500000, 'RETAIL', '25%'),
(235, 'SWALAYAN MAHKOTA', ' JL. SULTAN AGUNG NO.61 SEMARANG', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(236, 'TAMBAH JAYA SWALAYAN', 'Rungkut Madya No.141 Surabaya 085230410359', NULL, 'JAWA TIMUR', 2500000, 'RETAIL', '25%'),
(237, 'TONG HIEN', ' JL. SULTAN AGUNG NO.61 SEMARANG,  TELP. 0248412817', NULL, 'JAWA TENGAH', 2000000, 'RETAIL', '25%'),
(238, 'BORNEO SUPERMARKET-  PASANAH', 'JL. Kawitan , Pangkalan Bun, Kalimantan Tengah  TELP.0532 23810', NULL, 'KALIMANTAN 2', 14000000, 'HET JAWA', '25%');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order_detail`
--

CREATE TABLE `tb_order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `id_role` int(1) NOT NULL COMMENT '1=administrator, 2=sales'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `id_role`) VALUES
(1, 'administrator', 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_order_detail`
--
ALTER TABLE `tb_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT untuk tabel `tb_order_detail`
--
ALTER TABLE `tb_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
