-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2022 pada 14.18
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_db_hotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_log`
--

CREATE TABLE `data_log` (
  `id` int(11) NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_log`
--

INSERT INTO `data_log` (`id`, `data`, `time`) VALUES
(1, '{\"get\":{\"t\":\"f_kamar\",\"v\":\"allcounter\"},\"post\":[]}', '2022-05-09 06:18:00'),
(2, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/data?t=f_kamar&v=allcounter\",\"get\":{\"link\":\"id\",\"val\":\"11\",\"t\":\"f_kamar\"},\"post\":{\"id\":\"11\",\"id_tipekamar\":\"2\",\"nama_fasilitas\":\"handuk\",\"kategory\":\"perlengkapan\",\"img\":\"https:\\/\\/i.ibb.co\\/jWvw6rb\\/Handuk.jpg\"}}', '2022-05-09 06:19:53'),
(3, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/data?t=f_kamar&v=allcounter\",\"get\":{\"t\":\"f_kamar\",\"v\":\"allcounter\"},\"post\":[]}', '2022-05-09 06:19:54'),
(4, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 02:58:11'),
(5, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 02:59:04'),
(6, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 02:59:17'),
(7, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-05-15 02:59:20'),
(8, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 02:59:38'),
(9, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"id\":\"2\"},\"post\":[]}', '2022-05-15 03:00:20'),
(10, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=2\",\"get\":{\"id\":\"2\"},\"post\":[]}', '2022-05-15 03:00:29'),
(11, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"id\":\"2\"},\"post\":[]}', '2022-05-15 03:00:40'),
(12, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=2\",\"get\":[],\"post\":[]}', '2022-05-15 03:00:49'),
(13, '{\"get\":[],\"post\":[]}', '2022-05-15 03:01:08'),
(14, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-05-15\",\"tgl_cekout\":\"2022-05-16\",\"jml_kamar\":\"2\",\"nama_pemesan\":\"ica, morep\",\"email\":\"radendefi@gmail.com\",\"no_hp\":\"0812349876\",\"id_kamar\":\"1\",\"PayBay\":\"Bayar Di Tempat\"}}', '2022-05-15 03:01:54'),
(15, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-05-15\",\"tgl_cekout\":\"2022-05-16\",\"jml_kamar\":\"2\",\"nama_pemesan\":\"ica, morep\",\"email\":\"radendefi@gmail.com\",\"no_hp\":\"0812349876\",\"id_kamar\":\"1\",\"PayBay\":\"Bayar Di Tempat\"}}', '2022-05-15 03:12:43'),
(16, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":[]}', '2022-05-15 03:12:44'),
(17, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":[]}', '2022-05-15 03:16:51'),
(18, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":[]}', '2022-05-15 03:37:16'),
(19, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"t\":\"f_hotel\",\"v\":\"allcounter\"},\"post\":[]}', '2022-05-15 03:40:17'),
(20, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/data?t=f_hotel&v=allcounter\",\"get\":{\"v\":\"add\",\"t\":\"f_hotel\"},\"post\":[]}', '2022-05-15 03:40:27'),
(21, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":[]}', '2022-05-15 03:55:45'),
(22, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"id\":\" 14\"},\"post\":[]}', '2022-05-15 04:00:00'),
(23, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/ref\",\"get\":{\"id\":\" 14\"},\"post\":[]}', '2022-05-15 04:13:19'),
(24, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 04:39:50'),
(25, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"t\":\"f_hotel\",\"v\":\"allcounter\"},\"post\":[]}', '2022-05-15 04:41:13'),
(26, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/data?t=f_hotel&v=allcounter\",\"get\":{\"link\":\"id\",\"val\":\"1\",\"t\":\"f_hotel\"},\"post\":{\"id\":\"1\",\"nama_fasilitas\":\"kolam renang\",\"img\":\"https:\\/\\/i.ibb.co\\/3hMV9D4\\/reang.jpg\",\"deks\":\"hotel\"}}', '2022-05-15 04:41:26'),
(27, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Admin\\/data?t=f_hotel&v=allcounter\",\"get\":{\"t\":\"f_hotel\",\"v\":\"allcounter\"},\"post\":[]}', '2022-05-15 04:41:28'),
(28, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":{\"t\":\"f_hotel\",\"v\":\"allcounter\"},\"post\":[]}', '2022-05-15 05:07:45'),
(29, '{\"get\":{\"t\":\"f_hotel\",\"v\":\"allcounter\"},\"post\":[]}', '2022-05-15 05:07:55'),
(30, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 05:17:50'),
(31, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 05:23:29'),
(32, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\" 041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:23:52'),
(33, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\" 041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:25:58'),
(34, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 05:26:04'),
(35, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\" 041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:26:06'),
(36, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\" 041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:30:24'),
(37, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\" 041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:30:32'),
(38, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\" 041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:31:45'),
(39, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 05:32:16'),
(40, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\" 041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:32:23'),
(41, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=+041122Bayar+Di+Tempat053821\",\"get\":{\"ref\":\" 041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:32:35'),
(42, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=+041122Bayar+Di+Tempat053821\",\"get\":{\"ref\":\" 041122Bayar Di Tempat053821 041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:32:41'),
(43, '{\"get\":[],\"post\":[]}', '2022-05-15 05:36:50'),
(44, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\"041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:37:07'),
(45, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=041122Bayar+Di+Tempat053821\",\"get\":{\"id\":\"14\",\"f\":\"PayEND\",\"v\":\"1\"},\"post\":[]}', '2022-05-15 05:38:48'),
(46, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=041122Bayar+Di+Tempat053821\",\"get\":{\"ref\":\"041122Bayar Di Tempat053821\"},\"post\":[]}', '2022-05-15 05:38:48'),
(47, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":[]}', '2022-05-15 05:39:07'),
(48, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=041122Bayar+Di+Tempat053821\",\"get\":{\"ref\":\" 042522Bayar Di Tempat061206\"},\"post\":[]}', '2022-05-15 05:39:22'),
(49, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=+042522Bayar+Di+Tempat061206\",\"get\":{\"ref\":\" 042522Bayar Di Tempat061206\"},\"post\":[]}', '2022-05-15 05:39:27'),
(50, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=+042522Bayar+Di+Tempat061206\",\"get\":{\"ref\":\" 042522Bayar Di Tempat061206\"},\"post\":[]}', '2022-05-15 05:39:32'),
(51, '{\"get\":[],\"post\":[]}', '2022-05-15 05:39:41'),
(52, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\" 042522Bayar Di Tempat061206\"},\"post\":[]}', '2022-05-15 05:39:45'),
(53, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=+042522Bayar+Di+Tempat061206\",\"get\":{\"ref\":\" 042522Bayar Di Tempat061206\"},\"post\":[]}', '2022-05-15 05:40:22'),
(54, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=+042522Bayar+Di+Tempat061206\",\"get\":{\"ref\":\" 042522Bayar Di Tempat061206\"},\"post\":[]}', '2022-05-15 05:45:12'),
(55, '{\"get\":[],\"post\":[]}', '2022-05-15 05:55:01'),
(56, '{\"get\":{\"t\":\"pemesanan\"},\"post\":[]}', '2022-05-15 05:57:11'),
(57, '{\"get\":{\"t\":\"pemesanan\"},\"post\":[]}', '2022-05-15 06:29:43'),
(58, '{\"get\":{\"t\":\"pemesanan\"},\"post\":[]}', '2022-05-15 06:35:03'),
(59, '{\"get\":{\"t\":\"pemesanan\"},\"post\":[]}', '2022-05-15 06:35:06'),
(60, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan\",\"get\":{\"t\":\"pemesanan\"},\"post\":{\"nama_tamu\":\"ica\"}}', '2022-05-15 06:41:59'),
(61, '{\"get\":[],\"post\":[]}', '2022-05-15 06:42:22'),
(62, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-05-15\",\"tgl_cekout\":\"2022-05-16\",\"jml_kamar\":\"2\",\"nama_pemesan\":\"ica\",\"email\":\"radendefi@gmail.com\",\"no_hp\":\"0812349876\",\"id_kamar\":\"1\",\"PayBay\":\"Bayar Di Tempat\"}}', '2022-05-15 06:42:45'),
(63, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":[]}', '2022-05-15 06:42:45'),
(64, '{\"get\":[],\"post\":[]}', '2022-05-15 06:42:54'),
(65, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":[]}', '2022-05-15 06:43:12'),
(66, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-05-15 06:43:31'),
(67, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/welcome\\/now\",\"get\":[],\"post\":[]}', '2022-05-15 06:43:34'),
(68, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-05-15 06:43:37'),
(69, '{\"get\":{\"v\":\"pemesanan\"},\"post\":[]}', '2022-05-15 06:44:48'),
(70, '{\"get\":{\"t\":\"pemesanan\"},\"post\":[]}', '2022-05-15 06:44:56'),
(71, '{\"get\":{\"t\":\"pemesanan\"},\"post\":[]}', '2022-05-15 06:45:09'),
(72, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan\",\"get\":{\"t\":\"pemesanan\"},\"post\":{\"nama_tamu\":\"ica\"}}', '2022-05-15 06:45:18'),
(73, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan\",\"get\":{\"t\":\"pemesanan\"},\"post\":{\"tgl_cekin\":\"2022-05-16\"}}', '2022-05-15 06:45:28'),
(74, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan\",\"get\":{\"t\":\"pemesanan\"},\"post\":{\"tgl_cekin\":\"2022-05-16\"}}', '2022-05-15 06:48:53'),
(75, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan\",\"get\":{\"t\":\"pemesanan\"},\"post\":{\"tgl_cekin\":\"2022-05-16\"}}', '2022-05-15 06:49:51'),
(76, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan\",\"get\":{\"t\":\"pemesanan\"},\"post\":{\"tgl_cekin\":\"2022-05-15\"}}', '2022-05-15 06:49:59'),
(77, '{\"get\":[],\"post\":[]}', '2022-05-15 06:50:41'),
(78, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 06:51:55'),
(79, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"id\":\"3\"},\"post\":[]}', '2022-05-15 06:52:03'),
(80, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"id\":\"3\"},\"post\":[]}', '2022-05-15 06:52:09'),
(81, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=3\",\"get\":{\"id\":\"3\"},\"post\":[]}', '2022-05-15 06:52:12'),
(82, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/booknow?id=3\",\"get\":[],\"post\":{\"tgl_cekin\":\"2022-05-15\",\"tgl_cekout\":\"2022-05-16\",\"jml_kamar\":\"2\",\"nama_pemesan\":\"Niki Annisa\",\"email\":\"annisaaryani024@gmail.com\",\"no_hp\":\"091567812543\",\"nama_tamu\":\"ica, morep\",\"id_kamar\":\"3>\",\"PayBay\":\"Bayar Di Tempat\"}}', '2022-05-15 06:52:41'),
(83, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/booknow?id=3\",\"get\":[],\"post\":[]}', '2022-05-15 06:52:42'),
(84, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/datatrack\",\"get\":{\"ref\":\"051522Bayar Di Tempat085241\"},\"post\":[]}', '2022-05-15 06:53:15'),
(85, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/detailTipe?id=3\",\"get\":{\"id\":\"3\"},\"post\":[]}', '2022-05-15 07:46:42'),
(86, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"id\":\"3\"},\"post\":[]}', '2022-05-15 07:47:36'),
(87, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"id\":\"3\"},\"post\":[]}', '2022-05-15 07:47:53'),
(88, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 07:47:59'),
(89, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"id\":\"1\"},\"post\":[]}', '2022-05-15 07:48:05'),
(90, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=051522Bayar+Di+Tempat085241\",\"get\":{\"id\":\"18\",\"f\":\"PayEND\",\"v\":\"1\"},\"post\":[]}', '2022-05-15 07:49:59'),
(91, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack?ref=051522Bayar+Di+Tempat085241\",\"get\":{\"ref\":\"051522Bayar Di Tempat085241\"},\"post\":[]}', '2022-05-15 07:49:59'),
(92, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/datatrack\",\"get\":{\"ref\":\"051522Bayar Di Tempat085241\"},\"post\":[]}', '2022-05-15 08:01:06'),
(93, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/datatrack\",\"get\":{\"ref\":\"051522Bayar Di Tempat085241\"},\"post\":[]}', '2022-05-15 08:01:10'),
(94, '{\"get\":[],\"post\":[]}', '2022-05-15 08:01:23'),
(95, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\"051522Bayar Di Tempat051243\"},\"post\":[]}', '2022-05-15 08:02:10'),
(96, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\"051522Bayar Di Tempat051243\"},\"post\":[]}', '2022-05-15 08:05:32'),
(97, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\"051522Bayar Di Tempat051243\"},\"post\":[]}', '2022-05-15 08:07:57'),
(98, '{\"get\":[],\"post\":[],\"user\":null}', '2022-05-15 08:22:25'),
(99, '{\"get\":[],\"post\":[],\"user\":null}', '2022-05-15 08:23:26'),
(100, '{\"get\":[],\"post\":[],\"users\":null}', '2022-05-15 08:24:03'),
(101, '{\"get\":[],\"post\":[],\"user\":null}', '2022-05-15 08:27:04'),
(102, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 08:27:26'),
(103, '{\"get\":{\"t\":\"pemesanan\"},\"post\":[]}', '2022-05-15 08:27:54'),
(104, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/call?t=pemesanan\",\"get\":{\"t\":\"pemesanan\"},\"post\":{\"tgl_cekin\":\"2022-05-15\"}}', '2022-05-15 08:28:12'),
(105, '{\"get\":[],\"post\":[]}', '2022-05-15 08:28:20'),
(106, '{\"get\":[],\"post\":[],\"user\":null}', '2022-05-15 08:28:44'),
(107, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[],\"user\":null}', '2022-05-15 08:28:55'),
(108, '{\"get\":[],\"post\":[],\"user\":null}', '2022-05-15 08:33:42'),
(109, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 08:33:56'),
(110, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-05-15 08:34:11'),
(111, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 08:44:36'),
(112, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 08:44:42'),
(113, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 08:45:42'),
(114, '{\"get\":[],\"post\":[]}', '2022-05-15 08:46:26'),
(115, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"id\":\"1\"},\"post\":[]}', '2022-05-15 08:51:49'),
(116, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":{\"id\":\"1\"},\"post\":[]}', '2022-05-15 08:51:54'),
(117, '{\"get\":[],\"post\":[]}', '2022-05-15 08:51:59'),
(118, '{\"get\":[],\"post\":[]}', '2022-05-15 08:52:34'),
(119, '{\"get\":[],\"post\":[]}', '2022-05-15 08:53:18'),
(120, '{\"get\":[],\"post\":[]}', '2022-05-15 08:54:57'),
(121, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 08:56:34'),
(122, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-05-15 08:56:42'),
(123, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 08:56:46'),
(124, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/TipeKamar\",\"get\":[],\"post\":[]}', '2022-05-15 09:23:49'),
(125, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 09:23:57'),
(126, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 09:27:01'),
(127, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/\",\"get\":[],\"post\":[]}', '2022-05-15 09:33:56'),
(128, '{\"get\":[],\"post\":[]}', '2022-05-15 09:34:06'),
(129, '{\"get\":[],\"post\":[]}', '2022-05-15 09:34:47'),
(130, '{\"get\":[],\"post\":[]}', '2022-05-15 09:35:57'),
(131, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/logout\",\"get\":[],\"post\":[]}', '2022-05-15 09:35:59'),
(132, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Tamu\\/logout\",\"get\":[],\"post\":[]}', '2022-05-15 09:36:02'),
(133, '{\"get\":[],\"post\":[]}', '2022-05-15 09:36:13'),
(134, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Auth\\/login\",\"get\":[],\"post\":[]}', '2022-05-15 09:39:27'),
(135, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\"051522Bayar Di Tempat051243\"},\"post\":[]}', '2022-05-15 09:45:13'),
(136, '{\"get\":[],\"post\":[]}', '2022-05-15 10:05:02'),
(137, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\"051522Bayar Di Tempat051243\"},\"post\":[]}', '2022-05-15 10:05:21'),
(138, '{\"comefrom\":\"http:\\/\\/localhost\\/hotel\\/Resepsionis\\/Datatrack\",\"get\":{\"ref\":\"051522Bayar Di Tempat051243\"},\"post\":[]}', '2022-05-15 10:06:17'),
(139, '{\"get\":{\"t\":\"pemesanan\"},\"post\":[]}', '2022-05-15 10:13:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_hotel`
--

CREATE TABLE `f_hotel` (
  `id` int(11) NOT NULL,
  `nama_fasilitas` text NOT NULL,
  `img` text NOT NULL,
  `deks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `f_hotel`
--

INSERT INTO `f_hotel` (`id`, `nama_fasilitas`, `img`, `deks`) VALUES
(1, 'kolam renang', 'https://i.ibb.co/3hMV9D4/reang.jpg', 'hotel'),
(2, 'gim', 'https://i.ibb.co/HrM327y/gim.jpg', 'hotel'),
(3, 'Kafe', 'https://i.ibb.co/0mh4y5c/restoran.jpg', 'hotel'),
(4, 'Billiard', 'https://i.ibb.co/TYFFdLK/bil.jpg', 'hotel'),
(5, 'ruang serbaguna', 'https://i.ibb.co/HB067Gw/ruang-serbaguna.webp', 'hotel\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `f_kamar`
--

CREATE TABLE `f_kamar` (
  `id` int(11) NOT NULL,
  `id_tipekamar` int(3) NOT NULL,
  `nama_fasilitas` text DEFAULT NULL,
  `kategory` varchar(255) DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `f_kamar`
--

INSERT INTO `f_kamar` (`id`, `id_tipekamar`, `nama_fasilitas`, `kategory`, `img`) VALUES
(1, 1, 'TV LED', 'Electronic', 'https://i.ibb.co/CQmsbNK/123.jpg'),
(2, 1, 'Sofa ', 'Aksesoris', 'https://i.ibb.co/WV96TWp/sfa3.jpg'),
(3, 1, 'Meja Rias', 'Aksesoris', 'https://i.ibb.co/TMmBFzf/meja-rias.webp\r\n'),
(4, 1, 'Kasur King Size', 'Aksesoris', 'https://i.ibb.co/LzQ2MGk/kasur.jpg'),
(5, 1, 'Meja makan', 'Electronic', 'https://i.ibb.co/VNcVsJY/meja-makan.png'),
(6, 1, 'Mantel Mandi dan Handuk', 'Perlengkapan', 'https://i.ibb.co/jWvw6rb/Handuk.jpg'),
(7, 1, 'Meja Tulis', 'Aksesoris', 'https://i.ibb.co/f2y1gGw/meja-tulis.jpg'),
(8, 2, 'TV Led', 'Electronic', 'https://i.ibb.co/CQmsbNK/123.jpg'),
(9, 2, 'Meja Tulis', 'Aksesoris', 'https://i.ibb.co/f2y1gGw/meja-tulis.jpg'),
(10, 2, 'kasur queen size', 'aksesoris', 'https://i.ibb.co/rZnN31k/kasur-queen.webp'),
(11, 2, 'handuk', 'perlengkapan', 'https://i.ibb.co/jWvw6rb/Handuk.jpg'),
(12, 3, 'kasur single', 'aksesoris', 'https://i.ibb.co/rvxPSvZ/kasur-single.webp'),
(13, 3, 'meja rias', 'aksesoris', 'https://i.ibb.co/TMmBFzf/meja-rias.webp\r\n'),
(14, 3, 'handuk', 'perlengkapan', 'abchttps://i.ibb.co/jWvw6rb/Handuk.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pesanan` int(11) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_hp` varchar(35) NOT NULL,
  `nama_tamu` varchar(50) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `tgl_cekin` date NOT NULL,
  `tgl_cekout` date NOT NULL,
  `jml_kamar` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `PayBay` varchar(244) NOT NULL,
  `PayEND` int(1) NOT NULL,
  `No_Kamar` varchar(255) NOT NULL,
  `RefPB` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesanan`, `nama_pemesan`, `email`, `no_hp`, `nama_tamu`, `id_kamar`, `tgl_cekin`, `tgl_cekout`, `jml_kamar`, `Harga`, `PayBay`, `PayEND`, `No_Kamar`, `RefPB`) VALUES
(14, 'Niki Annisa', 'tupperware746@gmail.com', '091567812543', 'barbar', 1, '2022-04-28', '2022-04-30', 2, 6000000, 'Bayar Di Tempat', 1, '0', '041122Bayar Di Tempat053821'),
(15, 'Niki Annisa', 'franschaniago5@gmail.com', '091567812543', 'ica', 2, '2022-04-27', '2022-04-28', 1, 1500000, 'Bayar Di Tempat', 1, '', '042522Bayar Di Tempat061206'),
(16, 'ica, morep', 'radendefi@gmail.com', '0812349876', '', 1, '2022-05-15', '2022-05-16', 2, 6000000, 'Bayar Di Tempat', 0, '', '051522Bayar Di Tempat051243'),
(17, 'ica', 'radendefi@gmail.com', '0812349876', '', 1, '2022-05-15', '2022-05-16', 2, 6000000, 'Bayar Di Tempat', 0, '', '051522Bayar Di Tempat084245'),
(18, 'Niki Annisa', 'annisaaryani024@gmail.com', '091567812543', 'ica, morep', 3, '2022-05-15', '2022-05-16', 2, 1000000, 'Bayar Di Tempat', 1, '', '051522Bayar Di Tempat085241');

--
-- Trigger `pemesanan`
--
DELIMITER $$
CREATE TRIGGER `batal` AFTER DELETE ON `pemesanan` FOR EACH ROW UPDATE
tipe_room
SET Stok = Stok + OLD.jml_kamar
WHERE
id = OLD.id_kamar
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `stok` AFTER INSERT ON `pemesanan` FOR EACH ROW UPDATE 
tipe_room set Stok = Stok-NEW.jml_kamar

WHERE
id = NEW.id_kamar
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_room`
--

CREATE TABLE `tipe_room` (
  `id` int(11) NOT NULL,
  `Nama_room` varchar(244) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `Stok` int(11) NOT NULL,
  `onuse` int(11) NOT NULL,
  `onbook` int(11) NOT NULL,
  `img_room` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tipe_room`
--

INSERT INTO `tipe_room` (`id`, `Nama_room`, `harga`, `Stok`, `onuse`, `onbook`, `img_room`) VALUES
(1, 'Suite', 3000000, 6, 0, 0, 'https://i.ibb.co/3MBpcpc/suite.jpg'),
(2, 'Deluxe', 1500000, 9, 0, 0, 'https://i.ibb.co/G52gbWn/deluxe.webp'),
(3, 'Single', 500000, 28, 0, 0, 'https://i.ibb.co/J3ZqJ80/single2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_login` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Jenis_Kelamin` varchar(255) NOT NULL,
  `tgllahir` date NOT NULL,
  `no_telp` varchar(14) NOT NULL,
  `level` enum('admin','resepsionis','tamu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_login`, `username`, `password`, `Nama`, `Jenis_Kelamin`, `tgllahir`, `no_telp`, `level`) VALUES
(6, 'icasekar', '12345678', 'Annisa Sekar ', 'Perempuan', '2004-06-19', '081584029962', 'resepsionis'),
(7, 'admin', '12345678', 'admin inimah', 'Laki-Laki', '0000-00-00', '081221823861', 'admin'),
(15, 'nikica', '12345678', 'Niki Annisa', 'perempuan', '2005-12-09', '091567812543', 'tamu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_log`
--
ALTER TABLE `data_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `f_hotel`
--
ALTER TABLE `f_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `f_kamar`
--
ALTER TABLE `f_kamar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_kamar` (`id_kamar`);

--
-- Indeks untuk tabel `tipe_room`
--
ALTER TABLE `tipe_room`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_log`
--
ALTER TABLE `data_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `f_hotel`
--
ALTER TABLE `f_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `f_kamar`
--
ALTER TABLE `f_kamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tipe_room`
--
ALTER TABLE `tipe_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
