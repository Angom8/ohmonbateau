DROP TABLE IF EXISTS Piece ;
CREATE TABLE Piece (id_piece BIGINT AUTO_INCREMENT NOT NULL,
revisions_periodiques_piece TIMESTAMP,
duree_vie_piece TIMESTAMP,
quantite_piece BIGINT,
piece_origine BOOL,
q_piece_rechange BIGINT,
id_type_piece BIGINT,
PRIMARY KEY (id_piece)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Bateau ;
CREATE TABLE Bateau (id_bateau BIGINT AUTO_INCREMENT NOT NULL,
nom_bateau VARCHAR(200),
nb_mat BIGINT,
surface_voilure FLOAT,
dimension_x_bateau FLOAT,
dimension_y_bateau FLOAT,
ancienne_cat VARCHAR(1),
distance_eloignement BIGINT,
volume_coque FLOAT,
force_vent_max FLOAT,
hauteur_max_vagues FLOAT,
dimension_z_bateau FLOAT,
consommation FLOAT,
niveau_reserve FLOAT,
nb_places BIGINT,
date_construction TIMESTAMP,
auto_videur BOOL,
niveau_carburant_max FLOAT,
niveau_performance FLOAT,
jauge_brut FLOAT,
masse_navire FLOAT,
hors_bord BOOL,
francise BOOL,
niveau_huile FLOAT,
niveau_liquide_refroidissement FLOAT,
url_photo VARCHAR(1),
immatriculation_id_immatr VARCHAR(200),
moteur_id_moteur BIGINT,
port_id_port BIGINT,
PRIMARY KEY (id_bateau)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Voyage ;
CREATE TABLE Voyage (id_voyage BIGINT AUTO_INCREMENT NOT NULL,
d_voyage FLOAT,
participants_max BIGINT,
participants_min BIGINT,
date_depart TIMESTAMP,
date_retour TIMESTAMP,
cout_voyage FLOAT,
id_utilisateur BIGINT,
id_port BIGINT,
id_port_est_port_arrivé BIGINT,
PRIMARY KEY (id_voyage)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Utilisateur ;
CREATE TABLE Utilisateur (id_utilisateur BIGINT AUTO_INCREMENT NOT NULL,
login VARCHAR(200),
password VARCHAR(200),
type_utilisateur BIGINT,
nom_utilisateur VARCHAR(200),
prenom_utilisateur VARCHAR(200),
tel_utilisateur BIGINT,
mail_utilisateur VARCHAR(200),
id_adresse BIGINT,
PRIMARY KEY (id_utilisateur)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Entretien ;
CREATE TABLE Entretien (id_entretien BIGINT AUTO_INCREMENT NOT NULL,
date_entretien TIMESTAMP,
PRIMARY KEY (id_entretien)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Adresse ;
CREATE TABLE Adresse (id_adresse BIGINT AUTO_INCREMENT NOT NULL,
numero_adresse VARCHAR(200),
voierie VARCHAR(200),
id_ville BIGINT,
PRIMARY KEY (id_adresse)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Equipement ;
CREATE TABLE Equipement (id_equipement BIGINT AUTO_INCREMENT NOT NULL,
revision_periodique_equip TIMESTAMP,
duree_vie_equip TIMESTAMP,
equip_origine BOOL,
q_equip_rechange BIGINT,
quantite_equip BIGINT,
id_type_equipement BIGINT,
PRIMARY KEY (id_equipement)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Permis ;
CREATE TABLE Permis (id_permis BIGINT AUTO_INCREMENT NOT NULL,
nom_permis VARCHAR(200),
PRIMARY KEY (id_permis)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Fournisseur ;
CREATE TABLE Fournisseur (id_fourni BIGINT AUTO_INCREMENT NOT NULL,
nom_fourni VARCHAR(200),
tel_fourni VARCHAR(200),
mail_fourni VARCHAR(200),
PRIMARY KEY (id_fourni)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Etat ;
CREATE TABLE Etat (id_etat BIGINT AUTO_INCREMENT NOT NULL,
desc_etat VARCHAR(200),
PRIMARY KEY (id_etat)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Modele ;
CREATE TABLE Modele (id_modele BIGINT AUTO_INCREMENT NOT NULL,
nom_modele VARCHAR(200),
PRIMARY KEY (id_modele)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Marque ;
CREATE TABLE Marque (id_marque BIGINT AUTO_INCREMENT NOT NULL,
nom_marque VARCHAR(200),
PRIMARY KEY (id_marque)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Type_piece ;
CREATE TABLE Type_piece (id_type_piece BIGINT AUTO_INCREMENT NOT NULL,
nom_type_piece VARCHAR(200),
PRIMARY KEY (id_type_piece)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Type_Equipement ;
CREATE TABLE Type_Equipement (id_type_equipement BIGINT AUTO_INCREMENT NOT NULL,
nom_type_equipement VARCHAR(200),
PRIMARY KEY (id_type_equipement)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Immatriculation ;
CREATE TABLE Immatriculation (id_immatr varchar(100) NOT NULL,
date_immatr TIMESTAMP,
bateau_id_bateau BIGINT,
PRIMARY KEY (id_immatr)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Moteur ;
CREATE TABLE Moteur (id_moteur BIGINT AUTO_INCREMENT NOT NULL,
puissance_moteur FLOAT,
kilometrage FLOAT,
horametre_compte FLOAT,
id_equipement BIGINT,
PRIMARY KEY (id_moteur)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Port ;
CREATE TABLE Port (id_port BIGINT AUTO_INCREMENT NOT NULL,
latt_port FLOAT,
long_port FLOAT,
id_adresse BIGINT,
PRIMARY KEY (id_port)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Accident ;
CREATE TABLE Accident (id_accident BIGINT AUTO_INCREMENT NOT NULL,
date_accident TIMESTAMP,
nb_morts BIGINT,
nb_bless BIGINT,
PRIMARY KEY (id_accident)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Ville ;
CREATE TABLE Ville (id_ville BIGINT AUTO_INCREMENT NOT NULL,
nom_ville VARCHAR(200),
code_postal BIGINT,
id_pays BIGINT,
PRIMARY KEY (id_ville)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Pays ;
CREATE TABLE Pays (id_pays BIGINT AUTO_INCREMENT NOT NULL,
planete VARCHAR(200),
nom_pays VARCHAR(200),
PRIMARY KEY (id_pays)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Possède ;
CREATE TABLE Possède (id_utilisateur  BIGINT,
id_bateau BIGINT,
PRIMARY KEY (id_utilisateur,
 id_bateau)) ENGINE=InnoDB;

DROP TABLE IF EXISTS A_passé ;
CREATE TABLE A_passé (id_utilisateur  BIGINT,
id_permis BIGINT,
PRIMARY KEY (id_utilisateur,
 id_permis)) ENGINE=InnoDB;

DROP TABLE IF EXISTS participe ;
CREATE TABLE participe (id_utilisateur  BIGINT,
id_voyage BIGINT,
PRIMARY KEY (id_utilisateur,
 id_voyage)) ENGINE=InnoDB;

DROP TABLE IF EXISTS utilise_couramment ;
CREATE TABLE utilise_couramment (id_utilisateur  BIGINT,
id_bateau BIGINT,
PRIMARY KEY (id_utilisateur,
 id_bateau)) ENGINE=InnoDB;

DROP TABLE IF EXISTS Necessite ;
CREATE TABLE Necessite (id_bateau  BIGINT,
id_permis  BIGINT,
PRIMARY KEY (id_bateau,
 id_permis)) ENGINE=InnoDB;

DROP TABLE IF EXISTS est_impliqué ;
CREATE TABLE est_impliqué (id_bateau  BIGINT,
id_accident BIGINT,
PRIMARY KEY (id_bateau,
 id_accident)) ENGINE=InnoDB;

DROP TABLE IF EXISTS contient ;
CREATE TABLE contient (id_bateau BIGINT,
id_piece  BIGINT,
PRIMARY KEY (id_bateau,
 id_piece)) ENGINE=InnoDB;

DROP TABLE IF EXISTS comporte ;
CREATE TABLE comporte (id_bateau  BIGINT,
id_equipement  BIGINT,
PRIMARY KEY (id_bateau,
 id_equipement)) ENGINE=InnoDB;

DROP TABLE IF EXISTS reçoit ;
CREATE TABLE reçoit (id_bateau  BIGINT,
id_entretien  BIGINT,
PRIMARY KEY (id_bateau,
 id_entretien)) ENGINE=InnoDB;

DROP TABLE IF EXISTS concerne ;
CREATE TABLE concerne (id_equipement  BIGINT,
id_piece  BIGINT,
id_entretien  BIGINT,
PRIMARY KEY (id_equipement,
 id_piece,
 id_entretien)) ENGINE=InnoDB;

DROP TABLE IF EXISTS est_composé ;
CREATE TABLE est_composé (id_equipement  BIGINT,
id_piece  BIGINT,
PRIMARY KEY (id_equipement,
 id_piece)) ENGINE=InnoDB;

DROP TABLE IF EXISTS produit_par ;
CREATE TABLE produit_par (id_modele  BIGINT,
id_marque  BIGINT,
PRIMARY KEY (id_modele,
 id_marque)) ENGINE=InnoDB;

DROP TABLE IF EXISTS est_renseigné_sous ;
CREATE TABLE est_renseigné_sous (id_equipement BIGINT,
id_piece  BIGINT,
id_bateau  BIGINT,
id_modele  BIGINT,
PRIMARY KEY (id_equipement,
 id_piece,
 id_bateau,
 id_modele)) ENGINE=InnoDB;

DROP TABLE IF EXISTS fournit ;
CREATE TABLE fournit (id_fourni  BIGINT,
id_equipement  BIGINT,
id_piece  BIGINT,
PRIMARY KEY (id_fourni,
 id_equipement,
 id_piece)) ENGINE=InnoDB;

DROP TABLE IF EXISTS est_localisé ;
CREATE TABLE est_localisé (id_fourni  BIGINT,
id_adresse  BIGINT,
PRIMARY KEY (id_fourni,
 id_adresse)) ENGINE=InnoDB;

DROP TABLE IF EXISTS est_dans ;
CREATE TABLE est_dans (id_equipement BIGINT,
id_piece  BIGINT,
id_etat  BIGINT,
PRIMARY KEY (id_equipement,
 id_piece,
 id_etat)) ENGINE=InnoDB;

ALTER TABLE Piece ADD CONSTRAINT FK_Piece_id_type_piece FOREIGN KEY (id_type_piece) REFERENCES Type_piece (id_type_piece);
ALTER TABLE Bateau ADD CONSTRAINT FK_Bateau_immatriculation_id_immatr FOREIGN KEY (immatriculation_id_immatr) REFERENCES Immatriculation (id_immatr);
ALTER TABLE Bateau ADD CONSTRAINT FK_Bateau_moteur_id_moteur FOREIGN KEY (moteur_id_moteur) REFERENCES Moteur (id_moteur);
ALTER TABLE Bateau ADD CONSTRAINT FK_Bateau_port_id_port FOREIGN KEY (port_id_port) REFERENCES Port (id_port);
ALTER TABLE Voyage ADD CONSTRAINT FK_Voyage_id_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur (id_utilisateur);
ALTER TABLE Voyage ADD CONSTRAINT FK_Voyage_id_port FOREIGN KEY (id_port) REFERENCES Port (id_port);
ALTER TABLE Voyage ADD CONSTRAINT FK_Voyage_id_port_est_port_arrivé FOREIGN KEY (id_port_est_port_arrivé) REFERENCES Port (id_port);
ALTER TABLE Utilisateur ADD CONSTRAINT FK_Utilisateur_id_adresse FOREIGN KEY (id_adresse) REFERENCES Adresse (id_adresse);
ALTER TABLE Adresse ADD CONSTRAINT FK_Adresse_id_ville FOREIGN KEY (id_ville) REFERENCES Ville (id_ville);
ALTER TABLE Equipement ADD CONSTRAINT FK_Equipement_id_type_equipement FOREIGN KEY (id_type_equipement) REFERENCES Type_Equipement (id_type_equipement);
ALTER TABLE Immatriculation ADD CONSTRAINT FK_Immatriculation_bateau_id_bateau FOREIGN KEY (bateau_id_bateau) REFERENCES Bateau (id_bateau);
ALTER TABLE Moteur ADD CONSTRAINT FK_Moteur_id_equipement FOREIGN KEY (id_equipement) REFERENCES Equipement (id_equipement);
ALTER TABLE Port ADD CONSTRAINT FK_Port_id_adresse FOREIGN KEY (id_adresse) REFERENCES Adresse (id_adresse);
ALTER TABLE Ville ADD CONSTRAINT FK_Ville_id_pays FOREIGN KEY (id_pays) REFERENCES Pays (id_pays);
ALTER TABLE Possède ADD CONSTRAINT FK_Possède_id_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur (id_utilisateur);
ALTER TABLE Possède ADD CONSTRAINT FK_Possède_id_bateau FOREIGN KEY (id_bateau) REFERENCES Bateau (id_bateau);
ALTER TABLE A_passé ADD CONSTRAINT FK_A_passé_id_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur (id_utilisateur);
ALTER TABLE A_passé ADD CONSTRAINT FK_A_passé_id_permis FOREIGN KEY (id_permis) REFERENCES Permis (id_permis);
ALTER TABLE participe ADD CONSTRAINT FK_participe_id_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur (id_utilisateur);
ALTER TABLE participe ADD CONSTRAINT FK_participe_id_voyage FOREIGN KEY (id_voyage) REFERENCES Voyage (id_voyage);
ALTER TABLE utilise_couramment ADD CONSTRAINT FK_utilise_couramment_id_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur (id_utilisateur);
ALTER TABLE utilise_couramment ADD CONSTRAINT FK_utilise_couramment_id_bateau FOREIGN KEY (id_bateau) REFERENCES Bateau (id_bateau);
ALTER TABLE Necessite ADD CONSTRAINT FK_Necessite_id_bateau FOREIGN KEY (id_bateau) REFERENCES Bateau (id_bateau);
ALTER TABLE Necessite ADD CONSTRAINT FK_Necessite_id_permis FOREIGN KEY (id_permis) REFERENCES Permis (id_permis);
ALTER TABLE est_impliqué ADD CONSTRAINT FK_est_impliqué_id_bateau FOREIGN KEY (id_bateau) REFERENCES Bateau (id_bateau);
ALTER TABLE est_impliqué ADD CONSTRAINT FK_est_impliqué_id_accident FOREIGN KEY (id_accident) REFERENCES Accident (id_accident);
ALTER TABLE contient ADD CONSTRAINT FK_contient_id_bateau FOREIGN KEY (id_bateau) REFERENCES Bateau (id_bateau);
ALTER TABLE contient ADD CONSTRAINT FK_contient_id_piece FOREIGN KEY (id_piece) REFERENCES Piece (id_piece);
ALTER TABLE comporte ADD CONSTRAINT FK_comporte_id_bateau FOREIGN KEY (id_bateau) REFERENCES Bateau (id_bateau);
ALTER TABLE comporte ADD CONSTRAINT FK_comporte_id_equipement FOREIGN KEY (id_equipement) REFERENCES Equipement (id_equipement);
ALTER TABLE reçoit ADD CONSTRAINT FK_reçoit_id_bateau FOREIGN KEY (id_bateau) REFERENCES Bateau (id_bateau);
ALTER TABLE reçoit ADD CONSTRAINT FK_reçoit_id_entretien FOREIGN KEY (id_entretien) REFERENCES Entretien (id_entretien);
ALTER TABLE concerne ADD CONSTRAINT FK_concerne_id_equipement FOREIGN KEY (id_equipement) REFERENCES Equipement (id_equipement);
ALTER TABLE concerne ADD CONSTRAINT FK_concerne_id_piece FOREIGN KEY (id_piece) REFERENCES Piece (id_piece);
ALTER TABLE concerne ADD CONSTRAINT FK_concerne_id_entretien FOREIGN KEY (id_entretien) REFERENCES Entretien (id_entretien);
ALTER TABLE est_composé ADD CONSTRAINT FK_est_composé_id_equipement FOREIGN KEY (id_equipement) REFERENCES Equipement (id_equipement);
ALTER TABLE est_composé ADD CONSTRAINT FK_est_composé_id_piece FOREIGN KEY (id_piece) REFERENCES Piece (id_piece);
ALTER TABLE produit_par ADD CONSTRAINT FK_produit_par_id_modele FOREIGN KEY (id_modele) REFERENCES Modele (id_modele);
ALTER TABLE produit_par ADD CONSTRAINT FK_produit_par_id_marque FOREIGN KEY (id_marque) REFERENCES Marque (id_marque);
ALTER TABLE est_renseigné_sous ADD CONSTRAINT FK_est_renseigné_sous_id_equipement FOREIGN KEY (id_equipement) REFERENCES Equipement (id_equipement);
ALTER TABLE est_renseigné_sous ADD CONSTRAINT FK_est_renseigné_sous_id_piece FOREIGN KEY (id_piece) REFERENCES Piece (id_piece);
ALTER TABLE est_renseigné_sous ADD CONSTRAINT FK_est_renseigné_sous_id_bateau FOREIGN KEY (id_bateau) REFERENCES Bateau (id_bateau);
ALTER TABLE est_renseigné_sous ADD CONSTRAINT FK_est_renseigné_sous_id_modele FOREIGN KEY (id_modele) REFERENCES Modele (id_modele);
ALTER TABLE fournit ADD CONSTRAINT FK_fournit_id_fourni FOREIGN KEY (id_fourni) REFERENCES Fournisseur (id_fourni);
ALTER TABLE fournit ADD CONSTRAINT FK_fournit_id_equipement FOREIGN KEY (id_equipement) REFERENCES Equipement (id_equipement);
ALTER TABLE fournit ADD CONSTRAINT FK_fournit_id_piece FOREIGN KEY (id_piece) REFERENCES Piece (id_piece);
ALTER TABLE est_localisé ADD CONSTRAINT FK_est_localisé_id_fourni FOREIGN KEY (id_fourni) REFERENCES Fournisseur (id_fourni);
ALTER TABLE est_localisé ADD CONSTRAINT FK_est_localisé_id_adresse FOREIGN KEY (id_adresse) REFERENCES Adresse (id_adresse);
ALTER TABLE est_dans ADD CONSTRAINT FK_est_dans_id_equipement FOREIGN KEY (id_equipement) REFERENCES Equipement (id_equipement);
ALTER TABLE est_dans ADD CONSTRAINT FK_est_dans_id_piece FOREIGN KEY (id_piece) REFERENCES Piece (id_piece);
ALTER TABLE est_dans ADD CONSTRAINT FK_est_dans_id_etat FOREIGN KEY (id_etat) REFERENCES Etat (id_etat);
