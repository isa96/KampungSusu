-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2019 pada 15.40
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampungsusu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sensing`
--

CREATE TABLE `sensing` (
  `id` int(11) NOT NULL,
  `tanggal` timestamp(1) NOT NULL DEFAULT CURRENT_TIMESTAMP(1) ON UPDATE CURRENT_TIMESTAMP(1),
  `flamevalue` varchar(11) NOT NULL,
  `gasvalue` varchar(11) NOT NULL,
  `suhu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sensing`
--

INSERT INTO `sensing` (`id`, `tanggal`, `flamevalue`, `gasvalue`, `suhu`) VALUES
(38, '2019-11-05 06:02:54.8', 'OFF', 'OFF', 0),
(39, '2019-11-05 06:03:01.8', 'OFF', 'OFF', 0),
(40, '2019-11-05 06:03:08.9', 'OFF', 'OFF', 0),
(41, '2019-11-05 06:03:15.9', 'OFF', 'OFF', 0),
(42, '2019-11-05 06:03:22.9', 'OFF', 'OFF', 0),
(43, '2019-11-05 06:03:30.0', 'OFF', 'OFF', 0),
(44, '2019-11-05 06:03:37.0', 'OFF', 'OFF', 0),
(45, '2019-11-05 06:03:44.0', 'OFF', 'OFF', 0),
(46, '2019-11-05 06:03:51.1', 'OFF', 'OFF', 0),
(47, '2019-11-05 06:03:58.1', 'OFF', 'OFF', 0),
(48, '2019-11-05 06:04:05.2', 'OFF', 'ON', 0),
(49, '2019-11-05 06:04:12.2', 'OFF', 'ON', 0),
(50, '2019-11-05 06:04:19.2', 'OFF', 'OFF', 0),
(51, '2019-11-05 06:04:26.3', 'OFF', 'OFF', 0),
(52, '2019-11-05 06:04:33.3', 'OFF', 'OFF', 0),
(53, '2019-11-05 06:04:40.3', 'OFF', 'OFF', 0),
(54, '2019-11-05 06:04:47.4', 'OFF', 'OFF', 0),
(55, '2019-11-05 06:04:54.4', 'ON', 'OFF', 0),
(56, '2019-11-05 06:05:01.5', 'ON', 'OFF', 0),
(57, '2019-11-05 06:05:08.5', 'OFF', 'OFF', 0),
(58, '2019-11-05 06:05:15.6', 'OFF', 'OFF', 0),
(59, '2019-11-05 06:05:22.6', 'OFF', 'OFF', 0),
(60, '2019-11-05 06:05:29.6', 'OFF', 'OFF', 0),
(61, '2019-11-05 06:05:36.7', 'OFF', 'OFF', 0),
(62, '2019-11-05 06:05:43.7', 'OFF', 'OFF', 0),
(63, '2019-11-05 06:05:50.8', 'OFF', 'OFF', 0),
(64, '2019-11-05 06:05:57.8', 'OFF', 'OFF', 0),
(65, '2019-11-05 06:06:04.8', 'OFF', 'OFF', 0),
(66, '2019-11-05 06:06:41.4', 'OFF', 'OFF', 0),
(67, '2019-11-05 06:06:48.5', 'OFF', 'OFF', 0),
(68, '2019-11-05 06:06:55.5', 'OFF', 'OFF', 0),
(69, '2019-11-05 06:07:02.6', 'OFF', 'OFF', 0),
(70, '2019-11-05 06:07:09.6', 'OFF', 'OFF', 0),
(71, '2019-11-05 06:07:16.6', 'OFF', 'OFF', 0),
(72, '2019-11-05 06:07:23.7', 'OFF', 'OFF', 0),
(73, '2019-11-05 06:07:30.7', 'OFF', 'OFF', 0),
(74, '2019-11-05 06:07:37.7', 'OFF', 'OFF', 0),
(75, '2019-11-05 06:07:44.8', 'OFF', 'OFF', 0),
(76, '2019-11-05 06:07:51.8', 'OFF', 'OFF', 0),
(77, '2019-11-05 06:07:58.8', 'OFF', 'OFF', 0),
(78, '2019-11-05 06:08:05.9', 'OFF', 'OFF', 0),
(79, '2019-11-05 06:08:12.9', 'OFF', 'OFF', 0),
(80, '2019-11-05 06:08:19.9', 'OFF', 'OFF', 0),
(81, '2019-11-05 06:08:27.0', 'OFF', 'OFF', 0),
(82, '2019-11-05 06:08:34.0', 'OFF', 'OFF', 0),
(83, '2019-11-05 06:08:41.0', 'OFF', 'OFF', 0),
(84, '2019-11-05 06:08:48.2', 'OFF', 'OFF', 0),
(85, '2019-11-05 06:08:55.3', 'OFF', 'OFF', 0),
(86, '2019-11-05 06:09:02.4', 'OFF', 'OFF', 0),
(87, '2019-11-05 06:09:09.6', 'OFF', 'OFF', 0),
(88, '2019-11-05 06:09:16.6', 'OFF', 'OFF', 0),
(89, '2019-11-05 06:09:23.7', 'OFF', 'OFF', 0),
(90, '2019-11-05 06:09:30.7', 'OFF', 'OFF', 0),
(91, '2019-11-05 06:09:37.7', 'OFF', 'OFF', 0),
(92, '2019-11-05 06:09:44.9', 'OFF', 'OFF', 0),
(93, '2019-11-05 06:09:52.0', 'OFF', 'OFF', 0),
(94, '2019-11-05 06:09:59.0', 'OFF', 'OFF', 0),
(95, '2019-11-05 06:10:06.1', 'OFF', 'OFF', 0),
(96, '2019-11-05 06:10:13.1', 'OFF', 'OFF', 0),
(97, '2019-11-05 06:10:20.2', 'OFF', 'OFF', 0),
(98, '2019-11-05 06:10:27.2', 'OFF', 'OFF', 0),
(99, '2019-11-05 06:10:34.2', 'OFF', 'OFF', 0),
(100, '2019-11-05 06:10:41.3', 'OFF', 'OFF', 0),
(101, '2019-11-05 06:10:48.3', 'OFF', 'OFF', 0),
(102, '2019-11-05 06:10:55.3', 'OFF', 'OFF', 0),
(103, '2019-11-05 06:11:02.4', 'OFF', 'OFF', 0),
(104, '2019-11-05 06:11:09.4', 'OFF', 'OFF', 0),
(105, '2019-11-05 06:11:16.5', 'OFF', 'OFF', 0),
(106, '2019-11-05 06:11:23.5', 'OFF', 'OFF', 0),
(107, '2019-11-05 06:11:30.6', 'OFF', 'OFF', 0),
(108, '2019-11-05 06:11:37.8', 'OFF', 'OFF', 0),
(109, '2019-11-05 06:11:44.8', 'OFF', 'OFF', 0),
(110, '2019-11-05 06:11:51.9', 'OFF', 'OFF', 0),
(111, '2019-11-05 06:11:58.9', 'OFF', 'OFF', 0),
(112, '2019-11-05 06:12:06.0', 'OFF', 'OFF', 0),
(113, '2019-11-05 06:12:13.1', 'OFF', 'OFF', 0),
(114, '2019-11-05 06:12:20.1', 'OFF', 'OFF', 0),
(115, '2019-11-05 06:12:27.2', 'OFF', 'OFF', 0),
(116, '2019-11-05 06:12:34.2', 'OFF', 'OFF', 0),
(117, '2019-11-05 06:12:41.2', 'OFF', 'OFF', 0),
(118, '2019-11-05 06:12:48.3', 'OFF', 'OFF', 0),
(119, '2019-11-05 06:12:55.3', 'OFF', 'OFF', 0),
(120, '2019-11-05 06:13:02.3', 'OFF', 'OFF', 0),
(121, '2019-11-05 06:13:09.4', 'OFF', 'OFF', 0),
(122, '2019-11-05 06:13:16.4', 'OFF', 'OFF', 0),
(123, '2019-11-05 06:13:23.4', 'OFF', 'OFF', 0),
(124, '2019-11-05 06:13:30.5', 'OFF', 'OFF', 0),
(125, '2019-11-05 06:13:37.6', 'OFF', 'OFF', 0),
(126, '2019-11-05 06:13:44.7', 'OFF', 'OFF', 0),
(127, '2019-11-05 06:13:51.7', 'OFF', 'OFF', 0),
(128, '2019-11-05 06:13:58.8', 'OFF', 'OFF', 0),
(129, '2019-11-05 06:14:05.8', 'OFF', 'OFF', 0),
(130, '2019-11-05 06:14:12.9', 'OFF', 'OFF', 0),
(131, '2019-11-05 06:14:20.1', 'OFF', 'OFF', 0),
(132, '2019-11-05 06:14:27.2', 'OFF', 'OFF', 0),
(133, '2019-11-05 06:14:34.2', 'OFF', 'OFF', 0),
(134, '2019-11-05 06:14:41.3', 'OFF', 'OFF', 0),
(135, '2019-11-05 06:14:48.4', 'OFF', 'OFF', 0),
(136, '2019-11-05 06:14:55.5', 'OFF', 'OFF', 0),
(137, '2019-11-05 06:15:02.6', 'OFF', 'OFF', 0),
(138, '2019-11-05 06:15:09.7', 'OFF', 'OFF', 0),
(139, '2019-11-05 06:15:16.8', 'OFF', 'OFF', 0),
(140, '2019-11-05 06:15:23.9', 'OFF', 'OFF', 0),
(141, '2019-11-05 06:15:31.0', 'OFF', 'OFF', 0),
(142, '2019-11-05 06:15:38.1', 'OFF', 'OFF', 0),
(143, '2019-11-05 06:15:45.2', 'OFF', 'OFF', 0),
(144, '2019-11-05 06:15:52.2', 'OFF', 'OFF', 0),
(145, '2019-11-08 08:20:00.9', 'OFF', 'ON', 0),
(146, '2019-11-08 08:20:07.9', 'OFF', 'ON', 0),
(147, '2019-11-08 08:20:15.0', 'OFF', 'OFF', 0),
(148, '2019-11-08 08:20:22.0', 'OFF', 'OFF', 0),
(149, '2019-11-08 08:20:29.1', 'OFF', 'OFF', 0),
(150, '2019-11-08 08:20:36.1', 'OFF', 'OFF', 0),
(151, '2019-11-08 08:20:43.1', 'OFF', 'OFF', 0),
(152, '2019-11-08 08:20:50.2', 'OFF', 'OFF', 0),
(153, '2019-11-08 08:20:57.2', 'OFF', 'OFF', 0),
(154, '2019-11-08 08:21:04.2', 'OFF', 'OFF', 0),
(155, '2019-11-08 08:21:11.3', 'OFF', 'OFF', 0),
(156, '2019-11-08 08:21:18.3', 'OFF', 'OFF', 0),
(157, '2019-11-08 08:21:25.3', 'OFF', 'OFF', 0),
(158, '2019-11-08 08:21:32.5', 'OFF', 'OFF', 0),
(159, '2019-11-08 08:21:39.5', 'OFF', 'OFF', 0),
(160, '2019-11-08 08:21:46.5', 'OFF', 'OFF', 0),
(161, '2019-11-08 08:21:53.6', 'OFF', 'OFF', 0),
(162, '2019-11-08 08:22:00.6', 'OFF', 'OFF', 0),
(163, '2019-11-08 08:22:07.7', 'OFF', 'OFF', 0),
(164, '2019-11-08 08:25:45.5', 'ON', 'OFF', 0),
(165, '2019-11-08 08:25:52.6', 'ON', 'OFF', 0),
(166, '2019-11-08 08:25:59.6', 'ON', 'OFF', 0),
(167, '2019-11-08 08:26:06.6', 'ON', 'OFF', 0),
(168, '2019-11-08 08:26:16.9', 'ON', 'OFF', 0),
(169, '2019-11-08 08:26:23.9', 'ON', 'OFF', 0),
(170, '2019-11-08 08:26:31.0', 'OFF', 'OFF', 0),
(171, '2019-11-08 08:26:38.0', 'OFF', 'OFF', 0),
(172, '2019-11-08 08:26:45.0', 'OFF', 'OFF', 0),
(173, '2019-11-08 08:26:52.0', 'OFF', 'OFF', 0),
(174, '2019-11-08 08:26:59.1', 'ON', 'OFF', 0),
(175, '2019-11-08 08:27:06.1', 'ON', 'OFF', 0),
(176, '2019-11-08 08:27:13.1', 'OFF', 'OFF', 0),
(177, '2019-11-08 08:27:24.9', 'OFF', 'OFF', 0),
(178, '2019-11-08 08:27:31.9', 'OFF', 'OFF', 0),
(179, '2019-11-08 08:27:38.9', 'OFF', 'OFF', 0),
(180, '2019-11-08 08:27:46.0', 'OFF', 'OFF', 0),
(181, '2019-11-08 08:27:53.0', 'OFF', 'OFF', 0),
(182, '2019-11-08 08:28:00.0', 'OFF', 'OFF', 0),
(183, '2019-11-08 08:29:51.4', 'OFF', 'OFF', 0),
(184, '2019-11-08 08:29:58.4', 'OFF', 'OFF', 0),
(185, '2019-11-08 08:30:05.4', 'OFF', 'OFF', 0),
(186, '2019-11-08 08:30:12.5', 'OFF', 'ON', 0),
(187, '2019-11-08 08:30:19.5', 'OFF', 'OFF', 0),
(188, '2019-11-08 08:30:26.6', 'OFF', 'OFF', 0),
(189, '2019-11-08 08:30:33.6', 'OFF', 'OFF', 0),
(190, '2019-11-08 08:30:40.6', 'OFF', 'OFF', 0),
(191, '2019-11-08 08:30:47.7', 'OFF', 'OFF', 0),
(192, '2019-11-08 08:30:54.7', 'OFF', 'OFF', 0),
(193, '2019-11-08 08:31:01.8', 'OFF', 'OFF', 0),
(194, '2019-11-08 08:31:08.8', 'OFF', 'OFF', 0),
(195, '2019-11-08 08:31:15.8', 'OFF', 'OFF', 0),
(196, '2019-11-08 08:31:22.9', 'OFF', 'OFF', 0),
(197, '2019-11-08 08:31:29.9', 'OFF', 'OFF', 0),
(198, '2019-11-08 08:31:36.9', 'ON', 'OFF', 0),
(199, '2019-11-08 08:31:43.9', 'ON', 'OFF', 0),
(200, '2019-11-08 08:31:51.0', 'OFF', 'OFF', 0),
(201, '2019-11-08 08:31:58.0', 'OFF', 'OFF', 0),
(202, '2019-11-08 08:32:05.1', 'OFF', 'OFF', 0),
(203, '2019-11-08 08:32:12.1', 'OFF', 'OFF', 0),
(204, '2019-11-08 08:32:19.2', 'OFF', 'OFF', 0),
(205, '2019-11-08 08:32:26.2', 'OFF', 'OFF', 0),
(206, '2019-11-08 08:32:33.3', 'ON', 'OFF', 0),
(207, '2019-11-08 08:32:40.3', 'OFF', 'OFF', 0),
(208, '2019-11-08 08:32:47.3', 'OFF', 'OFF', 0),
(209, '2019-11-08 08:32:54.4', 'ON', 'OFF', 0),
(210, '2019-11-08 08:33:01.4', 'OFF', 'OFF', 0),
(211, '2019-11-08 08:33:08.5', 'OFF', 'OFF', 0),
(212, '2019-11-08 08:33:15.5', 'OFF', 'OFF', 0),
(213, '2019-11-08 08:33:22.6', 'OFF', 'OFF', 0),
(214, '2019-11-08 08:33:29.6', 'OFF', 'OFF', 0),
(215, '2019-11-08 08:33:36.6', 'ON', 'OFF', 0),
(216, '2019-11-08 08:33:43.7', 'ON', 'OFF', 0),
(217, '2019-11-08 08:33:50.8', 'ON', 'OFF', 0),
(218, '2019-11-08 08:33:57.9', 'ON', 'OFF', 0),
(219, '2019-11-08 08:34:04.9', 'ON', 'OFF', 0),
(220, '2019-11-08 08:34:11.9', 'OFF', 'OFF', 0),
(221, '2019-11-08 08:34:19.0', 'OFF', 'OFF', 0),
(222, '2019-11-08 08:34:26.0', 'OFF', 'OFF', 0),
(223, '2019-11-08 08:34:33.0', 'OFF', 'OFF', 0),
(224, '2019-11-08 08:34:40.0', 'OFF', 'OFF', 0),
(225, '2019-11-08 08:34:47.1', 'OFF', 'OFF', 0),
(226, '2019-11-08 08:34:54.1', 'OFF', 'OFF', 0),
(227, '2019-11-08 08:35:01.1', 'OFF', 'OFF', 0),
(228, '2019-11-08 08:35:08.2', 'OFF', 'OFF', 0),
(229, '2019-11-08 08:36:02.5', 'OFF', 'OFF', 0),
(230, '2019-11-08 08:36:09.5', 'OFF', 'OFF', 0),
(231, '2019-11-08 08:36:16.6', 'OFF', 'OFF', 0),
(232, '2019-11-08 08:36:23.6', 'OFF', 'OFF', 0),
(233, '2019-11-08 08:36:30.6', 'OFF', 'OFF', 0),
(234, '2019-11-08 08:36:37.7', 'OFF', 'OFF', 0),
(235, '2019-11-08 08:36:59.9', 'OFF', 'OFF', 0),
(236, '2019-11-08 08:37:02.8', 'OFF', 'OFF', 0),
(237, '2019-11-08 08:37:07.0', 'OFF', 'OFF', 0),
(238, '2019-11-08 08:37:14.0', 'OFF', 'OFF', 0),
(239, '2019-11-08 08:37:21.0', 'OFF', 'OFF', 0),
(240, '2019-11-08 08:37:28.1', 'OFF', 'OFF', 0),
(241, '2019-11-08 08:37:35.1', 'OFF', 'OFF', 0),
(242, '2019-11-08 08:37:42.1', 'OFF', 'OFF', 0),
(243, '2019-11-08 08:37:49.2', 'OFF', 'OFF', 0),
(244, '2019-11-08 08:37:56.2', 'OFF', 'OFF', 0),
(245, '2019-11-08 08:38:03.2', 'OFF', 'OFF', 0),
(246, '2019-11-08 08:38:10.3', 'ON', 'OFF', 0),
(247, '2019-11-08 08:38:29.4', 'OFF', 'OFF', 0),
(248, '2019-11-08 08:38:36.4', 'OFF', 'OFF', 0),
(249, '2019-11-08 08:38:43.4', 'OFF', 'OFF', 0),
(250, '2019-11-08 08:38:50.5', 'OFF', 'OFF', 0),
(251, '2019-11-08 08:38:57.5', 'OFF', 'OFF', 0),
(252, '2019-11-08 08:39:04.5', 'OFF', 'OFF', 0),
(253, '2019-11-08 08:39:11.6', 'OFF', 'OFF', 0),
(254, '2019-11-08 08:39:18.6', 'OFF', 'OFF', 0),
(255, '2019-11-08 08:39:25.6', 'OFF', 'OFF', 0),
(256, '2019-11-08 08:40:17.2', 'OFF', 'OFF', 0),
(257, '2019-11-08 08:40:24.2', 'OFF', 'OFF', 0),
(258, '2019-11-08 08:40:31.2', 'OFF', 'OFF', 0),
(259, '2019-11-08 08:40:38.3', 'OFF', 'OFF', 0),
(260, '2019-11-08 08:40:45.3', 'OFF', 'OFF', 0),
(261, '2019-11-08 08:40:52.3', 'OFF', 'OFF', 0),
(262, '2019-11-08 08:40:59.4', 'OFF', 'OFF', 0),
(263, '2019-11-08 08:41:06.4', 'OFF', 'OFF', 0),
(264, '2019-11-08 08:41:13.4', 'OFF', 'OFF', 0),
(265, '2019-11-08 08:41:20.5', 'OFF', 'OFF', 0),
(266, '2019-11-08 08:41:27.5', 'OFF', 'OFF', 0),
(267, '2019-11-08 08:41:34.5', 'OFF', 'OFF', 0),
(268, '2019-11-08 08:41:41.6', 'OFF', 'OFF', 0),
(269, '2019-11-08 08:41:48.6', 'OFF', 'OFF', 0),
(270, '2019-11-08 08:41:55.6', 'OFF', 'OFF', 0),
(271, '2019-11-08 08:42:02.7', 'OFF', 'OFF', 0),
(272, '2019-11-08 08:42:09.7', 'OFF', 'OFF', 0),
(273, '2019-11-08 08:42:16.8', 'OFF', 'OFF', 0),
(274, '2019-11-08 08:42:23.8', 'OFF', 'OFF', 0),
(275, '2019-11-08 08:42:30.8', 'OFF', 'OFF', 0),
(276, '2019-11-08 08:42:37.9', 'OFF', 'OFF', 0),
(277, '2019-11-08 08:42:44.9', 'OFF', 'OFF', 0),
(278, '2019-11-08 08:42:51.9', 'OFF', 'OFF', 0),
(279, '2019-11-08 08:42:59.0', 'OFF', 'OFF', 0),
(280, '2019-11-08 08:43:06.0', 'OFF', 'OFF', 0),
(281, '2019-11-08 08:43:13.1', 'OFF', 'OFF', 0),
(282, '2019-11-08 08:43:20.1', 'OFF', 'OFF', 0),
(283, '2019-11-08 08:43:27.2', 'OFF', 'OFF', 0),
(284, '2019-11-08 08:43:34.3', 'OFF', 'OFF', 0),
(285, '2019-11-08 08:44:29.3', 'OFF', 'OFF', 0),
(286, '2019-11-08 08:44:36.4', 'OFF', 'OFF', 0),
(287, '2019-11-08 08:44:43.4', 'OFF', 'OFF', 0),
(288, '2019-11-08 08:44:50.4', 'OFF', 'OFF', 0),
(289, '2019-11-08 08:44:57.5', 'OFF', 'OFF', 0),
(290, '2019-11-08 08:45:04.5', 'OFF', 'OFF', 0),
(291, '2019-11-08 08:45:11.6', 'OFF', 'OFF', 0),
(292, '2019-11-08 08:45:18.6', 'OFF', 'OFF', 0),
(293, '2019-11-08 08:45:25.6', 'OFF', 'OFF', 0),
(294, '2019-11-08 08:45:32.7', 'OFF', 'OFF', 0),
(295, '2019-11-08 08:45:39.7', 'OFF', 'OFF', 0),
(296, '2019-11-08 08:45:46.7', 'OFF', 'OFF', 0),
(297, '2019-11-08 08:45:53.8', 'OFF', 'OFF', 0),
(298, '2019-11-08 08:46:00.8', 'OFF', 'OFF', 0),
(299, '2019-11-08 08:46:07.8', 'OFF', 'OFF', 0),
(300, '2019-11-08 08:46:14.9', 'OFF', 'OFF', 0),
(301, '2019-11-08 08:46:21.9', 'OFF', 'OFF', 0),
(302, '2019-11-08 08:46:28.9', 'OFF', 'OFF', 0),
(303, '2019-11-08 08:46:36.0', 'OFF', 'OFF', 0),
(304, '2019-11-08 08:46:43.0', 'OFF', 'OFF', 0),
(305, '2019-11-08 08:46:50.0', 'OFF', 'OFF', 0),
(306, '2019-11-08 08:46:57.1', 'OFF', 'OFF', 0),
(307, '2019-11-08 08:47:04.1', 'OFF', 'OFF', 0),
(308, '2019-11-08 08:47:11.1', 'OFF', 'OFF', 0),
(309, '2019-11-08 08:47:18.1', 'OFF', 'OFF', 0),
(310, '2019-11-08 08:47:25.2', 'OFF', 'OFF', 0),
(311, '2019-11-08 08:47:32.2', 'OFF', 'OFF', 0),
(312, '2019-11-08 08:47:39.3', 'OFF', 'OFF', 0),
(313, '2019-11-08 08:47:46.3', 'OFF', 'OFF', 0),
(314, '2019-11-08 08:47:53.4', 'OFF', 'OFF', 0),
(315, '2019-11-08 08:49:34.6', 'OFF', 'OFF', 0),
(316, '2019-11-08 08:49:41.7', 'OFF', 'OFF', 0),
(317, '2019-11-08 08:49:48.7', 'OFF', 'OFF', 0),
(318, '2019-11-08 08:49:55.7', 'OFF', 'OFF', 0),
(319, '2019-11-08 08:50:02.8', 'OFF', 'OFF', 0),
(320, '2019-11-08 08:50:55.1', 'OFF', 'OFF', 0),
(321, '2019-11-08 08:51:02.1', 'OFF', 'OFF', 0),
(322, '2019-11-08 08:51:09.2', 'OFF', 'OFF', 0),
(323, '2019-11-08 08:51:16.2', 'OFF', 'OFF', 0),
(324, '2019-11-08 08:51:23.2', 'OFF', 'OFF', 0),
(325, '2019-11-08 08:51:30.3', 'OFF', 'OFF', 0),
(326, '2019-11-08 08:51:37.3', 'OFF', 'OFF', 0),
(327, '2019-11-08 08:51:47.9', 'OFF', 'OFF', 0),
(328, '2019-11-08 08:51:55.1', 'OFF', 'OFF', 0),
(329, '2019-11-08 08:52:02.1', 'OFF', 'OFF', 0),
(330, '2019-11-08 08:52:09.2', 'OFF', 'OFF', 0),
(331, '2019-11-08 08:52:16.2', 'OFF', 'OFF', 0),
(332, '2019-11-08 08:52:23.2', 'OFF', 'OFF', 0),
(333, '2019-11-08 08:52:30.3', 'OFF', 'OFF', 0),
(334, '2019-11-08 08:52:37.3', 'OFF', 'OFF', 0),
(335, '2019-11-08 08:52:44.3', 'OFF', 'OFF', 0),
(336, '2019-11-08 08:52:51.4', 'OFF', 'OFF', 0),
(337, '2019-11-08 08:52:58.4', 'OFF', 'ON', 0),
(338, '2019-11-08 08:53:05.4', 'OFF', 'ON', 0),
(339, '2019-11-08 08:53:12.5', 'OFF', 'ON', 0),
(340, '2019-11-08 08:53:19.5', 'OFF', 'ON', 0),
(341, '2019-11-08 08:53:56.9', 'OFF', 'OFF', 0),
(342, '2019-11-08 08:54:03.9', 'OFF', 'ON', 0),
(343, '2019-11-08 08:54:11.0', 'OFF', 'OFF', 0),
(344, '2019-11-08 08:54:18.0', 'OFF', 'OFF', 0),
(345, '2019-11-08 08:54:27.8', 'OFF', 'OFF', 0),
(346, '2019-11-08 08:54:34.8', 'OFF', 'OFF', 0),
(347, '2019-11-08 08:54:41.9', 'OFF', 'ON', 0),
(348, '2019-11-08 08:54:48.9', 'OFF', 'ON', 0),
(349, '2019-11-08 08:54:55.9', 'OFF', 'OFF', 0),
(350, '2019-11-08 08:55:03.0', 'OFF', 'OFF', 0),
(351, '2019-11-08 08:55:10.0', 'OFF', 'OFF', 0),
(352, '2019-11-08 08:55:17.0', 'ON', 'OFF', 0),
(353, '2019-11-08 08:55:24.1', 'ON', 'OFF', 0),
(354, '2019-11-08 08:55:31.1', 'ON', 'OFF', 0),
(355, '2019-11-08 08:55:38.2', 'OFF', 'OFF', 0),
(356, '2019-11-08 08:55:45.2', 'OFF', 'OFF', 0),
(357, '2019-11-08 08:55:52.3', 'OFF', 'OFF', 0),
(358, '2019-11-08 08:55:59.3', 'OFF', 'OFF', 0),
(359, '2019-11-08 08:56:06.3', 'OFF', 'OFF', 0),
(360, '2019-11-08 08:56:13.4', 'OFF', 'OFF', 0),
(361, '2019-11-08 08:56:25.1', 'OFF', 'OFF', 0),
(362, '2019-11-08 08:56:32.2', 'ON', 'OFF', 0),
(363, '2019-11-08 08:56:39.2', 'ON', 'OFF', 0),
(364, '2019-11-08 08:56:46.2', 'ON', 'OFF', 0),
(365, '2019-11-08 08:56:53.3', 'OFF', 'OFF', 0),
(366, '2019-11-08 08:57:00.3', 'OFF', 'OFF', 0),
(367, '2019-11-08 08:57:07.3', 'OFF', 'OFF', 0),
(368, '2019-11-08 08:57:14.4', 'OFF', 'OFF', 0),
(369, '2019-11-08 08:57:21.4', 'OFF', 'OFF', 0),
(370, '2019-11-08 08:57:28.4', 'ON', 'OFF', 0),
(371, '2019-11-08 08:57:35.5', 'ON', 'OFF', 0),
(372, '2019-11-08 08:57:42.5', 'OFF', 'OFF', 0),
(373, '2019-11-08 08:57:49.6', 'OFF', 'OFF', 0),
(374, '2019-11-08 08:57:56.6', 'OFF', 'OFF', 0),
(375, '2019-11-08 08:58:03.6', 'OFF', 'OFF', 0),
(376, '2019-11-08 08:58:10.7', 'OFF', 'OFF', 0),
(377, '2019-11-08 08:58:17.7', 'OFF', 'OFF', 0),
(378, '2019-11-08 08:58:24.7', 'ON', 'OFF', 0),
(379, '2019-11-08 08:58:31.8', 'ON', 'OFF', 0),
(380, '2019-11-08 08:58:38.8', 'OFF', 'OFF', 0),
(381, '2019-11-08 08:58:45.9', 'OFF', 'OFF', 0),
(382, '2019-11-08 08:58:52.9', 'OFF', 'OFF', 0),
(383, '2019-11-08 08:58:59.9', 'OFF', 'OFF', 0),
(384, '2019-11-08 08:59:07.0', 'OFF', 'OFF', 0),
(385, '2019-11-08 08:59:14.0', 'OFF', 'OFF', 0),
(386, '2019-11-08 14:02:41.7', 'OFF', 'OFF', 0),
(387, '2019-11-08 14:02:49.5', 'OFF', 'OFF', 0),
(388, '2019-11-08 14:02:57.3', 'OFF', 'OFF', 0),
(389, '2019-11-08 14:03:05.1', 'OFF', 'OFF', 0),
(390, '2019-11-08 14:03:12.9', 'OFF', 'OFF', 0),
(391, '2019-11-08 14:03:20.7', 'OFF', 'OFF', 0),
(392, '2019-11-08 14:03:28.5', 'OFF', 'OFF', 0),
(393, '2019-11-08 14:03:36.3', 'OFF', 'OFF', 0),
(394, '2019-11-08 14:03:44.1', 'OFF', 'OFF', 0),
(395, '2019-11-08 14:03:51.9', 'OFF', 'OFF', 0),
(396, '2019-11-08 14:03:59.7', 'OFF', 'OFF', 0),
(397, '2019-11-08 14:04:07.5', 'OFF', 'OFF', 0),
(398, '2019-11-08 14:04:15.4', 'OFF', 'OFF', 0),
(399, '2019-11-08 14:04:23.2', 'OFF', 'OFF', 0),
(400, '2019-11-08 14:04:31.0', 'OFF', 'OFF', 0),
(401, '2019-11-08 14:04:38.8', 'OFF', 'OFF', 0),
(402, '2019-11-08 14:04:46.6', 'OFF', 'OFF', 0),
(403, '2019-11-08 14:04:54.4', 'OFF', 'OFF', 0),
(404, '2019-11-08 14:05:02.2', 'OFF', 'OFF', 0),
(405, '2019-11-08 14:05:10.0', 'OFF', 'OFF', 0),
(406, '2019-11-08 14:05:17.8', 'OFF', 'OFF', 0),
(407, '2019-11-08 14:05:25.6', 'OFF', 'OFF', 0),
(408, '2019-11-08 14:09:04.4', 'OFF', 'OFF', 0),
(409, '2019-11-08 14:09:12.2', 'OFF', 'OFF', 0),
(410, '2019-11-08 14:11:39.3', 'OFF', 'OFF', 0),
(411, '2019-11-08 14:11:47.1', 'OFF', 'OFF', 0),
(412, '2019-11-08 14:11:54.9', 'OFF', 'OFF', 0),
(413, '2019-11-08 14:12:02.8', 'OFF', 'OFF', 0),
(414, '2019-11-08 14:12:10.6', 'OFF', 'OFF', 0),
(415, '2019-11-08 14:12:18.4', 'OFF', 'OFF', 0),
(416, '2019-11-08 14:12:26.2', 'OFF', 'OFF', 0),
(417, '2019-11-08 14:12:34.0', 'OFF', 'OFF', 0),
(418, '2019-11-08 14:12:41.8', 'OFF', 'OFF', 0),
(419, '2019-11-08 14:12:49.6', 'OFF', 'OFF', 0),
(420, '2019-11-08 14:12:57.4', 'OFF', 'OFF', 0),
(421, '2019-11-08 14:13:40.3', 'OFF', 'OFF', 0),
(422, '2019-11-08 14:13:48.1', 'OFF', 'OFF', 0),
(423, '2019-11-08 14:13:55.9', 'OFF', 'OFF', 0),
(424, '2019-11-08 14:14:03.7', 'OFF', 'OFF', 0),
(425, '2019-11-08 14:14:11.5', 'OFF', 'OFF', 0),
(426, '2019-11-08 14:14:19.3', 'OFF', 'OFF', 0),
(427, '2019-11-08 14:14:27.1', 'OFF', 'OFF', 0),
(428, '2019-11-08 14:14:34.9', 'OFF', 'OFF', 0),
(429, '2019-11-08 14:14:42.7', 'OFF', 'OFF', 0),
(430, '2019-11-08 14:14:50.5', 'OFF', 'OFF', 0),
(431, '2019-11-08 14:14:58.3', 'OFF', 'OFF', 0),
(432, '2019-11-08 14:15:37.3', 'OFF', 'OFF', 0),
(433, '2019-11-08 14:15:45.1', 'OFF', 'OFF', 0),
(434, '2019-11-08 14:15:52.9', 'OFF', 'OFF', 0),
(435, '2019-11-08 14:16:00.7', 'OFF', 'OFF', 0),
(436, '2019-11-08 14:16:08.5', 'OFF', 'OFF', 0),
(437, '2019-11-08 14:16:16.3', 'OFF', 'OFF', 0),
(438, '2019-11-08 14:16:24.1', 'OFF', 'OFF', 0),
(439, '2019-11-08 14:16:31.9', 'OFF', 'OFF', 0),
(440, '2019-11-08 14:16:39.7', 'OFF', 'OFF', 0),
(441, '2019-11-08 14:16:47.6', 'OFF', 'OFF', 0),
(442, '2019-11-08 14:16:55.4', 'OFF', 'OFF', 0),
(443, '2019-11-08 14:17:03.2', 'OFF', 'OFF', 0),
(444, '2019-11-08 14:17:11.0', 'OFF', 'OFF', 0),
(445, '2019-11-08 14:17:18.8', 'OFF', 'OFF', 0),
(446, '2019-11-08 14:17:26.6', 'OFF', 'OFF', 0),
(447, '2019-11-08 14:17:34.4', 'OFF', 'OFF', 0),
(448, '2019-11-08 14:17:42.2', 'OFF', 'OFF', 0),
(449, '2019-11-08 14:17:50.0', 'OFF', 'OFF', 0),
(450, '2019-11-08 14:17:57.8', 'OFF', 'OFF', 0),
(451, '2019-11-08 14:18:05.6', 'OFF', 'OFF', 0),
(452, '2019-11-08 14:18:13.4', 'OFF', 'OFF', 0),
(453, '2019-11-08 14:18:21.2', 'OFF', 'OFF', 0),
(454, '2019-11-08 14:19:00.1', 'OFF', 'OFF', 0),
(455, '2019-11-08 14:19:07.9', 'OFF', 'OFF', 0),
(456, '2019-11-08 14:19:15.7', 'OFF', 'OFF', 0),
(457, '2019-11-08 14:19:23.5', 'OFF', 'OFF', 0),
(458, '2019-11-08 14:19:31.3', 'OFF', 'OFF', 0),
(459, '2019-11-08 14:19:39.1', 'OFF', 'OFF', 0),
(460, '2019-11-08 14:19:46.9', 'OFF', 'OFF', 0),
(461, '2019-11-08 14:20:23.9', 'OFF', 'OFF', 0),
(462, '2019-11-08 14:20:31.7', 'OFF', 'OFF', 0),
(463, '2019-11-08 14:20:39.5', 'OFF', 'OFF', 0),
(464, '2019-11-08 14:20:47.3', 'OFF', 'OFF', 0),
(465, '2019-11-08 14:20:55.1', 'OFF', 'OFF', 0),
(466, '2019-11-08 14:21:02.9', 'OFF', 'OFF', 0),
(467, '2019-11-08 14:21:10.7', 'OFF', 'OFF', 0),
(468, '2019-11-08 14:21:18.5', 'OFF', 'OFF', 0),
(469, '2019-11-08 14:21:26.4', 'OFF', 'OFF', 0),
(470, '2019-11-08 14:21:34.1', 'OFF', 'OFF', 0),
(471, '2019-11-08 14:21:41.9', 'OFF', 'OFF', 0),
(472, '2019-11-08 14:21:49.8', 'OFF', 'OFF', 0),
(473, '2019-11-08 14:21:57.6', 'OFF', 'OFF', 0),
(474, '2019-11-08 14:22:05.4', 'OFF', 'OFF', 0),
(475, '2019-11-08 14:22:13.2', 'OFF', 'OFF', 0),
(476, '2019-11-08 14:22:21.0', 'OFF', 'OFF', 0),
(477, '2019-11-08 14:22:28.8', 'OFF', 'OFF', 0),
(478, '2019-11-08 14:22:36.5', 'OFF', 'OFF', 0),
(479, '2019-11-08 14:23:11.7', 'OFF', 'OFF', 0),
(480, '2019-11-08 14:23:19.5', 'OFF', 'OFF', 0),
(481, '2019-11-08 14:23:27.3', 'OFF', 'OFF', 0),
(482, '2019-11-08 14:23:35.1', 'OFF', 'OFF', 0),
(483, '2019-11-08 14:23:42.8', 'OFF', 'OFF', 0),
(484, '2019-11-08 14:23:50.6', 'OFF', 'OFF', 0),
(485, '2019-11-08 14:23:58.5', 'OFF', 'OFF', 0),
(486, '2019-11-08 14:24:06.3', 'OFF', 'OFF', 0),
(487, '2019-11-08 14:24:14.1', 'OFF', 'OFF', 0),
(488, '2019-11-08 14:24:21.9', 'OFF', 'OFF', 0),
(489, '2019-11-08 14:24:29.7', 'OFF', 'OFF', 0),
(490, '2019-11-08 14:24:37.5', 'OFF', 'OFF', 0),
(491, '2019-11-08 14:24:45.3', 'OFF', 'OFF', 0),
(492, '2019-11-08 14:24:53.1', 'OFF', 'OFF', 0),
(493, '2019-11-08 14:25:00.9', 'OFF', 'OFF', 0),
(494, '2019-11-08 14:25:08.7', 'OFF', 'OFF', 0),
(495, '2019-11-08 14:25:16.5', 'OFF', 'OFF', 0),
(496, '2019-11-08 14:25:24.3', 'OFF', 'OFF', 0),
(497, '2019-11-08 14:25:32.1', 'OFF', 'OFF', 0),
(498, '2019-11-08 14:25:39.9', 'OFF', 'OFF', 0),
(499, '2019-11-08 14:25:47.7', 'OFF', 'OFF', 0),
(500, '2019-11-08 14:25:55.5', 'OFF', 'OFF', 0),
(501, '2019-11-08 14:26:03.3', 'OFF', 'OFF', 0),
(502, '2019-11-08 14:26:11.2', 'OFF', 'OFF', 0),
(503, '2019-11-08 14:26:19.0', 'OFF', 'OFF', 0),
(504, '2019-11-08 14:26:26.8', 'OFF', 'OFF', 0),
(505, '2019-11-08 14:26:34.6', 'OFF', 'OFF', 0),
(506, '2019-11-08 14:26:42.4', 'OFF', 'OFF', 0),
(507, '2019-11-08 14:26:50.2', 'OFF', 'OFF', 0),
(508, '2019-11-08 14:26:58.0', 'OFF', 'OFF', 0),
(509, '2019-11-08 14:27:05.8', 'OFF', 'OFF', 0),
(510, '2019-11-08 14:27:13.6', 'OFF', 'OFF', 0),
(511, '2019-11-08 14:27:21.4', 'OFF', 'OFF', 0),
(512, '2019-11-08 14:27:29.2', 'OFF', 'OFF', 0),
(513, '2019-11-08 14:27:37.0', 'OFF', 'OFF', 0),
(514, '2019-11-08 14:27:44.8', 'OFF', 'OFF', 0),
(515, '2019-11-08 14:27:52.7', 'OFF', 'OFF', 0),
(516, '2019-11-08 14:28:00.5', 'OFF', 'OFF', 0),
(517, '2019-11-08 14:28:08.3', 'OFF', 'OFF', 0),
(518, '2019-11-08 14:28:16.1', 'OFF', 'OFF', 0),
(519, '2019-11-08 14:28:23.9', 'OFF', 'OFF', 0),
(520, '2019-11-08 14:28:31.7', 'OFF', 'OFF', 0),
(521, '2019-11-08 14:28:39.5', 'OFF', 'OFF', 0),
(522, '2019-11-08 14:28:47.3', 'OFF', 'OFF', 0),
(523, '2019-11-08 14:28:55.1', 'OFF', 'OFF', 0),
(524, '2019-11-08 14:29:02.9', 'OFF', 'OFF', 0),
(525, '2019-11-08 14:29:10.7', 'OFF', 'OFF', 0),
(526, '2019-11-08 14:29:18.5', 'OFF', 'OFF', 0),
(527, '2019-11-08 14:29:26.3', 'OFF', 'OFF', 0),
(528, '2019-11-08 14:29:34.1', 'OFF', 'OFF', 0),
(529, '2019-11-08 14:29:41.9', 'OFF', 'OFF', 0),
(530, '2019-11-08 14:29:49.7', 'OFF', 'OFF', 0),
(531, '2019-11-08 14:29:57.5', 'OFF', 'OFF', 0),
(532, '2019-11-08 14:30:05.3', 'OFF', 'OFF', 0),
(533, '2019-11-08 14:30:13.2', 'OFF', 'OFF', 0),
(534, '2019-11-08 14:30:21.0', 'OFF', 'OFF', 0),
(535, '2019-11-08 14:30:28.8', 'OFF', 'OFF', 0),
(536, '2019-11-08 14:30:36.6', 'OFF', 'OFF', 0),
(537, '2019-11-08 14:30:44.4', 'OFF', 'OFF', 0),
(538, '2019-11-08 14:30:52.2', 'OFF', 'OFF', 0),
(539, '2019-11-08 14:31:00.0', 'OFF', 'OFF', 0),
(540, '2019-11-08 14:31:07.8', 'OFF', 'OFF', 0),
(541, '2019-11-08 14:31:15.6', 'OFF', 'OFF', 0),
(542, '2019-11-08 14:31:23.4', 'OFF', 'OFF', 0),
(543, '2019-11-08 14:31:31.2', 'OFF', 'OFF', 0),
(544, '2019-11-08 14:31:39.0', 'OFF', 'OFF', 0),
(545, '2019-11-08 14:31:46.9', 'OFF', 'OFF', 0),
(546, '2019-11-08 14:31:54.7', 'OFF', 'OFF', 0),
(547, '2019-11-08 14:32:02.5', 'OFF', 'OFF', 0),
(548, '2019-11-08 14:32:10.3', 'OFF', 'OFF', 0),
(549, '2019-11-08 14:32:18.1', 'OFF', 'OFF', 0),
(550, '2019-11-08 14:32:25.9', 'OFF', 'OFF', 0),
(551, '2019-11-08 14:32:33.7', 'OFF', 'OFF', 0),
(552, '2019-11-08 14:32:41.5', 'OFF', 'OFF', 0),
(553, '2019-11-08 14:32:49.4', 'OFF', 'OFF', 0),
(554, '2019-11-08 14:32:57.2', 'OFF', 'OFF', 0),
(555, '2019-11-08 14:33:05.0', 'OFF', 'OFF', 0),
(556, '2019-11-08 14:33:12.8', 'OFF', 'OFF', 0),
(557, '2019-11-08 14:33:20.6', 'OFF', 'OFF', 0),
(558, '2019-11-08 14:33:58.8', 'OFF', 'OFF', 0),
(559, '2019-11-08 14:34:06.6', 'OFF', 'OFF', 0),
(560, '2019-11-08 14:34:14.4', 'OFF', 'OFF', 0),
(561, '2019-11-08 14:34:22.2', 'OFF', 'OFF', 0),
(562, '2019-11-08 14:34:30.0', 'OFF', 'OFF', 0),
(563, '2019-11-08 14:34:37.8', 'OFF', 'OFF', 0),
(564, '2019-11-08 14:34:45.7', 'OFF', 'OFF', 0),
(565, '2019-11-08 14:34:53.5', 'OFF', 'OFF', 0),
(566, '2019-11-08 14:35:01.3', 'OFF', 'OFF', 0),
(567, '2019-11-08 14:35:09.1', 'OFF', 'OFF', 0),
(568, '2019-11-08 14:35:16.9', 'OFF', 'OFF', 0),
(569, '2019-11-08 14:35:24.7', 'OFF', 'OFF', 0),
(570, '2019-11-08 14:35:32.6', 'OFF', 'OFF', 0),
(571, '2019-11-08 14:35:40.4', 'OFF', 'OFF', 0),
(572, '2019-11-08 14:35:48.2', 'OFF', 'OFF', 0),
(573, '2019-11-08 14:35:56.0', 'OFF', 'OFF', 0),
(574, '2019-11-08 14:36:03.8', 'OFF', 'OFF', 0),
(575, '2019-11-08 14:36:11.6', 'OFF', 'OFF', 0),
(576, '2019-11-08 14:36:19.4', 'OFF', 'OFF', 0),
(577, '2019-11-08 14:36:27.2', 'OFF', 'OFF', 0),
(578, '2019-11-08 14:36:35.1', 'OFF', 'OFF', 0),
(579, '2019-11-08 14:36:42.9', 'OFF', 'OFF', 0),
(580, '2019-11-08 14:36:50.7', 'OFF', 'OFF', 0),
(581, '2019-11-08 14:36:58.5', 'OFF', 'OFF', 0),
(582, '2019-11-08 14:37:06.3', 'OFF', 'OFF', 0),
(583, '2019-11-08 14:37:14.1', 'OFF', 'OFF', 0),
(584, '2019-11-08 14:37:21.9', 'OFF', 'OFF', 0),
(585, '2019-11-08 14:37:29.7', 'OFF', 'OFF', 0),
(586, '2019-11-08 14:37:37.5', 'OFF', 'OFF', 0),
(587, '2019-11-08 14:37:45.3', 'OFF', 'OFF', 0),
(588, '2019-11-08 14:37:53.1', 'OFF', 'OFF', 0),
(589, '2019-11-08 14:38:00.9', 'OFF', 'OFF', 0),
(590, '2019-11-08 14:38:08.7', 'OFF', 'OFF', 0),
(591, '2019-11-08 14:38:16.5', 'OFF', 'OFF', 0),
(592, '2019-11-08 14:38:24.3', 'OFF', 'OFF', 0),
(593, '2019-11-08 14:38:32.1', 'OFF', 'OFF', 0),
(594, '2019-11-08 14:38:39.9', 'OFF', 'OFF', 0),
(595, '2019-11-08 14:38:47.7', 'OFF', 'OFF', 0),
(596, '2019-11-08 14:38:55.5', 'OFF', 'OFF', 0),
(597, '2019-11-08 14:39:03.3', 'OFF', 'OFF', 27),
(598, '2019-11-08 14:39:11.1', 'OFF', 'OFF', 27),
(599, '2019-11-08 14:39:19.0', 'OFF', 'OFF', 27),
(600, '2019-11-08 14:39:26.8', 'OFF', 'OFF', 27),
(601, '2019-11-08 14:39:34.6', 'OFF', 'OFF', 27),
(602, '2019-11-08 14:40:14.7', 'OFF', 'OFF', 27.31),
(603, '2019-11-08 14:40:22.5', 'OFF', 'OFF', 27.31),
(604, '2019-11-08 14:40:30.3', 'OFF', 'OFF', 27.31),
(605, '2019-11-08 14:40:38.2', 'OFF', 'OFF', 27.31),
(606, '2019-11-08 14:40:46.0', 'OFF', 'OFF', 27.31);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sensing`
--
ALTER TABLE `sensing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sensing`
--
ALTER TABLE `sensing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;