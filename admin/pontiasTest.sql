-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mar 16 Février 2010 à 15:19
-- Version du serveur: 5.1.41
-- Version de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `pontias`
--

-- --------------------------------------------------------

--
-- Structure de la table `articledetails`
--

CREATE TABLE IF NOT EXISTS `articledetails` (
  `articleDetailsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articleID` int(10) unsigned NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frText` varchar(6000) NOT NULL,
  `gbText` varchar(6000) NOT NULL,
  PRIMARY KEY (`articleDetailsID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `articledetails`
--

INSERT INTO `articledetails` (`articleDetailsID`, `articleID`, `position`, `frText`, `gbText`) VALUES
(1, 1, 1, 'Duis facilisis ornare faucibus. Maecenas condimentum mollis malesuada. Sed tristique tincidunt diam, nec fringilla urna commodo non. Etiam iaculis, neque vitae aliquet posuere, justo lectus elementum risus, et feugiat neque quam quis eros. In imperdiet ultricies nisi sit amet sollicitudin. ', 'Duis facilisis ornare faucibus. Maecenas condimentum mollis malesuada. Sed tristique tincidunt diam, nec fringilla urna commodo non. Etiam iaculis, neque vitae aliquet posuere, justo lectus elementum risus, et feugiat neque quam quis eros. In imperdiet ultricies nisi sit amet sollicitudin. '),
(2, 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis mattis aliquam. Suspendisse hendrerit ante sagittis dolor consequat sed mattis orci facilisis. Morbi eleifend dictum turpis, vitae convallis augue sollicitudin non. Aliquam arcu eros, ornare et auctor id, vestibulum ac odio.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis mattis aliquam. Suspendisse hendrerit ante sagittis dolor consequat sed mattis orci facilisis. Morbi eleifend dictum turpis, vitae convallis augue sollicitudin non. Aliquam arcu eros, ornare et auctor id, vestibulum ac odio.'),
(3, 1, 5, 'Phasellus egestas dapibus leo id varius. Integer tempor pretium urna non mollis. Sed consequat magna eu neque rhoncus faucibus aliquam urna pellentesque', 'Phasellus egestas dapibus leo id varius. Integer tempor pretium urna non mollis. Sed consequat magna eu neque rhoncus faucibus aliquam urna pellentesque');

-- --------------------------------------------------------

--
-- Structure de la table `articlephotos`
--

CREATE TABLE IF NOT EXISTS `articlephotos` (
  `articlePhotosID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `articleID` int(10) unsigned NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `fichierPhoto` varchar(30) NOT NULL,
  `frTitle` varchar(120) NOT NULL,
  `gbTitle` varchar(120) NOT NULL,
  `frLegende` varchar(150) DEFAULT NULL,
  `gbLegende` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`articlePhotosID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `articlephotos`
--

INSERT INTO `articlephotos` (`articlePhotosID`, `articleID`, `position`, `fichierPhoto`, `frTitle`, `gbTitle`, `frLegende`, `gbLegende`) VALUES
(1, 1, 2, 'imgtest2.gif', 'Les danseurs', 'The dancers', 'Les danseurs passent près du pont Roman', 'The dancers are walking near the Roman Bridge'),
(2, 1, 4, 'imgtest1.gif', 'Les derniers rites', 'The last rites', 'Apr&egrave;s le combat, le pr&ecirc;tre donne les derniers rites', 'After the fight, the priest administers the last rites');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `articleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `frTitre` varchar(120) NOT NULL,
  `gbTitre` varchar(120) NOT NULL,
  `frSousTitre` varchar(120) DEFAULT NULL,
  `gbSousTitre` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`articleID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`articleID`, `frTitre`, `gbTitre`, `frSousTitre`, `gbSousTitre`) VALUES
(1, 'Pr&eacute;sentation des M&eacute;di&eacute;vales du Pontias', 'Presentation of the  M&eacute;di&eacute;vales du Pontias', 'Coucou ca va?', 'Hello there');

-- --------------------------------------------------------

--
-- Structure de la table `fichiers`
--

CREATE TABLE IF NOT EXISTS `fichiers` (
  `fichierID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomFichier` varchar(55) NOT NULL,
  PRIMARY KEY (`fichierID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `fichiers`
--

INSERT INTO `fichiers` (`fichierID`, `nomFichier`) VALUES
(1, 'principal'),
(2, 'articles'),
(3, 'galerie'),
(4, 'forums'),
(5, 'mentions'),
(6, 'planSite'),
(7, 'liens'),
(8, 'contact');

-- --------------------------------------------------------

--
-- Structure de la table `galeriedetails`
--

CREATE TABLE IF NOT EXISTS `galeriedetails` (
  `galerieDetailsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `galerieID` int(10) unsigned NOT NULL,
  `fichierPhoto` varchar(30) NOT NULL,
  `frLegende` varchar(120) NOT NULL,
  `gbLegende` varchar(120) NOT NULL,
  PRIMARY KEY (`galerieDetailsID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `galeriedetails`
--

INSERT INTO `galeriedetails` (`galerieDetailsID`, `galerieID`, `fichierPhoto`, `frLegende`, `gbLegende`) VALUES
(1, 1, 'med2009_01.jpg', 'Image test 1 légende', 'Test image 1 legend'),
(2, 1, 'med2009_02.jpg', 'Image test 2 légende', 'Test image 2 legend'),
(3, 1, 'med2009_03.jpg', 'Image test 3 légende', 'Test image 3 legend'),
(4, 1, 'med2009_04.jpg', 'Image test 4 légende', 'Test image 4 legend'),
(5, 1, 'med2009_05.jpg', 'Image test 5 légende', 'Test image 5 legend');

-- --------------------------------------------------------

--
-- Structure de la table `galeries`
--

CREATE TABLE IF NOT EXISTS `galeries` (
  `galerieID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `frTitre` varchar(120) NOT NULL,
  `gbTitre` varchar(120) NOT NULL,
  `frSousTitre` varchar(120) DEFAULT NULL,
  `gbSousTitre` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`galerieID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `galeries`
--

INSERT INTO `galeries` (`galerieID`, `frTitre`, `gbTitre`, `frSousTitre`, `gbSousTitre`) VALUES
(1, 'Test galerie', 'Gallery Test', 'Ici on test la galerie d''images', 'Here we test the image gallery');

-- --------------------------------------------------------

--
-- Structure de la table `liens`
--

CREATE TABLE IF NOT EXISTS `liens` (
  `lienID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categID` int(10) unsigned NOT NULL,
  `lien` varchar(250) NOT NULL,
  `frTitle` varchar(300) NOT NULL,
  `gbTitle` varchar(300) NOT NULL,
  `frNom` varchar(120) NOT NULL,
  `gbNom` varchar(120) NOT NULL,
  `imgFichier` varchar(30) NOT NULL,
  PRIMARY KEY (`lienID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `liens`
--

INSERT INTO `liens` (`lienID`, `categID`, `lien`, `frTitle`, `gbTitle`, `frNom`, `gbNom`, `imgFichier`) VALUES
(1, 1, 'http://www.vieuxnyons.com', 'Allez sur le site de l''association Vie et Travail dans le vieux Nyons', 'Go to the web site of the association Vie et Travail dans le Vieux Nyons', 'Vie et Travail dans le vieux Nyons', 'Vie et Travail dans le vieux Nyons', 'th_med2009_01.jpg'),
(2, 1, 'http://www.nyons.com', 'Site de la mairie de Nyons', 'Nyons town hall web site', 'Mairie de Nyons', 'Nyons Town Hall', 'th_med2009_01.jpg'),
(3, 3, 'http://www.google.fr', 'Pour tout trouver', 'To find everything', 'Chevaliers du Roi Ren&eacute;', 'Knights of King Ren&eacute;', 'th_med2009_01.jpg'),
(4, 4, 'http://www.nyons.com', 'Test ons ce liens', 'testing this link', 'Liens nouveau', 'new link', 'th_med2009_01.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `menuID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sousMenuID` int(10) unsigned NOT NULL DEFAULT '0',
  `frNom` varchar(60) NOT NULL,
  `gbNom` varchar(60) NOT NULL,
  `frNomBread` varchar(25) NOT NULL,
  `gbNomBread` varchar(25) NOT NULL,
  `frLienTitle` varchar(150) NOT NULL,
  `gbLienTitle` varchar(150) NOT NULL,
  `fichierID` int(10) unsigned NOT NULL,
  `frActive` tinyint(4) NOT NULL DEFAULT '1',
  `gbActive` tinyint(4) NOT NULL DEFAULT '1',
  `position` tinyint(4) NOT NULL DEFAULT '1',
  `articleID` int(10) unsigned NOT NULL DEFAULT '0',
  `galerieID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `menus`
--

INSERT INTO `menus` (`menuID`, `sousMenuID`, `frNom`, `gbNom`, `frNomBread`, `gbNomBread`, `frLienTitle`, `gbLienTitle`, `fichierID`, `frActive`, `gbActive`, `position`, `articleID`, `galerieID`) VALUES
(1, 0, 'Accueil', 'Home', 'Accueil', 'Home', 'Allez &agrave; la page accueil', 'Go to the home page', 1, 1, 1, 1, 0, 0),
(2, 0, 'Histoire', 'History', 'Histoire', 'History', 'Allez &agrave; la page histoire', 'Go to the history page', 1, 1, 1, 2, 0, 0),
(3, 0, 'Programme', 'What''s on', 'Programme', 'What''s on', 'Allez &agrave; la page du programme', 'Go to the what''s on page', 1, 1, 1, 3, 0, 0),
(4, 0, 'M&eacute;diath&egrave;que', 'Multimedia Library', 'M&eacute;diath&egrave;que', 'Multimedia', 'Allez &agrave; la page M&eacute;diath&egrave;que', 'Go to the multimedia page', 1, 1, 1, 4, 0, 0),
(5, 0, 'Dans la presse', 'In the papers', 'Presse', 'Papers', 'Allez &agrave; la page dans la presse', 'Go to the press page', 1, 1, 1, 5, 0, 0),
(6, 0, 'Forums', 'Forums', 'Forums', 'Forums', 'Allez &agrave; la page des forums de discussions', 'Go to the forums page', 4, 0, 0, 6, 0, 0),
(7, 0, 'Liens', 'Links', 'Liens', 'Links', 'Allez &agrave; la page des liens internet', 'Go to the web links page', 7, 1, 1, 7, 0, 0),
(8, 0, 'Contactez-nous', 'Contact us', 'Contacts', 'Contacts', 'Allez &agrave; la page de contacts', 'Go to the contacts page', 8, 1, 1, 8, 0, 0),
(9, 1, 'Pr&eacute;sentation des M&eacute;di&eacute;vales', 'Introduction to the M&eacute;di&eacute;vales', 'Pr&eacute;sentation', 'Presentation', 'Allez &agrave; la page de p&eacute;sentation des M&eacute;di&eacute;vales du Pontias', 'Go to the page introducing the M&eacute;di&eacute;vales du Pontias', 2, 1, 1, 1, 1, 0),
(10, 1, 'L''association V.T.V.N.', 'The V.T.V.N. association', 'V.T.V.N.', 'V.T.V.N.', 'Allez &agrave; la page de p&eacute;sentation de l''association Vie et Travail dans le Vieux Nyons', 'Go to the page introducing the association Vie et Travail dans le Vieux Nyons', 2, 1, 1, 2, 2, 0),
(11, 55555, 'Mentions l&eacute;gales', 'Legal informations', 'Mentions', 'Informations', 'Allez &agrave; la page des mentions l&eacute;gales du site', 'Go to the information page of this website', 5, 1, 1, 1, 0, 0),
(12, 55555, 'Plan du site', 'Site map', 'Plan', 'Map', 'Allez &agrave; la page pr&eacute;sentant le plan du site internet', 'Go to the page presenting the site map', 6, 1, 1, 2, 0, 0),
(13, 2, 'Petites pages d''histoire de Nyons', 'Some history pages on Nyons', 'Histoire de Nyons', 'Nyons History', 'Allez &agrave; la page vous pr&eacute;sentant l''histoire de Nyons', 'Go to the page presenting the history of Nyons', 1, 1, 1, 1, 0, 0),
(14, 2, 'L&eacute;gendes Nyonsaises', 'Legends of Nyons', 'L&eacute;gendes', 'Legends', 'D&eacute;couvrer les l&eacute;gendes de Nyons', 'Discover the legends of Nyons', 1, 1, 1, 2, 0, 0),
(15, 13, 'Le Moyen Age', 'The Middle Ages', 'Moyen Age', 'Middle Ages', 'D&eacute;couvrez la vie &agrave; Nyons au Moyen Age', 'Discover life in Nyons in the Middle Ages', 2, 1, 1, 1, 3, 0),
(16, 13, 'La Royaut&eacute;', 'Royal Times', 'Royaut&eacute;', 'Royal times', 'Les influences de la royaut&eacute; sur Nyons', 'Life in Nyons during the Royal times', 2, 1, 1, 2, 4, 0),
(19, 4, 'Galerie Test', 'Testing gallery', 'Galerie', 'Gallery', 'Accèder à la galerie de test', 'Go to the testing gallery', 3, 1, 1, 1, 0, 1),
(17, 14, 'La l&eacute;gende du Pontias', 'The Pontias legend', 'Le Pontias', 'The Pontias', 'Retrouver la l&eacute;gende du célèbre vent Nyonsais', 'Discover the legend of the famous wind of Nyons', 2, 1, 1, 1, 5, 0),
(18, 14, 'Saint C&eacute;saire', 'Saint C&eacute;saire', 'St C&eacute;saire', 'St C&eacute;saire', 'La légende du saint ', 'The legend of this saint', 2, 1, 1, 2, 6, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
