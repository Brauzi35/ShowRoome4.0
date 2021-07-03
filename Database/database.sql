-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: prova
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `username` varchar(64) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `talent` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES ('Flavietta','gatto','flavietta99@gmail.com','sono flavietta ,la ballerina di FLAmenco <3','dancer'),('GinoFastidio','password','ginofastidio@email.it','sono un cantante parodistico molto allegro, ho performato anche a zelig','singer'),('meo','password','meo2@email.it','sono','mimo'),('Nonna_anna','password','nonna@email.it','sono nonna anna, benvenuti','singer'),('Provino','prova','prova@email.it','questa e letteralmente una prova, nulla da vedere','singer'),('Scintilla Nuvolini','password','scintilla@email.it','sono scintilla nuvolni, artista eclettico e professionale','singer');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `name` varchar(64) NOT NULL,
  `artist` varchar(120) NOT NULL,
  `description` varchar(200) NOT NULL,
  `place` varchar(120) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES ('danza dei mille colori','Flavietta','balliamo tutti insieme (distanziati) in questo bellissimo sfondo','Eur'),('erNonna','Nonna_anna','fu vera gloria ai posteri la aruda sentenza noi chiniam la fronte al massimo fattor lorem ipsum','Pigneto'),('gino a statauario','GinoFastidio','ciao sono al palacarver a fare lo spettacolo pre partita, passa a vedermi','Statuario');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `name` varchar(128) NOT NULL,
  `capacity` int NOT NULL,
  `address` varchar(128) NOT NULL,
  `free` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('Eur',200,'Passeggiata del Giappone','Flavietta'),('Pigneto',60,'Pigneto area pedonale','Nonna_anna'),('Statuario',30,'PalaCarver parcheggio esterno','GinoFastidio'),('Villa',300,'Villa Pamphili','');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `author` varchar(45) NOT NULL,
  `artist` varchar(45) NOT NULL,
  `review` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`author`,`artist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('gemitaiz','flavietta','canta meglio di me! Poco da dire, veramente brava, non vedo motivo per non tornare a vederla il prima possibile'),('gemitaiz','ginoFastidio','prova'),('lupacchiotto','Flavietta','come balla lei nessuno mai'),('lupacchiotto','Scintilla Nuvolini','aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\n'),('tester','ginoFastidio','Al suo spettacolo mi sono trovato bene, era rispettato il distanziamento ed era divertente'),('valerio','flavietta','la sua danza mi ha veramente stregato, un mix di maestria e coinvolgimento. Aspetto con ansia di tornare'),('valerio','ginoFastidio','tutto sommato lo spettacolo è stato piacevole, peccato per il fastidio lol.'),('valerio','meo','mi ricordo che da ragazzino lo incontrai a castel santangelo, era cosi fermo che sembrava una statua\r\n'),('valerio','Provino','provaprovaprovaprovaprovaporova\r\n');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsored_shows`
--

DROP TABLE IF EXISTS `sponsored_shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsored_shows` (
  `title` varchar(45) NOT NULL,
  `artist` varchar(45) DEFAULT NULL,
  `sponsor` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `capacity` varchar(45) DEFAULT NULL,
  `partner` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsored_shows`
--

LOCK TABLES `sponsored_shows` WRITE;
/*!40000 ALTER TABLE `sponsored_shows` DISABLE KEYS */;
INSERT INTO `sponsored_shows` VALUES ('prova','Provino','gigione','bar','100','no','provaaaaaaaaaaaaaaaaaaaaaaaaa');
/*!40000 ALTER TABLE `sponsored_shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsored_shows_queue`
--

DROP TABLE IF EXISTS `sponsored_shows_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsored_shows_queue` (
  `host` varchar(40) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `partner` varchar(45) DEFAULT NULL,
  `artist` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `approvedArtist` varchar(45) DEFAULT NULL,
  `approvedPartner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`host`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsored_shows_queue`
--

LOCK TABLES `sponsored_shows_queue` WRITE;
/*!40000 ALTER TABLE `sponsored_shows_queue` DISABLE KEYS */;
INSERT INTO `sponsored_shows_queue` VALUES ('gigione','meo mimo meo','no','meo','siete tutti invitati al bar a vedere meo','no','no'),('paperone','titolo','no','GinoFastidio','descrizione','no','no');
/*!40000 ALTER TABLE `sponsored_shows_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsors` (
  `username` varchar(64) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `activity` varchar(45) DEFAULT NULL,
  `capacity` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsors`
--

LOCK TABLES `sponsors` WRITE;
/*!40000 ALTER TABLE `sponsors` DISABLE KEYS */;
INSERT INTO `sponsors` VALUES ('gigione','password','bar','100','ciao sono gigione e ho un cocktail bar sulla tuscolana'),('paperone','soldi','taverna','200','sono paperone da paperopoli, sta lontano dal mio deposito!');
/*!40000 ALTER TABLE `sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'gemitaiz','qvc9'),(5,'Gimmy13','password'),(4,'lupacchiotto','2004'),(3,'tester','test'),(1,'valerio','valeprova');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-03 19:57:58
