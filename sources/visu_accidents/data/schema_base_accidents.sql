

drop table if exists vehicule;
CREATE TABLE `vehicule` (
  `numac` int(11) DEFAULT NULL,
  `catv` int(11) DEFAULT NULL,
  `vsp` int(11) DEFAULT NULL,
  `app` int(11) DEFAULT NULL,
  `ass` int(11) DEFAULT NULL,
  `anmc` int(11) DEFAULT NULL,
  `momc` int(11) DEFAULT NULL,
  `tuev` int(11) DEFAULT NULL,
  `bgv` int(11) DEFAULT NULL,
  `blv` int(11) DEFAULT NULL,
  `indv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


drop table if exists accident;
CREATE TABLE `accident` (
  `org` int(11) DEFAULT NULL,
  `lum` int(11) DEFAULT NULL,
  `agg` int(11) DEFAULT NULL,
  `inte` int(11) DEFAULT NULL,
  `atm` int(11) DEFAULT NULL,
  `col` int(11) DEFAULT NULL,
  `com` int(11) DEFAULT NULL,
  `dep` int(11) DEFAULT NULL,
  `catr` int(11) DEFAULT NULL,
  `infra` int(11) DEFAULT NULL,
  `voie` text,
  `v1` text,
  `v2` text,
  `circ` int(11) DEFAULT NULL,
  `nbv` int(11) DEFAULT NULL,
  `pr` text,
  `pr1` int(11) DEFAULT NULL,
  `vosp` int(11) DEFAULT NULL,
  `prof` int(11) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  `situ` int(11) DEFAULT NULL,
  `ttue` int(11) DEFAULT NULL,
  `tbg` int(11) DEFAULT NULL,
  `tbl` int(11) DEFAULT NULL,
  `tindm` int(11) DEFAULT NULL,
  `typenumero` int(11) DEFAULT NULL,
  `numero` text,
  `distancemetre` text,
  `libellevoie` text,
  `coderivoli` text,
  `grav` double DEFAULT NULL,
  `gps` text,
  `lat` text,
  `longi` text,
  `adr` text,
  `numac` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOAD DATA LOCAL INFILE '/home/antoine/site_antoine/sources/visu_accidents/data/etalab_accidents.csv'
INTO TABLE `accident`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '/home/antoine/site_antoine/sources/visu_accidents/data/etalab_vehicules.csv'
INTO TABLE `vehicule`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';


drop table if exists org;
CREATE TABLE `org` ( `id_org` int(11) primary key,  `nom_org` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `org` values ("1", "Gendarmerie");
insert into `org` values ("2", "Préfecture de Police de Paris");
insert into `org` values ("3", "C.R.S.");
insert into `org` values ("4", "P.A.F.");
insert into `org` values ("5", "Sécurité publique");

drop table if exists lum;
CREATE TABLE `lum` ( `id_lum` int(11) primary key,  `nom_lum` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `lum` values ("1", "Plein jour");
insert into `lum` values ("2", "Crépuscule ou aube");
insert into `lum` values ("3", "Nuit sans éclairage public");
insert into `lum` values ("4", "Nuit avec éclairage public non allumé");
insert into `lum` values ("5", "Nuit avec éclairage public allumé");

drop table if exists agg;
CREATE TABLE `agg` ( `id_agg` int(11) primary key,  `nom_agg` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `agg` values ("1", "Hors agglomération");
insert into `agg` values ("2", "Agglomération de moins de 2 000 habitants");
insert into `agg` values ("3", "Agglomération entre 2 000 habitants et 5 000 habitants");
insert into `agg` values ("4", "Agglomération entre 5 000 habitants et 10 000 habitants");
insert into `agg` values ("5", "Agglomération entre 10 000 habitants et 20 000 habitants");
insert into `agg` values ("6", "Agglomération entre 20 000 habitants et 50 000 habitants");
insert into `agg` values ("7", "Agglomération entre 50 000 habitants et 100 000 habitants");
insert into `agg` values ("8", "Agglomération entre 100 000 habitants et 300 000 habitants");
insert into `agg` values ("9", "Agglomération de plus de 300 000 habitants");

drop table if exists `inte`;
CREATE TABLE `inte` ( `id_inte` int(11) primary key,  `nom_inte` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `inte` values ("1", "Hors intersection");
insert into `inte` values ("2", "Intersection en X");
insert into `inte` values ("3", "Intersection en T");
insert into `inte` values ("4", "Intersection en Y");
insert into `inte` values ("5", "Intersection à plus de 4 branches");
insert into `inte` values ("6", "Giratoire");
insert into `inte` values ("7", "Place");
insert into `inte` values ("8", "Passage à niveau");
insert into `inte` values ("9", "Autre intersection");

drop table if exists `atm`;
CREATE TABLE `atm` ( `id_atm` int(11) primary key,  `nom_atm` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `atm` values ("1", "Normale");
insert into `atm` values ("2", "Pluie légère");
insert into `atm` values ("3", "Pluie forte");
insert into `atm` values ("4", "Neige - grêle");
insert into `atm` values ("5", "Brouillard - fumée");
insert into `atm` values ("6", "Vent fort - tempête");
insert into `atm` values ("7", "Temps éblouissant");
insert into `atm` values ("8", "Temps couvert");
insert into `atm` values ("9", "Autre");

drop table if exists `col`;
CREATE TABLE `col` ( `id_col` int(11) primary key,  `nom_col` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `col` values ("1", "Deux véhicules - frontale");
insert into `col` values ("2", "Deux véhicules – par l’arrière");
insert into `col` values ("3", "Deux véhicules – par le coté");
insert into `col` values ("4", "Trois véhicules et plus – en chaîne");
insert into `col` values ("5", "Trois véhicules et plus - collisions multiples");
insert into `col` values ("6", "Autre collision");
insert into `col` values ("7", "Sans collision");

drop table if exists `gps`;
CREATE TABLE `gps` ( `id_gps` text,  `nom_gps` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `gps` values ("M", "Métropole");
insert into `gps` values ("A", "Antilles");
insert into `gps` values ("G", "Guyane");
insert into `gps` values ("R", "Réunion");

drop table if exists `catr`;
CREATE TABLE `catr` ( `id_catr` int(11) primary key,  `nom_catr` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `catr` values ("1", "Autoroute");
insert into `catr` values ("2", "Route Nationale");
insert into `catr` values ("3", "Route Départementale");
insert into `catr` values ("4", "Voie Communale");
insert into `catr` values ("5", "Hors réseau public");
insert into `catr` values ("6", "Parc de stationnement ouvert à la circulation publique");
insert into `catr` values ("9", "autre");

drop table if exists `infra`;
CREATE TABLE `infra` ( `id_infra` int(11) primary key,  `nom_infra` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `infra` values ("1", "Souterrain - tunnel");
insert into `infra` values ("2", "Pont - autopont");
insert into `infra` values ("3", "Bretelle d’échangeur ou de raccordement");
insert into `infra` values ("4", "Voie ferrée");
insert into `infra` values ("5", "Carrefour aménagé");
insert into `infra` values ("6", "Zone piétonne");
insert into `infra` values ("7", "Zone de péage");

drop table if exists `situ`;
CREATE TABLE `situ` ( `id_situ` int(11) primary key,  `nom_situ` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `situ` values ("1", "Sur chaussée");
insert into `situ` values ("2", "Sur bande d’arrêt d’urgence");
insert into `situ` values ("3", "Sur accotement");
insert into `situ` values ("4", "Sur trottoir");
insert into `situ` values ("5", "Sur piste cyclable");

drop table if exists `circ`;
CREATE TABLE `circ` ( `id_circ` int(11) primary key,  `nom_circ` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `circ` values ("1", "A sens unique");
insert into `circ` values ("2", "Bidirectionnelle");
insert into `circ` values ("3", "A chaussées séparées");
insert into `circ` values ("4", "Avec voies d’affectation variable");

drop table if exists `vosp`;
CREATE TABLE `vosp` ( `id_vosp` int(11) primary key,  `nom_vosp` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `vosp` values ("1", "Piste cyclable");
insert into `vosp` values ("2", "Bande cyclable");
insert into `vosp` values ("3", "Voie réservée");

drop table if exists `prof`;
CREATE TABLE `prof` ( `id_prof` int(11) primary key,  `nom_prof` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `prof` values ("1", "Plat");
insert into `prof` values ("2", "Pente");
insert into `prof` values ("3", "Sommet de côte");
insert into `prof` values ("4", "Bas de côte");

drop table if exists `plan`;
CREATE TABLE `plan` ( `id_plan` int(11) primary key,  `nom_plan` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `plan` values ("1", "Partie rectiligne");
insert into `plan` values ("2", "En courbe à gauche");
insert into `plan` values ("3", "En courbe à droite");
insert into `plan` values ("4", "En « S »");

drop table if exists `typenumero`;
CREATE TABLE `typenumero` ( `id_typenumero` int(11) primary key,  `nom_typenumero` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `typenumero` values ("0", "Numéro non renseigné");
insert into `typenumero` values ("1", "Adresse postale");
insert into `typenumero` values ("2", "Candélabre (quand on se rattache à un candélabre répertorié dans une base de données urbaine)");
insert into `typenumero` values ("9", "Autre");

drop table if exists `catv`;
CREATE TABLE `catv` ( `id_catv` int(11) primary key,  `nom_catv` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `catv` values ("01", "Bicyclette");
insert into `catv` values ("02", "Cyclomoteur <50cm3");
insert into `catv` values ("03", "Voiturette (Quadricycle à moteur carrossé)");
insert into `catv` values ("04", "Référence plus utilisée depuis 2006 (scooter immatriculé)");
insert into `catv` values ("05", "Référence plus utilisée depuis 2006 (motocyclette)");
insert into `catv` values ("06", "Référence plus utilisée depuis 2006 (side-car)");
insert into `catv` values ("07", "VL seul");
insert into `catv` values ("08", "Catégorie plus utilisée (VL + caravane)");
insert into `catv` values ("09", "Catégorie plus utilisée (VL + remorque)");
insert into `catv` values ("10", "VU seul 1,5T <= PTAC <= 3,5T avec ou sans remorque (anciennement VU seul 1,5T <= PTAC <=3,5T)");
insert into `catv` values ("11", "Référence plus utilisée depuis 2006 (VU (10) + caravane)");
insert into `catv` values ("12", "Référence plus utilisée depuis 2006 (VU (10) + remorque)");
insert into `catv` values ("13", "PL seul 3,5T <PTCA <= 7,5T");
insert into `catv` values ("14", "PL seul > 7,5T");
insert into `catv` values ("15", "PL > 3,5T + remorque");
insert into `catv` values ("16", "Tracteur routier seul");
insert into `catv` values ("17", "Tracteur routier + semi-remorque");
insert into `catv` values ("18", "Référence plus utilisée depuis 2006 (transport en commun)");
insert into `catv` values ("19", "Référence plus utilisée depuis 2006 (tramway)");
insert into `catv` values ("20", "Engin spécial");
insert into `catv` values ("21", "Tracteur agricole");
insert into `catv` values ("30", "Scooter < 50 cm3");
insert into `catv` values ("31", "Motocyclette > 50 cm 3 et <= 125 cm 3");
insert into `catv` values ("32", "Scooter > 50 cm 3 et <= 125 cm 3");
insert into `catv` values ("33", "Motocyclette > 125 cm 3");
insert into `catv` values ("34", "Scooter > 125 cm 3");
insert into `catv` values ("35", "Quad léger <= 50 cm 3 (Quadricycle à moteur non carrossé)");
insert into `catv` values ("36", "Quad lourd > 50 cm 3 (Quadricycle à moteur non carrossé)");
insert into `catv` values ("37", "Autobus");
insert into `catv` values ("38", "Autocar");
insert into `catv` values ("39", "Train");
insert into `catv` values ("40", "Tramway");
insert into `catv` values ("99", "Autre véhicule");

drop table if exists `app`;
CREATE TABLE `app` ( `id_app` int(11) primary key,  `nom_app` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `app` values ("1", "Conducteur");
insert into `app` values ("2", "Véhicule volé");
insert into `app` values ("3", "Propriétaire consentant");
insert into `app` values ("4", "Administration");
insert into `app` values ("5", "Entreprise");

drop table if exists `vsp`;
CREATE TABLE `vsp` ( `id_vsp` int(11) primary key,  `nom_vsp` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `vsp` values ("1", "Taxi");
insert into `vsp` values ("2", "Ambulance");
insert into `vsp` values ("3", "Pompier");
insert into `vsp` values ("4", "Police - Gendarmerie");
insert into `vsp` values ("5", "Transport scolaire");
insert into `vsp` values ("6", "Matières dangereuses");
insert into `vsp` values ("7", "Autre");

drop table if exists `ass`;
CREATE TABLE `ass` ( `id_ass` int(11) primary key,  `nom_ass` text) ENGINE=InnoDB DEFAULT CHARSET=latin1;
insert into `ass` values ("1", "Oui");
insert into `ass` values ("2", "Non");
insert into `ass` values ("3", "Non présentation");

