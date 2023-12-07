-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2023 at 10:02 AM
-- Server version: 8.1.0
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffre`
--

-- --------------------------------------------------------

--
-- Table structure for table `Books`
--

CREATE TABLE `Books` (
  `Id` int NOT NULL,
  `Book` varchar(500) NOT NULL,
  `Level` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Books`
--

INSERT INTO `Books` (`Id`, `Book`, `Level`, `updated_at`, `created_at`) VALUES
(1, '(\"Christi\" et la fin sou\"ne\")', '2H', '2023-12-06 03:33:27', '2023-12-04 23:05:17'),
(2, '(2ème partie du prénom)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(3, '(attention, il y a erreur ! \"oui\" se code à la bouche !!! A changer ! Idem pour la carte initiale', 'Crêche', '2023-12-05 02:59:24', '2023-12-04 23:05:17'),
(4, '(attention, le oui n\'est pas bien codé !!!)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(5, '(autre version - position du \"o\" différente)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(6, '(début du prénom \"Alexandra\"', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(7, '(début du prénom \"Fernando\"', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(8, '(début du prénom Balthazar et attention, il n\'y a pas le son \"za\" dans le coffre à histoires =\"ka\")', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(9, '(deuxième partie du mot)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(10, '(deuxième partie)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(11, '(fin du prénom \"Christine\". Pour le début du prénom, voir sous \"Christi\"', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(12, '(géométrie : pyramide à base \"carrée\", ...)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(13, '(ici, pour la fin du prénom \"Etheban\", voir aussi sous \"Esheba\")', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(14, '(j\'ai insérer dans le système \"lit\" pour avoir ce \"oui\" car les cartes \"oui\" sont fausses)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(15, '(la lettre comme elle se prononce, comme elle \"chante\")', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(16, '(le son \"za\" n\'existe pas dans le coffre à histoires)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(17, '(le son que fait la vache)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(18, '(phonèmes voyelles sosies labiaux i/é)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(19, '1,2,3 banquise', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(20, '31 Boîtes', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(21, 'Atchoum', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(22, 'Au Galop!', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(23, 'Aujourd\'hui je suis...', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(24, 'Avec moi c\'est comme ça', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(25, 'Banquise blues', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(26, 'Beau bon', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(27, 'Bientôt l\'hiver', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(28, 'Blanche Neige', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(29, 'Blanche-Neige', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(30, 'Bloup bloup bloup', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(31, 'Bon appétit! Monsieur Lapin', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(32, 'book_excerpt', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(33, 'C’est dingue !', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(34, 'C’est dingue !', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(35, 'ça suffit mammouth', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(36, 'C\'est moi le plus fort', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(37, 'chats', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(38, 'Chut ! on a un plan', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(39, 'Coincé', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(40, 'Couleurs', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(41, 'Crocolou aime les livres', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(42, 'Dangereux', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(43, 'Dans la cour de l’école', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(44, 'Dans ma maison', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(45, 'Dis papa est-ce que les dinosaures sont morts ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(46, 'Dis papa est-ce que les dinosaures sont morts ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(47, 'Dis-moi', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(48, 'Dis-moi ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(49, 'Drôle d\'oeuf', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(50, 'Ecoute les bruits du château', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(51, 'Ecoute les bruits du cirque', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(52, 'Enora', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(53, 'Ephémère', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(54, 'Estheba pour le prénom Estheban ... Voir fiche \"n\" pour compléter)', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(55, 'Et pourquoi?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(56, 'Et si je mangeais ma soupe?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(57, 'Frisson l’écureuil', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(58, 'Grand loup et petit loup', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(59, 'Grand loup petit loup', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(60, 'Grosse colère', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(61, 'Hier je t’ai…', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(62, 'ici pour le prénom \"Marie-Stella\", voir aussi sous \"Stella\"', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(63, 'ici, pour le prénom \"Marie-Stella\", voir aussi sous \"Marie\"', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(64, 'ici, pour le prénom \"Patricia\", voir aussi sous \"ia\"', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(65, 'ici, pour le prénom \"Patricia\", voir aussi sous \"Patric\"', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(66, 'Igor et Natacha', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(67, 'Il était plusieurs fois une forêt', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(68, 'L’Afrique de Zigomar', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(69, 'L’hiver de la famille souris', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(70, 'La chasse à l\'ours', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(71, 'La colère du dragon', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(72, 'La moufle', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(73, 'La nature', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(74, 'La provision de bisous de Zou', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(75, 'La tarte aux fées', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(76, 'La tournée du facteur Souris', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(77, 'le bain de Berk', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(78, 'Le bain de madame trompette', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(79, 'Le ça', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(80, 'Le crocodile qui avait peur de l’eau', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(81, 'Le jour où j’ai perdu mes supers pouvoirs', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(82, 'Le lapin noir', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(83, 'Le lapin, la nuit et la boîte à biscuits', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(84, 'Le monstre des couleurs', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(85, 'Le monstre des couleurs va à l\'école', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(86, 'Le parapluie jaune', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(87, 'Le parapluie vert', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(88, 'Le petit chaperon rouge', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(89, 'L\'enfant et la baleine', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(90, 'L\'enfant, la baleine et l\'hiver', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(91, 'Les boîtes à mots', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(92, 'Les copains de la colline', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(93, 'Les instruments', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(94, 'Les Pompiers', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(95, 'Les poupées c\'est pour les filles', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(96, 'les trois ours', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(97, 'Les trois pommiers', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(98, 'Lily cherche son chat', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(99, 'Mais qui vit là?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(100, 'Maman Ours', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(101, 'Marre du rose', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(102, 'Merci le vent', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(103, 'Mon oiseau', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(104, 'Neige, le blanc et les couleurs', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(105, 'Nous ce qu’on préfère', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(106, 'Océano', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(107, 'Où est Mouf ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(108, 'Où est Mouf ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(109, 'Où êtes-vous', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(110, 'Ouaf, miaou, cui-cui', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(111, 'Ouste ! attention aux ours', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(112, 'Ouvre ce petit livre', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(113, 'Pas touche', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(114, 'Petit oubli', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(115, 'Poisson et chat', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(116, 'Pou-poule !', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(117, 'Pou-poule!', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(118, 'Pour tester le système', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(119, 'Pourquoi ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(120, 'Pourquoi ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(121, 'Prénom camarade de classe', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(122, 'Prénom camarade de classe (première partie \"Vince\"', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(123, 'Prénom de camarade (fin \"nzo\")', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(124, 'Prénom enseignant', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(125, 'Qu’est-ce que c’est ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(126, 'Qu’est-ce que c’est ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(127, 'Quatre petits coins de rien du tout', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(128, 'Que caches tu dans ton dos ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(129, 'Qu\'est-ce que c\'est ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(130, 'Qui, quoi, où ?', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(131, 'Rien qu’une fois', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(132, 'Sophie et sa courge', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(133, 'Sous mon arbre', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(134, 'Splat et la sortie de classe', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(135, 'Sur les genoux de maman', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(136, 'Ta main dans ma main', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(137, 'test', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(138, 'Tous les animaux étaient en colère', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(139, 'Tout ce qu\'il faut pour faire une cabane', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(140, 'Trois petits pois', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(141, 'Trouvinettes', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(142, 'Un livre', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(143, 'Un livre et plus encore', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(144, 'Un peu perdu', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(145, 'Une fourmi pas comme les autres', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(146, 'Une rencontre', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(147, 'Voici un oeuf', NULL, '2023-12-04 17:35:17', '2023-12-04 23:05:17'),
(155, 'qasimfwef', 'Crêche', '2023-12-05 02:59:19', '2023-12-05 08:22:41'),
(156, 'ayan', '1H', '2023-12-05 08:13:54', '2023-12-05 13:43:54'),
(157, 'dfddfd', 'Crêche', '2023-12-05 08:19:33', '2023-12-05 13:49:33'),
(158, 'dfddfd', 'Crêche', '2023-12-05 08:19:49', '2023-12-05 13:49:49'),
(159, 'rema', '1H', '2023-12-06 09:42:49', '2023-12-06 15:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE `Image` (
  `id` int NOT NULL,
  `images` varchar(1000) NOT NULL,
  `Word_tbl_Id` varchar(55) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Image`
--

INSERT INTO `Image` (`id`, `images`, `Word_tbl_Id`, `updated_at`, `created_at`) VALUES
(1, '[\"1701696301_62bc921df3c953f042e6a926_gleem-p-800.jpeg\",\"1701696301_62bc9904c11ce7b37ca4a016_aim-p-800.jpeg\"]', '34', '2023-12-04 07:55:01', '2023-12-04 13:25:01'),
(2, '[\"1701697073_62bc921df3c953f042e6a926_gleem-p-800.jpeg\",\"1701697073_62bc9904c11ce7b37ca4a016_aim-p-800.jpeg\"]', '4', '2023-12-04 08:07:53', '2023-12-04 13:37:53'),
(3, '[\"1701697222_62bc921df3c953f042e6a926_gleem-p-800.jpeg\",\"1701697222_62bc9904c11ce7b37ca4a016_aim-p-800.jpeg\",\"1701697222_6531358e5dd676e1fa867c76_Is_Webflow_Open_Source__(1).png\"]', '7', '2023-12-04 08:10:22', '2023-12-04 13:40:22'),
(4, '[\"1701784898_62bc921df3c953f042e6a926_gleem-p-800.jpeg\",\"1701784898_62bc9904c11ce7b37ca4a016_aim-p-800.jpeg\"]', '15', '2023-12-05 08:31:38', '2023-12-05 14:01:38'),
(5, '[\"1701875610_62bc921df3c953f042e6a926_gleem-p-800.jpeg\",\"1701875610_62bc9904c11ce7b37ca4a016_aim-p-800.jpeg\"]', '16', '2023-12-06 09:43:30', '2023-12-06 15:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_05_140334_syllables', 2),
(6, '2023_12_05_141139_2023_12_05_140334_syllables', 3),
(7, '2023_12_05_142146_syllables', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `syllable`
--

CREATE TABLE `syllable` (
  `id` bigint UNSIGNED NOT NULL,
  `syllable` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `syllable`
--

INSERT INTO `syllable` (`id`, `syllable`, `image`, `created_at`, `updated_at`) VALUES
(1, 'pe', '/lpc-images/DSC_0001.JPG', NULL, NULL),
(2, 'de', '/lpc-images/DSC_0001.JPG', NULL, NULL),
(3, 'je', '/lpc-images/DSC_0001.JPG', NULL, NULL),
(4, 'pa', '/lpc-images/DSC_0003.JPG', NULL, NULL),
(5, 'da', '/lpc-images/DSC_0003.JPG', NULL, NULL),
(6, 'ja', '/lpc-images/DSC_0003.JPG', NULL, NULL),
(7, 'peau', '/lpc-images/DSC_0004.JPG', NULL, NULL),
(8, 'deau', '/lpc-images/DSC_0004.JPG', NULL, NULL),
(9, 'jeau', '/lpc-images/DSC_0004.JPG', NULL, NULL),
(10, 'pou', '/lpc-images/DSC_0010.JPG', NULL, NULL),
(11, 'dou', '/lpc-images/DSC_0010.JPG', NULL, NULL),
(12, 'jou', '/lpc-images/DSC_0010.JPG', NULL, NULL),
(13, 'pè', '/lpc-images/DSC_0011.JPG', NULL, NULL),
(14, 'dè', '/lpc-images/DSC_0011.JPG', NULL, NULL),
(15, 'jè', '/lpc-images/DSC_0011.JPG', NULL, NULL),
(16, 'po', '/lpc-images/DSC_0012.JPG', NULL, NULL),
(17, 'do', '/lpc-images/DSC_0012.JPG', NULL, NULL),
(18, 'jo', '/lpc-images/DSC_0012.JPG', NULL, NULL),
(19, 'pun', '/lpc-images/DSC_0013.JPG', NULL, NULL),
(20, 'dun', '/lpc-images/DSC_0013.JPG', NULL, NULL),
(21, 'jun', '/lpc-images/DSC_0013.JPG', NULL, NULL),
(22, 'pé', '/lpc-images/DSC_0014.JPG', NULL, NULL),
(23, 'dé', '/lpc-images/DSC_0014.JPG', NULL, NULL),
(24, 'jé', '/lpc-images/DSC_0014.JPG', NULL, NULL),
(25, 'pu', '/lpc-images/DSC_0015.JPG', NULL, NULL),
(26, 'du', '/lpc-images/DSC_0015.JPG', NULL, NULL),
(27, 'ju', '/lpc-images/DSC_0015.JPG', NULL, NULL),
(28, 'ye', '/lpc-images/DSC_0021.JPG', NULL, NULL),
(29, 'yi', '/lpc-images/dsc_0158.jpg', NULL, NULL),
(30, 'yon', '/lpc-images/dsc_0159.jpg', NULL, NULL),
(31, 'you', '/lpc-images/DSC_0031.JPG', NULL, NULL),
(32, 'yè', '/lpc-images/DSC_0032.JPG', NULL, NULL),
(33, 'yo', '/lpc-images/DSC_0033.JPG', NULL, NULL),
(34, 'yun', '/lpc-images/DSC_0035.JPG', NULL, NULL),
(35, 'yé', '/lpc-images/DSC_0036.JPG', NULL, NULL),
(36, 'yu', '/lpc-images/DSC_0037.JPG', NULL, NULL),
(37, 'ki', '/lpc-images/DSC_0047.JPG', NULL, NULL),
(38, 'vi', '/lpc-images/DSC_0047.JPG', NULL, NULL),
(39, 'zi', '/lpc-images/DSC_0047.JPG', NULL, NULL),
(40, 'kon', '/lpc-images/DSC_0048.JPG', NULL, NULL),
(41, 'von', '/lpc-images/DSC_0048.JPG', NULL, NULL),
(42, 'zon', '/lpc-images/DSC_0048.JPG', NULL, NULL),
(43, 'kou', '/lpc-images/DSC_0050.JPG', NULL, NULL),
(44, 'vou', '/lpc-images/DSC_0050.JPG', NULL, NULL),
(45, 'zou', '/lpc-images/DSC_0050.JPG', NULL, NULL),
(46, 'kè', '/lpc-images/DSC_0051.JPG', NULL, NULL),
(47, 'vè', '/lpc-images/DSC_0051.JPG', NULL, NULL),
(48, 'zè', '/lpc-images/DSC_0051.JPG', NULL, NULL),
(49, 'ko', '/lpc-images/DSC_0052.JPG', NULL, NULL),
(50, 'vo', '/lpc-images/DSC_0052.JPG', NULL, NULL),
(51, 'zo', '/lpc-images/DSC_0052.JPG', NULL, NULL),
(52, 'kun', '/lpc-images/DSC_0053.JPG', NULL, NULL),
(53, 'vun', '/lpc-images/DSC_0053.JPG', NULL, NULL),
(54, 'zun', '/lpc-images/DSC_0053.JPG', NULL, NULL),
(55, 'ku', '/lpc-images/DSC_0054.JPG', NULL, NULL),
(56, 'vu', '/lpc-images/DSC_0054.JPG', NULL, NULL),
(57, 'zu', '/lpc-images/DSC_0054.JPG', NULL, NULL),
(58, 'ké', '/lpc-images/DSC_0055.JPG', NULL, NULL),
(59, 'vé', '/lpc-images/DSC_0055.JPG', NULL, NULL),
(60, 'zé', '/lpc-images/DSC_0055.JPG', NULL, NULL),
(61, 're', '/lpc-images/DSC_0058.JPG', NULL, NULL),
(62, 'se', '/lpc-images/DSC_0058.JPG', NULL, NULL),
(63, 'ra', '/lpc-images/DSC_0059.JPG', NULL, NULL),
(64, 'sa', '/lpc-images/DSC_0059.JPG', NULL, NULL),
(65, 'rou', '/lpc-images/DSC_0066.JPG', NULL, NULL),
(66, 'sou', '/lpc-images/DSC_0066.JPG', NULL, NULL),
(67, 'rè', '/lpc-images/DSC_0067.JPG', NULL, NULL),
(68, 'sè', '/lpc-images/DSC_0067.JPG', NULL, NULL),
(69, 'ro', '/lpc-images/DSC_0068.JPG', NULL, NULL),
(70, 'so', '/lpc-images/DSC_0068.JPG', NULL, NULL),
(71, 'run', '/lpc-images/DSC_0069.JPG', NULL, NULL),
(72, 'sun', '/lpc-images/DSC_0069.JPG', NULL, NULL),
(73, 'ru', '/lpc-images/DSC_0070.JPG', NULL, NULL),
(74, 'su', '/lpc-images/DSC_0070.JPG', NULL, NULL),
(75, 'ré', '/lpc-images/DSC_0071.JPG', NULL, NULL),
(76, 'sé', '/lpc-images/DSC_0071.JPG', NULL, NULL),
(77, 'n', '/lpc-images/DSC_0073.JPG', NULL, NULL),
(78, 'be', '/lpc-images/DSC_0075.JPG', NULL, NULL),
(79, 'ne', '/lpc-images/DSC_0075.JPG', NULL, NULL),
(80, 'ba', '/lpc-images/DSC_0076.JPG', NULL, NULL),
(81, 'na', '/lpc-images/DSC_0076.JPG', NULL, NULL),
(82, 'beu', '/lpc-images/DSC_0078.JPG', NULL, NULL),
(83, 'neu', '/lpc-images/DSC_0078.JPG', NULL, NULL),
(84, 'ban', '/lpc-images/DSC_0080.JPG', NULL, NULL),
(85, 'nan', '/lpc-images/DSC_0080.JPG', NULL, NULL),
(86, 'bi', '/lpc-images/DSC_0081.JPG', NULL, NULL),
(87, 'ni', '/lpc-images/DSC_0081.JPG', NULL, NULL),
(88, 'ui', '/lpc-images/DSC_0081.JPG', NULL, NULL),
(89, 'bon', '/lpc-images/DSC_0082.JPG', NULL, NULL),
(90, 'non', '/lpc-images/DSC_0082.JPG', NULL, NULL),
(91, 'bou', '/lpc-images/DSC_0083.JPG', NULL, NULL),
(92, 'nou', '/lpc-images/DSC_0083.JPG', NULL, NULL),
(93, 'bè', '/lpc-images/DSC_0084.JPG', NULL, NULL),
(94, 'nè', '/lpc-images/DSC_0084.JPG', NULL, NULL),
(95, 'uè', '/lpc-images/DSC_0084.JPG', NULL, NULL),
(96, 'bo', '/lpc-images/DSC_0085.JPG', NULL, NULL),
(97, 'no', '/lpc-images/DSC_0085.JPG', NULL, NULL),
(98, 'bun', '/lpc-images/DSC_0086.JPG', NULL, NULL),
(99, 'nun', '/lpc-images/DSC_0086.JPG', NULL, NULL),
(100, 'bé', '/lpc-images/DSC_0087.JPG', NULL, NULL),
(101, 'né', '/lpc-images/DSC_0087.JPG', NULL, NULL),
(102, 'bu', '/lpc-images/DSC_0088.JPG', NULL, NULL),
(103, 'nu', '/lpc-images/DSC_0088.JPG', NULL, NULL),
(104, 't', '/lpc-images/DSC_0090.JPG', NULL, NULL),
(105, 'gou', '/lpc-images/DSC_0118.JPG', NULL, NULL),
(106, 'guè', '/lpc-images/DSC_0119.JPG', NULL, NULL),
(107, 'go', '/lpc-images/DSC_0120.JPG', NULL, NULL),
(108, 'gu', '/lpc-images/DSC_0121.JPG', NULL, NULL),
(109, 'gué', '/lpc-images/DSC_0122.JPG', NULL, NULL),
(110, 'l', '/lpc-images/DSC_0124.JPG', NULL, NULL),
(111, 'ch', '/lpc-images/DSC_0125.JPG', NULL, NULL),
(112, 'w', '/lpc-images/DSC_0127.JPG', NULL, NULL),
(113, 'a', '/lpc-images/DSC_0142.JPG', NULL, NULL),
(114, 'e', '/lpc-images/DSC_0143.JPG', NULL, NULL),
(115, 'eau', '/lpc-images/DSC_0144.JPG', NULL, NULL),
(116, 'eu', '/lpc-images/DSC_0145.JPG', NULL, NULL),
(117, 'i', '/lpc-images/DSC_0147.JPG', NULL, NULL),
(118, 'on', '/lpc-images/DSC_0148.JPG', NULL, NULL),
(119, 'an', '/lpc-images/DSC_0149.JPG', NULL, NULL),
(120, 'ou', '/lpc-images/DSC_0150.JPG', NULL, NULL),
(121, 'è', '/lpc-images/DSC_0151.JPG', NULL, NULL),
(122, 'o', '/lpc-images/DSC_0152.JPG', NULL, NULL),
(123, 'un', '/lpc-images/DSC_0153.JPG', NULL, NULL),
(124, 'é', '/lpc-images/DSC_0154.JPG', NULL, NULL),
(125, 'u', '/lpc-images/DSC_0155.JPG', NULL, NULL),
(126, 'd', '/lpc-images/DSC_0156.JPG', NULL, NULL),
(127, 'yan', '/lpc-images/DSC_0157.JPG', NULL, NULL),
(128, 'kan', '/lpc-images/DSC_0160.JPG', NULL, NULL),
(129, 'van', '/lpc-images/DSC_0160.JPG', NULL, NULL),
(130, 'zan', '/lpc-images/DSC_0160.JPG', NULL, NULL),
(131, 'reau', '/lpc-images/DSC_0161.JPG', NULL, NULL),
(132, 'seau', '/lpc-images/DSC_0161.JPG', NULL, NULL),
(133, 'reu', '/lpc-images/DSC_0162.JPG', NULL, NULL),
(134, 'seu', '/lpc-images/DSC_0162.JPG', NULL, NULL),
(135, 'rin', '/lpc-images/DSC_0163.JPG', NULL, NULL),
(136, 'sin', '/lpc-images/DSC_0163.JPG', NULL, NULL),
(137, 'bin', '/lpc-images/DSC_0165.JPG', NULL, NULL),
(138, 'nin', '/lpc-images/DSC_0165.JPG', NULL, NULL),
(139, 'f', '/lpc-images/DSC_0167.JPG', NULL, NULL),
(140, 'm', '/lpc-images/DSC_0168.JPG', NULL, NULL),
(141, 'min', '/lpc-images/DSC_0169.JPG', NULL, NULL),
(142, 'tin', '/lpc-images/DSC_0169.JPG', NULL, NULL),
(143, 'fin', '/lpc-images/DSC_0169.JPG', NULL, NULL),
(144, 'meu', '/lpc-images/DSC_0170.JPG', NULL, NULL),
(145, 'teu', '/lpc-images/DSC_0170.JPG', NULL, NULL),
(146, 'feu', '/lpc-images/DSC_0170.JPG', NULL, NULL),
(147, 'le', '/lpc-images/DSC_0172.JPG', NULL, NULL),
(148, 'che', '/lpc-images/DSC_0172.JPG', NULL, NULL),
(149, 'gne', '/lpc-images/DSC_0172.JPG', NULL, NULL),
(150, 'la', '/lpc-images/DSC_0173.JPG', NULL, NULL),
(151, 'cha', '/lpc-images/DSC_0173.JPG', NULL, NULL),
(152, 'gna', '/lpc-images/DSC_0173.JPG', NULL, NULL),
(153, 'wa', '/lpc-images/DSC_0173.JPG', NULL, NULL),
(154, 'leau', '/lpc-images/DSC_0174.JPG', NULL, NULL),
(155, 'cheau', '/lpc-images/DSC_0174.JPG', NULL, NULL),
(156, 'gneau', '/lpc-images/DSC_0174.JPG', NULL, NULL),
(157, 'weau', '/lpc-images/DSC_0174.JPG', NULL, NULL),
(158, 'leu', '/lpc-images/DSC_0175.JPG', NULL, NULL),
(159, 'cheu', '/lpc-images/DSC_0175.JPG', NULL, NULL),
(160, 'gneu', '/lpc-images/DSC_0175.JPG', NULL, NULL),
(161, 'weu', '/lpc-images/DSC_0175.JPG', NULL, NULL),
(162, 'lin', '/lpc-images/DSC_0176.JPG', NULL, NULL),
(163, 'chin', '/lpc-images/DSC_0176.JPG', NULL, NULL),
(164, 'gnin', '/lpc-images/DSC_0176.JPG', NULL, NULL),
(165, 'win', '/lpc-images/DSC_0176.JPG', NULL, NULL),
(166, 'lan', '/lpc-images/DSC_0177.JPG', NULL, NULL),
(167, 'chan', '/lpc-images/DSC_0177.JPG', NULL, NULL),
(168, 'gnan', '/lpc-images/DSC_0177.JPG', NULL, NULL),
(169, 'wan', '/lpc-images/DSC_0177.JPG', NULL, NULL),
(170, 'li', '/lpc-images/DSC_0178.JPG', NULL, NULL),
(171, 'chi', '/lpc-images/DSC_0178.JPG', NULL, NULL),
(172, 'gni', '/lpc-images/DSC_0178.JPG', NULL, NULL),
(173, 'lon', '/lpc-images/DSC_0179.JPG', NULL, NULL),
(174, 'chon', '/lpc-images/DSC_0179.JPG', NULL, NULL),
(175, 'gnon', '/lpc-images/DSC_0179.JPG', NULL, NULL),
(176, 'won', '/lpc-images/DSC_0179.JPG', NULL, NULL),
(177, 'lou', '/lpc-images/DSC_0180.JPG', NULL, NULL),
(178, 'chou', '/lpc-images/DSC_0180.JPG', NULL, NULL),
(179, 'gnou', '/lpc-images/DSC_0180.JPG', NULL, NULL),
(180, 'wou', '/lpc-images/DSC_0180.JPG', NULL, NULL),
(181, 'lè', '/lpc-images/DSC_0181.JPG', NULL, NULL),
(182, 'chè', '/lpc-images/DSC_0181.JPG', NULL, NULL),
(183, 'gnè', '/lpc-images/DSC_0181.JPG', NULL, NULL),
(184, 'wè', '/lpc-images/DSC_0181.JPG', NULL, NULL),
(185, 'lo', '/lpc-images/DSC_0182.JPG', NULL, NULL),
(186, 'cho', '/lpc-images/DSC_0182.JPG', NULL, NULL),
(187, 'gno', '/lpc-images/DSC_0182.JPG', NULL, NULL),
(188, 'wo', '/lpc-images/DSC_0182.JPG', NULL, NULL),
(189, 'lun', '/lpc-images/DSC_0183.JPG', NULL, NULL),
(190, 'chun', '/lpc-images/DSC_0183.JPG', NULL, NULL),
(191, 'gnun', '/lpc-images/DSC_0183.JPG', NULL, NULL),
(192, 'wun', '/lpc-images/DSC_0183.JPG', NULL, NULL),
(193, 'lé', '/lpc-images/DSC_0184.JPG', NULL, NULL),
(194, 'ché', '/lpc-images/DSC_0184.JPG', NULL, NULL),
(195, 'gné', '/lpc-images/DSC_0184.JPG', NULL, NULL),
(196, 'wé', '/lpc-images/DSC_0184.JPG', NULL, NULL),
(197, 'lu', '/lpc-images/DSC_0185.JPG', NULL, NULL),
(198, 'chu', '/lpc-images/DSC_0185.JPG', NULL, NULL),
(199, 'gnu', '/lpc-images/DSC_0185.JPG', NULL, NULL),
(200, 'wu', '/lpc-images/DSC_0185.JPG', NULL, NULL),
(201, 'p', '/lpc-images/DSC_0186.JPG', NULL, NULL),
(202, 'j', '/lpc-images/DSC_0187.JPG', NULL, NULL),
(203, 'ya', '/lpc-images/DSC_0189.JPG', NULL, NULL),
(204, 'yeau', '/lpc-images/DSC_0190.JPG', NULL, NULL),
(205, 'y', '/lpc-images/DSC_0191.JPG', NULL, NULL),
(206, 'yeu', '/lpc-images/DSC_0192.JPG', NULL, NULL),
(207, 'yin', '/lpc-images/DSC_0193.JPG', NULL, NULL),
(208, 'ma', '/lpc-images/DSC_0194.JPG', NULL, NULL),
(209, 'ta', '/lpc-images/DSC_0194.JPG', NULL, NULL),
(210, 'fa', '/lpc-images/DSC_0194.JPG', NULL, NULL),
(211, 'me', '/lpc-images/DSC_0195.JPG', NULL, NULL),
(212, 'te', '/lpc-images/DSC_0195.JPG', NULL, NULL),
(213, 'fe', '/lpc-images/DSC_0195.JPG', NULL, NULL),
(214, 'meau', '/lpc-images/DSC_0196.JPG', NULL, NULL),
(215, 'teau', '/lpc-images/DSC_0196.JPG', NULL, NULL),
(216, 'feau', '/lpc-images/DSC_0196.JPG', NULL, NULL),
(217, 'mou', '/lpc-images/DSC_0202.JPG', NULL, NULL),
(218, 'tou', '/lpc-images/DSC_0202.JPG', NULL, NULL),
(219, 'fou', '/lpc-images/DSC_0202.JPG', NULL, NULL),
(220, 'mè', '/lpc-images/DSC_0203.JPG', NULL, NULL),
(221, 'tè', '/lpc-images/DSC_0203.JPG', NULL, NULL),
(222, 'fè', '/lpc-images/DSC_0203.JPG', NULL, NULL),
(223, 'mo', '/lpc-images/DSC_0204.JPG', NULL, NULL),
(224, 'to', '/lpc-images/DSC_0204.JPG', NULL, NULL),
(225, 'fo', '/lpc-images/DSC_0204.JPG', NULL, NULL),
(226, 'mun', '/lpc-images/DSC_0205.JPG', NULL, NULL),
(227, 'tun', '/lpc-images/DSC_0205.JPG', NULL, NULL),
(228, 'fun', '/lpc-images/DSC_0205.JPG', NULL, NULL),
(229, 'mé', '/lpc-images/DSC_0206.JPG', NULL, NULL),
(230, 'té', '/lpc-images/DSC_0206.JPG', NULL, NULL),
(231, 'fé', '/lpc-images/DSC_0206.JPG', NULL, NULL),
(232, 'mu', '/lpc-images/DSC_0207.JPG', NULL, NULL),
(233, 'tu', '/lpc-images/DSC_0207.JPG', NULL, NULL),
(234, 'fu', '/lpc-images/DSC_0207.JPG', NULL, NULL),
(235, 'k', '/lpc-images/DSC_0208.JPG', NULL, NULL),
(236, 'v', '/lpc-images/DSC_0209.JPG', NULL, NULL),
(237, 'z', '/lpc-images/DSC_0210.JPG', NULL, NULL),
(238, 'ke', '/lpc-images/DSC_0211.JPG', NULL, NULL),
(239, 've', '/lpc-images/DSC_0211.JPG', NULL, NULL),
(240, 'se', '/lpc-images/DSC_0211.JPG', NULL, NULL),
(241, 'ka', '/lpc-images/DSC_0212.JPG', NULL, NULL),
(242, 'va', '/lpc-images/DSC_0212.JPG', NULL, NULL),
(243, 'keau', '/lpc-images/DSC_0213.JPG', NULL, NULL),
(244, 'veau', '/lpc-images/DSC_0213.JPG', NULL, NULL),
(245, 'zeau', '/lpc-images/DSC_0213.JPG', NULL, NULL),
(246, 'keu', '/lpc-images/DSC_0214.JPG', NULL, NULL),
(247, 'veu', '/lpc-images/DSC_0214.JPG', NULL, NULL),
(248, 'zeu', '/lpc-images/DSC_0214.JPG', NULL, NULL),
(249, 'kin', '/lpc-images/DSC_0215.JPG', NULL, NULL),
(250, 'vin', '/lpc-images/DSC_0215.JPG', NULL, NULL),
(251, 'zin', '/lpc-images/DSC_0215.JPG', NULL, NULL),
(252, 'r', '/lpc-images/DSC_0221.JPG', NULL, NULL),
(253, 's', '/lpc-images/DSC_0222.JPG', NULL, NULL),
(254, 'ue', '/lpc-images/DSC_0224.JPG', NULL, NULL),
(255, 'b', '/lpc-images/DSC_0225.JPG', NULL, NULL),
(256, 'beau', '/lpc-images/DSC_0227.JPG', NULL, NULL),
(257, 'neau', '/lpc-images/DSC_0227.JPG', NULL, NULL),
(258, 'g', '/lpc-images/DSC_0231.JPG', NULL, NULL),
(259, 'gue', '/lpc-images/DSC_0232.JPG', NULL, NULL),
(260, 'ga', '/lpc-images/DSC_0233.JPG', NULL, NULL),
(261, 'gueau', '/lpc-images/DSC_0234.JPG', NULL, NULL),
(262, 'gueu', '/lpc-images/DSC_0235.JPG', NULL, NULL),
(263, 'guin', '/lpc-images/DSC_0236.JPG', NULL, NULL),
(264, 'gan', '/lpc-images/DSC_0237.JPG', NULL, NULL),
(265, 'gui', '/lpc-images/DSC_0238.JPG', NULL, NULL),
(266, 'gon', '/lpc-images/DSC_0239.JPG', NULL, NULL),
(267, 'peu', '/lpc-images/DSC_0240.JPG', NULL, NULL),
(268, 'deu', '/lpc-images/DSC_0240.JPG', NULL, NULL),
(269, 'jeu', '/lpc-images/DSC_0240.JPG', NULL, NULL),
(270, 'pin', '/lpc-images/DSC_0241.JPG', NULL, NULL),
(271, 'din', '/lpc-images/DSC_0241.JPG', NULL, NULL),
(272, 'jin', '/lpc-images/DSC_0241.JPG', NULL, NULL),
(273, 'pan', '/lpc-images/DSC_0242.JPG', NULL, NULL),
(274, 'dan', '/lpc-images/DSC_0242.JPG', NULL, NULL),
(275, 'jan', '/lpc-images/DSC_0242.JPG', NULL, NULL),
(276, 'pi', '/lpc-images/DSC_0243.JPG', NULL, NULL),
(277, 'di', '/lpc-images/DSC_0243.JPG', NULL, NULL),
(278, 'ji', '/lpc-images/DSC_0243.JPG', NULL, NULL),
(279, 'pon', '/lpc-images/DSC_0244.JPG', NULL, NULL),
(280, 'don', '/lpc-images/DSC_0244.JPG', NULL, NULL),
(281, 'jon', '/lpc-images/DSC_0244.JPG', NULL, NULL),
(282, 'ran', '/lpc-images/DSC_0246.JPG', NULL, NULL),
(283, 'san', '/lpc-images/DSC_0246.JPG', NULL, NULL),
(284, 'ri', '/lpc-images/DSC_0247.JPG', NULL, NULL),
(285, 'si', '/lpc-images/DSC_0247.JPG', NULL, NULL),
(286, 'ron', '/lpc-images/DSC_0248.JPG', NULL, NULL),
(287, 'son', '/lpc-images/DSC_0248.JPG', NULL, NULL),
(288, 'mi', '/lpc-images/DSC_0249.JPG', NULL, NULL),
(289, 'ti', '/lpc-images/DSC_0249.JPG', NULL, NULL),
(290, 'fi', '/lpc-images/DSC_0249.JPG', NULL, NULL),
(291, 'man', '/lpc-images/DSC_0250.JPG', NULL, NULL),
(292, 'tan', '/lpc-images/DSC_0250.JPG', NULL, NULL),
(293, 'fan', '/lpc-images/DSC_0250.JPG', NULL, NULL),
(294, 'mon', '/lpc-images/DSC_0251.JPG', NULL, NULL),
(295, 'ton', '/lpc-images/DSC_0251.JPG', NULL, NULL),
(296, 'fon', '/lpc-images/DSC_0251.JPG', NULL, NULL),
(297, 'wi', '/lpc-images/dsc_0176.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_type` int NOT NULL DEFAULT '2' COMMENT '1->Admin, 2-> Manager User or User\r\n',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', '2023-12-07 08:50:17', '$2y$12$8RF8pnP8dgmPd4dYkONFgOqoKqPe6slorg5KJ32wHBf/pUv.bwMBy', NULL, '2023-12-07 03:46:11', '2023-12-07 03:46:11'),
(2, 2, 'Ed Gutkowski II', 'jonathon.bednar@example.net', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', 'Bgx19IWcOC', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(3, 2, 'Tressa Renner', 'ezequiel.medhurst@example.net', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', 'BhK4btWWc8', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(4, 2, 'Heath Greenfelder', 'fern.bednar@example.net', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', 'jeveeozqCS', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(5, 2, 'Lelia Connelly MD', 'aryanna.sawayn@example.org', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', 'GVRUNTRjFT', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(6, 2, 'Genesis Klein', 'morar.consuelo@example.org', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', 'hM8XmmpD3L', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(7, 2, 'Verla Hill', 'sebastian.keebler@example.com', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', 'Cd4jNf8vOR', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(8, 2, 'Kristina McGlynn', 'cornelius58@example.com', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', 'SX1dAUlQ1O', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(9, 2, 'Domenica Oberbrunner', 'dannie.wolf@example.com', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', 'Ny1yZU3Kr0', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(10, 2, 'Dr. Ariel Marvin Sr.', 'paul28@example.com', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', 'wgiaST0nDj', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(11, 2, 'Test User', 'test@example.com', '2023-12-01 04:15:23', '$2y$12$f5JemgZK5uuoT7vKC/pcruEilC7P1hUJVJRODRrtSO6DDF15gIqdy', '6veduseFXT', '2023-12-01 04:15:23', '2023-12-01 04:15:23'),
(12, 2, 'Qasim', 'qasimmohamad551@gmail.com', NULL, '$2y$12$5L7v7HBb3dBR5M/XHUS0m.hDiNqLnKcDfV/IKeKB.RcnYJgwDM6Ja', 'LVmMk3gSIRf0djLxWzE1mXVRNKPNsTnfkdHzkhDbUBrCQlAUFm7ReupknXRu', '2023-12-02 05:34:24', '2023-12-02 05:34:24'),
(14, 2, 'Umar Zahid', 'umarzahid028@gmail.com', NULL, '$2y$12$8RF8pnP8dgmPd4dYkONFgOqoKqPe6slorg5KJ32wHBf/pUv.bwMBy', NULL, '2023-12-07 03:46:11', '2023-12-07 03:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `Word_tbl`
--

CREATE TABLE `Word_tbl` (
  `id` int NOT NULL,
  `word` varchar(55) NOT NULL,
  `determinant` varchar(20) DEFAULT NULL,
  `Syllab` varchar(55) DEFAULT NULL,
  `Book Name` varchar(55) DEFAULT NULL,
  `BookCategory` varchar(300) DEFAULT NULL,
  `LSFImage` varchar(300) DEFAULT NULL,
  `Images` varchar(300) NOT NULL DEFAULT 'empty',
  `Language` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Word_tbl`
--

INSERT INTO `Word_tbl` (`id`, `word`, `determinant`, `Syllab`, `Book Name`, `BookCategory`, `LSFImage`, `Images`, `Language`, `level`, `updated_at`, `created_at`) VALUES
(1, 'wwww', '', NULL, NULL, 'general', NULL, 'empty', 'LPC', 'H1', '2023-12-04 08:02:02', '13:32:02'),
(2, 'qwwew', '', NULL, NULL, 'english', NULL, 'empty', 'LSF', 'H2', '2023-12-04 08:02:21', '13:32:21'),
(3, 'heaven', '', NULL, NULL, 'general', NULL, 'empty', 'LPC', 'H1', '2023-12-04 08:04:32', '13:34:32'),
(4, 'wwww', '', NULL, NULL, 'general', NULL, 'empty', 'LPC', 'H1', '2023-12-04 08:07:53', '13:37:53'),
(5, 'heaven', '', NULL, NULL, 'CS', '1701697109_62bc921df3c953f042e6a926_gleem-p-800.jpeg', 'empty', 'LSF', 'H2', '2023-12-04 08:08:29', '13:38:29'),
(6, 'LSF', '', NULL, NULL, 'GE', '1701697188_PHP, Laravel Development.avif', 'empty', 'LPC', 'H2', '2023-12-04 08:09:48', '13:39:48'),
(7, 'LPC', '', NULL, NULL, 'english', NULL, 'empty', 'LPC', 'H2', '2023-12-04 08:10:22', '13:40:22'),
(8, 'wwww', '', NULL, NULL, 'general', NULL, 'empty', 'LPC', 'H1', '2023-12-04 08:10:49', '13:40:49'),
(9, 'wwww', '', NULL, NULL, '(\"Christi\" et la fin sou\"ne\")', NULL, 'empty', 'LPC', 'crêche', '2023-12-05 08:18:16', '13:48:16'),
(10, 'love', '', NULL, NULL, '(\"Christi\" et la fin sou\"ne\")', '1701784375_62bc921df3c953f042e6a926_gleem-p-800.jpeg', 'empty', 'LSF', 'crêche', '2023-12-05 08:22:55', '13:52:55'),
(11, 'heaven', '', NULL, NULL, '(\"Christi\" et la fin sou\"ne\")', NULL, 'empty', 'LPC', 'crêche', '2023-12-05 08:24:32', '13:54:32'),
(12, 'new', NULL, NULL, NULL, '(\"Christi\" et la fin sou\"ne\")', NULL, 'empty', 'LPC', 'crêche', '2023-12-05 08:29:08', '13:59:08'),
(13, 'new', NULL, NULL, NULL, '(\"Christi\" et la fin sou\"ne\")', NULL, 'empty', 'LPC', 'crêche', '2023-12-05 08:30:03', '14:00:03'),
(14, 'wwww', 'L\'', NULL, NULL, '(\"Christi\" et la fin sou\"ne\")', NULL, 'empty', 'LPC', 'crêche', '2023-12-05 08:31:11', '14:01:11'),
(15, 'Qasim', 'De la', NULL, NULL, '(2ème partie du prénom)', NULL, 'empty', 'LPC', 'crêche', '2023-12-05 08:31:38', '14:01:38'),
(16, 'rema', 'L\'', NULL, NULL, '(attention, le oui n\'est pas bien codé !!!)', NULL, 'empty', 'LPC', 'crêche', '2023-12-06 09:43:30', '15:13:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `syllable`
--
ALTER TABLE `syllable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `Word_tbl`
--
ALTER TABLE `Word_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Books`
--
ALTER TABLE `Books`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Image`
--
ALTER TABLE `Image`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `syllable`
--
ALTER TABLE `syllable`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Word_tbl`
--
ALTER TABLE `Word_tbl`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
