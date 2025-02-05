-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 05 fév. 2025 à 14:39
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_astropret`
--

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

DROP TABLE IF EXISTS `materiel`;
CREATE TABLE IF NOT EXISTS `materiel` (
  `IDobjet` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`IDobjet`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`IDobjet`, `nom`, `etat`) VALUES
(1, 'grand téléscope', 1),
(2, 'petit téléscope', 0),
(3, 'lunette', 1);

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

DROP TABLE IF EXISTS `membres`;
CREATE TABLE IF NOT EXISTS `membres` (
  `IDmembre` int(11) NOT NULL AUTO_INCREMENT,
  `Prénom` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Nom` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Role` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `adresse` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mot_de_passe` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IDmembre`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`IDmembre`, `Prénom`, `Nom`, `Role`, `adresse`, `mot_de_passe`) VALUES
(1, 'eddy', 'graradji', 'admin', 'lycée branly', '123'),
(2, 'mickael', 'BACCAM', 'utilisateur', 'rillieux', '456'),
(3, 'sylvain', 'DEFRANCE', 'utilisateur', 'charly', '789'),
(4, 'ossama', 'talibi', 'utilisateur', 'lycée branly', '147');

-- --------------------------------------------------------

--
-- Structure de la table `réservation`
--

DROP TABLE IF EXISTS `réservation`;
CREATE TABLE IF NOT EXISTS `réservation` (
  `IDreservation` int(11) NOT NULL AUTO_INCREMENT,
  `membres_IDmembre` int(11) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `Dateemprunt` date DEFAULT NULL,
  `Dateretour` date DEFAULT NULL,
  `materiel_IDobjet` int(11) NOT NULL,
  PRIMARY KEY (`IDreservation`),
  KEY `membres_IDmembre` (`membres_IDmembre`),
  KEY `materiel_IDobjet` (`materiel_IDobjet`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `réservation`
--

INSERT INTO `réservation` (`IDreservation`, `membres_IDmembre`, `latitude`, `longitude`, `Dateemprunt`, `Dateretour`, `materiel_IDobjet`) VALUES
(1, 1, 45, 1, '2025-01-31', '2025-02-02', 1),
(2, 3, 1, 45, '2025-02-07', '2025-02-14', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
