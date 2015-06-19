-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: newsjunkies
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `antwort`
--

DROP TABLE IF EXISTS `antwort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `antwort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `ist_richtig` tinyint(1) NOT NULL,
  `frage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antwort`
--

LOCK TABLES `antwort` WRITE;
/*!40000 ALTER TABLE `antwort` DISABLE KEYS */;
INSERT INTO `antwort` VALUES (29,'Suchbegriffe fuer Spionageziele',1,22),(30,'Auswahlkriterien fuer Agentenausbildung',0,22),(31,'Sortiersysteme fuer Supermarktregale',0,22),(32,'Opfer rechtsextremer Gewalt',0,22),(33,'Suchbegriffe fuer Spionageziele',1,23),(34,'Auswahlkriterien fuer Agentenausbildung',0,23),(35,'Sortiersysteme fuer Supermarktregale',0,23),(36,'Opfer rechtsextremer Gewalt',0,23),(37,'Stilberatung fuer modebewusste MÃ¤nner',0,24),(38,'Auswahlkriterien fuer Agentenausbildung',0,24),(39,'Bohrmethode zur Foerderung von Erdgas',1,24),(40,'Federkleid der Humboldt-Pinguine',0,24),(41,'Stilberatung fuer modebewusste MÃ¤nner',0,25),(42,'Auswahlkriterien fuer Agentenausbildung',0,25),(43,'Bohrmethode zur Foerderung von Erdgas',1,25),(44,'Federkleid der Humboldt-Pinguine',0,25),(45,'Austritt Griechenlands aus der EU',0,26),(46,'Austritt Griechenlands aus der Eurozone',1,26),(47,'Austritt Griechenlands aus dem Schengen-Raum',0,26),(48,'Austritt Griechenlands aus der NATO',0,26),(49,'Staatsverschuldung',0,27),(50,'Griechenland-Krise',0,27),(51,'Pkw-Maut',1,27),(52,'Milch-Quote',0,27),(53,'Private Krankenversicherung',1,28),(54,'Unheilbare Krankheit',0,28),(55,'Volljaehrigkeit',0,28),(56,'Einwilligungsfaehigkeit',0,28),(57,'Zollbetrug',0,29),(58,'Kroetenwanderungen',0,29),(59,'Fuechtlingsstroeme',1,29),(60,'Grenzverkehr',0,29),(61,'Viktor Orban',1,30),(62,'Peter Urban',0,30),(63,'Michail Gorbatschow',0,30),(64,'Lech Walesa',0,30),(65,'Viktor Orban',1,31),(66,'Peter Urban',0,31),(67,'Michail Gorbatschow',0,31),(68,'Lech Walesa',0,31),(69,'Monatelange Duerre',0,32),(70,'Peter Urban',0,32),(71,'Regenzeit',1,32),(72,'Karneval',0,32),(73,'Dragon Wall',0,33),(74,'Noble Jump',1,33),(75,'Red Star',0,33),(76,'Blitzkrieg',0,33),(77,'Mahmud Abbas',0,34),(78,'Benjamin Netanjahu',0,34),(79,'Rami Hamdallah',1,34),(80,'Jitzchak Rabin',0,34),(81,'Steuererhoehungen',0,35),(82,'Rentenkuerzungen',0,35),(83,'EU-Austritt',0,35),(84,'Boykott von Nutella',1,35),(85,'Gerhard Schroeder und Oskar Lafontaine',0,36),(86,'Christian Wulff und Hartmut Mehdorn',0,36),(87,'Bodo Ramelow und Matthias Platzeck',1,36),(88,'Karl Dall und Harald Schmidt',0,36),(89,'Gerhard Schroeder und Oskar Lafontaine',0,37),(90,'Christian Wulff und Hartmut Mehdorn',0,37),(91,'Bodo Ramelow und Matthias Platzeck',1,37),(92,'Karl Dall und Harald Schmidt',0,37),(93,'An den deutschen Konkurrenten Karstadt',0,38),(94,'An den schwedischen MÃ¶belriesen Ikea',0,38),(95,'An den amerikanischen Konzern Walmart',0,38),(96,'An den kanadischen Konzern Hudsons Bay',1,38),(97,'Niederlande',0,39),(98,'Norwegen',0,39),(99,'Kroatien',1,39),(100,'Liechtenstein',0,39),(101,'Regionale Oeko-Spezialitaeten',0,40),(102,'Legale Steuersparmodelle',1,40),(103,'Eiskremsorten',0,40),(104,'Obszoene Sexualpraktiken',0,40),(105,'Unbegrenzter Ankauf von Staatsanleihen',1,41),(106,'Transaktionssteuer auf Geldgeschaefte',0,41),(107,'Hochspekulative Boersengeschaefte',0,41),(108,'Bageldloses Bezahlen',0,41),(109,'TV Total',1,42),(110,'TV Brutal',0,42),(111,'TV Banal',0,42),(112,'TV Egal',0,42),(113,'Juergen Flimm',1,43),(114,'Egidius Braun',0,43),(115,'Simone Young',0,43),(116,'Rainer Werner Fassbinder',0,43),(117,'Till Schweiger',0,44),(118,'Florian David Fitz',1,44),(119,'Wotan Wilke Moehring',0,44),(120,'Uwe Ochsenknecht',0,44),(121,'Russland',1,45),(122,'Katar',0,45),(123,'Frankreich',0,45),(124,'Brasilien',0,45),(125,'FBI',0,46),(126,'Schweizer Staatsanwaltschaft',1,46),(127,'Bundesnachrichtendienst',0,46),(128,'Privatdetektive',0,46),(129,'Zum ersten Mal',1,47),(130,'Zum zehnten Mal',0,47),(131,'Zum fuenfzigsten Mal',0,47),(132,'Zum hundertsten Mal',0,47),(133,'Nicht gegebener Handelfmeter',0,48),(134,'Rauchbomben auf Haupttribuene',0,48),(135,'Hakenkreuz auf dem Rasen',1,48),(136,'Positive Dopingprobe',0,48),(137,'Roger Federer',0,49),(138,'Novak Djokovic',1,49),(139,'Rafael Nadal',0,49),(140,'Boris Becker',0,49),(141,'Golden State Warriors',1,50),(142,'Cleveland Cavaliers',0,50),(143,'Chicago Bulls',0,50),(144,'Dallas Mavericks',0,50),(145,'VfL Wolfsburg',0,51),(146,'Schalke 04',0,51),(147,'VfB Stuttgart',1,51),(148,'Hamburger SV',0,51),(149,'Andrea Nahles',0,52),(150,'Barbara Hendricks',1,52),(151,'Ursula von der Leyen',0,52),(152,'Angela Merkel',0,52),(153,'Familienministerin',0,53),(154,'Umweltministerin',1,53),(155,'Justizministerin',0,53),(156,'Kulturstaatsministerin',0,53),(157,'CDU',0,54),(158,'SPD',1,54),(159,'Gruene',0,54),(160,'FDP',0,54),(161,'Hermann Groehe',0,55),(162,'Peter Altmaier',0,55),(163,'Christian Schmidt',1,55),(164,'Gerd Mueller',0,55),(165,'Wirtschaftsminister',0,56),(166,'Landwirtschaftsminister',1,56),(167,'Entwicklungshilfeminister',0,56),(168,'Verkehrsminister',0,56),(169,'CDU',0,57),(170,'CSU',1,57),(171,'SPD',0,57),(172,'FDP',0,57),(173,'Peter Altmaier',0,58),(174,'Wolfgang Schaeuble',0,58),(175,'Gerd Mueller',1,58),(176,'Heiko Maas',0,58),(177,'Umweltminister',0,59),(178,'Finanzminister',0,59),(179,'Wirtschaftsminister',0,59),(180,'Entwicklungshilfeminister',1,59),(181,'CDU',0,60),(182,'CSU',1,60),(183,'SPD',0,60),(184,'FDP',0,60);
/*!40000 ALTER TABLE `antwort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frage`
--

DROP TABLE IF EXISTS `frage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `date_value` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frage`
--

LOCK TABLES `frage` WRITE;
/*!40000 ALTER TABLE `frage` DISABLE KEYS */;
INSERT INTO `frage` VALUES (23,'Was sind NSA-Selektoren?',NULL,'0000-00-00 00:00:00'),(25,'Was ist Fracking?',NULL,'0000-00-00 00:00:00'),(26,'Was ist der Grexit?',NULL,'0000-00-00 00:00:00'),(27,'Die EU hat diese Woche ein Vertragsverletzungsverfahren gegen Deutschland eingeleitet. Worum geht es?',NULL,'0000-00-00 00:00:00'),(28,'Ein neuer Gesetzentwurf will die so genannte Suizid-Beihilfe erlauben: Welche Bedingung muss ein sterbender Patient dabei nicht erfÃ¼llen?',NULL,'0000-00-00 00:00:00'),(29,'Ungarn plant die Errichtung eines Grenzzauns zu Serbien. Um was zu verhindern?',NULL,'0000-00-00 00:00:00'),(31,'Der Ministerpraesident von Ungarn ist diese Woche mit rechtspopulistischen Parolen aufgefallen. Wie heiÃŸt er?',NULL,'0000-00-00 00:00:00'),(32,'In Tiflis ist heute ein Mann von einem weissen Tiger getoetet worden. Als Folge welchen Naturereignisses?',NULL,'0000-00-00 00:00:00'),(33,'Wie heisst das zurzeit in Polen stattfindende NATO-Manoever?',NULL,'0000-00-00 00:00:00'),(34,'Wie heisst der palaestinensische Ministerpraesident?',NULL,'0000-00-00 00:00:00'),(35,'Frankreichs Umweltministerin Segolene Royal sorgte diese Woche fuer Diskussionen. Mit welcher Forderung?',NULL,'0000-00-00 00:00:00'),(37,'Im Tarifstreit zwischen Bahn und GdL sind zwei Schlichter eingesetzt worden. Wie heissen sie?',NULL,'0000-00-00 00:00:00'),(38,'Die Warenhauskette Kaufhof ist am Montag fuer 2,8 Milliarden Euro verkauft worden. An wen?',NULL,'0000-00-00 00:00:00'),(39,'Der Schengenraum hat am Wochenende seinen 30. Geburtstag gefeiert. Welches Land gehoert nicht dazu?',NULL,'0000-00-00 00:00:00'),(40,'Was sind Double Irish oder das niederlaendische Sandwich?',NULL,'0000-00-00 00:00:00'),(41,'Der Europaeische Gerichtshof hat am Dienstag gruenes Licht fuer die umstrittenen Outright Monetary Transactions gegeben. Was ist das?',NULL,'0000-00-00 00:00:00'),(42,'Stefan Raab hat heute angekuendigt, seine TV-Karriere zu beenden. Wie hiess seine abendliche Fernseh-Show?',NULL,'0000-00-00 00:00:00'),(43,'Matthias Schulz wird neuer Intendant der Berliner Staatsopfer. Als wessen Nachfolger?',NULL,'0000-00-00 00:00:00'),(44,'Heute startet der Film Die Luegen der Sieger in den Kinos. Wer spielt die Hauptrolle?',NULL,'0000-00-00 00:00:00'),(45,'Wo soll 2018 die FuÃŸball-Weltmeisterschaft stattfinden?',NULL,'0000-00-00 00:00:00'),(46,'Wer ermittelt zurzeit gegen die FIFA?',NULL,'0000-00-00 00:00:00'),(47,'Am Freitag beginnen in Baku die Europaspiele. Zum wievielten Mal werden sie ausgetragen?',NULL,'0000-00-00 00:00:00'),(48,'Das EM-Qualifikationsspiel zwischen Kroatien und Italien am Samstag wurde von einem Skandal ueberschattet. Worum ging es?',NULL,'0000-00-00 00:00:00'),(49,'Wer ist momentan die Nummer 1 der Tennis-Weltrangliste?',NULL,'0000-00-00 00:00:00'),(50,'Welches Team hat in der Nacht zu Mittwoch die NBA-Finals gewonnen?',NULL,'0000-00-00 00:00:00'),(51,'Von welchem Verein ist Torwart Sven Ulreich zum FC Bayern Muenchen gewechselt?',NULL,'0000-00-00 00:00:00'),(52,'Wer ist das?',1,'0000-00-00 00:00:00'),(53,'Was macht diese Person?',1,'0000-00-00 00:00:00'),(54,'Welcher Partei gehoert diese Person an?',1,'0000-00-00 00:00:00'),(55,'Wer ist diese Person?',2,'0000-00-00 00:00:00'),(56,'Was macht diese Person?',2,'0000-00-00 00:00:00'),(57,'Welcher Partei gehoert diese Person an?',2,'0000-00-00 00:00:00'),(58,'Wer ist das?',3,'0000-00-00 00:00:00'),(59,'Was macht diese Person?',3,'0000-00-00 00:00:00'),(60,'Welcher Partei gehÃ¶rt diese Person an?',3,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `frage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fragen_rubriken`
--

DROP TABLE IF EXISTS `fragen_rubriken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fragen_rubriken` (
  `frage_id` int(11) NOT NULL,
  `rubrik_id` int(11) NOT NULL,
  PRIMARY KEY (`frage_id`,`rubrik_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fragen_rubriken`
--

LOCK TABLES `fragen_rubriken` WRITE;
/*!40000 ALTER TABLE `fragen_rubriken` DISABLE KEYS */;
INSERT INTO `fragen_rubriken` VALUES (15,1),(15,2),(16,1),(16,2),(16,3),(16,4),(16,6),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(18,1),(18,3),(18,5),(19,1),(19,6),(21,2),(22,2),(23,2),(24,2),(25,2),(26,2),(27,2),(28,2),(29,3),(30,3),(31,3),(32,3),(33,3),(34,3),(35,3),(36,4),(37,4),(38,4),(39,4),(40,4),(41,4),(42,5),(43,5),(44,5),(45,6),(46,6),(47,6),(48,6),(49,6),(50,6),(51,6),(52,1),(52,6),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1);
/*!40000 ALTER TABLE `fragen_rubriken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) NOT NULL,
  `type` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'BarbaraHendricks.png','I'),(2,'ChristianSchmidt.png','I'),(3,'GerdMueller.png','I');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubriken`
--

DROP TABLE IF EXISTS `rubriken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubriken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubriken`
--

LOCK TABLES `rubriken` WRITE;
/*!40000 ALTER TABLE `rubriken` DISABLE KEYS */;
INSERT INTO `rubriken` VALUES (1,'Allgemein'),(2,'Inland'),(3,'Ausland'),(4,'Wirtschaft'),(5,'Kultur'),(6,'Sport');
/*!40000 ALTER TABLE `rubriken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sek` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-18 12:18:57
