-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2017 at 02:45 AM
-- Server version: 5.5.43-0+deb8u1
-- PHP Version: 5.6.7-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE IF NOT EXISTS `administrators` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agent_medicales`
--

CREATE TABLE IF NOT EXISTS `agent_medicales` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Annee_academique`
--

CREATE TABLE IF NOT EXISTS `Annee_academique` (
  `Annee_Academique, 10` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Is_actif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for table `Etudiant`
--

CREATE TABLE IF NOT EXISTS `Etudiant` (
  `Code_Etudiant, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nom, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Sexe` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date_naissance` datetime NOT NULL,
  `Email, 50` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Etudiant_Niveau`
--

CREATE TABLE IF NOT EXISTS `Etudiant_Niveau` (
  `Code_Etudiant` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Annee_Academique` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL,
  `Vacation_Code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Matiere`
--

CREATE TABLE IF NOT EXISTS `Matiere` (
  `Matiere_code, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Matiere_name, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Matiere_enseigne`
--

CREATE TABLE IF NOT EXISTS `Matiere_enseigne` (
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL,
  `Annee_Academique, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Code_Semestre` int(11) NOT NULL,
  `Matiere_code, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Coefficient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for table `Mention_Niveau`
--

CREATE TABLE IF NOT EXISTS `Mention_Niveau` (
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
`id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_17_100937_create_posts_table', 1),
(4, '2017_05_24_015555_create_domaines_table', 1),
(5, '2017_05_24_015623_create_niveaus_table', 1),
(6, '2017_05_24_015632_create_mentions_table', 1),
(7, '2017_05_24_015642_create_mention__niveaus_table', 1),
(8, '2017_05_24_015656_create_matiere_enseignes_table', 1),
(9, '2017_05_24_015701_create_matieres_table', 1),
(10, '2017_05_24_015713_create_semestres_table', 1),
(11, '2017_05_24_015730_create_etudiant__niveaus_table', 1),
(12, '2017_05_24_015737_create_vacations_table', 1),
(13, '2017_05_24_015748_create_anne__academiques_table', 1),
(14, '2017_05_24_015756_create_etudiants_table', 1),
(15, '2017_05_24_023347_create_note__etudiants_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Niveau`
--

CREATE TABLE IF NOT EXISTS `Niveau` (
  `Code_Niveau` int(11) NOT NULL,
  `Libelle_Niveau` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Note_etudiant`
--

CREATE TABLE IF NOT EXISTS `Note_etudiant` (
  `Code_Mention` int(11) NOT NULL,
  `Code_Niveau` int(11) NOT NULL,
  `Annee_Academique, 10` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Code_Semestre` int(11) NOT NULL,
  `Matiere_code, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Code_etudiant, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Vacation_Code` int(11) NOT NULL,
  `Intra` bigint(20) DEFAULT NULL,
  `Finale` bigint(20) DEFAULT NULL,
  `Note_finale` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `code_patient` varchar(45) DEFAULT NULL,
  `sexe` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `maladie` longtext,
  `commentaires` longtext,
  `email` varchar(45) DEFAULT NULL,
  `date_rendezvous` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'jean mike Luigi', 'je me demande si je ne peux pas mettre n''importe quoi.', '2017-05-24 08:48:35', '2017-05-24 08:48:35'),
(2, 'test-0', 'contenue 0', '2017-05-24 08:48:36', '2017-05-24 08:48:36'),
(3, 'test-1', 'contenue 1', '2017-05-24 08:48:36', '2017-05-24 08:48:36'),
(4, 'test-2', 'contenue 2', '2017-05-24 08:48:36', '2017-05-24 08:48:36'),
(5, 'test-3', 'contenue 3', '2017-05-24 08:48:36', '2017-05-24 08:48:36'),
(6, 'test-4', 'contenue 4', '2017-05-24 08:48:36', '2017-05-24 08:48:36'),
(7, 'test-5', 'contenue 5', '2017-05-24 08:48:36', '2017-05-24 08:48:36'),
(8, 'test-6', 'contenue 6', '2017-05-24 08:48:36', '2017-05-24 08:48:36'),
(9, 'test-7', 'contenue 7', '2017-05-24 08:48:36', '2017-05-24 08:48:36'),
(10, 'test-8', 'contenue 8', '2017-05-24 08:48:36', '2017-05-24 08:48:36'),
(11, 'test-9', 'contenue 9', '2017-05-24 08:48:36', '2017-05-24 08:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `Semestre`
--

CREATE TABLE IF NOT EXISTS `Semestre` (
  `Code_Semestre` int(11) NOT NULL,
  `Semestre_Libelle` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Vacation`
--

CREATE TABLE IF NOT EXISTS `Vacation` (
  `Vacation_Code` int(11) NOT NULL,
  `Vacation_Libelle, 50` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- Indexes for table `agent_medicales`
--
ALTER TABLE `agent_medicales`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- Indexes for table `Annee_academique`
--
ALTER TABLE `Annee_academique`
 ADD PRIMARY KEY (`Annee_Academique, 10`);

--
-- Indexes for table `Domaine`
--
ALTER TABLE `Domaine`
 ADD PRIMARY KEY (`Code_Domaine`);

--
-- Indexes for table `Etudiant`
--
ALTER TABLE `Etudiant`
 ADD PRIMARY KEY (`Code_Etudiant, 50`);

--
-- Indexes for table `Matiere`
--
ALTER TABLE `Matiere`
 ADD PRIMARY KEY (`Matiere_code, 50`);

--
-- Indexes for table `Mention`
--
ALTER TABLE `Mention`
 ADD PRIMARY KEY (`Code_Mention`), ADD KEY `mention_code_domaine_foreign` (`Code_Domaine`);

--
-- Indexes for table `Mention_Niveau`
--
ALTER TABLE `Mention_Niveau`
 ADD KEY `mention_niveau_code_mention_foreign` (`Code_Mention`), ADD KEY `mention_niveau_code_niveau_foreign` (`Code_Niveau`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Niveau`
--
ALTER TABLE `Niveau`
 ADD PRIMARY KEY (`Code_Niveau`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `code_patient_UNIQUE` (`code_patient`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Semestre`
--
ALTER TABLE `Semestre`
 ADD PRIMARY KEY (`Code_Semestre`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `Vacation`
--
ALTER TABLE `Vacation`
 ADD PRIMARY KEY (`Vacation_Code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Mention`
--
ALTER TABLE `Mention`
ADD CONSTRAINT `mention_code_domaine_foreign` FOREIGN KEY (`Code_Domaine`) REFERENCES `Domaine` (`Code_Domaine`);

--
-- Constraints for table `Mention_Niveau`
--
ALTER TABLE `Mention_Niveau`
ADD CONSTRAINT `mention_niveau_code_mention_foreign` FOREIGN KEY (`Code_Mention`) REFERENCES `Mention` (`Code_Mention`),
ADD CONSTRAINT `mention_niveau_code_niveau_foreign` FOREIGN KEY (`Code_Niveau`) REFERENCES `Niveau` (`Code_Niveau`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
