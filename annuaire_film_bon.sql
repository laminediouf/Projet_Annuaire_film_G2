-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 19 oct. 2018 à 17:12
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire_film`
--

-- --------------------------------------------------------

--
-- Structure de la table `description`
--

DROP TABLE IF EXISTS `description`;
CREATE TABLE IF NOT EXISTS `description` (
  `id_description` int(11) NOT NULL AUTO_INCREMENT,
  `annee_production` date NOT NULL,
  `text_description` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_description`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `description`
--

INSERT INTO `description` (`id_description`, `annee_production`, `text_description`) VALUES
(1, '2018-10-01', 'Depuis la mort de sa femme Joseph Steadman a tout perdu..');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `titre_film` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `taille_film` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `id_genre` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `id_description` int(11) NOT NULL,
  `id_realisateur` int(11) NOT NULL,
  `id_personnage` int(11) NOT NULL,
  PRIMARY KEY (`id_film`),
  KEY `id_realisateur` (`id_realisateur`),
  KEY `id_description` (`id_description`),
  KEY `id_genre` (`id_genre`,`id_video`,`id_personnage`),
  KEY `id_personnage` (`id_personnage`),
  KEY `id_video` (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `titre_film`, `taille_film`, `id_genre`, `id_video`, `id_description`, `id_realisateur`, `id_personnage`) VALUES
(2, 'Higher.Power', '690Mo', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id_genre` int(11) NOT NULL AUTO_INCREMENT,
  `nom_genre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id_genre`, `nom_genre`) VALUES
(1, 'Science Fiction'),
(2, 'Comedi'),
(3, 'Aventure'),
(4, 'Action'),
(5, 'Romantique'),
(6, 'Comedie Romantique'),
(7, 'Animation'),
(8, 'Documentaire'),
(9, 'Comedie Medical'),
(10, 'Drame'),
(11, 'Epouvante Horeur'),
(12, 'Biopic');

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

DROP TABLE IF EXISTS `personnage`;
CREATE TABLE IF NOT EXISTS `personnage` (
  `id_personnage` int(11) NOT NULL AUTO_INCREMENT,
  `nom_acteur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom_acteur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nationnalite` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_personnage`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id_personnage`, `nom_acteur`, `prenom_acteur`, `nationnalite`, `sexe`) VALUES
(1, 'Lucas', 'Lucie', 'Francaise', 'Feminin'),
(2, 'Bensetti', 'Rayane', 'Francaise', 'Masculin');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

DROP TABLE IF EXISTS `realisateur`;
CREATE TABLE IF NOT EXISTS `realisateur` (
  `id_realisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_realisateur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom_realisateur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nationnalite_realisateur` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id_realisateur`, `nom_realisateur`, `prenom_realisateur`, `nationnalite_realisateur`, `sexe`) VALUES
(1, 'Kitsi', 'Edouard', 'Americain', 'Masculin'),
(2, 'Ruzowitzky', 'Stefan', 'Autrichien', 'Masculin'),
(3, 'columbus', 'Chris', 'Americain', 'masculin');

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

DROP TABLE IF EXISTS `serie`;
CREATE TABLE IF NOT EXISTS `serie` (
  `id_serie` int(11) NOT NULL AUTO_INCREMENT,
  `titre_serie` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nbr_episode` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `id_personnage` int(11) NOT NULL,
  `id_realisateur` int(11) NOT NULL,
  `id_description` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  PRIMARY KEY (`id_serie`),
  KEY `id_video` (`id_video`,`id_personnage`,`id_realisateur`,`id_description`),
  KEY `id_personnage` (`id_personnage`),
  KEY `id_realisateur` (`id_realisateur`),
  KEY `id_genre` (`id_genre`),
  KEY `id_description` (`id_description`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `serie`
--

INSERT INTO `serie` (`id_serie`, `titre_serie`, `nbr_episode`, `id_video`, `id_personnage`, `id_realisateur`, `id_description`, `id_genre`) VALUES
(1, 'The 100', 20, 1, 2, 2, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `format` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_video` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id_video`, `format`, `image_video`) VALUES
(1, 'MP3', '/image/khoromsi.jpg');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_realisateur`) REFERENCES `realisateur` (`id_realisateur`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`id_description`) REFERENCES `description` (`id_description`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `film_ibfk_3` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `film_ibfk_4` FOREIGN KEY (`id_personnage`) REFERENCES `personnage` (`id_personnage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `film_ibfk_5` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `serie`
--
ALTER TABLE `serie`
  ADD CONSTRAINT `serie_ibfk_1` FOREIGN KEY (`id_personnage`) REFERENCES `personnage` (`id_personnage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `serie_ibfk_2` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `serie_ibfk_3` FOREIGN KEY (`id_realisateur`) REFERENCES `realisateur` (`id_realisateur`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `serie_ibfk_4` FOREIGN KEY (`id_description`) REFERENCES `description` (`id_description`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `serie_ibfk_5` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
