-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 06 juin 2023 à 08:53
-- Version du serveur : 5.7.36
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hotel`
--

-- --------------------------------------------------------

--
-- Structure de la table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numbers` varchar(255) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rooms`
--

INSERT INTO `rooms` (`id`, `numbers`, `statut`, `capacity`) VALUES
(1, 'Room1', 1, 3),
(2, 'Room1', 1, 4),
(3, 'Room1', 1, 4),
(4, 'Room2', 1, 5),
(5, 'Room3', 1, 2),
(6, 'Room4', 1, 4),
(7, 'Room1', 0, 1),
(8, 'Room2', 0, 1),
(9, 'Room3', 1, 4),
(10, 'Room4', 1, 1),
(11, 'Room5', 1, 1),
(12, 'Room6', 0, 1),
(13, 'Room7', 0, 3),
(14, 'Room8', 1, 1),
(15, 'Room9', 1, 1),
(16, 'Room10', 0, 1),
(17, 'Room11', 0, 4),
(18, 'Room12', 1, 1),
(19, 'Room13', 1, 4),
(20, 'Room14', 0, 2),
(21, 'Room15', 1, 2),
(22, 'Room16', 1, 2),
(23, 'Room17', 1, 3),
(24, 'Room18', 1, 1),
(25, 'Room19', 0, 2),
(26, 'Room20', 1, 4),
(27, 'Room21', 0, 5),
(28, 'Room22', 1, 2),
(29, 'Room23', 0, 5),
(30, 'Room24', 0, 3),
(31, 'Room25', 0, 1),
(32, 'Room26', 0, 2),
(33, 'Room27', 0, 5),
(34, 'Room28', 1, 5),
(35, 'Room29', 0, 2),
(36, 'Room30', 1, 3),
(37, 'Room31', 1, 2),
(38, 'Room32', 0, 3),
(39, 'Room33', 1, 3),
(40, 'Room34', 1, 3),
(41, 'Room35', 1, 1),
(42, 'Room36', 1, 1),
(43, 'Room37', 1, 1),
(44, 'Room38', 1, 4),
(45, 'Room39', 0, 4),
(46, 'Room40', 0, 4),
(47, 'Room41', 0, 1),
(48, 'Room42', 1, 2),
(49, 'Room43', 0, 5),
(50, 'Room44', 1, 4),
(51, 'Room45', 1, 4),
(52, 'Room46', 0, 3),
(53, 'Room47', 0, 1),
(54, 'Room48', 0, 5),
(55, 'Room49', 0, 5),
(56, 'Room50', 0, 2),
(57, 'Room51', 0, 4),
(58, 'Room52', 0, 5),
(59, 'Room53', 0, 4),
(60, 'Room54', 1, 4),
(61, 'Room55', 0, 5),
(62, 'Room56', 0, 3),
(63, 'Room57', 0, 4),
(64, 'Room58', 0, 3),
(65, 'Room59', 1, 3),
(66, 'Room60', 0, 2),
(67, 'Room61', 1, 1),
(68, 'Room62', 0, 3),
(69, 'Room63', 0, 4),
(70, 'Room64', 1, 4),
(71, 'Room65', 1, 5),
(72, 'Room66', 0, 3),
(73, 'Room67', 0, 3),
(74, 'Room68', 1, 3),
(75, 'Room69', 0, 4),
(76, 'Room70', 0, 2),
(77, 'Room71', 1, 4),
(78, 'Room72', 0, 2),
(79, 'Room73', 1, 5),
(80, 'Room74', 0, 1),
(81, 'Room75', 1, 5),
(82, 'Room76', 0, 5),
(83, 'Room77', 0, 5),
(84, 'Room78', 1, 5),
(85, 'Room79', 0, 2),
(86, 'Room80', 0, 3),
(87, 'Room81', 1, 4),
(88, 'Room82', 0, 2),
(89, 'Room83', 1, 3),
(90, 'Room84', 0, 4),
(91, 'Room85', 0, 2),
(92, 'Room86', 0, 3),
(93, 'Room87', 1, 1),
(94, 'Room88', 0, 5),
(95, 'Room89', 0, 1),
(96, 'Room90', 1, 2),
(97, 'Room91', 0, 1),
(98, 'Room92', 0, 2),
(99, 'Room93', 1, 2),
(100, 'Room94', 0, 2),
(101, 'Room95', 0, 4),
(102, 'Room96', 0, 3),
(103, 'Room97', 0, 1),
(104, 'Room98', 1, 2),
(105, 'Room99', 1, 1),
(106, 'Room100', 1, 4),
(107, 'Room101', 1, 5),
(108, 'Room102', 1, 3),
(109, 'Room103', 0, 4),
(110, 'Room104', 1, 2),
(111, 'Room105', 0, 1),
(112, 'Room106', 1, 1),
(113, 'Room107', 0, 5),
(114, 'Room108', 1, 2),
(115, 'Room109', 0, 5),
(116, 'Room110', 0, 3),
(117, 'Room111', 1, 3),
(118, 'Room112', 1, 4),
(119, 'Room113', 0, 4),
(120, 'Room114', 0, 2),
(121, 'Room115', 0, 2),
(122, 'Room116', 1, 1),
(123, 'Room117', 0, 2),
(124, 'Room118', 1, 4),
(125, 'Room119', 0, 4),
(126, 'Room120', 1, 1),
(127, 'Room121', 0, 3),
(128, 'Room122', 0, 4),
(129, 'Room123', 1, 4),
(130, 'Room124', 1, 1),
(131, 'Room125', 1, 2),
(132, 'Room126', 0, 5),
(133, 'Room127', 1, 4),
(134, 'Room128', 0, 5),
(135, 'Room129', 0, 5),
(136, 'RoomPerso1', 1, 10),
(137, 'RoomPerso1', 1, 10),
(138, 'RoomYannis', 1, 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
