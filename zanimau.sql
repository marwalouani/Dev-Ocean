-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 22 Mars 2018 à 11:21
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `zanimau`
--

-- --------------------------------------------------------

--
-- Structure de la table `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `espece` varchar(255) NOT NULL,
  `race` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `taille` varchar(255) NOT NULL,
  `prix_de_vente` int(11) DEFAULT NULL,
  `sexe` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `animal`
--

INSERT INTO `animal` (`id_animal`, `image`, `espece`, `race`, `age`, `taille`, `prix_de_vente`, `sexe`, `type`, `description`) VALUES
(12, 'http://localhost/img/ariana.jpg', 'chien', 'emchiiii', 5, 'yghjk', 10, 'male', 'vendre', 'fghjkjhgv'),
(27, 'http://localhost/img/téléchargement.jpg', 'vendre', 'pitbull', 1, 'moyen', 55, 'male', 'vendre', 'trés puissant'),
(28, 'http://localhost/img/220px-Rottweiler3.jpg', 'chien', 'rottweiler', 2, 'grand', 60, 'femelle', 'vendre', 'chien de travail'),
(29, 'http://localhost/img/le-berger-allemand-n-est-plus-le-chien-prefere-des-francais-en-2016.jpg', 'chien', 'berger allemand', 1, 'grand', 45, 'male', 'vendre', 'poils longs'),
(30, 'http://localhost/img/téléchargement (2).jpg', 'vendre', 'persan', 2, 'petite', 35, 'femelle', 'vendre', 'trés belle'),
(31, 'images/kaleb2.jpg', 'chat', 'siamois', 1, 'petite', 25, 'male', 'vendre', 'trés adorable');

-- --------------------------------------------------------

--
-- Structure de la table `animaux_vendus`
--

CREATE TABLE `animaux_vendus` (
  `id_animal` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `espece` varchar(255) NOT NULL,
  `race` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `taille` varchar(255) NOT NULL,
  `prix_de_vente` int(11) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `animaux_vendus`
--

INSERT INTO `animaux_vendus` (`id_animal`, `image`, `espece`, `race`, `age`, `taille`, `prix_de_vente`, `sexe`, `description`) VALUES
(7, 'http://localhost/img/ariana.jpg', 'vendre', 'emchiiii', 5, 'yghjk', 10, 'male', 'fghjkjhgv');

-- --------------------------------------------------------

--
-- Structure de la table `bon_de_reduction`
--

CREATE TABLE `bon_de_reduction` (
  `id_bon_reduction` int(11) NOT NULL,
  `numero_bon_reduction` int(11) NOT NULL,
  `id_produit` int(11) DEFAULT NULL,
  `id_personne` int(11) DEFAULT NULL,
  `valeur` varchar(255) DEFAULT NULL,
  `etat` varchar(20) DEFAULT NULL,
  `utiliser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `bon_de_reduction`
--

INSERT INTO `bon_de_reduction` (`id_bon_reduction`, `numero_bon_reduction`, `id_produit`, `id_personne`, `valeur`, `etat`, `utiliser`) VALUES
(1, 5162, NULL, 3, '10', 'affecte', 'non_utilisee'),
(2, 8172, NULL, 3, '10', 'affecte', 'non_utilisee'),
(3, 4058, NULL, 3, '10', 'affecte', 'non_utilisee'),
(4, 5771, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(5, 6681, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(6, 6091, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(8, 3803, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(9, 5206, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(10, 4754, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(11, 5256, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(12, 3130, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(13, 4327, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(14, 3357, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(15, 4914, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(16, 2275, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(17, 4413, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(18, 3017, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(19, 2956, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(20, 3507, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(21, 3113, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(22, 2822, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(23, 2547, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(24, 5380, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(25, 3705, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(26, 3494, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(27, 4133, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(28, 5548, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(29, 3632, NULL, NULL, NULL, 'non_affecte', 'non_utilisee'),
(30, 2626, NULL, NULL, NULL, 'non_affecte', 'non_utilisee');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `prix_total` float NOT NULL,
  `date_de_passage` date NOT NULL,
  `id_ligne` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `CCNumber` varchar(16) DEFAULT NULL,
  `Balance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `customers`
--

INSERT INTO `customers` (`CustomerID`, `UserName`, `Email`, `Password`, `CCNumber`, `Balance`) VALUES
(1, 'Chris', 'lxristos@hotmail.com', '123456', '1596384569125478', 15),
(2, 'frank32', 'frank@gmail.com', 'lala', '1234567891234567', 43);

-- --------------------------------------------------------

--
-- Structure de la table `date`
--

CREATE TABLE `date` (
  `id_date` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `date`
--

INSERT INTO `date` (`id_date`, `date`) VALUES
(31, '2018-03-03'),
(32, '2018-03-10');

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `id_demande` int(11) NOT NULL,
  `etat` varchar(20) NOT NULL,
  `contenu` varchar(20) NOT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `id_personne` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `demande`
--

INSERT INTO `demande` (`id_demande`, `etat`, `contenu`, `id_animal`, `id_personne`) VALUES
(14, 'encours', 'je veux adopter ', 33, 60),
(15, 'encours', 'je veux adopter ', 27, 73);

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `id_favoris` int(11) NOT NULL,
  `id_personne` int(11) DEFAULT NULL,
  `id_animal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'wiwa', 'wiwa', 'marwa.alouani@gmail.com', 'marwa.alouani@gmail.com', 1, NULL, '$2y$13$NBTAPkZCiu8WloMPgp1HXON5dPMFoXNdTlW1cAGVyPSY/FU/dcjl2', '2018-03-22 10:03:22', NULL, NULL, 'a:0:{}'),
(2, 'dd', 'dd', 'marwa.alou@gmail.com', 'marwa.alou@gmail.com', 1, NULL, '$2y$13$lR3jj6YqDmku3cEMOXCwV.jIHPFaCZ1vAD3KfSFG.2DhuBWZ/4I5G', '2018-03-22 11:10:12', NULL, NULL, 'a:1:{i:0;s:11:"ROLE_CLIENT";}');

-- --------------------------------------------------------

--
-- Structure de la table `journee`
--

CREATE TABLE `journee` (
  `id_journee` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `nbr_rdv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `journee`
--

INSERT INTO `journee` (`id_journee`, `date`, `nbr_rdv`) VALUES
(85, '2018-03-10', 2);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commande`
--

CREATE TABLE `ligne_commande` (
  `id_ligne` int(11) NOT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix_unitaire` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `id_livraison` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  `type_livraison` varchar(255) NOT NULL,
  `prix_livraison` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livraison`
--

INSERT INTO `livraison` (`id_livraison`, `id_commande`, `id_personne`, `type_livraison`, `prix_livraison`) VALUES
(3, 0, 0, 'a domicile', 7000),
(4, 0, 0, 'a domicile', 7000);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `id_sender` int(11) NOT NULL,
  `id_reciver` int(11) NOT NULL,
  `message_text` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `date_envoi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id`, `id_sender`, `id_reciver`, `message_text`, `etat`, `date_envoi`) VALUES
(109, 69, 63, 'ahla admin', 'lu', '2018-02-27T02:48:46.424'),
(110, 63, 69, 'ahla shaùms', 'lu', '2018-02-27T02:51:40.108'),
(111, 69, 63, 'ddd', 'lu', '2018-02-27T02:54:43.159'),
(112, 63, 69, 'ok', 'lu', '2018-02-27T03:07:44.911'),
(113, 69, 63, '', 'lu', '2018-02-27T03:31:54.715'),
(114, 63, 69, 'ff', 'lu', '2018-02-27T03:37:14.784'),
(115, 69, 63, 'ok', 'lu', '2018-02-27T03:37:54.003'),
(116, 63, 69, 'okiin', 'lu', '2018-02-27T03:42:23.390'),
(117, 69, 63, 'nnn', 'lu', '2018-02-27T04:28:32.520'),
(118, 69, 63, 'wink admin', 'lu', '2018-02-27T05:08:21.382'),
(119, 63, 69, 'shbik', 'lu', '2018-02-27T05:09:40.085'),
(120, 63, 69, 'tkalem', 'lu', '2018-02-27T05:09:47.981'),
(121, 63, 69, 'ooo', 'lu', '2018-02-27T05:09:54.117'),
(122, 69, 63, 'aaaaa', 'lu', '2018-02-27T22:53:13.917'),
(123, 63, 69, 'eee', 'lu', '2018-02-27T22:54:44.420'),
(124, 69, 63, 'ok', 'non lu', '2018-02-28T04:38:24.961'),
(125, 69, 63, 'ahlan', 'non lu', '2018-02-28T06:49:57.132'),
(126, 69, 63, 'oki', 'non lu', '2018-02-28T06:50:32.289'),
(127, 69, 63, '', 'lu', '2018-02-28T07:05:48.133'),
(128, 63, 69, 'ahlaa gent', 'non lu', '2018-02-28T18:41:46.400'),
(129, 73, 63, 'aaaaaaa', 'non lu', '2018-03-01T08:34:03.045'),
(130, 73, 63, 'hhh', 'non lu', '2018-03-01T09:26:39.987');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `Quantity` tinyint(1) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `orders`
--

INSERT INTO `orders` (`OrderID`, `Quantity`, `ProductID`, `CustomerID`) VALUES
(1, 1, 11, 1),
(2, 1, 9, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 10, 2),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id_personne` int(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `numero_tel` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `nombre_bon_de_reduction` int(255) DEFAULT NULL,
  `codeConfimation` varchar(255) DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `photoprofilpath` varchar(255) DEFAULT NULL,
  `date_naissance` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `jetons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personne`
--

INSERT INTO `personne` (`id_personne`, `nom`, `prenom`, `numero_tel`, `mail`, `login`, `password`, `adresse`, `role`, `nombre_bon_de_reduction`, `codeConfimation`, `enabled`, `photoprofilpath`, `date_naissance`, `sexe`, `jetons`) VALUES
(60, 'sami', 'samis', '55052418', 'sami@gmail.com', 'sam', 'nour', 'tunis', 'admin', NULL, NULL, 0, 'http://localhost/img/bizerte.jpg', '2018-03-08', 'homme', 50),
(61, 'nour', 'shams', '8888', 'shams@gmail.com', 'shams', '$2a$13$.63pVfRFGU5FJhevrzQL3.n2maqnaVRNJwCAFbnd6KYZX4yqq2/IK', 'tunis', 'client', NULL, NULL, 0, 'http://localhost/img/bizerte.jpg', '2018-03-08', 'homme', 50),
(63, 'bb', 'b', 'b', 'b@b.com', 'b', '$2a$13$lTZhvqiBB3bTVMN8mb3FzuA.zJWgMEWQ25UZxVyFJIw2v0rkTP/e6', 'b', 'admin', NULL, NULL, 0, 'http://localhost/img/bizerte.jpg', '2018-03-08', 'homme', 50),
(64, 'bouazra', 'shamsiii', '22759108', 'shams@gmail.com', 'shams', '$2a$13$NDJ1fW1poFgTJ2lu9Tu.qOpcD9GBG9Hy/.9bxO4s5TRXKkfyThcj2', 'soliman', 'client', NULL, NULL, 0, 'http://localhost/img/bizerte.jpg', '2018-03-01', 'homme', 50),
(67, 'nour', 'hamzaoui', '22222222', 'vb@chv.com', 'nor', '$2a$13$NDJ1fW1poFgTJ2lu9Tu.qOpcD9GBG9Hy/.9bxO4s5TRXKkfyThcj2', 'solimannn', 'client', 2, 'kkk', 0, 'http://localhost/img/bizerte.jpg', '1995', 'homme', 50),
(68, 'ya', 'yaaa', '28694047', 'gdgdgd@hkhkh.com', 'azer', '$2a$13$Djqc0jaH0uOkj61zn4zEtuGf5qnug4wwiol4Ts0aS6ocBMhz8j3Ta', 'nabeul', 'client', NULL, NULL, 0, 'http://localhost/img/bizerte.jpg', '2018-03-06', 'femme', 50),
(69, 'nouri', 'borni', '14587963', 'nour.fhg@gg.com', 'noor', '$2a$13$H2fgGYniog0hhu1Zl6SBoewbLkNrymZwbavCfju8eP8tuwBS0Od2q', 'hammamet', 'client', NULL, NULL, 0, 'http://localhost/img/bizerte.jpg', '2018-01-29', 'femme', 50),
(70, 'las3ed', 'chtetga', '55555555', 'dfg@f.com', 'res', '$2a$13$MMU2rDtWuNeLlIEyJcMYnOqo9peAriNDrofTgavYmvSefHfWJht02', 'm3atig', 'responsable', NULL, NULL, 0, '26238770_1778069992260983_2838991839398435692_n.jpg', '2018-02-27', 'homme', 50),
(71, 'kkk', 'kkoo', '77777777', 'cfvgh@ds.com', 'ko', '$2a$13$jwa5xSs9hXhEztKf..NA6eoaiYKOF1HNuTw1t3WxFiUAszupotYNO', 'mthelith', 'client', NULL, 'null', 0, 'http://localhost/img/bizerte.jpg', '2018-01-29', 'homme', 50),
(72, 'hhhh', 'hhhh', '11111111', 'dfg@dfgh.com', 'hh', '$2a$13$gIAgdoSnxSrm76aOuXwXzu00EngwIpiR5iPkNgf/Oua.zjqkyT1wC', 'ariana', 'client', NULL, 'null', 0, 'ariana.jpg', '2018-03-09', 'homme', 100000),
(73, 'mar', 'alouani', '123', 'marwa.alouani@esprit.tn', 'mriwa31', '$2a$13$LMHhxoX3FRomDFVbDhJl5un4fq0AavayEP5tjsiNQcv4CNSQLp6oy', 'adresse', 'client', NULL, NULL, 0, '', '2018-03-14', 'femme', 50),
(74, 'veterinaire', 'docteur', '12222', 'vet@doc.com', 'vet', '$2a$13$SgtVDK21bCgW6SdWddiG/u9zVtbygs.o5KcqLq8OatcOvHFpBrYBu', 'add', 'veterinaire', NULL, NULL, 0, NULL, '2018-03-07', 'homme', 50);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Price` double(5,2) DEFAULT NULL,
  `Description` text,
  `Video` varchar(45) DEFAULT NULL,
  `Platform` varchar(255) DEFAULT NULL,
  `Cover` varchar(55) DEFAULT NULL,
  `Image1` varchar(55) DEFAULT NULL,
  `Image2` varchar(55) DEFAULT NULL,
  `Image3` varchar(55) DEFAULT NULL,
  `Image4` varchar(55) DEFAULT NULL,
  `ExeFile` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`ProductID`, `Title`, `Price`, `Description`, `Video`, `Platform`, `Cover`, `Image1`, `Image2`, `Image3`, `Image4`, `ExeFile`) VALUES
(1, 'Zombie Apocalypse', 7.00, 'After a technological disaster, most of the world\'s population is turned into zombies. The cities are in ruins, but a small percentage of people survived, and are now hiding in shelters. You are one of the survivors. Your task is to protect your shelter from the crowds of zombies and bloodthirsty mutants. You have a wide arsenal of weapons and upgrades at your disposal. You can also improve barricades at the shelter entrance, or create machine-gun towers that are very efficient against crowds of enemies. Game features: 45 levels, 4 types of weapons and upgrades, 4 types of upgrades for your shelter, 7 types of enemies. Atmospheric music and sounds effects.', 'https://www.youtube.com/watch?v=jKTWSDOydww', 'Windows', '/resources/images/covers/zombie-apocalypse-cover.png', '/resources/images/zombie-apocalypse-1.jpg', '/resources/images/zombie-apocalypse-2.jpg', '/resources/images/zombie-apocalypse-3.jpg', '/resources/images/zombie-apocalypse-4.jpg', 'http://www.gametop.com/download-free-games/zombie-apocalypse/download.html'),
(2, 'City Racing', 5.00, 'City Racing is a hugely popular sandbox GTA style car racing game. This game gives you the freedom to explore the city in any way you want. Your can participate in illegal street races, win money, make spectacular jumping stunts, upgrade your car to beat your racing opponents or you can just work as a taxi driver. The gameplay is easy, you just need quick reflexes and a good eye to avoid the police cars and make some money. Download this full version racing game now and try to survive in the big city.', 'https://www.youtube.com/watch?v=3yFZk5SxFgg', 'Windows', '/resources/images/covers/city-racing-cover.jpg', '/resources/images/city-racing-1.jpg', '/resources/images/city-racing-2.jpg', '/resources/images/city-racing-3.jpg', '/resources/images/city-racing-4.jpg', 'http://www.gametop.com/download-free-games/city-racing/download.html'),
(3, 'Alien Shooter', 6.00, 'The endless darkness and the somber, long passages of a military complex have become the abode of evil, as thousands of blood-thirsty creatures fill its offices, storehouses and mysterious laboratories. Your mission is simple: clear the base at all costs. You will be provided with explosives to help you gain access to the teleports from where thousands of pitiless creatures pour. A stationary gun will aid in the defense of the area. You have been granted access to the most advanced weapons technology money can buy. As you earn your pay, you can equip yourself with additional weapons in the arming area and biomechanical implants that will make your fighting abilities super human. The alien invasion has begun, we have one chance, and that is to stop them cold in their staging area. Do not allow them escape this facility, you are our last hope. The fate of humanity now depends on you! Download free game today and dive into the middle of a war in Alien Shooter, a fast-paced action game.', 'https://www.youtube.com/watch?v=vR9706AMq8M', 'Windows', '/resources/images/covers/alien-shooter-cover.jpg', '/resources/images/alien-shooter-1.jpg', '/resources/images/alien-shooter-2.jpg', '/resources/images/alien-shooter-3.jpg', '/resources/images/alien-shooter-4.jpg', 'http://www.gametop.com/download-free-games/alien-shooter/download.html'),
(4, 'Crazy Cars', 4.00, 'Rediscover the sheer thrill of arcade gaming with this amazing racing game, taking bends at max speed or massive jumps that can go hundreds of meters high. You\'ll be right in the middle of all the action, racing some of the best rides out there. Criss-cross different states of the USA at over 180 mph! Just make sure the cops don\'t catch you.', 'https://www.youtube.com/watch?v=tmHm_sULlzk', 'Windows', '/resources/images/covers/crazy-cars-cover.jpg', '/resources/images/crazy-cars-1.jpg', '/resources/images/crazy-cars-2.jpg', '/resources/images/crazy-cars-3.jpg', '/resources/images/crazy-cars-4.jpg', 'http://www.gametop.com/download-free-games/crazy-cars/download.html'),
(5, 'Desert Hawk', 8.00, 'The centerpiece of this free game is a new terrorist base, well defended and cleverly designed to make any head-on attack pointless. This time around, the terrorists created a new monstrous weapon and a new type of explosives. Naturally, the only way to stop the destruction is to annihilate the opponents while they are on the move. After this is done, the player has to carefully plan the assault on the core base, which is defended by the towers and is fortified with a new type of metal alloy. With amazing graphics, a stirring soundtrack, and some of the most exciting action we\'ve ever offered, this free full verion downloadable pc game is a bold new mission for arcade lovers.', 'https://www.youtube.com/watch?v=czJmb6QDiik', 'Windows', '/resources/images/covers/desert-hawk-cover.jpg', '/resources/images/desert-hawk-1.jpg', '/resources/images/desert-hawk-2.jpg', '/resources/images/desert-hawk-3.jpg', '/resources/images/desert-hawk-4.jpg', 'http://www.gametop.com/download-free-games/desert-hawk/download.html'),
(6, 'Fall Of The New Age', 12.00, 'Help Marla to uncover the dark secrets of a medieval cult in Fall of the New Age. The cult is planning to control all citizens and destroy all knowledge and culture. An original medieval world to explore with more than 40 amazingly detailed locations. Dozens of brain-twisting minigames and challenges. Beautiful animations in 3D graphics. Fall of the New Age is a fantastic adventure that will have you hooked right from the beginning.', 'https://www.youtube.com/watch?v=5pLNDqbMawg', 'Windows', '/resources/images/covers/fall-of-the-new-age-cover.jpg', '/resources/images/fall-of-the-new-age-1.jpg', '/resources/images/fall-of-the-new-age-2.jpg', '/resources/images/fall-of-the-new-age-3.jpg', '/resources/images/fall-of-the-new-age-4.jpg', 'http://www.gametop.com/download-free-games/fall-of-the-new-age/download.html'),
(7, 'Football World', 3.50, 'Football World is an excellent football simulator. Play for more than 70 countries. Choose your team and win the World Cup. Modern 3D graphics, realistic sounds and challenging AI.', 'https://www.youtube.com/watch?v=v4FeUs81MLU', 'Windows', '/resources/images/covers/football-world-cover.jpg', '/resources/images/football-world-1.jpg', '/resources/images/football-world-2.jpg', '/resources/images/football-world-3.jpg', '/resources/images/football-world-4.jpg', 'http://www.gametop.com/download-free-games/football-world/download.html'),
(8, 'Frontline Tactics', 9.00, 'A highly addictive military tactics game with cross platform multiplayer over a variety of desktop and mobile releases. Frontline Tactics lets you command a modern, elite fighting unit over various missions, from defending and controlling a location or asset to all-out elimination and survival. Equip your soldiers with modern weapons, armor and equipment and give them the skills to succeed on the battlefield. ', 'https://www.youtube.com/watch?v=vHqXjzFgm-A', 'Windows', '/resources/images/covers/frontline-tactics-cover.jpg', '/resources/images/frontline-tactics-1.jpg', '/resources/images/frontline-tactics-2.jpg', '/resources/images/frontline-tactics-3.jpg', '/resources/images/frontline-tactics-4.jpg', 'http://www.gametop.com/download-free-games/frontline-tactics/download.html'),
(9, 'Invention', 11.00, 'Invention is a 3D first-person shooter with RPG elements. Actions in the game take place on a mysterious island within a secret laboratory. In this laboratory, once working people were trying to give others super-abilities. However, they could not have imagined where these experiments led. The hero gets there as a result of a crash. In search of help, he finds the lab. Not knowing what was inside, he goes down in there...', 'https://www.youtube.com/watch?v=tmhZy3JJV-M', 'Windows', '/resources/images/covers/invention-cover.jpg', '/resources/images/invention-1.jpg', '/resources/images/invention-2.jpg', '/resources/images/invention-3.jpg', '/resources/images/invention-4.jpg', 'http://www.gametop.com/download-free-games/invention/download.html'),
(10, 'Super Bikes', 7.00, 'Take part in a greatest moto racing competition in this 3D superbike racing game. Practice in the Single Race mode or compete with your best result in Time Attack mode. Perform stunts to earn points and to get in time to the finish. Download full version game today and take part in a greatest moto racing competition. Game Features: - Real superbike racing game; - Modern 3D graphics; - Extraordinarily addictive game play; - Original soundtrack and powerful sound effects; - Save / Load game option; - Game statistics.', 'https://www.youtube.com/watch?v=oALZsm7XYho', 'Windows', '/resources/images/covers/super-bikes-cover.jpg', '/resources/images/super-bikes-1.jpg', '/resources/images/super-bikes-2.jpg', '/resources/images/super-bikes-3.jpg', '/resources/images/super-bikes-4.jpg', 'http://www.gametop.com/download-free-games/superbikes/download.html'),
(11, 'StarCraft', 9.00, 'A science fiction real-time strategy game, StarCraft is set in a distant sector of the Milky Way galaxy. The game\'s story revolves around the appearance of two alien races in Terran space, and each race\'s attempts to survive and adapt over the others. The player assumes three roles through the course of the three campaigns: a Confederate colonial governor who becomes a revolutionary commander, a Zerg cerebrate pushing forward the species\' doctrine of assimilation, and a Protoss fleet executor tasked with defending the Protoss from the Zerg. StarCraft soon gained critical acclaim, winning numerous awards, including being labelled "the best real-time strategy game ever made".', 'https://www.youtube.com/watch?v=F-7CuVmis5w', 'Windows', '/resources/images/covers/starcraft-cover.jpg', '/resources/images/starcraft-1.jpg', '/resources/images/starcraft-2.jpg', '/resources/images/starcraft-3.jpg', '/resources/images/starcraft-4.jpg', 'https://battle.net/download/getInstallerForGame?os=WIN&version=LIVE&gameProgram=STARCRAFT'),
(12, 'Alien Arena', 5.50, 'Do you like old school deathmatch with modern features? How about rich, colorful, arcadelike atmospheres? How about...retro Sci Fi? Then you\'re going to love what Alien Arena has in store for you! This game combines some of the very best aspects of such games as Quake III and Unreal Tournament and wraps them up with a retro alien theme, while adding tons of original ideas to make the game quite unique. Alien Arena is a furious frag fest with arenas ranging from the small, to the massive. With a large built-in player base, it\'s never hard to find a good match going on, at any hour of the day. The community is friendly, as well as prolific. Dozens of maps, models, and various accessories have been created by community members to add on to the game experience. ', 'https://www.youtube.com/watch?v=YNvep_oWFbs', 'Linux', '/resources/images/covers/alien-arena-cover.jpg', '/resources/images/alien-arena-1.jpg', '/resources/images/alien-arena-2.jpg', '/resources/images/alien-arena-3.jpg', '/resources/images/alien-arena-4.jpg', 'http://localhost/games/alienarena-7.66-linux.tar.gz'),
(13, 'Smokin\' Guns', 8.50, 'Smokin\' Guns (SG) is a first-person shooter video game. Smokin\' Guns is intended to be a semi-realistic simulation of the "Old West\'s" atmosphere and was developed on id Software\'s Quake III Arena Engine. Gameplay as well as locations are inspired by Western movies, particularly from the Italowestern respectively Spaghetti Western genre. Here\'s a list of some of the most important features of Smokin\' Guns:\n- A full arsenal of weapons with historically correct design. Check the weapons page for more information.\n- A variety of western styled maps and player models.\n- A realistic damage system with different locations (head, chest, neck, etc) and height-dependant falling damage.\n- New western styled gametypes for more fun: Bank Robbery and Duel Modes.\n- A money system allowing for equipment purchase with money from rewards & pickups.\n- Easy to use graphical user interface and HUD.\n- Other small improvements for better gameplay and enhanced fun.', 'https://www.youtube.com/watch?v=RGIYZf-BBfA', 'Linux', '/resources/images/covers/smokin-guns-cover.jpg', '/resources/images/smokin-guns-1.jpg', '/resources/images/smokin-guns-2.jpg', '/resources/images/smokin-guns-3.jpg', '/resources/images/smokin-guns-4.jpg', 'https://www.smokin-guns.org/downloads/Smokin_Guns_1.1.zip');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `stock` int(11) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `contenance` int(11) NOT NULL,
  `couleur` varchar(255) NOT NULL,
  `prix_prom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `image`, `description`, `nom`, `prix`, `stock`, `etat`, `type`, `contenance`, `couleur`, `prix_prom`) VALUES
(1, 'http://localhost/img/ariana.jpg', 'sdfghj', 'nn', 500, 2, 'dispo', 'alimentation', 5, 'rouge', 0),
(2, 'http://localhost/img/p.jpg', 'dfgh', 'nnn', 555, 2, 'dispo', 'accessoires', 2, 'black', 0),
(3, 'http://localhost/img/beja.jpg', 'cvb', 'raef', 22, 1, 'hh', 'hygiène et soin', 2, 'red', 0),
(18, 'http://localhost/img/bol.png', 'hhgggggg', 'Bol et Jeux interactifs', 90, 2, 'disponible', 'accessoires', 0, 'bleu', NULL),
(19, 'http://localhost/img/colier.jpg', 'hjkkkkkkkkk', 'Collier pour chien', 80, 4, 'disponible', 'accessoires', 0, 'orange et bleu', NULL),
(20, 'http://localhost/img/cesar-barquettes-les-petits-delices-4x150g.jpg', 'jncldm', 'Barquettes', 40, 2, 'disponible', 'alimentation', 0, 'rien', NULL),
(21, 'http://localhost/img/croquettes.jpg', 'jncldm', 'Croquettes', 50, 2, 'disponible', 'alimentation', 0, 'rien', NULL),
(22, 'http://localhost/img/dentifrice.jpg', 'jncldm', 'Dentifrice a croquer', 30, 5, 'disponible', 'hygiène et soin', 30, 'rien', NULL),
(23, 'http://localhost/img/nettoyant.jpg', 'jncldm', 'Nettoyant oreilles', 15, 5, 'disponible', 'hygiène et soin', 3, 'rien', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `id_promotion` int(11) NOT NULL,
  `date_debut` varchar(255) NOT NULL,
  `date_fin` varchar(255) NOT NULL,
  `valeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `promotion`
--

INSERT INTO `promotion` (`id_promotion`, `date_debut`, `date_fin`, `valeur`) VALUES
(62, '2018-03-04', '2018-03-12', 20),
(64, '2018-02-27', '2018-02-28', 50);

-- --------------------------------------------------------

--
-- Structure de la table `publication`
--

CREATE TABLE `publication` (
  `id_publication` int(20) NOT NULL,
  `pub_text` text,
  `date_publication` date NOT NULL,
  `type_publication` varchar(255) DEFAULT NULL,
  `id_personne` int(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `publication`
--

INSERT INTO `publication` (`id_publication`, `pub_text`, `date_publication`, `type_publication`, `id_personne`, `image`) VALUES
(39, 'ce ci est rbgretrdarticle22222222', '2018-02-22', 'conseil', NULL, NULL),
(40, 'tesssssst', '2018-02-12', 'conseil', NULL, NULL),
(41, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(43, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(44, '7777777777777777777', '2018-02-21', 'conseil', NULL, NULL),
(45, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(46, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(47, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(48, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(49, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(50, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(51, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(52, 'loooooooooool', '2018-02-27', 'conseil', NULL, NULL),
(53, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(54, 'ce ci est mon article22222222', '2018-02-12', 'conseil', NULL, NULL),
(60, 'ceci est un conseilll2', '2018-02-16', 'conseil', NULL, NULL),
(61, '371e1f8662358c3be22a9355cc4d9476.jpg', '2018-02-21', 'null', NULL, NULL),
(62, NULL, '2018-02-21', 'null', NULL, 'null'),
(63, NULL, '2018-02-21', 'null', NULL, 'null'),
(64, NULL, '2018-02-21', 'null', NULL, 'null'),
(65, NULL, '2018-02-21', 'null', NULL, 'null'),
(66, NULL, '2018-02-21', 'null', NULL, 'null'),
(67, NULL, '2018-02-21', 'null', NULL, 'IMG_4363.jpg'),
(68, NULL, '2018-02-21', 'null', NULL, 'terrazzo-stone-plain.jpg'),
(69, NULL, '2018-02-21', 'null', NULL, '22853343_1452728624843789_5272874920385267048_n.jpg'),
(70, NULL, '2018-02-21', 'null', NULL, 'IMG_4371.jpg'),
(76, 'ceci est un article', '2018-02-22', 'article', NULL, 'null'),
(77, 'null', '2018-02-24', 'null', NULL, '10458464_10152348749076736_7534388034334104153_n.jpg'),
(79, 'ceci est testttttttt  1 id ', '2018-02-25', 'publication', 1, 'null'),
(80, 'null', '2018-02-25', 'null', 1, 'IMG_4371.jpg'),
(81, 'null', '2018-02-25', 'null', 1, 'chateau wassila.JPG'),
(82, 'null', '2018-02-25', 'null', 1, 'chiraz.jpg'),
(83, 'null', '2018-02-25', 'null', 1, 'being_one_with_nature_400_clr_10163.png'),
(84, 'null', '2018-02-25', 'null', 1, '10458464_10152348749076736_7534388034334104153_n.jpg'),
(85, 'null', '2018-02-25', 'null', 1, 'lunch-break.jpg'),
(86, 'null', '2018-02-25', 'null', 1, 'chateau wassila2.JPG'),
(87, 'null', '2018-02-25', 'null', 1, 'port-le-prince-agnieszka-wolska2.jpg'),
(88, 'null', '2018-02-25', 'null', 1, 'pattern-with-dogs-and-cats_1196-275.jpg'),
(89, 'null', '2018-02-25', 'null', 2, 'gif-Favim.com-4006937.gif'),
(90, 'null', '2018-02-25', 'null', 2, 'voyage-groupe_titre_640x420_0.png'),
(91, 'null', '2018-02-25', 'null', 2, 'img.jpg'),
(93, 'Avant d’acheter un chien, il ne suffit pas de savoir quel est son aspect, combien il coûte et quelle est sa taille : il faut essayer de s’informer le plus possible sur ses caractéristiques psychophysiques afin de savoir tout ce que l’on peut attendre de lui… et ce que lui pourra attendre de nous.\n\nAcheter un chien n’est pas comme acheter une paire de chaussures : c’est « presque » comme adopter un enfant, parce que c’est un pas que l’on devrait franchir avec le même sérieux et le même sentiment de responsabilité.\n\nLe chien est un être vivant, sensible et intelligent : il doit être respecté pour cela. Le chien peut être un ami, un collaborateur, un membre de la famille : il ne doit jamais être « seulement » un animal que l’on nourrit deux fois par jour parce que – tout comme un enfant – il n’a pas seulement faim d’aliments mais il a aussi une grande faim d’amour, d’attentions, d’apprentissage.', '2018-02-27', 'conseil', 2, NULL),
(94, NULL, '2018-02-27', NULL, 2, 'Capture.PNG'),
(95, NULL, '2018-02-27', NULL, 2, 'darbenjabalah2.jpg'),
(96, NULL, '2018-02-27', NULL, 2, 'Capture d’écran (6).png'),
(97, NULL, '2018-02-27', NULL, 2, 'ariana.jpg'),
(98, NULL, '2018-02-27', NULL, 2, 'Capture d’écran (6).png'),
(99, NULL, '2018-02-27', NULL, 2, 'Capture d’écran (6).png'),
(100, NULL, '2018-02-27', NULL, 2, '26238770_1778069992260983_2838991839398435692_n.jpg'),
(101, NULL, '2018-02-27', NULL, 67, 'Capture d’écran (3).png'),
(102, NULL, '2018-03-01', NULL, 73, '371e1f8662358c3be22a9355cc4d9476.jpg'),
(103, NULL, '2018-03-01', NULL, 73, '371e1f8662358c3be22a9355cc4d9476.jpg'),
(107, NULL, '2018-03-01', NULL, 73, 'darbenjabalah.jpg'),
(111, NULL, '2018-03-01', NULL, 73, 'Capture.PNG'),
(113, NULL, '2018-03-01', NULL, 73, '11_qx8Lc.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id_question` int(20) NOT NULL,
  `enonce` varchar(255) CHARACTER SET latin1 NOT NULL,
  `niveau_question` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`id_question`, `enonce`, `niveau_question`) VALUES
(1, 'Où peut-on trouver le panda ? ', 'facile'),
(2, 'Les chauves-souris dorment ---- ', 'facile'),
(3, 'Un éléphant a ----- ', 'facile'),
(4, 'Où peut-on trouver un escargot ? ', 'facile'),
(5, 'Combien de temps dort un chat ? ', 'facile'),
(6, 'Au Moyen Age, que symbolisait le chat ? ', 'facile'),
(7, 'Habituellement, on le voit tourner dans une roue c\'est le ---  ', 'facile'),
(8, 'Quel mammifère marin est un cousin de l\'éléphant ?  ', 'facile'),
(9, 'Que mange le gorille ? ', 'facile'),
(10, 'Pourquoi le caméléon change-t-il de couleur ? ', 'facile'),
(11, 'Sur quels continents pouvez-vous voir un éléphant sauvage ? ', 'moyen'),
(12, 'De quel animal solitaire des campagnes la hase est-elle la femelle ? ', 'moyen'),
(13, 'Quel nom désigne la bave qui permet à l\'escargot de se déplacer en glissant ? ', 'moyen'),
(14, 'Quel insecte du genre APIS récolte et transforme une substance appelée PROPOLIS pour renforcer son habitat ?  ', 'moyen'),
(15, 'Quel est le félin le plus rapide ? ', 'moyen'),
(16, 'Quel est l\'animal le plus vieux connu sur Terre? ', 'moyen'),
(17, 'Lequel de ces animaux n\'existe pas? ', 'moyen'),
(18, 'Au maximum, combien les mille-pattes ont-ils réellement de pattes? ', 'moyen'),
(19, 'Combien pèse un éléphant? ', 'moyen'),
(20, 'Combien un cheval a-t-il de doigts à chaque patte? ', 'moyen'),
(21, 'Quelle est la fourmi la plus dangereuse ? ', 'difficile');

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `id_quiz` int(11) NOT NULL,
  `niveau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `quiz`
--

INSERT INTO `quiz` (`id_quiz`, `niveau`) VALUES
(1, 'facile'),
(2, 'moyen'),
(3, 'difficile');

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id_reclamation` int(20) NOT NULL,
  `date_reclamation` date NOT NULL,
  `type_reclamation` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `id_personne` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id_reponse` int(20) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `reponse` varchar(255) NOT NULL,
  `id_question` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reponse`
--

INSERT INTO `reponse` (`id_reponse`, `etat`, `reponse`, `id_question`) VALUES
(1, 'vrai', 'En Chine', 1),
(2, 'faux', 'En France', 1),
(3, 'faux', 'En Afrique', 1),
(4, 'faux', 'La nuit', 2),
(5, 'faux', 'Jamais', 2),
(6, 'vrai', 'Le jour', 2),
(7, 'faux', 'Une tronpe', 3),
(8, 'vrai', 'Une trompe', 3),
(9, 'faux', 'Une tromppe', 3),
(10, 'vrai', 'Sous la pluie', 4),
(11, 'faux', 'Sous le soleil', 4),
(12, 'faux', 'Sous la neige', 4),
(13, 'faux', 'Entre 5 à 7 h par jour', 5),
(14, 'faux', 'Entre 7 à 8 h par jour', 5),
(15, 'vrai', 'Entre 15 à 18 h par jour', 5),
(16, 'vrai', 'Le Diable', 6),
(17, 'faux', 'L\'hypocrisie', 6),
(18, 'faux', 'Un porte-bonheur', 6),
(19, 'vrai', 'Hamster', 7),
(20, 'faux', 'Cobaye', 7),
(21, 'faux', 'Rat', 7),
(22, 'faux', 'L\'éléphant de mer', 8),
(23, 'faux', 'La baleine', 8),
(24, 'vrai', 'Le lamantin', 8),
(25, 'faux', 'De la viande', 9),
(26, 'faux', 'Des insectes', 9),
(27, 'vrai', 'Des plantes', 9),
(28, 'vrai', 'Pour communiquer', 10),
(29, 'faux', 'Pour se camoufler', 10),
(30, 'faux', 'Pour se protéger de la chaleur', 10),
(31, 'vrai', 'L\'Asie et l\'Afrique', 11),
(32, 'faux', 'L\'Afrique et l\'Australie', 11),
(33, 'faux', 'L\'Australie et L\'Asie', 11),
(34, 'faux', 'Le hérisson', 12),
(35, 'faux', 'Le sanglier', 12),
(36, 'vrai', 'Le lièvre', 12),
(37, 'faux', 'Humus', 13),
(38, 'faux', 'Salive', 13),
(39, 'vrai', 'Mucus', 13),
(40, 'vrai', 'L\'abeille', 14),
(41, 'faux', 'La libellule', 14),
(42, 'faux', 'Le scarabée', 14),
(43, 'vrai', 'Le guépard', 15),
(44, 'faux', 'Le léopard', 15),
(45, 'faux', 'Le jaguar', 15),
(46, 'faux', 'Un éléphant', 16),
(47, 'faux', 'Une tortue', 16),
(48, 'vrai', 'Un coquillage', 16),
(49, 'faux', 'Le dauphin rose', 17),
(50, 'vrai', 'La souris verte', 17),
(51, 'faux', 'L\'éléphant blanc', 17),
(52, 'faux', '14', 18),
(53, 'vrai', '752', 18),
(54, 'faux', '1024', 18),
(55, 'vrai', 'environ 5 000 kg', 19),
(56, 'faux', 'environ 500 kg', 19),
(57, 'faux', 'environ 50 000 kg', 19),
(58, 'vrai', '3', 20),
(59, 'faux', '2', 20),
(60, 'faux', '1', 20),
(61, 'faux', 'La fourmi légionnaire', 21),
(62, 'vrai', 'La magnan', 21),
(63, 'faux', 'La fourmi tueuse', 21);

-- --------------------------------------------------------

--
-- Structure de la table `toilettage`
--

CREATE TABLE `toilettage` (
  `id_rdv` int(100) NOT NULL,
  `id_personne` int(100) NOT NULL,
  `date_rdv` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `numero_tel` bigint(20) NOT NULL,
  `type_service` varchar(255) NOT NULL,
  `governorat` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `toilettage`
--

INSERT INTO `toilettage` (`id_rdv`, `id_personne`, `date_rdv`, `nom`, `prenom`, `numero_tel`, `type_service`, `governorat`, `etat`) VALUES
(109, 67, '2018-03-07', 'nour', 'hamzaoui', 22222222, 'centre', '', 'ok'),
(110, 72, '2018-03-03', 'hhhh', 'hhhh', 11111111, 'à domicile', 'ariana', 'ok'),
(111, 71, '2018-03-03', 'kkk', 'kkoo', 77777777, 'centre', '', 'ok');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `nom_ville` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `longe` double NOT NULL,
  `latt` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`nom_ville`, `image`, `longe`, `latt`) VALUES
('ariana', 'ariana.jpg', 10.195556, 36.862499);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`);

--
-- Index pour la table `animaux_vendus`
--
ALTER TABLE `animaux_vendus`
  ADD PRIMARY KEY (`id_animal`);

--
-- Index pour la table `bon_de_reduction`
--
ALTER TABLE `bon_de_reduction`
  ADD PRIMARY KEY (`id_bon_reduction`),
  ADD KEY `id_produit` (`id_produit`),
  ADD KEY `id_client` (`id_personne`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `id_ligne` (`id_ligne`),
  ADD KEY `id_personne` (`id_produit`),
  ADD KEY `id_ligne_2` (`id_ligne`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Index pour la table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`id_date`);

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`id_demande`),
  ADD KEY `id_animal` (`id_animal`),
  ADD KEY `id_personne` (`id_personne`);

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id_favoris`),
  ADD KEY `id_personne` (`id_personne`),
  ADD KEY `id_animal` (`id_animal`);

--
-- Index pour la table `fos_user`
--
ALTER TABLE `fos_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_957A6479C05FB297` (`confirmation_token`);

--
-- Index pour la table `journee`
--
ALTER TABLE `journee`
  ADD PRIMARY KEY (`id_journee`);

--
-- Index pour la table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD PRIMARY KEY (`id_ligne`),
  ADD KEY `id_animal` (`id_animal`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`id_livraison`),
  ADD KEY `id_commande` (`id_commande`),
  ADD KEY `id_personne` (`id_personne`),
  ADD KEY `id_commande_2` (`id_commande`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id_personne`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id_promotion`);

--
-- Index pour la table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`id_publication`),
  ADD KEY `id_personne` (`id_personne`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id_reclamation`),
  ADD KEY `id_personne` (`id_personne`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id_reponse`),
  ADD KEY `id_question` (`id_question`);

--
-- Index pour la table `toilettage`
--
ALTER TABLE `toilettage`
  ADD PRIMARY KEY (`id_rdv`),
  ADD KEY `id_personne` (`id_personne`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`nom_ville`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `animal`
--
ALTER TABLE `animal`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT pour la table `animaux_vendus`
--
ALTER TABLE `animaux_vendus`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `bon_de_reduction`
--
ALTER TABLE `bon_de_reduction`
  MODIFY `id_bon_reduction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `date`
--
ALTER TABLE `date`
  MODIFY `id_date` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `id_demande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id_favoris` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `fos_user`
--
ALTER TABLE `fos_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `journee`
--
ALTER TABLE `journee`
  MODIFY `id_journee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT pour la table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  MODIFY `id_ligne` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `id_livraison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id_personne` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id_promotion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT pour la table `publication`
--
ALTER TABLE `publication`
  MODIFY `id_publication` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id_question` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id_quiz` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id_reclamation` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id_reponse` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `toilettage`
--
ALTER TABLE `toilettage`
  MODIFY `id_rdv` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `demande_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`),
  ADD CONSTRAINT `demande_ibfk_2` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`);

--
-- Contraintes pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `favoris_ibfk_1` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`),
  ADD CONSTRAINT `favoris_ibfk_2` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`);

--
-- Contraintes pour la table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD CONSTRAINT `ligne_commande_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);

--
-- Contraintes pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD CONSTRAINT `reclam` FOREIGN KEY (`id_reclamation`) REFERENCES `personne` (`id_personne`);

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `reponse_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `toilettage`
--
ALTER TABLE `toilettage`
  ADD CONSTRAINT `toilettage_ibfk_1` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
