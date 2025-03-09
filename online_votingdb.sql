-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: online_voting
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `candidateName` varchar(50) NOT NULL,
  `candidateAddress` varchar(200) DEFAULT NULL,
  `candidatePhone` varchar(15) DEFAULT NULL,
  `candidateEmail` varchar(50) NOT NULL,
  `districtId` int DEFAULT NULL,
  `partyId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidateEmail` (`candidateEmail`),
  KEY `fk_candidate_district` (`districtId`),
  KEY `fk_candidate_party` (`partyId`),
  CONSTRAINT `fk_candidate_district` FOREIGN KEY (`districtId`) REFERENCES `district` (`id`),
  CONSTRAINT `fk_candidate_party` FOREIGN KEY (`partyId`) REFERENCES `party` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'John Smith P1','101 Main St, CityA','111-111-0101','p1cand1@example.com',1,1),(2,'Alice Brown P1','102 Main St, CityA','111-111-0102','p1cand2@example.com',2,1),(3,'Robert Jones P1','103 Main St, CityA','111-111-0103','p1cand3@example.com',3,1),(4,'Emily Davis P1','104 Main St, CityA','111-111-0104','p1cand4@example.com',4,1),(5,'Michael Wilson P1','105 Main St, CityA','111-111-0105','p1cand5@example.com',5,1),(6,'Laura Taylor P2','201 Elm St, CityB','222-222-0201','p2cand1@example.com',1,2),(7,'Daniel Anderson P2','202 Elm St, CityB','222-222-0202','p2cand2@example.com',2,2),(8,'Sophia Thomas P2','203 Elm St, CityB','222-222-0203','p2cand3@example.com',3,2),(9,'James Jackson P2','204 Elm St, CityB','222-222-0204','p2cand4@example.com',4,2),(10,'Olivia White P2','205 Elm St, CityB','222-222-0205','p2cand5@example.com',5,2),(11,'William Harris P3','301 Oak St, CityC','333-333-0301','p3cand1@example.com',1,3),(12,'Emma Martin P3','302 Oak St, CityC','333-333-0302','p3cand2@example.com',2,3),(13,'Benjamin Lee P3','303 Oak St, CityC','333-333-0303','p3cand3@example.com',3,3),(14,'Mia Walker P3','304 Oak St, CityC','333-333-0304','p3cand4@example.com',4,3),(15,'Lucas Hall P3','305 Oak St, CityC','333-333-0305','p3cand5@example.com',5,3),(16,'Henry Young P4','401 Pine St, CityD','444-444-0401','p4cand1@example.com',1,4),(17,'Grace King P4','402 Pine St, CityD','444-444-0402','p4cand2@example.com',2,4),(18,'Samuel Wright P4','403 Pine St, CityD','444-444-0403','p4cand3@example.com',3,4),(19,'Chloe Scott P4','404 Pine St, CityD','444-444-0404','p4cand4@example.com',4,4),(20,'Ethan Green P4','405 Pine St, CityD','444-444-0405','p4cand5@example.com',5,4),(21,'Zoe Baker P5','501 Cedar St, CityE','555-555-0501','p5cand1@example.com',1,5),(22,'Liam Adams P5','502 Cedar St, CityE','555-555-0502','p5cand2@example.com',2,5),(23,'Ava Nelson P5','503 Cedar St, CityE','555-555-0503','p5cand3@example.com',3,5),(24,'Noah Carter P5','504 Cedar St, CityE','555-555-0504','p5cand4@example.com',4,5),(25,'Isabella Mitchell P5','505 Cedar St, CityE','555-555-0505','p5cand5@example.com',5,5);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `district` (
  `id` int NOT NULL AUTO_INCREMENT,
  `districtCode` varchar(20) DEFAULT NULL,
  `districtName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'74600','North Nazimabad'),(2,'74610','Gulshan-e-Iqbal'),(3,'74620','Clifton'),(4,'74630','Korangi'),(5,'74640','Malir');
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `election`
--

DROP TABLE IF EXISTS `election`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `election` (
  `id` int NOT NULL AUTO_INCREMENT,
  `electionName` varchar(50) NOT NULL,
  `electionDescription` varchar(200) DEFAULT NULL,
  `electionStartDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `electionEndDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `election`
--

LOCK TABLES `election` WRITE;
/*!40000 ALTER TABLE `election` DISABLE KEYS */;
INSERT INTO `election` VALUES (1,'City Mayor Elections','City Mayor Elections','2025-03-08 00:00:00','2025-03-27 00:00:00');
/*!40000 ALTER TABLE `election` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `party` (
  `id` int NOT NULL AUTO_INCREMENT,
  `partyName` varchar(50) NOT NULL,
  `partyEmail` varchar(50) DEFAULT NULL,
  `partyDescription` varchar(200) DEFAULT NULL,
  `electionId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `partyEmail` (`partyEmail`),
  KEY `fk_election` (`electionId`),
  CONSTRAINT `fk_election` FOREIGN KEY (`electionId`) REFERENCES `election` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` VALUES (1,'People’s Unity Party','pup@test.com','Description',1),(2,'NextGen Alliance','nga@test.com','Description',1),(3,'New Dawn Movement','ndm@test.com','Description',1),(4,'The Earth Guardians','eg@test.com','Description',1),(5,'Resilient Nation Movement','rnm@test.com','Description',1);
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voterId` int DEFAULT NULL,
  `candidateId` int DEFAULT NULL,
  `electionId` int DEFAULT NULL,
  `districtId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vote_voter` (`voterId`),
  KEY `fk_vote_candidate` (`candidateId`),
  KEY `fk_vote_election` (`electionId`),
  KEY `fk_vote_district` (`districtId`),
  CONSTRAINT `fk_vote_candidate` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`id`),
  CONSTRAINT `fk_vote_district` FOREIGN KEY (`districtId`) REFERENCES `district` (`id`),
  CONSTRAINT `fk_vote_election` FOREIGN KEY (`electionId`) REFERENCES `election` (`id`),
  CONSTRAINT `fk_vote_voter` FOREIGN KEY (`voterId`) REFERENCES `voter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (1,1,1,1,1),(2,2,1,1,1),(3,3,1,1,1),(4,4,6,1,1),(5,5,6,1,1),(6,6,11,1,1),(7,7,11,1,1),(8,8,16,1,1),(9,9,16,1,1),(10,10,16,1,1);
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `voterName` varchar(50) NOT NULL,
  `voterNic` varchar(20) NOT NULL,
  `voterEmail` varchar(50) NOT NULL,
  `voterPassword` varchar(20) NOT NULL,
  `voterPhone` varchar(15) DEFAULT NULL,
  `voterAddress` varchar(200) DEFAULT NULL,
  `voterHasVoted` tinyint(1) DEFAULT '0',
  `districtId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `voterNic` (`voterNic`),
  UNIQUE KEY `voterEmail` (`voterEmail`),
  KEY `fk_voter_district` (`districtId`),
  CONSTRAINT `fk_voter_district` FOREIGN KEY (`districtId`) REFERENCES `district` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` VALUES (1,'Sophia Mohammad','NIC-D1-001','sophia.mohammad_d1@example.com','pass123','111-111-0001','123 Main St, District 1',1,1),(2,'Alexander Johnson','NIC-D1-002','alexander.johnson_d1@example.com','pass123','111-111-0002','124 Main St, District 1',1,1),(3,'Emily Davis','NIC-D1-003','emily.davis_d1@example.com','pass123','111-111-0003','125 Main St, District 1',1,1),(4,'Olivia Martinez','NIC-D1-004','olivia.martinez_d1@example.com','pass123','111-111-0004','126 Main St, District 1',1,1),(5,'Liam Brown','NIC-D1-005','liam.brown_d1@example.com','pass123','111-111-0005','127 Main St, District 1',1,1),(6,'Noah Wilson','NIC-D1-006','noah.wilson_d1@example.com','pass123','111-111-0006','128 Main St, District 1',1,1),(7,'Emma Anderson','NIC-D1-007','emma.anderson_d1@example.com','pass123','111-111-0007','129 Main St, District 1',1,1),(8,'James Smith','NIC-D1-008','james.smith_d1@example.com','pass123','111-111-0008','130 Main St, District 1',1,1),(9,'Ava Patel','NIC-D1-009','ava.patel_d1@example.com','pass123','111-111-0009','131 Main St, District 1',1,1),(10,'Benjamin Lee','NIC-D1-010','benjamin.lee_d1@example.com','pass123','111-111-0010','132 Main St, District 1',1,1),(11,'Mia Jackson','NIC-D2-001','mia.jackson_d2@example.com','pass123','222-222-0001','201 Second St, District 2',0,2),(12,'William Garcia','NIC-D2-002','william.garcia_d2@example.com','pass123','222-222-0002','202 Second St, District 2',0,2),(13,'Chloe Martinez','NIC-D2-003','chloe.martinez_d2@example.com','pass123','222-222-0003','203 Second St, District 2',0,2),(14,'Ethan Miller','NIC-D2-004','ethan.miller_d2@example.com','pass123','222-222-0004','204 Second St, District 2',0,2),(15,'Isabella Rodriguez','NIC-D2-005','isabella.rodriguez_d2@example.com','pass123','222-222-0005','205 Second St, District 2',0,2),(16,'Jacob Hernandez','NIC-D2-006','jacob.hernandez_d2@example.com','pass123','222-222-0006','206 Second St, District 2',0,2),(17,'Charlotte Davis','NIC-D2-007','charlotte.davis_d2@example.com','pass123','222-222-0007','207 Second St, District 2',0,2),(18,'Michael Thompson','NIC-D2-008','michael.thompson_d2@example.com','pass123','222-222-0008','208 Second St, District 2',0,2),(19,'Amelia White','NIC-D2-009','amelia.white_d2@example.com','pass123','222-222-0009','209 Second St, District 2',0,2),(20,'Daniel Moore','NIC-D2-010','daniel.moore_d2@example.com','pass123','222-222-0010','210 Second St, District 2',0,2),(21,'Olivia Taylor','NIC-D3-001','olivia.taylor_d3@example.com','pass123','333-333-0001','301 Third St, District 3',0,3),(22,'Ethan Clark','NIC-D3-002','ethan.clark_d3@example.com','pass123','333-333-0002','302 Third St, District 3',0,3),(23,'Sophia Lewis','NIC-D3-003','sophia.lewis_d3@example.com','pass123','333-333-0003','303 Third St, District 3',0,3),(24,'Logan Robinson','NIC-D3-004','logan.robinson_d3@example.com','pass123','333-333-0004','304 Third St, District 3',0,3),(25,'Emma Walker','NIC-D3-005','emma.walker_d3@example.com','pass123','333-333-0005','305 Third St, District 3',0,3),(26,'Mason Hall','NIC-D3-006','mason.hall_d3@example.com','pass123','333-333-0006','306 Third St, District 3',0,3),(27,'Ava Allen','NIC-D3-007','ava.allen_d3@example.com','pass123','333-333-0007','307 Third St, District 3',0,3),(28,'Lucas Young','NIC-D3-008','lucas.young_d3@example.com','pass123','333-333-0008','308 Third St, District 3',0,3),(29,'Mia King','NIC-D3-009','mia.king_d3@example.com','pass123','333-333-0009','309 Third St, District 3',0,3),(30,'Noah Wright','NIC-D3-010','noah.wright_d3@example.com','pass123','333-333-0010','310 Third St, District 3',0,3),(31,'Isabella Scott','NIC-D4-001','isabella.scott_d4@example.com','pass123','444-444-0001','401 Fourth St, District 4',0,4),(32,'Benjamin Harris','NIC-D4-002','benjamin.harris_d4@example.com','pass123','444-444-0002','402 Fourth St, District 4',0,4),(33,'Mia Lewis','NIC-D4-003','mia.lewis_d4@example.com','pass123','444-444-0003','403 Fourth St, District 4',0,4),(34,'Logan Allen','NIC-D4-004','logan.allen_d4@example.com','pass123','444-444-0004','404 Fourth St, District 4',0,4),(35,'Emily Young','NIC-D4-005','emily.young_d4@example.com','pass123','444-444-0005','405 Fourth St, District 4',0,4),(36,'Jacob Hill','NIC-D4-006','jacob.hill_d4@example.com','pass123','444-444-0006','406 Fourth St, District 4',0,4),(37,'Chloe Adams','NIC-D4-007','chloe.adams_d4@example.com','pass123','444-444-0007','407 Fourth St, District 4',0,4),(38,'William Nelson','NIC-D4-008','william.nelson_d4@example.com','pass123','444-444-0008','408 Fourth St, District 4',0,4),(39,'Sophia Carter','NIC-D4-009','sophia.carter_d4@example.com','pass123','444-444-0009','409 Fourth St, District 4',0,4),(40,'Oliver Mitchell','NIC-D4-010','oliver.mitchell_d4@example.com','pass123','444-444-0010','410 Fourth St, District 4',0,4),(41,'Ava Turner','NIC-D5-001','ava.turner_d5@example.com','pass123','555-555-0001','501 Fifth St, District 5',0,5),(42,'Lucas Parker','NIC-D5-002','lucas.parker_d5@example.com','pass123','555-555-0002','502 Fifth St, District 5',0,5),(43,'Ella Evans','NIC-D5-003','ella.evans_d5@example.com','pass123','555-555-0003','503 Fifth St, District 5',0,5),(44,'Mason Edwards','NIC-D5-004','mason.edwards_d5@example.com','pass123','555-555-0004','504 Fifth St, District 5',0,5),(45,'Olivia Collins','NIC-D5-005','olivia.collins_d5@example.com','pass123','555-555-0005','505 Fifth St, District 5',0,5),(46,'Ethan Stewart','NIC-D5-006','ethan.stewart_d5@example.com','pass123','555-555-0006','506 Fifth St, District 5',0,5),(47,'Sophia Morris','NIC-D5-007','sophia.morris_d5@example.com','pass123','555-555-0007','507 Fifth St, District 5',0,5),(48,'Benjamin Rogers','NIC-D5-008','benjamin.rogers_d5@example.com','pass123','555-555-0008','508 Fifth St, District 5',0,5),(49,'Chloe Reed','NIC-D5-009','chloe.reed_d5@example.com','pass123','555-555-0009','509 Fifth St, District 5',0,5),(50,'Jacob Cook','NIC-D5-010','jacob.cook_d5@example.com','pass123','555-555-0010','510 Fifth St, District 5',0,5);
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-09 22:03:24
