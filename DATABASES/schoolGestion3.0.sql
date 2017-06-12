-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2017 at 07:25 PM
-- Server version: 5.5.43-0+deb8u1
-- PHP Version: 5.6.7-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `schoolGestion`
--

-- --------------------------------------------------------

--
-- Table structure for table `annee_academique`
--

CREATE TABLE IF NOT EXISTS `annee_academique` (
  `Annee_Academique` varchar(10) NOT NULL,
  `Is_Actif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `annee_academique`
--

INSERT INTO `annee_academique` (`Annee_Academique`, `Is_Actif`) VALUES
('-', 0),
('2000-2001', 0),
('2001-2002', 0),
('2010-2011', 1),
('2012-2013', 1),
('2014-2015', 0),
('2015-2016', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Domaine`
--

CREATE TABLE IF NOT EXISTS `Domaine` (
  `Code_Domaine` int(11) NOT NULL,
  `Libelle_Domaine` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domaine`
--

CREATE TABLE IF NOT EXISTS `domaine` (
`Code_Domaine` int(11) NOT NULL,
  `Libelle_Domaine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `domaine`
--

INSERT INTO `domaine` (`Code_Domaine`, `Libelle_Domaine`) VALUES
(4, 'Gestion '),
(5, 'Sciences Informatiques');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
`Code_Etudiant` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(100) DEFAULT NULL,
  `Sexe` varchar(25) DEFAULT NULL,
  `Date_Naiss` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `vacation` varchar(255) DEFAULT NULL,
  `classe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`Code_Etudiant`, `Nom`, `Prenom`, `Sexe`, `Date_Naiss`, `Email`, `vacation`, `classe`) VALUES
(1, 'Jean', 'Mike E. Luigi', '', '0000-00-00 00:00:00', '', '', ''),
(2, 'Jeafn', 'Mike E. Luigi', '', NULL, '', '', ''),
(3, 'Jeafn', 'Mike E. Luigi', '', NULL, '', '', ''),
(4, 'Jeafn', 'Mike E. Luigi', '', NULL, '', '', ''),
(5, 'Jeafn', 'Mike E. Luigi', '', NULL, '', '', ''),
(6, 'nom', 'prenom', '', NULL, '', '', ''),
(7, 'Jeafn', 'Mike E. Luigi', '', NULL, '', '', ''),
(8, 'nom', 'prenom', '', NULL, '', '', ''),
(9, 'Jeafn', 'Mike E. Luigi', NULL, NULL, NULL, NULL, NULL),
(10, 'Jeafn', 'Mike E. Luigi', NULL, NULL, NULL, NULL, NULL),
(11, 'Jeafn', 'Mike E. Luigi', 'm', NULL, NULL, NULL, NULL),
(12, 'Jeafn', 'Mike E. Luigi', 'm', NULL, NULL, NULL, NULL),
(13, 'Jeafn', 'Mike E. Luigi', 'm', NULL, NULL, NULL, NULL),
(14, 'Jeafn', 'Mike E. Luigi', 'm', NULL, NULL, NULL, NULL),
(15, 'Jeafn', 'Mike E. Luigi', 'masculin', NULL, NULL, NULL, NULL),
(16, 'Jeafn', 'Mike E. Luigi', 'masculin', NULL, NULL, NULL, NULL),
(17, 'nom', 'prenom', 'masculin', NULL, NULL, NULL, NULL),
(18, 'nom', 'prenom', 'masculin', NULL, NULL, NULL, NULL),
(19, 'nom', 'prenom', 'masculin', '', 'email', NULL, NULL),
(20, 'nom', 'prenom', 'masculin', 'jksldjf', 'email', NULL, NULL),
(21, 'nom', 'prenom', 'masculin', 'jksldjf', 'email', 'vacation', 'classe'),
(22, 'nom', 'prenom', 'masculin', 'jksldjf', 'email', 'vacation', 'classe'),
(23, 'nom', 'prenom', 'masculin', 'jksldjf', 'email', 'vacation', 'classe'),
(24, 'nom', 'prenom', 'masculin', 'jksldjf', 'email', 'vacation', 'classe'),
(25, 'lkdjflkj', 'lskdjfl', 'masculin', 'slkdjf', 'lskdfjl', 'sldkfjlk', 'sdlkfjl');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant_niveau`
--

CREATE TABLE IF NOT EXISTS `etudiant_niveau` (
  `Code_Etudiant` varchar(50) NOT NULL,
  `Annee_Academique` varchar(10) NOT NULL,
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL,
  `Vacation_Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `etudiant_note`
--

CREATE TABLE IF NOT EXISTS `etudiant_note` (
`id_etudiant` int(11) NOT NULL,
  `matiere` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
`Matiere_Code` mediumint(9) NOT NULL,
  `Matiere_Name` varchar(50) NOT NULL,
  `domaine` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`Matiere_Code`, `Matiere_Name`, `domaine`) VALUES
(1, 'matiere', 'L1');

-- --------------------------------------------------------

--
-- Table structure for table `matiere_enseigne`
--

CREATE TABLE IF NOT EXISTS `matiere_enseigne` (
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL,
  `Annee_Academique` varchar(10) NOT NULL,
  `Code_Semestre` int(11) NOT NULL,
  `Matiere_Code` varchar(50) NOT NULL,
  `Coefficient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mention`
--

CREATE TABLE IF NOT EXISTS `Mention` (
  `Code_Mention` int(11) NOT NULL,
  `Code_Domaine` int(11) NOT NULL,
  `Libelle_Mention, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mention`
--

CREATE TABLE IF NOT EXISTS `mention` (
`Code_Mention` int(11) NOT NULL,
  `Code_Domaine` int(11) NOT NULL,
  `Libelle_Mention` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mention`
--

INSERT INTO `mention` (`Code_Mention`, `Code_Domaine`, `Libelle_Mention`) VALUES
(1, 4, 'Gestion A'),
(12, 4, 'Gestion D'),
(14, 4, 'Gestion K'),
(15, 4, 'aaaaaa'),
(16, 4, 'Ok');

-- --------------------------------------------------------

--
-- Table structure for table `mention_niveau`
--

CREATE TABLE IF NOT EXISTS `mention_niveau` (
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `niveau`
--

CREATE TABLE IF NOT EXISTS `niveau` (
`Code_Niveau` int(11) NOT NULL,
  `Libelle_Niveau` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `niveau`
--

INSERT INTO `niveau` (`Code_Niveau`, `Libelle_Niveau`) VALUES
(2, 'L1'),
(3, 'L2');

-- --------------------------------------------------------

--
-- Table structure for table `note_etudiant`
--

CREATE TABLE IF NOT EXISTS `note_etudiant` (
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL,
  `Annee_Academique` varchar(10) NOT NULL,
  `Code_Semestre` int(11) NOT NULL,
  `Matiere_Code` varchar(50) NOT NULL,
  `Code_Etudiant` varchar(50) NOT NULL,
  `Intra` bigint(20) NOT NULL,
  `Final` bigint(20) NOT NULL,
  `Note_Finale` bigint(20) NOT NULL,
  `Vacation_Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semestre`
--

CREATE TABLE IF NOT EXISTS `semestre` (
`Code_Semestre` int(11) NOT NULL,
  `Semestre_Libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE IF NOT EXISTS `vacation` (
`Vacation_Code` int(11) NOT NULL,
  `Vacation_Libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annee_academique`
--
ALTER TABLE `annee_academique`
 ADD PRIMARY KEY (`Annee_Academique`), ADD KEY `Annee_Academique` (`Annee_Academique`);

--
-- Indexes for table `Domaine`
--
ALTER TABLE `Domaine`
 ADD PRIMARY KEY (`Code_Domaine`);

--
-- Indexes for table `domaine`
--
ALTER TABLE `domaine`
 ADD PRIMARY KEY (`Code_Domaine`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
 ADD PRIMARY KEY (`Code_Etudiant`);

--
-- Indexes for table `etudiant_niveau`
--
ALTER TABLE `etudiant_niveau`
 ADD PRIMARY KEY (`Code_Etudiant`,`Annee_Academique`,`Code_Mention`,`Code_Niveau`,`Vacation_Code`), ADD KEY `Vacation_Code` (`Vacation_Code`), ADD KEY `Annee_Academique` (`Annee_Academique`), ADD KEY `Code_Mention` (`Code_Mention`), ADD KEY `Code_Niveau` (`Code_Niveau`), ADD KEY `Code_Mention_2` (`Code_Mention`,`Code_Niveau`);

--
-- Indexes for table `etudiant_note`
--
ALTER TABLE `etudiant_note`
 ADD PRIMARY KEY (`id_etudiant`);

--
-- Indexes for table `matiere`
--
ALTER TABLE `matiere`
 ADD PRIMARY KEY (`Matiere_Code`);

--
-- Indexes for table `matiere_enseigne`
--
ALTER TABLE `matiere_enseigne`
 ADD PRIMARY KEY (`Code_Mention`,`Code_Niveau`,`Annee_Academique`,`Code_Semestre`,`Matiere_Code`), ADD KEY `Matiere_Code` (`Matiere_Code`), ADD KEY `Code_Semestre` (`Code_Semestre`), ADD KEY `Annee_Academique` (`Annee_Academique`), ADD KEY `Code_Mention` (`Code_Mention`), ADD KEY `Code_Niveau` (`Code_Niveau`);

--
-- Indexes for table `Mention`
--
ALTER TABLE `Mention`
 ADD PRIMARY KEY (`Code_Mention`), ADD KEY `mention_code_domaine_foreign` (`Code_Domaine`);

--
-- Indexes for table `mention`
--
ALTER TABLE `mention`
 ADD PRIMARY KEY (`Code_Mention`), ADD KEY `Code_Domaine` (`Code_Domaine`), ADD KEY `Code_Mention` (`Code_Mention`);

--
-- Indexes for table `mention_niveau`
--
ALTER TABLE `mention_niveau`
 ADD PRIMARY KEY (`Code_Mention`,`Code_Niveau`), ADD KEY `Code_Niveau` (`Code_Niveau`), ADD KEY `Code_Mention` (`Code_Mention`);

--
-- Indexes for table `niveau`
--
ALTER TABLE `niveau`
 ADD PRIMARY KEY (`Code_Niveau`), ADD KEY `Code_Niveau` (`Code_Niveau`);

--
-- Indexes for table `note_etudiant`
--
ALTER TABLE `note_etudiant`
 ADD PRIMARY KEY (`Code_Mention`,`Code_Niveau`,`Annee_Academique`,`Code_Semestre`,`Matiere_Code`,`Code_Etudiant`,`Vacation_Code`), ADD KEY `Code_Mention` (`Code_Mention`), ADD KEY `Code_Niveau` (`Code_Niveau`), ADD KEY `Annee_Academique` (`Annee_Academique`), ADD KEY `Code_Semestre` (`Code_Semestre`), ADD KEY `Matiere_Code` (`Matiere_Code`), ADD KEY `Code_Etudiant` (`Code_Etudiant`), ADD KEY `Vacation_Code` (`Vacation_Code`);

--
-- Indexes for table `semestre`
--
ALTER TABLE `semestre`
 ADD PRIMARY KEY (`Code_Semestre`);

--
-- Indexes for table `vacation`
--
ALTER TABLE `vacation`
 ADD PRIMARY KEY (`Vacation_Code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domaine`
--
ALTER TABLE `domaine`
MODIFY `Code_Domaine` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
MODIFY `Code_Etudiant` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `etudiant_note`
--
ALTER TABLE `etudiant_note`
MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `matiere`
--
ALTER TABLE `matiere`
MODIFY `Matiere_Code` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mention`
--
ALTER TABLE `mention`
MODIFY `Code_Mention` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `niveau`
--
ALTER TABLE `niveau`
MODIFY `Code_Niveau` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `semestre`
--
ALTER TABLE `semestre`
MODIFY `Code_Semestre` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vacation`
--
ALTER TABLE `vacation`
MODIFY `Vacation_Code` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `etudiant_niveau`
--
ALTER TABLE `etudiant_niveau`
ADD CONSTRAINT `etudiant_niveau_ibfk_1` FOREIGN KEY (`Vacation_Code`) REFERENCES `vacation` (`Vacation_Code`),
ADD CONSTRAINT `etudiant_niveau_ibfk_2` FOREIGN KEY (`Annee_Academique`) REFERENCES `annee_academique` (`Annee_Academique`);

--
-- Constraints for table `matiere_enseigne`
--
ALTER TABLE `matiere_enseigne`
ADD CONSTRAINT `matiere_enseigne_ibfk_2` FOREIGN KEY (`Code_Semestre`) REFERENCES `semestre` (`Code_Semestre`),
ADD CONSTRAINT `matiere_enseigne_ibfk_3` FOREIGN KEY (`Annee_Academique`) REFERENCES `annee_academique` (`Annee_Academique`),
ADD CONSTRAINT `matiere_enseigne_ibfk_4` FOREIGN KEY (`Code_Mention`, `Code_Niveau`) REFERENCES `mention_niveau` (`Code_Mention`, `Code_Niveau`);

--
-- Constraints for table `Mention`
--
ALTER TABLE `Mention`
ADD CONSTRAINT `mention_code_domaine_foreign` FOREIGN KEY (`Code_Domaine`) REFERENCES `Domaine` (`Code_Domaine`);

--
-- Constraints for table `mention`
--
ALTER TABLE `mention`
ADD CONSTRAINT `mention_ibfk_1` FOREIGN KEY (`Code_Domaine`) REFERENCES `domaine` (`Code_Domaine`);

--
-- Constraints for table `mention_niveau`
--
ALTER TABLE `mention_niveau`
ADD CONSTRAINT `mention_niveau_ibfk_1` FOREIGN KEY (`Code_Niveau`) REFERENCES `niveau` (`Code_Niveau`),
ADD CONSTRAINT `mention_niveau_ibfk_2` FOREIGN KEY (`Code_Mention`) REFERENCES `mention` (`Code_Mention`);

--
-- Constraints for table `note_etudiant`
--
ALTER TABLE `note_etudiant`
ADD CONSTRAINT `note_etudiant_ibfk_1` FOREIGN KEY (`Code_Mention`, `Code_Niveau`, `Annee_Academique`, `Code_Semestre`, `Matiere_Code`) REFERENCES `matiere_enseigne` (`Code_Mention`, `Code_Niveau`, `Annee_Academique`, `Code_Semestre`, `Matiere_Code`),
ADD CONSTRAINT `note_etudiant_ibfk_2` FOREIGN KEY (`Code_Etudiant`) REFERENCES `etudiant_niveau` (`Code_Etudiant`),
ADD CONSTRAINT `note_etudiant_ibfk_3` FOREIGN KEY (`Vacation_Code`) REFERENCES `etudiant_niveau` (`Vacation_Code`),
ADD CONSTRAINT `note_etudiant_ibfk_4` FOREIGN KEY (`Code_Mention`, `Code_Niveau`) REFERENCES `etudiant_niveau` (`Code_Mention`, `Code_Niveau`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
