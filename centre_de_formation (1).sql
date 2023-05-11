-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 09 mai 2023 à 12:21
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `centre_de_formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenant`
--

CREATE TABLE `apprenant` (
  `id_apprenant` int(11) NOT NULL,
  `Firstname` varchar(150) NOT NULL,
  `Lastname` varchar(150) NOT NULL,
  `Adresse` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `apprenant`
--

INSERT INTO `apprenant` (`id_apprenant`, `Firstname`, `Lastname`, `Adresse`, `Email`) VALUES
(1, 'hamdi ', 'ahmad', 'morocco settat', 'hamdi123@gmail.com'),
(2, 'miu ', 'amine', 'morocco agadir', 'amine123@gmail.com'),
(3, 'madi', 'sami', 'morocco tanger', 'sami123@gmail.com'),
(4, 'hamdi', 'mohammed', 'morocco eljadida', 'mohammed123@gmail.com'),
(5, 'bichri', 'yassine', 'morocco', 'safi'),
(6, 'sani', 'zakaria', 'morocco kenitra', 'zakaria123@gmail.com'),
(7, 'mita', 'meryam', 'taza', 'meryam123@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `formateur`
--

CREATE TABLE `formateur` (
  `Nom` varchar(150) NOT NULL,
  `Prenom` varchar(150) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Competences` varchar(200) NOT NULL,
  `id_formateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formateur`
--

INSERT INTO `formateur` (`Nom`, `Prenom`, `Email`, `Competences`, `id_formateur`) VALUES
('bouich', 'fatimaezzahra', 'fatima.zahra@gmail.com', 'Informatique et Technologie', 1),
('bouik', 'hussein', 'bouik.hussein@gmail.com', 'Management et Leadership', 2),
('elghali', 'ikram', 'elghali.ikram@gmail.com', 'Finance et Comptabilité', 3),
('daifane', 'yassmine', 'yassmine.yass@gmail.com', 'Marketing et Communication', 4),
('boui', 'khadija', 'boui.khadija@gmail.com', 'Développement personnel', 5),
('jabrane', 'yassin', 'yassin.jabran@gmail.com', 'Développement personnel', 6),
('elhail', 'imane', 'elhail.imane@gmail.com', 'Management et Leadership\r\n', 7);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id_formation` int(11) NOT NULL,
  `Sujet` varchar(255) NOT NULL,
  `Catégorie` varchar(255) NOT NULL,
  `masse_horaire` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id_formation`, `Sujet`, `Catégorie`, `masse_horaire`) VALUES
(1, 'Marketing digital pour les petites entreprises', 'Marketing et Communication', '20'),
(2, 'Développement Web Full-Stack', 'Informatique et Technologie', '20'),
(3, 'Sécurité informatique\r\n', 'Informatique et Technologie', '30'),
(4, 'Programmation en Python\r\n', 'Informatique et Technologie\r\n', '10'),
(5, 'Gestion de projet', 'Management et Leadership\r\n', '30'),
(6, 'Leadership et communication', 'Management et Leadership', '10'),
(7, 'Gestion des ressources humaines', 'Management et Leadership', '20'),
(8, 'Analyse financière et évaluation d\'entreprises', 'Finance et Comptabilité', '10'),
(9, 'Gestion de trésorerie et prévisions financières', 'Finance et Comptabilité', '20'),
(10, 'Fiscalité et planification fiscale\r\n', 'Finance et Comptabilité', '15'),
(11, 'Marketing des médias sociaux\r\n', 'Marketing et Communication', '30'),
(12, 'Marketing de contenu et rédaction web', 'Marketing et Communication', '40'),
(13, 'Gestion du temps et organisation', 'Développement personnel\r\n', '30'),
(14, 'Prise de parole en public et communication efficace', 'Développement personnel', '10'),
(15, 'Mindfulness et gestion du stress', 'Développement personnel', '50'),
(16, 'Créativité et résolution de problèmes\r\n', 'Développement personnel', '30'),
(21, 'MySql', 'Databases', '60'),
(26, 'Algorithmes', 'Computer Science', '70'),
(27, 'digital logic', 'Computer Science', '10');

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id_session` int(11) NOT NULL,
  `date_de_début` date NOT NULL,
  `date_de_fin` date NOT NULL,
  `nombre_places_max` int(11) NOT NULL,
  `état` varchar(255) NOT NULL,
  `id_formateur` int(11) NOT NULL,
  `id_formation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id_session`, `date_de_début`, `date_de_fin`, `nombre_places_max`, `état`, `id_formateur`, `id_formation`) VALUES
(1, '2023-04-17', '2023-06-17', 20, 'en cours d\'inscription', 5, 8),
(9, '2023-02-17', '2023-04-17', 15, 'cloturée', 1, 7),
(10, '2023-05-20', '2023-06-20', 20, 'inscription achevée', 2, 1),
(11, '2023-08-10', '2023-09-10', 12, 'en cours', 2, 4),
(12, '2023-04-17', '2023-06-17', 20, 'en cours d\'inscription', 3, 14),
(13, '2023-09-10', '2023-10-10', 12, 'en cours d\'inscription', 3, 16),
(14, '2023-12-12', '2024-02-12', 40, 'en cours d\'inscription', 3, 15),
(15, '2023-08-10', '2023-09-10', 20, 'en cours d\'inscription', 6, 21);

-- --------------------------------------------------------

--
-- Structure de la table `sinscrire`
--

CREATE TABLE `sinscrire` (
  `Evaluation` varchar(100) NOT NULL,
  `id_session` int(11) NOT NULL,
  `id_apprenant` int(11) NOT NULL,
  `nb_inscrits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sinscrire`
--

INSERT INTO `sinscrire` (`Evaluation`, `id_session`, `id_apprenant`, `nb_inscrits`) VALUES
('Validée', 1, 2, 10),
('Validée', 1, 1, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id_apprenant`);

--
-- Index pour la table `formateur`
--
ALTER TABLE `formateur`
  ADD PRIMARY KEY (`id_formateur`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_formation`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`),
  ADD KEY `id_formateur` (`id_formateur`),
  ADD KEY `id_formation` (`id_formation`);

--
-- Index pour la table `sinscrire`
--
ALTER TABLE `sinscrire`
  ADD KEY `id_apprenant` (`id_apprenant`),
  ADD KEY `id_session` (`id_session`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `apprenant`
--
ALTER TABLE `apprenant`
  MODIFY `id_apprenant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `formateur`
--
ALTER TABLE `formateur`
  MODIFY `id_formateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_formation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `id_formateur` FOREIGN KEY (`id_formateur`) REFERENCES `formateur` (`id_formateur`),
  ADD CONSTRAINT `id_formation` FOREIGN KEY (`id_formation`) REFERENCES `formation` (`id_formation`);

--
-- Contraintes pour la table `sinscrire`
--
ALTER TABLE `sinscrire`
  ADD CONSTRAINT `id_apprenant` FOREIGN KEY (`id_apprenant`) REFERENCES `apprenant` (`id_apprenant`),
  ADD CONSTRAINT `id_session` FOREIGN KEY (`id_session`) REFERENCES `session` (`id_session`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
