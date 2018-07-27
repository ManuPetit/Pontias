-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mar 16 Février 2010 à 15:20
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

-- --------------------------------------------------------

--
-- Structure de la table `fichiers`
--

CREATE TABLE IF NOT EXISTS `fichiers` (
  `fichierID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomFichier` varchar(55) NOT NULL,
  PRIMARY KEY (`fichierID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
