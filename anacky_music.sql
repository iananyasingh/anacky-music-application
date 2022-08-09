-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2022 at 10:27 AM
-- Server version: 10.2.44-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anacky_music`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Medication', 6, 11, 'assets/images/artwork/Ananya.jpeg'),
(2, 'Pizza head', 5, 10, 'assets/images/artwork/energy.jpg'),
(3, 'Summer Hits', 3, 1, 'assets/images/artwork/goinghigher.jpg'),
(4, 'The movie soundtrack', 2, 9, 'assets/images/artwork/funkyelement.jpg'),
(5, 'Best of the Worst', 1, 3, 'assets/images/artwork/popdance.jpg'),
(6, 'Hello world', 3, 6, 'assets/images/artwork/ukulele.jpg'),
(7, 'Best beats', 4, 7, 'assets/images/artwork/sweet.jpg'),
(8, 'Bacon and Eggs', 2, 4, 'assets/images/artwork/clearday.jpg'),
(9, 'Reputation', 9, 1, 'assets/images/artwork/clearday.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Mickey Mouse '),
(2, 'Goofy'),
(3, 'Bart Simpson'),
(4, 'Homer'),
(5, 'Bruce Lee'),
(6, 'Ananya Singh'),
(7, 'Arijit Singh'),
(9, 'Taylor Swift');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Chill'),
(12, 'Classical');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'Ananya Specials', 'ananya', '2022-02-04 00:00:00'),
(2, 'CTL Playlist', 'sheetal', '2022-02-05 00:00:00'),
(3, 'Favourites', 'shweta', '2022-02-08 00:00:00'),
(4, 'Lucky', 'lacky', '2022-02-21 00:00:00'),
(5, 'Fav', 'ananya', '2022-02-04 12:36:52'),
(6, 'Love', 'sheetal', '2022-02-05 12:36:52'),
(7, 'sad', 'shweta', '2022-02-06 12:36:52'),
(8, 'rock', 'lacky', '2022-02-07 12:36:52'),
(9, 'soothing', 'ananya', '2022-02-08 12:36:52'),
(10, 'heartbreak', 'sheetal', '2022-02-09 12:36:52'),
(11, 'party', 'shweta', '2022-02-10 12:36:52'),
(12, 'mashup', 'lacky', '2022-02-11 12:36:52'),
(13, 'romance', 'ananya', '2022-02-12 12:36:52'),
(14, 'wedding', 'sheetal', '2022-02-13 12:36:52'),
(15, 'patriotic', 'shweta', '2022-02-14 12:36:52'),
(16, '', 'ananya', '2022-02-25 00:00:00'),
(17, 'Fav', 'shwetawaghmare', '2022-02-25 00:00:00'),
(18, 'fav1', 'shwetawaghmare', '2022-02-25 00:00:00'),
(19, 'lackty', 'ananya', '2022-02-25 00:00:00'),
(20, 'janvi', 'ananya', '2022-02-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistssongs`
--

CREATE TABLE `playlistssongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlistssongs`
--

INSERT INTO `playlistssongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(1, 250, 7, 13),
(2, 445, 8, 12),
(3, 39, 11, 2),
(4, 36, 14, 10),
(5, 295, 1, 8),
(6, 520, 8, 12),
(7, 479, 11, 12),
(8, 434, 14, 5),
(9, 144, 8, 4),
(10, 4, 10, 4),
(11, 114, 10, 13),
(12, 261, 3, 2),
(13, 7, 13, 7),
(14, 543, 12, 9),
(15, 414, 9, 9),
(16, 478, 4, 6),
(17, 106, 2, 8),
(18, 235, 6, 7),
(19, 565, 2, 8),
(20, 301, 12, 12),
(21, 536, 8, 9),
(22, 333, 11, 14),
(23, 206, 13, 11),
(24, 180, 7, 6),
(25, 239, 9, 9),
(26, 304, 1, 10),
(27, 336, 12, 12),
(28, 430, 10, 1),
(29, 38, 8, 1),
(30, 77, 7, 14),
(31, 327, 5, 8),
(32, 141, 6, 14),
(33, 428, 9, 1),
(34, 369, 1, 6),
(35, 20, 4, 13),
(36, 257, 14, 3),
(37, 141, 5, 1),
(38, 435, 7, 4),
(39, 190, 6, 7),
(40, 106, 2, 6),
(41, 92, 15, 3),
(42, 559, 10, 12),
(43, 366, 15, 5),
(44, 485, 5, 12),
(45, 464, 1, 13),
(46, 74, 14, 14),
(47, 390, 14, 5),
(48, 396, 13, 1),
(49, 408, 2, 2),
(50, 466, 15, 10),
(51, 460, 8, 14),
(52, 148, 3, 7),
(53, 130, 10, 11),
(54, 404, 6, 12),
(55, 441, 4, 7),
(56, 373, 11, 13),
(57, 402, 2, 8),
(58, 301, 2, 3),
(59, 374, 13, 7),
(60, 197, 14, 12),
(61, 544, 13, 2),
(62, 481, 11, 13),
(63, 306, 15, 7),
(64, 353, 10, 11),
(65, 39, 6, 7),
(66, 439, 5, 9),
(67, 106, 12, 9),
(68, 510, 10, 10),
(69, 457, 10, 1),
(70, 545, 4, 8),
(71, 445, 14, 11),
(72, 351, 12, 10),
(73, 283, 12, 9),
(74, 198, 2, 8),
(75, 466, 2, 11),
(76, 331, 13, 7),
(77, 95, 4, 14),
(78, 290, 10, 10),
(79, 421, 1, 12),
(80, 52, 6, 4),
(81, 443, 9, 14),
(82, 288, 10, 2),
(83, 297, 4, 11),
(84, 334, 15, 12),
(85, 538, 6, 11),
(86, 360, 4, 2),
(87, 207, 1, 4),
(88, 548, 8, 1),
(89, 138, 14, 10),
(90, 373, 13, 9),
(91, 519, 14, 11),
(92, 69, 13, 3),
(93, 29, 2, 14),
(94, 284, 12, 8),
(95, 512, 8, 10),
(96, 536, 11, 6),
(97, 245, 4, 9),
(98, 438, 10, 4),
(99, 561, 7, 6),
(100, 98, 11, 6),
(101, 451, 9, 6),
(102, 501, 1, 8),
(103, 292, 14, 4),
(104, 338, 2, 7),
(105, 154, 4, 7),
(106, 562, 7, 4),
(107, 236, 13, 11),
(108, 20, 7, 1),
(109, 305, 4, 1),
(110, 268, 14, 1),
(111, 15, 13, 2),
(112, 463, 2, 11),
(113, 254, 5, 5),
(114, 75, 8, 14),
(115, 307, 3, 14),
(116, 262, 13, 9),
(117, 254, 14, 6),
(118, 500, 2, 5),
(119, 19, 11, 14),
(120, 361, 2, 1),
(121, 408, 8, 3),
(122, 114, 14, 3),
(123, 274, 6, 1),
(124, 260, 13, 11),
(125, 115, 4, 11),
(126, 224, 5, 9),
(127, 527, 12, 7),
(128, 357, 1, 13),
(129, 200, 8, 2),
(130, 17, 1, 8),
(131, 21, 9, 13),
(132, 61, 3, 12),
(133, 554, 2, 1),
(134, 543, 4, 14),
(135, 359, 5, 7),
(136, 148, 6, 1),
(137, 3, 3, 8),
(138, 389, 2, 5),
(139, 155, 12, 9),
(140, 524, 8, 6),
(141, 43, 10, 6),
(142, 501, 12, 10),
(143, 50, 8, 2),
(144, 540, 15, 1),
(145, 351, 6, 13),
(146, 160, 5, 14),
(147, 539, 13, 2),
(148, 315, 8, 10),
(149, 48, 13, 4),
(150, 172, 14, 1),
(151, 425, 6, 5),
(152, 416, 2, 9),
(153, 106, 2, 5),
(154, 172, 12, 2),
(155, 118, 5, 14),
(156, 568, 3, 5),
(157, 188, 13, 12),
(158, 227, 10, 14),
(159, 348, 15, 4),
(160, 433, 11, 1),
(161, 321, 15, 5),
(162, 333, 8, 4),
(163, 120, 3, 1),
(164, 272, 4, 9),
(165, 10, 3, 11),
(166, 455, 5, 8),
(167, 372, 12, 5),
(168, 27, 3, 12),
(169, 303, 13, 5),
(170, 323, 13, 12),
(171, 318, 15, 1),
(172, 407, 11, 2),
(173, 261, 3, 2),
(174, 468, 15, 1),
(175, 334, 15, 6),
(176, 89, 2, 4),
(177, 481, 14, 6),
(178, 271, 4, 5),
(179, 419, 5, 14),
(180, 166, 9, 7),
(181, 58, 12, 10),
(182, 228, 11, 7),
(183, 173, 13, 11),
(184, 450, 10, 10),
(185, 5, 5, 6),
(186, 294, 1, 13),
(187, 539, 5, 2),
(188, 141, 12, 3),
(189, 212, 8, 3),
(190, 466, 15, 12),
(191, 299, 10, 9),
(192, 254, 10, 9),
(193, 557, 4, 12),
(194, 152, 9, 2),
(195, 1, 4, 10),
(196, 99, 9, 11),
(197, 295, 3, 3),
(198, 378, 15, 9),
(199, 241, 9, 5),
(200, 349, 5, 12),
(201, 12, 12, 5),
(202, 472, 5, 2),
(203, 115, 6, 12),
(204, 233, 6, 1),
(205, 537, 10, 5),
(206, 340, 4, 14),
(207, 152, 13, 3),
(208, 89, 10, 3),
(209, 260, 2, 13),
(210, 256, 14, 8),
(211, 179, 7, 6),
(212, 75, 15, 14),
(213, 429, 3, 4),
(214, 480, 12, 3),
(215, 212, 14, 14),
(216, 506, 10, 11),
(217, 569, 13, 14),
(218, 371, 12, 9),
(219, 69, 15, 11),
(220, 240, 10, 2),
(221, 276, 13, 1),
(222, 285, 10, 14),
(223, 511, 6, 12),
(224, 259, 13, 1),
(225, 525, 6, 1),
(226, 50, 13, 14),
(227, 92, 12, 6),
(228, 345, 2, 11),
(229, 136, 5, 3),
(230, 54, 2, 2),
(231, 142, 13, 11),
(232, 16, 9, 2),
(233, 162, 6, 2),
(234, 379, 11, 5),
(235, 329, 11, 1),
(236, 265, 15, 3),
(237, 393, 14, 6),
(238, 538, 8, 9),
(239, 98, 8, 7),
(240, 273, 8, 5),
(241, 513, 10, 1),
(242, 376, 2, 12),
(243, 135, 15, 9),
(244, 56, 2, 5),
(245, 396, 5, 11),
(246, 160, 14, 14),
(247, 430, 4, 4),
(248, 544, 6, 8),
(249, 481, 6, 2),
(250, 484, 13, 13),
(251, 305, 14, 8),
(252, 301, 5, 5),
(253, 276, 12, 2),
(254, 114, 3, 8),
(255, 538, 5, 9),
(256, 46, 3, 8),
(257, 349, 2, 9),
(258, 508, 2, 4),
(259, 314, 3, 13),
(260, 203, 8, 5),
(261, 365, 8, 5),
(262, 490, 8, 9),
(263, 175, 5, 8),
(264, 128, 14, 13),
(265, 170, 3, 4),
(266, 279, 1, 5),
(267, 245, 8, 11),
(268, 18, 8, 13),
(269, 196, 8, 10),
(270, 304, 5, 12),
(271, 55, 6, 5),
(272, 270, 13, 8),
(273, 197, 9, 3),
(274, 31, 9, 4),
(275, 116, 7, 1),
(276, 321, 1, 10),
(277, 354, 15, 6),
(278, 224, 1, 5),
(279, 520, 4, 13),
(280, 191, 13, 2),
(281, 437, 7, 12),
(282, 516, 13, 12),
(283, 242, 13, 13),
(284, 416, 11, 14),
(285, 310, 15, 10),
(286, 105, 7, 7),
(287, 268, 3, 12),
(288, 165, 10, 5),
(289, 507, 12, 7),
(290, 136, 7, 11),
(291, 153, 8, 5),
(292, 54, 2, 5),
(293, 353, 5, 2),
(294, 71, 8, 11),
(295, 165, 5, 6),
(296, 382, 10, 8),
(297, 9, 13, 12),
(298, 219, 3, 12),
(299, 32, 6, 5),
(300, 241, 9, 4),
(301, 483, 11, 9),
(302, 397, 13, 5),
(303, 176, 9, 5),
(304, 317, 2, 9),
(305, 310, 9, 9),
(306, 53, 14, 13),
(307, 175, 12, 4),
(308, 161, 15, 13),
(309, 83, 2, 8),
(310, 105, 2, 11),
(311, 425, 11, 6),
(312, 349, 9, 4),
(313, 255, 9, 5),
(314, 491, 9, 6),
(315, 431, 3, 10),
(316, 527, 1, 5),
(317, 81, 6, 7),
(318, 56, 4, 12),
(319, 397, 9, 12),
(320, 42, 4, 3),
(321, 106, 3, 5),
(322, 313, 13, 12),
(323, 10, 13, 1),
(324, 418, 13, 11),
(325, 306, 6, 8),
(326, 494, 15, 14),
(327, 176, 8, 12),
(328, 181, 7, 1),
(329, 219, 2, 1),
(330, 457, 5, 13),
(331, 423, 9, 6),
(332, 477, 12, 14),
(333, 293, 13, 8);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, '05-Fitoor-TereLiyesongspk.link.mp3', 2, 3, 1, '4:28', 'mus/05-Fitoor-TereLiyesongspk.link.mp3', 6, 13),
(2, 'DilDooba-khaki.mp3', 9, 2, 12, '3:40', 'mus/DilDooba-khaki.mp3', 2, 68),
(3, 'songs.pkTanuWedsManu-02-YunHi.mp3', 7, 6, 11, '5:40', 'mus/songs.pkTanuWedsManu-02-YunHi.mp3', 1, 37),
(4, '01 - Sab Tera [Songspk.LINK].mp3', 6, 1, 8, '5:43', 'mus/01 - Sab Tera [Songspk.LINK].mp3', 9, 68),
(5, '02 - Jeena Marna - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 8, 6, 11, '3:9', 'mus/02 - Jeena Marna - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 9, 99),
(6, '_songs.pk_StudentOfTheYear-04-TheDiscoSong.mp3', 8, 3, 9, '4:56', 'mus/_songs.pk_StudentOfTheYear-04-TheDiscoSong.mp3', 6, 62),
(7, '09-GhaniBawriremixsongspk.link.mp3', 9, 9, 8, '4:47', 'mus/09-GhaniBawriremixsongspk.link.mp3', 2, 77),
(8, '06-AbToheJaneNaDoongisongspk.link.mp3', 6, 1, 5, '6:41', 'mus/06-AbToheJaneNaDoongisongspk.link.mp3', 3, 41),
(9, '05 - Sehra - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 1, 4, 2, '5:35', 'mus/05 - Sehra - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 5, 29),
(10, '02 - Taang Uthake [Songspk.LIVE].mp3', 1, 2, 3, '3:27', 'mus/02 - Taang Uthake [Songspk.LIVE].mp3', 5, 37),
(11, '05 - Lets Nacho [Songspk.LINK].mp3', 8, 1, 3, '5:1', 'mus/05 - Lets Nacho [Songspk.LINK].mp3', 5, 69),
(12, '04 - Tu Hi Na Jaane [Songspk.LINK].mp3', 8, 8, 6, '4:55', 'mus/04 - Tu Hi Na Jaane [Songspk.LINK].mp3', 4, 61),
(13, '01-Tamasha-Matargashtisongspk.link.mp3', 7, 6, 7, '3:44', 'mus/01-Tamasha-Matargashtisongspk.link.mp3', 6, 59),
(14, 'songs.pk04-YoYoHits-BreakupParty.mp3', 9, 7, 9, '6:56', 'mus/songs.pk04-YoYoHits-BreakupParty.mp3', 8, 37),
(15, 'Freak-RishiRichProject.mp3', 5, 2, 9, '3:3', 'mus/Freak-RishiRichProject.mp3', 6, 1),
(16, '02-Piku-Bezubaansongspk.link.mp3', 2, 3, 7, '3:48', 'mus/02-Piku-Bezubaansongspk.link.mp3', 6, 6),
(17, 'songs.pkBaarishyaariyan-128kbps.mp3', 7, 7, 12, '6:13', 'mus/songs.pkBaarishyaariyan-128kbps.mp3', 5, 11),
(18, 'MainuIshqDaLagyaRog.mp3', 3, 6, 3, '5:56', 'mus/MainuIshqDaLagyaRog.mp3', 8, 52),
(19, '04-TuBhoolaJise-Airliftsongspk.link.mp3', 1, 5, 9, '4:47', 'mus/04-TuBhoolaJise-Airliftsongspk.link.mp3', 8, 83),
(20, '01 - Kar Gayi Chull [Songspk.LINK].mp3', 8, 1, 7, '3:25', 'mus/01 - Kar Gayi Chull [Songspk.LINK].mp3', 3, 4),
(21, 'WadaRahan-khaki.mp3', 1, 6, 10, '4:47', 'mus/WadaRahan-khaki.mp3', 9, 47),
(22, '01-Wazir-TereBinsongspk.link.mp3', 6, 7, 2, '6:39', 'mus/01-Wazir-TereBinsongspk.link.mp3', 9, 59),
(23, 'songs.pk13-YoYoHits-PunjabiyaanDiBattery.mp3', 7, 1, 8, '3:56', 'mus/songs.pk13-YoYoHits-PunjabiyaanDiBattery.mp3', 4, 27),
(24, 'songs.pk04-2States-IskiUski.mp3', 8, 5, 7, '5:41', 'mus/songs.pk04-2States-IskiUski.mp3', 3, 69),
(25, 'songs.pkSaheligurdeepMehndiFt.Bohemia-320kbps.mp3', 7, 1, 9, '3:52', 'mus/songs.pkSaheligurdeepMehndiFt.Bohemia-320kbps.mp3', 1, 67),
(26, 'songs.pk07-Ghagra-YehJawaaniHaiDeewani.mp3', 5, 3, 7, '4:25', 'mus/songs.pk07-Ghagra-YehJawaaniHaiDeewani.mp3', 8, 89),
(27, '_songs.pk_StudentOfTheYear-02-Radha.mp3', 7, 6, 12, '5:21', 'mus/_songs.pk_StudentOfTheYear-02-Radha.mp3', 8, 40),
(28, 'songs.pk03-Entertainment-JohnnyJohnny.mp3', 5, 4, 3, '3:17', 'mus/songs.pk03-Entertainment-JohnnyJohnny.mp3', 4, 68),
(29, 'DheereDheereyoYoHoneySingh-320kbpssongspk.link.mp3', 6, 6, 4, '3:7', 'mus/DheereDheereyoYoHoneySingh-320kbpssongspk.link.mp3', 1, 70),
(30, 'songs.pkTanuWedsManu-01-SadiGali.mp3', 2, 4, 5, '3:58', 'mus/songs.pkTanuWedsManu-01-SadiGali.mp3', 9, 66),
(31, 'songs.pk06-DSeDance.mp3', 1, 8, 5, '5:44', 'mus/songs.pk06-DSeDance.mp3', 5, 59),
(32, '04-Piku-Pikusongspk.link.mp3', 6, 5, 2, '5:15', 'mus/04-Piku-Pikusongspk.link.mp3', 2, 86),
(33, 'Get Ready To Fight (Baaghi) - 320Kbps [Songspk.LINK].mp3', 1, 5, 5, '6:33', 'mus/Get Ready To Fight (Baaghi) - 320Kbps [Songspk.LINK].mp3', 8, 61),
(34, 'TereDarParSanamRemakebeMyLove-320kbpssonghspk.link.mp3', 8, 4, 5, '6:31', 'mus/TereDarParSanamRemakebeMyLove-320kbpssonghspk.link.mp3', 9, 10),
(35, 'AaBhiJaaTuKahinSe-SonuNigam.mp3', 4, 1, 10, '5:55', 'mus/AaBhiJaaTuKahinSe-SonuNigam.mp3', 4, 31),
(36, '05 - Jeetne Ke Liye [Songspk.LINK].mp3', 7, 8, 7, '4:11', 'mus/05 - Jeetne Ke Liye [Songspk.LINK].mp3', 3, 62),
(37, 'songs.pk10-YoYoHits-MainSharabi.mp3', 5, 1, 12, '5:37', 'mus/songs.pk10-YoYoHits-MainSharabi.mp3', 6, 66),
(38, '_songs.pk_StudentOfTheYear-06-Vele.mp3', 7, 7, 9, '3:48', 'mus/_songs.pk_StudentOfTheYear-06-Vele.mp3', 7, 71),
(39, 'songs.pk08-YoYoHits-Bebo.mp3', 6, 4, 12, '3:19', 'mus/songs.pk08-YoYoHits-Bebo.mp3', 5, 70),
(40, '01-JabraFanhindisongspk.link.mp3', 5, 2, 4, '6:52', 'mus/01-JabraFanhindisongspk.link.mp3', 7, 12),
(41, 'songs.pkHoshwalonKoKhabarKya-Sarfarosh1999.mp3', 9, 4, 5, '5:47', 'mus/songs.pkHoshwalonKoKhabarKya-Sarfarosh1999.mp3', 3, 62),
(42, 'ValentineMashup-DjKiranKamath128Kbps.mp3', 9, 1, 9, '5:20', 'mus/ValentineMashup-DjKiranKamath128Kbps.mp3', 4, 27),
(43, '06-Wazir-WazirThemesongspk.link.mp3', 6, 2, 4, '5:18', 'mus/06-Wazir-WazirThemesongspk.link.mp3', 7, 47),
(44, 'songs.pk03-2States-MastMagan.mp3', 3, 2, 12, '5:16', 'mus/songs.pk03-2States-MastMagan.mp3', 8, 34),
(45, 'songs.pk01-Entertainment-VeereyDiWedding.mp3', 6, 4, 1, '4:31', 'mus/songs.pk01-Entertainment-VeereyDiWedding.mp3', 4, 1),
(46, '01 - Bol Do Na Zara [Songspk.LINK].mp3', 9, 7, 3, '4:53', 'mus/01 - Bol Do Na Zara [Songspk.LINK].mp3', 6, 2),
(47, '04-MoheRangDoLaalsongspk.link.mp3', 3, 2, 8, '5:48', 'mus/04-MoheRangDoLaalsongspk.link.mp3', 1, 23),
(48, '03-Piku-LamheGuzarGayesongspk.link.mp3', 9, 4, 11, '4:39', 'mus/03-Piku-LamheGuzarGayesongspk.link.mp3', 2, 23),
(49, '04 - Saathi Rey [Songspk.LINK].mp3', 6, 8, 8, '6:6', 'mus/04 - Saathi Rey [Songspk.LINK].mp3', 9, 38),
(50, 'TeriDeewaniapniisp.com.mp3', 9, 1, 9, '5:58', 'mus/TeriDeewaniapniisp.com.mp3', 9, 17),
(51, 'songs.pk01-YoYoHits-LungiDance.mp3', 7, 4, 12, '3:17', 'mus/songs.pk01-YoYoHits-LungiDance.mp3', 6, 55),
(52, 'songs.pk14-YoYoHits-PartyOnMyMind.mp3', 3, 5, 3, '3:36', 'mus/songs.pk14-YoYoHits-PartyOnMyMind.mp3', 8, 25),
(53, '05-SochNaSakeversion2-Airliftsongspk.link.mp3', 1, 3, 5, '5:20', 'mus/05-SochNaSakeversion2-Airliftsongspk.link.mp3', 5, 31),
(54, 'DjWaleyBabuft.AasthaGill-Badshah-320kbpssongspk.link.mp3', 6, 8, 11, '4:39', 'mus/DjWaleyBabuft.AasthaGill-Badshah-320kbpssongspk.link.mp3', 9, 50),
(55, '03-Fitoor-Haminastusongspk.link.mp3', 8, 5, 3, '4:58', 'mus/03-Fitoor-Haminastusongspk.link.mp3', 1, 30),
(56, 'Friends.mp3', 6, 8, 10, '3:6', 'mus/Friends.mp3', 6, 16),
(57, '04 - Agar Tu Hota [Songspk.LINK].mp3', 8, 1, 5, '3:17', 'mus/04 - Agar Tu Hota [Songspk.LINK].mp3', 7, 64),
(58, '04-Tamasha-WatWatWatsongspk.link.mp3', 8, 4, 8, '3:33', 'mus/04-Tamasha-WatWatWatsongspk.link.mp3', 4, 54),
(59, 'songs.pkAbcdyaariyan-128kbps.mp3', 9, 5, 3, '6:46', 'mus/songs.pkAbcdyaariyan-128kbps.mp3', 9, 44),
(60, '08-AajIbaadatsongspk.link.mp3', 5, 4, 1, '5:7', 'mus/08-AajIbaadatsongspk.link.mp3', 1, 5),
(61, '06 Aye Khuda (Duet Version) [Songspk.LINK].mp3', 6, 1, 12, '3:57', 'mus/06 Aye Khuda (Duet Version) [Songspk.LINK].mp3', 4, 90),
(62, 'songs.pk03-Ilahi-YehJawaaniHaiDeewani.mp3', 7, 1, 10, '4:15', 'mus/songs.pk03-Ilahi-YehJawaaniHaiDeewani.mp3', 1, 44),
(63, '03 - Malamaal [Songspk.LIVE].mp3', 5, 7, 10, '3:26', 'mus/03 - Malamaal [Songspk.LIVE].mp3', 3, 34),
(64, 'MOMMA.mp3', 1, 5, 3, '4:14', 'mus/MOMMA.mp3', 2, 1),
(65, '01 - Pyaar Ki [Songspk.LIVE].mp3', 9, 3, 9, '6:9', 'mus/01 - Pyaar Ki [Songspk.LIVE].mp3', 1, 70),
(66, 'songs.pk06-Subhanallah-YehJawaaniHaiDeewani.mp3', 1, 4, 11, '6:36', 'mus/songs.pk06-Subhanallah-YehJawaaniHaiDeewani.mp3', 9, 48),
(67, '03-MatJaResongspk.link.mp3', 2, 3, 8, '3:1', 'mus/03-MatJaResongspk.link.mp3', 7, 57),
(68, 'songs.pk01-BadtameezDil-YehJawaaniHaiDeewani.mp3', 4, 6, 2, '3:41', 'mus/songs.pk01-BadtameezDil-YehJawaaniHaiDeewani.mp3', 3, 66),
(69, '06 - Hass Nache Le - [Songspk.LIVE].mp3', 9, 5, 7, '3:50', 'mus/06 - Hass Nache Le - [Songspk.LIVE].mp3', 9, 33),
(70, 'songs.pk04-Kabira-YehJawaaniHaiDeewani.mp3', 1, 7, 12, '3:48', 'mus/songs.pk04-Kabira-YehJawaaniHaiDeewani.mp3', 1, 75),
(71, 'songs.pk02-BalamPichkari-YehJawaaniHaiDeewani.mp3', 2, 7, 7, '4:27', 'mus/songs.pk02-BalamPichkari-YehJawaaniHaiDeewani.mp3', 8, 92),
(72, '01 - Kuch To Hai - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 7, 9, 1, '6:58', 'mus/01 - Kuch To Hai - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 4, 95),
(73, '03 Alfazon Ki Tarah [Songspk.LINK].mp3', 5, 9, 10, '6:1', 'mus/03 Alfazon Ki Tarah [Songspk.LINK].mp3', 7, 11),
(74, '01-Fitoor-Pashminasongspk.link.mp3', 9, 8, 12, '3:31', 'mus/01-Fitoor-Pashminasongspk.link.mp3', 8, 76),
(75, '03-Malharisongspk.link.mp3', 5, 1, 9, '3:44', 'mus/03-Malharisongspk.link.mp3', 9, 84),
(76, '03 - Cham Cham [Songspk.LINK].mp3', 3, 2, 7, '5:38', 'mus/03 - Cham Cham [Songspk.LINK].mp3', 5, 21),
(77, '05-PhirBhiYehZindagisongspk.link.mp3', 6, 3, 6, '3:10', 'mus/05-PhirBhiYehZindagisongspk.link.mp3', 4, 80),
(78, 'PAPA.mp3', 1, 9, 1, '3:3', 'mus/PAPA.mp3', 5, 10),
(79, '01-Bannosongspk.link.mp3', 4, 8, 10, '3:42', 'mus/01-Bannosongspk.link.mp3', 9, 43),
(80, 'ghar3www.songs.pk.mp3', 9, 3, 1, '3:50', 'mus/ghar3www.songs.pk.mp3', 1, 61),
(81, '01 Rock Tha Party [Songspk.LINK].mp3', 1, 1, 2, '5:16', 'mus/01 Rock Tha Party [Songspk.LINK].mp3', 4, 56),
(82, '05 - Ud-Daa Punjab - [Songspk.LIVE].mp3', 3, 2, 3, '3:12', 'mus/05 - Ud-Daa Punjab - [Songspk.LIVE].mp3', 5, 9),
(83, '02-MoveOnsongspk.link.mp3', 5, 3, 1, '3:10', 'mus/02-MoveOnsongspk.link.mp3', 6, 94),
(84, '02-Aayatsongspk.link.mp3', 1, 2, 2, '6:57', 'mus/02-Aayatsongspk.link.mp3', 7, 81),
(85, '01-DilDhadakneDosongspk.link.mp3', 2, 7, 12, '5:15', 'mus/01-DilDhadakneDosongspk.link.mp3', 7, 73),
(86, 'songs.pkJeeKardabadlapur-320kbps.mp3', 7, 4, 2, '5:42', 'mus/songs.pkJeeKardabadlapur-320kbps.mp3', 4, 92),
(87, '08-OSathiMeresongspk.link.mp3', 2, 4, 3, '6:44', 'mus/08-OSathiMeresongspk.link.mp3', 7, 84),
(88, '_songs.pk_Makkhi-01-AreAreAre.mp3', 1, 4, 3, '5:13', 'mus/_songs.pk_Makkhi-01-AreAreAre.mp3', 6, 37),
(89, '06-Tamasha-Safarnamasongspk.link.mp3', 3, 9, 10, '5:17', 'mus/06-Tamasha-Safarnamasongspk.link.mp3', 5, 78),
(90, '04 Aye Khuda [Songspk.LINK].mp3', 4, 2, 9, '4:14', 'mus/04 Aye Khuda [Songspk.LINK].mp3', 7, 44),
(91, '02 - Itni Si Baat Hain [Songspk.LINK].mp3', 7, 9, 8, '3:0', 'mus/02 - Itni Si Baat Hain [Songspk.LINK].mp3', 4, 53),
(92, '02-DilCheezTujheDedi-Airliftsongspk.link.mp3', 3, 8, 9, '5:28', 'mus/02-DilCheezTujheDedi-Airliftsongspk.link.mp3', 8, 33),
(93, 'Shree420-pyarHuaIqrarHua.mp3', 5, 1, 7, '3:39', 'mus/Shree420-pyarHuaIqrarHua.mp3', 5, 70),
(94, '02 - Let\'s Talk About Love [Songspk.LINK].mp3', 6, 5, 2, '5:47', 'mus/02 - Let\'s Talk About Love [Songspk.LINK].mp3', 9, 81),
(95, '02-Tamasha-HeerTohBadiSadHaisongspk.link.mp3', 4, 3, 2, '4:53', 'mus/02-Tamasha-HeerTohBadiSadHaisongspk.link.mp3', 1, 44),
(96, '03-Wazir-Maulasongspk.link.mp3', 5, 4, 6, '4:26', 'mus/03-Wazir-Maulasongspk.link.mp3', 3, 31),
(97, '09-Fitoorisongspk.link.mp3', 1, 7, 10, '3:41', 'mus/09-Fitoorisongspk.link.mp3', 9, 47),
(98, '04 - Fake Ishq [Songspk.LIVE].mp3', 8, 4, 3, '5:6', 'mus/04 - Fake Ishq [Songspk.LIVE].mp3', 7, 55),
(99, '01-SochNaSake-Airliftsongspk.link.mp3', 4, 3, 4, '5:15', 'mus/01-SochNaSake-Airliftsongspk.link.mp3', 3, 80),
(100, 'songs.pk05-Entertainment-NahinWohSaamne.mp3', 2, 2, 2, '4:13', 'mus/songs.pk05-Entertainment-NahinWohSaamne.mp3', 7, 27),
(101, '02-Fitoor-YehFitoorMerasongspk.link.mp3', 2, 1, 3, '5:3', 'mus/02-Fitoor-YehFitoorMerasongspk.link.mp3', 6, 37),
(102, '03-GallanGoodiyaansongspk.link.mp3', 3, 4, 12, '6:21', 'mus/03-GallanGoodiyaansongspk.link.mp3', 7, 78),
(103, '05-Wazir-TereLiyeMereKareemsongspk.link.mp3', 2, 2, 6, '6:42', 'mus/05-Wazir-TereLiyeMereKareemsongspk.link.mp3', 2, 73),
(104, '07-HoGayaHaiPyarsongspk.link.mp3', 4, 5, 7, '4:51', 'mus/07-HoGayaHaiPyarsongspk.link.mp3', 3, 43),
(105, '04-Fitoor-HonedoBatiyasongspk.link.mp3', 3, 4, 12, '6:56', 'mus/04-Fitoor-HonedoBatiyasongspk.link.mp3', 4, 58),
(106, 'stolenm1www.songs.pk.mp3', 8, 3, 3, '4:35', 'mus/stolenm1www.songs.pk.mp3', 7, 84),
(107, 'DilKarehoMannJahaan-AtifAslam.mp3', 9, 5, 9, '4:57', 'mus/DilKarehoMannJahaan-AtifAslam.mp3', 6, 86),
(108, 'songs.pk02-Entertainment-TeraNaamDoon.mp3', 4, 3, 3, '4:15', 'mus/songs.pk02-Entertainment-TeraNaamDoon.mp3', 6, 15),
(109, '01-Piku-JourneySongsongspk.link.mp3', 6, 4, 7, '5:40', 'mus/01-Piku-JourneySongsongspk.link.mp3', 6, 35),
(110, '04-NeendeinKhulJaatiHainsongspk.link.mp3', 9, 5, 10, '6:36', 'mus/04-NeendeinKhulJaatiHainsongspk.link.mp3', 2, 50),
(111, '06-Fitoor-RangaaRehindiVersionsongspk.link.mp3', 1, 8, 7, '3:49', 'mus/06-Fitoor-RangaaRehindiVersionsongspk.link.mp3', 2, 63),
(112, '07 - Vadiya - [Songspk.LIVE].mp3', 9, 5, 5, '6:52', 'mus/07 - Vadiya - [Songspk.LIVE].mp3', 7, 51),
(113, 'songs.pk05-YoYoHits-Lonely.mp3', 4, 6, 8, '3:53', 'mus/songs.pk05-YoYoHits-Lonely.mp3', 5, 87),
(114, '02-PehliBaarsongspk.link.mp3', 3, 1, 4, '6:19', 'mus/02-PehliBaarsongspk.link.mp3', 1, 58),
(115, 'songs.pk06-Entertainment-VeereyDiWeddingremix.mp3', 1, 2, 1, '3:49', 'mus/songs.pk06-Entertainment-VeereyDiWeddingremix.mp3', 8, 74),
(116, '01-Saiyyan-Www.downloadming.com.mp3', 7, 7, 9, '5:15', 'mus/01-Saiyyan-Www.downloadming.com.mp3', 1, 15),
(117, '01 - Chitta Ve - Udta Punjab [Songspk.LIVE].mp3', 6, 5, 4, '4:33', 'mus/01 - Chitta Ve - Udta Punjab [Songspk.LIVE].mp3', 1, 49),
(118, 'songs.pkSoorajDoobaHainYaaron-Roy-128kbps.mp3', 5, 3, 1, '5:36', 'mus/songs.pkSoorajDoobaHainYaaron-Roy-128kbps.mp3', 3, 3),
(119, '05-OldSchoolGirlsongspk.link.mp3', 1, 8, 4, '4:31', 'mus/05-OldSchoolGirlsongspk.link.mp3', 1, 42),
(120, '02-Wazir-TuMerePaassongspk.link.mp3', 2, 8, 12, '4:5', 'mus/02-Wazir-TuMerePaassongspk.link.mp3', 7, 5),
(121, 'songs.pk01-2States-Offo.mp3', 2, 4, 8, '5:33', 'mus/songs.pk01-2States-Offo.mp3', 2, 96),
(122, '03 - Da Da Dasse - [Songspk.LIVE].mp3', 9, 8, 1, '4:47', 'mus/03 - Da Da Dasse - [Songspk.LIVE].mp3', 2, 22),
(123, 'KuchTohLogKahengetitleTrack-SonyTvpakheaven.com.mp3', 6, 7, 3, '6:28', 'mus/KuchTohLogKahengetitleTrack-SonyTvpakheaven.com.mp3', 1, 16),
(124, '03-Tamasha-TumSaathHosongspk.link.mp3', 8, 8, 8, '5:10', 'mus/03-Tamasha-TumSaathHosongspk.link.mp3', 2, 10),
(125, '05-AlbelaSajansongspk.link.mp3', 6, 5, 11, '6:12', 'mus/05-AlbelaSajansongspk.link.mp3', 4, 49),
(126, '05 - Girl I Need You  [Songspk.LINK].mp3', 2, 1, 9, '3:36', 'mus/05 - Girl I Need You  [Songspk.LINK].mp3', 2, 34),
(127, '03 - Ankhiyaan - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 3, 7, 2, '5:31', 'mus/03 - Ankhiyaan - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 1, 45),
(128, '03 - Buddhu Sa Mann [Songspk.LINK].mp3', 3, 3, 12, '6:53', 'mus/03 - Buddhu Sa Mann [Songspk.LINK].mp3', 2, 19),
(129, 'songs.pk15-YoYoHits-RaniTuMeinRaja.mp3', 2, 7, 3, '5:11', 'mus/songs.pk15-YoYoHits-RaniTuMeinRaja.mp3', 5, 9),
(130, '05 Titliyan [Songspk.LINK].mp3', 1, 5, 12, '5:40', 'mus/05 Titliyan [Songspk.LINK].mp3', 4, 88),
(131, 'players05www.songs.pk.mp3', 9, 9, 9, '4:29', 'mus/players05www.songs.pk.mp3', 4, 64),
(132, 'songs.pk09-YoYoHits-HighHeels.mp3', 8, 1, 6, '4:36', 'mus/songs.pk09-YoYoHits-HighHeels.mp3', 4, 72),
(133, 'songs.pk02-Samjhawan.mp3', 4, 1, 5, '4:51', 'mus/songs.pk02-Samjhawan.mp3', 2, 61),
(134, '04 - Jeena Marna (Female) - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 7, 5, 11, '6:5', 'mus/04 - Jeena Marna (Female) - Do Lafzon Ki Kahani [Songspk.LIVE].mp3', 3, 37),
(135, 'playlist.py', 7, 4, 6, '6:50', 'mus/playlist.py', 5, 80),
(136, '05-Piku-TeriMeriBaateinsongspk.link.mp3', 6, 6, 8, '5:5', 'mus/05-Piku-TeriMeriBaateinsongspk.link.mp3', 1, 93),
(137, '_songs.pk_StudentOfTheYear-03-IshqWalaLove.mp3', 3, 3, 5, '6:28', 'mus/_songs.pk_StudentOfTheYear-03-IshqWalaLove.mp3', 9, 98),
(138, '06-OldSchoolGirlharyanvisongspk.link.mp3', 8, 1, 12, '4:44', 'mus/06-OldSchoolGirlharyanvisongspk.link.mp3', 9, 24),
(139, 'himym.mpga', 8, 4, 7, '4:22', 'mus/himym.mpga', 2, 24),
(140, '02 - Ikk Kudi (Reprised) [Songspk.LIVE].mp3', 7, 8, 8, '6:11', 'mus/02 - Ikk Kudi (Reprised) [Songspk.LIVE].mp3', 2, 37),
(141, '_songs.pk_StudentOfTheYear-05-Kukkad.mp3', 9, 6, 2, '3:9', 'mus/_songs.pk_StudentOfTheYear-05-Kukkad.mp3', 3, 87),
(142, '03-MeraNachanNu-Airliftsongspk.link.mp3', 9, 9, 6, '5:58', 'mus/03-MeraNachanNu-Airliftsongspk.link.mp3', 6, 71),
(143, '07-Tamasha-ParadeDeLaBastillesongspk.link.mp3', 5, 9, 2, '3:16', 'mus/07-Tamasha-ParadeDeLaBastillesongspk.link.mp3', 3, 82),
(144, '07-Pingasongspk.link.mp3', 5, 1, 11, '6:3', 'mus/07-Pingasongspk.link.mp3', 2, 87),
(145, 'songs.pk02-YoYoHits-BringMeBack.mp3', 2, 7, 11, '5:59', 'mus/songs.pk02-YoYoHits-BringMeBack.mp3', 8, 17),
(146, 'music.zip', 4, 5, 10, '5:54', 'mus/music.zip', 9, 71),
(147, '04 - Ikk Kudi - [Songspk.LIVE].mp3', 1, 4, 8, '5:59', 'mus/04 - Ikk Kudi - [Songspk.LIVE].mp3', 7, 40),
(148, '_songs.pk_VickyDonor-04-PaniDaRangmale.mp3', 7, 5, 11, '4:35', 'mus/_songs.pk_VickyDonor-04-PaniDaRangmale.mp3', 6, 94),
(149, 'songs.pk03-YoYoHits-BrownRang.mp3', 1, 1, 12, '3:58', 'mus/songs.pk03-YoYoHits-BrownRang.mp3', 6, 48),
(150, '01-TumheApnaBananeKasongspk.link.mp3', 1, 9, 3, '5:50', 'mus/01-TumheApnaBananeKasongspk.link.mp3', 4, 92),
(151, 'rdb05www.songs.pk.mp3', 7, 8, 6, '6:33', 'mus/rdb05www.songs.pk.mp3', 6, 29),
(152, 'songs.pk05-DilliwaaliGirlfriend-YehJawaaniHaiDeewani.mp3', 6, 4, 8, '5:32', 'mus/songs.pk05-DilliwaaliGirlfriend-YehJawaaniHaiDeewani.mp3', 4, 67),
(153, 'songs.pk03-DaingadDaingad.mp3', 3, 2, 10, '3:55', 'mus/songs.pk03-DaingadDaingad.mp3', 6, 71),
(154, 'songs.pk04-Entertainment-TeriMahimaAprampaar.mp3', 7, 6, 1, '4:53', 'mus/songs.pk04-Entertainment-TeriMahimaAprampaar.mp3', 7, 25),
(155, '05_Nenjukkule_-_Shakthishree_Gopalan.mp3', 4, 4, 9, '4:59', 'mus/05_Nenjukkule_-_Shakthishree_Gopalan.mp3', 5, 100),
(156, '_songs.pk_GoGoaGone-02-KhoonChoosLe.mp3', 7, 5, 1, '4:40', 'mus/_songs.pk_GoGoaGone-02-KhoonChoosLe.mp3', 6, 85),
(157, 'MarJaayenloveshhuda-AtifAslam.mp3', 8, 9, 9, '3:5', 'mus/MarJaayenloveshhuda-AtifAslam.mp3', 7, 98),
(158, 'songs.pk05-EmotionalFool.mp3', 2, 2, 4, '4:37', 'mus/songs.pk05-EmotionalFool.mp3', 2, 71),
(159, 'songs.pk11-YoYoHits-SatanweedPilaDe.mp3', 7, 3, 2, '5:39', 'mus/songs.pk11-YoYoHits-SatanweedPilaDe.mp3', 4, 34),
(160, '04-Wazir-KhelKhelMeinsongspk.link.mp3', 6, 3, 8, '5:52', 'mus/04-Wazir-KhelKhelMeinsongspk.link.mp3', 1, 90),
(161, 'songs.pk08-Kabira-YehJawaaniHaiDeewani.mp3', 7, 3, 1, '5:38', 'mus/songs.pk08-Kabira-YehJawaaniHaiDeewani.mp3', 2, 1),
(162, '03-WajahTumHosongspk.link.mp3', 4, 6, 11, '3:53', 'mus/03-WajahTumHosongspk.link.mp3', 7, 77),
(163, '02 Rehnuma [Songspk.LINK].mp3', 4, 8, 10, '6:21', 'mus/02 Rehnuma [Songspk.LINK].mp3', 4, 13),
(164, '01-DeewaniMastanisongspk.link.mp3', 6, 6, 1, '4:19', 'mus/01-DeewaniMastanisongspk.link.mp3', 6, 53),
(165, '04-GirlsLikeToSwingsongspk.link.mp3', 4, 6, 8, '4:44', 'mus/04-GirlsLikeToSwingsongspk.link.mp3', 1, 45),
(166, 'songs.pk01-SaturdaySaturday.mp3', 7, 5, 1, '5:34', 'mus/songs.pk01-SaturdaySaturday.mp3', 2, 56),
(167, 'aisha03www.songs.pk.mp3', 4, 3, 11, '6:51', 'mus/aisha03www.songs.pk.mp3', 3, 16),
(168, '08-Tamasha-WatWatvengeanceMixsongspk.link.mp3', 6, 4, 8, '4:36', 'mus/08-Tamasha-WatWatvengeanceMixsongspk.link.mp3', 5, 79),
(169, 'songs.pkLetsCelebratetevar-ImranKhan-320kbps.mp3', 7, 8, 4, '5:2', 'mus/songs.pkLetsCelebratetevar-ImranKhan-320kbps.mp3', 7, 55),
(170, '09-Tamasha-TuKoiAurHaisongspk.link.mp3', 8, 3, 10, '4:44', 'mus/09-Tamasha-TuKoiAurHaisongspk.link.mp3', 3, 22),
(171, '04-GhaniBawrisongspk.link.mp3', 8, 8, 10, '4:18', 'mus/04-GhaniBawrisongspk.link.mp3', 5, 72),
(172, 'songs.pkPartyToBantiHaibhoothnathReturns-128kbps.mp3', 9, 9, 1, '4:50', 'mus/songs.pkPartyToBantiHaibhoothnathReturns-128kbps.mp3', 7, 50),
(173, 'aahatein.mp3', 4, 4, 7, '4:12', 'mus/aahatein.mp3', 1, 23),
(174, 'songs.pk04-LuckyTuLuckyMe.mp3', 2, 8, 6, '6:45', 'mus/songs.pk04-LuckyTuLuckyMe.mp3', 4, 9),
(175, '05-Tamasha-ChaliKahanisongspk.link.mp3', 9, 6, 12, '5:21', 'mus/05-Tamasha-ChaliKahanisongspk.link.mp3', 4, 73),
(176, 'songs.pkDanceBasantiungli-320kbps.mp3', 8, 7, 4, '5:47', 'mus/songs.pkDanceBasantiungli-320kbps.mp3', 3, 56),
(177, 'IshqflintJ.mp3', 2, 6, 10, '4:1', 'mus/IshqflintJ.mp3', 8, 99),
(178, '07-Fitoor-RangaaReenglishVersionsongspk.link.mp3', 3, 6, 5, '5:23', 'mus/07-Fitoor-RangaaReenglishVersionsongspk.link.mp3', 7, 32),
(179, '02-TuIsaqMerasongspk.link.mp3', 1, 7, 7, '6:44', 'mus/02-TuIsaqMerasongspk.link.mp3', 5, 5),
(180, '02 - Bolna [Songspk.LINK].mp3', 6, 7, 5, '6:53', 'mus/02 - Bolna [Songspk.LINK].mp3', 7, 67),
(181, 'songs.pkManaliTrancetheShaukeens-HoneySingh-320kbps.mp3', 2, 7, 9, '4:42', 'mus/songs.pkManaliTrancetheShaukeens-HoneySingh-320kbps.mp3', 7, 33),
(182, 'OneBottleDownyoYoHoneySingh-320kbpssongspk.name.mp3', 6, 7, 3, '6:57', 'mus/OneBottleDownyoYoHoneySingh-320kbpssongspk.name.mp3', 4, 40),
(183, 'TeriMeriKahaanigabbarIsBack-320kbpssongspk.name.mp3', 2, 5, 11, '3:15', 'mus/TeriMeriKahaanigabbarIsBack-320kbpssongspk.name.mp3', 5, 23),
(184, 'songs.pk06-2States-HullaRe.mp3', 5, 9, 4, '6:41', 'mus/songs.pk06-2States-HullaRe.mp3', 8, 92),
(185, 'songs.pk02-2States-Locha-e-ulfat.mp3', 4, 1, 8, '6:56', 'mus/songs.pk02-2States-Locha-e-ulfat.mp3', 2, 68),
(186, 'songs.pkBlueEyesyoYoHoneySingh-128kbps.mp3', 5, 1, 5, '4:33', 'mus/songs.pkBlueEyesyoYoHoneySingh-128kbps.mp3', 1, 38),
(187, '_songs.pk_EkThiDaayan-01-Yaaram.mp3', 8, 6, 6, '4:34', 'mus/_songs.pk_EkThiDaayan-01-Yaaram.mp3', 5, 14),
(188, '03 - Oye Oye [Songspk.LINK].mp3', 4, 5, 3, '3:24', 'mus/03 - Oye Oye [Songspk.LINK].mp3', 7, 68),
(189, 'songs.pk07-YoYoHits-AngrejiBeat.mp3', 7, 1, 3, '4:43', 'mus/songs.pk07-YoYoHits-AngrejiBeat.mp3', 9, 18),
(190, '08-RoNeDothePainOfLovemymp3song.com.mp3', 2, 8, 3, '4:9', 'mus/08-RoNeDothePainOfLovemymp3song.com.mp3', 7, 68);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'ananya', 'Ananya', 'Singh', 'Singhanany787@gmail.com', '09e5cb531a1f732e541bb04f9b680249', '2022-02-04 00:00:00', 'assets/images/profile-pics/user.png'),
(2, 'sheetal', 'Sheetal', 'Singh', 'Sheetalsingh@gmail.com', '0040ab77fe2607c1fcd0a7069dd9faa5', '2022-02-05 00:00:00', 'assets/images/profile-pics/user.png'),
(3, 'shweta', 'Shweta', 'Waghmare', 'Shweta@gmail.com', '4207e1e6e3809688a8b9ed1b2c1b7faa', '2022-02-08 00:00:00', 'assets/images/profile-pics/user.png'),
(4, 'lacky', 'Lucky', 'Singh', 'Singhlacky2001@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-02-21 00:00:00', 'assets/images/profile-pics/user.png'),
(5, 'shwetawaghmare', 'Shweta', 'Waghmare', 'Shwetawaghmare105@gmail.com', '59bbaddbdf9c1ab5a8ff6c031fa0a108', '2022-02-25 00:00:00', 'assets/images/profile-pics/user.png'),
(6, 'ManyaSingh', 'Manya', 'Singh', 'Manyasingh11842@gmail.com', 'b716ac52c5058035228e5d4bd8f64c5e', '2022-03-04 00:00:00', 'assets/images/profile-pics/user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistssongs`
--
ALTER TABLE `playlistssongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `playlistssongs`
--
ALTER TABLE `playlistssongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=577;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
