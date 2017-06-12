-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 13, 2017 at 01:21 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolGestion`
--

-- --------------------------------------------------------

--
-- Table structure for table `annee_academique`
--

CREATE TABLE `annee_academique` (
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
-- Table structure for table `domaine`
--

CREATE TABLE `domaine` (
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

CREATE TABLE `etudiant` (
  `Code_Etudiant` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(100) NOT NULL,
  `Sexe` char(1) NOT NULL,
  `Date_Naiss` datetime NOT NULL,
  `Email` varchar(100) NOT NULL,
  `vacation` varchar(255) NOT NULL,
  `classe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `etudiant_niveau`
--

CREATE TABLE `etudiant_niveau` (
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

CREATE TABLE `etudiant_note` (
  `id_etudiant` int(11) NOT NULL,
  `matiere` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE `matiere` (
  `Matiere_Code` varchar(50) NOT NULL,
  `Matiere_Name` varchar(50) NOT NULL,
  `domaine` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matiere_enseigne`
--

CREATE TABLE `matiere_enseigne` (
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL,
  `Annee_Academique` varchar(10) NOT NULL,
  `Code_Semestre` int(11) NOT NULL,
  `Matiere_Code` varchar(50) NOT NULL,
  `Coefficient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mention`
--

CREATE TABLE `mention` (
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

CREATE TABLE `mention_niveau` (
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `niveau`
--

CREATE TABLE `niveau` (
  `Code_Niveau` int(11) NOT NULL,
  `Libelle_Niveau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `note_etudiant` (
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

CREATE TABLE `semestre` (
  `Code_Semestre` int(11) NOT NULL,
  `Semestre_Libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vacation`
--

CREATE TABLE `vacation` (
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
  ADD PRIMARY KEY (`Annee_Academique`),
  ADD KEY `Annee_Academique` (`Annee_Academique`);

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
  ADD PRIMARY KEY (`Code_Etudiant`,`Annee_Academique`,`Code_Mention`,`Code_Niveau`,`Vacation_Code`),
  ADD KEY `Vacation_Code` (`Vacation_Code`),
  ADD KEY `Annee_Academique` (`Annee_Academique`),
  ADD KEY `Code_Mention` (`Code_Mention`),
  ADD KEY `Code_Niveau` (`Code_Niveau`),
  ADD KEY `Code_Mention_2` (`Code_Mention`,`Code_Niveau`);

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
  ADD PRIMARY KEY (`Code_Mention`,`Code_Niveau`,`Annee_Academique`,`Code_Semestre`,`Matiere_Code`),
  ADD KEY `Matiere_Code` (`Matiere_Code`),
  ADD KEY `Code_Semestre` (`Code_Semestre`),
  ADD KEY `Annee_Academique` (`Annee_Academique`),
  ADD KEY `Code_Mention` (`Code_Mention`),
  ADD KEY `Code_Niveau` (`Code_Niveau`);

--
-- Indexes for table `mention`
--
ALTER TABLE `mention`
  ADD PRIMARY KEY (`Code_Mention`),
  ADD KEY `Code_Domaine` (`Code_Domaine`),
  ADD KEY `Code_Mention` (`Code_Mention`);

--
-- Indexes for table `mention_niveau`
--
ALTER TABLE `mention_niveau`
  ADD PRIMARY KEY (`Code_Mention`,`Code_Niveau`),
  ADD KEY `Code_Niveau` (`Code_Niveau`),
  ADD KEY `Code_Mention` (`Code_Mention`);

--
-- Indexes for table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`Code_Niveau`),
  ADD KEY `Code_Niveau` (`Code_Niveau`);

--
-- Indexes for table `note_etudiant`
--
ALTER TABLE `note_etudiant`
  ADD PRIMARY KEY (`Code_Mention`,`Code_Niveau`,`Annee_Academique`,`Code_Semestre`,`Matiere_Code`,`Code_Etudiant`,`Vacation_Code`),
  ADD KEY `Code_Mention` (`Code_Mention`),
  ADD KEY `Code_Niveau` (`Code_Niveau`),
  ADD KEY `Annee_Academique` (`Annee_Academique`),
  ADD KEY `Code_Semestre` (`Code_Semestre`),
  ADD KEY `Matiere_Code` (`Matiere_Code`),
  ADD KEY `Code_Etudiant` (`Code_Etudiant`),
  ADD KEY `Vacation_Code` (`Vacation_Code`);

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
  MODIFY `Code_Domaine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `etudiant_note`
--
ALTER TABLE `etudiant_note`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mention`
--
ALTER TABLE `mention`
  MODIFY `Code_Mention` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `Code_Niveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  ADD CONSTRAINT `etudiant_niveau_ibfk_2` FOREIGN KEY (`Annee_Academique`) REFERENCES `annee_academique` (`Annee_Academique`),
  ADD CONSTRAINT `etudiant_niveau_ibfk_3` FOREIGN KEY (`Code_Etudiant`) REFERENCES `etudiant` (`Code_Etudiant`);

--
-- Constraints for table `matiere_enseigne`
--
ALTER TABLE `matiere_enseigne`
  ADD CONSTRAINT `matiere_enseigne_ibfk_1` FOREIGN KEY (`Matiere_Code`) REFERENCES `matiere` (`Matiere_Code`),
  ADD CONSTRAINT `matiere_enseigne_ibfk_2` FOREIGN KEY (`Code_Semestre`) REFERENCES `semestre` (`Code_Semestre`),
  ADD CONSTRAINT `matiere_enseigne_ibfk_3` FOREIGN KEY (`Annee_Academique`) REFERENCES `annee_academique` (`Annee_Academique`),
  ADD CONSTRAINT `matiere_enseigne_ibfk_4` FOREIGN KEY (`Code_Mention`,`Code_Niveau`) REFERENCES `mention_niveau` (`Code_Mention`, `Code_Niveau`);

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
  ADD CONSTRAINT `note_etudiant_ibfk_1` FOREIGN KEY (`Code_Mention`,`Code_Niveau`,`Annee_Academique`,`Code_Semestre`,`Matiere_Code`) REFERENCES `matiere_enseigne` (`Code_Mention`, `Code_Niveau`, `Annee_Academique`, `Code_Semestre`, `Matiere_Code`),
  ADD CONSTRAINT `note_etudiant_ibfk_2` FOREIGN KEY (`Code_Etudiant`) REFERENCES `etudiant_niveau` (`Code_Etudiant`),
  ADD CONSTRAINT `note_etudiant_ibfk_3` FOREIGN KEY (`Vacation_Code`) REFERENCES `etudiant_niveau` (`Vacation_Code`),
  ADD CONSTRAINT `note_etudiant_ibfk_4` FOREIGN KEY (`Code_Mention`,`Code_Niveau`) REFERENCES `etudiant_niveau` (`Code_Mention`, `Code_Niveau`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
