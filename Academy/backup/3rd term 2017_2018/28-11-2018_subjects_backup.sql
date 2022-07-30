-- MySQL dump 10.13  Distrib 5.6.21, for Win32 (x86)
--
-- Host: localhost    Database: subjects
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `jss1a_3rd_term_agriculturalscience`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_agriculturalscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_agriculturalscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `AGR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_agriculturalscience`
--

LOCK TABLES `jss1a_3rd_term_agriculturalscience` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_agriculturalscience` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_agriculturalscience` VALUES (1,'ADEBAYO EMMANUEL ',9,8,3,20,55,75,'A1','3rd'),(2,'AMOS DAN ',7,10,8,25,36,61,'C4','8th'),(3,'DAVID WISDOM ',7,10,10,27,57,84,'A1','1st'),(4,'JACOB JEBLIGA ',3,1,3,7,15,22,'F9','17th'),(5,'FRIDAY HENRY EBUBE',9,10,10,29,53,82,'A1','2nd'),(6,'JOSEPH JOHN ',5,4,10,19,25,44,'E8','14th'),(7,'LIVINUS VICTOR ',8,9,10,27,43,70,'B2','6th'),(8,'NWANKO ISAAC ',9,5,10,24,50,74,'B2','5th'),(9,'EZEKIEL IBRAHIM EPHRAIM',5,3,3,11,35,46,'D7','12th'),(10,'BABALOLA AGNESS BIDEMI',5,6,10,21,33,54,'C6','11th'),(11,'DILIBE IFUNANYA ROSE',3,10,10,23,40,63,'C4','7th'),(12,'GABRIEL BLESSING ',3,2,3,8,29,37,'F9','15th'),(13,'ONWA ANGEL MMESOMA',8,8,10,26,49,75,'A1','3rd'),(14,'ONYEMA PASCHALINE ',4,3,10,17,29,46,'D7','12th'),(15,'ORJI PRECIOUS ',7,4,10,21,39,60,'C4','9th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',5,9,10,24,33,57,'C5','10th'),(18,'ERNEST INUWA ',2,1,10,13,21,34,'F9','16th');
/*!40000 ALTER TABLE `jss1a_3rd_term_agriculturalscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_basicscience`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_basicscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_basicscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BSC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_basicscience`
--

LOCK TABLES `jss1a_3rd_term_basicscience` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_basicscience` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_basicscience` VALUES (1,'ADEBAYO EMMANUEL ',7,6,10,23,52,75,'A1','10th'),(2,'AMOS DAN ',10,10,5,25,58,83,'A1','6th'),(3,'DAVID WISDOM ',8,10,10,28,65,93,'A1','1st'),(4,'JACOB JEBLIGA ',3,2,2,7,23,30,'F9','17th'),(5,'FRIDAY HENRY EBUBE',10,10,10,30,63,93,'A1','1st'),(6,'JOSEPH JOHN ',8,5,4,17,50,67,'B3','15th'),(7,'LIVINUS VICTOR ',10,10,10,30,56,86,'A1','3rd'),(8,'NWANKO ISAAC ',7,5,6,18,57,75,'A1','10th'),(9,'EZEKIEL IBRAHIM EPHRAIM',5,8,7,20,55,75,'A1','10th'),(10,'BABALOLA AGNESS BIDEMI',3,4,6,13,55,68,'B3','13th'),(11,'DILIBE IFUNANYA ROSE',7,6,4,17,61,78,'A1','8th'),(12,'GABRIEL BLESSING ',5,6,9,20,48,68,'B3','13th'),(13,'ONWA ANGEL MMESOMA',10,10,10,30,54,84,'A1','4th'),(14,'ONYEMA PASCHALINE ',5,5,4,14,58,72,'B2','12th'),(15,'ORJI PRECIOUS ',9,6,5,20,64,84,'A1','4th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',8,5,10,23,56,79,'A1','7th'),(18,'ERNEST INUWA ',2,5,4,11,28,39,'F9','16th');
/*!40000 ALTER TABLE `jss1a_3rd_term_basicscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_basictechnology`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_basictechnology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_basictechnology` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_basictechnology`
--

LOCK TABLES `jss1a_3rd_term_basictechnology` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_basictechnology` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_basictechnology` VALUES (1,'ADEBAYO EMMANUEL ',2,10,10,22,50,72,'B2','1st'),(2,'AMOS DAN ',2,10,10,22,44,66,'B3','4th'),(3,'DAVID WISDOM ',2,10,10,22,50,72,'B2','1st'),(4,'JACOB JEBLIGA ',2,10,10,22,17,39,'F9','16th'),(5,'FRIDAY HENRY EBUBE',6,10,10,26,33,59,'C5','6th'),(6,'JOSEPH JOHN ',2,10,10,22,25,47,'D7','11th'),(7,'LIVINUS VICTOR ',2,10,10,22,37,59,'C5','6th'),(8,'NWANKO ISAAC ',2,10,10,22,44,66,'B3','4th'),(9,'EZEKIEL IBRAHIM EPHRAIM',2,10,10,22,26,48,'D7','10th'),(10,'BABALOLA AGNESS BIDEMI',2,10,10,22,37,59,'C5','6th'),(11,'DILIBE IFUNANYA ROSE',2,10,10,22,25,47,'D7','11th'),(12,'GABRIEL BLESSING ',2,7,10,19,25,44,'E8','14th'),(13,'ONWA ANGEL MMESOMA',5,0,10,15,29,44,'E8','14th'),(14,'ONYEMA PASCHALINE ',2,0,10,12,33,45,'D7','13th'),(15,'ORJI PRECIOUS ',2,0,10,12,47,59,'C5','6th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',2,10,10,22,47,69,'B3','3rd'),(18,'ERNEST INUWA ',2,8,10,20,18,38,'F9','17th');
/*!40000 ALTER TABLE `jss1a_3rd_term_basictechnology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_businessstudies`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_businessstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_businessstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BSD_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_businessstudies`
--

LOCK TABLES `jss1a_3rd_term_businessstudies` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_businessstudies` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_businessstudies` VALUES (1,'ADEBAYO EMMANUEL ',7,9,8,24,45,69,'B3','6th'),(2,'AMOS DAN ',7,8,5,20,68,88,'A1','1st'),(3,'DAVID WISDOM ',9,8,8,25,53,78,'A1','3rd'),(4,'JACOB JEBLIGA ',1,1,8,10,18,28,'F9','17th'),(5,'FRIDAY HENRY EBUBE',9,8,5,22,58,80,'A1','2nd'),(6,'JOSEPH JOHN ',3,4,8,15,21,36,'F9','16th'),(7,'LIVINUS VICTOR ',7,3,8,18,43,61,'C4','7th'),(8,'NWANKO ISAAC ',5,4,8,17,40,57,'C5','8th'),(9,'EZEKIEL IBRAHIM EPHRAIM',5,2,6,13,28,41,'E8','14th'),(10,'BABALOLA AGNESS BIDEMI',4,3,7,14,32,46,'D7','12th'),(11,'DILIBE IFUNANYA ROSE',7,1,5,13,43,56,'C5','9th'),(12,'GABRIEL BLESSING ',4,1,5,10,36,46,'D7','12th'),(13,'ONWA ANGEL MMESOMA',4,8,5,17,57,74,'B2','5th'),(14,'ONYEMA PASCHALINE ',4,2,8,14,34,48,'D7','11th'),(15,'ORJI PRECIOUS ',10,8,8,26,51,77,'A1','4th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',7,8,5,20,33,53,'C6','10th'),(18,'ERNEST INUWA ',3,3,8,14,24,38,'F9','15th');
/*!40000 ALTER TABLE `jss1a_3rd_term_businessstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_christianreligiousstudies`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_christianreligiousstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_christianreligiousstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CRS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_christianreligiousstudies`
--

LOCK TABLES `jss1a_3rd_term_christianreligiousstudies` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_christianreligiousstudies` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_christianreligiousstudies` VALUES (1,'ADEBAYO EMMANUEL ',8,6,10,24,38,62,'C4','10th'),(2,'AMOS DAN ',8,8,10,26,47,73,'B2','4th'),(3,'DAVID WISDOM ',8,10,10,28,49,77,'A1','3rd'),(4,'JACOB JEBLIGA ',10,1,8,19,20,39,'F9','16th'),(5,'FRIDAY HENRY EBUBE',9,10,10,29,51,80,'A1','2nd'),(6,'JOSEPH JOHN ',7,10,4,21,27,48,'D7','15th'),(7,'LIVINUS VICTOR ',9,10,10,29,40,69,'B3','5th'),(8,'NWANKO ISAAC ',7,7,10,24,59,83,'A1','1st'),(9,'EZEKIEL IBRAHIM EPHRAIM',8,4,10,22,38,60,'C4','12th'),(10,'BABALOLA AGNESS BIDEMI',5,6,10,21,29,50,'C6','14th'),(11,'DILIBE IFUNANYA ROSE',9,3,10,22,45,67,'B3','6th'),(12,'GABRIEL BLESSING ',9,3,10,22,32,54,'C6','13th'),(13,'ONWA ANGEL MMESOMA',8,7,10,25,36,61,'C4','11th'),(14,'ONYEMA PASCHALINE ',9,10,7,26,38,64,'C4','9th'),(15,'ORJI PRECIOUS ',9,4,10,23,42,65,'B3','8th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',7,3,10,20,46,66,'B3','7th'),(18,'ERNEST INUWA ',5,5,10,20,19,39,'F9','16th');
/*!40000 ALTER TABLE `jss1a_3rd_term_christianreligiousstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_civiceducation`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_civiceducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_civiceducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CIV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_civiceducation`
--

LOCK TABLES `jss1a_3rd_term_civiceducation` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_civiceducation` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_civiceducation` VALUES (1,'ADEBAYO EMMANUEL ',10,4,5,19,43,62,'C4','8th'),(2,'AMOS DAN ',1,8,5,14,60,74,'B2','6th'),(3,'DAVID WISDOM ',10,10,6,26,69,95,'A1','1st'),(4,'JACOB JEBLIGA ',7,1,5,13,32,45,'D7','13th'),(5,'FRIDAY HENRY EBUBE',10,9,5,24,45,69,'B3','7th'),(6,'JOSEPH JOHN ',10,2,5,17,25,42,'E8','16th'),(7,'LIVINUS VICTOR ',10,5,9,24,52,76,'A1','4th'),(8,'NWANKO ISAAC ',10,9,5,24,54,78,'A1','2nd'),(9,'EZEKIEL IBRAHIM EPHRAIM',1,4,5,10,36,46,'D7','10th'),(10,'BABALOLA AGNESS BIDEMI',1,4,5,10,36,46,'D7','10th'),(11,'DILIBE IFUNANYA ROSE',1,6,5,12,32,44,'E8','14th'),(12,'GABRIEL BLESSING ',1,7,5,13,27,40,'E8','17th'),(13,'ONWA ANGEL MMESOMA',10,6,5,21,38,59,'C5','9th'),(14,'ONYEMA PASCHALINE ',1,4,5,10,33,43,'E8','15th'),(15,'ORJI PRECIOUS ',10,10,5,25,52,77,'A1','3rd'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',10,6,5,21,55,76,'A1','4th'),(18,'ERNEST INUWA ',10,1,5,16,30,46,'D7','10th');
/*!40000 ALTER TABLE `jss1a_3rd_term_civiceducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_computerstudies`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_computerstudies`
--

LOCK TABLES `jss1a_3rd_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_computerstudies` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_computerstudies` VALUES (1,'ADEBAYO EMMANUEL ',6,1,5,12,48,60,'C4','10th'),(2,'AMOS DAN ',9,7,5,21,61,82,'A1','1st'),(3,'DAVID WISDOM ',3,2,5,10,51,61,'C4','8th'),(4,'JACOB JEBLIGA ',4,1,5,10,27,37,'F9','16th'),(5,'FRIDAY HENRY EBUBE',9,1,8,18,63,81,'A1','2nd'),(6,'JOSEPH JOHN ',3,1,8,12,51,63,'C4','6th'),(7,'LIVINUS VICTOR ',9,7,8,24,52,76,'A1','3rd'),(8,'NWANKO ISAAC ',4,1,8,13,51,64,'C4','4th'),(9,'EZEKIEL IBRAHIM EPHRAIM',7,1,7,15,39,54,'C6','13th'),(10,'BABALOLA AGNESS BIDEMI',2,1,8,11,41,52,'C6','14th'),(11,'DILIBE IFUNANYA ROSE',5,1,5,11,50,61,'C4','8th'),(12,'GABRIEL BLESSING ',2,1,5,8,47,55,'C5','12th'),(13,'ONWA ANGEL MMESOMA',4,3,8,15,47,62,'C4','7th'),(14,'ONYEMA PASCHALINE ',2,1,8,11,40,51,'C6','15th'),(15,'ORJI PRECIOUS ',3,1,8,12,52,64,'C4','4th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',4,3,7,14,42,56,'C5','11th'),(18,'ERNEST INUWA ',2,1,7,10,24,34,'F9','17th');
/*!40000 ALTER TABLE `jss1a_3rd_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_creativeart`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_creativeart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_creativeart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CAT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_creativeart`
--

LOCK TABLES `jss1a_3rd_term_creativeart` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_creativeart` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_creativeart` VALUES (1,'ADEBAYO EMMANUEL ',5,4,8,17,49,66,'B3','6th'),(2,'AMOS DAN ',2,0,0,2,32,34,'F9','16th'),(3,'DAVID WISDOM ',9,6,9,24,60,84,'A1','1st'),(4,'JACOB JEBLIGA ',2,1,7,10,23,33,'F9','17th'),(5,'FRIDAY HENRY EBUBE',8,6,9,23,52,75,'A1','3rd'),(6,'JOSEPH JOHN ',2,4,8,14,26,40,'E8','14th'),(7,'LIVINUS VICTOR ',3,7,9,19,46,65,'B3','7th'),(8,'NWANKO ISAAC ',2,2,8,12,34,46,'D7','11th'),(9,'EZEKIEL IBRAHIM EPHRAIM',2,4,3,9,33,42,'E8','13th'),(10,'BABALOLA AGNESS BIDEMI',2,2,8,12,34,46,'D7','11th'),(11,'DILIBE IFUNANYA ROSE',8,4,3,15,47,62,'C4','8th'),(12,'GABRIEL BLESSING ',2,2,7,11,26,37,'F9','15th'),(13,'ONWA ANGEL MMESOMA',8,6,9,23,59,82,'A1','2nd'),(14,'ONYEMA PASCHALINE ',2,6,3,11,40,51,'C6','9th'),(15,'ORJI PRECIOUS ',2,4,3,9,61,70,'B2','5th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',8,5,9,22,52,74,'B2','4th'),(18,'ERNEST INUWA ',6,5,8,19,28,47,'D7','10th');
/*!40000 ALTER TABLE `jss1a_3rd_term_creativeart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_englishlanguage`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_englishlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_englishlanguage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ENG_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_englishlanguage`
--

LOCK TABLES `jss1a_3rd_term_englishlanguage` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_englishlanguage` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_englishlanguage` VALUES (1,'ADEBAYO EMMANUEL ',8,10,7,25,34,59,'C5','5th'),(2,'AMOS DAN ',6,9,7,22,35,57,'C5','8th'),(3,'DAVID WISDOM ',8,6,7,21,40,61,'C4','4th'),(4,'JACOB JEBLIGA ',2,1,5,8,8,16,'F9','17th'),(5,'FRIDAY HENRY EBUBE',9,6,7,22,43,65,'B3','2nd'),(6,'JOSEPH JOHN ',5,5,6,16,25,41,'E8','14th'),(7,'LIVINUS VICTOR ',9,8,7,24,39,63,'C4','3rd'),(8,'NWANKO ISAAC ',5,9,5,19,28,47,'D7','12th'),(9,'EZEKIEL IBRAHIM EPHRAIM',5,3,5,13,24,37,'F9','15th'),(10,'BABALOLA AGNESS BIDEMI',5,1,7,13,29,42,'E8','13th'),(11,'DILIBE IFUNANYA ROSE',7,6,5,18,38,56,'C5','10th'),(12,'GABRIEL BLESSING ',7,8,6,21,38,59,'C5','5th'),(13,'ONWA ANGEL MMESOMA',8,9,7,24,43,67,'B3','1st'),(14,'ONYEMA PASCHALINE ',5,8,5,18,33,51,'C6','11th'),(15,'ORJI PRECIOUS ',6,7,7,20,38,58,'C5','7th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',7,8,7,22,35,57,'C5','8th'),(18,'ERNEST INUWA ',8,3,5,16,21,37,'F9','15th');
/*!40000 ALTER TABLE `jss1a_3rd_term_englishlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_homeeconomics`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_homeeconomics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_homeeconomics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `HEC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_homeeconomics`
--

LOCK TABLES `jss1a_3rd_term_homeeconomics` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_homeeconomics` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_homeeconomics` VALUES (1,'ADEBAYO EMMANUEL ',5,6,7,18,52,70,'B2','3rd'),(2,'AMOS DAN ',2,4,3,9,46,55,'C5','6th'),(3,'DAVID WISDOM ',7,8,9,24,44,68,'B3','4th'),(4,'JACOB JEBLIGA ',1,1,1,3,22,25,'F9','16th'),(5,'FRIDAY HENRY EBUBE',7,6,9,22,52,74,'B2','2nd'),(6,'JOSEPH JOHN ',1,1,9,11,22,33,'F9','14th'),(7,'LIVINUS VICTOR ',5,6,9,20,44,64,'C4','5th'),(8,'NWANKO ISAAC ',6,6,8,20,28,48,'D7','7th'),(9,'EZEKIEL IBRAHIM EPHRAIM',1,1,2,4,26,30,'F9','15th'),(10,'BABALOLA AGNESS BIDEMI',6,7,3,16,32,48,'D7','7th'),(11,'DILIBE IFUNANYA ROSE',1,1,2,4,34,38,'F9','12th'),(12,'GABRIEL BLESSING ',5,6,1,12,26,38,'F9','12th'),(13,'ONWA ANGEL MMESOMA',5,6,9,20,56,76,'A1','1st'),(14,'ONYEMA PASCHALINE ',1,1,1,3,36,39,'F9','10th'),(15,'ORJI PRECIOUS ',5,5,7,17,27,44,'E8','9th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',5,6,1,12,27,39,'F9','10th'),(18,'ERNEST INUWA ',1,1,8,10,12,22,'F9','17th');
/*!40000 ALTER TABLE `jss1a_3rd_term_homeeconomics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_mathematics`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_mathematics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_mathematics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `MTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_mathematics`
--

LOCK TABLES `jss1a_3rd_term_mathematics` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_mathematics` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_mathematics` VALUES (1,'ADEBAYO EMMANUEL ',1,1,6,8,31,39,'F9','6th'),(2,'AMOS DAN ',1,1,7,9,31,40,'E8','5th'),(3,'DAVID WISDOM ',8,7,9,24,52,76,'A1','1st'),(4,'JACOB JEBLIGA ',0,1,1,2,8,10,'F9','17th'),(5,'FRIDAY HENRY EBUBE',3,3,8,14,35,49,'D7','3rd'),(6,'JOSEPH JOHN ',1,2,8,11,16,27,'F9','11th'),(7,'LIVINUS VICTOR ',2,3,9,14,22,36,'F9','8th'),(8,'NWANKO ISAAC ',0,4,8,12,17,29,'F9','10th'),(9,'EZEKIEL IBRAHIM EPHRAIM',0,1,1,2,11,13,'F9','14th'),(10,'BABALOLA AGNESS BIDEMI',1,1,5,7,32,39,'F9','6th'),(11,'DILIBE IFUNANYA ROSE',3,2,1,6,21,27,'F9','11th'),(12,'GABRIEL BLESSING ',3,2,1,6,19,25,'F9','13th'),(13,'ONWA ANGEL MMESOMA',3,6,9,18,23,41,'E8','4th'),(14,'ONYEMA PASCHALINE ',1,0,1,2,11,13,'F9','14th'),(15,'ORJI PRECIOUS ',6,2,6,14,15,29,'F9','10th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',8,2,5,15,39,54,'C6','2nd'),(18,'ERNEST INUWA ',1,0,1,2,10,12,'F9','16th');
/*!40000 ALTER TABLE `jss1a_3rd_term_mathematics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_physicalandhealtheducation`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_physicalandhealtheducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_physicalandhealtheducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `PHE_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_physicalandhealtheducation`
--

LOCK TABLES `jss1a_3rd_term_physicalandhealtheducation` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_physicalandhealtheducation` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_physicalandhealtheducation` VALUES (1,'ADEBAYO EMMANUEL ',7,5,10,22,50,72,'B2','7th'),(2,'AMOS DAN ',9,2,7,18,50,68,'B3','8th'),(3,'DAVID WISDOM ',10,8,10,28,55,83,'A1','1st'),(4,'JACOB JEBLIGA ',3,2,8,13,20,33,'F9','17th'),(5,'FRIDAY HENRY EBUBE',10,4,10,24,52,76,'A1','5th'),(6,'JOSEPH JOHN ',6,6,10,22,43,65,'B3','10th'),(7,'LIVINUS VICTOR ',7,8,10,25,54,79,'A1','2nd'),(8,'NWANKO ISAAC ',9,5,10,24,53,77,'A1','4th'),(9,'EZEKIEL IBRAHIM EPHRAIM',7,8,10,25,48,73,'B2','6th'),(10,'BABALOLA AGNESS BIDEMI',7,5,10,22,41,63,'C4','11th'),(11,'DILIBE IFUNANYA ROSE',3,2,10,15,30,45,'D7','15th'),(12,'GABRIEL BLESSING ',6,7,8,21,37,58,'C5','12th'),(13,'ONWA ANGEL MMESOMA',5,5,4,14,39,53,'C6','14th'),(14,'ONYEMA PASCHALINE ',7,9,4,20,45,65,'B3','10th'),(15,'ORJI PRECIOUS ',6,6,10,22,34,56,'C5','13th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',7,7,10,24,55,79,'A1','2nd'),(18,'ERNEST INUWA ',5,3,10,18,18,36,'F9','16th');
/*!40000 ALTER TABLE `jss1a_3rd_term_physicalandhealtheducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_socialstudies`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_socialstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_socialstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `STD_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_socialstudies`
--

LOCK TABLES `jss1a_3rd_term_socialstudies` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_socialstudies` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_socialstudies` VALUES (1,'ADEBAYO EMMANUEL ',10,10,7,27,57,84,'A1','4th'),(2,'AMOS DAN ',6,8,3,17,49,66,'B3','11th'),(3,'DAVID WISDOM ',8,10,7,25,61,86,'A1','3rd'),(4,'JACOB JEBLIGA ',3,2,7,12,30,42,'E8','16th'),(5,'FRIDAY HENRY EBUBE',9,10,10,29,66,95,'A1','1st'),(6,'JOSEPH JOHN ',5,5,9,19,49,68,'B3','9th'),(7,'LIVINUS VICTOR ',9,10,10,29,65,94,'A1','2nd'),(8,'NWANKO ISAAC ',8,10,6,24,52,76,'A1','6th'),(9,'EZEKIEL IBRAHIM EPHRAIM',3,3,7,13,35,48,'D7','15th'),(10,'BABALOLA AGNESS BIDEMI',4,6,7,17,48,65,'B3','12th'),(11,'DILIBE IFUNANYA ROSE',6,10,3,19,52,71,'B2','7th'),(12,'GABRIEL BLESSING ',7,3,3,13,43,56,'C5','14th'),(13,'ONWA ANGEL MMESOMA',5,9,6,20,61,81,'A1','5th'),(14,'ONYEMA PASCHALINE ',5,5,3,13,44,57,'C5','13th'),(15,'ORJI PRECIOUS ',5,7,7,19,50,69,'B3','8th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',8,7,4,19,48,67,'B3','10th'),(18,'ERNEST INUWA ',3,4,4,11,30,41,'E8','17th');
/*!40000 ALTER TABLE `jss1a_3rd_term_socialstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_technicaldrawing`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_technicaldrawing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_technicaldrawing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `TDR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_technicaldrawing`
--

LOCK TABLES `jss1a_3rd_term_technicaldrawing` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_technicaldrawing` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_technicaldrawing` VALUES (1,'ADEBAYO EMMANUEL ',2,2,5,9,40,49,'D7','4th'),(2,'AMOS DAN ',2,2,5,9,34,43,'E8','10th'),(3,'DAVID WISDOM ',2,2,5,9,45,54,'C6','2nd'),(4,'JACOB JEBLIGA ',2,2,5,9,23,32,'F9','16th'),(5,'FRIDAY HENRY EBUBE',2,2,5,9,40,49,'D7','4th'),(6,'JOSEPH JOHN ',2,2,5,9,39,48,'D7','6th'),(7,'LIVINUS VICTOR ',2,2,5,9,44,53,'C6','3rd'),(8,'NWANKO ISAAC ',2,2,5,9,32,41,'E8','11th'),(9,'EZEKIEL IBRAHIM EPHRAIM',2,2,5,9,39,48,'D7','6th'),(10,'BABALOLA AGNESS BIDEMI',2,2,5,9,25,34,'F9','14th'),(11,'DILIBE IFUNANYA ROSE',2,2,5,9,25,34,'F9','14th'),(12,'GABRIEL BLESSING ',2,2,5,9,30,39,'F9','13th'),(13,'ONWA ANGEL MMESOMA',2,2,5,9,53,62,'C4','1st'),(14,'ONYEMA PASCHALINE ',2,2,5,9,35,44,'E8','9th'),(15,'ORJI PRECIOUS ',2,2,5,9,32,41,'E8','11th'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'','18th'),(17,'EJIKEME MARVELOUS ',2,2,5,9,39,48,'D7','6th'),(18,'ERNEST INUWA ',2,2,5,9,18,27,'F9','17th');
/*!40000 ALTER TABLE `jss1a_3rd_term_technicaldrawing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term_woodwork`
--

DROP TABLE IF EXISTS `jss1a_3rd_term_woodwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term_woodwork` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `WOW_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term_woodwork`
--

LOCK TABLES `jss1a_3rd_term_woodwork` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term_woodwork` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term_woodwork` VALUES (1,'ADEBAYO EMMANUEL ',3,3,10,16,32,48,'D7','10th'),(2,'AMOS DAN ',3,3,10,16,65,81,'A1','3rd'),(3,'DAVID WISDOM ',3,3,10,16,60,76,'A1','4th'),(4,'JACOB JEBLIGA ',3,3,10,16,10,26,'F9','17th'),(5,'FRIDAY HENRY EBUBE',3,3,10,16,57,73,'B2','5th'),(6,'JOSEPH JOHN ',3,3,10,16,20,36,'F9','15th'),(7,'LIVINUS VICTOR ',3,3,10,16,70,86,'A1','1st'),(8,'NWANKO ISAAC ',3,3,10,16,20,36,'F9','15th'),(9,'EZEKIEL IBRAHIM EPHRAIM',3,3,10,16,25,41,'E8','14th'),(10,'BABALOLA AGNESS BIDEMI',3,3,10,16,47,63,'C4','7th'),(11,'DILIBE IFUNANYA ROSE',3,3,10,16,29,45,'D7','12th'),(12,'GABRIEL BLESSING ',3,3,10,16,27,43,'E8','13th'),(13,'ONWA ANGEL MMESOMA',3,3,10,16,50,66,'B3','6th'),(14,'ONYEMA PASCHALINE ',3,3,10,16,30,46,'D7','11th'),(15,'ORJI PRECIOUS ',3,3,10,16,69,85,'A1','2nd'),(16,'YAKUBU MERCY ',0,0,0,0,0,0,'F9','18th'),(17,'EJIKEME MARVELOUS ',3,3,10,16,36,52,'C6','9th'),(18,'ERNEST INUWA ',3,3,10,16,44,60,'C4','8th');
/*!40000 ALTER TABLE `jss1a_3rd_term_woodwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_agriculturalscience`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_agriculturalscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_agriculturalscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `AGR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_agriculturalscience`
--

LOCK TABLES `jss1b_3rd_term_agriculturalscience` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_agriculturalscience` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_agriculturalscience` VALUES (1,'AKPAN RIGHTEOUSNESS ',9,10,10,29,60,89,'A1','1st'),(2,'ALHASSAN ISTIFANUS ',8,9,10,27,45,72,'B2','2nd'),(3,'CHUKWU CHRISTIAN ',2,1,10,13,12,25,'F9','17th'),(4,'EBERE CHINONSO ',3,3,10,16,24,40,'E8','13th'),(5,'EDISON AMSONOM ',3,1,3,7,15,22,'F9','18th'),(6,'JAMES  ENDURANCE ',6,7,5,18,38,56,'C5','9th'),(7,'LAZARUS IKECHUKWU ',3,2,10,15,26,41,'E8','12th'),(8,'MICHAEL VICTOR ',9,8,10,27,31,58,'C5','6th'),(9,'OGUEJIOFOR EBUKA ',6,8,10,24,37,61,'C4','5th'),(10,'RICHARD TIMOTHY ',1,1,4,6,5,11,'F9','19th'),(11,'YAKUBU REUBEN ',2,2,10,14,20,34,'F9','14th'),(12,'ISAAC MICHAEL ',4,3,10,17,9,26,'F9','16th'),(13,'ANEKE VICTORIA ',6,5,10,21,34,55,'C5','10th'),(14,'CHINWUBA EBUBE ',6,10,10,26,37,63,'C4','4th'),(15,'HASKAINU BILWA ',5,2,10,17,30,47,'D7','11th'),(16,'JACOB HANNATU ',7,4,10,21,37,58,'C5','6th'),(17,'NWOBI MARVELOUS IFUNANYA',5,10,10,25,42,67,'B3','3rd'),(18,'OSUJI JUDITH CHINAZA',4,4,3,11,19,30,'F9','15th'),(19,'DOZIE REJOICE CHIAMAKA',3,9,10,22,35,57,'C5','8th');
/*!40000 ALTER TABLE `jss1b_3rd_term_agriculturalscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_basicscience`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_basicscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_basicscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BSC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_basicscience`
--

LOCK TABLES `jss1b_3rd_term_basicscience` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_basicscience` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_basicscience` VALUES (1,'AKPAN RIGHTEOUSNESS ',3,10,10,23,53,76,'A1','7th'),(2,'ALHASSAN ISTIFANUS ',8,9,10,27,60,87,'A1','4th'),(3,'CHUKWU CHRISTIAN ',3,2,5,10,0,10,'F9','19th'),(4,'EBERE CHINONSO ',5,5,10,20,36,56,'C5','13th'),(5,'EDISON AMSONOM ',7,9,3,19,17,36,'F9','16th'),(6,'JAMES  ENDURANCE ',7,5,6,18,47,65,'B3','8th'),(7,'LAZARUS IKECHUKWU ',3,1,5,9,34,43,'E8','15th'),(8,'MICHAEL VICTOR ',7,9,5,21,40,61,'C4','11th'),(9,'OGUEJIOFOR EBUKA ',9,8,4,21,61,82,'A1','5th'),(10,'RICHARD TIMOTHY ',3,1,4,8,9,17,'F9','18th'),(11,'YAKUBU REUBEN ',1,3,10,14,17,31,'F9','17th'),(12,'ISAAC MICHAEL ',3,4,6,13,40,53,'C6','14th'),(13,'ANEKE VICTORIA ',5,5,3,13,50,63,'C4','9th'),(14,'CHINWUBA EBUBE ',10,10,7,27,64,91,'A1','2nd'),(15,'HASKAINU BILWA ',7,4,10,21,57,78,'A1','6th'),(16,'JACOB HANNATU ',3,5,10,18,44,62,'C4','10th'),(17,'NWOBI MARVELOUS IFUNANYA',10,10,10,30,66,96,'A1','1st'),(18,'OSUJI JUDITH CHINAZA',5,5,10,20,38,58,'C5','12th'),(19,'DOZIE REJOICE CHIAMAKA',5,8,10,23,65,88,'A1','3rd');
/*!40000 ALTER TABLE `jss1b_3rd_term_basicscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_basictechnology`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_basictechnology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_basictechnology` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_basictechnology`
--

LOCK TABLES `jss1b_3rd_term_basictechnology` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_basictechnology` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_basictechnology` VALUES (1,'AKPAN RIGHTEOUSNESS ',2,10,0,12,60,72,'B2','1st'),(2,'ALHASSAN ISTIFANUS ',2,0,10,12,49,61,'C4','3rd'),(3,'CHUKWU CHRISTIAN ',0,10,10,20,15,35,'F9','13th'),(4,'EBERE CHINONSO ',2,10,10,22,27,49,'D7','7th'),(5,'EDISON AMSONOM ',0,0,10,10,17,27,'F9','17th'),(6,'JAMES  ENDURANCE ',2,0,10,12,20,32,'F9','16th'),(7,'LAZARUS IKECHUKWU ',2,10,10,22,14,36,'F9','12th'),(8,'MICHAEL VICTOR ',2,10,10,22,31,53,'C6','6th'),(9,'OGUEJIOFOR EBUKA ',2,10,10,22,33,55,'C5','5th'),(10,'RICHARD TIMOTHY ',0,0,10,10,12,22,'F9','19th'),(11,'YAKUBU REUBEN ',2,0,10,12,15,27,'F9','17th'),(12,'ISAAC MICHAEL ',2,8,10,20,21,41,'E8','11th'),(13,'ANEKE VICTORIA ',2,0,10,12,21,33,'F9','15th'),(14,'CHINWUBA EBUBE ',2,0,10,12,34,46,'D7','10th'),(15,'HASKAINU BILWA ',2,10,10,22,38,60,'C4','4th'),(16,'JACOB HANNATU ',2,10,10,22,24,46,'D7','10th'),(17,'NWOBI MARVELOUS IFUNANYA',2,10,10,22,45,67,'B3','2nd'),(18,'OSUJI JUDITH CHINAZA',0,7,10,17,18,35,'F9','13th'),(19,'DOZIE REJOICE CHIAMAKA',2,10,10,22,24,46,'D7','10th');
/*!40000 ALTER TABLE `jss1b_3rd_term_basictechnology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_businessstudies`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_businessstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_businessstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BSD_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_businessstudies`
--

LOCK TABLES `jss1b_3rd_term_businessstudies` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_businessstudies` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_businessstudies` VALUES (1,'AKPAN RIGHTEOUSNESS ',4,8,9,21,55,76,'A1','2nd'),(2,'ALHASSAN ISTIFANUS ',7,4,8,19,50,69,'B3','4th'),(3,'CHUKWU CHRISTIAN ',2,0,8,10,25,35,'F9','13th'),(4,'EBERE CHINONSO ',5,1,5,11,35,46,'D7','9th'),(5,'EDISON AMSONOM ',1,1,5,7,11,18,'F9','19th'),(6,'JAMES  ENDURANCE ',8,3,8,19,28,47,'D7','8th'),(7,'LAZARUS IKECHUKWU ',5,0,7,12,26,38,'F9','12th'),(8,'MICHAEL VICTOR ',4,4,8,16,25,41,'E8','10th'),(9,'OGUEJIOFOR EBUKA ',5,5,9,19,39,58,'C5','6th'),(10,'RICHARD TIMOTHY ',1,1,5,7,13,20,'F9','18th'),(11,'YAKUBU REUBEN ',2,1,7,10,22,32,'F9','15th'),(12,'ISAAC MICHAEL ',3,0,5,8,24,32,'F9','15th'),(13,'ANEKE VICTORIA ',5,1,5,11,23,34,'F9','14th'),(14,'CHINWUBA EBUBE ',7,7,9,23,48,71,'B2','3rd'),(15,'HASKAINU BILWA ',5,4,8,17,31,48,'D7','7th'),(16,'JACOB HANNATU ',3,1,8,12,28,40,'E8','11th'),(17,'NWOBI MARVELOUS IFUNANYA',7,9,9,25,58,83,'A1','1st'),(18,'OSUJI JUDITH CHINAZA',1,1,8,10,21,31,'F9','17th'),(19,'DOZIE REJOICE CHIAMAKA',4,6,8,18,46,64,'C4','5th');
/*!40000 ALTER TABLE `jss1b_3rd_term_businessstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_christianreligiousstudies`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_christianreligiousstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_christianreligiousstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CRS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_christianreligiousstudies`
--

LOCK TABLES `jss1b_3rd_term_christianreligiousstudies` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_christianreligiousstudies` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_christianreligiousstudies` VALUES (1,'AKPAN RIGHTEOUSNESS ',10,10,10,30,55,85,'A1','1st'),(2,'ALHASSAN ISTIFANUS ',7,7,10,24,48,72,'B2','3rd'),(3,'CHUKWU CHRISTIAN ',7,3,10,20,26,46,'D7','12th'),(4,'EBERE CHINONSO ',9,7,10,26,25,51,'C6','10th'),(5,'EDISON AMSONOM ',4,1,1,6,20,26,'F9','18th'),(6,'JAMES  ENDURANCE ',7,5,10,22,41,63,'C4','5th'),(7,'LAZARUS IKECHUKWU ',8,1,10,19,22,41,'E8','13th'),(8,'MICHAEL VICTOR ',7,3,1,11,24,35,'F9','17th'),(9,'OGUEJIOFOR EBUKA ',8,4,10,22,41,63,'C4','5th'),(10,'RICHARD TIMOTHY ',1,1,6,8,10,18,'F9','19th'),(11,'YAKUBU REUBEN ',5,3,1,9,29,38,'F9','15th'),(12,'ISAAC MICHAEL ',8,3,10,21,20,41,'E8','13th'),(13,'ANEKE VICTORIA ',9,6,10,25,34,59,'C5','9th'),(14,'CHINWUBA EBUBE ',8,7,10,25,38,63,'C4','5th'),(15,'HASKAINU BILWA ',9,6,10,25,44,69,'B3','4th'),(16,'JACOB HANNATU ',7,2,10,19,31,50,'C6','11th'),(17,'NWOBI MARVELOUS IFUNANYA',10,10,10,30,50,80,'A1','2nd'),(18,'OSUJI JUDITH CHINAZA',1,4,10,15,22,37,'F9','16th'),(19,'DOZIE REJOICE CHIAMAKA',8,8,10,26,35,61,'C4','8th');
/*!40000 ALTER TABLE `jss1b_3rd_term_christianreligiousstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_civiceducation`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_civiceducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_civiceducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CIV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_civiceducation`
--

LOCK TABLES `jss1b_3rd_term_civiceducation` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_civiceducation` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_civiceducation` VALUES (1,'AKPAN RIGHTEOUSNESS ',10,10,6,26,65,91,'A1','1st'),(2,'ALHASSAN ISTIFANUS ',10,9,5,24,54,78,'A1','4th'),(3,'CHUKWU CHRISTIAN ',1,2,5,8,24,32,'F9','18th'),(4,'EBERE CHINONSO ',10,5,5,20,30,50,'C6','10th'),(5,'EDISON AMSONOM ',1,1,5,7,25,32,'F9','18th'),(6,'JAMES  ENDURANCE ',7,6,5,18,40,58,'C5','6th'),(7,'LAZARUS IKECHUKWU ',10,2,5,17,24,41,'E8','12th'),(8,'MICHAEL VICTOR ',10,9,5,24,30,54,'C6','7th'),(9,'OGUEJIOFOR EBUKA ',10,4,5,19,34,53,'C6','8th'),(10,'RICHARD TIMOTHY ',7,1,5,13,24,37,'F9','16th'),(11,'YAKUBU REUBEN ',1,5,5,11,23,34,'F9','17th'),(12,'ISAAC MICHAEL ',10,1,5,16,25,41,'E8','12th'),(13,'ANEKE VICTORIA ',1,6,5,12,29,41,'E8','12th'),(14,'CHINWUBA EBUBE ',10,10,5,25,64,89,'A1','3rd'),(15,'HASKAINU BILWA ',10,6,5,21,31,52,'C6','9th'),(16,'JACOB HANNATU ',7,9,5,21,45,66,'B3','5th'),(17,'NWOBI MARVELOUS IFUNANYA',10,10,5,25,65,90,'A1','2nd'),(18,'OSUJI JUDITH CHINAZA',7,7,5,19,25,44,'E8','11th'),(19,'DOZIE REJOICE CHIAMAKA',1,5,5,11,30,41,'E8','12th');
/*!40000 ALTER TABLE `jss1b_3rd_term_civiceducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_computerstudies`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_computerstudies`
--

LOCK TABLES `jss1b_3rd_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_computerstudies` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_computerstudies` VALUES (1,'AKPAN RIGHTEOUSNESS ',6,1,8,15,48,63,'C4','5th'),(2,'ALHASSAN ISTIFANUS ',9,6,8,23,50,73,'B2','2nd'),(3,'CHUKWU CHRISTIAN ',1,1,7,9,27,36,'F9','16th'),(4,'EBERE CHINONSO ',5,1,5,11,38,49,'D7','9th'),(5,'EDISON AMSONOM ',1,1,5,7,24,31,'F9','18th'),(6,'JAMES  ENDURANCE ',1,3,5,9,39,48,'D7','10th'),(7,'LAZARUS IKECHUKWU ',3,1,8,12,27,39,'F9','13th'),(8,'MICHAEL VICTOR ',3,1,5,9,24,33,'F9','17th'),(9,'OGUEJIOFOR EBUKA ',5,1,8,14,56,70,'B2','3rd'),(10,'RICHARD TIMOTHY ',1,1,5,7,14,21,'F9','19th'),(11,'YAKUBU REUBEN ',1,1,5,7,32,39,'F9','13th'),(12,'ISAAC MICHAEL ',2,1,8,11,37,48,'D7','10th'),(13,'ANEKE VICTORIA ',4,1,5,10,35,45,'D7','12th'),(14,'CHINWUBA EBUBE ',7,1,8,16,54,70,'B2','3rd'),(15,'HASKAINU BILWA ',4,1,8,13,47,60,'C4','6th'),(16,'JACOB HANNATU ',2,1,8,11,39,50,'C6','7th'),(17,'NWOBI MARVELOUS IFUNANYA',10,3,8,21,53,74,'B2','1st'),(18,'OSUJI JUDITH CHINAZA',1,1,8,10,29,39,'F9','13th'),(19,'DOZIE REJOICE CHIAMAKA',8,1,5,14,36,50,'C6','7th');
/*!40000 ALTER TABLE `jss1b_3rd_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_creativeart`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_creativeart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_creativeart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CAT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_creativeart`
--

LOCK TABLES `jss1b_3rd_term_creativeart` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_creativeart` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_creativeart` VALUES (1,'AKPAN RIGHTEOUSNESS ',7,10,9,26,62,88,'A1','1st'),(2,'ALHASSAN ISTIFANUS ',7,5,8,20,47,67,'B3','4th'),(3,'CHUKWU CHRISTIAN ',2,1,8,11,28,39,'F9','14th'),(4,'EBERE CHINONSO ',2,2,8,12,35,47,'D7','10th'),(5,'EDISON AMSONOM ',2,1,3,6,50,56,'C5','8th'),(6,'JAMES  ENDURANCE ',2,3,3,8,50,58,'C5','7th'),(7,'LAZARUS IKECHUKWU ',2,2,8,12,21,33,'F9','17th'),(8,'MICHAEL VICTOR ',2,3,8,13,29,42,'E8','12th'),(9,'OGUEJIOFOR EBUKA ',6,6,8,20,47,67,'B3','4th'),(10,'RICHARD TIMOTHY ',2,1,3,6,11,17,'F9','19th'),(11,'YAKUBU REUBEN ',2,2,7,11,28,39,'F9','14th'),(12,'ISAAC MICHAEL ',2,3,7,12,29,41,'E8','13th'),(13,'ANEKE VICTORIA ',2,5,3,10,29,39,'F9','14th'),(14,'CHINWUBA EBUBE ',6,7,9,22,56,78,'A1','3rd'),(15,'HASKAINU BILWA ',9,3,8,20,44,64,'C4','6th'),(16,'JACOB HANNATU ',2,3,8,13,42,55,'C5','9th'),(17,'NWOBI MARVELOUS IFUNANYA',7,7,9,23,60,83,'A1','2nd'),(18,'OSUJI JUDITH CHINAZA',2,2,3,7,16,23,'F9','18th'),(19,'DOZIE REJOICE CHIAMAKA',2,2,3,7,39,46,'D7','11th');
/*!40000 ALTER TABLE `jss1b_3rd_term_creativeart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_englishlanguage`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_englishlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_englishlanguage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ENG_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_englishlanguage`
--

LOCK TABLES `jss1b_3rd_term_englishlanguage` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_englishlanguage` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_englishlanguage` VALUES (1,'AKPAN RIGHTEOUSNESS ',7,9,7,23,36,59,'C5','3rd'),(2,'ALHASSAN ISTIFANUS ',7,6,7,20,34,54,'C6','6th'),(3,'CHUKWU CHRISTIAN ',1,2,5,8,16,24,'F9','16th'),(4,'EBERE CHINONSO ',5,5,5,15,19,34,'F9','13th'),(5,'EDISON AMSONOM ',1,2,5,8,15,23,'F9','18th'),(6,'JAMES  ENDURANCE ',6,5,5,16,28,44,'E8','8th'),(7,'LAZARUS IKECHUKWU ',1,4,6,11,15,26,'F9','15th'),(8,'MICHAEL VICTOR ',2,3,6,11,24,35,'F9','11th'),(9,'OGUEJIOFOR EBUKA ',6,9,5,20,34,54,'C6','6th'),(10,'RICHARD TIMOTHY ',1,2,5,8,12,20,'F9','19th'),(11,'YAKUBU REUBEN ',2,2,5,9,20,29,'F9','14th'),(12,'ISAAC MICHAEL ',1,2,5,8,16,24,'F9','16th'),(13,'ANEKE VICTORIA ',4,6,5,15,28,43,'E8','10th'),(14,'CHINWUBA EBUBE ',8,6,7,21,40,61,'C4','2nd'),(15,'HASKAINU BILWA ',9,3,7,19,40,59,'C5','3rd'),(16,'JACOB HANNATU ',5,2,5,12,31,43,'E8','10th'),(17,'NWOBI MARVELOUS IFUNANYA',10,10,7,27,49,76,'A1','1st'),(18,'OSUJI JUDITH CHINAZA',2,5,5,12,23,35,'F9','11th'),(19,'DOZIE REJOICE CHIAMAKA',4,10,5,19,37,56,'C5','5th');
/*!40000 ALTER TABLE `jss1b_3rd_term_englishlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_homeeconomics`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_homeeconomics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_homeeconomics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `HEC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_homeeconomics`
--

LOCK TABLES `jss1b_3rd_term_homeeconomics` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_homeeconomics` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_homeeconomics` VALUES (1,'AKPAN RIGHTEOUSNESS ',7,8,9,24,52,76,'A1','1st'),(2,'ALHASSAN ISTIFANUS ',4,5,6,15,28,43,'E8','6th'),(3,'CHUKWU CHRISTIAN ',1,1,7,9,14,23,'F9','17th'),(4,'EBERE CHINONSO ',1,1,1,3,29,32,'F9','10th'),(5,'EDISON AMSONOM ',1,1,1,3,21,24,'F9','14th'),(6,'JAMES  ENDURANCE ',1,1,1,3,39,42,'E8','7th'),(7,'LAZARUS IKECHUKWU ',1,1,7,9,13,22,'F9','18th'),(8,'MICHAEL VICTOR ',5,6,9,20,30,50,'C6','4th'),(9,'OGUEJIOFOR EBUKA ',8,7,8,23,37,60,'C4','3rd'),(10,'RICHARD TIMOTHY ',1,1,1,3,7,10,'F9','19th'),(11,'YAKUBU REUBEN ',1,1,6,8,16,24,'F9','14th'),(12,'ISAAC MICHAEL ',1,1,1,3,21,24,'F9','14th'),(13,'ANEKE VICTORIA ',2,3,1,6,22,28,'F9','12th'),(14,'CHINWUBA EBUBE ',5,6,8,19,25,44,'E8','5th'),(15,'HASKAINU BILWA ',7,6,7,20,22,42,'E8','7th'),(16,'JACOB HANNATU ',5,6,7,18,19,37,'F9','9th'),(17,'NWOBI MARVELOUS IFUNANYA',8,7,9,24,50,74,'B2','2nd'),(18,'OSUJI JUDITH CHINAZA',6,5,1,12,16,28,'F9','12th'),(19,'DOZIE REJOICE CHIAMAKA',1,1,2,4,27,31,'F9','11th');
/*!40000 ALTER TABLE `jss1b_3rd_term_homeeconomics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_mathematics`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_mathematics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_mathematics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `MTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_mathematics`
--

LOCK TABLES `jss1b_3rd_term_mathematics` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_mathematics` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_mathematics` VALUES (1,'AKPAN RIGHTEOUSNESS ',2,1,7,10,31,41,'E8','3rd'),(2,'ALHASSAN ISTIFANUS ',1,4,8,13,18,31,'F9','5th'),(3,'CHUKWU CHRISTIAN ',0,1,8,9,0,9,'F9','19th'),(4,'EBERE CHINONSO ',3,0,6,9,14,23,'F9','12th'),(5,'EDISON AMSONOM ',1,0,1,2,10,12,'F9','17th'),(6,'JAMES  ENDURANCE ',1,2,7,10,14,24,'F9','10th'),(7,'LAZARUS IKECHUKWU ',5,0,6,11,13,24,'F9','10th'),(8,'MICHAEL VICTOR ',3,4,6,13,27,40,'E8','4th'),(9,'OGUEJIOFOR EBUKA ',0,2,8,10,7,17,'F9','14th'),(10,'RICHARD TIMOTHY ',1,0,1,2,8,10,'F9','18th'),(11,'YAKUBU REUBEN ',1,4,5,10,20,30,'F9','6th'),(12,'ISAAC MICHAEL ',0,1,1,2,22,24,'F9','10th'),(13,'ANEKE VICTORIA ',0,1,1,2,11,13,'F9','16th'),(14,'CHINWUBA EBUBE ',5,1,7,13,17,30,'F9','6th'),(15,'HASKAINU BILWA ',1,6,9,16,33,49,'D7','2nd'),(16,'JACOB HANNATU ',2,0,7,9,13,22,'F9','13th'),(17,'NWOBI MARVELOUS IFUNANYA',5,2,9,16,43,59,'C5','1st'),(18,'OSUJI JUDITH CHINAZA',0,1,1,2,13,15,'F9','15th'),(19,'DOZIE REJOICE CHIAMAKA',1,4,1,6,21,27,'F9','8th');
/*!40000 ALTER TABLE `jss1b_3rd_term_mathematics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_physicalandhealtheducation`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_physicalandhealtheducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_physicalandhealtheducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `PHE_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_physicalandhealtheducation`
--

LOCK TABLES `jss1b_3rd_term_physicalandhealtheducation` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_physicalandhealtheducation` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_physicalandhealtheducation` VALUES (1,'AKPAN RIGHTEOUSNESS ',10,7,10,27,60,87,'A1','1st'),(2,'ALHASSAN ISTIFANUS ',8,8,10,26,61,87,'A1','1st'),(3,'CHUKWU CHRISTIAN ',5,1,10,16,24,40,'E8','13th'),(4,'EBERE CHINONSO ',7,5,10,22,38,60,'C4','9th'),(5,'EDISON AMSONOM ',7,3,4,14,21,35,'F9','16th'),(6,'JAMES  ENDURANCE ',3,4,6,13,37,50,'C6','10th'),(7,'LAZARUS IKECHUKWU ',3,4,9,16,22,38,'F9','14th'),(8,'MICHAEL VICTOR ',4,8,10,22,40,62,'C4','7th'),(9,'OGUEJIOFOR EBUKA ',10,8,10,28,44,72,'B2','5th'),(10,'RICHARD TIMOTHY ',1,1,8,10,15,25,'F9','19th'),(11,'YAKUBU REUBEN ',2,3,10,15,18,33,'F9','18th'),(12,'ISAAC MICHAEL ',7,3,7,17,19,36,'F9','15th'),(13,'ANEKE VICTORIA ',6,2,4,12,22,34,'F9','17th'),(14,'CHINWUBA EBUBE ',9,6,10,25,47,72,'B2','5th'),(15,'HASKAINU BILWA ',10,9,10,29,47,76,'A1','4th'),(16,'JACOB HANNATU ',7,5,10,22,27,49,'D7','11th'),(17,'NWOBI MARVELOUS IFUNANYA',9,8,10,27,57,84,'A1','3rd'),(18,'OSUJI JUDITH CHINAZA',7,5,10,22,22,44,'E8','12th'),(19,'DOZIE REJOICE CHIAMAKA',10,8,8,26,36,62,'C4','7th');
/*!40000 ALTER TABLE `jss1b_3rd_term_physicalandhealtheducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_socialstudies`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_socialstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_socialstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `STD_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_socialstudies`
--

LOCK TABLES `jss1b_3rd_term_socialstudies` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_socialstudies` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_socialstudies` VALUES (1,'AKPAN RIGHTEOUSNESS ',6,10,9,25,58,83,'A1','4th'),(2,'ALHASSAN ISTIFANUS ',10,9,9,28,65,93,'A1','2nd'),(3,'CHUKWU CHRISTIAN ',3,5,10,18,23,41,'E8','17th'),(4,'EBERE CHINONSO ',9,3,6,18,38,56,'C5','11th'),(5,'EDISON AMSONOM ',3,8,10,21,20,41,'E8','17th'),(6,'JAMES  ENDURANCE ',5,7,6,18,41,59,'C5','10th'),(7,'LAZARUS IKECHUKWU ',3,3,5,11,36,47,'D7','13th'),(8,'MICHAEL VICTOR ',5,10,10,25,54,79,'A1','5th'),(9,'OGUEJIOFOR EBUKA ',8,6,7,21,54,75,'A1','6th'),(10,'RICHARD TIMOTHY ',5,5,5,15,20,35,'F9','19th'),(11,'YAKUBU REUBEN ',5,5,5,15,30,45,'D7','15th'),(12,'ISAAC MICHAEL ',3,3,5,11,31,42,'E8','16th'),(13,'ANEKE VICTORIA ',5,4,3,12,38,50,'C6','12th'),(14,'CHINWUBA EBUBE ',8,10,7,25,62,87,'A1','3rd'),(15,'HASKAINU BILWA ',6,7,8,21,54,75,'A1','6th'),(16,'JACOB HANNATU ',5,7,6,18,43,61,'C4','9th'),(17,'NWOBI MARVELOUS IFUNANYA',9,10,10,29,68,97,'A1','1st'),(18,'OSUJI JUDITH CHINAZA',5,5,5,15,31,46,'D7','14th'),(19,'DOZIE REJOICE CHIAMAKA',8,8,3,19,51,70,'B2','8th');
/*!40000 ALTER TABLE `jss1b_3rd_term_socialstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_technicaldrawing`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_technicaldrawing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_technicaldrawing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `TDR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_technicaldrawing`
--

LOCK TABLES `jss1b_3rd_term_technicaldrawing` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_technicaldrawing` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_technicaldrawing` VALUES (1,'AKPAN RIGHTEOUSNESS ',4,4,5,13,59,72,'B2','1st'),(2,'ALHASSAN ISTIFANUS ',2,2,5,9,40,49,'D7','6th'),(3,'CHUKWU CHRISTIAN ',2,2,5,9,30,39,'F9','14th'),(4,'EBERE CHINONSO ',2,2,5,9,32,41,'E8','12th'),(5,'EDISON AMSONOM ',2,2,5,9,16,25,'F9','18th'),(6,'JAMES  ENDURANCE ',2,2,5,9,34,43,'E8','11th'),(7,'LAZARUS IKECHUKWU ',2,2,5,9,21,30,'F9','16th'),(8,'MICHAEL VICTOR ',2,2,5,9,42,51,'C6','4th'),(9,'OGUEJIOFOR EBUKA ',2,2,5,9,41,50,'C6','5th'),(10,'RICHARD TIMOTHY ',2,2,5,9,18,27,'F9','17th'),(11,'YAKUBU REUBEN ',2,2,5,9,26,35,'F9','15th'),(12,'ISAAC MICHAEL ',2,2,5,9,39,48,'D7','7th'),(13,'ANEKE VICTORIA ',2,2,5,9,16,25,'F9','18th'),(14,'CHINWUBA EBUBE ',2,2,5,9,54,63,'C4','2nd'),(15,'HASKAINU BILWA ',2,2,5,9,38,47,'D7','8th'),(16,'JACOB HANNATU ',5,5,5,15,29,44,'E8','10th'),(17,'NWOBI MARVELOUS IFUNANYA',4,4,5,13,42,55,'C5','3rd'),(18,'OSUJI JUDITH CHINAZA',2,2,5,9,31,40,'E8','13th'),(19,'DOZIE REJOICE CHIAMAKA',3,5,5,13,34,47,'D7','8th');
/*!40000 ALTER TABLE `jss1b_3rd_term_technicaldrawing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term_woodwork`
--

DROP TABLE IF EXISTS `jss1b_3rd_term_woodwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term_woodwork` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `WOW_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term_woodwork`
--

LOCK TABLES `jss1b_3rd_term_woodwork` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term_woodwork` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term_woodwork` VALUES (1,'AKPAN RIGHTEOUSNESS ',3,3,10,16,60,76,'A1','2nd'),(2,'ALHASSAN ISTIFANUS ',3,3,10,16,40,56,'C5','5th'),(3,'CHUKWU CHRISTIAN ',3,3,10,16,11,27,'F9','16th'),(4,'EBERE CHINONSO ',3,3,10,16,22,38,'F9','12th'),(5,'EDISON AMSONOM ',3,3,10,16,10,26,'F9','17th'),(6,'JAMES  ENDURANCE ',3,3,10,16,23,39,'F9','11th'),(7,'LAZARUS IKECHUKWU ',3,3,10,16,16,32,'F9','15th'),(8,'MICHAEL VICTOR ',3,3,10,16,22,38,'F9','12th'),(9,'OGUEJIOFOR EBUKA ',3,3,10,16,56,72,'B2','3rd'),(10,'RICHARD TIMOTHY ',3,3,10,16,6,22,'F9','18th'),(11,'YAKUBU REUBEN ',3,3,10,16,17,33,'F9','14th'),(12,'ISAAC MICHAEL ',3,3,10,16,1,17,'F9','19th'),(13,'ANEKE VICTORIA ',3,3,10,16,24,40,'E8','10th'),(14,'CHINWUBA EBUBE ',3,3,10,16,64,80,'A1','1st'),(15,'HASKAINU BILWA ',3,3,10,16,34,50,'C6','7th'),(16,'JACOB HANNATU ',3,3,10,16,26,42,'E8','8th'),(17,'NWOBI MARVELOUS IFUNANYA',7,7,10,24,42,66,'B3','4th'),(18,'OSUJI JUDITH CHINAZA',3,3,10,16,25,41,'E8','9th'),(19,'DOZIE REJOICE CHIAMAKA',3,3,10,16,39,55,'C5','6th');
/*!40000 ALTER TABLE `jss1b_3rd_term_woodwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_`
--

LOCK TABLES `jss2a_3rd_term_` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_` VALUES (1,'Jeremiah Abigail ',0,0,0,0,0,0,'',''),(2,'Benneth Joy N.',0,0,0,0,0,0,'',''),(3,'',0,0,0,0,0,0,'',''),(4,'',0,0,0,0,0,0,'',''),(5,'Oguejiofor Chinenye ',0,0,0,0,0,0,'',''),(6,'Daniel Miracle  ',0,0,0,0,0,0,'',''),(7,'Mathew Mary B.',0,0,0,0,0,0,'',''),(8,'Daniel Dorcas ',0,0,0,0,0,0,'',''),(9,'Nnagbo Somtochukwu ',0,0,0,0,0,0,'',''),(10,'Hickson Tuyelshibeh ',0,0,0,0,0,0,'',''),(11,'Imoh Emmanuel  ',0,0,0,0,0,0,'',''),(12,'Ohis Joseph ',0,0,0,0,0,0,'',''),(13,'Ngwan Dokrit ',0,0,0,0,0,0,'',''),(14,'Aniebona Goodluck ',0,0,0,0,0,0,'','');
/*!40000 ALTER TABLE `jss2a_3rd_term_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_agriculturalscience`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_agriculturalscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_agriculturalscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `AGR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_agriculturalscience`
--

LOCK TABLES `jss2a_3rd_term_agriculturalscience` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_agriculturalscience` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_agriculturalscience` VALUES (1,'Jeremiah Abigail ',4,6,10,20,43,63,'C4','13th'),(2,'Benneth Joy N.',8,5,10,23,55,78,'A1','6th'),(3,'Okwundu Sarah Ifunaya',6,5,10,21,52,73,'B2','8th'),(4,'Owah Chinedu ',7,5,10,22,33,55,'C5','15th'),(5,'Oguejiofor Chinenye ',6,4,10,20,61,81,'A1','5th'),(6,'Daniel Miracle  ',10,5,10,25,59,84,'A1','2nd'),(7,'Mathew Mary B.',3,3,10,16,20,36,'F9','20th'),(8,'Daniel Dorcas ',7,5,10,22,50,72,'B2','10th'),(9,'Nnagbo Somtochukwu ',6,5,3,14,41,55,'C5','15th'),(10,'Hickson Tuyelshibeh ',8,4,10,22,50,72,'B2','10th'),(11,'Imoh Emmanuel  ',5,6,10,21,52,73,'B2','8th'),(12,'Ohis Joseph ',7,4,10,21,63,84,'A1','2nd'),(13,'Ngwan Dokrit ',7,4,10,21,36,57,'C5','14th'),(14,'Aniebona Goodluck ',10,4,10,24,58,82,'A1','4th'),(15,'Peter Jessica M.',6,5,10,21,53,74,'B2','7th'),(16,'Agbo Hillary ',4,4,10,18,34,52,'C6','17th'),(17,'Andrew Innocent  ',4,5,2,11,34,45,'D7','18th'),(18,'Godgift Joseph ',9,9,10,28,62,90,'A1','1st'),(19,'Odion Perpetua ',8,7,10,25,45,70,'B2','12th'),(20,'Orji Faith ',5,8,10,23,21,44,'E8','19th');
/*!40000 ALTER TABLE `jss2a_3rd_term_agriculturalscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_basicscience`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_basicscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_basicscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BSC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_basicscience`
--

LOCK TABLES `jss2a_3rd_term_basicscience` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_basicscience` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_basicscience` VALUES (1,'Jeremiah Abigail ',9,10,10,29,33,62,'C4','16th'),(2,'Benneth Joy N.',10,6,10,26,60,86,'A1','4th'),(3,'Okwundu Sarah Ifunaya',10,5,10,25,49,74,'B2','10th'),(4,'Owah Chinedu ',10,6,10,26,37,63,'C4','15th'),(5,'Oguejiofor Chinenye ',3,10,3,16,53,69,'B3','13th'),(6,'Daniel Miracle  ',10,10,10,30,60,90,'A1','2nd'),(7,'Mathew Mary B.',10,9,3,22,34,56,'C5','19th'),(8,'Daniel Dorcas ',8,9,10,27,50,77,'A1','8th'),(9,'Nnagbo Somtochukwu ',10,6,10,26,39,65,'B3','14th'),(10,'Hickson Tuyelshibeh ',10,10,10,30,48,78,'A1','7th'),(11,'Imoh Emmanuel  ',9,10,10,29,57,86,'A1','4th'),(12,'Ohis Joseph ',9,10,10,29,63,92,'A1','1st'),(13,'Ngwan Dokrit ',8,10,10,28,34,62,'C4','16th'),(14,'Aniebona Goodluck ',10,10,10,30,60,90,'A1','2nd'),(15,'Peter Jessica M.',10,6,10,26,44,70,'B2','11th'),(16,'Agbo Hillary ',9,10,10,29,41,70,'B2','11th'),(17,'Andrew Innocent  ',6,5,10,21,40,61,'C4','18th'),(18,'Godgift Joseph ',7,6,10,23,54,77,'A1','8th'),(19,'Odion Perpetua ',10,7,10,27,55,82,'A1','6th'),(20,'Orji Faith ',7,7,10,24,31,55,'C5','20th');
/*!40000 ALTER TABLE `jss2a_3rd_term_basicscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_basictechnology`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_basictechnology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_basictechnology` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_basictechnology`
--

LOCK TABLES `jss2a_3rd_term_basictechnology` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_basictechnology` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_basictechnology` VALUES (1,'Jeremiah Abigail ',3,10,7,20,41,61,'C4','12th'),(2,'Benneth Joy N.',9,10,7,26,53,79,'A1','1st'),(3,'Okwundu Sarah Ifunaya',6,10,4,20,48,68,'B3','9th'),(4,'Owah Chinedu ',5,8,7,20,50,70,'B2','7th'),(5,'Oguejiofor Chinenye ',6,10,7,23,53,76,'A1','3rd'),(6,'Daniel Miracle  ',5,8,5,18,53,71,'B2','6th'),(7,'Mathew Mary B.',3,10,7,20,1,21,'F9','19th'),(8,'Daniel Dorcas ',7,10,7,24,51,75,'A1','4th'),(9,'Nnagbo Somtochukwu ',3,1,1,5,52,57,'C5','16th'),(10,'Hickson Tuyelshibeh ',5,9,2,16,44,60,'C4','13th'),(11,'Imoh Emmanuel  ',3,8,4,15,52,67,'B3','10th'),(12,'Ohis Joseph ',9,9,7,25,52,77,'A1','2nd'),(13,'Ngwan Dokrit ',4,10,6,20,1,21,'F9','19th'),(14,'Aniebona Goodluck ',7,10,7,24,51,75,'A1','4th'),(15,'Peter Jessica M.',5,9,2,16,44,60,'C4','13th'),(16,'Agbo Hillary ',4,10,7,21,43,64,'C4','11th'),(17,'Andrew Innocent  ',3,7,6,16,42,58,'C5','15th'),(18,'Godgift Joseph ',5,10,7,22,47,69,'B3','8th'),(19,'Odion Perpetua ',5,1,1,7,45,52,'C6','17th'),(20,'Orji Faith ',1,6,5,12,33,45,'D7','18th');
/*!40000 ALTER TABLE `jss2a_3rd_term_basictechnology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_businessstudies`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_businessstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_businessstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BSD_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_businessstudies`
--

LOCK TABLES `jss2a_3rd_term_businessstudies` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_businessstudies` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_businessstudies` VALUES (1,'Jeremiah Abigail ',3,5,8,16,34,50,'C6','17th'),(2,'Benneth Joy N.',1,5,8,14,53,67,'B3','10th'),(3,'Okwundu Sarah Ifunaya',6,10,8,24,54,78,'A1','3rd'),(4,'Owah Chinedu ',8,6,8,22,45,67,'B3','10th'),(5,'Oguejiofor Chinenye ',5,7,8,20,50,70,'B2','9th'),(6,'Daniel Miracle  ',4,6,8,18,57,75,'A1','5th'),(7,'Mathew Mary B.',3,2,9,14,32,46,'D7','19th'),(8,'Daniel Dorcas ',8,7,8,23,58,81,'A1','1st'),(9,'Nnagbo Somtochukwu ',2,5,5,12,40,52,'C6','16th'),(10,'Hickson Tuyelshibeh ',5,9,8,22,50,72,'B2','7th'),(11,'Imoh Emmanuel  ',5,1,7,13,50,63,'C4','13th'),(12,'Ohis Joseph ',4,7,9,20,56,76,'A1','4th'),(13,'Ngwan Dokrit ',1,7,9,17,40,57,'C5','14th'),(14,'Aniebona Goodluck ',8,10,9,27,52,79,'A1','2nd'),(15,'Peter Jessica M.',5,8,8,21,51,72,'B2','7th'),(16,'Agbo Hillary ',3,8,6,17,31,48,'D7','18th'),(17,'Andrew Innocent  ',6,3,7,16,37,53,'C6','15th'),(18,'Godgift Joseph ',7,9,8,24,50,74,'B2','6th'),(19,'Odion Perpetua ',5,8,9,22,42,64,'C4','12th'),(20,'Orji Faith ',4,3,6,13,22,35,'F9','20th');
/*!40000 ALTER TABLE `jss2a_3rd_term_businessstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_christianreligiousstudies`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_christianreligiousstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_christianreligiousstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CRS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_christianreligiousstudies`
--

LOCK TABLES `jss2a_3rd_term_christianreligiousstudies` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_christianreligiousstudies` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_christianreligiousstudies` VALUES (1,'Jeremiah Abigail ',10,10,10,30,43,73,'B2','7th'),(2,'Benneth Joy N.',10,10,10,30,40,70,'B2','9th'),(3,'Okwundu Sarah Ifunaya',9,7,10,26,50,76,'A1','5th'),(4,'Owah Chinedu ',9,4,10,23,33,56,'C5','15th'),(5,'Oguejiofor Chinenye ',10,9,10,29,40,69,'B3','10th'),(6,'Daniel Miracle  ',10,5,10,25,43,68,'B3','11th'),(7,'Mathew Mary B.',6,7,10,23,26,49,'D7','19th'),(8,'Daniel Dorcas ',9,5,10,24,50,74,'B2','6th'),(9,'Nnagbo Somtochukwu ',10,4,10,24,31,55,'C5','16th'),(10,'Hickson Tuyelshibeh ',10,6,10,26,52,78,'A1','4th'),(11,'Imoh Emmanuel  ',10,8,10,28,36,64,'C4','12th'),(12,'Ohis Joseph ',10,10,10,30,56,86,'A1','1st'),(13,'Ngwan Dokrit ',9,7,10,26,34,60,'C4','14th'),(14,'Aniebona Goodluck ',10,10,10,30,54,84,'A1','3rd'),(15,'Peter Jessica M.',10,8,10,28,44,72,'B2','8th'),(16,'Agbo Hillary ',9,5,10,24,31,55,'C5','16th'),(17,'Andrew Innocent  ',9,4,10,23,26,49,'D7','19th'),(18,'Godgift Joseph ',10,7,10,27,37,64,'C4','12th'),(19,'Odion Perpetua ',10,8,10,28,58,86,'A1','1st'),(20,'Orji Faith ',6,7,10,23,31,54,'C6','18th');
/*!40000 ALTER TABLE `jss2a_3rd_term_christianreligiousstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_civiceducation`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_civiceducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_civiceducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CIV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_civiceducation`
--

LOCK TABLES `jss2a_3rd_term_civiceducation` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_civiceducation` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_civiceducation` VALUES (1,'Jeremiah Abigail ',7,6,10,23,42,65,'B3','14th'),(2,'Benneth Joy N.',10,10,10,30,63,93,'A1','2nd'),(3,'Okwundu Sarah Ifunaya',10,10,9,29,50,79,'A1','6th'),(4,'Owah Chinedu ',9,10,9,28,33,61,'C4','17th'),(5,'Oguejiofor Chinenye ',10,9,10,29,36,65,'B3','14th'),(6,'Daniel Miracle  ',10,10,10,30,50,80,'A1','4th'),(7,'Mathew Mary B.',7,3,5,15,25,40,'E8','20th'),(8,'Daniel Dorcas ',8,5,7,20,47,67,'B3','12th'),(9,'Nnagbo Somtochukwu ',10,8,9,27,46,73,'B2','7th'),(10,'Hickson Tuyelshibeh ',10,10,10,30,43,73,'B2','7th'),(11,'Imoh Emmanuel  ',9,4,5,18,31,49,'D7','18th'),(12,'Ohis Joseph ',10,10,8,28,54,82,'A1','3rd'),(13,'Ngwan Dokrit ',10,10,5,25,40,65,'B3','14th'),(14,'Aniebona Goodluck ',10,10,10,30,68,98,'A1','1st'),(15,'Peter Jessica M.',8,10,10,28,43,71,'B2','9th'),(16,'Agbo Hillary ',4,5,5,14,54,68,'B3','11th'),(17,'Andrew Innocent  ',9,6,5,20,46,66,'B3','13th'),(18,'Godgift Joseph ',10,9,9,28,52,80,'A1','4th'),(19,'Odion Perpetua ',10,10,10,30,40,70,'B2','10th'),(20,'Orji Faith ',4,7,5,16,30,46,'D7','19th');
/*!40000 ALTER TABLE `jss2a_3rd_term_civiceducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_computerstudies`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_computerstudies`
--

LOCK TABLES `jss2a_3rd_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_computerstudies` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_computerstudies` VALUES (1,'Jeremiah Abigail ',8,2,8,18,41,59,'C5','14th'),(2,'Benneth Joy N.',7,9,8,24,61,85,'A1','2nd'),(3,'Okwundu Sarah Ifunaya',10,4,8,22,61,83,'A1','4th'),(4,'Owah Chinedu ',9,2,8,19,59,78,'A1','8th'),(5,'Oguejiofor Chinenye ',7,9,9,25,48,73,'B2','11th'),(6,'Daniel Miracle  ',10,8,9,27,52,79,'A1','7th'),(7,'Mathew Mary B.',6,3,8,17,27,44,'E8','19th'),(8,'Daniel Dorcas ',10,8,7,25,52,77,'A1','9th'),(9,'Nnagbo Somtochukwu ',1,3,5,9,48,57,'C5','15th'),(10,'Hickson Tuyelshibeh ',10,10,7,27,61,88,'A1','1st'),(11,'Imoh Emmanuel  ',8,4,7,19,47,66,'B3','12th'),(12,'Ohis Joseph ',9,6,8,23,62,85,'A1','2nd'),(13,'Ngwan Dokrit ',4,4,8,16,37,53,'C6','18th'),(14,'Aniebona Goodluck ',10,8,9,27,56,83,'A1','4th'),(15,'Peter Jessica M.',9,7,8,24,58,82,'A1','6th'),(16,'Agbo Hillary ',9,3,7,19,36,55,'C5','17th'),(17,'Andrew Innocent  ',3,4,7,14,43,57,'C5','15th'),(18,'Godgift Joseph ',7,6,7,20,45,65,'B3','13th'),(19,'Odion Perpetua ',6,7,8,21,53,74,'B2','10th'),(20,'Orji Faith ',6,1,6,13,29,42,'E8','20th');
/*!40000 ALTER TABLE `jss2a_3rd_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_creativeart`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_creativeart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_creativeart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CAT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_creativeart`
--

LOCK TABLES `jss2a_3rd_term_creativeart` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_creativeart` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_creativeart` VALUES (1,'Jeremiah Abigail ',8,8,8,24,37,61,'C4','15th'),(2,'Benneth Joy N.',8,9,9,26,57,83,'A1','1st'),(3,'Okwundu Sarah Ifunaya',9,9,9,27,55,82,'A1','2nd'),(4,'Owah Chinedu ',8,8,8,24,36,60,'C4','16th'),(5,'Oguejiofor Chinenye ',8,9,9,26,48,74,'B2','8th'),(6,'Daniel Miracle  ',6,8,8,22,45,67,'B3','13th'),(7,'Mathew Mary B.',8,8,7,23,26,49,'D7','19th'),(8,'Daniel Dorcas ',8,9,9,26,55,81,'A1','3rd'),(9,'Nnagbo Somtochukwu ',8,8,3,19,45,64,'C4','14th'),(10,'Hickson Tuyelshibeh ',8,8,8,24,49,73,'B2','10th'),(11,'Imoh Emmanuel  ',8,7,7,22,46,68,'B3','12th'),(12,'Ohis Joseph ',9,9,9,27,54,81,'A1','3rd'),(13,'Ngwan Dokrit ',7,9,9,25,45,70,'B2','11th'),(14,'Aniebona Goodluck ',9,9,9,27,54,81,'A1','3rd'),(15,'Peter Jessica M.',9,9,9,27,47,74,'B2','8th'),(16,'Agbo Hillary ',8,7,8,23,24,47,'D7','20th'),(17,'Andrew Innocent  ',8,7,8,23,27,50,'C6','18th'),(18,'Godgift Joseph ',9,9,9,27,53,80,'A1','7th'),(19,'Odion Perpetua ',8,9,9,26,55,81,'A1','3rd'),(20,'Orji Faith ',8,8,8,24,33,57,'C5','17th');
/*!40000 ALTER TABLE `jss2a_3rd_term_creativeart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_englishlanguage`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_englishlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_englishlanguage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ENG_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_englishlanguage`
--

LOCK TABLES `jss2a_3rd_term_englishlanguage` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_englishlanguage` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_englishlanguage` VALUES (1,'Jeremiah Abigail ',5,1,6,12,39,51,'C6','15th'),(2,'Benneth Joy N.',10,7,7,24,50,74,'B2','2nd'),(3,'Okwundu Sarah Ifunaya',10,8,7,25,38,63,'C4','9th'),(4,'Owah Chinedu ',10,5,6,21,35,56,'C5','12th'),(5,'Oguejiofor Chinenye ',9,5,7,21,43,64,'C4','8th'),(6,'Daniel Miracle  ',10,6,7,23,43,66,'B3','6th'),(7,'Mathew Mary B.',6,5,7,18,22,40,'E8','20th'),(8,'Daniel Dorcas ',5,5,7,17,42,59,'C5','11th'),(9,'Nnagbo Somtochukwu ',5,5,7,17,34,51,'C6','15th'),(10,'Hickson Tuyelshibeh ',5,5,5,15,52,67,'B3','5th'),(11,'Imoh Emmanuel  ',5,5,7,17,48,65,'B3','7th'),(12,'Ohis Joseph ',7,7,7,21,39,60,'C4','10th'),(13,'Ngwan Dokrit ',5,3,7,15,39,54,'C6','13th'),(14,'Aniebona Goodluck ',9,5,7,21,53,74,'B2','2nd'),(15,'Peter Jessica M.',5,6,6,17,33,50,'C6','17th'),(16,'Agbo Hillary ',5,5,7,17,36,53,'C6','14th'),(17,'Andrew Innocent  ',5,1,5,11,39,50,'C6','17th'),(18,'Godgift Joseph ',8,5,7,20,48,68,'B3','4th'),(19,'Odion Perpetua ',10,9,7,26,53,79,'A1','1st'),(20,'Orji Faith ',5,4,7,16,25,41,'E8','19th');
/*!40000 ALTER TABLE `jss2a_3rd_term_englishlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_homeeconomics`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_homeeconomics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_homeeconomics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `HEC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_homeeconomics`
--

LOCK TABLES `jss2a_3rd_term_homeeconomics` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_homeeconomics` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_homeeconomics` VALUES (1,'Jeremiah Abigail ',4,10,5,19,49,68,'B3','10th'),(2,'Benneth Joy N.',8,10,0,18,50,68,'B3','10th'),(3,'Okwundu Sarah Ifunaya',8,10,6,24,54,78,'A1','4th'),(4,'Owah Chinedu ',8,10,5,23,48,71,'B2','7th'),(5,'Oguejiofor Chinenye ',7,10,7,24,51,75,'A1','6th'),(6,'Daniel Miracle  ',9,10,8,27,53,80,'A1','2nd'),(7,'Mathew Mary B.',3,10,0,13,17,30,'F9','19th'),(8,'Daniel Dorcas ',8,10,7,25,56,81,'A1','1st'),(9,'Nnagbo Somtochukwu ',3,0,4,7,43,50,'C6','15th'),(10,'Hickson Tuyelshibeh ',8,5,8,21,41,62,'C4','12th'),(11,'Imoh Emmanuel  ',3,10,0,13,39,52,'C6','14th'),(12,'Ohis Joseph ',10,10,6,26,43,69,'B3','8th'),(13,'Ngwan Dokrit ',0,6,1,7,27,34,'F9','18th'),(14,'Aniebona Goodluck ',9,10,7,26,54,80,'A1','2nd'),(15,'Peter Jessica M.',8,2,0,10,57,67,'B3','11th'),(16,'Agbo Hillary ',0,10,1,11,29,40,'E8','16th'),(17,'Andrew Innocent  ',3,3,0,6,32,38,'F9','17th'),(18,'Godgift Joseph ',6,10,6,22,56,78,'A1','4th'),(19,'Odion Perpetua ',7,8,0,15,46,61,'C4','13th'),(20,'Orji Faith ',1,10,0,11,17,28,'F9','20th');
/*!40000 ALTER TABLE `jss2a_3rd_term_homeeconomics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_mathematics`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_mathematics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_mathematics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `MTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_mathematics`
--

LOCK TABLES `jss2a_3rd_term_mathematics` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_mathematics` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_mathematics` VALUES (1,'Jeremiah Abigail ',5,3,9,17,26,43,'E8','7th'),(2,'Benneth Joy N.',6,2,9,17,39,56,'C5','1st'),(3,'Okwundu Sarah Ifunaya',6,3,9,18,36,54,'C6','3rd'),(4,'Owah Chinedu ',0,1,9,10,36,46,'D7','6th'),(5,'Oguejiofor Chinenye ',1,1,9,11,16,27,'F9','16th'),(6,'Daniel Miracle  ',3,5,9,17,35,52,'C6','5th'),(7,'Mathew Mary B.',0,1,9,10,16,26,'F9','18th'),(8,'Daniel Dorcas ',1,4,10,15,20,35,'F9','12th'),(9,'Nnagbo Somtochukwu ',3,0,0,3,19,22,'F9','19th'),(10,'Hickson Tuyelshibeh ',1,4,7,12,30,42,'E8','10th'),(11,'Imoh Emmanuel  ',2,4,5,11,16,27,'F9','16th'),(12,'Ohis Joseph ',6,6,9,21,35,56,'C5','1st'),(13,'Ngwan Dokrit ',5,2,9,16,23,39,'F9','11th'),(14,'Aniebona Goodluck ',5,4,9,18,35,53,'C6','4th'),(15,'Peter Jessica M.',0,2,6,8,24,32,'F9','14th'),(16,'Agbo Hillary ',4,3,9,16,19,35,'F9','12th'),(17,'Andrew Innocent  ',3,1,6,10,18,28,'F9','15th'),(18,'Godgift Joseph ',3,3,8,14,29,43,'E8','7th'),(19,'Odion Perpetua ',4,1,9,14,28,42,'E8','10th'),(20,'Orji Faith ',0,1,7,8,10,18,'F9','20th');
/*!40000 ALTER TABLE `jss2a_3rd_term_mathematics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_physicalandhealtheducation`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_physicalandhealtheducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_physicalandhealtheducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `PHE_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_physicalandhealtheducation`
--

LOCK TABLES `jss2a_3rd_term_physicalandhealtheducation` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_physicalandhealtheducation` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_physicalandhealtheducation` VALUES (1,'Jeremiah Abigail ',6,5,10,21,48,69,'B3','12th'),(2,'Benneth Joy N.',7,8,10,25,50,75,'A1','4th'),(3,'Okwundu Sarah Ifunaya',9,7,10,26,48,74,'B2','6th'),(4,'Owah Chinedu ',8,5,10,23,49,72,'B2','10th'),(5,'Oguejiofor Chinenye ',9,8,4,21,50,71,'B2','11th'),(6,'Daniel Miracle  ',5,4,10,19,54,73,'B2','8th'),(7,'Mathew Mary B.',5,2,10,17,25,42,'E8','20th'),(8,'Daniel Dorcas ',9,8,10,27,49,76,'A1','3rd'),(9,'Nnagbo Somtochukwu ',6,4,7,17,44,61,'C4','16th'),(10,'Hickson Tuyelshibeh ',7,8,10,25,44,69,'B3','12th'),(11,'Imoh Emmanuel  ',8,2,10,20,54,74,'B2','6th'),(12,'Ohis Joseph ',8,7,10,25,60,85,'A1','2nd'),(13,'Ngwan Dokrit ',8,4,10,22,28,50,'C6','18th'),(14,'Aniebona Goodluck ',10,9,10,29,58,87,'A1','1st'),(15,'Peter Jessica M.',6,7,10,23,50,73,'B2','8th'),(16,'Agbo Hillary ',5,6,10,21,41,62,'C4','15th'),(17,'Andrew Innocent  ',6,2,10,18,35,53,'C6','17th'),(18,'Godgift Joseph ',8,6,10,24,42,66,'B3','14th'),(19,'Odion Perpetua ',8,7,10,25,50,75,'A1','4th'),(20,'Orji Faith ',5,4,10,19,30,49,'D7','19th');
/*!40000 ALTER TABLE `jss2a_3rd_term_physicalandhealtheducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_socialstudies`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_socialstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_socialstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `STD_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_socialstudies`
--

LOCK TABLES `jss2a_3rd_term_socialstudies` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_socialstudies` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_socialstudies` VALUES (1,'Jeremiah Abigail ',5,5,8,18,37,55,'C5','15th'),(2,'Benneth Joy N.',6,6,9,21,54,75,'A1','4th'),(3,'Okwundu Sarah Ifunaya',6,7,8,21,48,69,'B3','8th'),(4,'Owah Chinedu ',5,4,9,18,42,60,'C4','14th'),(5,'Oguejiofor Chinenye ',4,5,6,15,50,65,'B3','12th'),(6,'Daniel Miracle  ',8,6,9,23,51,74,'B2','5th'),(7,'Mathew Mary B.',8,5,5,18,26,44,'E8','20th'),(8,'Daniel Dorcas ',7,5,7,19,65,84,'A1','2nd'),(9,'Nnagbo Somtochukwu ',4,3,5,12,43,55,'C5','15th'),(10,'Hickson Tuyelshibeh ',3,6,8,17,50,67,'B3','9th'),(11,'Imoh Emmanuel  ',5,4,6,15,51,66,'B3','10th'),(12,'Ohis Joseph ',7,6,7,20,46,66,'B3','10th'),(13,'Ngwan Dokrit ',6,6,8,20,50,70,'B2','6th'),(14,'Aniebona Goodluck ',5,6,10,21,65,86,'A1','1st'),(15,'Peter Jessica M.',6,7,6,19,51,70,'B2','6th'),(16,'Agbo Hillary ',3,4,5,12,40,52,'C6','18th'),(17,'Andrew Innocent  ',5,6,5,16,30,46,'D7','19th'),(18,'Godgift Joseph ',7,5,10,22,57,79,'A1','3rd'),(19,'Odion Perpetua ',8,5,6,19,44,63,'C4','13th'),(20,'Orji Faith ',5,5,6,16,38,54,'C6','17th');
/*!40000 ALTER TABLE `jss2a_3rd_term_socialstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_technicaldrawing`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_technicaldrawing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_technicaldrawing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `TDR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_technicaldrawing`
--

LOCK TABLES `jss2a_3rd_term_technicaldrawing` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_technicaldrawing` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_technicaldrawing` VALUES (1,'Jeremiah Abigail ',10,8,6,24,65,89,'A1','1st'),(2,'Benneth Joy N.',10,9,7,26,60,86,'A1','2nd'),(3,'Okwundu Sarah Ifunaya',8,10,5,23,55,78,'A1','5th'),(4,'Owah Chinedu ',8,6,5,19,45,64,'C4','10th'),(5,'Oguejiofor Chinenye ',2,6,2,10,47,57,'C5','15th'),(6,'Daniel Miracle  ',2,2,5,9,35,44,'E8','17th'),(7,'Mathew Mary B.',6,7,5,18,45,63,'C4','11th'),(8,'Daniel Dorcas ',10,8,5,23,63,86,'A1','2nd'),(9,'Nnagbo Somtochukwu ',2,2,6,10,40,50,'C6','16th'),(10,'Hickson Tuyelshibeh ',8,6,2,16,46,62,'C4','12th'),(11,'Imoh Emmanuel  ',10,7,5,22,45,67,'B3','9th'),(12,'Ohis Joseph ',7,7,5,19,58,77,'A1','6th'),(13,'Ngwan Dokrit ',9,6,5,20,23,43,'E8','19th'),(14,'Aniebona Goodluck ',10,6,5,21,60,81,'A1','4th'),(15,'Peter Jessica M.',5,4,4,13,47,60,'C4','14th'),(16,'Agbo Hillary ',9,6,5,20,41,61,'C4','13th'),(17,'Andrew Innocent  ',2,2,6,10,25,35,'F9','20th'),(18,'Godgift Joseph ',5,5,5,15,29,44,'E8','17th'),(19,'Odion Perpetua ',8,4,5,17,58,75,'A1','7th'),(20,'Orji Faith ',10,4,5,19,50,69,'B3','8th');
/*!40000 ALTER TABLE `jss2a_3rd_term_technicaldrawing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term_woodwork`
--

DROP TABLE IF EXISTS `jss2a_3rd_term_woodwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term_woodwork` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `WOW_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term_woodwork`
--

LOCK TABLES `jss2a_3rd_term_woodwork` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term_woodwork` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term_woodwork` VALUES (1,'Jeremiah Abigail ',2,8,2,12,30,42,'E8','8th'),(2,'Benneth Joy N.',2,7,2,11,27,38,'F9','12th'),(3,'Okwundu Sarah Ifunaya',4,8,4,16,30,46,'D7','6th'),(4,'Owah Chinedu ',1,8,1,10,40,50,'C6','2nd'),(5,'Oguejiofor Chinenye ',1,8,1,10,30,40,'E8','11th'),(6,'Daniel Miracle  ',1,1,1,3,15,18,'F9','19th'),(7,'Mathew Mary B.',2,7,2,11,30,41,'E8','10th'),(8,'Daniel Dorcas ',5,1,5,11,50,61,'C4','1st'),(9,'Nnagbo Somtochukwu ',1,1,1,3,45,48,'D7','5th'),(10,'Hickson Tuyelshibeh ',2,5,2,9,40,49,'D7','4th'),(11,'Imoh Emmanuel  ',1,1,1,3,15,18,'F9','19th'),(12,'Ohis Joseph ',4,7,4,15,35,50,'C6','2nd'),(13,'Ngwan Dokrit ',2,7,2,11,35,46,'D7','6th'),(14,'Aniebona Goodluck ',3,7,1,11,31,42,'E8','8th'),(15,'Peter Jessica M.',4,1,4,9,25,34,'F9','13th'),(16,'Agbo Hillary ',1,7,1,9,21,30,'F9','16th'),(17,'Andrew Innocent  ',2,5,2,9,25,34,'F9','13th'),(18,'Godgift Joseph ',3,7,3,13,20,33,'F9','15th'),(19,'Odion Perpetua ',2,7,2,11,15,26,'F9','17th'),(20,'Orji Faith ',2,7,2,11,10,21,'F9','18th');
/*!40000 ALTER TABLE `jss2a_3rd_term_woodwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_agriculturalscience`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_agriculturalscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_agriculturalscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `AGR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_agriculturalscience`
--

LOCK TABLES `jss2b_3rd_term_agriculturalscience` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_agriculturalscience` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_agriculturalscience` VALUES (1,'Uzoma Chioma ',7,5,10,22,44,66,'B3','11th'),(2,'Musa Peace ',6,4,10,20,45,65,'B3','12th'),(3,'Adakole Blessing ',10,5,10,25,62,87,'A1','2nd'),(4,'Ebiyie Elizabeth ',5,3,3,11,18,29,'F9','19th'),(5,'Mathew Martha ',1,4,4,9,40,49,'D7','17th'),(6,'Agu Chinaza ',1,4,10,15,20,35,'F9','18th'),(7,'Orinya Peace ',7,7,10,24,54,78,'A1','8th'),(8,'Okoli Jecinta ',7,4,10,21,40,61,'C4','15th'),(9,'Musa Timothy ',10,9,10,29,62,91,'A1','1st'),(10,'Ejikeme Trust ',8,6,10,24,59,83,'A1','4th'),(11,'Dilibe Chigozie ',8,4,10,22,57,79,'A1','7th'),(12,'Nwobi Truimp ',10,6,10,26,56,82,'A1','5th'),(13,'Chisom Chinweuba ',8,4,10,22,58,80,'A1','6th'),(14,'Akila Joshua ',4,4,10,18,42,60,'C4','16th'),(15,'Andrew Isaac ',6,7,3,16,57,73,'B2','9th'),(16,'Daniel Omonya ',4,3,10,17,45,62,'C4','14th'),(17,'Anthony Benjamin ',9,5,10,24,62,86,'A1','3rd'),(18,'Solomon John ',5,4,10,19,45,64,'C4','13th'),(19,'Umeh Austin ',7,5,3,15,57,72,'B2','10th');
/*!40000 ALTER TABLE `jss2b_3rd_term_agriculturalscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_basicscience`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_basicscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_basicscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BSC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_basicscience`
--

LOCK TABLES `jss2b_3rd_term_basicscience` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_basicscience` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_basicscience` VALUES (1,'Uzoma Chioma ',9,6,10,25,50,75,'A1','13th'),(2,'Musa Peace ',10,9,10,29,51,80,'A1','7th'),(3,'Adakole Blessing ',6,6,10,22,60,82,'A1','6th'),(4,'Ebiyie Elizabeth ',9,8,3,20,30,50,'C6','17th'),(5,'Mathew Martha ',10,10,10,30,47,77,'A1','12th'),(6,'Agu Chinaza ',3,7,10,20,14,34,'F9','19th'),(7,'Orinya Peace ',9,8,10,27,51,78,'A1','10th'),(8,'Okoli Jecinta ',10,10,10,30,49,79,'A1','8th'),(9,'Musa Timothy ',10,6,10,26,66,92,'A1','2nd'),(10,'Ejikeme Trust ',10,9,10,29,57,86,'A1','4th'),(11,'Dilibe Chigozie ',10,9,10,29,58,87,'A1','3rd'),(12,'Nwobi Truimp ',10,10,10,30,54,84,'A1','5th'),(13,'Chisom Chinweuba ',9,9,10,28,47,75,'A1','13th'),(14,'Akila Joshua ',10,6,3,19,49,68,'B3','15th'),(15,'Andrew Isaac ',7,5,10,22,56,78,'A1','10th'),(16,'Daniel Omonya ',6,6,10,22,25,47,'D7','18th'),(17,'Anthony Benjamin ',10,10,10,30,65,95,'A1','1st'),(18,'Solomon John ',7,9,10,26,52,78,'A1','10th'),(19,'Umeh Austin ',6,6,3,15,48,63,'C4','16th');
/*!40000 ALTER TABLE `jss2b_3rd_term_basicscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_basictechnology`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_basictechnology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_basictechnology` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_basictechnology`
--

LOCK TABLES `jss2b_3rd_term_basictechnology` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_basictechnology` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_basictechnology` VALUES (1,'Uzoma Chioma ',4,1,10,15,48,63,'C4','8th'),(2,'Musa Peace ',4,10,8,22,45,67,'B3','7th'),(3,'Adakole Blessing ',5,1,1,7,44,51,'C6','15th'),(4,'Ebiyie Elizabeth ',3,1,1,5,37,42,'E8','18th'),(5,'Mathew Martha ',4,10,8,22,36,58,'C5','10th'),(6,'Agu Chinaza ',1,10,1,12,21,33,'F9','19th'),(7,'Orinya Peace ',5,10,7,22,51,73,'B2','4th'),(8,'Okoli Jecinta ',8,10,7,25,47,72,'B2','5th'),(9,'Musa Timothy ',7,9,8,24,57,81,'A1','1st'),(10,'Ejikeme Trust ',8,1,1,10,47,57,'C5','11th'),(11,'Dilibe Chigozie ',5,1,1,7,48,55,'C5','13th'),(12,'Nwobi Truimp ',5,9,7,21,51,72,'B2','5th'),(13,'Chisom Chinweuba ',6,10,7,23,52,75,'A1','3rd'),(14,'Akila Joshua ',3,1,1,5,38,43,'E8','17th'),(15,'Andrew Isaac ',4,1,1,6,53,59,'C5','9th'),(16,'Daniel Omonya ',4,10,6,20,37,57,'C5','11th'),(17,'Anthony Benjamin ',7,9,8,24,56,80,'A1','2nd'),(18,'Solomon John ',3,1,1,5,43,48,'D7','16th'),(19,'Umeh Austin ',5,1,1,7,48,55,'C5','13th');
/*!40000 ALTER TABLE `jss2b_3rd_term_basictechnology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_businessstudies`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_businessstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_businessstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BSD_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_businessstudies`
--

LOCK TABLES `jss2b_3rd_term_businessstudies` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_businessstudies` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_businessstudies` VALUES (1,'Uzoma Chioma ',4,9,5,18,47,65,'B3','11th'),(2,'Musa Peace ',2,7,8,17,36,53,'C6','15th'),(3,'Adakole Blessing ',8,8,8,24,44,68,'B3','8th'),(4,'Ebiyie Elizabeth ',2,4,7,13,39,52,'C6','16th'),(5,'Mathew Martha ',1,4,8,13,31,44,'E8','17th'),(6,'Agu Chinaza ',1,1,7,9,20,29,'F9','19th'),(7,'Orinya Peace ',4,8,8,20,59,79,'A1','5th'),(8,'Okoli Jecinta ',8,9,9,26,54,80,'A1','4th'),(9,'Musa Timothy ',7,9,9,25,58,83,'A1','3rd'),(10,'Ejikeme Trust ',8,8,8,24,63,87,'A1','2nd'),(11,'Dilibe Chigozie ',5,7,8,20,57,77,'A1','6th'),(12,'Nwobi Truimp ',2,10,8,20,46,66,'B3','10th'),(13,'Chisom Chinweuba ',3,5,8,16,55,71,'B2','7th'),(14,'Akila Joshua ',2,5,7,14,22,36,'F9','18th'),(15,'Andrew Isaac ',3,1,8,12,45,57,'C5','13th'),(16,'Daniel Omonya ',2,1,8,11,44,55,'C5','14th'),(17,'Anthony Benjamin ',7,9,9,25,63,88,'A1','1st'),(18,'Solomon John ',6,7,8,21,43,64,'C4','12th'),(19,'Umeh Austin ',7,7,8,22,46,68,'B3','8th');
/*!40000 ALTER TABLE `jss2b_3rd_term_businessstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_christianreligiousstudies`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_christianreligiousstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_christianreligiousstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CRS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_christianreligiousstudies`
--

LOCK TABLES `jss2b_3rd_term_christianreligiousstudies` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_christianreligiousstudies` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_christianreligiousstudies` VALUES (1,'Uzoma Chioma ',10,5,10,25,43,68,'B3','11th'),(2,'Musa Peace ',10,10,10,30,44,74,'B2','7th'),(3,'Adakole Blessing ',10,10,10,30,48,78,'A1','4th'),(4,'Ebiyie Elizabeth ',6,5,10,21,23,44,'E8','16th'),(5,'Mathew Martha ',10,10,10,30,32,62,'C4','15th'),(6,'Agu Chinaza ',5,5,10,20,11,31,'F9','19th'),(7,'Orinya Peace ',10,7,10,27,56,83,'A1','2nd'),(8,'Okoli Jecinta ',9,10,10,29,45,74,'B2','7th'),(9,'Musa Timothy ',10,10,10,30,45,75,'A1','6th'),(10,'Ejikeme Trust ',10,10,10,30,50,80,'A1','3rd'),(11,'Dilibe Chigozie ',10,7,10,27,49,76,'A1','5th'),(12,'Nwobi Truimp ',9,7,10,26,37,63,'C4','14th'),(13,'Chisom Chinweuba ',9,9,10,28,45,73,'B2','9th'),(14,'Akila Joshua ',7,1,10,18,25,43,'E8','17th'),(15,'Andrew Isaac ',7,9,10,26,38,64,'C4','12th'),(16,'Daniel Omonya ',3,1,10,14,24,38,'F9','18th'),(17,'Anthony Benjamin ',9,8,10,27,59,86,'A1','1st'),(18,'Solomon John ',5,7,10,22,42,64,'C4','12th'),(19,'Umeh Austin ',10,8,10,28,42,70,'B2','10th');
/*!40000 ALTER TABLE `jss2b_3rd_term_christianreligiousstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_civiceducation`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_civiceducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_civiceducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CIV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_civiceducation`
--

LOCK TABLES `jss2b_3rd_term_civiceducation` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_civiceducation` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_civiceducation` VALUES (1,'Uzoma Chioma ',2,4,2,8,23,31,'F9','18th'),(2,'Musa Peace ',6,6,5,17,43,60,'C4','13th'),(3,'Adakole Blessing ',2,6,2,10,60,70,'B2','5th'),(4,'Ebiyie Elizabeth ',5,7,5,17,50,67,'B3','9th'),(5,'Mathew Martha ',2,5,2,9,40,49,'D7','15th'),(6,'Agu Chinaza ',2,2,2,6,23,29,'F9','19th'),(7,'Orinya Peace ',7,5,6,18,53,71,'B2','3rd'),(8,'Okoli Jecinta ',2,2,2,6,45,51,'C6','14th'),(9,'Musa Timothy ',9,5,5,19,50,69,'B3','6th'),(10,'Ejikeme Trust ',6,7,5,18,45,63,'C4','11th'),(11,'Dilibe Chigozie ',2,7,2,11,57,68,'B3','7th'),(12,'Nwobi Truimp ',8,8,5,21,50,71,'B2','3rd'),(13,'Chisom Chinweuba ',2,8,2,12,52,64,'C4','10th'),(14,'Akila Joshua ',2,6,2,10,30,40,'E8','16th'),(15,'Andrew Isaac ',5,6,5,16,45,61,'C4','12th'),(16,'Daniel Omonya ',7,8,5,20,48,68,'B3','7th'),(17,'Anthony Benjamin ',8,7,5,20,55,75,'A1','2nd'),(18,'Solomon John ',10,6,5,21,68,89,'A1','1st'),(19,'Umeh Austin ',2,2,2,6,31,37,'F9','17th');
/*!40000 ALTER TABLE `jss2b_3rd_term_civiceducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_computerstudies`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_computerstudies`
--

LOCK TABLES `jss2b_3rd_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_computerstudies` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_computerstudies` VALUES (1,'Uzoma Chioma ',6,3,8,17,46,63,'C4','11th'),(2,'Musa Peace ',6,6,8,20,40,60,'C4','13th'),(3,'Adakole Blessing ',7,8,8,23,49,72,'B2','8th'),(4,'Ebiyie Elizabeth ',3,3,6,12,22,34,'F9','19th'),(5,'Mathew Martha ',9,4,9,22,47,69,'B3','9th'),(6,'Agu Chinaza ',2,3,7,12,26,38,'F9','18th'),(7,'Orinya Peace ',10,9,8,27,57,84,'A1','4th'),(8,'Okoli Jecinta ',7,6,8,21,47,68,'B3','10th'),(9,'Musa Timothy ',10,9,9,28,62,90,'A1','1st'),(10,'Ejikeme Trust ',8,7,8,23,57,80,'A1','6th'),(11,'Dilibe Chigozie ',10,7,7,24,60,84,'A1','4th'),(12,'Nwobi Truimp ',9,9,8,26,53,79,'A1','7th'),(13,'Chisom Chinweuba ',7,6,8,21,42,63,'C4','11th'),(14,'Akila Joshua ',9,3,8,20,29,49,'D7','16th'),(15,'Andrew Isaac ',4,1,5,10,43,53,'C6','15th'),(16,'Daniel Omonya ',3,3,8,14,26,40,'E8','17th'),(17,'Anthony Benjamin ',10,10,9,29,61,90,'A1','1st'),(18,'Solomon John ',3,3,7,13,43,56,'C5','14th'),(19,'Umeh Austin ',9,4,9,22,66,88,'A1','3rd');
/*!40000 ALTER TABLE `jss2b_3rd_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_creativeart`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_creativeart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_creativeart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CAT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_creativeart`
--

LOCK TABLES `jss2b_3rd_term_creativeart` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_creativeart` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_creativeart` VALUES (1,'Uzoma Chioma ',7,8,8,23,38,61,'C4','12th'),(2,'Musa Peace ',7,8,9,24,36,60,'C4','14th'),(3,'Adakole Blessing ',9,9,9,27,47,74,'B2','5th'),(4,'Ebiyie Elizabeth ',9,8,8,25,32,57,'C5','16th'),(5,'Mathew Martha ',7,7,8,22,31,53,'C6','17th'),(6,'Agu Chinaza ',8,8,8,24,28,52,'C6','18th'),(7,'Orinya Peace ',8,9,8,25,55,80,'A1','3rd'),(8,'Okoli Jecinta ',8,9,9,26,47,73,'B2','6th'),(9,'Musa Timothy ',8,10,10,28,56,84,'A1','2nd'),(10,'Ejikeme Trust ',8,8,9,25,53,78,'A1','4th'),(11,'Dilibe Chigozie ',6,8,8,22,45,67,'B3','8th'),(12,'Nwobi Truimp ',5,8,8,21,43,64,'C4','10th'),(13,'Chisom Chinweuba ',8,8,8,24,40,64,'C4','10th'),(14,'Akila Joshua ',8,4,8,20,41,61,'C4','12th'),(15,'Andrew Isaac ',8,4,8,20,40,60,'C4','14th'),(16,'Daniel Omonya ',8,8,8,24,28,52,'C6','18th'),(17,'Anthony Benjamin ',8,10,10,28,64,92,'A1','1st'),(18,'Solomon John ',8,8,8,24,44,68,'B3','7th'),(19,'Umeh Austin ',8,0,8,16,46,62,'C4','11th');
/*!40000 ALTER TABLE `jss2b_3rd_term_creativeart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_englishlanguage`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_englishlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_englishlanguage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ENG_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_englishlanguage`
--

LOCK TABLES `jss2b_3rd_term_englishlanguage` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_englishlanguage` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_englishlanguage` VALUES (1,'Uzoma Chioma ',5,2,6,13,41,54,'C6','12th'),(2,'Musa Peace ',2,2,7,11,41,52,'C6','13th'),(3,'Adakole Blessing ',10,5,7,22,48,70,'B2','4th'),(4,'Ebiyie Elizabeth ',5,2,5,12,33,45,'D7','15th'),(5,'Mathew Martha ',2,5,7,14,30,44,'E8','16th'),(6,'Agu Chinaza ',1,5,6,12,11,23,'F9','19th'),(7,'Orinya Peace ',5,5,7,17,48,65,'B3','6th'),(8,'Okoli Jecinta ',5,5,6,16,47,63,'C4','8th'),(9,'Musa Timothy ',10,7,7,24,54,78,'A1','2nd'),(10,'Ejikeme Trust ',5,5,7,17,45,62,'C4','10th'),(11,'Dilibe Chigozie ',5,5,6,16,52,68,'B3','5th'),(12,'Nwobi Truimp ',8,5,7,20,53,73,'B2','3rd'),(13,'Chisom Chinweuba ',6,5,7,18,46,64,'C4','7th'),(14,'Akila Joshua ',5,5,2,12,29,41,'E8','17th'),(15,'Andrew Isaac ',1,5,7,13,34,47,'D7','14th'),(16,'Daniel Omonya ',3,5,7,15,23,38,'F9','18th'),(17,'Anthony Benjamin ',10,10,7,27,54,81,'A1','1st'),(18,'Solomon John ',5,5,6,16,46,62,'C4','10th'),(19,'Umeh Austin ',6,5,7,18,44,62,'C4','10th');
/*!40000 ALTER TABLE `jss2b_3rd_term_englishlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_homeeconomics`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_homeeconomics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_homeeconomics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `HEC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_homeeconomics`
--

LOCK TABLES `jss2b_3rd_term_homeeconomics` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_homeeconomics` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_homeeconomics` VALUES (1,'Uzoma Chioma ',3,10,0,13,41,54,'C6','14th'),(2,'Musa Peace ',4,10,5,19,40,59,'C5','11th'),(3,'Adakole Blessing ',8,10,7,25,49,74,'B2','5th'),(4,'Ebiyie Elizabeth ',4,7,0,11,24,35,'F9','17th'),(5,'Mathew Martha ',5,10,7,22,33,55,'C5','13th'),(6,'Agu Chinaza ',1,1,0,2,21,23,'F9','19th'),(7,'Orinya Peace ',7,10,8,25,57,82,'A1','1st'),(8,'Okoli Jecinta ',7,10,7,24,54,78,'A1','3rd'),(9,'Musa Timothy ',10,10,7,27,54,81,'A1','2nd'),(10,'Ejikeme Trust ',8,5,6,19,45,64,'C4','8th'),(11,'Dilibe Chigozie ',9,10,4,23,50,73,'B2','6th'),(12,'Nwobi Truimp ',8,10,7,25,47,72,'B2','7th'),(13,'Chisom Chinweuba ',4,7,0,11,47,58,'C5','12th'),(14,'Akila Joshua ',7,6,7,20,32,52,'C6','15th'),(15,'Andrew Isaac ',3,10,7,20,44,64,'C4','8th'),(16,'Daniel Omonya ',2,10,4,16,9,25,'F9','18th'),(17,'Anthony Benjamin ',7,8,6,21,57,78,'A1','3rd'),(18,'Solomon John ',7,7,0,14,47,61,'C4','10th'),(19,'Umeh Austin ',4,6,0,10,32,42,'E8','16th');
/*!40000 ALTER TABLE `jss2b_3rd_term_homeeconomics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_mathematics`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_mathematics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_mathematics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `MTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_mathematics`
--

LOCK TABLES `jss2b_3rd_term_mathematics` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_mathematics` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_mathematics` VALUES (1,'Uzoma Chioma ',1,2,5,8,15,23,'F9','14th'),(2,'Musa Peace ',3,1,9,13,19,32,'F9','10th'),(3,'Adakole Blessing ',2,1,9,12,15,27,'F9','13th'),(4,'Ebiyie Elizabeth ',1,0,1,2,9,11,'F9','19th'),(5,'Mathew Martha ',1,1,6,8,13,21,'F9','16th'),(6,'Agu Chinaza ',1,1,8,10,9,19,'F9','18th'),(7,'Orinya Peace ',5,6,9,20,48,68,'B3','1st'),(8,'Okoli Jecinta ',1,4,9,14,14,28,'F9','11th'),(9,'Musa Timothy ',7,2,9,18,35,53,'C6','4th'),(10,'Ejikeme Trust ',3,5,7,15,31,46,'D7','5th'),(11,'Dilibe Chigozie ',4,5,9,18,19,37,'F9','8th'),(12,'Nwobi Truimp ',3,5,9,17,44,61,'C4','2nd'),(13,'Chisom Chinweuba ',2,6,4,12,22,34,'F9','9th'),(14,'Akila Joshua ',0,5,4,9,11,20,'F9','17th'),(15,'Andrew Isaac ',3,4,1,8,15,23,'F9','14th'),(16,'Daniel Omonya ',1,4,10,15,28,43,'E8','6th'),(17,'Anthony Benjamin ',5,4,9,18,40,58,'C5','3rd'),(18,'Solomon John ',4,2,6,12,27,39,'F9','7th'),(19,'Umeh Austin ',3,4,3,10,18,28,'F9','11th');
/*!40000 ALTER TABLE `jss2b_3rd_term_mathematics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_physicalandhealtheducation`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_physicalandhealtheducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_physicalandhealtheducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `PHE_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_physicalandhealtheducation`
--

LOCK TABLES `jss2b_3rd_term_physicalandhealtheducation` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_physicalandhealtheducation` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_physicalandhealtheducation` VALUES (1,'Uzoma Chioma ',7,6,10,23,37,60,'C4','13th'),(2,'Musa Peace ',6,5,10,21,38,59,'C5','14th'),(3,'Adakole Blessing ',9,9,10,28,50,78,'A1','8th'),(4,'Ebiyie Elizabeth ',3,4,7,14,30,44,'E8','18th'),(5,'Mathew Martha ',6,5,10,21,43,64,'C4','10th'),(6,'Agu Chinaza ',2,0,10,12,10,22,'F9','19th'),(7,'Orinya Peace ',6,6,10,22,57,79,'A1','6th'),(8,'Okoli Jecinta ',9,7,10,26,54,80,'A1','3rd'),(9,'Musa Timothy ',10,9,10,29,64,93,'A1','1st'),(10,'Ejikeme Trust ',9,8,10,27,52,79,'A1','6th'),(11,'Dilibe Chigozie ',7,8,10,25,55,80,'A1','3rd'),(12,'Nwobi Truimp ',9,7,10,26,54,80,'A1','3rd'),(13,'Chisom Chinweuba ',9,7,10,26,45,71,'B2','9th'),(14,'Akila Joshua ',5,4,7,16,30,46,'D7','17th'),(15,'Andrew Isaac ',5,6,10,21,41,62,'C4','11th'),(16,'Daniel Omonya ',5,2,10,17,34,51,'C6','16th'),(17,'Anthony Benjamin ',8,7,10,25,57,82,'A1','2nd'),(18,'Solomon John ',4,5,10,19,42,61,'C4','12th'),(19,'Umeh Austin ',3,4,7,14,41,55,'C5','15th');
/*!40000 ALTER TABLE `jss2b_3rd_term_physicalandhealtheducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_socialstudies`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_socialstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_socialstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `STD_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_socialstudies`
--

LOCK TABLES `jss2b_3rd_term_socialstudies` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_socialstudies` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_socialstudies` VALUES (1,'Uzoma Chioma ',6,3,8,17,50,67,'B3','10th'),(2,'Musa Peace ',5,5,8,18,30,48,'D7','17th'),(3,'Adakole Blessing ',7,4,9,20,60,80,'A1','4th'),(4,'Ebiyie Elizabeth ',5,2,5,12,40,52,'C6','16th'),(5,'Mathew Martha ',3,5,6,14,44,58,'C5','14th'),(6,'Agu Chinaza ',3,3,5,11,30,41,'E8','18th'),(7,'Orinya Peace ',7,6,9,22,60,82,'A1','3rd'),(8,'Okoli Jecinta ',5,6,5,16,60,76,'A1','6th'),(9,'Musa Timothy ',6,7,10,23,68,91,'A1','1st'),(10,'Ejikeme Trust ',6,5,5,16,51,67,'B3','10th'),(11,'Dilibe Chigozie ',6,5,9,20,58,78,'A1','5th'),(12,'Nwobi Truimp ',7,9,7,23,52,75,'A1','8th'),(13,'Chisom Chinweuba ',6,6,9,21,46,67,'B3','10th'),(14,'Akila Joshua ',4,6,7,17,47,64,'C4','12th'),(15,'Andrew Isaac ',3,3,2,8,46,54,'C6','15th'),(16,'Daniel Omonya ',5,5,6,16,25,41,'E8','18th'),(17,'Anthony Benjamin ',10,7,10,27,61,88,'A1','2nd'),(18,'Solomon John ',7,5,8,20,56,76,'A1','6th'),(19,'Umeh Austin ',7,3,3,13,47,60,'C4','13th');
/*!40000 ALTER TABLE `jss2b_3rd_term_socialstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_technicaldrawing`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_technicaldrawing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_technicaldrawing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `TDR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_technicaldrawing`
--

LOCK TABLES `jss2b_3rd_term_technicaldrawing` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_technicaldrawing` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_technicaldrawing` VALUES (1,'Uzoma Chioma ',2,4,2,8,23,31,'F9','18th'),(2,'Musa Peace ',6,6,5,17,43,60,'C4','13th'),(3,'Adakole Blessing ',2,6,2,10,60,70,'B2','4th'),(4,'Ebiyie Elizabeth ',5,7,5,17,50,67,'B3','8th'),(5,'Mathew Martha ',2,5,2,9,40,49,'D7','15th'),(6,'Agu Chinaza ',2,2,2,6,23,29,'F9','19th'),(7,'Orinya Peace ',7,6,5,18,53,71,'B2','2nd'),(8,'Okoli Jecinta ',2,2,2,6,45,51,'C6','14th'),(9,'Musa Timothy ',9,5,5,19,50,69,'B3','5th'),(10,'Ejikeme Trust ',6,7,5,18,48,66,'B3','9th'),(11,'Dilibe Chigozie ',2,7,2,11,57,68,'B3','6th'),(12,'Nwobi Truimp ',8,8,5,21,50,71,'B2','2nd'),(13,'Chisom Chinweuba ',2,8,2,12,52,64,'C4','10th'),(14,'Akila Joshua ',2,6,2,10,30,40,'E8','16th'),(15,'Andrew Isaac ',5,6,5,16,45,61,'C4','11th'),(16,'Daniel Omonya ',7,8,5,20,48,68,'B3','6th'),(17,'Anthony Benjamin ',8,7,5,20,41,61,'C4','11th'),(18,'Solomon John ',10,6,5,21,68,89,'A1','1st'),(19,'Umeh Austin ',2,2,2,6,31,37,'F9','17th');
/*!40000 ALTER TABLE `jss2b_3rd_term_technicaldrawing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term_woodwork`
--

DROP TABLE IF EXISTS `jss2b_3rd_term_woodwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term_woodwork` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `WOW_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term_woodwork`
--

LOCK TABLES `jss2b_3rd_term_woodwork` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term_woodwork` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term_woodwork` VALUES (1,'Uzoma Chioma ',1,1,1,3,30,33,'F9','10th'),(2,'Musa Peace ',1,9,1,11,30,41,'E8','3rd'),(3,'Adakole Blessing ',1,1,1,3,20,23,'F9','16th'),(4,'Ebiyie Elizabeth ',2,1,2,5,5,10,'F9','19th'),(5,'Mathew Martha ',3,7,3,13,30,43,'E8','2nd'),(6,'Agu Chinaza ',2,8,2,12,20,32,'F9','11th'),(7,'Orinya Peace ',2,7,2,11,30,41,'E8','3rd'),(8,'Okoli Jecinta ',1,1,1,3,35,38,'F9','7th'),(9,'Musa Timothy ',3,7,3,13,27,40,'E8','6th'),(10,'Ejikeme Trust ',2,8,2,12,25,37,'F9','8th'),(11,'Dilibe Chigozie ',3,1,1,5,20,25,'F9','14th'),(12,'Nwobi Truimp ',3,8,3,14,30,44,'E8','1st'),(13,'Chisom Chinweuba ',1,1,1,3,15,18,'F9','18th'),(14,'Akila Joshua ',1,1,1,3,22,25,'F9','14th'),(15,'Andrew Isaac ',1,1,1,3,18,21,'F9','17th'),(16,'Daniel Omonya ',5,7,5,17,20,37,'F9','8th'),(17,'Anthony Benjamin ',2,1,2,5,36,41,'E8','3rd'),(18,'Solomon John ',2,6,2,10,20,30,'F9','12th'),(19,'Umeh Austin ',4,1,4,9,20,29,'F9','13th');
/*!40000 ALTER TABLE `jss2b_3rd_term_woodwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_1st_term_computerstudies`
--

DROP TABLE IF EXISTS `ss1a_1st_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_1st_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_1st_term_computerstudies`
--

LOCK TABLES `ss1a_1st_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `ss1a_1st_term_computerstudies` DISABLE KEYS */;
INSERT INTO `ss1a_1st_term_computerstudies` VALUES (1,'Ahmed Saad Mohammed',8,8,8,24,55,79,'A1','2nd'),(2,'Aniebona Favour ',7,4,2,13,28,41,'E8','19th'),(3,'Akpan Godwin ',6,5,8,19,44,63,'C4','9th'),(4,'Anyadiegwu Victory ',7,6,5,18,40,58,'C5','10th'),(5,'Benneth Emmanuel ',8,7,5,20,53,73,'B2','5th'),(6,'Bulus Samson Oche',7,6,1,14,43,57,'C5','11th'),(7,'Dilibe Emmanuel ',6,5,4,15,33,48,'D7','17th'),(8,'Erhrunse Gift ',8,6,9,23,55,78,'A1','3rd'),(9,'Ebiyei Mary ',8,6,5,19,45,64,'C4','8th'),(10,'Joel Jeremiah ',8,6,5,19,47,66,'B3','7th'),(11,'Lazarus Chiamaka ',8,7,6,21,54,75,'A1','4th'),(12,'Livinus Mary ',8,7,3,18,65,83,'A1','1st'),(13,'Okoli Sunday ',7,0,7,14,41,55,'C5','14th'),(14,'Okpube Loveline ',7,5,0,12,45,57,'C5','11th'),(15,'Owah Ifeanyi ',7,5,4,16,51,67,'B3','6th'),(16,'Tokpa Elizabeth ',6,0,7,13,32,45,'D7','18th'),(17,'Urhoma Glory ',5,5,5,15,40,55,'C5','14th'),(18,'Aruoba Chiamaka ',7,7,7,21,34,55,'C5','14th'),(19,'Nnayelugo Tochukwu ',7,6,0,13,43,56,'C5','13th');
/*!40000 ALTER TABLE `ss1a_1st_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_1st_term_domesticinstallation`
--

DROP TABLE IF EXISTS `ss1a_1st_term_domesticinstallation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_1st_term_domesticinstallation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `DIN_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_1st_term_domesticinstallation`
--

LOCK TABLES `ss1a_1st_term_domesticinstallation` WRITE;
/*!40000 ALTER TABLE `ss1a_1st_term_domesticinstallation` DISABLE KEYS */;
INSERT INTO `ss1a_1st_term_domesticinstallation` VALUES (1,'Ahmed Saad Mohammed',9,8,8,25,40,65,'B3','5th'),(2,'Aniebona Favour ',8,6,5,19,45,64,'C4','8th'),(3,'Akpan Godwin ',8,6,3,17,48,65,'B3','5th'),(4,'Anyadiegwu Victory ',5,5,5,15,25,40,'E8','18th'),(5,'Benneth Emmanuel ',6,5,4,15,29,44,'E8','17th'),(6,'Bulus Samson Oche',6,5,5,16,56,72,'B2','2nd'),(7,'Dilibe Emmanuel ',6,6,7,19,46,65,'B3','5th'),(8,'Erhrunse Gift ',6,6,2,14,40,54,'C6','12th'),(9,'Ebiyei Mary ',3,4,6,13,20,33,'F9','19th'),(10,'Joel Jeremiah ',6,5,5,16,55,71,'B2','3rd'),(11,'Lazarus Chiamaka ',7,5,4,16,45,61,'C4','10th'),(12,'Livinus Mary ',7,7,6,20,30,50,'C6','14th'),(13,'Okoli Sunday ',6,6,6,18,28,46,'D7','16th'),(14,'Okpube Loveline ',8,6,6,20,37,57,'C5','11th'),(15,'Owah Ifeanyi ',7,7,5,19,48,67,'B3','4th'),(16,'Tokpa Elizabeth ',8,5,8,21,29,50,'C6','14th'),(17,'Urhoma Glory ',7,5,5,17,56,73,'B2','1st'),(18,'Aruoba Chiamaka ',8,7,7,22,30,52,'C6','13th'),(19,'Nnayelugo Tochukwu ',7,7,4,18,45,63,'C4','9th');
/*!40000 ALTER TABLE `ss1a_1st_term_domesticinstallation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_1st_term_garmentmaking`
--

DROP TABLE IF EXISTS `ss1a_1st_term_garmentmaking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_1st_term_garmentmaking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GMK_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_1st_term_garmentmaking`
--

LOCK TABLES `ss1a_1st_term_garmentmaking` WRITE;
/*!40000 ALTER TABLE `ss1a_1st_term_garmentmaking` DISABLE KEYS */;
INSERT INTO `ss1a_1st_term_garmentmaking` VALUES (1,'Ahmed Saad Mohammed',8,8,8,24,45,69,'B3','5th'),(2,'Aniebona Favour ',4,3,5,12,44,56,'C5','16th'),(3,'Akpan Godwin ',8,7,6,21,40,61,'C4','12th'),(4,'Anyadiegwu Victory ',7,6,7,20,55,75,'A1','2nd'),(5,'Benneth Emmanuel ',6,5,4,15,43,58,'C5','15th'),(6,'Bulus Samson Oche',4,4,5,13,47,60,'C4','13th'),(7,'Dilibe Emmanuel ',2,1,5,8,25,33,'F9','19th'),(8,'Erhrunse Gift ',7,7,7,21,53,74,'B2','4th'),(9,'Ebiyei Mary ',4,4,1,9,38,47,'D7','18th'),(10,'Joel Jeremiah ',7,8,5,20,44,64,'C4','9th'),(11,'Lazarus Chiamaka ',7,6,6,19,50,69,'B3','5th'),(12,'Livinus Mary ',8,7,7,22,58,80,'A1','1st'),(13,'Okoli Sunday ',8,7,6,21,54,75,'A1','2nd'),(14,'Okpube Loveline ',8,6,6,20,39,59,'C5','14th'),(15,'Owah Ifeanyi ',8,6,5,19,44,63,'C4','10th'),(16,'Tokpa Elizabeth ',8,6,5,19,43,62,'C4','11th'),(17,'Urhoma Glory ',7,6,6,19,48,67,'B3','7th'),(18,'Aruoba Chiamaka ',5,4,4,13,40,53,'C6','17th'),(19,'Nnayelugo Tochukwu ',6,5,8,19,48,67,'B3','7th');
/*!40000 ALTER TABLE `ss1a_1st_term_garmentmaking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_2nd_term_computerstudies`
--

DROP TABLE IF EXISTS `ss1a_2nd_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_2nd_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_2nd_term_computerstudies`
--

LOCK TABLES `ss1a_2nd_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `ss1a_2nd_term_computerstudies` DISABLE KEYS */;
INSERT INTO `ss1a_2nd_term_computerstudies` VALUES (1,'Ahmed Saad Mohammed',9,8,6,23,40,63,'C4','11th'),(2,'Aniebona Favour ',9,9,8,26,45,71,'B2','4th'),(3,'Akpan Godwin ',7,0,8,15,20,35,'F9','19th'),(4,'Anyadiegwu Victory ',8,6,5,19,53,72,'B2','3rd'),(5,'Benneth Emmanuel ',8,7,7,22,44,66,'B3','6th'),(6,'Bulus Samson Oche',7,6,5,18,35,53,'C6','16th'),(7,'Dilibe Emmanuel ',6,6,8,20,45,65,'B3','8th'),(8,'Erhrunse Gift ',7,6,5,18,38,56,'C5','14th'),(9,'Ebiyei Mary ',6,5,6,17,47,64,'C4','10th'),(10,'Joel Jeremiah ',8,6,7,21,45,66,'B3','6th'),(11,'Lazarus Chiamaka ',4,6,5,15,44,59,'C5','12th'),(12,'Livinus Mary ',7,8,5,20,55,75,'A1','1st'),(13,'Okoli Sunday ',7,7,6,20,35,55,'C5','15th'),(14,'Okpube Loveline ',8,6,5,19,38,57,'C5','13th'),(15,'Owah Ifeanyi ',8,6,7,21,54,75,'A1','1st'),(16,'Tokpa Elizabeth ',7,6,6,19,51,70,'B2','5th'),(17,'Urhoma Glory ',8,8,8,24,40,64,'C4','10th'),(18,'Aruoba Chiamaka ',3,5,4,12,36,48,'D7','17th'),(19,'Nnayelugo Tochukwu ',7,8,7,22,25,47,'D7','18th');
/*!40000 ALTER TABLE `ss1a_2nd_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_2nd_term_domesticinstallation`
--

DROP TABLE IF EXISTS `ss1a_2nd_term_domesticinstallation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_2nd_term_domesticinstallation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `DIN_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_2nd_term_domesticinstallation`
--

LOCK TABLES `ss1a_2nd_term_domesticinstallation` WRITE;
/*!40000 ALTER TABLE `ss1a_2nd_term_domesticinstallation` DISABLE KEYS */;
INSERT INTO `ss1a_2nd_term_domesticinstallation` VALUES (1,'Ahmed Saad Mohammed',7,6,5,18,35,53,'C6','15th'),(2,'Aniebona Favour ',8,6,4,18,39,57,'C5','13th'),(3,'Akpan Godwin ',7,7,6,20,52,72,'B2','2nd'),(4,'Anyadiegwu Victory ',6,2,7,15,40,55,'C5','14th'),(5,'Benneth Emmanuel ',6,6,4,16,43,59,'C5','11th'),(6,'Bulus Samson Oche',4,2,2,8,27,35,'F9','19th'),(7,'Dilibe Emmanuel ',7,6,6,19,44,63,'C4','8th'),(8,'Erhrunse Gift ',7,6,6,19,46,65,'B3','7th'),(9,'Ebiyei Mary ',6,5,4,15,48,63,'C4','8th'),(10,'Joel Jeremiah ',2,6,5,13,38,51,'C6','16th'),(11,'Lazarus Chiamaka ',8,6,5,19,39,58,'C5','12th'),(12,'Livinus Mary ',8,6,5,19,49,68,'B3','4th'),(13,'Okoli Sunday ',5,5,5,15,45,60,'C4','10th'),(14,'Okpube Loveline ',6,7,6,19,48,67,'B3','5th'),(15,'Owah Ifeanyi ',6,7,5,18,56,74,'B2','1st'),(16,'Tokpa Elizabeth ',5,4,7,16,25,41,'E8','18th'),(17,'Urhoma Glory ',8,6,7,21,30,51,'C6','16th'),(18,'Aruoba Chiamaka ',5,7,5,17,54,71,'B2','3rd'),(19,'Nnayelugo Tochukwu ',6,7,5,18,48,66,'B3','6th');
/*!40000 ALTER TABLE `ss1a_2nd_term_domesticinstallation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_2nd_term_garmentmaking`
--

DROP TABLE IF EXISTS `ss1a_2nd_term_garmentmaking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_2nd_term_garmentmaking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GMK_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_2nd_term_garmentmaking`
--

LOCK TABLES `ss1a_2nd_term_garmentmaking` WRITE;
/*!40000 ALTER TABLE `ss1a_2nd_term_garmentmaking` DISABLE KEYS */;
INSERT INTO `ss1a_2nd_term_garmentmaking` VALUES (1,'Ahmed Saad Mohammed',8,7,6,21,40,61,'C4','10th'),(2,'Aniebona Favour ',8,6,5,19,37,56,'C5','14th'),(3,'Akpan Godwin ',7,7,7,21,54,75,'A1','2nd'),(4,'Anyadiegwu Victory ',9,7,7,23,38,61,'C4','10th'),(5,'Benneth Emmanuel ',8,6,5,19,53,72,'B2','4th'),(6,'Bulus Samson Oche',8,8,6,22,40,62,'C4','7th'),(7,'Dilibe Emmanuel ',2,5,5,12,20,32,'F9','18th'),(8,'Erhrunse Gift ',4,5,2,11,30,41,'E8','17th'),(9,'Ebiyei Mary ',7,6,5,18,39,57,'C5','13th'),(10,'Joel Jeremiah ',2,2,2,6,25,31,'F9','19th'),(11,'Lazarus Chiamaka ',4,4,8,16,44,60,'C4','11th'),(12,'Livinus Mary ',5,8,5,18,57,75,'A1','2nd'),(13,'Okoli Sunday ',3,4,2,9,40,49,'D7','16th'),(14,'Okpube Loveline ',7,5,8,20,50,70,'B2','5th'),(15,'Owah Ifeanyi ',4,5,3,12,44,56,'C5','14th'),(16,'Tokpa Elizabeth ',5,5,5,15,45,60,'C4','11th'),(17,'Urhoma Glory ',3,6,5,14,48,62,'C4','7th'),(18,'Aruoba Chiamaka ',8,8,8,24,55,79,'A1','1st'),(19,'Nnayelugo Tochukwu ',7,7,7,21,48,69,'B3','6th');
/*!40000 ALTER TABLE `ss1a_2nd_term_garmentmaking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_agriculturalscience`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_agriculturalscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_agriculturalscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `AGR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_agriculturalscience`
--

LOCK TABLES `ss1a_3rd_term_agriculturalscience` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_agriculturalscience` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_agriculturalscience` VALUES (1,'Ahmed Saad Mohammed',2,2,8,12,39,51,'C6','15th'),(2,'Aniebona Favour ',2,6,8,16,49,65,'B3','8th'),(3,'Akpan Godwin ',2,6,4,12,39,51,'C6','15th'),(4,'Anyadiegwu Victory ',10,5,9,24,46,70,'B2','4th'),(5,'Benneth Emmanuel ',5,1,9,15,53,68,'B3','5th'),(6,'Bulus Samson Oche',2,8,2,12,30,42,'E8','19th'),(7,'Dilibe Emmanuel ',5,5,5,15,36,51,'C6','15th'),(8,'Erhrunse Gift ',8,6,5,19,49,68,'B3','5th'),(9,'Ebiyei Mary ',10,1,8,19,37,56,'C5','12th'),(10,'Joel Jeremiah ',2,7,4,13,40,53,'C6','14th'),(11,'Lazarus Chiamaka ',10,4,8,22,42,64,'C4','10th'),(12,'Livinus Mary ',10,8,4,22,57,79,'A1','1st'),(13,'Okoli Sunday ',10,5,5,20,51,71,'B2','3rd'),(14,'Okpube Loveline ',8,4,4,16,58,74,'B2','2nd'),(15,'Owah Ifeanyi ',8,8,7,23,41,64,'C4','10th'),(16,'Tokpa Elizabeth ',2,5,8,15,53,68,'B3','5th'),(17,'Urhoma Glory ',2,6,9,17,39,56,'C5','12th'),(18,'Aruoba Chiamaka ',8,5,5,18,29,47,'D7','18th'),(19,'Nnayelugo Tochukwu ',2,9,5,16,46,62,'C4','11th');
/*!40000 ALTER TABLE `ss1a_3rd_term_agriculturalscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_animalhusbandry`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_animalhusbandry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_animalhusbandry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ANH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_animalhusbandry`
--

LOCK TABLES `ss1a_3rd_term_animalhusbandry` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_animalhusbandry` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_animalhusbandry` VALUES (1,'Ahmed Saad Mohammed',6,2,2,10,25,35,'F9','16th'),(2,'Aniebona Favour ',8,5,7,20,43,63,'C4','4th'),(3,'Akpan Godwin ',7,2,2,11,20,31,'F9','19th'),(4,'Anyadiegwu Victory ',5,5,7,17,27,44,'E8','14th'),(5,'Benneth Emmanuel ',9,1,10,20,45,65,'B3','3rd'),(6,'Bulus Samson Oche',7,4,2,13,33,46,'D7','10th'),(7,'Dilibe Emmanuel ',8,3,5,16,30,46,'D7','10th'),(8,'Erhrunse Gift ',7,3,2,12,23,35,'F9','16th'),(9,'Ebiyei Mary ',8,6,10,24,39,63,'C4','4th'),(10,'Joel Jeremiah ',7,3,2,12,23,35,'F9','16th'),(11,'Lazarus Chiamaka ',8,3,2,13,27,40,'E8','15th'),(12,'Livinus Mary ',9,8,10,27,48,75,'A1','1st'),(13,'Okoli Sunday ',2,4,7,13,36,49,'D7','9th'),(14,'Okpube Loveline ',7,5,10,22,50,72,'B2','2nd'),(15,'Owah Ifeanyi ',7,5,10,22,40,62,'C4','6th'),(16,'Tokpa Elizabeth ',8,2,2,12,42,54,'C6','7th'),(17,'Urhoma Glory ',8,2,7,17,37,54,'C6','7th'),(18,'Aruoba Chiamaka ',5,4,1,10,35,45,'D7','12th'),(19,'Nnayelugo Tochukwu ',8,3,2,13,32,45,'D7','12th');
/*!40000 ALTER TABLE `ss1a_3rd_term_animalhusbandry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_basicelectricity`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_basicelectricity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_basicelectricity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BEL_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_basicelectricity`
--

LOCK TABLES `ss1a_3rd_term_basicelectricity` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_basicelectricity` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_basicelectricity` VALUES (1,'Ahmed Saad Mohammed',1,1,1,3,8,11,'F9','19th'),(2,'Aniebona Favour ',0,5,0,5,33,38,'F9','11th'),(3,'Akpan Godwin ',10,10,4,24,30,54,'C6','4th'),(4,'Anyadiegwu Victory ',10,2,5,17,33,50,'C6','5th'),(5,'Benneth Emmanuel ',10,5,1,16,40,56,'C5','3rd'),(6,'Bulus Samson Oche',1,1,1,3,25,28,'F9','16th'),(7,'Dilibe Emmanuel ',6,10,1,17,20,37,'F9','12th'),(8,'Erhrunse Gift ',10,1,1,12,27,39,'F9','10th'),(9,'Ebiyei Mary ',1,1,1,3,10,13,'F9','18th'),(10,'Joel Jeremiah ',10,1,10,21,10,31,'F9','15th'),(11,'Lazarus Chiamaka ',10,7,7,24,23,47,'D7','7th'),(12,'Livinus Mary ',10,10,10,30,48,78,'A1','1st'),(13,'Okoli Sunday ',10,10,4,24,22,46,'D7','8th'),(14,'Okpube Loveline ',1,10,8,19,52,71,'B2','2nd'),(15,'Owah Ifeanyi ',10,10,5,25,10,35,'F9','13th'),(16,'Tokpa Elizabeth ',1,1,10,12,33,45,'D7','9th'),(17,'Urhoma Glory ',8,10,10,28,20,48,'D7','6th'),(18,'Aruoba Chiamaka ',1,10,1,12,20,32,'F9','14th'),(19,'Nnayelugo Tochukwu ',1,1,1,3,15,18,'F9','17th');
/*!40000 ALTER TABLE `ss1a_3rd_term_basicelectricity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_biology`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_biology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_biology` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BIO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_biology`
--

LOCK TABLES `ss1a_3rd_term_biology` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_biology` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_biology` VALUES (1,'Ahmed Saad Mohammed',10,6,10,26,55,81,'A1','8th'),(2,'Aniebona Favour ',10,10,10,30,55,85,'A1','7th'),(3,'Akpan Godwin ',10,7,10,27,46,73,'B2','16th'),(4,'Anyadiegwu Victory ',10,9,10,29,44,73,'B2','16th'),(5,'Benneth Emmanuel ',10,10,10,30,64,94,'A1','2nd'),(6,'Bulus Samson Oche',10,7,10,27,51,78,'A1','10th'),(7,'Dilibe Emmanuel ',10,8,10,28,46,74,'B2','14th'),(8,'Erhrunse Gift ',10,10,10,30,60,90,'A1','4th'),(9,'Ebiyei Mary ',10,6,10,26,48,74,'B2','14th'),(10,'Joel Jeremiah ',10,7,10,27,44,71,'B2','19th'),(11,'Lazarus Chiamaka ',10,10,10,30,46,76,'A1','12th'),(12,'Livinus Mary ',10,10,10,30,62,92,'A1','3rd'),(13,'Okoli Sunday ',10,8,10,28,53,81,'A1','8th'),(14,'Okpube Loveline ',10,10,10,30,69,99,'A1','1st'),(15,'Owah Ifeanyi ',10,10,10,30,56,86,'A1','6th'),(16,'Tokpa Elizabeth ',10,9,10,29,59,88,'A1','5th'),(17,'Urhoma Glory ',10,8,10,28,48,76,'A1','12th'),(18,'Aruoba Chiamaka ',10,6,10,26,47,73,'B2','16th'),(19,'Nnayelugo Tochukwu ',10,7,10,27,50,77,'A1','11th');
/*!40000 ALTER TABLE `ss1a_3rd_term_biology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_buildingtechnilogy`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_buildingtechnilogy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_buildingtechnilogy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BUT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_buildingtechnilogy`
--

LOCK TABLES `ss1a_3rd_term_buildingtechnilogy` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_buildingtechnilogy` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_buildingtechnilogy` VALUES (1,'Ahmed Saad Mohammed',5,0,6,11,32,43,'E8','14th'),(2,'Aniebona Favour ',7,9,10,26,35,61,'C4','3rd'),(3,'Akpan Godwin ',5,8,8,21,28,49,'D7','8th'),(4,'Anyadiegwu Victory ',0,0,10,10,33,43,'E8','14th'),(5,'Benneth Emmanuel ',10,7,10,27,34,61,'C4','3rd'),(6,'Bulus Samson Oche',0,0,0,0,25,25,'F9','18th'),(7,'Dilibe Emmanuel ',4,10,10,24,28,52,'C6','7th'),(8,'Erhrunse Gift ',7,9,10,26,36,62,'C4','2nd'),(9,'Ebiyei Mary ',9,0,0,9,0,9,'F9','19th'),(10,'Joel Jeremiah ',5,5,10,20,20,40,'E8','16th'),(11,'Lazarus Chiamaka ',4,0,10,14,30,44,'E8','13th'),(12,'Livinus Mary ',9,9,10,28,55,83,'A1','1st'),(13,'Okoli Sunday ',9,0,10,19,30,49,'D7','8th'),(14,'Okpube Loveline ',6,9,10,25,31,56,'C5','5th'),(15,'Owah Ifeanyi ',8,6,10,24,21,45,'D7','11th'),(16,'Tokpa Elizabeth ',9,9,10,28,25,53,'C6','6th'),(17,'Urhoma Glory ',0,0,10,10,21,31,'F9','17th'),(18,'Aruoba Chiamaka ',5,0,10,15,30,45,'D7','11th'),(19,'Nnayelugo Tochukwu ',6,0,10,16,30,46,'D7','10th');
/*!40000 ALTER TABLE `ss1a_3rd_term_buildingtechnilogy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_chemistry`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_chemistry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_chemistry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CHM_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_chemistry`
--

LOCK TABLES `ss1a_3rd_term_chemistry` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_chemistry` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_chemistry` VALUES (1,'Ahmed Saad Mohammed',5,3,5,13,17,30,'F9','15th'),(2,'Aniebona Favour ',7,6,5,18,36,54,'C6','6th'),(3,'Akpan Godwin ',4,2,5,11,17,28,'F9','17th'),(4,'Anyadiegwu Victory ',6,2,10,18,19,37,'F9','10th'),(5,'Benneth Emmanuel ',10,10,10,30,49,79,'A1','1st'),(6,'Bulus Samson Oche',4,3,5,12,14,26,'F9','19th'),(7,'Dilibe Emmanuel ',4,4,8,16,14,30,'F9','15th'),(8,'Erhrunse Gift ',6,8,8,22,35,57,'C5','4th'),(9,'Ebiyei Mary ',3,2,10,15,18,33,'F9','14th'),(10,'Joel Jeremiah ',3,4,7,14,22,36,'F9','11th'),(11,'Lazarus Chiamaka ',4,4,10,18,18,36,'F9','11th'),(12,'Livinus Mary ',10,8,10,28,50,78,'A1','2nd'),(13,'Okoli Sunday ',4,5,10,19,22,41,'E8','7th'),(14,'Okpube Loveline ',7,7,9,23,53,76,'A1','3rd'),(15,'Owah Ifeanyi ',5,4,9,18,19,37,'F9','10th'),(16,'Tokpa Elizabeth ',7,6,10,23,33,56,'C5','5th'),(17,'Urhoma Glory ',3,4,5,12,15,27,'F9','18th'),(18,'Aruoba Chiamaka ',4,4,10,18,18,36,'F9','11th'),(19,'Nnayelugo Tochukwu ',6,6,5,17,22,39,'F9','8th');
/*!40000 ALTER TABLE `ss1a_3rd_term_chemistry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_christianreligiousstudies`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_christianreligiousstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_christianreligiousstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CRS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_christianreligiousstudies`
--

LOCK TABLES `ss1a_3rd_term_christianreligiousstudies` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_christianreligiousstudies` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_christianreligiousstudies` VALUES (1,'Ahmed Saad Mohammed',1,1,8,10,25,35,'F9','16th'),(2,'Aniebona Favour ',5,4,9,18,29,47,'D7','7th'),(3,'Akpan Godwin ',2,1,9,12,32,44,'E8','9th'),(4,'Anyadiegwu Victory ',4,1,10,15,36,51,'C6','6th'),(5,'Benneth Emmanuel ',9,3,10,22,39,61,'C4','3rd'),(6,'Bulus Samson Oche',3,1,8,12,24,36,'F9','13th'),(7,'Dilibe Emmanuel ',6,1,10,17,25,42,'E8','11th'),(8,'Erhrunse Gift ',4,1,9,14,47,61,'C4','3rd'),(9,'Ebiyei Mary ',2,1,8,11,24,35,'F9','16th'),(10,'Joel Jeremiah ',1,1,8,10,26,36,'F9','13th'),(11,'Lazarus Chiamaka ',7,1,10,18,17,35,'F9','16th'),(12,'Livinus Mary ',10,8,10,28,46,74,'B2','1st'),(13,'Okoli Sunday ',10,1,10,21,21,42,'E8','11th'),(14,'Okpube Loveline ',7,6,10,23,46,69,'B3','2nd'),(15,'Owah Ifeanyi ',5,1,10,16,31,47,'D7','7th'),(16,'Tokpa Elizabeth ',4,3,9,16,44,60,'C4','5th'),(17,'Urhoma Glory ',2,1,9,12,24,36,'F9','13th'),(18,'Aruoba Chiamaka ',1,1,9,11,20,31,'F9','19th'),(19,'Nnayelugo Tochukwu ',4,1,5,10,33,43,'E8','10th');
/*!40000 ALTER TABLE `ss1a_3rd_term_christianreligiousstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_civiceducation`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_civiceducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_civiceducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CIV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_civiceducation`
--

LOCK TABLES `ss1a_3rd_term_civiceducation` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_civiceducation` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_civiceducation` VALUES (1,'Ahmed Saad Mohammed',3,8,0,11,48,59,'C5','9th'),(2,'Aniebona Favour ',7,9,10,26,41,67,'B3','6th'),(3,'Akpan Godwin ',0,7,10,17,29,46,'D7','16th'),(4,'Anyadiegwu Victory ',5,8,10,23,40,63,'C4','8th'),(5,'Benneth Emmanuel ',10,8,10,28,52,80,'A1','1st'),(6,'Bulus Samson Oche',5,0,0,5,35,40,'E8','19th'),(7,'Dilibe Emmanuel ',6,0,0,6,36,42,'E8','18th'),(8,'Erhrunse Gift ',9,9,10,28,40,68,'B3','5th'),(9,'Ebiyei Mary ',8,0,10,18,40,58,'C5','10th'),(10,'Joel Jeremiah ',3,5,10,18,29,47,'D7','15th'),(11,'Lazarus Chiamaka ',6,0,10,16,36,52,'C6','13th'),(12,'Livinus Mary ',10,7,10,27,51,78,'A1','3rd'),(13,'Okoli Sunday ',7,4,10,21,37,58,'C5','10th'),(14,'Okpube Loveline ',7,8,10,25,54,79,'A1','2nd'),(15,'Owah Ifeanyi ',5,7,10,22,31,53,'C6','12th'),(16,'Tokpa Elizabeth ',6,8,10,24,47,71,'B2','4th'),(17,'Urhoma Glory ',4,0,10,14,30,44,'E8','17th'),(18,'Aruoba Chiamaka ',6,4,10,20,30,50,'C6','14th'),(19,'Nnayelugo Tochukwu ',7,0,10,17,47,64,'C4','7th');
/*!40000 ALTER TABLE `ss1a_3rd_term_civiceducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_commerce`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_commerce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_commerce` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COM_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_commerce`
--

LOCK TABLES `ss1a_3rd_term_commerce` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_commerce` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_commerce` VALUES (1,'Ahmed Saad Mohammed',8,8,9,25,34,59,'C5','7th'),(2,'Aniebona Favour ',9,6,9,24,37,61,'C4','6th'),(3,'Akpan Godwin ',8,7,9,24,23,47,'D7','9th'),(4,'Anyadiegwu Victory ',7,3,9,19,24,43,'E8','11th'),(5,'Benneth Emmanuel ',10,5,9,24,49,73,'B2','4th'),(6,'Bulus Samson Oche',7,3,9,19,22,41,'E8','13th'),(7,'Dilibe Emmanuel ',6,3,9,18,23,41,'E8','13th'),(8,'Erhrunse Gift ',10,3,9,22,42,64,'C4','5th'),(9,'Ebiyei Mary ',0,5,9,14,20,34,'F9','17th'),(10,'Joel Jeremiah ',7,0,9,16,26,42,'E8','12th'),(11,'Lazarus Chiamaka ',3,3,9,15,17,32,'F9','18th'),(12,'Livinus Mary ',10,6,9,25,55,80,'A1','2nd'),(13,'Okoli Sunday ',9,4,9,22,26,48,'D7','8th'),(14,'Okpube Loveline ',10,7,9,26,56,82,'A1','1st'),(15,'Owah Ifeanyi ',1,2,9,12,19,31,'F9','19th'),(16,'Tokpa Elizabeth ',7,8,9,24,52,76,'A1','3rd'),(17,'Urhoma Glory ',10,2,8,20,25,45,'D7','10th'),(18,'Aruoba Chiamaka ',5,2,9,16,22,38,'F9','16th'),(19,'Nnayelugo Tochukwu ',7,0,9,16,23,39,'F9','15th');
/*!40000 ALTER TABLE `ss1a_3rd_term_commerce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_computerstudies`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_computerstudies`
--

LOCK TABLES `ss1a_3rd_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_computerstudies` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_computerstudies` VALUES (1,'Ahmed Saad Mohammed',2,2,0,4,55,59,'C5','8th'),(2,'Aniebona Favour ',6,6,7,19,49,68,'B3','5th'),(3,'Akpan Godwin ',8,8,0,16,35,51,'C6','12th'),(4,'Anyadiegwu Victory ',0,0,10,10,33,43,'E8','16th'),(5,'Benneth Emmanuel ',6,6,10,22,61,83,'A1','1st'),(6,'Bulus Samson Oche',0,0,0,0,39,39,'F9','18th'),(7,'Dilibe Emmanuel ',6,6,10,22,32,54,'C6','10th'),(8,'Erhrunse Gift ',6,6,10,22,49,71,'B2','4th'),(9,'Ebiyei Mary ',5,5,0,10,21,31,'F9','19th'),(10,'Joel Jeremiah ',8,8,0,16,28,44,'E8','15th'),(11,'Lazarus Chiamaka ',6,6,9,21,39,60,'C4','7th'),(12,'Livinus Mary ',5,5,10,20,59,79,'A1','3rd'),(13,'Okoli Sunday ',7,7,0,14,43,57,'C5','9th'),(14,'Okpube Loveline ',6,6,9,21,60,81,'A1','2nd'),(15,'Owah Ifeanyi ',6,6,10,22,39,61,'C4','6th'),(16,'Tokpa Elizabeth ',0,0,10,10,33,43,'E8','16th'),(17,'Urhoma Glory ',5,5,0,10,39,49,'D7','13th'),(18,'Aruoba Chiamaka ',6,6,10,22,30,52,'C6','11th'),(19,'Nnayelugo Tochukwu ',6,6,0,12,36,48,'D7','14th');
/*!40000 ALTER TABLE `ss1a_3rd_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_domesticinstallation`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_domesticinstallation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_domesticinstallation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `DIN_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_domesticinstallation`
--

LOCK TABLES `ss1a_3rd_term_domesticinstallation` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_domesticinstallation` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_domesticinstallation` VALUES (1,'Ahmed Saad Mohammed',5,1,1,7,22,29,'F9','15th'),(2,'Aniebona Favour ',10,10,10,30,25,55,'C5','5th'),(3,'Akpan Godwin ',3,1,1,5,24,29,'F9','15th'),(4,'Anyadiegwu Victory ',8,1,1,10,10,20,'F9','18th'),(5,'Benneth Emmanuel ',5,10,5,20,2,22,'F9','17th'),(6,'Bulus Samson Oche',1,1,1,3,27,30,'F9','14th'),(7,'Dilibe Emmanuel ',1,6,7,14,28,42,'E8','11th'),(8,'Erhrunse Gift ',1,5,6,12,48,60,'C4','4th'),(9,'Ebiyei Mary ',10,5,1,16,30,46,'D7','9th'),(10,'Joel Jeremiah ',9,10,10,29,25,54,'C6','6th'),(11,'Lazarus Chiamaka ',10,5,1,16,21,37,'F9','12th'),(12,'Livinus Mary ',5,10,10,25,49,74,'B2','2nd'),(13,'Okoli Sunday ',3,10,10,23,25,48,'D7','7th'),(14,'Okpube Loveline ',7,10,8,25,57,82,'A1','1st'),(15,'Owah Ifeanyi ',9,1,10,20,42,62,'C4','3rd'),(16,'Tokpa Elizabeth ',6,8,1,15,28,43,'E8','10th'),(17,'Urhoma Glory ',10,8,10,28,20,48,'D7','7th'),(18,'Aruoba Chiamaka ',10,1,1,12,22,34,'F9','13th'),(19,'Nnayelugo Tochukwu ',1,1,1,3,6,9,'F9','19th');
/*!40000 ALTER TABLE `ss1a_3rd_term_domesticinstallation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_economics`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_economics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_economics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ECO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_economics`
--

LOCK TABLES `ss1a_3rd_term_economics` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_economics` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_economics` VALUES (1,'Ahmed Saad Mohammed',3,5,6,14,26,40,'E8','14th'),(2,'Aniebona Favour ',5,5,6,16,35,51,'C6','5th'),(3,'Akpan Godwin ',5,6,6,17,34,51,'C6','5th'),(4,'Anyadiegwu Victory ',3,5,5,13,27,40,'E8','14th'),(5,'Benneth Emmanuel ',7,7,8,22,35,57,'C5','4th'),(6,'Bulus Samson Oche',2,5,5,12,25,37,'F9','17th'),(7,'Dilibe Emmanuel ',5,6,5,16,20,36,'F9','19th'),(8,'Erhrunse Gift ',6,6,7,19,40,59,'C5','3rd'),(9,'Ebiyei Mary ',3,5,5,13,28,41,'E8','12th'),(10,'Joel Jeremiah ',2,5,5,12,25,37,'F9','17th'),(11,'Lazarus Chiamaka ',3,4,5,12,30,42,'E8','11th'),(12,'Livinus Mary ',9,8,9,26,50,76,'A1','1st'),(13,'Okoli Sunday ',4,5,5,14,26,40,'E8','14th'),(14,'Okpube Loveline ',7,6,7,20,48,68,'B3','2nd'),(15,'Owah Ifeanyi ',2,5,5,12,29,41,'E8','12th'),(16,'Tokpa Elizabeth ',5,5,6,16,35,51,'C6','5th'),(17,'Urhoma Glory ',5,5,5,15,35,50,'C6','8th'),(18,'Aruoba Chiamaka ',3,5,5,13,30,43,'E8','10th'),(19,'Nnayelugo Tochukwu ',4,6,5,15,30,45,'D7','9th');
/*!40000 ALTER TABLE `ss1a_3rd_term_economics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_electronics`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_electronics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ELC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_electronics`
--

LOCK TABLES `ss1a_3rd_term_electronics` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_electronics` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_electronics` VALUES (1,'Ahmed Saad Mohammed',5,5,10,20,10,30,'F9','12th'),(2,'Aniebona Favour ',3,5,5,13,33,46,'D7','4th'),(3,'Akpan Godwin ',6,4,5,15,20,35,'F9','8th'),(4,'Anyadiegwu Victory ',6,5,10,21,25,46,'D7','4th'),(5,'Benneth Emmanuel ',7,5,10,22,65,87,'A1','1st'),(6,'Bulus Samson Oche',1,1,1,3,1,4,'F9','19th'),(7,'Dilibe Emmanuel ',4,3,2,9,10,19,'F9','17th'),(8,'Erhrunse Gift ',2,5,5,12,28,40,'E8','6th'),(9,'Ebiyei Mary ',4,5,10,19,15,34,'F9','10th'),(10,'Joel Jeremiah ',4,5,5,14,11,25,'F9','15th'),(11,'Lazarus Chiamaka ',2,3,5,10,12,22,'F9','16th'),(12,'Livinus Mary ',9,5,10,24,54,78,'A1','2nd'),(13,'Okoli Sunday ',9,4,10,23,15,38,'F9','7th'),(14,'Okpube Loveline ',2,4,5,11,47,58,'C5','3rd'),(15,'Owah Ifeanyi ',6,5,5,16,16,32,'F9','11th'),(16,'Tokpa Elizabeth ',7,5,5,17,18,35,'F9','8th'),(17,'Urhoma Glory ',2,5,5,12,18,30,'F9','12th'),(18,'Aruoba Chiamaka ',1,5,5,11,6,17,'F9','18th'),(19,'Nnayelugo Tochukwu ',3,4,3,10,20,30,'F9','12th');
/*!40000 ALTER TABLE `ss1a_3rd_term_electronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_englishlanguage`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_englishlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_englishlanguage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ENG_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_englishlanguage`
--

LOCK TABLES `ss1a_3rd_term_englishlanguage` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_englishlanguage` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_englishlanguage` VALUES (1,'Ahmed Saad Mohammed',5,5,5,15,24,39,'F9','13th'),(2,'Aniebona Favour ',5,5,5,15,44,59,'C5','3rd'),(3,'Akpan Godwin ',5,5,5,15,20,35,'F9','16th'),(4,'Anyadiegwu Victory ',5,5,5,15,17,32,'F9','19th'),(5,'Benneth Emmanuel ',5,5,5,15,26,41,'E8','12th'),(6,'Bulus Samson Oche',5,5,5,15,29,44,'E8','10th'),(7,'Dilibe Emmanuel ',5,5,5,15,23,38,'F9','14th'),(8,'Erhrunse Gift ',5,5,5,15,47,62,'C4','1st'),(9,'Ebiyei Mary ',5,5,5,15,20,35,'F9','16th'),(10,'Joel Jeremiah ',5,5,5,15,32,47,'D7','7th'),(11,'Lazarus Chiamaka ',5,5,5,15,20,35,'F9','16th'),(12,'Livinus Mary ',5,5,5,15,46,61,'C4','2nd'),(13,'Okoli Sunday ',5,5,5,15,38,53,'C6','6th'),(14,'Okpube Loveline ',5,5,5,15,42,57,'C5','4th'),(15,'Owah Ifeanyi ',5,5,5,15,32,47,'D7','7th'),(16,'Tokpa Elizabeth ',5,5,5,15,39,54,'C6','5th'),(17,'Urhoma Glory ',5,5,5,15,32,47,'D7','7th'),(18,'Aruoba Chiamaka ',5,5,5,15,23,38,'F9','14th'),(19,'Nnayelugo Tochukwu ',5,5,5,15,29,44,'E8','10th');
/*!40000 ALTER TABLE `ss1a_3rd_term_englishlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_financialaccounting`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_financialaccounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_financialaccounting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `FAC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_financialaccounting`
--

LOCK TABLES `ss1a_3rd_term_financialaccounting` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_financialaccounting` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_financialaccounting` VALUES (1,'Ahmed Saad Mohammed',6,5,7,18,30,48,'D7','11th'),(2,'Aniebona Favour ',8,5,6,19,40,59,'C5','4th'),(3,'Akpan Godwin ',7,5,6,18,34,52,'C6','7th'),(4,'Anyadiegwu Victory ',4,6,6,16,33,49,'D7','10th'),(5,'Benneth Emmanuel ',6,5,3,14,50,64,'C4','3rd'),(6,'Bulus Samson Oche',7,4,6,17,24,41,'E8','17th'),(7,'Dilibe Emmanuel ',6,7,3,16,30,46,'D7','14th'),(8,'Erhrunse Gift ',6,7,5,18,35,53,'C6','5th'),(9,'Ebiyei Mary ',6,6,4,16,28,44,'E8','15th'),(10,'Joel Jeremiah ',7,4,5,16,32,48,'D7','11th'),(11,'Lazarus Chiamaka ',7,5,6,18,33,51,'C6','8th'),(12,'Livinus Mary ',8,6,7,21,56,77,'A1','1st'),(13,'Okoli Sunday ',6,8,5,19,34,53,'C6','5th'),(14,'Okpube Loveline ',6,8,5,19,47,66,'B3','2nd'),(15,'Owah Ifeanyi ',6,8,6,20,28,48,'D7','11th'),(16,'Tokpa Elizabeth ',6,7,5,18,33,51,'C6','8th'),(17,'Urhoma Glory ',5,6,5,16,22,38,'F9','18th'),(18,'Aruoba Chiamaka ',4,6,5,15,22,37,'F9','19th'),(19,'Nnayelugo Tochukwu ',5,4,6,15,27,42,'E8','16th');
/*!40000 ALTER TABLE `ss1a_3rd_term_financialaccounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_garmentmaking`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_garmentmaking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_garmentmaking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GMK_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_garmentmaking`
--

LOCK TABLES `ss1a_3rd_term_garmentmaking` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_garmentmaking` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_garmentmaking` VALUES (1,'Ahmed Saad Mohammed',5,5,6,16,38,54,'C6','9th'),(2,'Aniebona Favour ',9,8,8,25,45,70,'B2','5th'),(3,'Akpan Godwin ',4,5,6,15,28,43,'E8','16th'),(4,'Anyadiegwu Victory ',6,5,6,17,35,52,'C6','10th'),(5,'Benneth Emmanuel ',9,8,9,26,46,72,'B2','4th'),(6,'Bulus Samson Oche',6,6,6,18,30,48,'D7','13th'),(7,'Dilibe Emmanuel ',5,5,5,15,28,43,'E8','16th'),(8,'Erhrunse Gift ',9,8,8,25,53,78,'A1','1st'),(9,'Ebiyei Mary ',5,5,6,16,25,41,'E8','18th'),(10,'Joel Jeremiah ',5,5,5,15,25,40,'E8','19th'),(11,'Lazarus Chiamaka ',5,5,5,15,30,45,'D7','14th'),(12,'Livinus Mary ',9,8,8,25,52,77,'A1','2nd'),(13,'Okoli Sunday ',6,5,5,16,33,49,'D7','12th'),(14,'Okpube Loveline ',9,8,8,25,48,73,'B2','3rd'),(15,'Owah Ifeanyi ',5,6,6,17,35,52,'C6','10th'),(16,'Tokpa Elizabeth ',7,7,6,20,40,60,'C4','8th'),(17,'Urhoma Glory ',9,6,7,22,41,63,'C4','6th'),(18,'Aruoba Chiamaka ',4,5,6,15,30,45,'D7','14th'),(19,'Nnayelugo Tochukwu ',9,8,8,25,38,63,'C4','6th');
/*!40000 ALTER TABLE `ss1a_3rd_term_garmentmaking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_geography`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_geography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_geography` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GEO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_geography`
--

LOCK TABLES `ss1a_3rd_term_geography` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_geography` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_geography` VALUES (1,'Ahmed Saad Mohammed',7,4,10,21,30,51,'C6','8th'),(2,'Aniebona Favour ',5,6,10,21,52,73,'B2','4th'),(3,'Akpan Godwin ',3,2,4,9,24,33,'F9','17th'),(4,'Anyadiegwu Victory ',4,1,6,11,28,39,'F9','14th'),(5,'Benneth Emmanuel ',5,5,8,18,59,77,'A1','3rd'),(6,'Bulus Samson Oche',0,2,4,6,37,43,'E8','12th'),(7,'Dilibe Emmanuel ',5,3,8,16,28,44,'E8','11th'),(8,'Erhrunse Gift ',7,5,8,20,52,72,'B2','5th'),(9,'Ebiyei Mary ',5,1,4,10,27,37,'F9','15th'),(10,'Joel Jeremiah ',3,4,5,12,24,36,'F9','16th'),(11,'Lazarus Chiamaka ',5,4,4,13,15,28,'F9','19th'),(12,'Livinus Mary ',7,9,10,26,59,85,'A1','2nd'),(13,'Okoli Sunday ',5,6,10,21,25,46,'D7','10th'),(14,'Okpube Loveline ',7,10,10,27,64,91,'A1','1st'),(15,'Owah Ifeanyi ',6,4,9,19,39,58,'C5','7th'),(16,'Tokpa Elizabeth ',4,5,10,19,47,66,'B3','6th'),(17,'Urhoma Glory ',3,3,9,15,14,29,'F9','18th'),(18,'Aruoba Chiamaka ',4,4,10,18,23,41,'E8','13th'),(19,'Nnayelugo Tochukwu ',5,1,6,12,34,46,'D7','10th');
/*!40000 ALTER TABLE `ss1a_3rd_term_geography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_government`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_government`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_government` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GOV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_government`
--

LOCK TABLES `ss1a_3rd_term_government` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_government` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_government` VALUES (1,'Ahmed Saad Mohammed',5,7,8,20,11,31,'F9','18th'),(2,'Aniebona Favour ',9,8,8,25,34,59,'C5','5th'),(3,'Akpan Godwin ',7,5,8,20,29,49,'D7','7th'),(4,'Anyadiegwu Victory ',5,7,8,20,15,35,'F9','16th'),(5,'Benneth Emmanuel ',8,5,8,21,43,64,'C4','4th'),(6,'Bulus Samson Oche',5,6,8,19,19,38,'F9','15th'),(7,'Dilibe Emmanuel ',6,7,8,21,21,42,'E8','12th'),(8,'Erhrunse Gift ',7,8,4,19,33,52,'C6','6th'),(9,'Ebiyei Mary ',6,7,4,17,25,42,'E8','12th'),(10,'Joel Jeremiah ',4,7,4,15,15,30,'F9','19th'),(11,'Lazarus Chiamaka ',6,8,8,22,24,46,'D7','10th'),(12,'Livinus Mary ',10,8,8,26,54,80,'A1','1st'),(13,'Okoli Sunday ',5,5,8,18,30,48,'D7','8th'),(14,'Okpube Loveline ',9,8,4,21,44,65,'B3','3rd'),(15,'Owah Ifeanyi ',5,7,8,20,23,43,'E8','11th'),(16,'Tokpa Elizabeth ',8,8,8,24,48,72,'B2','2nd'),(17,'Urhoma Glory ',6,8,8,22,25,47,'D7','9th'),(18,'Aruoba Chiamaka ',7,4,4,15,19,34,'F9','17th'),(19,'Nnayelugo Tochukwu ',6,1,8,15,25,40,'E8','14th');
/*!40000 ALTER TABLE `ss1a_3rd_term_government` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_literatureinenglish`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_literatureinenglish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_literatureinenglish` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `LIT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_literatureinenglish`
--

LOCK TABLES `ss1a_3rd_term_literatureinenglish` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_literatureinenglish` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_literatureinenglish` VALUES (1,'Ahmed Saad Mohammed',5,4,8,17,35,52,'C6','17th'),(2,'Aniebona Favour ',5,9,10,24,50,74,'B2','2nd'),(3,'Akpan Godwin ',6,7,10,23,37,60,'C4','12th'),(4,'Anyadiegwu Victory ',5,5,9,19,44,63,'C4','11th'),(5,'Benneth Emmanuel ',5,6,9,20,53,73,'B2','3rd'),(6,'Bulus Samson Oche',6,3,8,17,35,52,'C6','17th'),(7,'Dilibe Emmanuel ',5,3,8,16,24,40,'E8','19th'),(8,'Erhrunse Gift ',5,7,9,21,51,72,'B2','5th'),(9,'Ebiyei Mary ',6,8,8,22,42,64,'C4','10th'),(10,'Joel Jeremiah ',4,6,9,19,39,58,'C5','14th'),(11,'Lazarus Chiamaka ',4,6,8,18,37,55,'C5','15th'),(12,'Livinus Mary ',10,9,9,28,54,82,'A1','1st'),(13,'Okoli Sunday ',5,5,8,18,47,65,'B3','7th'),(14,'Okpube Loveline ',4,7,8,19,49,68,'B3','6th'),(15,'Owah Ifeanyi ',8,3,10,21,32,53,'C6','16th'),(16,'Tokpa Elizabeth ',10,9,9,28,45,73,'B2','3rd'),(17,'Urhoma Glory ',6,7,9,22,43,65,'B3','7th'),(18,'Aruoba Chiamaka ',8,6,8,22,38,60,'C4','12th'),(19,'Nnayelugo Tochukwu ',3,6,9,18,47,65,'B3','7th');
/*!40000 ALTER TABLE `ss1a_3rd_term_literatureinenglish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_mathematics`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_mathematics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_mathematics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `MTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_mathematics`
--

LOCK TABLES `ss1a_3rd_term_mathematics` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_mathematics` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_mathematics` VALUES (1,'Ahmed Saad Mohammed',5,7,6,18,36,54,'C6','8th'),(2,'Aniebona Favour ',6,9,7,22,44,66,'B3','4th'),(3,'Akpan Godwin ',6,7,7,20,38,58,'C5','7th'),(4,'Anyadiegwu Victory ',5,4,6,15,39,54,'C6','8th'),(5,'Benneth Emmanuel ',5,4,6,15,53,68,'B3','3rd'),(6,'Bulus Samson Oche',5,6,7,18,22,40,'E8','16th'),(7,'Dilibe Emmanuel ',5,5,6,16,20,36,'F9','19th'),(8,'Erhrunse Gift ',5,6,8,19,31,50,'C6','11th'),(9,'Ebiyei Mary ',5,4,6,15,22,37,'F9','17th'),(10,'Joel Jeremiah ',7,4,4,15,22,37,'F9','17th'),(11,'Lazarus Chiamaka ',6,5,7,18,42,60,'C4','5th'),(12,'Livinus Mary ',8,9,8,25,60,85,'A1','1st'),(13,'Okoli Sunday ',5,4,7,16,29,45,'D7','13th'),(14,'Okpube Loveline ',5,7,8,20,39,59,'C5','6th'),(15,'Owah Ifeanyi ',7,8,8,23,46,69,'B3','2nd'),(16,'Tokpa Elizabeth ',7,4,3,14,30,44,'E8','14th'),(17,'Urhoma Glory ',5,5,6,16,35,51,'C6','10th'),(18,'Aruoba Chiamaka ',5,6,7,18,31,49,'D7','12th'),(19,'Nnayelugo Tochukwu ',5,5,7,17,27,44,'E8','14th');
/*!40000 ALTER TABLE `ss1a_3rd_term_mathematics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_physics`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_physics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_physics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `PHY_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_physics`
--

LOCK TABLES `ss1a_3rd_term_physics` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_physics` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_physics` VALUES (1,'Ahmed Saad Mohammed',1,2,8,11,37,48,'D7','9th'),(2,'Aniebona Favour ',4,4,10,18,44,62,'C4','6th'),(3,'Akpan Godwin ',3,5,8,16,30,46,'D7','11th'),(4,'Anyadiegwu Victory ',5,2,10,17,36,53,'C6','7th'),(5,'Benneth Emmanuel ',4,9,10,23,55,78,'A1','2nd'),(6,'Bulus Samson Oche',3,1,1,5,24,29,'F9','19th'),(7,'Dilibe Emmanuel ',2,2,10,14,26,40,'E8','16th'),(8,'Erhrunse Gift ',5,5,10,20,48,68,'B3','5th'),(9,'Ebiyei Mary ',4,1,8,13,24,37,'F9','17th'),(10,'Joel Jeremiah ',3,4,8,15,20,35,'F9','18th'),(11,'Lazarus Chiamaka ',5,2,10,17,25,42,'E8','14th'),(12,'Livinus Mary ',8,9,10,27,52,79,'A1','1st'),(13,'Okoli Sunday ',4,4,10,18,35,53,'C6','7th'),(14,'Okpube Loveline ',8,6,10,24,48,72,'B2','4th'),(15,'Owah Ifeanyi ',3,4,10,17,30,47,'D7','10th'),(16,'Tokpa Elizabeth ',6,7,10,23,53,76,'A1','3rd'),(17,'Urhoma Glory ',4,1,10,15,31,46,'D7','11th'),(18,'Aruoba Chiamaka ',3,3,10,16,26,42,'E8','14th'),(19,'Nnayelugo Tochukwu ',4,5,5,14,31,45,'D7','13th');
/*!40000 ALTER TABLE `ss1a_3rd_term_physics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_technicaldrawing`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_technicaldrawing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_technicaldrawing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `TDR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_technicaldrawing`
--

LOCK TABLES `ss1a_3rd_term_technicaldrawing` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_technicaldrawing` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_technicaldrawing` VALUES (1,'Ahmed Saad Mohammed',3,6,5,14,46,60,'C4','2nd'),(2,'Aniebona Favour ',6,0,5,11,27,38,'F9','11th'),(3,'Akpan Godwin ',6,0,5,11,29,40,'E8','10th'),(4,'Anyadiegwu Victory ',6,0,5,11,24,35,'F9','12th'),(5,'Benneth Emmanuel ',7,0,5,12,46,58,'C5','3rd'),(6,'Bulus Samson Oche',0,0,5,5,27,32,'F9','16th'),(7,'Dilibe Emmanuel ',3,0,5,8,37,45,'D7','4th'),(8,'Erhrunse Gift ',6,0,5,11,29,40,'E8','10th'),(9,'Ebiyei Mary ',6,0,5,11,24,35,'F9','12th'),(10,'Joel Jeremiah ',0,0,5,5,25,30,'F9','18th'),(11,'Lazarus Chiamaka ',3,0,5,8,25,33,'F9','14th'),(12,'Livinus Mary ',8,9,5,22,61,83,'A1','1st'),(13,'Okoli Sunday ',8,0,5,13,29,42,'E8','5th'),(14,'Okpube Loveline ',7,3,5,15,25,40,'E8','10th'),(15,'Owah Ifeanyi ',6,0,5,11,30,41,'E8','6th'),(16,'Tokpa Elizabeth ',6,0,5,11,22,33,'F9','14th'),(17,'Urhoma Glory ',0,0,5,5,27,32,'F9','16th'),(18,'Aruoba Chiamaka ',0,5,0,5,22,27,'F9','19th'),(19,'Nnayelugo Tochukwu ',7,0,5,12,29,41,'E8','6th');
/*!40000 ALTER TABLE `ss1a_3rd_term_technicaldrawing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term_woodwork`
--

DROP TABLE IF EXISTS `ss1a_3rd_term_woodwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term_woodwork` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `WOW_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term_woodwork`
--

LOCK TABLES `ss1a_3rd_term_woodwork` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term_woodwork` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term_woodwork` VALUES (1,'Ahmed Saad Mohammed',8,9,5,22,43,65,'B3','8th'),(2,'Aniebona Favour ',10,2,0,12,61,73,'B2','3rd'),(3,'Akpan Godwin ',7,8,5,20,47,67,'B3','6th'),(4,'Anyadiegwu Victory ',6,2,0,8,32,40,'E8','16th'),(5,'Benneth Emmanuel ',10,7,4,21,65,86,'A1','1st'),(6,'Bulus Samson Oche',4,2,0,6,26,32,'F9','19th'),(7,'Dilibe Emmanuel ',7,2,0,9,36,45,'D7','14th'),(8,'Erhrunse Gift ',6,5,0,11,55,66,'B3','7th'),(9,'Ebiyei Mary ',9,8,4,21,38,59,'C5','9th'),(10,'Joel Jeremiah ',5,2,0,7,36,43,'E8','15th'),(11,'Lazarus Chiamaka ',8,5,4,17,40,57,'C5','10th'),(12,'Livinus Mary ',9,5,5,19,64,83,'A1','2nd'),(13,'Okoli Sunday ',4,2,0,6,44,50,'C6','13th'),(14,'Okpube Loveline ',7,9,0,16,54,70,'B2','4th'),(15,'Owah Ifeanyi ',3,5,0,8,28,36,'F9','17th'),(16,'Tokpa Elizabeth ',7,5,4,16,54,70,'B2','4th'),(17,'Urhoma Glory ',5,2,0,7,44,51,'C6','12th'),(18,'Aruoba Chiamaka ',5,2,0,7,27,34,'F9','18th'),(19,'Nnayelugo Tochukwu ',8,2,0,10,47,57,'C5','10th');
/*!40000 ALTER TABLE `ss1a_3rd_term_woodwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_agriculturalscience`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_agriculturalscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_agriculturalscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `AGR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_agriculturalscience`
--

LOCK TABLES `ss1b_3rd_term_agriculturalscience` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_agriculturalscience` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_agriculturalscience` VALUES (1,'Kefas Solomon ',6,8,8,22,60,82,'A1','1st'),(2,'Odion Naomi ',2,6,9,17,60,77,'A1','3rd'),(3,'Edison Hilda ',2,2,2,6,30,36,'F9','19th'),(4,'Obiekezie Daniel ',8,6,8,22,44,66,'B3','9th'),(5,'James Queen ',10,6,4,20,55,75,'A1','5th'),(6,'Agbo Alex ',2,6,7,15,49,64,'C4','11th'),(7,'Ephraim Oluebube ',10,7,10,27,54,81,'A1','2nd'),(8,'Ferdinand Victor ',10,5,7,22,51,73,'B2','6th'),(9,'James Joshua ',5,1,5,11,30,41,'E8','18th'),(10,'Owah Lazarus ',10,3,5,18,46,64,'C4','11th'),(11,'Iloegbunam Vincent ',5,3,7,15,43,58,'C5','13th'),(12,'Akpan Mary ',8,7,7,22,43,65,'B3','10th'),(13,'Andrew Precious ',2,5,7,14,54,68,'B3','8th'),(14,'Ebere Nmesoma ',10,7,9,26,44,70,'B2','7th'),(15,'Lazarus Ifunanya ',2,1,10,13,43,56,'C5','14th'),(16,'Lebanu Phoebe ',5,3,5,13,40,53,'C6','16th'),(17,'Okoli Anthonia ',10,7,6,23,54,77,'A1','3rd'),(18,'Wakirina Hyelhirra Daniel',5,2,1,8,36,44,'E8','17th'),(19,'Umeh Deborah ',1,2,3,6,48,54,'C6','15th');
/*!40000 ALTER TABLE `ss1b_3rd_term_agriculturalscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_animalhusbandry`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_animalhusbandry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_animalhusbandry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ANH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_animalhusbandry`
--

LOCK TABLES `ss1b_3rd_term_animalhusbandry` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_animalhusbandry` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_animalhusbandry` VALUES (1,'Kefas Solomon ',10,8,10,28,63,91,'A1','1st'),(2,'Odion Naomi ',9,7,10,26,54,80,'A1','2nd'),(3,'Edison Hilda ',2,1,2,5,20,25,'F9','19th'),(4,'Obiekezie Daniel ',5,5,2,12,33,45,'D7','12th'),(5,'James Queen ',7,8,10,25,40,65,'B3','5th'),(6,'Agbo Alex ',7,3,7,17,25,42,'E8','13th'),(7,'Ephraim Oluebube ',10,7,10,27,53,80,'A1','2nd'),(8,'Ferdinand Victor ',8,4,8,20,37,57,'C5','7th'),(9,'James Joshua ',2,2,2,6,20,26,'F9','18th'),(10,'Owah Lazarus ',6,5,7,18,52,70,'B2','4th'),(11,'Iloegbunam Vincent ',4,4,10,18,30,48,'D7','10th'),(12,'Akpan Mary ',8,4,2,14,40,54,'C6','9th'),(13,'Andrew Precious ',7,4,2,13,44,57,'C5','7th'),(14,'Ebere Nmesoma ',8,5,2,15,32,47,'D7','11th'),(15,'Lazarus Ifunanya ',6,5,2,13,27,40,'E8','14th'),(16,'Lebanu Phoebe ',4,6,2,12,20,32,'F9','16th'),(17,'Okoli Anthonia ',10,5,2,17,41,58,'C5','6th'),(18,'Wakirina Hyelhirra Daniel',5,3,5,13,26,39,'F9','15th'),(19,'Umeh Deborah ',0,0,0,0,28,28,'F9','17th');
/*!40000 ALTER TABLE `ss1b_3rd_term_animalhusbandry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_basicelectricity`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_basicelectricity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_basicelectricity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BEL_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_basicelectricity`
--

LOCK TABLES `ss1b_3rd_term_basicelectricity` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_basicelectricity` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_basicelectricity` VALUES (1,'Kefas Solomon ',10,10,8,28,50,78,'A1','3rd'),(2,'Odion Naomi ',10,10,5,25,54,79,'A1','2nd'),(3,'Edison Hilda ',1,1,1,3,10,13,'F9','17th'),(4,'Obiekezie Daniel ',1,1,1,3,21,24,'F9','12th'),(5,'James Queen ',1,1,1,3,30,33,'F9','11th'),(6,'Agbo Alex ',1,1,1,3,21,24,'F9','12th'),(7,'Ephraim Oluebube ',10,7,10,27,23,50,'C6','5th'),(8,'Ferdinand Victor ',10,1,1,12,24,36,'F9','10th'),(9,'James Joshua ',1,1,1,3,5,8,'F9','18th'),(10,'Owah Lazarus ',10,10,8,28,53,81,'A1','1st'),(11,'Iloegbunam Vincent ',6,4,6,16,30,46,'D7','7th'),(12,'Akpan Mary ',10,5,1,16,6,22,'F9','15th'),(13,'Andrew Precious ',1,10,10,21,41,62,'C4','4th'),(14,'Ebere Nmesoma ',6,10,7,23,20,43,'E8','8th'),(15,'Lazarus Ifunanya ',10,1,1,12,5,17,'F9','16th'),(16,'Lebanu Phoebe ',1,1,1,3,20,23,'F9','14th'),(17,'Okoli Anthonia ',2,8,5,15,35,50,'C6','5th'),(18,'Wakirina Hyelhirra Daniel',1,1,10,12,30,42,'E8','9th'),(19,'Umeh Deborah ',1,1,1,3,5,8,'F9','18th');
/*!40000 ALTER TABLE `ss1b_3rd_term_basicelectricity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_biology`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_biology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_biology` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BIO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_biology`
--

LOCK TABLES `ss1b_3rd_term_biology` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_biology` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_biology` VALUES (1,'Kefas Solomon ',10,10,10,30,66,96,'A1','1st'),(2,'Odion Naomi ',10,10,10,30,60,90,'A1','5th'),(3,'Edison Hilda ',5,6,10,21,27,48,'D7','18th'),(4,'Obiekezie Daniel ',8,8,10,26,39,65,'B3','15th'),(5,'James Queen ',10,10,10,30,61,91,'A1','3rd'),(6,'Agbo Alex ',10,8,10,28,60,88,'A1','8th'),(7,'Ephraim Oluebube ',10,10,10,30,65,95,'A1','2nd'),(8,'Ferdinand Victor ',10,7,10,27,62,89,'A1','6th'),(9,'James Joshua ',4,3,10,17,24,41,'E8','19th'),(10,'Owah Lazarus ',10,10,10,30,61,91,'A1','3rd'),(11,'Iloegbunam Vincent ',10,3,10,23,46,69,'B3','13th'),(12,'Akpan Mary ',10,8,10,28,43,71,'B2','11th'),(13,'Andrew Precious ',10,8,10,28,49,77,'A1','10th'),(14,'Ebere Nmesoma ',8,10,10,28,37,65,'B3','15th'),(15,'Lazarus Ifunanya ',10,6,10,26,36,62,'C4','17th'),(16,'Lebanu Phoebe ',9,5,10,24,43,67,'B3','14th'),(17,'Okoli Anthonia ',10,9,10,29,60,89,'A1','6th'),(18,'Wakirina Hyelhirra Daniel',10,6,10,26,45,71,'B2','11th'),(19,'Umeh Deborah ',8,8,10,26,52,78,'A1','9th');
/*!40000 ALTER TABLE `ss1b_3rd_term_biology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_buildingtechnilogy`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_buildingtechnilogy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_buildingtechnilogy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BUT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_buildingtechnilogy`
--

LOCK TABLES `ss1b_3rd_term_buildingtechnilogy` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_buildingtechnilogy` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_buildingtechnilogy` VALUES (1,'Kefas Solomon ',8,9,10,27,60,87,'A1','1st'),(2,'Odion Naomi ',6,0,10,16,62,78,'A1','2nd'),(3,'Edison Hilda ',0,0,13,13,0,13,'F9','19th'),(4,'Obiekezie Daniel ',6,0,0,6,38,44,'E8','11th'),(5,'James Queen ',6,0,10,16,31,47,'D7','8th'),(6,'Agbo Alex ',6,0,0,6,40,46,'D7','10th'),(7,'Ephraim Oluebube ',7,9,10,26,51,77,'A1','3rd'),(8,'Ferdinand Victor ',7,0,10,17,31,48,'D7','7th'),(9,'James Joshua ',2,0,0,2,15,17,'F9','18th'),(10,'Owah Lazarus ',8,5,10,23,43,66,'B3','4th'),(11,'Iloegbunam Vincent ',5,8,10,23,36,59,'C5','5th'),(12,'Akpan Mary ',4,0,10,14,33,47,'D7','8th'),(13,'Andrew Precious ',6,0,0,6,24,30,'F9','14th'),(14,'Ebere Nmesoma ',5,5,0,10,22,32,'F9','13th'),(15,'Lazarus Ifunanya ',3,0,10,13,28,41,'E8','12th'),(16,'Lebanu Phoebe ',0,0,10,10,20,30,'F9','14th'),(17,'Okoli Anthonia ',7,10,10,27,30,57,'C5','6th'),(18,'Wakirina Hyelhirra Daniel',3,0,10,13,13,26,'F9','16th'),(19,'Umeh Deborah ',0,0,0,0,21,21,'F9','17th');
/*!40000 ALTER TABLE `ss1b_3rd_term_buildingtechnilogy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_chemistry`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_chemistry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_chemistry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CHM_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_chemistry`
--

LOCK TABLES `ss1b_3rd_term_chemistry` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_chemistry` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_chemistry` VALUES (1,'Kefas Solomon ',10,10,10,30,65,95,'A1','1st'),(2,'Odion Naomi ',6,9,10,25,46,71,'B2','2nd'),(3,'Edison Hilda ',4,4,5,13,13,26,'F9','18th'),(4,'Obiekezie Daniel ',4,3,5,12,19,31,'F9','14th'),(5,'James Queen ',5,10,10,25,40,65,'B3','4th'),(6,'Agbo Alex ',4,5,10,19,29,48,'D7','7th'),(7,'Ephraim Oluebube ',6,9,10,25,43,68,'B3','3rd'),(8,'Ferdinand Victor ',4,5,9,18,26,44,'E8','8th'),(9,'James Joshua ',3,2,5,10,12,22,'F9','19th'),(10,'Owah Lazarus ',6,8,10,24,41,65,'B3','4th'),(11,'Iloegbunam Vincent ',4,3,10,17,16,33,'F9','12th'),(12,'Akpan Mary ',4,7,10,21,20,41,'E8','10th'),(13,'Andrew Precious ',4,3,10,17,25,42,'E8','9th'),(14,'Ebere Nmesoma ',5,5,5,15,26,41,'E8','10th'),(15,'Lazarus Ifunanya ',5,3,7,15,17,32,'F9','13th'),(16,'Lebanu Phoebe ',4,2,5,11,16,27,'F9','16th'),(17,'Okoli Anthonia ',5,6,10,21,28,49,'D7','6th'),(18,'Wakirina Hyelhirra Daniel',4,2,5,11,16,27,'F9','16th'),(19,'Umeh Deborah ',3,3,3,9,19,28,'F9','15th');
/*!40000 ALTER TABLE `ss1b_3rd_term_chemistry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_christianreligiousstudies`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_christianreligiousstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_christianreligiousstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CRS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_christianreligiousstudies`
--

LOCK TABLES `ss1b_3rd_term_christianreligiousstudies` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_christianreligiousstudies` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_christianreligiousstudies` VALUES (1,'Kefas Solomon ',9,7,10,26,57,83,'A1','2nd'),(2,'Odion Naomi ',10,7,10,27,65,92,'A1','1st'),(3,'Edison Hilda ',1,1,7,9,12,21,'F9','17th'),(4,'Obiekezie Daniel ',5,1,10,16,29,45,'D7','12th'),(5,'James Queen ',6,1,10,17,47,64,'C4','5th'),(6,'Agbo Alex ',5,1,10,16,34,50,'C6','8th'),(7,'Ephraim Oluebube ',10,4,10,24,50,74,'B2','4th'),(8,'Ferdinand Victor ',7,2,10,19,34,53,'C6','6th'),(9,'James Joshua ',1,1,7,9,8,17,'F9','18th'),(10,'Owah Lazarus ',10,10,10,30,51,81,'A1','3rd'),(11,'Iloegbunam Vincent ',1,1,10,12,31,43,'E8','13th'),(12,'Akpan Mary ',5,1,9,15,34,49,'D7','10th'),(13,'Andrew Precious ',6,1,9,16,34,50,'C6','8th'),(14,'Ebere Nmesoma ',7,1,10,18,29,47,'D7','11th'),(15,'Lazarus Ifunanya ',4,1,10,15,22,37,'F9','14th'),(16,'Lebanu Phoebe ',3,1,10,14,20,34,'F9','16th'),(17,'Okoli Anthonia ',1,3,10,14,39,53,'C6','6th'),(18,'Wakirina Hyelhirra Daniel',4,1,10,15,21,36,'F9','15th'),(19,'Umeh Deborah ',1,1,1,3,1,4,'F9','19th');
/*!40000 ALTER TABLE `ss1b_3rd_term_christianreligiousstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_civiceducation`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_civiceducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_civiceducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CIV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_civiceducation`
--

LOCK TABLES `ss1b_3rd_term_civiceducation` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_civiceducation` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_civiceducation` VALUES (1,'Kefas Solomon ',10,9,10,29,51,80,'A1','2nd'),(2,'Odion Naomi ',9,9,10,28,49,77,'A1','3rd'),(3,'Edison Hilda ',3,0,0,3,14,17,'F9','19th'),(4,'Obiekezie Daniel ',6,0,10,16,41,57,'C5','7th'),(5,'James Queen ',10,8,10,28,54,82,'A1','1st'),(6,'Agbo Alex ',9,6,0,15,41,56,'C5','8th'),(7,'Ephraim Oluebube ',8,9,10,27,50,77,'A1','3rd'),(8,'Ferdinand Victor ',0,5,0,5,44,49,'D7','14th'),(9,'James Joshua ',1,0,5,6,14,20,'F9','18th'),(10,'Owah Lazarus ',8,6,10,24,46,70,'B2','5th'),(11,'Iloegbunam Vincent ',6,8,9,23,37,60,'C4','6th'),(12,'Akpan Mary ',8,0,10,18,35,53,'C6','11th'),(13,'Andrew Precious ',8,0,10,18,37,55,'C5','10th'),(14,'Ebere Nmesoma ',5,7,10,22,28,50,'C6','13th'),(15,'Lazarus Ifunanya ',5,5,10,20,31,51,'C6','12th'),(16,'Lebanu Phoebe ',4,4,10,18,22,40,'E8','17th'),(17,'Okoli Anthonia ',10,0,10,20,36,56,'C5','8th'),(18,'Wakirina Hyelhirra Daniel',5,5,10,20,22,42,'E8','15th'),(19,'Umeh Deborah ',0,0,0,0,41,41,'E8','16th');
/*!40000 ALTER TABLE `ss1b_3rd_term_civiceducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_commerce`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_commerce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_commerce` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COM_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_commerce`
--

LOCK TABLES `ss1b_3rd_term_commerce` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_commerce` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_commerce` VALUES (1,'Kefas Solomon ',10,9,9,28,59,87,'A1','1st'),(2,'Odion Naomi ',10,5,9,24,60,84,'A1','2nd'),(3,'Edison Hilda ',4,1,9,14,9,23,'F9','17th'),(4,'Obiekezie Daniel ',1,2,9,12,28,40,'E8','11th'),(5,'James Queen ',9,7,9,25,47,72,'B2','4th'),(6,'Agbo Alex ',10,6,9,25,47,72,'B2','4th'),(7,'Ephraim Oluebube ',9,7,9,25,47,72,'B2','4th'),(8,'Ferdinand Victor ',6,4,7,17,35,52,'C6','8th'),(9,'James Joshua ',2,0,9,11,9,20,'F9','18th'),(10,'Owah Lazarus ',8,5,9,22,51,73,'B2','3rd'),(11,'Iloegbunam Vincent ',7,1,9,17,31,48,'D7','10th'),(12,'Akpan Mary ',6,4,9,19,14,33,'F9','14th'),(13,'Andrew Precious ',7,3,9,19,29,48,'D7','10th'),(14,'Ebere Nmesoma ',7,4,9,20,19,39,'F9','12th'),(15,'Lazarus Ifunanya ',7,4,9,20,12,32,'F9','15th'),(16,'Lebanu Phoebe ',8,3,9,20,16,36,'F9','13th'),(17,'Okoli Anthonia ',10,5,9,24,32,56,'C5','7th'),(18,'Wakirina Hyelhirra Daniel',0,3,9,12,17,29,'F9','16th'),(19,'Umeh Deborah ',0,2,0,2,17,19,'F9','19th');
/*!40000 ALTER TABLE `ss1b_3rd_term_commerce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_computerstudies`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_computerstudies`
--

LOCK TABLES `ss1b_3rd_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_computerstudies` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_computerstudies` VALUES (1,'Kefas Solomon ',8,8,10,26,67,93,'A1','1st'),(2,'Odion Naomi ',7,7,10,24,50,74,'B2','3rd'),(3,'Edison Hilda ',0,0,0,0,16,16,'F9','18th'),(4,'Obiekezie Daniel ',0,0,0,0,40,40,'E8','12th'),(5,'James Queen ',5,5,0,10,44,54,'C6','10th'),(6,'Agbo Alex ',6,6,0,12,58,70,'B2','5th'),(7,'Ephraim Oluebube ',7,7,10,24,48,72,'B2','4th'),(8,'Ferdinand Victor ',7,7,0,14,52,66,'B3','6th'),(9,'James Joshua ',0,0,0,0,16,16,'F9','18th'),(10,'Owah Lazarus ',8,8,10,26,57,83,'A1','2nd'),(11,'Iloegbunam Vincent ',6,6,0,12,48,60,'C4','8th'),(12,'Akpan Mary ',0,0,0,0,36,36,'F9','15th'),(13,'Andrew Precious ',6,6,10,22,40,62,'C4','7th'),(14,'Ebere Nmesoma ',0,0,10,10,27,37,'F9','14th'),(15,'Lazarus Ifunanya ',6,6,10,22,35,57,'C5','9th'),(16,'Lebanu Phoebe ',0,0,0,0,26,26,'F9','16th'),(17,'Okoli Anthonia ',2,2,0,4,46,50,'C6','11th'),(18,'Wakirina Hyelhirra Daniel',0,0,0,0,39,39,'F9','13th'),(19,'Umeh Deborah ',0,0,0,0,25,25,'F9','17th');
/*!40000 ALTER TABLE `ss1b_3rd_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_domesticinstallation`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_domesticinstallation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_domesticinstallation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `DIN_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_domesticinstallation`
--

LOCK TABLES `ss1b_3rd_term_domesticinstallation` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_domesticinstallation` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_domesticinstallation` VALUES (1,'Kefas Solomon ',10,10,8,28,59,87,'A1','1st'),(2,'Odion Naomi ',4,10,10,24,56,80,'A1','2nd'),(3,'Edison Hilda ',10,2,0,12,0,12,'F9','16th'),(4,'Obiekezie Daniel ',10,2,1,13,0,13,'F9','15th'),(5,'James Queen ',1,1,1,3,0,3,'F9','19th'),(6,'Agbo Alex ',1,1,1,3,8,11,'F9','17th'),(7,'Ephraim Oluebube ',10,10,8,28,52,80,'A1','2nd'),(8,'Ferdinand Victor ',4,10,10,24,52,76,'A1','5th'),(9,'James Joshua ',1,1,1,3,50,53,'C6','6th'),(10,'Owah Lazarus ',10,10,5,25,52,77,'A1','4th'),(11,'Iloegbunam Vincent ',10,8,1,19,23,42,'E8','10th'),(12,'Akpan Mary ',9,5,1,15,25,40,'E8','11th'),(13,'Andrew Precious ',10,8,10,28,22,50,'C6','7th'),(14,'Ebere Nmesoma ',10,10,10,30,14,44,'E8','9th'),(15,'Lazarus Ifunanya ',1,1,1,3,31,34,'F9','12th'),(16,'Lebanu Phoebe ',7,10,1,18,0,18,'F9','14th'),(17,'Okoli Anthonia ',1,1,1,3,31,34,'F9','12th'),(18,'Wakirina Hyelhirra Daniel',5,10,1,16,29,45,'D7','8th'),(19,'Umeh Deborah ',1,1,1,3,1,4,'F9','18th');
/*!40000 ALTER TABLE `ss1b_3rd_term_domesticinstallation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_economics`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_economics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_economics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ECO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_economics`
--

LOCK TABLES `ss1b_3rd_term_economics` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_economics` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_economics` VALUES (1,'Kefas Solomon ',9,8,9,26,50,76,'A1','1st'),(2,'Odion Naomi ',8,7,8,23,45,68,'B3','3rd'),(3,'Edison Hilda ',2,4,5,11,20,31,'F9','17th'),(4,'Obiekezie Daniel ',3,3,4,10,25,35,'F9','16th'),(5,'James Queen ',6,7,7,20,38,58,'C5','5th'),(6,'Agbo Alex ',5,6,5,16,35,51,'C6','7th'),(7,'Ephraim Oluebube ',5,6,7,18,45,63,'C4','4th'),(8,'Ferdinand Victor ',5,5,6,16,40,56,'C5','6th'),(9,'James Joshua ',2,4,4,10,20,30,'F9','18th'),(10,'Owah Lazarus ',8,7,7,22,50,72,'B2','2nd'),(11,'Iloegbunam Vincent ',2,4,5,11,35,46,'D7','10th'),(12,'Akpan Mary ',7,6,7,20,25,45,'D7','11th'),(13,'Andrew Precious ',2,5,5,12,38,50,'C6','8th'),(14,'Ebere Nmesoma ',2,5,4,11,25,36,'F9','14th'),(15,'Lazarus Ifunanya ',2,4,4,10,28,38,'F9','12th'),(16,'Lebanu Phoebe ',3,4,4,11,25,36,'F9','14th'),(17,'Okoli Anthonia ',4,5,6,15,35,50,'C6','8th'),(18,'Wakirina Hyelhirra Daniel',3,4,5,12,25,37,'F9','13th'),(19,'Umeh Deborah ',1,2,2,5,25,30,'F9','18th');
/*!40000 ALTER TABLE `ss1b_3rd_term_economics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_electronics`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_electronics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ELC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_electronics`
--

LOCK TABLES `ss1b_3rd_term_electronics` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_electronics` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_electronics` VALUES (1,'Kefas Solomon ',7,5,10,22,64,86,'A1','1st'),(2,'Odion Naomi ',7,4,8,19,38,57,'C5','3rd'),(3,'Edison Hilda ',5,3,2,10,5,15,'F9','17th'),(4,'Obiekezie Daniel ',4,4,2,10,13,23,'F9','11th'),(5,'James Queen ',2,5,3,10,16,26,'F9','9th'),(6,'Agbo Alex ',3,4,5,12,10,22,'F9','12th'),(7,'Ephraim Oluebube ',7,5,9,21,36,57,'C5','3rd'),(8,'Ferdinand Victor ',4,5,5,14,19,33,'F9','8th'),(9,'James Joshua ',1,5,5,11,5,16,'F9','16th'),(10,'Owah Lazarus ',7,5,10,22,42,64,'C4','2nd'),(11,'Iloegbunam Vincent ',7,5,10,22,20,42,'E8','5th'),(12,'Akpan Mary ',5,5,5,15,22,37,'F9','6th'),(13,'Andrew Precious ',2,4,4,10,11,21,'F9','13th'),(14,'Ebere Nmesoma ',4,5,3,12,12,24,'F9','10th'),(15,'Lazarus Ifunanya ',3,3,4,10,11,21,'F9','13th'),(16,'Lebanu Phoebe ',1,1,1,3,1,4,'F9','18th'),(17,'Okoli Anthonia ',5,5,5,15,21,36,'F9','7th'),(18,'Wakirina Hyelhirra Daniel',1,3,4,8,10,18,'F9','15th'),(19,'Umeh Deborah ',1,1,1,3,1,4,'F9','18th');
/*!40000 ALTER TABLE `ss1b_3rd_term_electronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_englishlanguage`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_englishlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_englishlanguage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ENG_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_englishlanguage`
--

LOCK TABLES `ss1b_3rd_term_englishlanguage` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_englishlanguage` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_englishlanguage` VALUES (1,'Kefas Solomon ',5,5,5,15,53,68,'B3','1st'),(2,'Odion Naomi ',5,5,5,15,52,67,'B3','2nd'),(3,'Edison Hilda ',5,5,5,15,16,31,'F9','14th'),(4,'Obiekezie Daniel ',5,5,5,15,26,41,'E8','10th'),(5,'James Queen ',5,5,5,15,44,59,'C5','3rd'),(6,'Agbo Alex ',5,5,5,15,42,57,'C5','4th'),(7,'Ephraim Oluebube ',5,5,5,15,40,55,'C5','5th'),(8,'Ferdinand Victor ',5,5,5,15,39,54,'C6','6th'),(9,'James Joshua ',5,5,5,15,10,25,'F9','19th'),(10,'Owah Lazarus ',5,5,5,15,36,51,'C6','7th'),(11,'Iloegbunam Vincent ',5,5,5,15,23,38,'F9','12th'),(12,'Akpan Mary ',5,5,5,15,15,30,'F9','15th'),(13,'Andrew Precious ',5,5,5,15,28,43,'E8','8th'),(14,'Ebere Nmesoma ',5,5,5,15,15,30,'F9','15th'),(15,'Lazarus Ifunanya ',5,5,5,15,12,27,'F9','17th'),(16,'Lebanu Phoebe ',5,5,5,15,21,36,'F9','13th'),(17,'Okoli Anthonia ',5,5,5,15,25,40,'E8','11th'),(18,'Wakirina Hyelhirra Daniel',5,5,5,15,12,27,'F9','17th'),(19,'Umeh Deborah ',5,5,5,15,27,42,'E8','9th');
/*!40000 ALTER TABLE `ss1b_3rd_term_englishlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_financialaccounting`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_financialaccounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_financialaccounting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `FAC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_financialaccounting`
--

LOCK TABLES `ss1b_3rd_term_financialaccounting` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_financialaccounting` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_financialaccounting` VALUES (1,'Kefas Solomon ',8,6,7,21,58,79,'A1','1st'),(2,'Odion Naomi ',7,7,6,20,50,70,'B2','2nd'),(3,'Edison Hilda ',7,5,3,15,21,36,'F9','17th'),(4,'Obiekezie Daniel ',6,7,3,16,30,46,'D7','10th'),(5,'James Queen ',7,8,5,20,21,41,'E8','14th'),(6,'Agbo Alex ',4,6,5,15,30,45,'D7','12th'),(7,'Ephraim Oluebube ',7,7,6,20,44,64,'C4','3rd'),(8,'Ferdinand Victor ',7,6,4,17,35,52,'C6','6th'),(9,'James Joshua ',6,7,3,16,20,36,'F9','17th'),(10,'Owah Lazarus ',7,7,3,17,45,62,'C4','4th'),(11,'Iloegbunam Vincent ',5,6,5,16,30,46,'D7','10th'),(12,'Akpan Mary ',4,7,5,16,35,51,'C6','7th'),(13,'Andrew Precious ',6,6,4,16,32,48,'D7','9th'),(14,'Ebere Nmesoma ',6,8,5,19,30,49,'D7','8th'),(15,'Lazarus Ifunanya ',4,5,6,15,25,40,'E8','15th'),(16,'Lebanu Phoebe ',4,6,5,15,20,35,'F9','19th'),(17,'Okoli Anthonia ',8,7,5,20,41,61,'C4','5th'),(18,'Wakirina Hyelhirra Daniel',6,5,4,15,25,40,'E8','15th'),(19,'Umeh Deborah ',4,6,5,15,28,43,'E8','13th');
/*!40000 ALTER TABLE `ss1b_3rd_term_financialaccounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_garmentmaking`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_garmentmaking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_garmentmaking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GMK_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_garmentmaking`
--

LOCK TABLES `ss1b_3rd_term_garmentmaking` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_garmentmaking` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_garmentmaking` VALUES (1,'Kefas Solomon ',8,9,9,26,55,81,'A1','1st'),(2,'Odion Naomi ',9,8,8,25,55,80,'A1','2nd'),(3,'Edison Hilda ',2,4,4,10,20,30,'F9','18th'),(4,'Obiekezie Daniel ',3,3,4,10,40,50,'C6','12th'),(5,'James Queen ',9,8,8,25,50,75,'A1','3rd'),(6,'Agbo Alex ',8,7,7,22,50,72,'B2','6th'),(7,'Ephraim Oluebube ',8,7,8,23,45,68,'B3','7th'),(8,'Ferdinand Victor ',8,7,7,22,52,74,'B2','4th'),(9,'James Joshua ',2,2,4,8,20,28,'F9','19th'),(10,'Owah Lazarus ',8,8,8,24,49,73,'B2','5th'),(11,'Iloegbunam Vincent ',3,4,4,11,29,40,'E8','16th'),(12,'Akpan Mary ',6,6,6,18,40,58,'C5','10th'),(13,'Andrew Precious ',8,7,7,22,36,58,'C5','10th'),(14,'Ebere Nmesoma ',4,4,5,13,34,47,'D7','13th'),(15,'Lazarus Ifunanya ',7,7,6,20,32,52,'C6','11th'),(16,'Lebanu Phoebe ',6,5,5,16,25,41,'E8','15th'),(17,'Okoli Anthonia ',7,7,8,22,40,62,'C4','8th'),(18,'Wakirina Hyelhirra Daniel',4,4,5,13,25,38,'F9','17th'),(19,'Umeh Deborah ',2,4,4,10,34,44,'E8','14th');
/*!40000 ALTER TABLE `ss1b_3rd_term_garmentmaking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_geography`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_geography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_geography` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GEO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_geography`
--

LOCK TABLES `ss1b_3rd_term_geography` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_geography` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_geography` VALUES (1,'Kefas Solomon ',9,10,10,29,66,95,'A1','1st'),(2,'Odion Naomi ',6,8,10,24,56,80,'A1','4th'),(3,'Edison Hilda ',1,1,4,6,12,18,'F9','18th'),(4,'Obiekezie Daniel ',3,4,8,15,32,47,'D7','12th'),(5,'James Queen ',9,7,10,26,59,85,'A1','2nd'),(6,'Agbo Alex ',7,4,6,17,42,59,'C5','8th'),(7,'Ephraim Oluebube ',7,8,8,23,59,82,'A1','3rd'),(8,'Ferdinand Victor ',5,7,6,18,43,61,'C4','7th'),(9,'James Joshua ',1,1,4,6,9,15,'F9','19th'),(10,'Owah Lazarus ',8,8,10,26,54,80,'A1','4th'),(11,'Iloegbunam Vincent ',6,3,5,14,35,49,'D7','11th'),(12,'Akpan Mary ',2,7,10,19,35,54,'C6','9th'),(13,'Andrew Precious ',3,3,10,16,34,50,'C6','10th'),(14,'Ebere Nmesoma ',2,4,10,16,28,44,'E8','13th'),(15,'Lazarus Ifunanya ',3,2,4,9,23,32,'F9','15th'),(16,'Lebanu Phoebe ',4,1,4,9,19,28,'F9','16th'),(17,'Okoli Anthonia ',5,3,10,18,48,66,'B3','6th'),(18,'Wakirina Hyelhirra Daniel',3,2,9,14,27,41,'E8','14th'),(19,'Umeh Deborah ',0,0,0,0,25,25,'F9','17th');
/*!40000 ALTER TABLE `ss1b_3rd_term_geography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_government`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_government`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_government` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GOV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_government`
--

LOCK TABLES `ss1b_3rd_term_government` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_government` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_government` VALUES (1,'Kefas Solomon ',6,8,8,22,41,63,'C4','5th'),(2,'Odion Naomi ',7,5,8,20,49,69,'B3','1st'),(3,'Edison Hilda ',3,1,4,8,11,19,'F9','19th'),(4,'Obiekezie Daniel ',5,1,8,14,27,41,'E8','13th'),(5,'James Queen ',9,8,9,26,41,67,'B3','2nd'),(6,'Agbo Alex ',7,8,4,19,38,57,'C5','6th'),(7,'Ephraim Oluebube ',8,8,8,24,41,65,'B3','4th'),(8,'Ferdinand Victor ',7,1,8,16,31,47,'D7','9th'),(9,'James Joshua ',5,1,4,10,12,22,'F9','18th'),(10,'Owah Lazarus ',7,8,8,23,44,67,'B3','2nd'),(11,'Iloegbunam Vincent ',5,7,8,20,22,42,'E8','12th'),(12,'Akpan Mary ',7,4,8,19,27,46,'D7','10th'),(13,'Andrew Precious ',7,7,8,22,29,51,'C6','8th'),(14,'Ebere Nmesoma ',7,5,8,20,23,43,'E8','11th'),(15,'Lazarus Ifunanya ',6,7,4,17,21,38,'F9','14th'),(16,'Lebanu Phoebe ',6,1,4,11,20,31,'F9','16th'),(17,'Okoli Anthonia ',8,5,8,21,36,57,'C5','6th'),(18,'Wakirina Hyelhirra Daniel',2,5,8,15,10,25,'F9','17th'),(19,'Umeh Deborah ',1,8,1,10,24,34,'F9','15th');
/*!40000 ALTER TABLE `ss1b_3rd_term_government` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_literatureinenglish`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_literatureinenglish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_literatureinenglish` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `LIT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_literatureinenglish`
--

LOCK TABLES `ss1b_3rd_term_literatureinenglish` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_literatureinenglish` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_literatureinenglish` VALUES (1,'Kefas Solomon ',7,7,8,22,53,75,'A1','3rd'),(2,'Odion Naomi ',9,8,9,26,55,81,'A1','2nd'),(3,'Edison Hilda ',4,5,9,18,23,41,'E8','16th'),(4,'Obiekezie Daniel ',5,6,8,19,45,64,'C4','10th'),(5,'James Queen ',8,8,10,26,57,83,'A1','1st'),(6,'Agbo Alex ',6,9,9,24,43,67,'B3','7th'),(7,'Ephraim Oluebube ',7,6,9,22,52,74,'B2','4th'),(8,'Ferdinand Victor ',5,5,9,19,47,66,'B3','8th'),(9,'James Joshua ',5,0,9,14,16,30,'F9','18th'),(10,'Owah Lazarus ',7,6,8,21,47,68,'B3','5th'),(11,'Iloegbunam Vincent ',7,5,8,20,34,54,'C6','13th'),(12,'Akpan Mary ',6,5,8,19,42,61,'C4','11th'),(13,'Andrew Precious ',5,8,8,21,47,68,'B3','5th'),(14,'Ebere Nmesoma ',5,6,8,19,31,50,'C6','14th'),(15,'Lazarus Ifunanya ',6,6,8,20,36,56,'C5','12th'),(16,'Lebanu Phoebe ',6,3,9,18,17,35,'F9','17th'),(17,'Okoli Anthonia ',5,8,8,21,43,64,'C4','10th'),(18,'Wakirina Hyelhirra Daniel',5,3,9,17,31,48,'D7','15th'),(19,'Umeh Deborah ',0,0,0,0,28,28,'F9','19th');
/*!40000 ALTER TABLE `ss1b_3rd_term_literatureinenglish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_mathematics`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_mathematics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_mathematics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `MTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_mathematics`
--

LOCK TABLES `ss1b_3rd_term_mathematics` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_mathematics` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_mathematics` VALUES (1,'Kefas Solomon ',10,8,8,26,52,78,'A1','1st'),(2,'Odion Naomi ',8,8,8,24,50,74,'B2','2nd'),(3,'Edison Hilda ',3,4,7,14,28,42,'E8','14th'),(4,'Obiekezie Daniel ',5,4,3,12,17,29,'F9','19th'),(5,'James Queen ',6,5,8,19,43,62,'C4','5th'),(6,'Agbo Alex ',5,5,7,17,43,60,'C4','8th'),(7,'Ephraim Oluebube ',8,8,8,24,48,72,'B2','3rd'),(8,'Ferdinand Victor ',5,4,6,15,25,40,'E8','15th'),(9,'James Joshua ',5,4,5,14,19,33,'F9','17th'),(10,'Owah Lazarus ',5,7,6,18,43,61,'C4','7th'),(11,'Iloegbunam Vincent ',5,5,6,16,27,43,'E8','13th'),(12,'Akpan Mary ',4,5,5,14,32,46,'D7','12th'),(13,'Andrew Precious ',5,4,6,15,37,52,'C6','10th'),(14,'Ebere Nmesoma ',6,4,7,17,45,62,'C4','5th'),(15,'Lazarus Ifunanya ',5,4,6,15,37,52,'C6','10th'),(16,'Lebanu Phoebe ',3,7,4,14,18,32,'F9','18th'),(17,'Okoli Anthonia ',5,8,8,21,44,65,'B3','4th'),(18,'Wakirina Hyelhirra Daniel',5,7,6,18,18,36,'F9','16th'),(19,'Umeh Deborah ',7,6,4,17,30,47,'D7','11th');
/*!40000 ALTER TABLE `ss1b_3rd_term_mathematics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_physics`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_physics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_physics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `PHY_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_physics`
--

LOCK TABLES `ss1b_3rd_term_physics` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_physics` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_physics` VALUES (1,'Kefas Solomon ',10,9,10,29,65,94,'A1','1st'),(2,'Odion Naomi ',8,7,10,25,51,76,'A1','3rd'),(3,'Edison Hilda ',1,0,0,1,15,16,'F9','19th'),(4,'Obiekezie Daniel ',1,1,10,12,31,43,'E8','12th'),(5,'James Queen ',9,7,0,16,50,66,'B3','5th'),(6,'Agbo Alex ',7,3,10,20,45,65,'B3','6th'),(7,'Ephraim Oluebube ',5,7,10,22,47,69,'B3','4th'),(8,'Ferdinand Victor ',3,4,8,15,38,53,'C6','10th'),(9,'James Joshua ',0,1,5,6,13,19,'F9','17th'),(10,'Owah Lazarus ',8,8,10,26,57,83,'A1','2nd'),(11,'Iloegbunam Vincent ',3,1,4,8,25,33,'F9','15th'),(12,'Akpan Mary ',3,5,10,18,35,53,'C6','10th'),(13,'Andrew Precious ',7,3,10,20,29,49,'D7','11th'),(14,'Ebere Nmesoma ',3,3,8,14,24,38,'F9','13th'),(15,'Lazarus Ifunanya ',5,5,10,20,33,53,'C6','10th'),(16,'Lebanu Phoebe ',1,0,0,1,23,24,'F9','16th'),(17,'Okoli Anthonia ',6,5,10,21,37,58,'C5','7th'),(18,'Wakirina Hyelhirra Daniel',2,1,8,11,24,35,'F9','14th'),(19,'Umeh Deborah ',1,1,1,3,16,19,'F9','17th');
/*!40000 ALTER TABLE `ss1b_3rd_term_physics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_technicaldrawing`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_technicaldrawing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_technicaldrawing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `TDR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_technicaldrawing`
--

LOCK TABLES `ss1b_3rd_term_technicaldrawing` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_technicaldrawing` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_technicaldrawing` VALUES (1,'Kefas Solomon ',10,10,5,25,59,84,'A1','1st'),(2,'Odion Naomi ',7,0,5,12,28,40,'E8','8th'),(3,'Edison Hilda ',3,0,5,8,20,28,'F9','18th'),(4,'Obiekezie Daniel ',3,0,5,8,25,33,'F9','15th'),(5,'James Queen ',6,0,5,11,26,37,'F9','10th'),(6,'Agbo Alex ',8,10,5,23,47,70,'B2','3rd'),(7,'Ephraim Oluebube ',6,0,5,11,30,41,'E8','6th'),(8,'Ferdinand Victor ',6,0,5,11,30,41,'E8','6th'),(9,'James Joshua ',3,0,5,8,21,29,'F9','17th'),(10,'Owah Lazarus ',8,10,5,23,49,72,'B2','2nd'),(11,'Iloegbunam Vincent ',6,0,5,11,32,43,'E8','4th'),(12,'Akpan Mary ',6,0,5,11,29,40,'E8','8th'),(13,'Andrew Precious ',6,0,5,11,25,36,'F9','11th'),(14,'Ebere Nmesoma ',6,0,5,11,23,34,'F9','12th'),(15,'Lazarus Ifunanya ',6,0,5,11,31,42,'E8','5th'),(16,'Lebanu Phoebe ',5,0,5,10,24,34,'F9','12th'),(17,'Okoli Anthonia ',4,0,5,9,25,34,'F9','12th'),(18,'Wakirina Hyelhirra Daniel',6,0,5,11,21,32,'F9','16th'),(19,'Umeh Deborah ',0,0,0,0,25,25,'F9','19th');
/*!40000 ALTER TABLE `ss1b_3rd_term_technicaldrawing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term_woodwork`
--

DROP TABLE IF EXISTS `ss1b_3rd_term_woodwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term_woodwork` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `WOW_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term_woodwork`
--

LOCK TABLES `ss1b_3rd_term_woodwork` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term_woodwork` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term_woodwork` VALUES (1,'Kefas Solomon ',3,9,2,14,47,61,'C4','6th'),(2,'Odion Naomi ',10,8,2,20,63,83,'A1','2nd'),(3,'Edison Hilda ',2,0,2,4,21,25,'F9','17th'),(4,'Obiekezie Daniel ',5,0,2,7,39,46,'D7','13th'),(5,'James Queen ',3,0,2,5,52,57,'C5','8th'),(6,'Agbo Alex ',8,2,0,10,45,55,'C5','9th'),(7,'Ephraim Oluebube ',10,8,7,25,62,87,'A1','1st'),(8,'Ferdinand Victor ',2,0,0,2,39,41,'E8','14th'),(9,'James Joshua ',2,0,2,4,14,18,'F9','18th'),(10,'Owah Lazarus ',8,5,2,15,60,75,'A1','4th'),(11,'Iloegbunam Vincent ',9,9,2,20,51,71,'B2','5th'),(12,'Akpan Mary ',8,5,2,15,37,52,'C6','11th'),(13,'Andrew Precious ',7,2,0,9,43,52,'C6','11th'),(14,'Ebere Nmesoma ',8,5,2,15,45,60,'C4','7th'),(15,'Lazarus Ifunanya ',7,7,6,20,34,54,'C6','10th'),(16,'Lebanu Phoebe ',3,5,6,14,17,31,'F9','16th'),(17,'Okoli Anthonia ',8,5,6,19,57,76,'A1','3rd'),(18,'Wakirina Hyelhirra Daniel',5,0,2,7,28,35,'F9','15th'),(19,'Umeh Deborah ',2,0,0,2,15,17,'F9','19th');
/*!40000 ALTER TABLE `ss1b_3rd_term_woodwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_agriculturalscience`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_agriculturalscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_agriculturalscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `AGR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_agriculturalscience`
--

LOCK TABLES `ss2a_3rd_term_agriculturalscience` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_agriculturalscience` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_agriculturalscience` VALUES (1,'James Jedidiah Urbanus',0,0,0,0,0,0,'','10th'),(2,'Adinchezor Favour ',0,0,0,0,0,0,'','10th'),(3,'David Jude Chukwuebuka',5,5,10,20,40,60,'C4','5th'),(4,'Mathew Gideon ',0,0,0,0,0,0,'','10th'),(5,'Anigboyu Chidera ',0,0,0,0,0,0,'','10th'),(6,'Peter Grace Amarachi',0,0,0,0,0,0,'','10th'),(7,'Mathew Ebenezer  ',0,0,0,0,0,0,'','10th'),(8,'Ishaya Lois ',7,6,10,23,51,74,'B2','1st'),(9,'Istifanus Rejoice ',7,8,10,25,45,70,'B2','3rd'),(10,'Abdulaziz Ishaq ',6,6,10,22,48,70,'B2','3rd'),(11,'Ikechukwu Abuchi ',5,6,10,21,33,54,'C6','6th'),(12,'James Danjuma Kaya',7,7,10,24,50,74,'B2','1st'),(13,'Eze Kingsley ',0,0,0,0,0,0,'F9','10th'),(14,'Idoghor Joshua ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2a_3rd_term_agriculturalscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_animalhusbandry`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_animalhusbandry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_animalhusbandry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ANH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_animalhusbandry`
--

LOCK TABLES `ss2a_3rd_term_animalhusbandry` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_animalhusbandry` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_animalhusbandry` VALUES (1,'James Jedidiah Urbanus',0,0,0,0,0,0,'','10th'),(2,'Adinchezor Favour ',0,0,0,0,0,0,'','10th'),(3,'David Jude Chukwuebuka',0,0,0,0,0,0,'','10th'),(4,'Mathew Gideon ',0,0,0,0,0,0,'','10th'),(5,'Anigboyu Chidera ',0,0,0,0,0,0,'','10th'),(6,'Peter Grace Amarachi',0,0,0,0,0,0,'','10th'),(7,'Mathew Ebenezer  ',0,0,0,0,0,0,'','10th'),(8,'Ishaya Lois ',0,0,0,0,0,0,'','10th'),(9,'Istifanus Rejoice ',0,0,0,0,0,0,'','10th'),(10,'Abdulaziz Ishaq ',7,7,10,24,44,68,'B3','1st'),(11,'Ikechukwu Abuchi ',5,6,10,21,27,48,'D7','3rd'),(12,'James Danjuma Kaya',5,4,10,19,42,61,'C4','2nd'),(13,'Eze Kingsley ',4,5,10,19,18,37,'F9','4th'),(14,'Idoghor Joshua ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2a_3rd_term_animalhusbandry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_basicelectricity`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_basicelectricity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_basicelectricity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BEL_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_basicelectricity`
--

LOCK TABLES `ss2a_3rd_term_basicelectricity` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_basicelectricity` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_basicelectricity` VALUES (1,'James Jedidiah Urbanus',0,0,0,0,0,0,'','10th'),(2,'Adinchezor Favour ',8,8,6,22,26,48,'D7','7th'),(3,'David Jude Chukwuebuka',0,0,0,0,0,0,'','10th'),(4,'Mathew Gideon ',0,0,0,0,0,0,'','10th'),(5,'Anigboyu Chidera ',0,0,0,0,0,0,'','10th'),(6,'Peter Grace Amarachi',10,7,7,24,30,54,'C6','6th'),(7,'Mathew Ebenezer  ',1,1,1,3,20,23,'F9','8th'),(8,'Ishaya Lois ',8,2,1,11,47,58,'C5','5th'),(9,'Istifanus Rejoice ',8,4,9,21,46,67,'B3','4th'),(10,'Abdulaziz Ishaq ',10,6,10,26,57,83,'A1','2nd'),(11,'Ikechukwu Abuchi ',7,9,1,17,52,69,'B3','3rd'),(12,'James Danjuma Kaya',10,10,8,28,56,84,'A1','1st'),(13,'Eze Kingsley ',0,0,0,0,0,0,'','10th'),(14,'Idoghor Joshua ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2a_3rd_term_basicelectricity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_biology`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_biology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_biology` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BIO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_biology`
--

LOCK TABLES `ss2a_3rd_term_biology` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_biology` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_biology` VALUES (1,'James Jedidiah Urbanus',8,8,10,26,37,63,'C4','11th'),(2,'Adinchezor Favour ',10,5,10,25,51,76,'A1','4th'),(3,'David Jude Chukwuebuka',10,7,10,27,40,67,'B3','10th'),(4,'Mathew Gideon ',8,6,10,24,44,68,'B3','9th'),(5,'Anigboyu Chidera ',5,5,10,20,40,60,'C4','12th'),(6,'Peter Grace Amarachi',10,6,10,26,47,73,'B2','7th'),(7,'Mathew Ebenezer  ',6,2,10,18,31,49,'D7','13th'),(8,'Ishaya Lois ',10,7,10,27,52,79,'A1','2nd'),(9,'Istifanus Rejoice ',10,8,10,28,44,72,'B2','8th'),(10,'Abdulaziz Ishaq ',10,10,10,30,49,79,'A1','2nd'),(11,'Ikechukwu Abuchi ',10,6,10,26,50,76,'A1','4th'),(12,'James Danjuma Kaya',10,9,10,29,55,84,'A1','1st'),(13,'Eze Kingsley ',4,5,10,19,30,49,'D7','13th'),(14,'Idoghor Joshua ',10,8,10,28,48,76,'A1','4th');
/*!40000 ALTER TABLE `ss2a_3rd_term_biology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_chemistry`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_chemistry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_chemistry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CHM_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_chemistry`
--

LOCK TABLES `ss2a_3rd_term_chemistry` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_chemistry` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_chemistry` VALUES (1,'James Jedidiah Urbanus',0,0,0,0,0,0,'','10th'),(2,'Adinchezor Favour ',0,0,0,0,0,0,'','10th'),(3,'David Jude Chukwuebuka',5,6,8,19,21,40,'E8','4th'),(4,'Mathew Gideon ',0,0,0,0,0,0,'','10th'),(5,'Anigboyu Chidera ',0,0,0,0,0,0,'','10th'),(6,'Peter Grace Amarachi',0,0,0,0,0,0,'','10th'),(7,'Mathew Ebenezer  ',0,0,0,0,0,0,'','10th'),(8,'Ishaya Lois ',7,9,10,26,34,60,'C4','1st'),(9,'Istifanus Rejoice ',6,7,10,23,32,55,'C5','2nd'),(10,'Abdulaziz Ishaq ',3,4,5,12,27,39,'F9','5th'),(11,'Ikechukwu Abuchi ',4,2,5,11,19,30,'F9','6th'),(12,'James Danjuma Kaya',7,8,9,24,29,53,'C6','3rd'),(13,'Eze Kingsley ',0,0,0,0,0,0,'','10th'),(14,'Idoghor Joshua ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2a_3rd_term_chemistry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_christianreligiousstudies`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_christianreligiousstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_christianreligiousstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CRS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_christianreligiousstudies`
--

LOCK TABLES `ss2a_3rd_term_christianreligiousstudies` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_christianreligiousstudies` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_christianreligiousstudies` VALUES (1,'James Jedidiah Urbanus',6,6,10,22,41,63,'C4','3rd'),(2,'Adinchezor Favour ',4,7,10,21,37,58,'C5','5th'),(3,'David Jude Chukwuebuka',3,10,10,23,26,49,'D7','7th'),(4,'Mathew Gideon ',2,1,10,13,19,32,'F9','11th'),(5,'Anigboyu Chidera ',1,1,10,12,11,23,'F9','14th'),(6,'Peter Grace Amarachi',6,4,10,20,24,44,'E8','9th'),(7,'Mathew Ebenezer  ',1,1,9,11,13,24,'F9','13th'),(8,'Ishaya Lois ',10,9,10,29,56,85,'A1','1st'),(9,'Istifanus Rejoice ',7,6,10,23,50,73,'B2','2nd'),(10,'Abdulaziz Ishaq ',7,2,10,19,40,59,'C5','4th'),(11,'Ikechukwu Abuchi ',2,6,10,18,23,41,'E8','10th'),(12,'James Danjuma Kaya',7,6,10,23,33,56,'C5','6th'),(13,'Eze Kingsley ',1,1,9,11,17,28,'F9','12th'),(14,'Idoghor Joshua ',4,4,10,18,28,46,'D7','8th');
/*!40000 ALTER TABLE `ss2a_3rd_term_christianreligiousstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_civiceducation`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_civiceducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_civiceducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CIV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_civiceducation`
--

LOCK TABLES `ss2a_3rd_term_civiceducation` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_civiceducation` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_civiceducation` VALUES (1,'James Jedidiah Urbanus',10,8,8,26,49,75,'A1','5th'),(2,'Adinchezor Favour ',7,5,8,20,40,60,'C4','9th'),(3,'David Jude Chukwuebuka',8,7,8,23,40,63,'C4','8th'),(4,'Mathew Gideon ',6,6,8,20,33,53,'C6','12th'),(5,'Anigboyu Chidera ',5,5,4,14,27,41,'E8','13th'),(6,'Peter Grace Amarachi',7,7,8,22,44,66,'B3','6th'),(7,'Mathew Ebenezer  ',7,7,8,22,36,58,'C5','10th'),(8,'Ishaya Lois ',10,8,8,26,60,86,'A1','1st'),(9,'Istifanus Rejoice ',10,8,8,26,52,78,'A1','3rd'),(10,'Abdulaziz Ishaq ',8,8,8,24,56,80,'A1','2nd'),(11,'Ikechukwu Abuchi ',8,7,8,23,42,65,'B3','7th'),(12,'James Danjuma Kaya',10,8,8,26,50,76,'A1','4th'),(13,'Eze Kingsley ',5,1,4,10,24,34,'F9','14th'),(14,'Idoghor Joshua ',7,6,4,17,38,55,'C5','11th');
/*!40000 ALTER TABLE `ss2a_3rd_term_civiceducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_commerce`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_commerce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_commerce` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COM_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_commerce`
--

LOCK TABLES `ss2a_3rd_term_commerce` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_commerce` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_commerce` VALUES (1,'James Jedidiah Urbanus',0,0,0,0,0,0,'','10th'),(2,'Adinchezor Favour ',0,0,0,0,0,0,'','10th'),(3,'David Jude Chukwuebuka',0,0,0,0,0,0,'','10th'),(4,'Mathew Gideon ',3,3,1,7,30,37,'F9','2nd'),(5,'Anigboyu Chidera ',0,0,0,0,0,0,'','10th'),(6,'Peter Grace Amarachi',0,0,0,0,0,0,'','10th'),(7,'Mathew Ebenezer  ',0,0,0,0,0,0,'','10th'),(8,'Ishaya Lois ',0,0,0,0,0,0,'','10th'),(9,'Istifanus Rejoice ',0,0,0,0,0,0,'','10th'),(10,'Abdulaziz Ishaq ',0,0,0,0,0,0,'','10th'),(11,'Ikechukwu Abuchi ',0,0,0,0,0,0,'','10th'),(12,'James Danjuma Kaya',0,0,0,0,0,0,'','10th'),(13,'Eze Kingsley ',3,2,2,7,24,31,'F9','3rd'),(14,'Idoghor Joshua ',7,5,4,16,50,66,'B3','1st');
/*!40000 ALTER TABLE `ss2a_3rd_term_commerce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_computerstudies`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_computerstudies`
--

LOCK TABLES `ss2a_3rd_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_computerstudies` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_computerstudies` VALUES (1,'James Jedidiah Urbanus',0,0,10,10,29,39,'F9','11th'),(2,'Adinchezor Favour ',8,8,10,26,39,65,'B3','4th'),(3,'David Jude Chukwuebuka',0,0,10,10,44,54,'C6','6th'),(4,'Mathew Gideon ',0,0,10,10,33,43,'E8','8th'),(5,'Anigboyu Chidera ',0,0,0,0,25,25,'F9','13th'),(6,'Peter Grace Amarachi',0,0,10,10,32,42,'E8','10th'),(7,'Mathew Ebenezer  ',0,0,9,9,25,34,'F9','12th'),(8,'Ishaya Lois ',10,10,10,30,55,85,'A1','1st'),(9,'Istifanus Rejoice ',10,10,10,30,53,83,'A1','2nd'),(10,'Abdulaziz Ishaq ',0,0,7,7,56,63,'C4','5th'),(11,'Ikechukwu Abuchi ',0,0,10,10,44,54,'C6','6th'),(12,'James Danjuma Kaya',10,10,0,20,46,66,'B3','3rd'),(13,'Eze Kingsley ',0,0,0,0,12,12,'F9','14th'),(14,'Idoghor Joshua ',0,0,9,9,34,43,'E8','8th');
/*!40000 ALTER TABLE `ss2a_3rd_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_domesticinstallation`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_domesticinstallation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_domesticinstallation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `DIN_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_domesticinstallation`
--

LOCK TABLES `ss2a_3rd_term_domesticinstallation` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_domesticinstallation` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_domesticinstallation` VALUES (1,'James Jedidiah Urbanus',0,0,0,0,0,0,'','12th'),(2,'Adinchezor Favour ',5,10,6,21,42,63,'C4','7th'),(3,'David Jude Chukwuebuka',8,1,10,19,47,66,'B3','6th'),(4,'Mathew Gideon ',0,0,0,0,0,0,'','12th'),(5,'Anigboyu Chidera ',1,1,1,3,38,41,'E8','11th'),(6,'Peter Grace Amarachi',8,10,10,28,40,68,'B3','5th'),(7,'Mathew Ebenezer  ',8,10,1,19,39,58,'C5','10th'),(8,'Ishaya Lois ',5,1,1,7,54,61,'C4','8th'),(9,'Istifanus Rejoice ',8,10,9,27,48,75,'A1','3rd'),(10,'Abdulaziz Ishaq ',8,5,10,23,47,70,'B2','4th'),(11,'Ikechukwu Abuchi ',8,10,10,28,52,80,'A1','2nd'),(12,'James Danjuma Kaya',10,10,10,30,61,91,'A1','1st'),(13,'Eze Kingsley ',0,0,0,0,0,0,'','12th'),(14,'Idoghor Joshua ',8,2,0,10,49,59,'C5','9th');
/*!40000 ALTER TABLE `ss2a_3rd_term_domesticinstallation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_economics`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_economics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_economics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ECO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_economics`
--

LOCK TABLES `ss2a_3rd_term_economics` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_economics` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_economics` VALUES (1,'James Jedidiah Urbanus',7,6,6,19,19,38,'F9','12th'),(2,'Adinchezor Favour ',10,0,10,20,30,50,'C6','7th'),(3,'David Jude Chukwuebuka',8,1,10,19,35,54,'C6','6th'),(4,'Mathew Gideon ',7,1,8,16,30,46,'D7','10th'),(5,'Anigboyu Chidera ',0,1,4,5,18,23,'F9','14th'),(6,'Peter Grace Amarachi',9,1,10,20,27,47,'D7','9th'),(7,'Mathew Ebenezer  ',8,2,8,18,26,44,'E8','11th'),(8,'Ishaya Lois ',9,8,10,27,49,76,'A1','2nd'),(9,'Istifanus Rejoice ',9,4,10,23,45,68,'B3','4th'),(10,'Abdulaziz Ishaq ',9,10,10,29,40,69,'B3','3rd'),(11,'Ikechukwu Abuchi ',9,3,9,21,42,63,'C4','5th'),(12,'James Danjuma Kaya',9,6,10,25,54,79,'A1','1st'),(13,'Eze Kingsley ',0,0,4,4,23,27,'F9','13th'),(14,'Idoghor Joshua ',1,6,9,16,34,50,'C6','7th');
/*!40000 ALTER TABLE `ss2a_3rd_term_economics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_electronics`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_electronics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ELC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_electronics`
--

LOCK TABLES `ss2a_3rd_term_electronics` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_electronics` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_electronics` VALUES (1,'James Jedidiah Urbanus',5,5,6,16,21,37,'F9','9th'),(2,'Adinchezor Favour ',7,5,10,22,23,45,'D7','5th'),(3,'David Jude Chukwuebuka',7,5,10,22,29,51,'C6','3rd'),(4,'Mathew Gideon ',5,5,5,15,16,31,'F9','11th'),(5,'Anigboyu Chidera ',3,3,4,10,5,15,'F9','13th'),(6,'Peter Grace Amarachi',7,5,8,20,21,41,'E8','6th'),(7,'Mathew Ebenezer  ',0,0,0,0,0,0,'','14th'),(8,'Ishaya Lois ',7,5,10,22,39,61,'C4','2nd'),(9,'Istifanus Rejoice ',8,5,10,23,41,64,'C4','1st'),(10,'Abdulaziz Ishaq ',6,5,5,16,23,39,'F9','8th'),(11,'Ikechukwu Abuchi ',6,5,5,16,19,35,'F9','10th'),(12,'James Danjuma Kaya',5,5,5,15,31,46,'D7','4th'),(13,'Eze Kingsley ',5,2,3,10,12,22,'F9','12th'),(14,'Idoghor Joshua ',3,5,5,13,27,40,'E8','7th');
/*!40000 ALTER TABLE `ss2a_3rd_term_electronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_englishlanguage`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_englishlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_englishlanguage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ENG_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_englishlanguage`
--

LOCK TABLES `ss2a_3rd_term_englishlanguage` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_englishlanguage` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_englishlanguage` VALUES (1,'James Jedidiah Urbanus',6,7,9,22,51,73,'B2','7th'),(2,'Adinchezor Favour ',6,8,9,23,58,81,'A1','3rd'),(3,'David Jude Chukwuebuka',5,8,8,21,55,76,'A1','4th'),(4,'Mathew Gideon ',5,8,8,21,43,64,'C4','11th'),(5,'Anigboyu Chidera ',2,6,9,17,42,59,'C5','12th'),(6,'Peter Grace Amarachi',7,7,10,24,52,76,'A1','4th'),(7,'Mathew Ebenezer  ',4,5,9,18,34,52,'C6','13th'),(8,'Ishaya Lois ',9,10,9,28,54,82,'A1','2nd'),(9,'Istifanus Rejoice ',8,10,10,28,61,89,'A1','1st'),(10,'Abdulaziz Ishaq ',3,9,8,20,55,75,'A1','6th'),(11,'Ikechukwu Abuchi ',5,7,8,20,45,65,'B3','10th'),(12,'James Danjuma Kaya',7,6,9,22,50,72,'B2','8th'),(13,'Eze Kingsley ',5,7,8,20,32,52,'C6','13th'),(14,'Idoghor Joshua ',2,9,7,18,48,66,'B3','9th');
/*!40000 ALTER TABLE `ss2a_3rd_term_englishlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_financialaccounting`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_financialaccounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_financialaccounting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `FAC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_financialaccounting`
--

LOCK TABLES `ss2a_3rd_term_financialaccounting` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_financialaccounting` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_financialaccounting` VALUES (1,'James Jedidiah Urbanus',0,0,0,0,0,0,'','10th'),(2,'Adinchezor Favour ',0,0,0,0,0,0,'','10th'),(3,'David Jude Chukwuebuka',0,0,0,0,0,0,'','10th'),(4,'Mathew Gideon ',3,4,6,13,50,63,'C4','1st'),(5,'Anigboyu Chidera ',0,0,0,0,0,0,'','10th'),(6,'Peter Grace Amarachi',0,0,0,0,0,0,'','10th'),(7,'Mathew Ebenezer  ',0,0,0,0,0,0,'','10th'),(8,'Ishaya Lois ',0,0,0,0,0,0,'','10th'),(9,'Istifanus Rejoice ',0,0,0,0,0,0,'','10th'),(10,'Abdulaziz Ishaq ',0,0,0,0,0,0,'','10th'),(11,'Ikechukwu Abuchi ',0,0,0,0,0,0,'','10th'),(12,'James Danjuma Kaya',0,0,0,0,0,0,'','10th'),(13,'Eze Kingsley ',4,6,0,10,37,47,'D7','3rd'),(14,'Idoghor Joshua ',6,5,5,16,42,58,'C5','2nd');
/*!40000 ALTER TABLE `ss2a_3rd_term_financialaccounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_garmentmaking`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_garmentmaking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_garmentmaking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GMK_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_garmentmaking`
--

LOCK TABLES `ss2a_3rd_term_garmentmaking` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_garmentmaking` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_garmentmaking` VALUES (1,'James Jedidiah Urbanus',6,6,6,18,30,48,'D7','6th'),(2,'Adinchezor Favour ',8,8,8,24,38,62,'C4','3rd'),(3,'David Jude Chukwuebuka',7,7,7,21,35,56,'C5','5th'),(4,'Mathew Gideon ',5,5,5,15,30,45,'D7','10th'),(5,'Anigboyu Chidera ',5,5,5,15,30,45,'D7','10th'),(6,'Peter Grace Amarachi',8,7,8,23,38,61,'C4','4th'),(7,'Mathew Ebenezer  ',6,5,5,16,29,45,'D7','10th'),(8,'Ishaya Lois ',8,8,8,24,45,69,'B3','1st'),(9,'Istifanus Rejoice ',8,8,7,23,40,63,'C4','2nd'),(10,'Abdulaziz Ishaq ',0,0,0,0,0,0,'F9','11th'),(11,'Ikechukwu Abuchi ',0,0,0,0,0,0,'','11th'),(12,'James Danjuma Kaya',0,0,0,0,0,0,'','11th'),(13,'Eze Kingsley ',0,0,0,0,0,0,'','11th'),(14,'Idoghor Joshua ',6,5,5,16,30,46,'D7','7th');
/*!40000 ALTER TABLE `ss2a_3rd_term_garmentmaking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_geography`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_geography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_geography` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GEO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_geography`
--

LOCK TABLES `ss2a_3rd_term_geography` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_geography` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_geography` VALUES (1,'James Jedidiah Urbanus',7,4,10,21,54,75,'A1','8th'),(2,'Adinchezor Favour ',6,6,10,22,49,71,'B2','10th'),(3,'David Jude Chukwuebuka',6,9,10,25,60,85,'A1','5th'),(4,'Mathew Gideon ',9,8,10,27,39,66,'B3','12th'),(5,'Anigboyu Chidera ',5,5,10,20,50,70,'B2','11th'),(6,'Peter Grace Amarachi',8,5,10,23,49,72,'B2','9th'),(7,'Mathew Ebenezer  ',6,7,10,23,35,58,'C5','13th'),(8,'Ishaya Lois ',7,9,10,26,69,95,'A1','1st'),(9,'Istifanus Rejoice ',6,9,10,25,65,90,'A1','4th'),(10,'Abdulaziz Ishaq ',6,9,10,25,54,79,'A1','6th'),(11,'Ikechukwu Abuchi ',9,9,10,28,63,91,'A1','3rd'),(12,'James Danjuma Kaya',10,8,10,28,67,95,'A1','1st'),(13,'Eze Kingsley ',5,4,10,19,35,54,'C6','14th'),(14,'Idoghor Joshua ',8,10,10,28,50,78,'A1','7th');
/*!40000 ALTER TABLE `ss2a_3rd_term_geography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_government`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_government`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_government` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GOV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_government`
--

LOCK TABLES `ss2a_3rd_term_government` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_government` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_government` VALUES (1,'James Jedidiah Urbanus',10,8,8,26,45,71,'B2','1st'),(2,'Adinchezor Favour ',8,8,8,24,27,51,'C6','3rd'),(3,'David Jude Chukwuebuka',0,0,0,0,0,0,'','10th'),(4,'Mathew Gideon ',7,5,4,16,25,41,'E8','5th'),(5,'Anigboyu Chidera ',3,7,4,14,30,44,'E8','4th'),(6,'Peter Grace Amarachi',8,8,8,24,36,60,'C4','2nd'),(7,'Mathew Ebenezer  ',1,5,8,14,19,33,'F9','7th'),(8,'Ishaya Lois ',0,0,0,0,0,0,'','10th'),(9,'Istifanus Rejoice ',0,0,0,0,0,0,'','10th'),(10,'Abdulaziz Ishaq ',0,0,0,0,0,0,'','10th'),(11,'Ikechukwu Abuchi ',0,0,0,0,0,0,'','10th'),(12,'James Danjuma Kaya',0,0,0,0,0,0,'','10th'),(13,'Eze Kingsley ',2,5,4,11,17,28,'F9','8th'),(14,'Idoghor Joshua ',4,6,4,14,26,40,'E8','6th');
/*!40000 ALTER TABLE `ss2a_3rd_term_government` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_literatureinenglish`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_literatureinenglish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_literatureinenglish` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `LIT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_literatureinenglish`
--

LOCK TABLES `ss2a_3rd_term_literatureinenglish` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_literatureinenglish` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_literatureinenglish` VALUES (1,'James Jedidiah Urbanus',7,7,8,22,50,72,'B2','3rd'),(2,'Adinchezor Favour ',9,9,10,28,51,79,'A1','1st'),(3,'David Jude Chukwuebuka',0,0,0,0,0,0,'','10th'),(4,'Mathew Gideon ',0,0,0,0,0,0,'','10th'),(5,'Anigboyu Chidera ',6,6,7,19,39,58,'C5','4th'),(6,'Peter Grace Amarachi',8,8,9,25,53,78,'A1','2nd'),(7,'Mathew Ebenezer  ',5,5,6,16,42,58,'C5','4th'),(8,'Ishaya Lois ',0,0,0,0,0,0,'','10th'),(9,'Istifanus Rejoice ',0,0,0,0,0,0,'','10th'),(10,'Abdulaziz Ishaq ',0,0,0,0,0,0,'','10th'),(11,'Ikechukwu Abuchi ',0,0,0,0,0,0,'','10th'),(12,'James Danjuma Kaya',0,0,0,0,0,0,'','10th'),(13,'Eze Kingsley ',0,0,0,0,0,0,'','10th'),(14,'Idoghor Joshua ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2a_3rd_term_literatureinenglish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_mathematics`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_mathematics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_mathematics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `MTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_mathematics`
--

LOCK TABLES `ss2a_3rd_term_mathematics` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_mathematics` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_mathematics` VALUES (1,'James Jedidiah Urbanus',6,5,5,16,32,48,'D7','6th'),(2,'Adinchezor Favour ',4,7,4,15,29,44,'E8','10th'),(3,'David Jude Chukwuebuka',5,8,9,22,46,68,'B3','2nd'),(4,'Mathew Gideon ',3,7,5,15,30,45,'D7','9th'),(5,'Anigboyu Chidera ',3,5,4,12,26,38,'F9','13th'),(6,'Peter Grace Amarachi',5,5,7,17,33,50,'C6','5th'),(7,'Mathew Ebenezer  ',4,6,4,14,23,37,'F9','14th'),(8,'Ishaya Lois ',6,8,8,22,48,70,'B2','1st'),(9,'Istifanus Rejoice ',2,5,7,14,32,46,'D7','7th'),(10,'Abdulaziz Ishaq ',6,6,7,19,34,53,'C6','4th'),(11,'Ikechukwu Abuchi ',5,4,6,15,31,46,'D7','7th'),(12,'James Danjuma Kaya',6,4,8,18,39,57,'C5','3rd'),(13,'Eze Kingsley ',0,4,6,10,32,42,'E8','11th'),(14,'Idoghor Joshua ',5,5,6,16,24,40,'E8','12th');
/*!40000 ALTER TABLE `ss2a_3rd_term_mathematics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term_physics`
--

DROP TABLE IF EXISTS `ss2a_3rd_term_physics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term_physics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `PHY_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term_physics`
--

LOCK TABLES `ss2a_3rd_term_physics` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term_physics` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term_physics` VALUES (1,'James Jedidiah Urbanus',0,0,0,0,0,0,'','10th'),(2,'Adinchezor Favour ',0,0,0,0,0,0,'','10th'),(3,'David Jude Chukwuebuka',10,3,10,23,44,67,'B3','4th'),(4,'Mathew Gideon ',0,0,0,0,0,0,'','10th'),(5,'Anigboyu Chidera ',0,0,0,0,0,0,'','10th'),(6,'Peter Grace Amarachi',0,0,0,0,0,0,'','10th'),(7,'Mathew Ebenezer  ',0,0,0,0,0,0,'','10th'),(8,'Ishaya Lois ',10,6,10,26,50,76,'A1','1st'),(9,'Istifanus Rejoice ',10,6,10,26,44,70,'B2','3rd'),(10,'Abdulaziz Ishaq ',8,5,10,23,37,60,'C4','5th'),(11,'Ikechukwu Abuchi ',7,5,10,22,36,58,'C5','6th'),(12,'James Danjuma Kaya',8,7,10,25,48,73,'B2','2nd'),(13,'Eze Kingsley ',0,0,0,0,0,0,'','10th'),(14,'Idoghor Joshua ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2a_3rd_term_physics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_agriculturalscience`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_agriculturalscience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_agriculturalscience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `AGR_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_agriculturalscience`
--

LOCK TABLES `ss2b_3rd_term_agriculturalscience` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_agriculturalscience` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_agriculturalscience` VALUES (1,'Ahmed Abubakar ',0,0,0,0,0,0,'','10th'),(2,'Alison Vidro ',0,0,0,0,0,0,'','10th'),(3,'Dele Emmanuel  ',0,0,0,0,0,0,'','10th'),(4,'Emmanuel Felix ',5,4,10,19,36,55,'C5','5th'),(5,'Okoro Emmanuel ',4,6,10,20,40,60,'C4','3rd'),(6,'Hussaini Kamarudeen ',0,0,0,0,0,0,'','10th'),(7,'John Ibrahim ',0,0,0,0,0,0,'','10th'),(8,'Ogbodo Brendan Chibueze',0,0,0,0,0,0,'','10th'),(9,'Ogbu Kingsley ',6,6,10,22,35,57,'C5','4th'),(10,'Yakubu Isah ',0,0,0,0,0,0,'','10th'),(11,'Anaeme Cynthia ',6,7,10,23,41,64,'C4','2nd'),(12,'Eke Nkechinyere ',0,0,0,0,0,0,'','10th'),(13,'Geoffrey Jecinta ',0,0,0,0,0,0,'','10th'),(14,'Ogar Abiyei Faith',7,7,10,24,47,71,'B2','1st'),(15,'Nwankwo Nzubechukwu ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2b_3rd_term_agriculturalscience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_animalhusbandry`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_animalhusbandry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_animalhusbandry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ANH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_animalhusbandry`
--

LOCK TABLES `ss2b_3rd_term_animalhusbandry` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_animalhusbandry` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_animalhusbandry` VALUES (1,'Ahmed Abubakar ',0,0,0,0,0,0,'','10th'),(2,'Alison Vidro ',0,0,0,0,0,0,'','10th'),(3,'Dele Emmanuel  ',0,0,0,0,0,0,'','10th'),(4,'Emmanuel Felix ',4,5,10,19,30,49,'D7','3rd'),(5,'Okoro Emmanuel ',0,0,0,0,0,0,'','10th'),(6,'Hussaini Kamarudeen ',0,0,0,0,0,0,'','10th'),(7,'John Ibrahim ',0,0,0,0,0,0,'','10th'),(8,'Ogbodo Brendan Chibueze',7,7,10,24,32,56,'C5','2nd'),(9,'Ogbu Kingsley ',7,7,10,24,39,63,'C4','1st'),(10,'Yakubu Isah ',0,0,0,0,0,0,'','10th'),(11,'Anaeme Cynthia ',0,0,0,0,0,0,'','10th'),(12,'Eke Nkechinyere ',0,0,0,0,0,0,'','10th'),(13,'Geoffrey Jecinta ',0,0,0,0,0,0,'','10th'),(14,'Ogar Abiyei Faith',0,0,0,0,0,0,'','10th'),(15,'Nwankwo Nzubechukwu ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2b_3rd_term_animalhusbandry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_basicelectricity`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_basicelectricity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_basicelectricity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BEL_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_basicelectricity`
--

LOCK TABLES `ss2b_3rd_term_basicelectricity` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_basicelectricity` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_basicelectricity` VALUES (1,'Ahmed Abubakar ',4,10,1,15,23,38,'F9','7th'),(2,'Alison Vidro ',0,0,0,0,0,0,'','10th'),(3,'Dele Emmanuel ',0,0,0,0,0,0,'','10th'),(4,'Emmanuel Felix ',7,5,10,22,52,74,'B2','1st'),(5,'Okoro Emmanuel ',6,8,1,15,48,63,'C4','3rd'),(6,'Hussaini Kamarudeen ',0,0,0,0,0,0,'','10th'),(7,'John Ibrahim ',0,0,0,0,0,0,'','10th'),(8,'Ogbodo Brendan Chibueze',1,1,1,3,32,35,'F9','8th'),(9,'Ogbu Kingsley ',0,0,0,0,0,0,'','10th'),(10,'Yakubu Isah ',0,0,0,0,0,0,'','10th'),(11,'Anaeme Cynthia ',1,1,1,3,52,55,'C5','5th'),(12,'Eke Nkechinyere ',5,10,6,21,42,63,'C4','3rd'),(13,'Geoffrey Jecinta ',10,8,8,26,23,49,'D7','6th'),(14,'Ogar Abiyei Faith',10,10,10,30,42,72,'B2','2nd'),(15,'Nwankwo Nzubechukwu ',1,1,1,3,25,28,'F9','9th');
/*!40000 ALTER TABLE `ss2b_3rd_term_basicelectricity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_biology`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_biology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_biology` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `BIO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_biology`
--

LOCK TABLES `ss2b_3rd_term_biology` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_biology` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_biology` VALUES (1,'Ahmed Abubakar ',5,3,10,18,35,53,'C6','11th'),(2,'Alison Vidro ',6,1,10,17,28,45,'D7','15th'),(3,'Dele Emmanuel ',7,4,10,21,30,51,'C6','14th'),(4,'Emmanuel Felix ',10,7,10,27,55,82,'A1','6th'),(5,'Okoro Emmanuel ',8,10,10,28,45,73,'B2','7th'),(6,'Hussaini Kamarudeen ',7,5,10,22,41,63,'C4','10th'),(7,'John Ibrahim ',6,2,10,18,35,53,'C6','11th'),(8,'Ogbodo Brendan Chibueze',10,7,10,27,60,87,'A1','2nd'),(9,'Ogbu Kingsley ',10,8,10,28,57,85,'A1','4th'),(10,'Yakubu Isah ',8,5,10,23,30,53,'C6','11th'),(11,'Anaeme Cynthia ',10,7,10,27,60,87,'A1','2nd'),(12,'Eke Nkechinyere ',10,9,10,29,56,85,'A1','4th'),(13,'Geoffrey Jecinta ',8,5,10,23,40,63,'C4','10th'),(14,'Ogar Abiyei Faith',10,7,10,27,62,89,'A1','1st'),(15,'Nwankwo Nzubechukwu ',10,8,10,28,38,66,'B3','8th');
/*!40000 ALTER TABLE `ss2b_3rd_term_biology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_chemistry`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_chemistry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_chemistry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CHM_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_chemistry`
--

LOCK TABLES `ss2b_3rd_term_chemistry` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_chemistry` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_chemistry` VALUES (1,'Ahmed Abubakar ',0,0,0,0,0,0,'','10th'),(2,'Alison Vidro ',0,0,0,0,0,0,'','10th'),(3,'Dele Emmanuel  ',0,0,0,0,0,0,'','10th'),(4,'Emmanuel Felix ',6,8,5,19,40,59,'C5','2nd'),(5,'Okoro Emmanuel ',4,3,5,12,28,40,'E8','5th'),(6,'Hussaini Kamarudeen ',0,0,0,0,0,0,'','10th'),(7,'John Ibrahim ',0,0,0,0,0,0,'','10th'),(8,'Ogbodo Brendan Chibueze',0,0,0,0,0,0,'','10th'),(9,'Ogbu Kingsley ',7,7,5,19,26,45,'D7','4th'),(10,'Yakubu Isah ',0,0,0,0,0,0,'','10th'),(11,'Anaeme Cynthia ',6,5,10,21,25,46,'D7','3rd'),(12,'Eke Nkechinyere ',0,0,0,0,0,0,'','10th'),(13,'Geoffrey Jecinta ',0,0,0,0,0,0,'','10th'),(14,'Ogar Abiyei Faith',7,9,10,26,34,60,'C4','1st'),(15,'Nwankwo Nzubechukwu ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2b_3rd_term_chemistry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_christianreligiousstudies`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_christianreligiousstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_christianreligiousstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CRS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_christianreligiousstudies`
--

LOCK TABLES `ss2b_3rd_term_christianreligiousstudies` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_christianreligiousstudies` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_christianreligiousstudies` VALUES (1,'Ahmed Abubakar ',1,1,7,9,8,17,'F9','15th'),(2,'Alison Vidro ',1,1,6,8,20,28,'F9','12th'),(3,'Dele Emmanuel ',3,2,7,12,12,24,'F9','13th'),(4,'Emmanuel Felix ',1,5,9,15,40,55,'C5','5th'),(5,'Okoro Emmanuel ',7,1,8,16,24,40,'E8','9th'),(6,'Hussaini Kamarudeen ',5,1,9,15,28,43,'E8','8th'),(7,'John Ibrahim ',1,1,8,10,10,20,'F9','14th'),(8,'Ogbodo Brendan Chibueze',7,5,10,22,48,70,'B2','3rd'),(9,'Ogbu Kingsley ',4,7,10,21,33,54,'C6','6th'),(10,'Yakubu Isah ',1,1,5,7,27,34,'F9','10th'),(11,'Anaeme Cynthia ',5,9,10,24,38,62,'C4','4th'),(12,'Eke Nkechinyere ',10,10,10,30,57,87,'A1','1st'),(13,'Geoffrey Jecinta ',2,4,10,16,31,47,'D7','7th'),(14,'Ogar Abiyei Faith',7,9,10,26,55,81,'A1','2nd'),(15,'Nwankwo Nzubechukwu ',3,6,9,18,14,32,'F9','11th');
/*!40000 ALTER TABLE `ss2b_3rd_term_christianreligiousstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_civiceducation`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_civiceducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_civiceducation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `CIV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_civiceducation`
--

LOCK TABLES `ss2b_3rd_term_civiceducation` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_civiceducation` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_civiceducation` VALUES (1,'Ahmed Abubakar ',5,8,4,17,40,57,'C5','8th'),(2,'Alison Vidro ',5,5,4,14,33,47,'D7','13th'),(3,'Dele Emmanuel ',5,5,4,14,28,42,'E8','15th'),(4,'Emmanuel Felix ',7,8,8,23,34,57,'C5','8th'),(5,'Okoro Emmanuel ',7,8,8,23,36,59,'C5','7th'),(6,'Hussaini Kamarudeen ',5,1,4,10,37,47,'D7','13th'),(7,'John Ibrahim ',5,4,5,14,37,51,'C6','12th'),(8,'Ogbodo Brendan Chibueze',10,8,8,26,53,79,'A1','1st'),(9,'Ogbu Kingsley ',8,8,8,24,53,77,'A1','4th'),(10,'Yakubu Isah ',5,5,8,18,38,56,'C5','10th'),(11,'Anaeme Cynthia ',10,8,8,26,52,78,'A1','3rd'),(12,'Eke Nkechinyere ',8,8,8,24,55,79,'A1','1st'),(13,'Geoffrey Jecinta ',7,5,8,20,40,60,'C4','6th'),(14,'Ogar Abiyei Faith',7,8,8,23,51,74,'B2','5th'),(15,'Nwankwo Nzubechukwu ',5,5,8,18,34,52,'C6','11th');
/*!40000 ALTER TABLE `ss2b_3rd_term_civiceducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_commerce`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_commerce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_commerce` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COM_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_commerce`
--

LOCK TABLES `ss2b_3rd_term_commerce` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_commerce` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_commerce` VALUES (1,'Ahmed Abubakar ',0,0,0,0,0,0,'','10th'),(2,'Alison Vidro ',5,1,1,7,30,37,'F9','1st'),(3,'Dele Emmanuel ',0,0,0,0,0,0,'','10th'),(4,'Emmanuel Felix ',0,0,0,0,0,0,'','10th'),(5,'Okoro Emmanuel ',0,0,0,0,0,0,'','10th'),(6,'Hussaini Kamarudeen ',0,0,0,0,0,0,'','10th'),(7,'John Ibrahim ',0,0,0,0,0,0,'','10th'),(8,'Ogbodo Brendan Chibueze',0,0,0,0,0,0,'','10th'),(9,'Ogbu Kingsley ',0,0,0,0,0,0,'','10th'),(10,'Yakubu Isah ',0,0,0,0,0,0,'','10th'),(11,'Anaeme Cynthia ',0,0,0,0,0,0,'','10th'),(12,'Eke Nkechinyere ',0,0,0,0,0,0,'','10th'),(13,'Geoffrey Jecinta ',0,0,0,0,0,0,'','10th'),(14,'Ogar Abiyei Faith',0,0,0,0,0,0,'','10th'),(15,'Nwankwo Nzubechukwu ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2b_3rd_term_commerce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_computerstudies`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_computerstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_computerstudies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `COS_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_computerstudies`
--

LOCK TABLES `ss2b_3rd_term_computerstudies` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_computerstudies` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_computerstudies` VALUES (1,'Ahmed Abubakar ',10,10,10,30,24,54,'C6','6th'),(2,'Alison Vidro ',0,0,0,0,25,25,'F9','15th'),(3,'Dele Emmanuel ',0,0,0,0,35,35,'F9','11th'),(4,'Emmanuel Felix ',8,8,10,26,42,68,'B3','3rd'),(5,'Okoro Emmanuel ',0,0,10,10,40,50,'C6','8th'),(6,'Hussaini Kamarudeen ',0,0,0,0,35,35,'F9','11th'),(7,'John Ibrahim ',0,0,0,0,36,36,'F9','10th'),(8,'Ogbodo Brendan Chibueze',0,0,10,10,46,56,'C5','5th'),(9,'Ogbu Kingsley ',10,10,9,29,55,84,'A1','1st'),(10,'Yakubu Isah ',0,0,0,0,32,32,'F9','14th'),(11,'Anaeme Cynthia ',10,10,10,30,33,63,'C4','4th'),(12,'Eke Nkechinyere ',0,0,10,10,42,52,'C6','7th'),(13,'Geoffrey Jecinta ',0,0,10,10,33,43,'E8','9th'),(14,'Ogar Abiyei Faith',8,8,10,26,54,80,'A1','2nd'),(15,'Nwankwo Nzubechukwu ',0,0,10,10,25,35,'F9','11th');
/*!40000 ALTER TABLE `ss2b_3rd_term_computerstudies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_domesticinstallation`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_domesticinstallation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_domesticinstallation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `DIN_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_domesticinstallation`
--

LOCK TABLES `ss2b_3rd_term_domesticinstallation` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_domesticinstallation` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_domesticinstallation` VALUES (1,'Ahmed Abubakar ',8,10,7,25,0,25,'F9','8th'),(2,'Alison Vidro ',0,0,0,0,0,0,'','11th'),(3,'Dele Emmanuel ',0,0,0,0,0,0,'','11th'),(4,'Emmanuel Felix ',8,8,10,26,45,71,'B2','4th'),(5,'Okoro Emmanuel ',1,1,1,3,50,53,'C6','7th'),(6,'Hussaini Kamarudeen ',8,10,0,18,0,18,'F9','10th'),(7,'John Ibrahim ',0,0,0,0,0,0,'','11th'),(8,'Ogbodo Brendan Chibueze',8,1,1,10,48,58,'C5','5th'),(9,'Ogbu Kingsley ',8,10,10,28,62,90,'A1','1st'),(10,'Yakubu Isah ',0,0,0,0,0,0,'','11th'),(11,'Anaeme Cynthia ',1,1,1,3,52,55,'C5','6th'),(12,'Eke Nkechinyere ',6,10,10,26,48,74,'B2','3rd'),(13,'Geoffrey Jecinta ',0,10,10,20,0,20,'F9','9th'),(14,'Ogar Abiyei Faith',8,10,10,28,62,90,'A1','1st'),(15,'Nwankwo Nzubechukwu ',0,0,0,0,0,0,'','11th');
/*!40000 ALTER TABLE `ss2b_3rd_term_domesticinstallation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_economics`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_economics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_economics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ECO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_economics`
--

LOCK TABLES `ss2b_3rd_term_economics` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_economics` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_economics` VALUES (1,'Ahmed Abubakar ',3,2,7,12,20,32,'F9','12th'),(2,'Alison Vidro ',4,1,1,6,21,27,'F9','13th'),(3,'Dele Emmanuel ',0,3,1,4,21,25,'F9','14th'),(4,'Emmanuel Felix ',9,4,8,21,50,71,'B2','5th'),(5,'Okoro Emmanuel ',9,3,10,22,32,54,'C6','9th'),(6,'Hussaini Kamarudeen ',5,4,7,16,39,55,'C5','8th'),(7,'John Ibrahim ',3,2,1,6,15,21,'F9','15th'),(8,'Ogbodo Brendan Chibueze',8,5,10,23,53,76,'A1','2nd'),(9,'Ogbu Kingsley ',9,7,10,26,50,76,'A1','2nd'),(10,'Yakubu Isah ',7,4,4,15,24,39,'F9','11th'),(11,'Anaeme Cynthia ',9,3,10,22,37,59,'C5','6th'),(12,'Eke Nkechinyere ',10,10,10,30,44,74,'B2','4th'),(13,'Geoffrey Jecinta ',8,4,10,22,34,56,'C5','7th'),(14,'Ogar Abiyei Faith',8,5,10,23,54,77,'A1','1st'),(15,'Nwankwo Nzubechukwu ',8,6,10,24,20,44,'E8','10th');
/*!40000 ALTER TABLE `ss2b_3rd_term_economics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_electronics`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_electronics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_electronics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ELC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_electronics`
--

LOCK TABLES `ss2b_3rd_term_electronics` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_electronics` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_electronics` VALUES (1,'Ahmed Abubakar ',0,0,0,0,0,0,'','12th'),(2,'Alison Vidro ',0,0,0,0,0,0,'','12th'),(3,'Dele Emmanuel ',2,3,5,10,19,29,'F9','9th'),(4,'Emmanuel Felix ',9,5,10,24,46,70,'B2','1st'),(5,'Okoro Emmanuel ',3,5,2,10,10,20,'F9','11th'),(6,'Hussaini Kamarudeen ',4,5,8,17,45,62,'C4','2nd'),(7,'John Ibrahim ',0,0,0,0,0,0,'','12th'),(8,'Ogbodo Brendan Chibueze',2,5,10,17,31,48,'D7','7th'),(9,'Ogbu Kingsley ',3,2,5,10,18,28,'F9','10th'),(10,'Yakubu Isah ',0,0,0,0,0,0,'','12th'),(11,'Anaeme Cynthia ',8,5,5,18,40,58,'C5','5th'),(12,'Eke Nkechinyere ',5,5,9,19,31,50,'C6','6th'),(13,'Geoffrey Jecinta ',8,5,9,22,40,62,'C4','2nd'),(14,'Ogar Abiyei Faith',7,5,8,20,40,60,'C4','4th'),(15,'Nwankwo Nzubechukwu ',5,5,10,20,26,46,'D7','8th');
/*!40000 ALTER TABLE `ss2b_3rd_term_electronics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_englishlanguage`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_englishlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_englishlanguage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `ENG_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_englishlanguage`
--

LOCK TABLES `ss2b_3rd_term_englishlanguage` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_englishlanguage` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_englishlanguage` VALUES (1,'Ahmed Abubakar ',0,4,8,12,33,45,'D7','15th'),(2,'Alison Vidro ',1,7,8,16,42,58,'C5','11th'),(3,'Dele Emmanuel ',1,4,7,12,42,54,'C6','13th'),(4,'Emmanuel Felix ',2,8,8,18,54,72,'B2','6th'),(5,'Okoro Emmanuel ',3,8,9,20,43,63,'C4','10th'),(6,'Hussaini Kamarudeen ',3,6,9,18,52,70,'B2','8th'),(7,'John Ibrahim ',5,4,9,18,31,49,'D7','14th'),(8,'Ogbodo Brendan Chibueze',6,9,8,23,53,76,'A1','5th'),(9,'Ogbu Kingsley ',3,9,9,21,58,79,'A1','4th'),(10,'Yakubu Isah ',2,8,9,19,44,63,'C4','10th'),(11,'Anaeme Cynthia ',8,8,10,26,55,81,'A1','3rd'),(12,'Eke Nkechinyere ',8,9,10,27,57,84,'A1','1st'),(13,'Geoffrey Jecinta ',5,9,9,23,48,71,'B2','7th'),(14,'Ogar Abiyei Faith',5,9,9,23,59,82,'A1','2nd'),(15,'Nwankwo Nzubechukwu ',1,8,8,17,40,57,'C5','12th');
/*!40000 ALTER TABLE `ss2b_3rd_term_englishlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_financialaccounting`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_financialaccounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_financialaccounting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `FAC_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_financialaccounting`
--

LOCK TABLES `ss2b_3rd_term_financialaccounting` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_financialaccounting` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_financialaccounting` VALUES (1,'Ahmed Abubakar ',0,0,0,0,0,0,'','10th'),(2,'Alison Vidro ',5,0,0,5,47,52,'C6','1st'),(3,'Dele Emmanuel ',0,0,0,0,0,0,'','10th'),(4,'Emmanuel Felix ',0,0,0,0,0,0,'','10th'),(5,'Okoro Emmanuel ',0,0,0,0,0,0,'','10th'),(6,'Hussaini Kamarudeen ',0,0,0,0,0,0,'','10th'),(7,'John Ibrahim ',0,0,0,0,0,0,'','10th'),(8,'Ogbodo Brendan Chibueze',0,0,0,0,0,0,'','10th'),(9,'Ogbu Kingsley ',0,0,0,0,0,0,'','10th'),(10,'Yakubu Isah ',0,0,0,0,0,0,'','10th'),(11,'Anaeme Cynthia ',0,0,0,0,0,0,'','10th'),(12,'Eke Nkechinyere ',0,0,0,0,0,0,'','10th'),(13,'Geoffrey Jecinta ',0,0,0,0,0,0,'','10th'),(14,'Ogar Abiyei Faith',0,0,0,0,0,0,'','10th'),(15,'Nwankwo Nzubechukwu ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2b_3rd_term_financialaccounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_garmentmaking`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_garmentmaking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_garmentmaking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GMK_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_garmentmaking`
--

LOCK TABLES `ss2b_3rd_term_garmentmaking` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_garmentmaking` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_garmentmaking` VALUES (1,'Ahmed Abubakar ',6,5,5,16,32,48,'D7','7th'),(2,'Alison Vidro ',5,5,5,15,30,45,'D7','10th'),(3,'Dele Emmanuel ',5,5,5,15,34,49,'D7','6th'),(4,'Emmanuel Felix ',0,0,0,0,0,0,'','13th'),(5,'Okoro Emmanuel ',5,5,6,16,30,46,'D7','8th'),(6,'Hussaini Kamarudeen ',5,6,5,16,30,46,'D7','8th'),(7,'John Ibrahim ',6,5,5,16,28,44,'E8','12th'),(8,'Ogbodo Brendan Chibueze',0,0,0,0,0,0,'','13th'),(9,'Ogbu Kingsley ',0,0,0,0,0,0,'','13th'),(10,'Yakubu Isah ',5,5,5,15,30,45,'D7','10th'),(11,'Anaeme Cynthia ',7,8,7,22,40,62,'C4','3rd'),(12,'Eke Nkechinyere ',8,7,7,22,32,54,'C6','5th'),(13,'Geoffrey Jecinta ',7,8,8,23,40,63,'C4','2nd'),(14,'Ogar Abiyei Faith',9,9,9,27,45,72,'B2','1st'),(15,'Nwankwo Nzubechukwu ',8,9,9,26,30,56,'C5','4th');
/*!40000 ALTER TABLE `ss2b_3rd_term_garmentmaking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_geography`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_geography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_geography` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GEO_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_geography`
--

LOCK TABLES `ss2b_3rd_term_geography` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_geography` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_geography` VALUES (1,'Ahmed Abubakar ',8,9,10,27,37,64,'C4','13th'),(2,'Alison Vidro ',2,7,8,17,42,59,'C5','15th'),(3,'Dele Emmanuel ',5,9,10,24,40,64,'C4','13th'),(4,'Emmanuel Felix ',10,10,10,30,55,85,'A1','5th'),(5,'Okoro Emmanuel ',9,9,10,28,43,71,'B2','9th'),(6,'Hussaini Kamarudeen ',7,8,10,25,57,82,'A1','6th'),(7,'John Ibrahim ',6,4,8,18,50,68,'B3','11th'),(8,'Ogbodo Brendan Chibueze',9,8,10,27,63,90,'A1','3rd'),(9,'Ogbu Kingsley ',9,7,10,26,65,91,'A1','2nd'),(10,'Yakubu Isah ',4,7,10,21,46,67,'B3','12th'),(11,'Anaeme Cynthia ',7,7,10,24,62,86,'A1','4th'),(12,'Eke Nkechinyere ',7,9,10,26,56,82,'A1','6th'),(13,'Geoffrey Jecinta ',5,7,10,22,48,70,'B2','10th'),(14,'Ogar Abiyei Faith',6,10,10,26,68,94,'A1','1st'),(15,'Nwankwo Nzubechukwu ',8,9,10,27,45,72,'B2','8th');
/*!40000 ALTER TABLE `ss2b_3rd_term_geography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_government`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_government`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_government` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `GOV_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_government`
--

LOCK TABLES `ss2b_3rd_term_government` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_government` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_government` VALUES (1,'Ahmed Abubakar ',6,7,8,21,25,46,'D7','4th'),(2,'Alison Vidro ',2,1,4,7,13,20,'F9','10th'),(3,'Dele Emmanuel ',4,1,8,13,28,41,'E8','6th'),(4,'Emmanuel Felix ',0,0,0,0,0,0,'','11th'),(5,'Okoro Emmanuel ',0,0,0,0,0,0,'','11th'),(6,'Hussaini Kamarudeen ',1,1,4,6,34,40,'E8','7th'),(7,'John Ibrahim ',3,1,4,8,13,21,'F9','9th'),(8,'Ogbodo Brendan Chibueze',10,10,8,28,55,83,'A1','1st'),(9,'Ogbu Kingsley ',0,0,0,0,0,0,'','11th'),(10,'Yakubu Isah ',5,1,4,10,21,31,'F9','8th'),(11,'Anaeme Cynthia ',0,0,0,0,0,0,'','11th'),(12,'Eke Nkechinyere ',10,8,8,26,48,74,'B2','2nd'),(13,'Geoffrey Jecinta ',7,7,8,22,35,57,'C5','3rd'),(14,'Ogar Abiyei Faith',0,0,0,0,0,0,'F9','11th'),(15,'Nwankwo Nzubechukwu ',4,8,8,20,24,44,'E8','5th');
/*!40000 ALTER TABLE `ss2b_3rd_term_government` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_literatureinenglish`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_literatureinenglish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_literatureinenglish` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `LIT_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_literatureinenglish`
--

LOCK TABLES `ss2b_3rd_term_literatureinenglish` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_literatureinenglish` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_literatureinenglish` VALUES (1,'Ahmed Abubakar ',5,6,7,18,34,52,'C6','7th'),(2,'Alison Vidro ',0,0,0,0,0,0,'','10th'),(3,'Dele Emmanuel ',6,6,8,20,32,52,'C6','7th'),(4,'Emmanuel Felix ',0,0,0,0,0,0,'','10th'),(5,'Okoro Emmanuel ',0,0,0,0,0,0,'','10th'),(6,'Hussaini Kamarudeen ',5,5,6,16,52,68,'B3','5th'),(7,'John Ibrahim ',4,4,6,14,32,46,'D7','9th'),(8,'Ogbodo Brendan Chibueze',8,8,10,26,59,85,'A1','2nd'),(9,'Ogbu Kingsley ',0,0,0,0,0,0,'','10th'),(10,'Yakubu Isah ',8,8,7,23,46,69,'B3','4th'),(11,'Anaeme Cynthia ',0,0,0,0,0,0,'','10th'),(12,'Eke Nkechinyere ',10,10,10,30,59,89,'A1','1st'),(13,'Geoffrey Jecinta ',9,9,10,28,39,67,'B3','6th'),(14,'Ogar Abiyei Faith',0,0,0,0,0,0,'','10th'),(15,'Nwankwo Nzubechukwu ',8,8,8,24,49,73,'B2','3rd');
/*!40000 ALTER TABLE `ss2b_3rd_term_literatureinenglish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_mathematics`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_mathematics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_mathematics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `MTH_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_mathematics`
--

LOCK TABLES `ss2b_3rd_term_mathematics` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_mathematics` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_mathematics` VALUES (1,'Ahmed Abubakar ',3,3,4,10,26,36,'F9','13th'),(2,'Alison Vidro ',3,6,0,9,35,44,'E8','9th'),(3,'Dele Emmanuel ',3,4,0,7,27,34,'F9','14th'),(4,'Emmanuel Felix ',6,6,4,16,45,61,'C4','3rd'),(5,'Okoro Emmanuel ',3,7,6,16,32,48,'D7','7th'),(6,'Hussaini Kamarudeen ',6,6,3,15,25,40,'E8','11th'),(7,'John Ibrahim ',2,4,4,10,27,37,'F9','12th'),(8,'Ogbodo Brendan Chibueze',6,7,6,19,41,60,'C4','4th'),(9,'Ogbu Kingsley ',6,6,6,18,41,59,'C5','5th'),(10,'Yakubu Isah ',4,0,4,8,26,34,'F9','14th'),(11,'Anaeme Cynthia ',6,6,8,20,51,71,'B2','1st'),(12,'Eke Nkechinyere ',7,5,8,20,30,50,'C6','6th'),(13,'Geoffrey Jecinta ',3,5,5,13,35,48,'D7','7th'),(14,'Ogar Abiyei Faith',6,7,7,20,44,64,'C4','2nd'),(15,'Nwankwo Nzubechukwu ',2,6,8,16,27,43,'E8','10th');
/*!40000 ALTER TABLE `ss2b_3rd_term_mathematics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term_physics`
--

DROP TABLE IF EXISTS `ss2b_3rd_term_physics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term_physics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ca1` double NOT NULL,
  `ca2` double NOT NULL,
  `ca3` double NOT NULL,
  `ca_total` double NOT NULL,
  `exam` double NOT NULL,
  `PHY_total` double NOT NULL,
  `grade` text NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term_physics`
--

LOCK TABLES `ss2b_3rd_term_physics` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term_physics` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term_physics` VALUES (1,'Ahmed Abubakar ',0,0,0,0,0,0,'','10th'),(2,'Alison Vidro ',0,0,0,0,0,0,'','10th'),(3,'Dele Emmanuel  ',0,0,0,0,0,0,'','10th'),(4,'Emmanuel Felix ',10,6,10,26,46,72,'B2','1st'),(5,'Okoro Emmanuel ',7,3,8,18,34,52,'C6','5th'),(6,'Hussaini Kamarudeen ',0,0,0,0,0,0,'','10th'),(7,'John Ibrahim ',0,0,0,0,0,0,'','10th'),(8,'Ogbodo Brendan Chibueze',0,0,0,0,0,0,'','10th'),(9,'Ogbu Kingsley ',8,5,10,23,48,71,'B2','2nd'),(10,'Yakubu Isah ',0,0,0,0,0,0,'','10th'),(11,'Anaeme Cynthia ',10,5,10,25,46,71,'B2','2nd'),(12,'Eke Nkechinyere ',0,0,0,0,0,0,'','10th'),(13,'Geoffrey Jecinta ',0,0,0,0,0,0,'','10th'),(14,'Ogar Abiyei Faith',10,7,10,27,43,70,'B2','4th'),(15,'Nwankwo Nzubechukwu ',0,0,0,0,0,0,'','10th');
/*!40000 ALTER TABLE `ss2b_3rd_term_physics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28 10:35:20
