-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 01 déc. 2019 à 14:35
-- Version du serveur :  5.6.38-1~dotdeb+7.1
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wlwks0_info304`
--

-- --------------------------------------------------------

--
-- Structure de la table `Accident`
--

CREATE TABLE `Accident` (
  `id_accident` bigint(20) NOT NULL,
  `date_accident` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nb_morts` bigint(20) DEFAULT NULL,
  `nb_bless` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Accident`
--

INSERT INTO `Accident` (`id_accident`, `date_accident`, `nb_morts`, `nb_bless`) VALUES
(1, '2019-10-21 05:00:20', 0, 50),
(2, '2019-12-01 16:00:26', 56, 158);

-- --------------------------------------------------------

--
-- Structure de la table `Adresse`
--

CREATE TABLE `Adresse` (
  `id_adresse` bigint(20) NOT NULL,
  `numero_adresse` varchar(10) DEFAULT NULL,
  `voierie` varchar(50) DEFAULT NULL,
  `id_ville` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Adresse`
--

INSERT INTO `Adresse` (`id_adresse`, `numero_adresse`, `voierie`, `id_ville`) VALUES
(1, '17', 'Place de l\'Esplanade', 1),
(2, '1', 'Pont du Port', 1),
(3, '66', 'Port Street', 2);

-- --------------------------------------------------------

--
-- Structure de la table `A_passé`
--

CREATE TABLE `A_passé` (
  `id_utilisateur` bigint(20) NOT NULL DEFAULT '0',
  `id_permis` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `A_passé`
--

INSERT INTO `A_passé` (`id_utilisateur`, `id_permis`) VALUES
(3, 2),
(1, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `Bateau`
--

CREATE TABLE `Bateau` (
  `id_bateau` bigint(20) NOT NULL,
  `nom_bateau` varchar(32) DEFAULT NULL,
  `nb_mat` bigint(20) DEFAULT NULL,
  `surface_voilure` float DEFAULT NULL,
  `dimension_x_bateau` float DEFAULT NULL,
  `dimension_y_bateau` float DEFAULT NULL,
  `ancienne_cat` varchar(1) DEFAULT NULL,
  `distance_eloignement` bigint(20) DEFAULT NULL,
  `volume_coque` float DEFAULT NULL,
  `force_vent_max` float DEFAULT NULL,
  `hauteur_max_vagues` float DEFAULT NULL,
  `dimension_z_bateau` float DEFAULT NULL,
  `consommation` float DEFAULT NULL,
  `niveau_reserve` float DEFAULT NULL,
  `nb_places` bigint(20) DEFAULT NULL,
  `date_construction` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `auto_videur` tinyint(1) DEFAULT NULL,
  `niveau_carburant_max` float DEFAULT NULL,
  `niveau_performance` float DEFAULT NULL,
  `jauge_brut` float DEFAULT NULL,
  `masse_navire` float DEFAULT NULL,
  `hors_bord` tinyint(1) DEFAULT NULL,
  `francise` tinyint(1) DEFAULT NULL,
  `niveau_huile` float DEFAULT NULL,
  `niveau_liquide_refroidissement` float DEFAULT NULL,
  `url_photo` varchar(200) DEFAULT NULL,
  `immatriculation_id_immatr` varchar(25) DEFAULT NULL,
  `moteur_id_moteur` bigint(20) DEFAULT NULL,
  `port_id_port` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Bateau`
--

INSERT INTO `Bateau` (`id_bateau`, `nom_bateau`, `nb_mat`, `surface_voilure`, `dimension_x_bateau`, `dimension_y_bateau`, `ancienne_cat`, `distance_eloignement`, `volume_coque`, `force_vent_max`, `hauteur_max_vagues`, `dimension_z_bateau`, `consommation`, `niveau_reserve`, `nb_places`, `date_construction`, `auto_videur`, `niveau_carburant_max`, `niveau_performance`, `jauge_brut`, `masse_navire`, `hors_bord`, `francise`, `niveau_huile`, `niveau_liquide_refroidissement`, `url_photo`, `immatriculation_id_immatr`, `moteur_id_moteur`, `port_id_port`) VALUES
(1, 'L\'Indescriptible', 0, 0, 20, 20, 'C', 125, 10, 20, 20, 50, 36, 1000, 100, '2019-12-01 13:06:20', 0, 1000, 500, 500, 10000, 0, 1, 100, 100, 'ohmonbatooo.org/boats/1.png', 'AA-FE-481', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `comporte`
--

CREATE TABLE `comporte` (
  `id_bateau` bigint(20) NOT NULL DEFAULT '0',
  `id_equipement` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comporte`
--

INSERT INTO `comporte` (`id_bateau`, `id_equipement`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `concerne`
--

CREATE TABLE `concerne` (
  `id_equipement` bigint(20) NOT NULL DEFAULT '0',
  `id_piece` bigint(20) NOT NULL DEFAULT '0',
  `id_entretien` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `concerne`
--

INSERT INTO `concerne` (`id_equipement`, `id_piece`, `id_entretien`) VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `id_bateau` bigint(20) NOT NULL DEFAULT '0',
  `id_piece` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`id_bateau`, `id_piece`) VALUES
(1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `Entretien`
--

CREATE TABLE `Entretien` (
  `id_entretien` bigint(20) NOT NULL,
  `date_entretien` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Entretien`
--

INSERT INTO `Entretien` (`id_entretien`, `date_entretien`) VALUES
(1, '2019-10-20 22:00:00'),
(2, '2019-08-11 22:00:00'),
(3, '2019-07-21 22:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `Equipement`
--

CREATE TABLE `Equipement` (
  `id_equipement` bigint(20) NOT NULL,
  `revision_periodique_equip` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `duree_vie_equip` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `equip_origine` tinyint(1) DEFAULT NULL,
  `q_equip_rechange` bigint(20) DEFAULT NULL,
  `quantite_equip` bigint(20) DEFAULT NULL,
  `id_type_equipement` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Equipement`
--

INSERT INTO `Equipement` (`id_equipement`, `revision_periodique_equip`, `duree_vie_equip`, `equip_origine`, `q_equip_rechange`, `quantite_equip`, `id_type_equipement`) VALUES
(1, '2019-11-30 23:00:00', '2019-11-30 23:00:00', 1, 2, 2, 3),
(2, '2019-12-01 13:26:14', '0000-00-00 00:00:00', 0, 0, 1, 4),
(3, '2019-12-01 13:31:00', '0000-00-00 00:00:00', 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `est_composé`
--

CREATE TABLE `est_composé` (
  `id_equipement` bigint(20) NOT NULL DEFAULT '0',
  `id_piece` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `est_composé`
--

INSERT INTO `est_composé` (`id_equipement`, `id_piece`) VALUES
(2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `est_dans`
--

CREATE TABLE `est_dans` (
  `id_equipement` bigint(20) NOT NULL DEFAULT '0',
  `id_piece` bigint(20) NOT NULL DEFAULT '0',
  `id_etat` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `est_dans`
--

INSERT INTO `est_dans` (`id_equipement`, `id_piece`, `id_etat`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `est_impliqué`
--

CREATE TABLE `est_impliqué` (
  `id_bateau` bigint(20) NOT NULL DEFAULT '0',
  `id_accident` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `est_impliqué`
--

INSERT INTO `est_impliqué` (`id_bateau`, `id_accident`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `est_localisé`
--

CREATE TABLE `est_localisé` (
  `id_fourni` bigint(20) NOT NULL DEFAULT '0',
  `id_adresse` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `est_localisé`
--

INSERT INTO `est_localisé` (`id_fourni`, `id_adresse`) VALUES
(2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `est_renseigné_sous`
--

CREATE TABLE `est_renseigné_sous` (
  `id_equipement` bigint(20) NOT NULL DEFAULT '0',
  `id_piece` bigint(20) NOT NULL DEFAULT '0',
  `id_bateau` bigint(20) NOT NULL DEFAULT '0',
  `id_modele` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `est_renseigné_sous`
--

INSERT INTO `est_renseigné_sous` (`id_equipement`, `id_piece`, `id_bateau`, `id_modele`) VALUES
(1, 2, 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Etat`
--

CREATE TABLE `Etat` (
  `id_etat` bigint(20) NOT NULL,
  `desc_etat` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Etat`
--

INSERT INTO `Etat` (`id_etat`, `desc_etat`) VALUES
(1, 'Sale état'),
(2, 'Bon état'),
(3, 'En état de marche, mais tout juste'),
(4, 'Feux out'),
(5, 'Ne flotte pas'),
(6, 'N\'a plus de voile');

-- --------------------------------------------------------

--
-- Structure de la table `Fournisseur`
--

CREATE TABLE `Fournisseur` (
  `id_fourni` bigint(20) NOT NULL,
  `nom_fourni` varchar(50) DEFAULT NULL,
  `tel_fourni` varchar(32) DEFAULT NULL,
  `mail_fourni` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Fournisseur`
--

INSERT INTO `Fournisseur` (`id_fourni`, `nom_fourni`, `tel_fourni`, `mail_fourni`) VALUES
(1, 'Batop Pièces', '0250455522', 'contact@batoppiece.com'),
(2, 'AccastiBato', '0669696869', 'mail@accasti.com');

-- --------------------------------------------------------

--
-- Structure de la table `fournit`
--

CREATE TABLE `fournit` (
  `id_fourni` bigint(20) NOT NULL DEFAULT '0',
  `id_equipement` bigint(20) NOT NULL DEFAULT '0',
  `id_piece` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournit`
--

INSERT INTO `fournit` (`id_fourni`, `id_equipement`, `id_piece`) VALUES
(2, 1, 3),
(1, 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Immatriculation`
--

CREATE TABLE `Immatriculation` (
  `id_immatr` varchar(100) NOT NULL,
  `date_immatr` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bateau_id_bateau` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Immatriculation`
--

INSERT INTO `Immatriculation` (`id_immatr`, `date_immatr`, `bateau_id_bateau`) VALUES
('AA-FE-481', '2019-10-15 10:50:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `Marque`
--

CREATE TABLE `Marque` (
  `id_marque` bigint(20) NOT NULL,
  `nom_marque` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Marque`
--

INSERT INTO `Marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Honda'),
(2, 'Bosch'),
(3, 'Sierra'),
(4, 'Mercury');

-- --------------------------------------------------------

--
-- Structure de la table `Modele`
--

CREATE TABLE `Modele` (
  `id_modele` bigint(20) NOT NULL,
  `nom_modele` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Modele`
--

INSERT INTO `Modele` (`id_modele`, `nom_modele`) VALUES
(1, 'MDT-51225'),
(2, 'UI_.6'),
(3, 'Voyage X2'),
(4, 'MPO');

-- --------------------------------------------------------

--
-- Structure de la table `Moteur`
--

CREATE TABLE `Moteur` (
  `id_moteur` bigint(20) NOT NULL,
  `puissance_moteur` float DEFAULT NULL,
  `kilometrage` float NOT NULL,
  `horametre_compte` float DEFAULT NULL,
  `id_equipement` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Moteur`
--

INSERT INTO `Moteur` (`id_moteur`, `puissance_moteur`, `kilometrage`, `horametre_compte`, `id_equipement`) VALUES
(1, 20, 2000, 12504, 3);

-- --------------------------------------------------------

--
-- Structure de la table `Necessite`
--

CREATE TABLE `Necessite` (
  `id_bateau` bigint(20) NOT NULL DEFAULT '0',
  `id_permis` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Necessite`
--

INSERT INTO `Necessite` (`id_bateau`, `id_permis`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `participe`
--

CREATE TABLE `participe` (
  `id_utilisateur` bigint(20) NOT NULL DEFAULT '0',
  `id_voyage` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `participe`
--

INSERT INTO `participe` (`id_utilisateur`, `id_voyage`) VALUES
(3, 1),
(1, 2),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Pays`
--

CREATE TABLE `Pays` (
  `id_pays` bigint(20) NOT NULL,
  `planete` varchar(32) DEFAULT NULL,
  `nom_pays` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Pays`
--

INSERT INTO `Pays` (`id_pays`, `planete`, `nom_pays`) VALUES
(1, 'Terre', 'France'),
(2, 'Terre', 'Angleterre'),
(3, 'Mars', 'IUX-B 3');

-- --------------------------------------------------------

--
-- Structure de la table `Permis`
--

CREATE TABLE `Permis` (
  `id_permis` bigint(20) NOT NULL,
  `nom_permis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Permis`
--

INSERT INTO `Permis` (`id_permis`, `nom_permis`) VALUES
(1, 'C'),
(2, 'Bateau lourds'),
(3, 'Permis bateau de plaisance option côtière'),
(4, 'BATEAU/JET-SKI');

-- --------------------------------------------------------

--
-- Structure de la table `Piece`
--

CREATE TABLE `Piece` (
  `id_piece` bigint(20) NOT NULL,
  `revisions_periodiques_piece` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `duree_vie_piece` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `quantite_piece` bigint(20) DEFAULT NULL,
  `piece_origine` tinyint(1) DEFAULT NULL,
  `q_piece_rechange` bigint(20) DEFAULT NULL,
  `id_type_piece` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Piece`
--

INSERT INTO `Piece` (`id_piece`, `revisions_periodiques_piece`, `duree_vie_piece`, `quantite_piece`, `piece_origine`, `q_piece_rechange`, `id_type_piece`) VALUES
(1, '2019-12-01 13:27:58', '0000-00-00 00:00:00', 1, 1, 1, 57),
(2, '2019-12-01 13:28:07', '0000-00-00 00:00:00', 1, 1, 1, 58),
(3, '2019-12-01 13:29:24', '0000-00-00 00:00:00', 2, 1, 1, 52),
(4, '2019-12-01 13:29:33', '0000-00-00 00:00:00', 2, 1, 1, 54),
(5, '2019-12-01 13:29:39', '0000-00-00 00:00:00', 1, 1, 1, 50);

-- --------------------------------------------------------

--
-- Structure de la table `Port`
--

CREATE TABLE `Port` (
  `id_port` bigint(20) NOT NULL,
  `latt_port` float DEFAULT NULL,
  `long_port` float DEFAULT NULL,
  `id_adresse` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Port`
--

INSERT INTO `Port` (`id_port`, `latt_port`, `long_port`, `id_adresse`) VALUES
(1, 210, 102, 2),
(2, 32, 35, 3),
(3, 56, 45, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Possède`
--

CREATE TABLE `Possède` (
  `id_utilisateur` bigint(20) NOT NULL DEFAULT '0',
  `id_bateau` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Possède`
--

INSERT INTO `Possède` (`id_utilisateur`, `id_bateau`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit_par`
--

CREATE TABLE `produit_par` (
  `id_modele` bigint(20) NOT NULL DEFAULT '0',
  `id_marque` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit_par`
--

INSERT INTO `produit_par` (`id_modele`, `id_marque`) VALUES
(3, 1),
(4, 1),
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `reçoit`
--

CREATE TABLE `reçoit` (
  `id_bateau` bigint(20) NOT NULL DEFAULT '0',
  `id_entretien` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reçoit`
--

INSERT INTO `reçoit` (`id_bateau`, `id_entretien`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Type_Equipement`
--

CREATE TABLE `Type_Equipement` (
  `id_type_equipement` bigint(20) NOT NULL,
  `nom_type_equipement` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Type_Equipement`
--

INSERT INTO `Type_Equipement` (`id_type_equipement`, `nom_type_equipement`) VALUES
(2, 'Moteur à explosion'),
(3, 'Radeau de survie'),
(4, 'Tableau de Bord');

-- --------------------------------------------------------

--
-- Structure de la table `Type_piece`
--

CREATE TABLE `Type_piece` (
  `id_type_piece` bigint(20) NOT NULL,
  `nom_type_piece` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Type_piece`
--

INSERT INTO `Type_piece` (`id_type_piece`, `nom_type_piece`) VALUES
(1, 'ancre'),
(49, 'barre'),
(50, 'anode'),
(51, 'lubrifiant'),
(52, 'cable alimentation'),
(53, 'injection'),
(54, 'injection (moteur)'),
(55, 'hélice'),
(56, 'Voyants (Tableau de Bord'),
(57, 'Circuits éléctroniques (Tableau de Bord)'),
(58, 'Fusibles (Tableau de bord)');

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `id_utilisateur` bigint(20) NOT NULL,
  `login` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `type_utilisateur` bigint(20) DEFAULT NULL,
  `nom_utilisateur` varchar(50) DEFAULT NULL,
  `prenom_utilisateur` varchar(50) DEFAULT NULL,
  `tel_utilisateur` varchar(50) NOT NULL,
  `mail_utilisateur` varchar(200) DEFAULT NULL,
  `id_adresse` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Utilisateur`
--

INSERT INTO `Utilisateur` (`id_utilisateur`, `login`, `password`, `type_utilisateur`, `nom_utilisateur`, `prenom_utilisateur`, `tel_utilisateur`, `mail_utilisateur`, `id_adresse`) VALUES
(1, 'SuperUser', 'motdepassesecurise', 1, 'Bernard', 'Pierre', '0651322528', 'bernard.pierre@ohmonbatoooo.org', 2),
(2, 'Marise012', 'marise012mdp', 2, 'Dutronc', 'Marise', '0356585921', 'marise.dutronc@ohmonbatoooo.org', 1),
(3, 'lordsmith01', '0123456789', 3, 'Lord Smith', 'Jack Jr.', '0125252628', 'lordsmithjackjr@outlook.co.uk', 3);

-- --------------------------------------------------------

--
-- Structure de la table `utilise_couramment`
--

CREATE TABLE `utilise_couramment` (
  `id_utilisateur` bigint(20) NOT NULL DEFAULT '0',
  `id_bateau` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilise_couramment`
--

INSERT INTO `utilise_couramment` (`id_utilisateur`, `id_bateau`) VALUES
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Ville`
--

CREATE TABLE `Ville` (
  `id_ville` bigint(20) NOT NULL,
  `nom_ville` varchar(32) DEFAULT NULL,
  `code_postal` bigint(20) DEFAULT NULL,
  `id_pays` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Ville`
--

INSERT INTO `Ville` (`id_ville`, `nom_ville`, `code_postal`, `id_pays`) VALUES
(1, 'Brest', 29200, 1),
(2, 'Londres', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `Voyage`
--

CREATE TABLE `Voyage` (
  `id_voyage` bigint(20) NOT NULL,
  `d_voyage` float DEFAULT NULL,
  `participants_max` bigint(20) NOT NULL,
  `participants_min` bigint(20) NOT NULL,
  `date_depart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_retour` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cout_voyage` float DEFAULT NULL,
  `id_utilisateur` bigint(20) DEFAULT NULL,
  `id_port` bigint(20) DEFAULT NULL,
  `id_port_est_port_arrivé` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `Voyage`
--

INSERT INTO `Voyage` (`id_voyage`, `d_voyage`, `participants_max`, `participants_min`, `date_depart`, `date_retour`, `cout_voyage`, `id_utilisateur`, `id_port`, `id_port_est_port_arrivé`) VALUES
(1, 100, 100, 20, '2019-12-24 23:00:00', '2019-12-30 23:00:00', 2500, 3, 1, 3),
(2, 252, 10, 1, '2020-01-15 23:00:00', '2020-02-12 23:00:00', 102, 3, 3, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Accident`
--
ALTER TABLE `Accident`
  ADD PRIMARY KEY (`id_accident`);

--
-- Index pour la table `Adresse`
--
ALTER TABLE `Adresse`
  ADD PRIMARY KEY (`id_adresse`),
  ADD KEY `FK_Adresse_id_ville` (`id_ville`);

--
-- Index pour la table `A_passé`
--
ALTER TABLE `A_passé`
  ADD PRIMARY KEY (`id_utilisateur`,`id_permis`),
  ADD KEY `FK_A_passé_id_permis` (`id_permis`);

--
-- Index pour la table `Bateau`
--
ALTER TABLE `Bateau`
  ADD PRIMARY KEY (`id_bateau`),
  ADD KEY `FK_Bateau_immatriculation_id_immatr` (`immatriculation_id_immatr`),
  ADD KEY `FK_Bateau_moteur_id_moteur` (`moteur_id_moteur`),
  ADD KEY `FK_Bateau_port_id_port` (`port_id_port`);

--
-- Index pour la table `comporte`
--
ALTER TABLE `comporte`
  ADD PRIMARY KEY (`id_bateau`,`id_equipement`),
  ADD KEY `FK_comporte_id_equipement` (`id_equipement`);

--
-- Index pour la table `concerne`
--
ALTER TABLE `concerne`
  ADD PRIMARY KEY (`id_equipement`,`id_piece`,`id_entretien`),
  ADD KEY `FK_concerne_id_piece` (`id_piece`),
  ADD KEY `FK_concerne_id_entretien` (`id_entretien`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`id_bateau`,`id_piece`),
  ADD KEY `FK_contient_id_piece` (`id_piece`);

--
-- Index pour la table `Entretien`
--
ALTER TABLE `Entretien`
  ADD PRIMARY KEY (`id_entretien`);

--
-- Index pour la table `Equipement`
--
ALTER TABLE `Equipement`
  ADD PRIMARY KEY (`id_equipement`),
  ADD KEY `FK_Equipement_id_type_equipement` (`id_type_equipement`);

--
-- Index pour la table `est_composé`
--
ALTER TABLE `est_composé`
  ADD PRIMARY KEY (`id_equipement`,`id_piece`),
  ADD KEY `FK_est_composé_id_piece` (`id_piece`);

--
-- Index pour la table `est_dans`
--
ALTER TABLE `est_dans`
  ADD PRIMARY KEY (`id_equipement`,`id_piece`,`id_etat`),
  ADD KEY `FK_est_dans_id_piece` (`id_piece`),
  ADD KEY `FK_est_dans_id_etat` (`id_etat`);

--
-- Index pour la table `est_impliqué`
--
ALTER TABLE `est_impliqué`
  ADD PRIMARY KEY (`id_bateau`,`id_accident`),
  ADD KEY `FK_est_impliqué_id_accident` (`id_accident`);

--
-- Index pour la table `est_localisé`
--
ALTER TABLE `est_localisé`
  ADD PRIMARY KEY (`id_fourni`,`id_adresse`),
  ADD KEY `FK_est_localisé_id_adresse` (`id_adresse`);

--
-- Index pour la table `est_renseigné_sous`
--
ALTER TABLE `est_renseigné_sous`
  ADD PRIMARY KEY (`id_equipement`,`id_piece`,`id_bateau`,`id_modele`),
  ADD KEY `FK_est_renseigné_sous_id_piece` (`id_piece`),
  ADD KEY `FK_est_renseigné_sous_id_bateau` (`id_bateau`),
  ADD KEY `FK_est_renseigné_sous_id_modele` (`id_modele`);

--
-- Index pour la table `Etat`
--
ALTER TABLE `Etat`
  ADD PRIMARY KEY (`id_etat`);

--
-- Index pour la table `Fournisseur`
--
ALTER TABLE `Fournisseur`
  ADD PRIMARY KEY (`id_fourni`);

--
-- Index pour la table `fournit`
--
ALTER TABLE `fournit`
  ADD PRIMARY KEY (`id_fourni`,`id_equipement`,`id_piece`),
  ADD KEY `FK_fournit_id_equipement` (`id_equipement`),
  ADD KEY `FK_fournit_id_piece` (`id_piece`);

--
-- Index pour la table `Immatriculation`
--
ALTER TABLE `Immatriculation`
  ADD PRIMARY KEY (`id_immatr`),
  ADD KEY `FK_Immatriculation_bateau_id_bateau` (`bateau_id_bateau`);

--
-- Index pour la table `Marque`
--
ALTER TABLE `Marque`
  ADD PRIMARY KEY (`id_marque`);

--
-- Index pour la table `Modele`
--
ALTER TABLE `Modele`
  ADD PRIMARY KEY (`id_modele`);

--
-- Index pour la table `Moteur`
--
ALTER TABLE `Moteur`
  ADD PRIMARY KEY (`id_moteur`),
  ADD KEY `FK_Moteur_id_equipement` (`id_equipement`);

--
-- Index pour la table `Necessite`
--
ALTER TABLE `Necessite`
  ADD PRIMARY KEY (`id_bateau`,`id_permis`),
  ADD KEY `FK_Necessite_id_permis` (`id_permis`);

--
-- Index pour la table `participe`
--
ALTER TABLE `participe`
  ADD PRIMARY KEY (`id_utilisateur`,`id_voyage`),
  ADD KEY `FK_participe_id_voyage` (`id_voyage`);

--
-- Index pour la table `Pays`
--
ALTER TABLE `Pays`
  ADD PRIMARY KEY (`id_pays`);

--
-- Index pour la table `Permis`
--
ALTER TABLE `Permis`
  ADD PRIMARY KEY (`id_permis`);

--
-- Index pour la table `Piece`
--
ALTER TABLE `Piece`
  ADD PRIMARY KEY (`id_piece`),
  ADD KEY `FK_Piece_id_type_piece` (`id_type_piece`);

--
-- Index pour la table `Port`
--
ALTER TABLE `Port`
  ADD PRIMARY KEY (`id_port`),
  ADD KEY `FK_Port_id_adresse` (`id_adresse`);

--
-- Index pour la table `Possède`
--
ALTER TABLE `Possède`
  ADD PRIMARY KEY (`id_utilisateur`,`id_bateau`),
  ADD KEY `FK_Possède_id_bateau` (`id_bateau`);

--
-- Index pour la table `produit_par`
--
ALTER TABLE `produit_par`
  ADD PRIMARY KEY (`id_modele`,`id_marque`),
  ADD KEY `FK_produit_par_id_marque` (`id_marque`);

--
-- Index pour la table `reçoit`
--
ALTER TABLE `reçoit`
  ADD PRIMARY KEY (`id_bateau`,`id_entretien`),
  ADD KEY `FK_reçoit_id_entretien` (`id_entretien`);

--
-- Index pour la table `Type_Equipement`
--
ALTER TABLE `Type_Equipement`
  ADD PRIMARY KEY (`id_type_equipement`);

--
-- Index pour la table `Type_piece`
--
ALTER TABLE `Type_piece`
  ADD PRIMARY KEY (`id_type_piece`);

--
-- Index pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD KEY `FK_Utilisateur_id_adresse` (`id_adresse`);

--
-- Index pour la table `utilise_couramment`
--
ALTER TABLE `utilise_couramment`
  ADD PRIMARY KEY (`id_utilisateur`,`id_bateau`),
  ADD KEY `FK_utilise_couramment_id_bateau` (`id_bateau`);

--
-- Index pour la table `Ville`
--
ALTER TABLE `Ville`
  ADD PRIMARY KEY (`id_ville`),
  ADD KEY `FK_Ville_id_pays` (`id_pays`);

--
-- Index pour la table `Voyage`
--
ALTER TABLE `Voyage`
  ADD PRIMARY KEY (`id_voyage`),
  ADD KEY `FK_Voyage_id_utilisateur` (`id_utilisateur`),
  ADD KEY `FK_Voyage_id_port` (`id_port`),
  ADD KEY `FK_Voyage_id_port_est_port_arrivé` (`id_port_est_port_arrivé`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Accident`
--
ALTER TABLE `Accident`
  MODIFY `id_accident` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Adresse`
--
ALTER TABLE `Adresse`
  MODIFY `id_adresse` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Bateau`
--
ALTER TABLE `Bateau`
  MODIFY `id_bateau` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Entretien`
--
ALTER TABLE `Entretien`
  MODIFY `id_entretien` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Equipement`
--
ALTER TABLE `Equipement`
  MODIFY `id_equipement` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Etat`
--
ALTER TABLE `Etat`
  MODIFY `id_etat` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Fournisseur`
--
ALTER TABLE `Fournisseur`
  MODIFY `id_fourni` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Marque`
--
ALTER TABLE `Marque`
  MODIFY `id_marque` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Modele`
--
ALTER TABLE `Modele`
  MODIFY `id_modele` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Moteur`
--
ALTER TABLE `Moteur`
  MODIFY `id_moteur` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Pays`
--
ALTER TABLE `Pays`
  MODIFY `id_pays` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Permis`
--
ALTER TABLE `Permis`
  MODIFY `id_permis` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Piece`
--
ALTER TABLE `Piece`
  MODIFY `id_piece` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Port`
--
ALTER TABLE `Port`
  MODIFY `id_port` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Type_Equipement`
--
ALTER TABLE `Type_Equipement`
  MODIFY `id_type_equipement` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Type_piece`
--
ALTER TABLE `Type_piece`
  MODIFY `id_type_piece` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `id_utilisateur` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Ville`
--
ALTER TABLE `Ville`
  MODIFY `id_ville` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Voyage`
--
ALTER TABLE `Voyage`
  MODIFY `id_voyage` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Adresse`
--
ALTER TABLE `Adresse`
  ADD CONSTRAINT `FK_Adresse_id_ville` FOREIGN KEY (`id_ville`) REFERENCES `Ville` (`id_ville`);

--
-- Contraintes pour la table `A_passé`
--
ALTER TABLE `A_passé`
  ADD CONSTRAINT `FK_A_passé_id_permis` FOREIGN KEY (`id_permis`) REFERENCES `Permis` (`id_permis`),
  ADD CONSTRAINT `FK_A_passé_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `Bateau`
--
ALTER TABLE `Bateau`
  ADD CONSTRAINT `FK_Bateau_immatriculation_id_immatr` FOREIGN KEY (`immatriculation_id_immatr`) REFERENCES `Immatriculation` (`id_immatr`),
  ADD CONSTRAINT `FK_Bateau_moteur_id_moteur` FOREIGN KEY (`moteur_id_moteur`) REFERENCES `Moteur` (`id_moteur`),
  ADD CONSTRAINT `FK_Bateau_port_id_port` FOREIGN KEY (`port_id_port`) REFERENCES `Port` (`id_port`);

--
-- Contraintes pour la table `comporte`
--
ALTER TABLE `comporte`
  ADD CONSTRAINT `FK_comporte_id_bateau` FOREIGN KEY (`id_bateau`) REFERENCES `Bateau` (`id_bateau`),
  ADD CONSTRAINT `FK_comporte_id_equipement` FOREIGN KEY (`id_equipement`) REFERENCES `Equipement` (`id_equipement`);

--
-- Contraintes pour la table `concerne`
--
ALTER TABLE `concerne`
  ADD CONSTRAINT `FK_concerne_id_entretien` FOREIGN KEY (`id_entretien`) REFERENCES `Entretien` (`id_entretien`),
  ADD CONSTRAINT `FK_concerne_id_equipement` FOREIGN KEY (`id_equipement`) REFERENCES `Equipement` (`id_equipement`),
  ADD CONSTRAINT `FK_concerne_id_piece` FOREIGN KEY (`id_piece`) REFERENCES `Piece` (`id_piece`);

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `FK_contient_id_bateau` FOREIGN KEY (`id_bateau`) REFERENCES `Bateau` (`id_bateau`),
  ADD CONSTRAINT `FK_contient_id_piece` FOREIGN KEY (`id_piece`) REFERENCES `Piece` (`id_piece`);

--
-- Contraintes pour la table `Equipement`
--
ALTER TABLE `Equipement`
  ADD CONSTRAINT `FK_Equipement_id_type_equipement` FOREIGN KEY (`id_type_equipement`) REFERENCES `Type_Equipement` (`id_type_equipement`);

--
-- Contraintes pour la table `est_composé`
--
ALTER TABLE `est_composé`
  ADD CONSTRAINT `FK_est_composé_id_equipement` FOREIGN KEY (`id_equipement`) REFERENCES `Equipement` (`id_equipement`),
  ADD CONSTRAINT `FK_est_composé_id_piece` FOREIGN KEY (`id_piece`) REFERENCES `Piece` (`id_piece`);

--
-- Contraintes pour la table `est_dans`
--
ALTER TABLE `est_dans`
  ADD CONSTRAINT `FK_est_dans_id_equipement` FOREIGN KEY (`id_equipement`) REFERENCES `Equipement` (`id_equipement`),
  ADD CONSTRAINT `FK_est_dans_id_etat` FOREIGN KEY (`id_etat`) REFERENCES `Etat` (`id_etat`),
  ADD CONSTRAINT `FK_est_dans_id_piece` FOREIGN KEY (`id_piece`) REFERENCES `Piece` (`id_piece`);

--
-- Contraintes pour la table `est_impliqué`
--
ALTER TABLE `est_impliqué`
  ADD CONSTRAINT `FK_est_impliqué_id_accident` FOREIGN KEY (`id_accident`) REFERENCES `Accident` (`id_accident`),
  ADD CONSTRAINT `FK_est_impliqué_id_bateau` FOREIGN KEY (`id_bateau`) REFERENCES `Bateau` (`id_bateau`);

--
-- Contraintes pour la table `est_localisé`
--
ALTER TABLE `est_localisé`
  ADD CONSTRAINT `FK_est_localisé_id_adresse` FOREIGN KEY (`id_adresse`) REFERENCES `Adresse` (`id_adresse`),
  ADD CONSTRAINT `FK_est_localisé_id_fourni` FOREIGN KEY (`id_fourni`) REFERENCES `Fournisseur` (`id_fourni`);

--
-- Contraintes pour la table `est_renseigné_sous`
--
ALTER TABLE `est_renseigné_sous`
  ADD CONSTRAINT `FK_est_renseigné_sous_id_bateau` FOREIGN KEY (`id_bateau`) REFERENCES `Bateau` (`id_bateau`),
  ADD CONSTRAINT `FK_est_renseigné_sous_id_equipement` FOREIGN KEY (`id_equipement`) REFERENCES `Equipement` (`id_equipement`),
  ADD CONSTRAINT `FK_est_renseigné_sous_id_modele` FOREIGN KEY (`id_modele`) REFERENCES `Modele` (`id_modele`),
  ADD CONSTRAINT `FK_est_renseigné_sous_id_piece` FOREIGN KEY (`id_piece`) REFERENCES `Piece` (`id_piece`);

--
-- Contraintes pour la table `fournit`
--
ALTER TABLE `fournit`
  ADD CONSTRAINT `FK_fournit_id_equipement` FOREIGN KEY (`id_equipement`) REFERENCES `Equipement` (`id_equipement`),
  ADD CONSTRAINT `FK_fournit_id_fourni` FOREIGN KEY (`id_fourni`) REFERENCES `Fournisseur` (`id_fourni`),
  ADD CONSTRAINT `FK_fournit_id_piece` FOREIGN KEY (`id_piece`) REFERENCES `Piece` (`id_piece`);

--
-- Contraintes pour la table `Immatriculation`
--
ALTER TABLE `Immatriculation`
  ADD CONSTRAINT `FK_Immatriculation_bateau_id_bateau` FOREIGN KEY (`bateau_id_bateau`) REFERENCES `Bateau` (`id_bateau`);

--
-- Contraintes pour la table `Moteur`
--
ALTER TABLE `Moteur`
  ADD CONSTRAINT `FK_Moteur_id_equipement` FOREIGN KEY (`id_equipement`) REFERENCES `Equipement` (`id_equipement`);

--
-- Contraintes pour la table `Necessite`
--
ALTER TABLE `Necessite`
  ADD CONSTRAINT `FK_Necessite_id_bateau` FOREIGN KEY (`id_bateau`) REFERENCES `Bateau` (`id_bateau`),
  ADD CONSTRAINT `FK_Necessite_id_permis` FOREIGN KEY (`id_permis`) REFERENCES `Permis` (`id_permis`);

--
-- Contraintes pour la table `participe`
--
ALTER TABLE `participe`
  ADD CONSTRAINT `FK_participe_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `FK_participe_id_voyage` FOREIGN KEY (`id_voyage`) REFERENCES `Voyage` (`id_voyage`);

--
-- Contraintes pour la table `Piece`
--
ALTER TABLE `Piece`
  ADD CONSTRAINT `FK_Piece_id_type_piece` FOREIGN KEY (`id_type_piece`) REFERENCES `Type_piece` (`id_type_piece`);

--
-- Contraintes pour la table `Port`
--
ALTER TABLE `Port`
  ADD CONSTRAINT `FK_Port_id_adresse` FOREIGN KEY (`id_adresse`) REFERENCES `Adresse` (`id_adresse`);

--
-- Contraintes pour la table `Possède`
--
ALTER TABLE `Possède`
  ADD CONSTRAINT `FK_Possède_id_bateau` FOREIGN KEY (`id_bateau`) REFERENCES `Bateau` (`id_bateau`),
  ADD CONSTRAINT `FK_Possède_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `produit_par`
--
ALTER TABLE `produit_par`
  ADD CONSTRAINT `FK_produit_par_id_marque` FOREIGN KEY (`id_marque`) REFERENCES `Marque` (`id_marque`),
  ADD CONSTRAINT `FK_produit_par_id_modele` FOREIGN KEY (`id_modele`) REFERENCES `Modele` (`id_modele`);

--
-- Contraintes pour la table `reçoit`
--
ALTER TABLE `reçoit`
  ADD CONSTRAINT `FK_reçoit_id_bateau` FOREIGN KEY (`id_bateau`) REFERENCES `Bateau` (`id_bateau`),
  ADD CONSTRAINT `FK_reçoit_id_entretien` FOREIGN KEY (`id_entretien`) REFERENCES `Entretien` (`id_entretien`);

--
-- Contraintes pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD CONSTRAINT `FK_Utilisateur_id_adresse` FOREIGN KEY (`id_adresse`) REFERENCES `Adresse` (`id_adresse`);

--
-- Contraintes pour la table `utilise_couramment`
--
ALTER TABLE `utilise_couramment`
  ADD CONSTRAINT `FK_utilise_couramment_id_bateau` FOREIGN KEY (`id_bateau`) REFERENCES `Bateau` (`id_bateau`),
  ADD CONSTRAINT `FK_utilise_couramment_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `Ville`
--
ALTER TABLE `Ville`
  ADD CONSTRAINT `FK_Ville_id_pays` FOREIGN KEY (`id_pays`) REFERENCES `Pays` (`id_pays`);

--
-- Contraintes pour la table `Voyage`
--
ALTER TABLE `Voyage`
  ADD CONSTRAINT `FK_Voyage_id_port` FOREIGN KEY (`id_port`) REFERENCES `Port` (`id_port`),
  ADD CONSTRAINT `FK_Voyage_id_port_est_port_arrivé` FOREIGN KEY (`id_port_est_port_arrivé`) REFERENCES `Port` (`id_port`),
  ADD CONSTRAINT `FK_Voyage_id_utilisateur` FOREIGN KEY (`id_utilisateur`) REFERENCES `Utilisateur` (`id_utilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
