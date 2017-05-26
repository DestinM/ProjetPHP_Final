-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 26, 2017 at 02:59 AM
-- Server version: 5.5.43-0+deb8u1
-- PHP Version: 5.6.7-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hospital`
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
