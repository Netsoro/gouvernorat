-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 01 oct. 2018 à 08:58
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gouvernorat`
--

-- --------------------------------------------------------

--
-- Structure de la table `dwh_code_postal`
--

CREATE TABLE `dwh_code_postal` (
  `POSTAL_ID` bigint(10) NOT NULL,
  `CODE` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dwh_code_postal`
--

INSERT INTO `dwh_code_postal` (`POSTAL_ID`, `CODE`) VALUES
(1, 2020),
(2, 2022),
(3, 2032),
(4, 2036),
(5, 2040);

-- --------------------------------------------------------

--
-- Structure de la table `dwh_delegation`
--

CREATE TABLE `dwh_delegation` (
  `DELEG_ID` bigint(10) NOT NULL,
  `NOM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dwh_delegation`
--

INSERT INTO `dwh_delegation` (`DELEG_ID`, `NOM`) VALUES
(1, 'Sidi TH'),
(2, 'kalat'),
(3, 'La soukra'),
(4, 'Ariana Ville');

-- --------------------------------------------------------

--
-- Structure de la table `dwh_fact_table`
--

CREATE TABLE `dwh_fact_table` (
  `WID` bigint(10) NOT NULL,
  `GOUV_ID` bigint(10) DEFAULT NULL,
  `DELEG_ID` bigint(10) DEFAULT NULL,
  `LOCA_ID` bigint(10) DEFAULT NULL,
  `POSTAL_ID` bigint(10) DEFAULT NULL,
  `MESURE` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dwh_fact_table`
--

INSERT INTO `dwh_fact_table` (`WID`, `GOUV_ID`, `DELEG_ID`, `LOCA_ID`, `POSTAL_ID`, `MESURE`) VALUES
(1, 1, 1, 1, 1, '10.00'),
(2, 1, 1, 1, 1, '10.00'),
(3, 1, 1, 2, 1, '10.00'),
(4, 1, 1, 3, 1, '10.00'),
(5, 1, 1, 4, 1, '10.00'),
(6, 1, 1, 5, 1, '20.00'),
(7, 1, 1, 6, 1, '20.00'),
(8, 1, 1, 6, 1, '20.00'),
(9, 1, 2, 7, 2, '20.00'),
(10, 1, 2, 7, 2, '20.00'),
(11, 1, 2, 7, 2, '20.00'),
(12, 1, 2, 7, 2, '20.00'),
(13, 1, 2, 7, 2, '20.00'),
(14, 1, 2, 7, 2, '20.00'),
(15, 1, 1, 8, 3, '20.00'),
(16, 1, 1, 8, 3, '20.00'),
(17, 1, 1, 8, 3, '30.00'),
(18, 1, 1, 8, 3, '30.00'),
(19, 1, 1, 8, 3, '30.00'),
(20, 1, 3, 9, 4, '30.00'),
(21, 1, 3, 9, 4, '30.00'),
(22, 1, 4, 10, 5, '30.00'),
(23, 1, 4, 11, 5, '30.00'),
(24, 1, 4, 12, 5, '30.00'),
(25, 1, 4, 13, 5, '30.00'),
(26, 2, 4, 14, 5, '40.00'),
(27, 3, 4, 15, 5, '40.00'),
(28, 4, 4, 16, 5, '40.00');

-- --------------------------------------------------------

--
-- Structure de la table `dwh_gouvernorat`
--

CREATE TABLE `dwh_gouvernorat` (
  `GOUV_ID` bigint(10) NOT NULL,
  `NOM` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dwh_gouvernorat`
--

INSERT INTO `dwh_gouvernorat` (`GOUV_ID`, `NOM`) VALUES
(1, 'Ariana'),
(2, 'BENA'),
(3, 'CENA'),
(4, 'HOLA');

-- --------------------------------------------------------

--
-- Structure de la table `dwh_localite`
--

CREATE TABLE `dwh_localite` (
  `LOCA_ID` bigint(10) NOT NULL,
  `NOM` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dwh_localite`
--

INSERT INTO `dwh_localite` (`LOCA_ID`, `NOM`) VALUES
(1, 'BE 1'),
(2, 'BE3'),
(3, 'BE4'),
(4, 'BE45'),
(5, 'ONE4'),
(6, 'BE'),
(7, 'CITE ORAGE'),
(8, 'CITE MANGUE'),
(9, 'TOMATE'),
(10, 'ZONE 1'),
(11, 'ZONE 2'),
(12, 'ZONE 3'),
(13, 'ZONE 4'),
(14, 'ZONE 5'),
(15, 'ZONE 6'),
(16, 'ZONE 7');

-- --------------------------------------------------------

--
-- Structure de la table `ods_gouve`
--

CREATE TABLE `ods_gouve` (
  `GOUVERNORAT` varchar(6) DEFAULT NULL,
  `DELEGATION` varchar(12) DEFAULT NULL,
  `LOCALITE` varchar(11) DEFAULT NULL,
  `CODE_POSTAL` int(4) DEFAULT NULL,
  `MESURE` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ods_gouve`
--

INSERT INTO `ods_gouve` (`GOUVERNORAT`, `DELEGATION`, `LOCALITE`, `CODE_POSTAL`, `MESURE`) VALUES
('Ariana', 'Sidi TH', 'BE 1', 2020, 10),
('Ariana', 'Sidi TH', 'BE 1', 2020, 10),
('Ariana', 'Sidi TH', 'BE3', 2020, 10),
('Ariana', 'Sidi TH', 'BE4', 2020, 10),
('Ariana', 'Sidi TH', 'BE45', 2020, 10),
('Ariana', 'Sidi TH', 'ONE4', 2020, 20),
('Ariana', 'Sidi TH', 'BE', 2020, 20),
('Ariana', 'Sidi TH', 'BE', 2020, 20),
('Ariana', 'kalat', 'CITE ORAGE', 2022, 20),
('Ariana', 'kalat', 'CITE ORAGE', 2022, 20),
('Ariana', 'kalat', 'CITE ORAGE', 2022, 20),
('Ariana', 'kalat', 'CITE ORAGE', 2022, 20),
('Ariana', 'kalat', 'CITE ORAGE', 2022, 20),
('Ariana', 'kalat', 'CITE ORAGE', 2022, 20),
('Ariana', 'Sidi TH', 'CITE MANGUE', 2032, 20),
('Ariana', 'Sidi TH', 'CITE MANGUE', 2032, 20),
('Ariana', 'Sidi TH', 'CITE MANGUE', 2032, 30),
('Ariana', 'Sidi TH', 'CITE MANGUE', 2032, 30),
('Ariana', 'Sidi TH', 'CITE MANGUE', 2032, 30),
('Ariana', 'La soukra', 'TOMATE', 2036, 30),
('Ariana', 'La soukra', 'TOMATE', 2036, 30),
('Ariana', 'Ariana Ville', 'ZONE 1', 2040, 30),
('Ariana', 'Ariana Ville', 'ZONE 2', 2040, 30),
('Ariana', 'Ariana Ville', 'ZONE 3', 2040, 30),
('Ariana', 'Ariana Ville', 'ZONE 4', 2040, 30),
('BENA', 'Ariana Ville', 'ZONE 5', 2040, 40),
('CENA', 'Ariana Ville', 'ZONE 6', 2040, 40),
('HOLA', 'Ariana Ville', 'ZONE 7', 2040, 40);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dwh_code_postal`
--
ALTER TABLE `dwh_code_postal`
  ADD PRIMARY KEY (`POSTAL_ID`);

--
-- Index pour la table `dwh_delegation`
--
ALTER TABLE `dwh_delegation`
  ADD PRIMARY KEY (`DELEG_ID`);

--
-- Index pour la table `dwh_fact_table`
--
ALTER TABLE `dwh_fact_table`
  ADD PRIMARY KEY (`WID`);

--
-- Index pour la table `dwh_gouvernorat`
--
ALTER TABLE `dwh_gouvernorat`
  ADD PRIMARY KEY (`GOUV_ID`);

--
-- Index pour la table `dwh_localite`
--
ALTER TABLE `dwh_localite`
  ADD PRIMARY KEY (`LOCA_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `dwh_code_postal`
--
ALTER TABLE `dwh_code_postal`
  MODIFY `POSTAL_ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `dwh_delegation`
--
ALTER TABLE `dwh_delegation`
  MODIFY `DELEG_ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `dwh_fact_table`
--
ALTER TABLE `dwh_fact_table`
  MODIFY `WID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `dwh_gouvernorat`
--
ALTER TABLE `dwh_gouvernorat`
  MODIFY `GOUV_ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `dwh_localite`
--
ALTER TABLE `dwh_localite`
  MODIFY `LOCA_ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
