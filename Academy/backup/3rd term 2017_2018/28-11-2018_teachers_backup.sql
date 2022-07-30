-- MySQL dump 10.13  Distrib 5.6.21, for Win32 (x86)
--
-- Host: localhost    Database: teachers
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
-- Table structure for table `jss1a_1st_term`
--

DROP TABLE IF EXISTS `jss1a_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_1st_term`
--

LOCK TABLES `jss1a_1st_term` WRITE;
/*!40000 ALTER TABLE `jss1a_1st_term` DISABLE KEYS */;
INSERT INTO `jss1a_1st_term` VALUES (1,'ADEBAYO EMMANUEL ','M','6,February,2006',0,0,'','',''),(2,'AMOS DAN ','M','3,September,2006',0,0,'','',''),(3,'DAVID WISDOM ','M','30,September,2007',0,0,'','',''),(4,'JACOB JEBLIGA ','M','6,June,2004',0,0,'','',''),(5,'FRIDAY HENRY EBUBE','M','6,February,2008',0,0,'','',''),(6,'JOSEPH JOHN ','M','16,December,2003',0,0,'','',''),(7,'LIVINUS VICTOR ','M','6,January,2006',0,0,'','',''),(8,'NWANKO ISAAC ','M','21,November,2006',0,0,'','',''),(9,'EZEKIEL IBRAHIM EPHRAIM','M','27,December,2006',0,0,'','',''),(10,'BABALOLA AGNESS BIDEMI','F','28,October,2007',0,0,'','',''),(11,'DILIBE IFUNANYA ROSE','F','1,September,2007',0,0,'','',''),(12,'GABRIEL BLESSING ','F','9,May,2007',0,0,'','',''),(13,'ONWA ANGEL MMESOMA','F','20,September,2006',0,0,'','',''),(14,'ONYEMA PASCHALINE ','F','21,July,2006',0,0,'','',''),(15,'ORJI PRECIOUS ','F','20,November,2005',0,0,'','',''),(17,'EJIKEME MARVELOUS ','F','29,December,2007',0,0,'','',''),(18,'ERNEST INUWA ','M','14,October,2006',0,0,'','','');
/*!40000 ALTER TABLE `jss1a_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_2nd_term`
--

DROP TABLE IF EXISTS `jss1a_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_2nd_term`
--

LOCK TABLES `jss1a_2nd_term` WRITE;
/*!40000 ALTER TABLE `jss1a_2nd_term` DISABLE KEYS */;
INSERT INTO `jss1a_2nd_term` VALUES (1,'ADEBAYO EMMANUEL ','M','6,February,2006',0,0,'','',''),(2,'AMOS DAN ','M','3,September,2006',0,0,'','',''),(3,'DAVID WISDOM ','M','30,September,2007',0,0,'','',''),(4,'JACOB JEBLIGA ','M','6,June,2004',0,0,'','',''),(5,'FRIDAY HENRY EBUBE','M','6,February,2008',0,0,'','',''),(6,'JOSEPH JOHN ','M','16,December,2003',0,0,'','',''),(7,'LIVINUS VICTOR ','M','6,January,2006',0,0,'','',''),(8,'NWANKO ISAAC ','M','21,November,2006',0,0,'','',''),(9,'EZEKIEL IBRAHIM EPHRAIM','M','27,December,2006',0,0,'','',''),(10,'BABALOLA AGNESS BIDEMI','F','28,October,2007',0,0,'','',''),(11,'DILIBE IFUNANYA ROSE','F','1,September,2007',0,0,'','',''),(12,'GABRIEL BLESSING ','F','9,May,2007',0,0,'','',''),(13,'ONWA ANGEL MMESOMA','F','20,September,2006',0,0,'','',''),(14,'ONYEMA PASCHALINE ','F','21,July,2006',0,0,'','',''),(15,'ORJI PRECIOUS ','F','20,November,2005',0,0,'','',''),(17,'EJIKEME MARVELOUS ','F','29,December,2007',0,0,'','',''),(18,'ERNEST INUWA ','M','14,October,2006',0,0,'','','');
/*!40000 ALTER TABLE `jss1a_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_3rd_term`
--

DROP TABLE IF EXISTS `jss1a_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `HEC_ca1` double NOT NULL,
  `HEC_ca2` double NOT NULL,
  `HEC_ca3` double NOT NULL,
  `HEC_ca_total` double NOT NULL,
  `HEC_exam` double NOT NULL,
  `Total_HEC` double NOT NULL,
  `HEC_grade` text NOT NULL,
  `HEC_pos` text NOT NULL,
  `MTH_ca1` double NOT NULL,
  `MTH_ca2` double NOT NULL,
  `MTH_ca3` double NOT NULL,
  `MTH_ca_total` double NOT NULL,
  `MTH_exam` double NOT NULL,
  `Total_MTH` double NOT NULL,
  `MTH_grade` text NOT NULL,
  `MTH_pos` text NOT NULL,
  `WOW_ca1` double NOT NULL,
  `WOW_ca2` double NOT NULL,
  `WOW_ca3` double NOT NULL,
  `WOW_ca_total` double NOT NULL,
  `WOW_exam` double NOT NULL,
  `Total_WOW` double NOT NULL,
  `WOW_grade` text NOT NULL,
  `WOW_pos` text NOT NULL,
  `STD_ca1` double NOT NULL,
  `STD_ca2` double NOT NULL,
  `STD_ca3` double NOT NULL,
  `STD_ca_total` double NOT NULL,
  `STD_exam` double NOT NULL,
  `Total_STD` double NOT NULL,
  `STD_grade` text NOT NULL,
  `STD_pos` text NOT NULL,
  `CRS_ca1` double NOT NULL,
  `CRS_ca2` double NOT NULL,
  `CRS_ca3` double NOT NULL,
  `CRS_ca_total` double NOT NULL,
  `CRS_exam` double NOT NULL,
  `Total_CRS` double NOT NULL,
  `CRS_grade` text NOT NULL,
  `CRS_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `CAT_ca1` double NOT NULL,
  `CAT_ca2` double NOT NULL,
  `CAT_ca3` double NOT NULL,
  `CAT_ca_total` double NOT NULL,
  `CAT_exam` double NOT NULL,
  `Total_CAT` double NOT NULL,
  `CAT_grade` text NOT NULL,
  `CAT_pos` text NOT NULL,
  `BSD_ca1` double NOT NULL,
  `BSD_ca2` double NOT NULL,
  `BSD_ca3` double NOT NULL,
  `BSD_ca_total` double NOT NULL,
  `BSD_exam` double NOT NULL,
  `Total_BSD` double NOT NULL,
  `BSD_grade` text NOT NULL,
  `BSD_pos` text NOT NULL,
  `ENG_ca1` double NOT NULL,
  `ENG_ca2` double NOT NULL,
  `ENG_ca3` double NOT NULL,
  `ENG_ca_total` double NOT NULL,
  `ENG_exam` double NOT NULL,
  `Total_ENG` double NOT NULL,
  `ENG_grade` text NOT NULL,
  `ENG_pos` text NOT NULL,
  `TDR_ca1` double NOT NULL,
  `TDR_ca2` double NOT NULL,
  `TDR_ca3` double NOT NULL,
  `TDR_ca_total` double NOT NULL,
  `TDR_exam` double NOT NULL,
  `Total_TDR` double NOT NULL,
  `TDR_grade` text NOT NULL,
  `TDR_pos` text NOT NULL,
  `CIV_ca1` double NOT NULL,
  `CIV_ca2` double NOT NULL,
  `CIV_ca3` double NOT NULL,
  `CIV_ca_total` double NOT NULL,
  `CIV_exam` double NOT NULL,
  `Total_CIV` double NOT NULL,
  `CIV_grade` text NOT NULL,
  `CIV_pos` text NOT NULL,
  `AGR_ca1` double NOT NULL,
  `AGR_ca2` double NOT NULL,
  `AGR_ca3` double NOT NULL,
  `AGR_ca_total` double NOT NULL,
  `AGR_exam` double NOT NULL,
  `Total_AGR` double NOT NULL,
  `AGR_grade` text NOT NULL,
  `AGR_pos` text NOT NULL,
  `BSC_ca1` double NOT NULL,
  `BSC_ca2` double NOT NULL,
  `BSC_ca3` double NOT NULL,
  `BSC_ca_total` double NOT NULL,
  `BSC_exam` double NOT NULL,
  `Total_BSC` double NOT NULL,
  `BSC_grade` text NOT NULL,
  `BSC_pos` text NOT NULL,
  `BTH_ca1` double NOT NULL,
  `BTH_ca2` double NOT NULL,
  `BTH_ca3` double NOT NULL,
  `BTH_ca_total` double NOT NULL,
  `BTH_exam` double NOT NULL,
  `Total_BTH` double NOT NULL,
  `BTH_grade` text NOT NULL,
  `BTH_pos` text NOT NULL,
  `PHE_ca1` double NOT NULL,
  `PHE_ca2` double NOT NULL,
  `PHE_ca3` double NOT NULL,
  `PHE_ca_total` double NOT NULL,
  `PHE_exam` double NOT NULL,
  `Total_PHE` double NOT NULL,
  `PHE_grade` text NOT NULL,
  `PHE_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_3rd_term`
--

LOCK TABLES `jss1a_3rd_term` WRITE;
/*!40000 ALTER TABLE `jss1a_3rd_term` DISABLE KEYS */;
INSERT INTO `jss1a_3rd_term` VALUES (1,'ADEBAYO EMMANUEL ','M','6,February,2006',5,6,7,18,52,70,'B2','3rd',1,1,6,8,31,39,'F9','6th',3,3,10,16,32,48,'D7','10th',10,10,7,27,57,84,'A1','4th',8,6,10,24,38,62,'C4','10th',6,1,5,12,48,60,'C4','10th',5,4,8,17,49,66,'B3','6th',7,9,8,24,45,69,'B3','6th',8,10,7,25,34,59,'C5','5th',2,2,5,9,40,49,'D7','4th',10,4,5,19,43,62,'C4','8th',9,8,3,20,55,75,'A1','3rd',7,6,10,23,52,75,'A1','10th',2,10,10,22,50,72,'B2','1st',7,5,10,22,50,72,'B2','7th',962,64.13,'6th','Good performance, but work harder on Mathematics and English Language!','A very good performance, you have the capacity to do better. Promoted to the next class!'),(2,'AMOS DAN ','M','3,September,2006',2,4,3,9,46,55,'C5','6th',1,1,7,9,31,40,'E8','5th',3,3,10,16,65,81,'A1','3rd',6,8,3,17,49,66,'B3','11th',8,8,10,26,47,73,'B2','4th',9,7,5,21,61,82,'A1','1st',2,0,0,2,32,34,'F9','16th',7,8,5,20,68,88,'A1','1st',6,9,7,22,35,57,'C5','8th',2,2,5,9,34,43,'E8','10th',1,8,5,14,60,74,'B2','6th',7,10,8,25,36,61,'C4','8th',10,10,5,25,58,83,'A1','6th',2,10,10,22,44,66,'B3','4th',9,2,7,18,50,68,'B3','8th',971,64.73,'5th','Good performance, but work harder on Mathematics and English Language!','A very good performance, you have the capacity to do better. Promoted to the next class!'),(3,'DAVID WISDOM ','M','30,September,2007',7,8,9,24,44,68,'B3','4th',8,7,9,24,52,76,'A1','1st',3,3,10,16,60,76,'A1','4th',8,10,7,25,61,86,'A1','3rd',8,10,10,28,49,77,'A1','3rd',3,2,5,10,51,61,'C4','8th',9,6,9,24,60,84,'A1','1st',9,8,8,25,53,78,'A1','3rd',8,6,7,21,40,61,'C4','4th',2,2,5,9,45,54,'C6','2nd',10,10,6,26,69,95,'A1','1st',7,10,10,27,57,84,'A1','1st',8,10,10,28,65,93,'A1','1st',2,10,10,22,50,72,'B2','1st',10,8,10,28,55,83,'A1','1st',1148,76.53,'1st','An excellent performance; keep it up!','An excellent result, keep it up! Promoted to the next class!'),(4,'JACOB JEBLIGA ','M','6,June,2004',1,1,1,3,22,25,'F9','16th',0,1,1,2,8,10,'F9','17th',3,3,10,16,10,26,'F9','17th',3,2,7,12,30,42,'E8','16th',10,1,8,19,20,39,'F9','16th',4,1,5,10,27,37,'F9','16th',2,1,7,10,23,33,'F9','17th',1,1,8,10,18,28,'F9','17th',2,1,5,8,8,16,'F9','17th',2,2,5,9,23,32,'F9','16th',7,1,5,13,32,45,'D7','13th',3,1,3,7,15,22,'F9','17th',3,2,2,7,23,30,'F9','17th',2,10,10,22,17,39,'F9','16th',3,2,8,13,20,33,'F9','17th',457,30.47,'17th','Poor performance, please sit up, you can do better t han this!','A poor performance, wake up from your slumber! Repeat JSS1!'),(5,'FRIDAY HENRY EBUBE','M','6,February,2008',7,6,9,22,52,74,'B2','2nd',3,3,8,14,35,49,'D7','3rd',3,3,10,16,57,73,'B2','5th',9,10,10,29,66,95,'A1','1st',9,10,10,29,51,80,'A1','2nd',9,1,8,18,63,81,'A1','2nd',8,6,9,23,52,75,'A1','3rd',9,8,5,22,58,80,'A1','2nd',9,6,7,22,43,65,'B3','2nd',2,2,5,9,40,49,'D7','4th',10,9,5,24,45,69,'B3','7th',9,10,10,29,53,82,'A1','2nd',10,10,10,30,63,93,'A1','1st',6,10,10,26,33,59,'C5','6th',10,4,10,24,52,76,'A1','5th',1100,73.33,'2nd','An excellent performance; keep it up!','An excellent result, keep it up! Promoted to the next class!'),(6,'JOSEPH JOHN ','M','16,December,2003',1,1,9,11,22,33,'F9','14th',1,2,8,11,16,27,'F9','11th',3,3,10,16,20,36,'F9','15th',5,5,9,19,49,68,'B3','9th',7,10,4,21,27,48,'D7','15th',3,1,8,12,51,63,'C4','6th',2,4,8,14,26,40,'E8','14th',3,4,8,15,21,36,'F9','16th',5,5,6,16,25,41,'E8','14th',2,2,5,9,39,48,'D7','6th',10,2,5,17,25,42,'E8','16th',5,4,10,19,25,44,'E8','14th',8,5,4,17,50,67,'B3','15th',2,10,10,22,25,47,'D7','11th',6,6,10,22,43,65,'B3','10th',705,47,'13th','Average result; improve on mathematics and english.','A fair performance; try harder. Promoted to the next class!'),(7,'LIVINUS VICTOR ','M','6,January,2006',5,6,9,20,44,64,'C4','5th',2,3,9,14,22,36,'F9','8th',3,3,10,16,70,86,'A1','1st',9,10,10,29,65,94,'A1','2nd',9,10,10,29,40,69,'B3','5th',9,7,8,24,52,76,'A1','3rd',3,7,9,19,46,65,'B3','7th',7,3,8,18,43,61,'C4','7th',9,8,7,24,39,63,'C4','3rd',2,2,5,9,44,53,'C6','3rd',10,5,9,24,52,76,'A1','4th',8,9,10,27,43,70,'B2','6th',10,10,10,30,56,86,'A1','3rd',2,10,10,22,37,59,'C5','6th',7,8,10,25,54,79,'A1','2nd',1037,69.13,'3rd','An excellent performance work on your mathematics; keep it up! ','An excellent result, keep it up! Promoted to the next class!'),(8,'NWANKO ISAAC ','M','21,November,2006',6,6,8,20,28,48,'D7','7th',0,4,8,12,17,29,'F9','10th',3,3,10,16,20,36,'F9','15th',8,10,6,24,52,76,'A1','6th',7,7,10,24,59,83,'A1','1st',4,1,8,13,51,64,'C4','4th',2,2,8,12,34,46,'D7','11th',5,4,8,17,40,57,'C5','8th',5,9,5,19,28,47,'D7','12th',2,2,5,9,32,41,'E8','11th',10,9,5,24,54,78,'A1','2nd',9,5,10,24,50,74,'B2','5th',7,5,6,18,57,75,'A1','10th',2,10,10,22,44,66,'B3','4th',9,5,10,24,53,77,'A1','4th',897,59.8,'9th','Good performance, but work harder on Mathematics and English Language!','A good result, but you can do better than this. Promoted to the next class!'),(9,'EZEKIEL IBRAHIM EPHRAIM','M','27,December,2006',1,1,2,4,26,30,'F9','15th',0,1,1,2,11,13,'F9','14th',3,3,10,16,25,41,'E8','14th',3,3,7,13,35,48,'D7','15th',8,4,10,22,38,60,'C4','12th',7,1,7,15,39,54,'C6','13th',2,4,3,9,33,42,'E8','13th',5,2,6,13,28,41,'E8','14th',5,3,5,13,24,37,'F9','15th',2,2,5,9,39,48,'D7','6th',1,4,5,10,36,46,'D7','10th',5,3,3,11,35,46,'D7','12th',5,8,7,20,55,75,'A1','10th',2,10,10,22,26,48,'D7','10th',7,8,10,25,48,73,'B2','6th',702,46.8,'14th','Average result; improve on the following subject(s): mathematics and english','A fair performance; try harder. Promoted to the next class!'),(10,'BABALOLA AGNESS BIDEMI','F','28,October,2007',6,7,3,16,32,48,'D7','7th',1,1,5,7,32,39,'F9','6th',3,3,10,16,47,63,'C4','7th',4,6,7,17,48,65,'B3','12th',5,6,10,21,29,50,'C6','14th',2,1,8,11,41,52,'C6','14th',2,2,8,12,34,46,'D7','11th',4,3,7,14,32,46,'D7','12th',5,1,7,13,29,42,'E8','13th',2,2,5,9,25,34,'F9','14th',1,4,5,10,36,46,'D7','10th',5,6,10,21,33,54,'C6','11th',3,4,6,13,55,68,'B3','13th',2,10,10,22,37,59,'C5','6th',7,5,10,22,41,63,'C4','11th',775,51.67,'11th','You tried in other subjects, but your score in Mathematics is poor! please improve','A good result; you can do better than this. Promoted to the next class!'),(11,'DILIBE IFUNANYA ROSE','F','1,September,2007',1,1,2,4,34,38,'F9','12th',3,2,1,6,21,27,'F9','11th',3,3,10,16,29,45,'D7','12th',6,10,3,19,52,71,'B2','7th',9,3,10,22,45,67,'B3','6th',5,1,5,11,50,61,'C4','8th',8,4,3,15,47,62,'C4','8th',7,1,5,13,43,56,'C5','9th',7,6,5,18,38,56,'C5','10th',2,2,5,9,25,34,'F9','14th',1,6,5,12,32,44,'E8','14th',3,10,10,23,40,63,'C4','7th',7,6,4,17,61,78,'A1','8th',2,10,10,22,25,47,'D7','11th',3,2,10,15,30,45,'D7','15th',794,52.93,'10th','You tried in other subjects, but your score in Mathematics is poor! work harder','A good result; you can do better than this. Promoted to the next class!'),(12,'GABRIEL BLESSING ','F','9,May,2007',5,6,1,12,26,38,'F9','12th',3,2,1,6,19,25,'F9','13th',3,3,10,16,27,43,'E8','13th',7,3,3,13,43,56,'C5','14th',9,3,10,22,32,54,'C6','13th',2,1,5,8,47,55,'C5','12th',2,2,7,11,26,37,'F9','15th',4,1,5,10,36,46,'D7','12th',7,8,6,21,38,59,'C5','5th',2,2,5,9,30,39,'F9','13th',1,7,5,13,27,40,'E8','17th',3,2,3,8,29,37,'F9','15th',5,6,9,20,48,68,'B3','13th',2,7,10,19,25,44,'E8','14th',6,7,8,21,37,58,'C5','12th',699,46.6,'15th','A very poor performance, pls sit up and play less','A fair performance; try harder. Promoted to the next class!'),(13,'ONWA ANGEL MMESOMA','F','20,September,2006',5,6,9,20,56,76,'A1','1st',3,6,9,18,23,41,'E8','4th',3,3,10,16,50,66,'B3','6th',5,9,6,20,61,81,'A1','5th',8,7,10,25,36,61,'C4','11th',4,3,8,15,47,62,'C4','7th',8,6,9,23,59,82,'A1','2nd',4,8,5,17,57,74,'B2','5th',8,9,7,24,43,67,'B3','1st',2,2,5,9,53,62,'C4','1st',10,6,5,21,38,59,'C5','9th',8,8,10,26,49,75,'A1','3rd',10,10,10,30,54,84,'A1','4th',5,0,10,15,29,44,'E8','14th',5,5,4,14,39,53,'C6','14th',987,65.8,'4th','An excellent result, but improve more. the sky is your limit','A very good performance, you have the capacity to do better. Promoted to the next class!'),(14,'ONYEMA PASCHALINE ','F','21,July,2006',1,1,1,3,36,39,'F9','10th',1,0,1,2,11,13,'F9','14th',3,3,10,16,30,46,'D7','11th',5,5,3,13,44,57,'C5','13th',9,10,7,26,38,64,'C4','9th',2,1,8,11,40,51,'C6','15th',2,6,3,11,40,51,'C6','9th',4,2,8,14,34,48,'D7','11th',5,8,5,18,33,51,'C6','11th',2,2,5,9,35,44,'E8','9th',1,4,5,10,33,43,'E8','15th',4,3,10,17,29,46,'D7','12th',5,5,4,14,58,72,'B2','12th',2,0,10,12,33,45,'D7','13th',7,9,4,20,45,65,'B3','10th',735,49,'12th','Average result; improve on the following subject(s): mathematics and english','A fair performance; try harder. Promoted to the next class!'),(15,'ORJI PRECIOUS ','F','20,November,2005',5,5,7,17,27,44,'E8','9th',6,2,6,14,15,29,'F9','10th',3,3,10,16,69,85,'A1','2nd',5,7,7,19,50,69,'B3','8th',9,4,10,23,42,65,'B3','8th',3,1,8,12,52,64,'C4','4th',2,4,3,9,61,70,'B2','5th',10,8,8,26,51,77,'A1','4th',6,7,7,20,38,58,'C5','7th',2,2,5,9,32,41,'E8','11th',10,10,5,25,52,77,'A1','3rd',7,4,10,21,39,60,'C4','9th',9,6,5,20,64,84,'A1','4th',2,0,10,12,47,59,'C5','6th',6,6,10,22,34,56,'C5','13th',938,62.53,'7th','Average result; improve next term play less and work hard','A very good performance, you have the capacity to do better. Promoted to the next class!'),(17,'EJIKEME MARVELOUS ','F','29,December,2007',5,6,1,12,27,39,'F9','10th',8,2,5,15,39,54,'C6','2nd',3,3,10,16,36,52,'C6','9th',8,7,4,19,48,67,'B3','10th',7,3,10,20,46,66,'B3','7th',4,3,7,14,42,56,'C5','11th',8,5,9,22,52,74,'B2','4th',7,8,5,20,33,53,'C6','10th',7,8,7,22,35,57,'C5','8th',2,2,5,9,39,48,'D7','6th',10,6,5,21,55,76,'A1','4th',5,9,10,24,33,57,'C5','10th',8,5,10,23,56,79,'A1','7th',2,10,10,22,47,69,'B3','3rd',7,7,10,24,55,79,'A1','2nd',926,61.73,'8th','Average result, you can do better  than this. please sit  up!','A very good performance, you have the capacity to do better. Promoted to the next class!'),(18,'ERNEST INUWA ','M','14,October,2006',1,1,8,10,12,22,'F9','17th',1,0,1,2,10,12,'F9','16th',3,3,10,16,44,60,'C4','8th',3,4,4,11,30,41,'E8','17th',5,5,10,20,19,39,'F9','16th',2,1,7,10,24,34,'F9','17th',6,5,8,19,28,47,'D7','10th',3,3,8,14,24,38,'F9','15th',8,3,5,16,21,37,'F9','15th',2,2,5,9,18,27,'F9','17th',10,1,5,16,30,46,'D7','10th',2,1,10,13,21,34,'F9','16th',2,5,4,11,28,39,'F9','16th',2,8,10,20,18,38,'F9','17th',5,3,10,18,18,36,'F9','16th',550,36.67,'16th','Poor performance, please sit up, you can do better t han this!','A poor performance, wake up from your slumber! Repeat JSS1!');
/*!40000 ALTER TABLE `jss1a_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_psycho_3rd_term`
--

DROP TABLE IF EXISTS `jss1a_psycho_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_psycho_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_psycho_3rd_term`
--

LOCK TABLES `jss1a_psycho_3rd_term` WRITE;
/*!40000 ALTER TABLE `jss1a_psycho_3rd_term` DISABLE KEYS */;
INSERT INTO `jss1a_psycho_3rd_term` VALUES (1,'ADEBAYO EMMANUEL ','A','C','C','C','B','A','B','C','C','B','C','A','B','B','C','C','B'),(2,'AMOS DAN ','C','C','B','C','C','B','C','C','C','C','B','C','B','B','B','B','B'),(3,'DAVID WISDOM ','B','B','B','C','B','B','B','B','B','B','C','B','B','B','B','B','B'),(4,'JACOB JEBLIGA ','C','C','C','D','D','C','C','C','C','C','B','C','C','C','C','B','C'),(5,'FRIDAY HENRY EBUBE','B','B','B','B','C','B','B','D','C','C','C','C','C','C','D','C','C'),(6,'JOSEPH JOHN ','C','C','C','C','C','C','B','B','B','B','B','B','B','B','C','C','C'),(7,'LIVINUS VICTOR ','B','A','B','B','C','C','C','B','B','B','B','B','B','B','C','C','C'),(8,'NWANKO ISAAC ','C','C','C','C','B','C','D','B','C','B','C','C','D','C','C','B','C'),(9,'EZEKIEL IBRAHIM EPHRAIM','B','B','C','D','C','C','C','C','B','C','C','C','D','C','C','C','C'),(10,'BABALOLA AGNESS BIDEMI','B','C','B','B','B','B','B','B','C','C','C','B','D','D','C','C','C'),(11,'DILIBE IFUNANYA ROSE','B','B','C','D','C','B','C','C','C','A','C','C','C','D','C','C','C'),(12,'GABRIEL BLESSING ','C','B','C','B','B','B','B','B','C','B','C','C','B','B','B','C','B'),(13,'ONWA ANGEL MMESOMA','B','B','B','B','B','B','C','C','C','B','B','C','C','C','C','B','B'),(14,'ONYEMA PASCHALINE ','C','D','D','D','D','C','C','D','C','C','C','D','D','C','A','C','C'),(15,'ORJI PRECIOUS ','B','B','C','C','C','C','C','C','C','B','C','C','B','D','C','B','C'),(16,'YAKUBU MERCY ','D','D','D','D','D','D','D','D','D','D','D','D','D','D','D','D','D'),(17,'EJIKEME MARVELOUS ','B','C','C','C','B','B','B','D','C','B','B','B','B','D','D','C','C'),(18,'ERNEST INUWA ','B','C','C','C','C','C','C','C','C','C','C','C','D','C','C','C','C');
/*!40000 ALTER TABLE `jss1a_psycho_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1a_subjects`
--

DROP TABLE IF EXISTS `jss1a_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1a_subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class` text NOT NULL,
  `subjects` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1a_subjects`
--

LOCK TABLES `jss1a_subjects` WRITE;
/*!40000 ALTER TABLE `jss1a_subjects` DISABLE KEYS */;
INSERT INTO `jss1a_subjects` VALUES (1,'JSS 1A','AGR,BSC,BSD,BTH,CAT,CIV,COS,CRS,ENG,HEC,MTH,PHE,STD,TDR,WOW');
/*!40000 ALTER TABLE `jss1a_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_1st_term`
--

DROP TABLE IF EXISTS `jss1b_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_1st_term`
--

LOCK TABLES `jss1b_1st_term` WRITE;
/*!40000 ALTER TABLE `jss1b_1st_term` DISABLE KEYS */;
INSERT INTO `jss1b_1st_term` VALUES (1,'AKPAN RIGHTEOUSNESS ','M','5,March,2005',0,0,'','',''),(2,'ALHASSAN ISTIFANUS ','M','1,June,2005',0,0,'','',''),(3,'CHUKWU CHRISTIAN ','M','4,October,2003',0,0,'','',''),(4,'EBERE CHINONSO ','M','1,August,2006',0,0,'','',''),(5,'EDISON AMSONOM ','M','10,October,2003',0,0,'','',''),(6,'JAMES  ENDURANCE ','M','25,June,2004',0,0,'','',''),(7,'LAZARUS IKECHUKWU ','M','28,August,2006',0,0,'','',''),(8,'MICHAEL VICTOR ','M','4,September,2005',0,0,'','',''),(9,'OGUEJIOFOR EBUKA ','M','6,October,2006',0,0,'','',''),(10,'RICHARD TIMOTHY ','M','3,March,2001',0,0,'','',''),(11,'YAKUBU REUBEN ','M','24,March,2006',0,0,'','',''),(12,'ISAAC MICHAEL ','M','14,September,2005',0,0,'','',''),(13,'ANEKE VICTORIA ','F','16,April,2008',0,0,'','',''),(14,'CHINWUBA EBUBE ','F','7,January,2008',0,0,'','',''),(15,'HASKAINU BILWA ','F','29,June,2006',0,0,'','',''),(16,'JACOB HANNATU ','F','24,May,2004',0,0,'','',''),(17,'NWOBI MARVELOUS IFUNANYA','F','5,October,2007',0,0,'','',''),(18,'OSUJI JUDITH CHINAZA','F','6,April,2006',0,0,'','',''),(19,'DOZIE REJOICE CHIAMAKA','F','15,October,2007',0,0,'','','');
/*!40000 ALTER TABLE `jss1b_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_2nd_term`
--

DROP TABLE IF EXISTS `jss1b_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_2nd_term`
--

LOCK TABLES `jss1b_2nd_term` WRITE;
/*!40000 ALTER TABLE `jss1b_2nd_term` DISABLE KEYS */;
INSERT INTO `jss1b_2nd_term` VALUES (1,'AKPAN RIGHTEOUSNESS ','M','5,March,2005',0,0,'','',''),(2,'ALHASSAN ISTIFANUS ','M','1,June,2005',0,0,'','',''),(3,'CHUKWU CHRISTIAN ','M','4,October,2003',0,0,'','',''),(4,'EBERE CHINONSO ','M','1,August,2006',0,0,'','',''),(5,'EDISON AMSONOM ','M','10,October,2003',0,0,'','',''),(6,'JAMES  ENDURANCE ','M','25,June,2004',0,0,'','',''),(7,'LAZARUS IKECHUKWU ','M','28,August,2006',0,0,'','',''),(8,'MICHAEL VICTOR ','M','4,September,2005',0,0,'','',''),(9,'OGUEJIOFOR EBUKA ','M','6,October,2006',0,0,'','',''),(10,'RICHARD TIMOTHY ','M','3,March,2001',0,0,'','',''),(11,'YAKUBU REUBEN ','M','24,March,2006',0,0,'','',''),(12,'ISAAC MICHAEL ','M','14,September,2005',0,0,'','',''),(13,'ANEKE VICTORIA ','F','16,April,2008',0,0,'','',''),(14,'CHINWUBA EBUBE ','F','7,January,2008',0,0,'','',''),(15,'HASKAINU BILWA ','F','29,June,2006',0,0,'','',''),(16,'JACOB HANNATU ','F','24,May,2004',0,0,'','',''),(17,'NWOBI MARVELOUS IFUNANYA','F','5,October,2007',0,0,'','',''),(18,'OSUJI JUDITH CHINAZA','F','6,April,2006',0,0,'','',''),(19,'DOZIE REJOICE CHIAMAKA','F','15,October,2007',0,0,'','','');
/*!40000 ALTER TABLE `jss1b_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_3rd_term`
--

DROP TABLE IF EXISTS `jss1b_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `HEC_ca1` double NOT NULL,
  `HEC_ca2` double NOT NULL,
  `HEC_ca3` double NOT NULL,
  `HEC_ca_total` double NOT NULL,
  `HEC_exam` double NOT NULL,
  `Total_HEC` double NOT NULL,
  `HEC_grade` text NOT NULL,
  `HEC_pos` text NOT NULL,
  `MTH_ca1` double NOT NULL,
  `MTH_ca2` double NOT NULL,
  `MTH_ca3` double NOT NULL,
  `MTH_ca_total` double NOT NULL,
  `MTH_exam` double NOT NULL,
  `Total_MTH` double NOT NULL,
  `MTH_grade` text NOT NULL,
  `MTH_pos` text NOT NULL,
  `TDR_ca1` double NOT NULL,
  `TDR_ca2` double NOT NULL,
  `TDR_ca3` double NOT NULL,
  `TDR_ca_total` double NOT NULL,
  `TDR_exam` double NOT NULL,
  `Total_TDR` double NOT NULL,
  `TDR_grade` text NOT NULL,
  `TDR_pos` text NOT NULL,
  `STD_ca1` double NOT NULL,
  `STD_ca2` double NOT NULL,
  `STD_ca3` double NOT NULL,
  `STD_ca_total` double NOT NULL,
  `STD_exam` double NOT NULL,
  `Total_STD` double NOT NULL,
  `STD_grade` text NOT NULL,
  `STD_pos` text NOT NULL,
  `CRS_ca1` double NOT NULL,
  `CRS_ca2` double NOT NULL,
  `CRS_ca3` double NOT NULL,
  `CRS_ca_total` double NOT NULL,
  `CRS_exam` double NOT NULL,
  `Total_CRS` double NOT NULL,
  `CRS_grade` text NOT NULL,
  `CRS_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `BSD_ca1` double NOT NULL,
  `BSD_ca2` double NOT NULL,
  `BSD_ca3` double NOT NULL,
  `BSD_ca_total` double NOT NULL,
  `BSD_exam` double NOT NULL,
  `Total_BSD` double NOT NULL,
  `BSD_grade` text NOT NULL,
  `BSD_pos` text NOT NULL,
  `ENG_ca1` double NOT NULL,
  `ENG_ca2` double NOT NULL,
  `ENG_ca3` double NOT NULL,
  `ENG_ca_total` double NOT NULL,
  `ENG_exam` double NOT NULL,
  `Total_ENG` double NOT NULL,
  `ENG_grade` text NOT NULL,
  `ENG_pos` text NOT NULL,
  `WOW_ca1` double NOT NULL,
  `WOW_ca2` double NOT NULL,
  `WOW_ca3` double NOT NULL,
  `WOW_ca_total` double NOT NULL,
  `WOW_exam` double NOT NULL,
  `Total_WOW` double NOT NULL,
  `WOW_grade` text NOT NULL,
  `WOW_pos` text NOT NULL,
  `CIV_ca1` double NOT NULL,
  `CIV_ca2` double NOT NULL,
  `CIV_ca3` double NOT NULL,
  `CIV_ca_total` double NOT NULL,
  `CIV_exam` double NOT NULL,
  `Total_CIV` double NOT NULL,
  `CIV_grade` text NOT NULL,
  `CIV_pos` text NOT NULL,
  `CAT_ca1` double NOT NULL,
  `CAT_ca2` double NOT NULL,
  `CAT_ca3` double NOT NULL,
  `CAT_ca_total` double NOT NULL,
  `CAT_exam` double NOT NULL,
  `Total_CAT` double NOT NULL,
  `CAT_grade` text NOT NULL,
  `CAT_pos` text NOT NULL,
  `AGR_ca1` double NOT NULL,
  `AGR_ca2` double NOT NULL,
  `AGR_ca3` double NOT NULL,
  `AGR_ca_total` double NOT NULL,
  `AGR_exam` double NOT NULL,
  `Total_AGR` double NOT NULL,
  `AGR_grade` text NOT NULL,
  `AGR_pos` text NOT NULL,
  `BSC_ca1` double NOT NULL,
  `BSC_ca2` double NOT NULL,
  `BSC_ca3` double NOT NULL,
  `BSC_ca_total` double NOT NULL,
  `BSC_exam` double NOT NULL,
  `Total_BSC` double NOT NULL,
  `BSC_grade` text NOT NULL,
  `BSC_pos` text NOT NULL,
  `PHE_ca1` double NOT NULL,
  `PHE_ca2` double NOT NULL,
  `PHE_ca3` double NOT NULL,
  `PHE_ca_total` double NOT NULL,
  `PHE_exam` double NOT NULL,
  `Total_PHE` double NOT NULL,
  `PHE_grade` text NOT NULL,
  `PHE_pos` text NOT NULL,
  `BTH_ca1` double NOT NULL,
  `BTH_ca2` double NOT NULL,
  `BTH_ca3` double NOT NULL,
  `BTH_ca_total` double NOT NULL,
  `BTH_exam` double NOT NULL,
  `Total_BTH` double NOT NULL,
  `BTH_grade` text NOT NULL,
  `BTH_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_3rd_term`
--

LOCK TABLES `jss1b_3rd_term` WRITE;
/*!40000 ALTER TABLE `jss1b_3rd_term` DISABLE KEYS */;
INSERT INTO `jss1b_3rd_term` VALUES (1,'AKPAN RIGHTEOUSNESS ','M','5,March,2005',7,8,9,24,52,76,'A1','1st',2,1,7,10,31,41,'E8','3rd',4,4,5,13,59,72,'B2','1st',6,10,9,25,58,83,'A1','4th',10,10,10,30,55,85,'A1','1st',6,1,8,15,48,63,'C4','5th',4,8,9,21,55,76,'A1','2nd',7,9,7,23,36,59,'C5','3rd',3,3,10,16,60,76,'A1','2nd',10,10,6,26,65,91,'A1','1st',7,10,9,26,62,88,'A1','1st',9,10,10,29,60,89,'A1','1st',3,10,10,23,53,76,'A1','7th',10,7,10,27,60,87,'A1','1st',2,10,0,12,60,72,'B2','1st',1134,75.6,'2nd','An excellent performance; but improve on mathematics!','An excellent result, keep it up! Promoted to the next class!'),(2,'ALHASSAN ISTIFANUS ','M','1,June,2005',4,5,6,15,28,43,'E8','6th',1,4,8,13,18,31,'F9','5th',2,2,5,9,40,49,'D7','6th',10,9,9,28,65,93,'A1','2nd',7,7,10,24,48,72,'B2','3rd',9,6,8,23,50,73,'B2','2nd',7,4,8,19,50,69,'B3','4th',7,6,7,20,34,54,'C6','6th',3,3,10,16,40,56,'C5','5th',10,9,5,24,54,78,'A1','4th',7,5,8,20,47,67,'B3','4th',8,9,10,27,45,72,'B2','2nd',8,9,10,27,60,87,'A1','4th',8,8,10,26,61,87,'A1','1st',2,0,10,12,49,61,'C4','3rd',992,66.13,'4th','A very good result, but improve on mathematics! ','A very good performance, you have the capacity to do better. Promoted to the next class!'),(3,'CHUKWU CHRISTIAN ','M','4,October,2003',1,1,7,9,14,23,'F9','17th',0,1,8,9,0,9,'F9','19th',2,2,5,9,30,39,'F9','14th',3,5,10,18,23,41,'E8','17th',7,3,10,20,26,46,'D7','12th',1,1,7,9,27,36,'F9','16th',2,0,8,10,25,35,'F9','13th',1,2,5,8,16,24,'F9','16th',3,3,10,16,11,27,'F9','16th',1,2,5,8,24,32,'F9','18th',2,1,8,11,28,39,'F9','14th',2,1,10,13,12,25,'F9','17th',3,2,5,10,0,10,'F9','19th',5,1,10,16,24,40,'E8','13th',0,10,10,20,15,35,'F9','13th',461,30.73,'17th','A very poor performance, pls sit up and play less','A poor performance, wake up from your slumber. Repeat JSS1'),(4,'EBERE CHINONSO ','M','1,August,2006',1,1,1,3,29,32,'F9','10th',3,0,6,9,14,23,'F9','12th',2,2,5,9,32,41,'E8','12th',9,3,6,18,38,56,'C5','11th',9,7,10,26,25,51,'C6','10th',5,1,5,11,38,49,'D7','9th',5,1,5,11,35,46,'D7','9th',5,5,5,15,19,34,'F9','13th',3,3,10,16,22,38,'F9','12th',10,5,5,20,30,50,'C6','10th',2,2,8,12,35,47,'D7','10th',3,3,10,16,24,40,'E8','13th',5,5,10,20,36,56,'C5','13th',7,5,10,22,38,60,'C4','9th',2,10,10,22,27,49,'D7','7th',672,44.8,'11th','An average perfomance, but you can do better than this. please work harder!','A fair performance; put in more effort! Promoted to the next class!'),(5,'EDISON AMSONOM ','M','10,October,2003',1,1,1,3,21,24,'F9','14th',1,0,1,2,10,12,'F9','17th',2,2,5,9,16,25,'F9','18th',3,8,10,21,20,41,'E8','17th',4,1,1,6,20,26,'F9','18th',1,1,5,7,24,31,'F9','18th',1,1,5,7,11,18,'F9','19th',1,2,5,8,15,23,'F9','18th',3,3,10,16,10,26,'F9','17th',1,1,5,7,25,32,'F9','18th',2,1,3,6,50,56,'C5','8th',3,1,3,7,15,22,'F9','18th',7,9,3,19,17,36,'F9','16th',7,3,4,14,21,35,'F9','16th',0,0,10,10,17,27,'F9','17th',434,28.93,'18th','A very poor performance, please sit up!','A very poor performance, wake up from your slumber. Repeat JSS1'),(6,'JAMES  ENDURANCE ','M','25,June,2004',1,1,1,3,39,42,'E8','7th',1,2,7,10,14,24,'F9','10th',2,2,5,9,34,43,'E8','11th',5,7,6,18,41,59,'C5','10th',7,5,10,22,41,63,'C4','5th',1,3,5,9,39,48,'D7','10th',8,3,8,19,28,47,'D7','8th',6,5,5,16,28,44,'E8','8th',3,3,10,16,23,39,'F9','11th',7,6,5,18,40,58,'C5','6th',2,3,3,8,50,58,'C5','7th',6,7,5,18,38,56,'C5','9th',7,5,6,18,47,65,'B3','8th',3,4,6,13,37,50,'C6','10th',2,0,10,12,20,32,'F9','16th',728,48.53,'9th','Average result; improve on mathematics and english.','A fair performance; try harder. Promoted to the next class!'),(7,'LAZARUS IKECHUKWU ','M','28,August,2006',1,1,7,9,13,22,'F9','18th',5,0,6,11,13,24,'F9','10th',2,2,5,9,21,30,'F9','16th',3,3,5,11,36,47,'D7','13th',8,1,10,19,22,41,'E8','13th',3,1,8,12,27,39,'F9','13th',5,0,7,12,26,38,'F9','12th',1,4,6,11,15,26,'F9','15th',3,3,10,16,16,32,'F9','15th',10,2,5,17,24,41,'E8','12th',2,2,8,12,21,33,'F9','17th',3,2,10,15,26,41,'E8','12th',3,1,5,9,34,43,'E8','15th',3,4,9,16,22,38,'F9','14th',2,10,10,22,14,36,'F9','12th',531,35.4,'15th','Poor performance, please sit up and play less!','A poor performance, wake up from your slumber. Repeat JSS1'),(8,'MICHAEL VICTOR ','M','4,September,2005',5,6,9,20,30,50,'C6','4th',3,4,6,13,27,40,'E8','4th',2,2,5,9,42,51,'C6','4th',5,10,10,25,54,79,'A1','5th',7,3,1,11,24,35,'F9','17th',3,1,5,9,24,33,'F9','17th',4,4,8,16,25,41,'E8','10th',2,3,6,11,24,35,'F9','11th',3,3,10,16,22,38,'F9','12th',10,9,5,24,30,54,'C6','7th',2,3,8,13,29,42,'E8','12th',9,8,10,27,31,58,'C5','6th',7,9,5,21,40,61,'C4','11th',4,8,10,22,40,62,'C4','7th',2,10,10,22,31,53,'C6','6th',732,48.8,'8th','Average result, you can do better  than this. please sit  up!','A fair performance; try harder. Promoted to the next class!'),(9,'OGUEJIOFOR EBUKA ','M','6,October,2006',8,7,8,23,37,60,'C4','3rd',0,2,8,10,7,17,'F9','14th',2,2,5,9,41,50,'C6','5th',8,6,7,21,54,75,'A1','6th',8,4,10,22,41,63,'C4','5th',5,1,8,14,56,70,'B2','3rd',5,5,9,19,39,58,'C5','6th',6,9,5,20,34,54,'C6','6th',3,3,10,16,56,72,'B2','3rd',10,4,5,19,34,53,'C6','8th',6,6,8,20,47,67,'B3','4th',6,8,10,24,37,61,'C4','5th',9,8,4,21,61,82,'A1','5th',10,8,10,28,44,72,'B2','5th',2,10,10,22,33,55,'C5','5th',909,60.6,'5th','A very good performance, but work harder on Mathematics.','A very good performance, you have the capacity to do better. Promoted to the next class!'),(10,'RICHARD TIMOTHY ','M','3,March,2001',1,1,1,3,7,10,'F9','19th',1,0,1,2,8,10,'F9','18th',2,2,5,9,18,27,'F9','17th',5,5,5,15,20,35,'F9','19th',1,1,6,8,10,18,'F9','19th',1,1,5,7,14,21,'F9','19th',1,1,5,7,13,20,'F9','18th',1,2,5,8,12,20,'F9','19th',3,3,10,16,6,22,'F9','18th',7,1,5,13,24,37,'F9','16th',2,1,3,6,11,17,'F9','19th',1,1,4,6,5,11,'F9','19th',3,1,4,8,9,17,'F9','18th',1,1,8,10,15,25,'F9','19th',0,0,10,10,12,22,'F9','19th',312,20.8,'19th','A very poor performance, pls sit up and play less','A very poor performance, wake up from your slumber. Repeat JSS1'),(11,'YAKUBU REUBEN ','M','24,March,2006',1,1,6,8,16,24,'F9','14th',1,4,5,10,20,30,'F9','6th',2,2,5,9,26,35,'F9','15th',5,5,5,15,30,45,'D7','15th',5,3,1,9,29,38,'F9','15th',1,1,5,7,32,39,'F9','13th',2,1,7,10,22,32,'F9','15th',2,2,5,9,20,29,'F9','14th',3,3,10,16,17,33,'F9','14th',1,5,5,11,23,34,'F9','17th',2,2,7,11,28,39,'F9','14th',2,2,10,14,20,34,'F9','14th',1,3,10,14,17,31,'F9','17th',2,3,10,15,18,33,'F9','18th',2,0,10,12,15,27,'F9','17th',503,33.53,'16th','A very poor performance, pls sit up and play less','A poor performance, wake up from your slumber. Repeat JSS1'),(12,'ISAAC MICHAEL ','M','14,September,2005',1,1,1,3,21,24,'F9','14th',0,1,1,2,22,24,'F9','10th',2,2,5,9,39,48,'D7','7th',3,3,5,11,31,42,'E8','16th',8,3,10,21,20,41,'E8','13th',2,1,8,11,37,48,'D7','10th',3,0,5,8,24,32,'F9','15th',1,2,5,8,16,24,'F9','16th',3,3,10,16,1,17,'F9','19th',10,1,5,16,25,41,'E8','12th',2,3,7,12,29,41,'E8','13th',4,3,10,17,9,26,'F9','16th',3,4,6,13,40,53,'C6','14th',7,3,7,17,19,36,'F9','15th',2,8,10,20,21,41,'E8','11th',538,35.87,'14th','A very poor performance, pls sit up and play less','A poor performance, wake up from your slumber. Repeat JSS1'),(13,'ANEKE VICTORIA ','F','16,April,2008',2,3,1,6,22,28,'F9','12th',0,1,1,2,11,13,'F9','16th',2,2,5,9,16,25,'F9','18th',5,4,3,12,38,50,'C6','12th',9,6,10,25,34,59,'C5','9th',4,1,5,10,35,45,'D7','12th',5,1,5,11,23,34,'F9','14th',4,6,5,15,28,43,'E8','10th',3,3,10,16,24,40,'E8','10th',1,6,5,12,29,41,'E8','12th',2,5,3,10,29,39,'F9','14th',6,5,10,21,34,55,'C5','10th',5,5,3,13,50,63,'C4','9th',6,2,4,12,22,34,'F9','17th',2,0,10,12,21,33,'F9','15th',602,40.13,'12th','An average performance,but you can do better than this!','A fair performance; wake up and try harder. Promoted to the next class!'),(14,'CHINWUBA EBUBE ','F','7,January,2008',5,6,8,19,25,44,'E8','5th',5,1,7,13,17,30,'F9','6th',2,2,5,9,54,63,'C4','2nd',8,10,7,25,62,87,'A1','3rd',8,7,10,25,38,63,'C4','5th',7,1,8,16,54,70,'B2','3rd',7,7,9,23,48,71,'B2','3rd',8,6,7,21,40,61,'C4','2nd',3,3,10,16,64,80,'A1','1st',10,10,5,25,64,89,'A1','3rd',6,7,9,22,56,78,'A1','3rd',6,10,10,26,37,63,'C4','4th',10,10,7,27,64,91,'A1','2nd',9,6,10,25,47,72,'B2','5th',2,0,10,12,34,46,'D7','10th',1008,67.2,'3rd','A very good result, but improve on mathematics! well done','An excellent result, keep it up! Promoted to the next class!'),(15,'HASKAINU BILWA ','F','29,June,2006',7,6,7,20,22,42,'E8','7th',1,6,9,16,33,49,'D7','2nd',2,2,5,9,38,47,'D7','8th',6,7,8,21,54,75,'A1','6th',9,6,10,25,44,69,'B3','4th',4,1,8,13,47,60,'C4','6th',5,4,8,17,31,48,'D7','7th',9,3,7,19,40,59,'C5','3rd',3,3,10,16,34,50,'C6','7th',10,6,5,21,31,52,'C6','9th',9,3,8,20,44,64,'C4','6th',5,2,10,17,30,47,'D7','11th',7,4,10,21,57,78,'A1','6th',10,9,10,29,47,76,'A1','4th',2,10,10,22,38,60,'C4','4th',876,58.4,'6th','Good performance, but you can do better, please work harder!','A good result; you can do better than this. Promoted to the next class'),(16,'JACOB HANNATU ','F','24,May,2004',5,6,7,18,19,37,'F9','9th',2,0,7,9,13,22,'F9','13th',5,5,5,15,29,44,'E8','10th',5,7,6,18,43,61,'C4','9th',7,2,10,19,31,50,'C6','11th',2,1,8,11,39,50,'C6','7th',3,1,8,12,28,40,'E8','11th',5,2,5,12,31,43,'E8','10th',3,3,10,16,26,42,'E8','8th',7,9,5,21,45,66,'B3','5th',2,3,8,13,42,55,'C5','9th',7,4,10,21,37,58,'C5','6th',3,5,10,18,44,62,'C4','10th',7,5,10,22,27,49,'D7','11th',2,10,10,22,24,46,'D7','10th',725,48.33,'10th','Average result; but you can do better! ','A fair performance; try harder. Promoted to the next class!'),(17,'NWOBI MARVELOUS IFUNANYA','F','5,October,2007',8,7,9,24,50,74,'B2','2nd',5,2,9,16,43,59,'C5','1st',4,4,5,13,42,55,'C5','3rd',9,10,10,29,68,97,'A1','1st',10,10,10,30,50,80,'A1','2nd',10,3,8,21,53,74,'B2','1st',7,9,9,25,58,83,'A1','1st',10,10,7,27,49,76,'A1','1st',7,7,10,24,42,66,'B3','4th',10,10,5,25,65,90,'A1','2nd',7,7,9,23,60,83,'A1','2nd',5,10,10,25,42,67,'B3','3rd',10,10,10,30,66,96,'A1','1st',9,8,10,27,57,84,'A1','3rd',2,10,10,22,45,67,'B3','2nd',1151,76.73,'1st','An excellent performance; keep it up!','An excellent result, keep it up! Promoted to the next class!'),(18,'OSUJI JUDITH CHINAZA','F','6,April,2006',6,5,1,12,16,28,'F9','12th',0,1,1,2,13,15,'F9','15th',2,2,5,9,31,40,'E8','13th',5,5,5,15,31,46,'D7','14th',1,4,10,15,22,37,'F9','16th',1,1,8,10,29,39,'F9','13th',1,1,8,10,21,31,'F9','17th',2,5,5,12,23,35,'F9','11th',3,3,10,16,25,41,'E8','9th',7,7,5,19,25,44,'E8','11th',2,2,3,7,16,23,'F9','18th',4,4,3,11,19,30,'F9','15th',5,5,10,20,38,58,'C5','12th',7,5,10,22,22,44,'E8','12th',0,7,10,17,18,35,'F9','13th',546,36.4,'13th','A very poor performance, pls sit up and play less','A poor performance, wake up from your slumber! Repeat JSS1!'),(19,'DOZIE REJOICE CHIAMAKA','F','15,October,2007',1,1,2,4,27,31,'F9','11th',1,4,1,6,21,27,'F9','8th',3,5,5,13,34,47,'D7','8th',8,8,3,19,51,70,'B2','8th',8,8,10,26,35,61,'C4','8th',8,1,5,14,36,50,'C6','7th',4,6,8,18,46,64,'C4','5th',4,10,5,19,37,56,'C5','5th',3,3,10,16,39,55,'C5','6th',1,5,5,11,30,41,'E8','12th',2,2,3,7,39,46,'D7','11th',3,9,10,22,35,57,'C5','8th',5,8,10,23,65,88,'A1','3rd',10,8,8,26,36,62,'C4','7th',2,10,10,22,24,46,'D7','10th',801,53.4,'7th','Good performance, but work harder, especially on mathematics.','A good result, but you can do better than this. Promoted to the next class!');
/*!40000 ALTER TABLE `jss1b_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_psycho_1st_term`
--

DROP TABLE IF EXISTS `jss1b_psycho_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_psycho_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_psycho_1st_term`
--

LOCK TABLES `jss1b_psycho_1st_term` WRITE;
/*!40000 ALTER TABLE `jss1b_psycho_1st_term` DISABLE KEYS */;
INSERT INTO `jss1b_psycho_1st_term` VALUES (1,'AKPAN RIGHTEOUSNESS ','','','','','','','','','','','','','','','','',''),(2,'ALHASSAN ISTIFANUS ','','','','','','','','','','','','','','','','',''),(3,'CHUKWU CHRISTIAN ','','','','','','','','','','','','','','','','',''),(4,'EBERE CHINONSO ','','','','','','','','','','','','','','','','',''),(5,'EDISON AMSONOM ','','','','','','','','','','','','','','','','',''),(6,'JAMES  ENDURANCE ','','','','','','','','','','','','','','','','',''),(7,'LAZARUS IKECHUKWU ','','','','','','','','','','','','','','','','',''),(8,'MICHAEL VICTOR ','','','','','','','','','','','','','','','','',''),(9,'OGUEJIOFOR EBUKA ','','','','','','','','','','','','','','','','',''),(10,'RICHARD TIMOTHY ','','','','','','','','','','','','','','','','',''),(11,'YAKUBU REUBEN ','','','','','','','','','','','','','','','','',''),(12,'ISAAC MICHAEL ','','','','','','','','','','','','','','','','',''),(13,'ANEKE VICTORIA ','','','','','','','','','','','','','','','','',''),(14,'CHINWUBA EBUBE ','','','','','','','','','','','','','','','','',''),(15,'HASKAINU BILWA ','','','','','','','','','','','','','','','','',''),(16,'JACOB HANNATU ','','','','','','','','','','','','','','','','',''),(17,'NWOBI MARVELOUS IFUNANYA','','','','','','','','','','','','','','','','',''),(18,'OSUJI JUDITH CHINAZA','','','','','','','','','','','','','','','','',''),(19,'DOZIE REJOICE CHIAMAKA','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `jss1b_psycho_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_psycho_2nd_term`
--

DROP TABLE IF EXISTS `jss1b_psycho_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_psycho_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_psycho_2nd_term`
--

LOCK TABLES `jss1b_psycho_2nd_term` WRITE;
/*!40000 ALTER TABLE `jss1b_psycho_2nd_term` DISABLE KEYS */;
INSERT INTO `jss1b_psycho_2nd_term` VALUES (1,'AKPAN RIGHTEOUSNESS ','','','','','','','','','','','','','','','','',''),(2,'ALHASSAN ISTIFANUS ','','','','','','','','','','','','','','','','',''),(3,'CHUKWU CHRISTIAN ','','','','','','','','','','','','','','','','',''),(4,'EBERE CHINONSO ','','','','','','','','','','','','','','','','',''),(5,'EDISON AMSONOM ','','','','','','','','','','','','','','','','',''),(6,'JAMES  ENDURANCE ','','','','','','','','','','','','','','','','',''),(7,'LAZARUS IKECHUKWU ','','','','','','','','','','','','','','','','',''),(8,'MICHAEL VICTOR ','','','','','','','','','','','','','','','','',''),(9,'OGUEJIOFOR EBUKA ','','','','','','','','','','','','','','','','',''),(10,'RICHARD TIMOTHY ','','','','','','','','','','','','','','','','',''),(11,'YAKUBU REUBEN ','','','','','','','','','','','','','','','','',''),(12,'ISAAC MICHAEL ','','','','','','','','','','','','','','','','',''),(13,'ANEKE VICTORIA ','','','','','','','','','','','','','','','','',''),(14,'CHINWUBA EBUBE ','','','','','','','','','','','','','','','','',''),(15,'HASKAINU BILWA ','','','','','','','','','','','','','','','','',''),(16,'JACOB HANNATU ','','','','','','','','','','','','','','','','',''),(17,'NWOBI MARVELOUS IFUNANYA','','','','','','','','','','','','','','','','',''),(18,'OSUJI JUDITH CHINAZA','','','','','','','','','','','','','','','','',''),(19,'DOZIE REJOICE CHIAMAKA','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `jss1b_psycho_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_psycho_3rd_term`
--

DROP TABLE IF EXISTS `jss1b_psycho_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_psycho_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_psycho_3rd_term`
--

LOCK TABLES `jss1b_psycho_3rd_term` WRITE;
/*!40000 ALTER TABLE `jss1b_psycho_3rd_term` DISABLE KEYS */;
INSERT INTO `jss1b_psycho_3rd_term` VALUES (1,'AKPAN RIGHTEOUSNESS ','C','C','B','C','C','B','A','C','C','C','C','C','C','C','C','C','C'),(2,'ALHASSAN ISTIFANUS ','C','C','C','C','C','B','A','C','C','C','C','C','C','C','C','C','C'),(3,'CHUKWU CHRISTIAN ','C','C','C','C','C','B','C','B','C','C','C','C','C','C','C','C','C'),(4,'EBERE CHINONSO ','C','C','C','C','C','B','A','C','C','C','C','C','C','C','C','C','C'),(5,'EDISON AMSONOM ','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C'),(6,'JAMES  ENDURANCE ','C','C','C','C','C','C','B','C','C','C','C','C','C','C','C','C','C'),(7,'LAZARUS IKECHUKWU ','C','C','C','C','C','B','B','C','C','C','C','C','C','C','C','C','C'),(8,'MICHAEL VICTOR ','C','C','C','C','C','B','B','C','C','C','C','C','C','C','C','C','C'),(9,'OGUEJIOFOR EBUKA ','C','C','B','C','C','B','B','B','C','C','C','C','C','C','C','C','C'),(10,'RICHARD TIMOTHY ','C','C','C','C','C','C','C','C','D','C','C','C','C','C','C','C','C'),(11,'YAKUBU REUBEN ','C','C','D','C','C','B','B','B','C','C','D','C','C','C','C','C','C'),(12,'ISAAC MICHAEL ','C','C','C','C','C','C','C','C','C','C','D','C','C','C','C','C','C'),(13,'ANEKE VICTORIA ','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C','C'),(14,'CHINWUBA EBUBE ','C','C','B','C','C','C','B','C','B','C','B','C','C','C','C','C','C'),(15,'HASKAINU BILWA ','C','C','B','C','C','B','B','C','C','C','C','C','C','C','C','C','C'),(16,'JACOB HANNATU ','C','C','C','C','C','B','C','C','C','C','C','C','C','C','C','C','C'),(17,'NWOBI MARVELOUS IFUNANYA','C','C','B','C','C','B','B','B','B','C','C','B','B','C','C','C','C'),(18,'OSUJI JUDITH CHINAZA','C','C','C','C','C','C','C','B','C','C','D','C','C','C','C','C','C'),(19,'DOZIE REJOICE CHIAMAKA','C','C','C','C','C','B','B','C','C','C','C','C','C','C','C','C','C');
/*!40000 ALTER TABLE `jss1b_psycho_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss1b_subjects`
--

DROP TABLE IF EXISTS `jss1b_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss1b_subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class` text NOT NULL,
  `subjects` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss1b_subjects`
--

LOCK TABLES `jss1b_subjects` WRITE;
/*!40000 ALTER TABLE `jss1b_subjects` DISABLE KEYS */;
INSERT INTO `jss1b_subjects` VALUES (1,'JSS 1B','AGR,BSC,BTH,BSD,CRS,CIV,COS,CAT,ENG,HEC,MTH,PHE,STD,TDR,WOW');
/*!40000 ALTER TABLE `jss1b_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_1st_term`
--

DROP TABLE IF EXISTS `jss2a_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_1st_term`
--

LOCK TABLES `jss2a_1st_term` WRITE;
/*!40000 ALTER TABLE `jss2a_1st_term` DISABLE KEYS */;
INSERT INTO `jss2a_1st_term` VALUES (1,'Jeremiah Abigail ','F','30,September,2006',0,0,'','',''),(2,'Benneth Joy N.','F','8,April,2007',0,0,'','',''),(3,'Okwundu Sarah Ifunaya','F','11,June,2005',0,0,'','',''),(4,'Owah Chinedu ','M','20,February,2004',0,0,'','',''),(5,'Oguejiofor Chinenye ','F','17,July,2004',0,0,'','',''),(6,'Daniel Miracle  ','M','6,November,2004',0,0,'','',''),(7,'Mathew Mary B.','F','28,December,2005',0,0,'','',''),(8,'Daniel Dorcas ','F','7,September,2005',0,0,'','',''),(9,'Nnagbo Somtochukwu ','M','26,June,2006',0,0,'','',''),(10,'Hickson Tuyelshibeh ','F','7,February,2006',0,0,'','',''),(11,'Imoh Emmanuel  ','M','13,December,2004',0,0,'','',''),(12,'Ohis Joseph ','M','30,October,2006',0,0,'','',''),(13,'Ngwan Dokrit ','M','28,February,2005',0,0,'','',''),(14,'Aniebona Goodluck ','M','22,July,2006',0,0,'','',''),(15,'Peter Jessica M.','F','29,October,2006',0,0,'','',''),(16,'Agbo Hillary ','M','25,June,2002',0,0,'','',''),(17,'Andrew Innocent  ','M','1,January,2005',0,0,'','',''),(18,'Godgift Joseph ','F','1,January,2004',0,0,'','',''),(19,'Odion Perpetua ','F','1,January,2004',0,0,'','',''),(20,'Orji Faith ','F','1,March,2004',0,0,'','','');
/*!40000 ALTER TABLE `jss2a_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_2nd_term`
--

DROP TABLE IF EXISTS `jss2a_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_2nd_term`
--

LOCK TABLES `jss2a_2nd_term` WRITE;
/*!40000 ALTER TABLE `jss2a_2nd_term` DISABLE KEYS */;
INSERT INTO `jss2a_2nd_term` VALUES (1,'Jeremiah Abigail ','F','30,September,2006',0,0,'','',''),(2,'Benneth Joy N.','F','8,April,2007',0,0,'','',''),(3,'Okwundu Sarah Ifunaya','F','11,June,2005',0,0,'','',''),(4,'Owah Chinedu ','M','20,February,2004',0,0,'','',''),(5,'Oguejiofor Chinenye ','F','17,July,2004',0,0,'','',''),(6,'Daniel Miracle  ','M','6,November,2004',0,0,'','',''),(7,'Mathew Mary B.','F','28,December,2005',0,0,'','',''),(8,'Daniel Dorcas ','F','7,September,2005',0,0,'','',''),(9,'Nnagbo Somtochukwu ','M','26,June,2006',0,0,'','',''),(10,'Hickson Tuyelshibeh ','F','7,February,2006',0,0,'','',''),(11,'Imoh Emmanuel  ','M','13,December,2004',0,0,'','',''),(12,'Ohis Joseph ','M','30,October,2006',0,0,'','',''),(13,'Ngwan Dokrit ','M','28,February,2005',0,0,'','',''),(14,'Aniebona Goodluck ','M','22,July,2006',0,0,'','',''),(15,'Peter Jessica M.','F','29,October,2006',0,0,'','',''),(16,'Agbo Hillary ','M','25,June,2002',0,0,'','',''),(17,'Andrew Innocent  ','M','1,January,2005',0,0,'','',''),(18,'Godgift Joseph ','F','1,January,2004',0,0,'','',''),(19,'Odion Perpetua ','F','1,January,2004',0,0,'','',''),(20,'Orji Faith ','F','1,March,2004',0,0,'','','');
/*!40000 ALTER TABLE `jss2a_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_3rd_term`
--

DROP TABLE IF EXISTS `jss2a_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `HEC_ca1` double NOT NULL,
  `HEC_ca2` double NOT NULL,
  `HEC_ca3` double NOT NULL,
  `HEC_ca_total` double NOT NULL,
  `HEC_exam` double NOT NULL,
  `Total_HEC` double NOT NULL,
  `HEC_grade` text NOT NULL,
  `HEC_pos` text NOT NULL,
  `MTH_ca1` double NOT NULL,
  `MTH_ca2` double NOT NULL,
  `MTH_ca3` double NOT NULL,
  `MTH_ca_total` double NOT NULL,
  `MTH_exam` double NOT NULL,
  `Total_MTH` double NOT NULL,
  `MTH_grade` text NOT NULL,
  `MTH_pos` text NOT NULL,
  `BTH_ca1` double NOT NULL,
  `BTH_ca2` double NOT NULL,
  `BTH_ca3` double NOT NULL,
  `BTH_ca_total` double NOT NULL,
  `BTH_exam` double NOT NULL,
  `Total_BTH` double NOT NULL,
  `BTH_grade` text NOT NULL,
  `BTH_pos` text NOT NULL,
  `PHE_ca1` double NOT NULL,
  `PHE_ca2` double NOT NULL,
  `PHE_ca3` double NOT NULL,
  `PHE_ca_total` double NOT NULL,
  `PHE_exam` double NOT NULL,
  `Total_PHE` double NOT NULL,
  `PHE_grade` text NOT NULL,
  `PHE_pos` text NOT NULL,
  `WOW_ca1` double NOT NULL,
  `WOW_ca2` double NOT NULL,
  `WOW_ca3` double NOT NULL,
  `WOW_ca_total` double NOT NULL,
  `WOW_exam` double NOT NULL,
  `Total_WOW` double NOT NULL,
  `WOW_grade` text NOT NULL,
  `WOW_pos` text NOT NULL,
  `TDR_ca1` double NOT NULL,
  `TDR_ca2` double NOT NULL,
  `TDR_ca3` double NOT NULL,
  `TDR_ca_total` double NOT NULL,
  `TDR_exam` double NOT NULL,
  `Total_TDR` double NOT NULL,
  `TDR_grade` text NOT NULL,
  `TDR_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `BSD_ca1` double NOT NULL,
  `BSD_ca2` double NOT NULL,
  `BSD_ca3` double NOT NULL,
  `BSD_ca_total` double NOT NULL,
  `BSD_exam` double NOT NULL,
  `Total_BSD` double NOT NULL,
  `BSD_grade` text NOT NULL,
  `BSD_pos` text NOT NULL,
  `CAT_ca1` double NOT NULL,
  `CAT_ca2` double NOT NULL,
  `CAT_ca3` double NOT NULL,
  `CAT_ca_total` double NOT NULL,
  `CAT_exam` double NOT NULL,
  `Total_CAT` double NOT NULL,
  `CAT_grade` text NOT NULL,
  `CAT_pos` text NOT NULL,
  `STD_ca1` double NOT NULL,
  `STD_ca2` double NOT NULL,
  `STD_ca3` double NOT NULL,
  `STD_ca_total` double NOT NULL,
  `STD_exam` double NOT NULL,
  `Total_STD` double NOT NULL,
  `STD_grade` text NOT NULL,
  `STD_pos` text NOT NULL,
  `ENG_ca1` double NOT NULL,
  `ENG_ca2` double NOT NULL,
  `ENG_ca3` double NOT NULL,
  `ENG_ca_total` double NOT NULL,
  `ENG_exam` double NOT NULL,
  `Total_ENG` double NOT NULL,
  `ENG_grade` text NOT NULL,
  `ENG_pos` text NOT NULL,
  `AGR_ca1` double NOT NULL,
  `AGR_ca2` double NOT NULL,
  `AGR_ca3` double NOT NULL,
  `AGR_ca_total` double NOT NULL,
  `AGR_exam` double NOT NULL,
  `Total_AGR` double NOT NULL,
  `AGR_grade` text NOT NULL,
  `AGR_pos` text NOT NULL,
  `BSC_ca1` double NOT NULL,
  `BSC_ca2` double NOT NULL,
  `BSC_ca3` double NOT NULL,
  `BSC_ca_total` double NOT NULL,
  `BSC_exam` double NOT NULL,
  `Total_BSC` double NOT NULL,
  `BSC_grade` text NOT NULL,
  `BSC_pos` text NOT NULL,
  `CRS_ca1` double NOT NULL,
  `CRS_ca2` double NOT NULL,
  `CRS_ca3` double NOT NULL,
  `CRS_ca_total` double NOT NULL,
  `CRS_exam` double NOT NULL,
  `Total_CRS` double NOT NULL,
  `CRS_grade` text NOT NULL,
  `CRS_pos` text NOT NULL,
  `CIV_ca1` double NOT NULL,
  `CIV_ca2` double NOT NULL,
  `CIV_ca3` double NOT NULL,
  `CIV_ca_total` double NOT NULL,
  `CIV_exam` double NOT NULL,
  `Total_CIV` double NOT NULL,
  `CIV_grade` text NOT NULL,
  `CIV_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_3rd_term`
--

LOCK TABLES `jss2a_3rd_term` WRITE;
/*!40000 ALTER TABLE `jss2a_3rd_term` DISABLE KEYS */;
INSERT INTO `jss2a_3rd_term` VALUES (1,'Jeremiah Abigail ','F','30,September,2006',4,10,5,19,49,68,'B3','10th',5,3,9,17,26,43,'E8','7th',3,10,7,20,41,61,'C4','12th',6,5,10,21,48,69,'B3','12th',2,8,2,12,30,42,'E8','8th',10,8,6,24,65,89,'A1','1st',8,2,8,18,41,59,'C5','14th',3,5,8,16,34,50,'C6','17th',8,8,8,24,37,61,'C4','15th',5,5,8,18,37,55,'C5','15th',5,1,6,12,39,51,'C6','15th',4,6,10,20,43,63,'C4','13th',9,10,10,29,33,62,'C4','16th',10,10,10,30,43,73,'B2','7th',7,6,10,23,42,65,'B3','14th',911,60.73,'13th','You tried in other subjects, but your score in Mathematics and woodwork  are not encouraging. You can do better.','A very good performance, you have the capacity to do better. Promoted to the next class!'),(2,'Benneth Joy N.','F','8,April,2007',8,10,0,18,50,68,'B3','10th',6,2,9,17,39,56,'C5','1st',9,10,7,26,53,79,'A1','1st',7,8,10,25,50,75,'A1','4th',2,7,2,11,27,38,'F9','12th',10,9,7,26,60,86,'A1','2nd',7,9,8,24,61,85,'A1','2nd',1,5,8,14,53,67,'B3','10th',8,9,9,26,57,83,'A1','1st',6,6,9,21,54,75,'A1','4th',10,7,7,24,50,74,'B2','2nd',8,5,10,23,55,78,'A1','6th',10,6,10,26,60,86,'A1','4th',10,10,10,30,40,70,'B2','9th',10,10,10,30,63,93,'A1','2nd',1113,74.2,'3rd','An excellent performance; keep it up!','An excellent result, keep it up! Promoted to the next class!'),(3,'Okwundu Sarah Ifunaya','F','11,June,2005',8,10,6,24,54,78,'A1','4th',6,3,9,18,36,54,'C6','3rd',6,10,4,20,48,68,'B3','9th',9,7,10,26,48,74,'B2','6th',4,8,4,16,30,46,'D7','6th',8,10,5,23,55,78,'A1','5th',10,4,8,22,61,83,'A1','4th',6,10,8,24,54,78,'A1','3rd',9,9,9,27,55,82,'A1','2nd',6,7,8,21,48,69,'B3','8th',10,8,7,25,38,63,'C4','9th',6,5,10,21,52,73,'B2','8th',10,5,10,25,49,74,'B2','10th',9,7,10,26,50,76,'A1','5th',10,10,9,29,50,79,'A1','6th',1075,71.67,'5th','Good performance, but work harder on woodwork.','An excellent result, keep it up! Promoted to the next class!'),(4,'Owah Chinedu ','M','20,February,2004',8,10,5,23,48,71,'B2','7th',0,1,9,10,36,46,'D7','6th',5,8,7,20,50,70,'B2','7th',8,5,10,23,49,72,'B2','10th',1,8,1,10,40,50,'C6','2nd',8,6,5,19,45,64,'C4','10th',9,2,8,19,59,78,'A1','8th',8,6,8,22,45,67,'B3','10th',8,8,8,24,36,60,'C4','16th',5,4,9,18,42,60,'C4','14th',10,5,6,21,35,56,'C5','12th',7,5,10,22,33,55,'C5','15th',10,6,10,26,37,63,'C4','15th',9,4,10,23,33,56,'C5','15th',9,10,9,28,33,61,'C4','17th',929,61.93,'12th','Average result; improve on your study','A very good performance, you have the capacity to do better. Promoted to the next class!'),(5,'Oguejiofor Chinenye ','F','17,July,2004',7,10,7,24,51,75,'A1','6th',1,1,9,11,16,27,'F9','16th',6,10,7,23,53,76,'A1','3rd',9,8,4,21,50,71,'B2','11th',1,8,1,10,30,40,'E8','11th',2,6,2,10,47,57,'C5','15th',7,9,9,25,48,73,'B2','11th',5,7,8,20,50,70,'B2','9th',8,9,9,26,48,74,'B2','8th',4,5,6,15,50,65,'B3','12th',9,5,7,21,43,64,'C4','8th',6,4,10,20,61,81,'A1','5th',3,10,3,16,53,69,'B3','13th',10,9,10,29,40,69,'B3','10th',10,9,10,29,36,65,'B3','14th',976,65.07,'10th','Good performance, but work harder!','A very good performance, you have the capacity to do better. Promoted to the next class!'),(6,'Daniel Miracle  ','M','6,November,2004',9,10,8,27,53,80,'A1','2nd',3,5,9,17,35,52,'C6','5th',5,8,5,18,53,71,'B2','6th',5,4,10,19,54,73,'B2','8th',1,1,1,3,15,18,'F9','19th',2,2,5,9,35,44,'E8','17th',10,8,9,27,52,79,'A1','7th',4,6,8,18,57,75,'A1','5th',6,8,8,22,45,67,'B3','13th',8,6,9,23,51,74,'B2','5th',10,6,7,23,43,66,'B3','6th',10,5,10,25,59,84,'A1','2nd',10,10,10,30,60,90,'A1','2nd',10,5,10,25,43,68,'B3','11th',10,10,10,30,50,80,'A1','4th',1021,68.07,'6th','An good performance; keep it up!','A very good performance, you have the capacity to do better. Promoted to the next class!'),(7,'Mathew Mary B.','F','28,December,2005',3,10,0,13,17,30,'F9','19th',0,1,9,10,16,26,'F9','18th',3,10,7,20,1,21,'F9','19th',5,2,10,17,25,42,'E8','20th',2,7,2,11,30,41,'E8','10th',6,7,5,18,45,63,'C4','11th',6,3,8,17,27,44,'E8','19th',3,2,9,14,32,46,'D7','19th',8,8,7,23,26,49,'D7','19th',8,5,5,18,26,44,'E8','20th',6,5,7,18,22,40,'E8','20th',3,3,10,16,20,36,'F9','20th',10,9,3,22,34,56,'C5','19th',6,7,10,23,26,49,'D7','19th',7,3,5,15,25,40,'E8','20th',627,41.8,'20th','Average result; improve on your study','A fair performance; work harder! Promoted to the next class!'),(8,'Daniel Dorcas ','F','7,September,2005',8,10,7,25,56,81,'A1','1st',1,4,10,15,20,35,'F9','12th',7,10,7,24,51,75,'A1','4th',9,8,10,27,49,76,'A1','3rd',5,1,5,11,50,61,'C4','1st',10,8,5,23,63,86,'A1','2nd',10,8,7,25,52,77,'A1','9th',8,7,8,23,58,81,'A1','1st',8,9,9,26,55,81,'A1','3rd',7,5,7,19,65,84,'A1','2nd',5,5,7,17,42,59,'C5','11th',7,5,10,22,50,72,'B2','10th',8,9,10,27,50,77,'A1','8th',9,5,10,24,50,74,'B2','6th',8,5,7,20,47,67,'B3','12th',1086,72.4,'4th','An good performance; keep it up!','An excellent result, keep it up! Promoted to the next class!'),(9,'Nnagbo Somtochukwu ','M','26,June,2006',3,0,4,7,43,50,'C6','15th',3,0,0,3,19,22,'F9','19th',3,1,1,5,52,57,'C5','16th',6,4,7,17,44,61,'C4','16th',1,1,1,3,45,48,'D7','5th',2,2,6,10,40,50,'C6','16th',1,3,5,9,48,57,'C5','15th',2,5,5,12,40,52,'C6','16th',8,8,3,19,45,64,'C4','14th',4,3,5,12,43,55,'C5','15th',5,5,7,17,34,51,'C6','15th',6,5,3,14,41,55,'C5','15th',10,6,10,26,39,65,'B3','14th',10,4,10,24,31,55,'C5','16th',10,8,9,27,46,73,'B2','7th',815,54.33,'15th','Average result; improve on your study','A good result; you can do better than this. Promoted to the next class!'),(10,'Hickson Tuyelshibeh ','F','7,February,2006',8,5,8,21,41,62,'C4','12th',1,4,7,12,30,42,'E8','10th',5,9,2,16,44,60,'C4','13th',7,8,10,25,44,69,'B3','12th',2,5,2,9,40,49,'D7','4th',8,6,2,16,46,62,'C4','12th',10,10,7,27,61,88,'A1','1st',5,9,8,22,50,72,'B2','7th',8,8,8,24,49,73,'B2','10th',3,6,8,17,50,67,'B3','9th',5,5,5,15,52,67,'B3','5th',8,4,10,22,50,72,'B2','10th',10,10,10,30,48,78,'A1','7th',10,6,10,26,52,78,'A1','4th',10,10,10,30,43,73,'B2','7th',1012,67.47,'7th','A very good result, but improve on your study','A very good performance, you have the capacity to do better. Promoted to the next class!'),(11,'Imoh Emmanuel  ','M','13,December,2004',3,10,0,13,39,52,'C6','14th',2,4,5,11,16,27,'F9','16th',3,8,4,15,52,67,'B3','10th',8,2,10,20,54,74,'B2','6th',1,1,1,3,15,18,'F9','19th',10,7,5,22,45,67,'B3','9th',8,4,7,19,47,66,'B3','12th',5,1,7,13,50,63,'C4','13th',8,7,7,22,46,68,'B3','12th',5,4,6,15,51,66,'B3','10th',5,5,7,17,48,65,'B3','7th',5,6,10,21,52,73,'B2','8th',9,10,10,29,57,86,'A1','4th',10,8,10,28,36,64,'C4','12th',9,4,5,18,31,49,'D7','18th',905,60.33,'14th','Good performance, but work harder!','A very good performance, you have the capacity to do better. Promoted to the next class!'),(12,'Ohis Joseph ','M','30,October,2006',10,10,6,26,43,69,'B3','8th',6,6,9,21,35,56,'C5','1st',9,9,7,25,52,77,'A1','2nd',8,7,10,25,60,85,'A1','2nd',4,7,4,15,35,50,'C6','2nd',7,7,5,19,58,77,'A1','6th',9,6,8,23,62,85,'A1','2nd',4,7,9,20,56,76,'A1','4th',9,9,9,27,54,81,'A1','3rd',7,6,7,20,46,66,'B3','10th',7,7,7,21,39,60,'C4','10th',7,4,10,21,63,84,'A1','2nd',9,10,10,29,63,92,'A1','1st',10,10,10,30,56,86,'A1','1st',10,10,8,28,54,82,'A1','3rd',1126,75.07,'2nd','An excellent performance; work harder on your English language!','An excellent result, keep it up! Promoted to the next class!'),(13,'Ngwan Dokrit ','M','28,February,2005',0,6,1,7,27,34,'F9','18th',5,2,9,16,23,39,'F9','11th',4,10,6,20,1,21,'F9','19th',8,4,10,22,28,50,'C6','18th',2,7,2,11,35,46,'D7','6th',9,6,5,20,23,43,'E8','19th',4,4,8,16,37,53,'C6','18th',1,7,9,17,40,57,'C5','14th',7,9,9,25,45,70,'B2','11th',6,6,8,20,50,70,'B2','6th',5,3,7,15,39,54,'C6','13th',7,4,10,21,36,57,'C5','14th',8,10,10,28,34,62,'C4','16th',9,7,10,26,34,60,'C4','14th',10,10,5,25,40,65,'B3','14th',781,52.07,'17th','Average result; improve on the following subject(s):Home Economics, Basic Technology, Mathematics and Technical Drawing!','A good result; you can do better than this. Promoted to the next class!'),(14,'Aniebona Goodluck ','M','22,July,2006',9,10,7,26,54,80,'A1','2nd',5,4,9,18,35,53,'C6','4th',7,10,7,24,51,75,'A1','4th',10,9,10,29,58,87,'A1','1st',3,7,1,11,31,42,'E8','8th',10,6,5,21,60,81,'A1','4th',10,8,9,27,56,83,'A1','4th',8,10,9,27,52,79,'A1','2nd',9,9,9,27,54,81,'A1','3rd',5,6,10,21,65,86,'A1','1st',9,5,7,21,53,74,'B2','2nd',10,4,10,24,58,82,'A1','4th',10,10,10,30,60,90,'A1','2nd',10,10,10,30,54,84,'A1','3rd',10,10,10,30,68,98,'A1','1st',1175,78.33,'1st','An excellent performance; keep it up!','An excellent result, keep it up! Promoted to the next class!'),(15,'Peter Jessica M.','F','29,October,2006',8,2,0,10,57,67,'B3','11th',0,2,6,8,24,32,'F9','14th',5,9,2,16,44,60,'C4','13th',6,7,10,23,50,73,'B2','8th',4,1,4,9,25,34,'F9','13th',5,4,4,13,47,60,'C4','14th',9,7,8,24,58,82,'A1','6th',5,8,8,21,51,72,'B2','7th',9,9,9,27,47,74,'B2','8th',6,7,6,19,51,70,'B2','6th',5,6,6,17,33,50,'C6','17th',6,5,10,21,53,74,'B2','7th',10,6,10,26,44,70,'B2','11th',10,8,10,28,44,72,'B2','8th',8,10,10,28,43,71,'B2','9th',961,64.07,'11th','Good performance, but work harder!','A very good performance, you have the capacity to do better. Promoted to the next class!'),(16,'Agbo Hillary ','M','25,June,2002',0,10,1,11,29,40,'E8','16th',4,3,9,16,19,35,'F9','12th',4,10,7,21,43,64,'C4','11th',5,6,10,21,41,62,'C4','15th',1,7,1,9,21,30,'F9','16th',9,6,5,20,41,61,'C4','13th',9,3,7,19,36,55,'C5','17th',3,8,6,17,31,48,'D7','18th',8,7,8,23,24,47,'D7','20th',3,4,5,12,40,52,'C6','18th',5,5,7,17,36,53,'C6','14th',4,4,10,18,34,52,'C6','17th',9,10,10,29,41,70,'B2','11th',9,5,10,24,31,55,'C5','16th',4,5,5,14,54,68,'B3','11th',792,52.8,'16th','Average performance, but work harder.','A good result; you can do better than this. Promoted to the next class!'),(17,'Andrew Innocent  ','M','1,January,2005',3,3,0,6,32,38,'F9','17th',3,1,6,10,18,28,'F9','15th',3,7,6,16,42,58,'C5','15th',6,2,10,18,35,53,'C6','17th',2,5,2,9,25,34,'F9','13th',2,2,6,10,25,35,'F9','20th',3,4,7,14,43,57,'C5','15th',6,3,7,16,37,53,'C6','15th',8,7,8,23,27,50,'C6','18th',5,6,5,16,30,46,'D7','19th',5,1,5,11,39,50,'C6','17th',4,5,2,11,34,45,'D7','18th',6,5,10,21,40,61,'C4','18th',9,4,10,23,26,49,'D7','19th',9,6,5,20,46,66,'B3','13th',723,48.2,'18th','Poor performance, your study habit should be redoubled!','A fair performance; work harder! Promoted to the next class!'),(18,'Godgift Joseph ','F','1,January,2004',6,10,6,22,56,78,'A1','4th',3,3,8,14,29,43,'E8','7th',5,10,7,22,47,69,'B3','8th',8,6,10,24,42,66,'B3','14th',3,7,3,13,20,33,'F9','15th',5,5,5,15,29,44,'E8','17th',7,6,7,20,45,65,'B3','13th',7,9,8,24,50,74,'B2','6th',9,9,9,27,53,80,'A1','7th',7,5,10,22,57,79,'A1','3rd',8,5,7,20,48,68,'B3','4th',9,9,10,28,62,90,'A1','1st',7,6,10,23,54,77,'A1','8th',10,7,10,27,37,64,'C4','12th',10,9,9,28,52,80,'A1','4th',1010,67.33,'8th','Good performance, but work harder!','A very good performance, you have the capacity to do better. Promoted to the next class!'),(19,'Odion Perpetua ','F','1,January,2004',7,8,0,15,46,61,'C4','13th',4,1,9,14,28,42,'E8','10th',5,1,1,7,45,52,'C6','17th',8,7,10,25,50,75,'A1','4th',2,7,2,11,15,26,'F9','17th',8,4,5,17,58,75,'A1','7th',6,7,8,21,53,74,'B2','10th',5,8,9,22,42,64,'C4','12th',8,9,9,26,55,81,'A1','3rd',8,5,6,19,44,63,'C4','13th',10,9,7,26,53,79,'A1','1st',8,7,10,25,45,70,'B2','12th',10,7,10,27,55,82,'A1','6th',10,8,10,28,58,86,'A1','1st',10,10,10,30,40,70,'B2','10th',1000,66.67,'9th','Good performance, but work harder!','A very good performance, you have the capacity to do better. Promoted to the next class!'),(20,'Orji Faith ','F','1,March,2004',1,10,0,11,17,28,'F9','20th',0,1,7,8,10,18,'F9','20th',1,6,5,12,33,45,'D7','18th',5,4,10,19,30,49,'D7','19th',2,7,2,11,10,21,'F9','18th',10,4,5,19,50,69,'B3','8th',6,1,6,13,29,42,'E8','20th',4,3,6,13,22,35,'F9','20th',8,8,8,24,33,57,'C5','17th',5,5,6,16,38,54,'C6','17th',5,4,7,16,25,41,'E8','19th',5,8,10,23,21,44,'E8','19th',7,7,10,24,31,55,'C5','20th',6,7,10,23,31,54,'C6','18th',4,7,5,16,30,46,'D7','19th',658,43.87,'19th','Poor performance. Please, redouble your effort!','A fair performance; work harder! Promoted to the next class!');
/*!40000 ALTER TABLE `jss2a_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_psycho_3rd_term`
--

DROP TABLE IF EXISTS `jss2a_psycho_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_psycho_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_psycho_3rd_term`
--

LOCK TABLES `jss2a_psycho_3rd_term` WRITE;
/*!40000 ALTER TABLE `jss2a_psycho_3rd_term` DISABLE KEYS */;
INSERT INTO `jss2a_psycho_3rd_term` VALUES (1,'Jeremiah Abigail ','B','C','A','B','C','A','A','C','C','A','B','C','C','C','B','B','C'),(2,'Benneth Joy N.','B','C','B','B','A','A','B','B','B','A','B','B','B','B','B','B','B'),(3,'Okwundu Sarah Ifunaya','B','D','B','C','B','B','B','D','C','A','B','C','C','C','C','C','B'),(4,'Owah Chinedu ','C','B','B','C','C','B','C','A','D','A','B','C','C','B','B','B','B'),(5,'Oguejiofor Chinenye ','B','C','A','A','B','B','B','C','C','A','A','C','C','B','B','C','B'),(6,'Daniel Miracle  ','C','B','A','C','B','A','B','A','C','A','B','C','B','C','A','C','B'),(7,'Mathew Mary B.','B','C','C','C','C','A','A','C','D','A','C','C','C','C','C','B','C'),(8,'Daniel Dorcas ','B','B','C','C','B','B','D','B','B','A','C','C','C','C','B','B','B'),(9,'Nnagbo Somtochukwu ','D','C','E','D','C','C','E','B','D','A','C','C','C','D','C','C','C'),(10,'Hickson Tuyelshibeh ','B','A','C','C','C','B','B','C','C','A','C','C','C','B','B','C','C'),(11,'Imoh Emmanuel  ','C','A','C','C','C','B','B','B','C','A','C','C','C','C','B','C','C'),(12,'Ohis Joseph ','C','A','C','D','B','B','A','B','C','B','B','C','C','C','B','B','C'),(13,'Ngwan Dokrit ','D','B','C','D','C','B','B','B','D','B','C','C','D','D','B','B','C'),(14,'Aniebona Goodluck ','B','B','B','B','A','B','A','A','A','A','C','C','C','C','B','B','C'),(15,'Peter Jessica M.','B','C','B','B','B','B','C','C','C','A','A','C','B','B','B','B','B'),(16,'Agbo Hillary ','C','A','D','E','C','B','D','A','D','A','C','C','C','C','B','C','B'),(17,'Andrew Innocent  ','B','C','B','E','C','B','A','D','C','A','B','C','C','C','C','B','B'),(18,'Godgift Joseph ','B','C','C','C','C','B','C','C','C','A','B','C','C','C','C','B','B'),(19,'Odion Perpetua ','A','C','A','C','B','B','B','D','B','A','A','C','C','E','C','A','A'),(20,'Orji Faith ','C','C','D','D','D','C','E','D','D','B','C','C','D','D','D','C','C');
/*!40000 ALTER TABLE `jss2a_psycho_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2a_subjects`
--

DROP TABLE IF EXISTS `jss2a_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2a_subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class` text NOT NULL,
  `subjects` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2a_subjects`
--

LOCK TABLES `jss2a_subjects` WRITE;
/*!40000 ALTER TABLE `jss2a_subjects` DISABLE KEYS */;
INSERT INTO `jss2a_subjects` VALUES (1,'JSS 2A','AGR,BSC,BSD,BTH,CAT,CIV,COS,CRS,ENG,HEC,MTH,PHE,STD,TDR,WOW');
/*!40000 ALTER TABLE `jss2a_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_1st_term`
--

DROP TABLE IF EXISTS `jss2b_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_1st_term`
--

LOCK TABLES `jss2b_1st_term` WRITE;
/*!40000 ALTER TABLE `jss2b_1st_term` DISABLE KEYS */;
INSERT INTO `jss2b_1st_term` VALUES (1,'Uzoma Chioma ','F','9,October,2005',0,0,'','',''),(2,'Musa Peace ','F','10,September,2005',0,0,'','',''),(3,'Adakole Blessing ','F','12,January,2007',0,0,'','',''),(4,'Ebiyie Elizabeth ','F','17,May,2006',0,0,'','',''),(5,'Mathew Martha ','F','28,December,2005',0,0,'','',''),(6,'Agu Chinaza ','F','2,November,2003',0,0,'','',''),(7,'Orinya Peace ','F','14,December,2005',0,0,'','',''),(8,'Okoli Jecinta ','F','8,March,2006',0,0,'','',''),(9,'Musa Timothy ','M','4,September,2002',0,0,'','',''),(10,'Ejikeme Trust ','M','18,January,2005',0,0,'','',''),(11,'Dilibe Chigozie ','M','15,November,2004',0,0,'','',''),(12,'Nwobi Truimp ','M','4,December,2005',0,0,'','',''),(13,'Chisom Chinweuba ','M','8,March,2006',0,0,'','',''),(14,'Akila Joshua ','M','23,May,2004',0,0,'','',''),(15,'Andrew Isaac ','M','18,November,2004',0,0,'','',''),(16,'Daniel Omonya ','M','18,March,2003',0,0,'','',''),(17,'Anthony Benjamin ','M','4,December,2002',0,0,'','',''),(18,'Solomon John ','M','3,January,2005',0,0,'','',''),(19,'Umeh Austin ','M','18,May,2004',0,0,'','','');
/*!40000 ALTER TABLE `jss2b_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_2nd_term`
--

DROP TABLE IF EXISTS `jss2b_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_2nd_term`
--

LOCK TABLES `jss2b_2nd_term` WRITE;
/*!40000 ALTER TABLE `jss2b_2nd_term` DISABLE KEYS */;
INSERT INTO `jss2b_2nd_term` VALUES (1,'Uzoma Chioma ','F','9,October,2005',0,0,'','',''),(2,'Musa Peace ','F','10,September,2005',0,0,'','',''),(3,'Adakole Blessing ','F','12,January,2007',0,0,'','',''),(4,'Ebiyie Elizabeth ','F','17,May,2006',0,0,'','',''),(5,'Mathew Martha ','F','28,December,2005',0,0,'','',''),(6,'Agu Chinaza ','F','2,November,2003',0,0,'','',''),(7,'Orinya Peace ','F','14,December,2005',0,0,'','',''),(8,'Okoli Jecinta ','F','8,March,2006',0,0,'','',''),(9,'Musa Timothy ','M','4,September,2002',0,0,'','',''),(10,'Ejikeme Trust ','M','18,January,2005',0,0,'','',''),(11,'Dilibe Chigozie ','M','15,November,2004',0,0,'','',''),(12,'Nwobi Truimp ','M','4,December,2005',0,0,'','',''),(13,'Chisom Chinweuba ','M','8,March,2006',0,0,'','',''),(14,'Akila Joshua ','M','23,May,2004',0,0,'','',''),(15,'Andrew Isaac ','M','18,November,2004',0,0,'','',''),(16,'Daniel Omonya ','M','18,March,2003',0,0,'','',''),(17,'Anthony Benjamin ','M','4,December,2002',0,0,'','',''),(18,'Solomon John ','M','3,January,2005',0,0,'','',''),(19,'Umeh Austin ','M','18,May,2004',0,0,'','','');
/*!40000 ALTER TABLE `jss2b_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_3rd_term`
--

DROP TABLE IF EXISTS `jss2b_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `HEC_ca1` double NOT NULL,
  `HEC_ca2` double NOT NULL,
  `HEC_ca3` double NOT NULL,
  `HEC_ca_total` double NOT NULL,
  `HEC_exam` double NOT NULL,
  `Total_HEC` double NOT NULL,
  `HEC_grade` text NOT NULL,
  `HEC_pos` text NOT NULL,
  `MTH_ca1` double NOT NULL,
  `MTH_ca2` double NOT NULL,
  `MTH_ca3` double NOT NULL,
  `MTH_ca_total` double NOT NULL,
  `MTH_exam` double NOT NULL,
  `Total_MTH` double NOT NULL,
  `MTH_grade` text NOT NULL,
  `MTH_pos` text NOT NULL,
  `WOW_ca1` double NOT NULL,
  `WOW_ca2` double NOT NULL,
  `WOW_ca3` double NOT NULL,
  `WOW_ca_total` double NOT NULL,
  `WOW_exam` double NOT NULL,
  `Total_WOW` double NOT NULL,
  `WOW_grade` text NOT NULL,
  `WOW_pos` text NOT NULL,
  `CIV_ca1` double NOT NULL,
  `CIV_ca2` double NOT NULL,
  `CIV_ca3` double NOT NULL,
  `CIV_ca_total` double NOT NULL,
  `CIV_exam` double NOT NULL,
  `Total_CIV` double NOT NULL,
  `CIV_grade` text NOT NULL,
  `CIV_pos` text NOT NULL,
  `TDR_ca1` double NOT NULL,
  `TDR_ca2` double NOT NULL,
  `TDR_ca3` double NOT NULL,
  `TDR_ca_total` double NOT NULL,
  `TDR_exam` double NOT NULL,
  `Total_TDR` double NOT NULL,
  `TDR_grade` text NOT NULL,
  `TDR_pos` text NOT NULL,
  `STD_ca1` double NOT NULL,
  `STD_ca2` double NOT NULL,
  `STD_ca3` double NOT NULL,
  `STD_ca_total` double NOT NULL,
  `STD_exam` double NOT NULL,
  `Total_STD` double NOT NULL,
  `STD_grade` text NOT NULL,
  `STD_pos` text NOT NULL,
  `CRS_ca1` double NOT NULL,
  `CRS_ca2` double NOT NULL,
  `CRS_ca3` double NOT NULL,
  `CRS_ca_total` double NOT NULL,
  `CRS_exam` double NOT NULL,
  `Total_CRS` double NOT NULL,
  `CRS_grade` text NOT NULL,
  `CRS_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `BSD_ca1` double NOT NULL,
  `BSD_ca2` double NOT NULL,
  `BSD_ca3` double NOT NULL,
  `BSD_ca_total` double NOT NULL,
  `BSD_exam` double NOT NULL,
  `Total_BSD` double NOT NULL,
  `BSD_grade` text NOT NULL,
  `BSD_pos` text NOT NULL,
  `ENG_ca1` double NOT NULL,
  `ENG_ca2` double NOT NULL,
  `ENG_ca3` double NOT NULL,
  `ENG_ca_total` double NOT NULL,
  `ENG_exam` double NOT NULL,
  `Total_ENG` double NOT NULL,
  `ENG_grade` text NOT NULL,
  `ENG_pos` text NOT NULL,
  `CAT_ca1` double NOT NULL,
  `CAT_ca2` double NOT NULL,
  `CAT_ca3` double NOT NULL,
  `CAT_ca_total` double NOT NULL,
  `CAT_exam` double NOT NULL,
  `Total_CAT` double NOT NULL,
  `CAT_grade` text NOT NULL,
  `CAT_pos` text NOT NULL,
  `AGR_ca1` double NOT NULL,
  `AGR_ca2` double NOT NULL,
  `AGR_ca3` double NOT NULL,
  `AGR_ca_total` double NOT NULL,
  `AGR_exam` double NOT NULL,
  `Total_AGR` double NOT NULL,
  `AGR_grade` text NOT NULL,
  `AGR_pos` text NOT NULL,
  `BTH_ca1` double NOT NULL,
  `BTH_ca2` double NOT NULL,
  `BTH_ca3` double NOT NULL,
  `BTH_ca_total` double NOT NULL,
  `BTH_exam` double NOT NULL,
  `Total_BTH` double NOT NULL,
  `BTH_grade` text NOT NULL,
  `BTH_pos` text NOT NULL,
  `BSC_ca1` double NOT NULL,
  `BSC_ca2` double NOT NULL,
  `BSC_ca3` double NOT NULL,
  `BSC_ca_total` double NOT NULL,
  `BSC_exam` double NOT NULL,
  `Total_BSC` double NOT NULL,
  `BSC_grade` text NOT NULL,
  `BSC_pos` text NOT NULL,
  `PHE_ca1` double NOT NULL,
  `PHE_ca2` double NOT NULL,
  `PHE_ca3` double NOT NULL,
  `PHE_ca_total` double NOT NULL,
  `PHE_exam` double NOT NULL,
  `Total_PHE` double NOT NULL,
  `PHE_grade` text NOT NULL,
  `PHE_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_3rd_term`
--

LOCK TABLES `jss2b_3rd_term` WRITE;
/*!40000 ALTER TABLE `jss2b_3rd_term` DISABLE KEYS */;
INSERT INTO `jss2b_3rd_term` VALUES (1,'Uzoma Chioma ','F','9,October,2005',3,10,0,13,41,54,'C6','14th',1,2,5,8,15,23,'F9','14th',1,1,1,3,30,33,'F9','10th',2,4,2,8,23,31,'F9','18th',2,4,2,8,23,31,'F9','18th',6,3,8,17,50,67,'B3','10th',10,5,10,25,43,68,'B3','11th',6,3,8,17,46,63,'C4','11th',4,9,5,18,47,65,'B3','11th',5,2,6,13,41,54,'C6','12th',7,8,8,23,38,61,'C4','12th',7,5,10,22,44,66,'B3','11th',4,1,10,15,48,63,'C4','8th',9,6,10,25,50,75,'A1','13th',7,6,10,23,37,60,'C4','13th',814,54.27,'14th','You tried in other subjects, but your score in Mathematics is poor! Please put more effort.','A good result; you can do better than this. Promoted to the next class!'),(2,'Musa Peace ','F','10,September,2005',4,10,5,19,40,59,'C5','11th',3,1,9,13,19,32,'F9','10th',1,9,1,11,30,41,'E8','3rd',6,6,5,17,43,60,'C4','13th',6,6,5,17,43,60,'C4','13th',5,5,8,18,30,48,'D7','17th',10,10,10,30,44,74,'B2','7th',6,6,8,20,40,60,'C4','13th',2,7,8,17,36,53,'C6','15th',2,2,7,11,41,52,'C6','13th',7,8,9,24,36,60,'C4','14th',6,4,10,20,45,65,'B3','12th',4,10,8,22,45,67,'B3','7th',10,9,10,29,51,80,'A1','7th',6,5,10,21,38,59,'C5','14th',870,58,'11th','You tried in other subjects, but your score in Mathematics is poor! Please put more effort.','A good result; you can do better than this. Promoted to the next class!'),(3,'Adakole Blessing ','F','12,January,2007',8,10,7,25,49,74,'B2','5th',2,1,9,12,15,27,'F9','13th',1,1,1,3,20,23,'F9','16th',2,6,2,10,60,70,'B2','5th',2,6,2,10,60,70,'B2','4th',7,4,9,20,60,80,'A1','4th',10,10,10,30,48,78,'A1','4th',7,8,8,23,49,72,'B2','8th',8,8,8,24,44,68,'B3','8th',10,5,7,22,48,70,'B2','4th',9,9,9,27,47,74,'B2','5th',10,5,10,25,62,87,'A1','2nd',5,1,1,7,44,51,'C6','15th',6,6,10,22,60,82,'A1','6th',9,9,10,28,50,78,'A1','8th',1004,66.93,'7th','A good result but your score in mathematics is very poor, keep it up.','A very good performance, you have the capacity to do better. Promoted to the next class!'),(4,'Ebiyie Elizabeth ','F','17,May,2006',4,7,0,11,24,35,'F9','17th',1,0,1,2,9,11,'F9','19th',2,1,2,5,5,10,'F9','19th',5,7,5,17,50,67,'B3','9th',5,7,5,17,50,67,'B3','8th',5,2,5,12,40,52,'C6','16th',6,5,10,21,23,44,'E8','16th',3,3,6,12,22,34,'F9','19th',2,4,7,13,39,52,'C6','16th',5,2,5,12,33,45,'D7','15th',9,8,8,25,32,57,'C5','16th',5,3,3,11,18,29,'F9','19th',3,1,1,5,37,42,'E8','18th',9,8,3,20,30,50,'C6','17th',3,4,7,14,30,44,'E8','18th',639,42.6,'18th','An average result, please work harder.','A fair performance; work harder! Promoted to the next class!'),(5,'Mathew Martha ','F','28,December,2005',5,10,7,22,33,55,'C5','13th',1,1,6,8,13,21,'F9','16th',3,7,3,13,30,43,'E8','2nd',2,5,2,9,40,49,'D7','15th',2,5,2,9,40,49,'D7','15th',3,5,6,14,44,58,'C5','14th',10,10,10,30,32,62,'C4','15th',9,4,9,22,47,69,'B3','9th',1,4,8,13,31,44,'E8','17th',2,5,7,14,30,44,'E8','16th',7,7,8,22,31,53,'C6','17th',1,4,4,9,40,49,'D7','17th',4,10,8,22,36,58,'C5','10th',10,10,10,30,47,77,'A1','12th',6,5,10,21,43,64,'C4','10th',795,53,'15th','An average result, please work harder.','A good result; you can do better than this. Promoted to the next class!'),(6,'Agu Chinaza ','F','2,November,2003',1,1,0,2,21,23,'F9','19th',1,1,8,10,9,19,'F9','18th',2,8,2,12,20,32,'F9','11th',2,2,2,6,23,29,'F9','19th',2,2,2,6,23,29,'F9','19th',3,3,5,11,30,41,'E8','18th',5,5,10,20,11,31,'F9','19th',2,3,7,12,26,38,'F9','18th',1,1,7,9,20,29,'F9','19th',1,5,6,12,11,23,'F9','19th',8,8,8,24,28,52,'C6','18th',1,4,10,15,20,35,'F9','18th',1,10,1,12,21,33,'F9','19th',3,7,10,20,14,34,'F9','19th',2,0,10,12,10,22,'F9','19th',470,31.33,'19th','A poor result, please work harder next term.','A very poor performance; wake up from your slumber! Repeat JSS2'),(7,'Orinya Peace ','F','14,December,2005',7,10,8,25,57,82,'A1','1st',5,6,9,20,48,68,'B3','1st',2,7,2,11,30,41,'E8','3rd',7,5,6,18,53,71,'B2','3rd',7,6,5,18,53,71,'B2','2nd',7,6,9,22,60,82,'A1','3rd',10,7,10,27,56,83,'A1','2nd',10,9,8,27,57,84,'A1','4th',4,8,8,20,59,79,'A1','5th',5,5,7,17,48,65,'B3','6th',8,9,8,25,55,80,'A1','3rd',7,7,10,24,54,78,'A1','8th',5,10,7,22,51,73,'B2','4th',9,8,10,27,51,78,'A1','10th',6,6,10,22,57,79,'A1','6th',1114,74.27,'3rd','A very good result, but u can do better next term','An excellent result, keep it up! Promoted to the next class!'),(8,'Okoli Jecinta ','F','8,March,2006',7,10,7,24,54,78,'A1','3rd',1,4,9,14,14,28,'F9','11th',1,1,1,3,35,38,'F9','7th',2,2,2,6,45,51,'C6','14th',2,2,2,6,45,51,'C6','14th',5,6,5,16,60,76,'A1','6th',9,10,10,29,45,74,'B2','7th',7,6,8,21,47,68,'B3','10th',8,9,9,26,54,80,'A1','4th',5,5,6,16,47,63,'C4','8th',8,9,9,26,47,73,'B2','6th',7,4,10,21,40,61,'C4','15th',8,10,7,25,47,72,'B2','5th',10,10,10,30,49,79,'A1','8th',9,7,10,26,54,80,'A1','3rd',972,64.8,'8th','A very good result, but u can do better next term','A very good performance, you have the capacity to do better. Promoted to the next class!'),(9,'Musa Timothy ','M','4,September,2002',10,10,7,27,54,81,'A1','2nd',7,2,9,18,35,53,'C6','4th',3,7,3,13,27,40,'E8','6th',9,5,5,19,50,69,'B3','6th',9,5,5,19,50,69,'B3','5th',6,7,10,23,68,91,'A1','1st',10,10,10,30,45,75,'A1','6th',10,9,9,28,62,90,'A1','1st',7,9,9,25,58,83,'A1','3rd',10,7,7,24,54,78,'A1','2nd',8,10,10,28,56,84,'A1','2nd',10,9,10,29,62,91,'A1','1st',7,9,8,24,57,81,'A1','1st',10,6,10,26,66,92,'A1','2nd',10,9,10,29,64,93,'A1','1st',1170,78,'2nd','An excellent performance; keep it up!','An excellent result, keep it up! Promoted to the next class!'),(10,'Ejikeme Trust ','M','18,January,2005',8,5,6,19,45,64,'C4','8th',3,5,7,15,31,46,'D7','5th',2,8,2,12,25,37,'F9','8th',6,7,5,18,45,63,'C4','11th',6,7,5,18,48,66,'B3','9th',6,5,5,16,51,67,'B3','10th',10,10,10,30,50,80,'A1','3rd',8,7,8,23,57,80,'A1','6th',8,8,8,24,63,87,'A1','2nd',5,5,7,17,45,62,'C4','10th',8,8,9,25,53,78,'A1','4th',8,6,10,24,59,83,'A1','4th',8,1,1,10,47,57,'C5','11th',10,9,10,29,57,86,'A1','4th',9,8,10,27,52,79,'A1','6th',1035,69,'5th','A very good result, but u can do better next term.','A very good performance, you have the capacity to do better. Promoted to the next class!'),(11,'Dilibe Chigozie ','M','15,November,2004',9,10,4,23,50,73,'B2','6th',4,5,9,18,19,37,'F9','8th',3,1,1,5,20,25,'F9','14th',2,7,2,11,57,68,'B3','7th',2,7,2,11,57,68,'B3','6th',6,5,9,20,58,78,'A1','5th',10,7,10,27,49,76,'A1','5th',10,7,7,24,60,84,'A1','4th',5,7,8,20,57,77,'A1','6th',5,5,6,16,52,68,'B3','5th',6,8,8,22,45,67,'B3','8th',8,4,10,22,57,79,'A1','7th',5,1,1,7,48,55,'C5','13th',10,9,10,29,58,87,'A1','3rd',7,8,10,25,55,80,'A1','3rd',1022,68.13,'6th','A very good result, but u can do better next term.','A very good performance, you have the capacity to do better. Promoted to the next class!'),(12,'Nwobi Truimp ','M','4,December,2005',8,10,7,25,47,72,'B2','7th',3,5,9,17,44,61,'C4','2nd',3,8,3,14,30,44,'E8','1st',8,8,5,21,50,71,'B2','3rd',8,8,5,21,50,71,'B2','2nd',7,9,7,23,52,75,'A1','8th',9,7,10,26,37,63,'C4','14th',9,9,8,26,53,79,'A1','7th',2,10,8,20,46,66,'B3','10th',8,5,7,20,53,73,'B2','3rd',5,8,8,21,43,64,'C4','10th',10,6,10,26,56,82,'A1','5th',5,9,7,21,51,72,'B2','5th',10,10,10,30,54,84,'A1','5th',9,7,10,26,54,80,'A1','3rd',1057,70.47,'4th','A very good result, but u can do better next term','An excellent result, keep it up! Promoted to the next class!'),(13,'Chisom Chinweuba ','M','8,March,2006',4,7,0,11,47,58,'C5','12th',2,6,4,12,22,34,'F9','9th',1,1,1,3,15,18,'F9','18th',2,8,2,12,52,64,'C4','10th',2,8,2,12,52,64,'C4','10th',6,6,9,21,46,67,'B3','10th',9,9,10,28,45,73,'B2','9th',7,6,8,21,42,63,'C4','11th',3,5,8,16,55,71,'B2','7th',6,5,7,18,46,64,'C4','7th',8,8,8,24,40,64,'C4','10th',8,4,10,22,58,80,'A1','6th',6,10,7,23,52,75,'A1','3rd',9,9,10,28,47,75,'A1','13th',9,7,10,26,45,71,'B2','9th',941,62.73,'10th','Good result, put more effort.','A very good performance, you have the capacity to do better. Promoted to the next class!'),(14,'Akila Joshua ','M','23,May,2004',7,6,7,20,32,52,'C6','15th',0,5,4,9,11,20,'F9','17th',1,1,1,3,22,25,'F9','14th',2,6,2,10,30,40,'E8','16th',2,6,2,10,30,40,'E8','16th',4,6,7,17,47,64,'C4','12th',7,1,10,18,25,43,'E8','17th',9,3,8,20,29,49,'D7','16th',2,5,7,14,22,36,'F9','18th',5,5,2,12,29,41,'E8','17th',8,4,8,20,41,61,'C4','12th',4,4,10,18,42,60,'C4','16th',3,1,1,5,38,43,'E8','17th',10,6,3,19,49,68,'B3','15th',5,4,7,16,30,46,'D7','17th',688,45.87,'17th','A poor result but u need to improve in your mathematics and woodwork, please work harder.','A fair performance; work harder! Promoted to the next class!'),(15,'Andrew Isaac ','M','18,November,2004',3,10,7,20,44,64,'C4','8th',3,4,1,8,15,23,'F9','14th',1,1,1,3,18,21,'F9','17th',5,6,5,16,45,61,'C4','12th',5,6,5,16,45,61,'C4','11th',3,3,2,8,46,54,'C6','15th',7,9,10,26,38,64,'C4','12th',4,1,5,10,43,53,'C6','15th',3,1,8,12,45,57,'C5','13th',1,5,7,13,34,47,'D7','14th',8,4,8,20,40,60,'C4','14th',6,7,3,16,57,73,'B2','9th',4,1,1,6,53,59,'C5','9th',7,5,10,22,56,78,'A1','10th',5,6,10,21,41,62,'C4','11th',837,55.8,'12th','Average result; put more effort.','A good result; you can do better than this. Promoted to the next class!'),(16,'Daniel Omonya ','M','18,March,2003',2,10,4,16,9,25,'F9','18th',1,4,10,15,28,43,'E8','6th',5,7,5,17,20,37,'F9','8th',7,8,5,20,48,68,'B3','7th',7,8,5,20,48,68,'B3','6th',5,5,6,16,25,41,'E8','18th',3,1,10,14,24,38,'F9','18th',3,3,8,14,26,40,'E8','17th',2,1,8,11,44,55,'C5','14th',3,5,7,15,23,38,'F9','18th',8,8,8,24,28,52,'C6','18th',4,3,10,17,45,62,'C4','14th',4,10,6,20,37,57,'C5','11th',6,6,10,22,25,47,'D7','18th',5,2,10,17,34,51,'C6','16th',722,48.13,'16th','A fair result, please work harder','A fair performance; work harder! Promoted to the next class!'),(17,'Anthony Benjamin ','M','4,December,2002',7,8,6,21,57,78,'A1','3rd',5,4,9,18,40,58,'C5','3rd',2,1,2,5,36,41,'E8','3rd',8,7,5,20,55,75,'A1','2nd',8,7,5,20,41,61,'C4','11th',10,7,10,27,61,88,'A1','2nd',9,8,10,27,59,86,'A1','1st',10,10,9,29,61,90,'A1','1st',7,9,9,25,63,88,'A1','1st',10,10,7,27,54,81,'A1','1st',8,10,10,28,64,92,'A1','1st',9,5,10,24,62,86,'A1','3rd',7,9,8,24,56,80,'A1','2nd',10,10,10,30,65,95,'A1','1st',8,7,10,25,57,82,'A1','2nd',1181,78.73,'1st','An excellent performance; keep it up!','An excellent result, keep it up! Promoted to the next class!'),(18,'Solomon John ','M','3,January,2005',7,7,0,14,47,61,'C4','10th',4,2,6,12,27,39,'F9','7th',2,6,2,10,20,30,'F9','12th',10,6,5,21,68,89,'A1','1st',10,6,5,21,68,89,'A1','1st',7,5,8,20,56,76,'A1','6th',5,7,10,22,42,64,'C4','12th',3,3,7,13,43,56,'C5','14th',6,7,8,21,43,64,'C4','12th',5,5,6,16,46,62,'C4','10th',8,8,8,24,44,68,'B3','7th',5,4,10,19,45,64,'C4','13th',3,1,1,5,43,48,'D7','16th',7,9,10,26,52,78,'A1','10th',4,5,10,19,42,61,'C4','12th',949,63.27,'9th','Good result but u can better next term','A very good performance, you have the capacity to do better. Promoted to the next class!'),(19,'Umeh Austin ','M','18,May,2004',4,6,0,10,32,42,'E8','16th',3,4,3,10,18,28,'F9','11th',4,1,4,9,20,29,'F9','13th',2,2,2,6,31,37,'F9','17th',2,2,2,6,31,37,'F9','17th',7,3,3,13,47,60,'C4','13th',10,8,10,28,42,70,'B2','10th',9,4,9,22,66,88,'A1','3rd',7,7,8,22,46,68,'B3','8th',6,5,7,18,44,62,'C4','10th',0,0,0,0,0,0,'','11th',7,5,3,15,57,72,'B2','10th',5,1,1,7,48,55,'C5','13th',6,6,3,15,48,63,'C4','16th',3,4,7,14,41,55,'C5','15th',766,54.71,'13th','An average result, please work harder.','A good result; you can do better than this. Promoted to the next class!');
/*!40000 ALTER TABLE `jss2b_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_psycho_3rd_term`
--

DROP TABLE IF EXISTS `jss2b_psycho_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_psycho_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_psycho_3rd_term`
--

LOCK TABLES `jss2b_psycho_3rd_term` WRITE;
/*!40000 ALTER TABLE `jss2b_psycho_3rd_term` DISABLE KEYS */;
INSERT INTO `jss2b_psycho_3rd_term` VALUES (1,'Uzoma Chioma ','B','B','B','B','B','A','A','B','B','B','B','B','B','A','B','B','B'),(2,'Musa Peace ','B','B','A','B','A','A','A','B','B','B','B','B','B','B','B','C','C'),(3,'Adakole Blessing ','B','B','A','A','C','A','A','B','B','B','B','B','C','B','B','B','B'),(4,'Ebiyie Elizabeth ','C','B','C','B','C','B','A','B','C','B','B','C','B','B','B','B','B'),(5,'Mathew Martha ','B','B','A','C','A','A','A','A','B','B','B','B','C','B','B','C','B'),(6,'Agu Chinaza ','C','B','B','C','C','A','A','C','C','C','C','C','C','C','C','C','C'),(7,'Orinya Peace ','B','B','B','B','B','A','A','C','C','B','B','B','B','B','B','B','B'),(8,'Okoli Jecinta ','B','B','B','B','B','A','A','B','B','B','B','B','B','B','B','C','B'),(9,'Musa Timothy ','B','A','A','A','A','A','A','A','B','B','B','B','B','B','B','B','B'),(10,'Ejikeme Trust ','B','B','B','A','B','A','A','B','B','B','B','B','B','B','B','B','B'),(11,'Dilibe Chigozie ','B','B','C','C','C','A','A','B','C','B','B','B','C','B','B','B','B'),(12,'Nwobi Truimp ','B','B','B','A','B','A','A','B','B','B','B','B','B','B','B','B','B'),(13,'Chisom Chinweuba ','B','B','B','B','B','A','A','B','B','B','B','B','B','C','B','B','B'),(14,'Akila Joshua ','B','B','B','B','B','A','A','B','B','B','B','B','B','B','B','B','B'),(15,'Andrew Isaac ','B','B','B','B','C','A','A','A','B','B','B','B','B','B','B','B','B'),(16,'Daniel Omonya ','B','B','B','B','B','A','A','A','C','C','B','C','C','B','B','B','B'),(17,'Anthony Benjamin ','B','B','B','A','A','A','A','A','B','B','B','B','B','B','B','B','C'),(18,'Solomon John ','B','B','B','B','C','A','A','B','B','B','C','B','B','B','B','B','B'),(19,'Umeh Austin ','B','B','B','B','C','A','A','B','C','B','B','B','C','B','B','B','B');
/*!40000 ALTER TABLE `jss2b_psycho_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jss2b_subjects`
--

DROP TABLE IF EXISTS `jss2b_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jss2b_subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class` text NOT NULL,
  `subjects` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jss2b_subjects`
--

LOCK TABLES `jss2b_subjects` WRITE;
/*!40000 ALTER TABLE `jss2b_subjects` DISABLE KEYS */;
INSERT INTO `jss2b_subjects` VALUES (1,'JSS 2B','AGR,BSC,BSD,BTH,CAT,CIV,COS,CRS,ENG,HEC,MTH,PHE,STD,TDR,WOW');
/*!40000 ALTER TABLE `jss2b_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_1st_term`
--

DROP TABLE IF EXISTS `ss1a_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `DIN_ca1` double NOT NULL,
  `DIN_ca2` double NOT NULL,
  `DIN_ca3` double NOT NULL,
  `DIN_ca_total` double NOT NULL,
  `DIN_exam` double NOT NULL,
  `Total_DIN` double NOT NULL,
  `DIN_grade` text NOT NULL,
  `DIN_pos` text NOT NULL,
  `GMK_ca1` double NOT NULL,
  `GMK_ca2` double NOT NULL,
  `GMK_ca3` double NOT NULL,
  `GMK_ca_total` double NOT NULL,
  `GMK_exam` double NOT NULL,
  `Total_GMK` double NOT NULL,
  `GMK_grade` text NOT NULL,
  `GMK_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_1st_term`
--

LOCK TABLES `ss1a_1st_term` WRITE;
/*!40000 ALTER TABLE `ss1a_1st_term` DISABLE KEYS */;
INSERT INTO `ss1a_1st_term` VALUES (1,'Ahmed Saad Mohammed','M','27,November,2003',9,8,8,25,40,65,'B3','5th',8,8,8,24,45,69,'B3','5th',8,8,8,24,55,79,'A1','2nd',213,71,'1st','',''),(2,'Aniebona Favour ','F','6,November,2004',8,6,5,19,45,64,'C4','8th',4,3,5,12,44,56,'C5','16th',7,4,2,13,28,41,'E8','19th',161,53.67,'15th','',''),(3,'Akpan Godwin ','M','14,February,2002',8,6,3,17,48,65,'B3','5th',8,7,6,21,40,61,'C4','12th',6,5,8,19,44,63,'C4','9th',189,63,'8th','',''),(4,'Anyadiegwu Victory ','F','30,March,2002',5,5,5,15,25,40,'E8','18th',7,6,7,20,55,75,'A1','2nd',7,6,5,18,40,58,'C5','10th',173,57.67,'13th','',''),(5,'Benneth Emmanuel ','M','4,October,2003',6,5,4,15,29,44,'E8','17th',6,5,4,15,43,58,'C5','15th',8,7,5,20,53,73,'B2','5th',175,58.33,'12th','',''),(6,'Bulus Samson Oche','M','12,May,2001',6,5,5,16,56,72,'B2','2nd',4,4,5,13,47,60,'C4','13th',7,6,1,14,43,57,'C5','11th',189,63,'8th','',''),(7,'Dilibe Emmanuel ','M','1,December,2003',6,6,7,19,46,65,'B3','5th',2,1,5,8,25,33,'F9','19th',6,5,4,15,33,48,'D7','17th',146,48.67,'18th','',''),(8,'Erhrunse Gift ','F','30,September,2004',6,6,2,14,40,54,'C6','12th',7,7,7,21,53,74,'B2','4th',8,6,9,23,55,78,'A1','3rd',206,68.67,'3rd','',''),(9,'Ebiyei Mary ','F','31,January,2004',3,4,6,13,20,33,'F9','19th',4,4,1,9,38,47,'D7','18th',8,6,5,19,45,64,'C4','8th',144,48,'19th','',''),(10,'Joel Jeremiah ','M','22,May,2002',6,5,5,16,55,71,'B2','3rd',7,8,5,20,44,64,'C4','9th',8,6,5,19,47,66,'B3','7th',201,67,'5th','',''),(11,'Lazarus Chiamaka ','F','9,October,2002',7,5,4,16,45,61,'C4','10th',7,6,6,19,50,69,'B3','5th',8,7,6,21,54,75,'A1','4th',205,68.33,'4th','',''),(12,'Livinus Mary ','F','11,July,2003',7,7,6,20,30,50,'C6','14th',8,7,7,22,58,80,'A1','1st',8,7,3,18,65,83,'A1','1st',213,71,'1st','',''),(13,'Okoli Sunday ','M','24,December,2003',6,6,6,18,28,46,'D7','16th',8,7,6,21,54,75,'A1','2nd',7,0,7,14,41,55,'C5','14th',176,58.67,'11th','',''),(14,'Okpube Loveline ','F','21,November,2003',8,6,6,20,37,57,'C5','11th',8,6,6,20,39,59,'C5','14th',7,5,0,12,45,57,'C5','11th',173,57.67,'13th','',''),(15,'Owah Ifeanyi ','M','30,October,2001',7,7,5,19,48,67,'B3','4th',8,6,5,19,44,63,'C4','10th',7,5,4,16,51,67,'B3','6th',197,65.67,'6th','',''),(16,'Tokpa Elizabeth ','F','3,April,2003',8,5,8,21,29,50,'C6','14th',8,6,5,19,43,62,'C4','11th',6,0,7,13,32,45,'D7','18th',157,52.33,'17th','',''),(17,'Urhoma Glory ','F','25,June,2003',7,5,5,17,56,73,'B2','1st',7,6,6,19,48,67,'B3','7th',5,5,5,15,40,55,'C5','14th',195,65,'7th','',''),(18,'Aruoba Chiamaka ','F','20,August,2002',8,7,7,22,30,52,'C6','13th',5,4,4,13,40,53,'C6','17th',7,7,7,21,34,55,'C5','14th',160,53.33,'16th','',''),(19,'Nnayelugo Tochukwu ','M','30,August,2004',7,7,4,18,45,63,'C4','9th',6,5,8,19,48,67,'B3','7th',7,6,0,13,43,56,'C5','13th',186,62,'10th','','');
/*!40000 ALTER TABLE `ss1a_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_2nd_term`
--

DROP TABLE IF EXISTS `ss1a_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `DIN_ca1` double NOT NULL,
  `DIN_ca2` double NOT NULL,
  `DIN_ca3` double NOT NULL,
  `DIN_ca_total` double NOT NULL,
  `DIN_exam` double NOT NULL,
  `Total_DIN` double NOT NULL,
  `DIN_grade` text NOT NULL,
  `DIN_pos` text NOT NULL,
  `GMK_ca1` double NOT NULL,
  `GMK_ca2` double NOT NULL,
  `GMK_ca3` double NOT NULL,
  `GMK_ca_total` double NOT NULL,
  `GMK_exam` double NOT NULL,
  `Total_GMK` double NOT NULL,
  `GMK_grade` text NOT NULL,
  `GMK_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_2nd_term`
--

LOCK TABLES `ss1a_2nd_term` WRITE;
/*!40000 ALTER TABLE `ss1a_2nd_term` DISABLE KEYS */;
INSERT INTO `ss1a_2nd_term` VALUES (1,'Ahmed Saad Mohammed','M','27,November,2003',7,6,5,18,35,53,'C6','15th',8,7,6,21,40,61,'C4','10th',9,8,6,23,40,63,'C4','11th',177,59,'11th','',''),(2,'Aniebona Favour ','F','6,November,2004',8,6,4,18,39,57,'C5','13th',8,6,5,19,37,56,'C5','14th',9,9,8,26,45,71,'B2','4th',184,61.33,'7th','',''),(3,'Akpan Godwin ','M','14,February,2002',7,7,6,20,52,72,'B2','2nd',7,7,7,21,54,75,'A1','2nd',7,0,8,15,20,35,'F9','19th',182,60.67,'10th','',''),(4,'Anyadiegwu Victory ','F','30,March,2002',6,2,7,15,40,55,'C5','14th',9,7,7,23,38,61,'C4','10th',8,6,5,19,53,72,'B2','3rd',188,62.67,'6th','',''),(5,'Benneth Emmanuel ','M','4,October,2003',6,6,4,16,43,59,'C5','11th',8,6,5,19,53,72,'B2','4th',8,7,7,22,44,66,'B3','6th',197,65.67,'4th','',''),(6,'Bulus Samson Oche','M','12,May,2001',4,2,2,8,27,35,'F9','19th',8,8,6,22,40,62,'C4','7th',7,6,5,18,35,53,'C6','16th',150,50,'18th','',''),(7,'Dilibe Emmanuel ','M','1,December,2003',7,6,6,19,44,63,'C4','8th',2,5,5,12,20,32,'F9','18th',6,6,8,20,45,65,'B3','8th',160,53.33,'17th','',''),(8,'Erhrunse Gift ','F','30,September,2004',7,6,6,19,46,65,'B3','7th',4,5,2,11,30,41,'E8','17th',7,6,5,18,38,56,'C5','14th',162,54,'16th','',''),(9,'Ebiyei Mary ','F','31,January,2004',6,5,4,15,48,63,'C4','8th',7,6,5,18,39,57,'C5','13th',6,5,6,17,47,64,'C4','10th',184,61.33,'7th','',''),(10,'Joel Jeremiah ','M','22,May,2002',2,6,5,13,38,51,'C6','16th',2,2,2,6,25,31,'F9','19th',8,6,7,21,45,66,'B3','6th',148,49.33,'19th','',''),(11,'Lazarus Chiamaka ','F','9,October,2002',8,6,5,19,39,58,'C5','12th',4,4,8,16,44,60,'C4','11th',4,6,5,15,44,59,'C5','12th',177,59,'11th','',''),(12,'Livinus Mary ','F','11,July,2003',8,6,5,19,49,68,'B3','4th',5,8,5,18,57,75,'A1','2nd',7,8,5,20,55,75,'A1','1st',218,72.67,'1st','',''),(13,'Okoli Sunday ','M','24,December,2003',5,5,5,15,45,60,'C4','10th',3,4,2,9,40,49,'D7','16th',7,7,6,20,35,55,'C5','15th',164,54.67,'15th','',''),(14,'Okpube Loveline ','F','21,November,2003',6,7,6,19,48,67,'B3','5th',7,5,8,20,50,70,'B2','5th',8,6,5,19,38,57,'C5','13th',194,64.67,'5th','',''),(15,'Owah Ifeanyi ','M','30,October,2001',6,7,5,18,56,74,'B2','1st',4,5,3,12,44,56,'C5','14th',8,6,7,21,54,75,'A1','1st',205,68.33,'2nd','',''),(16,'Tokpa Elizabeth ','F','3,April,2003',5,4,7,16,25,41,'E8','18th',5,5,5,15,45,60,'C4','11th',7,6,6,19,51,70,'B2','5th',171,57,'14th','',''),(17,'Urhoma Glory ','F','25,June,2003',8,6,7,21,30,51,'C6','16th',3,6,5,14,48,62,'C4','7th',8,8,8,24,40,64,'C4','10th',177,59,'11th','',''),(18,'Aruoba Chiamaka ','F','20,August,2002',5,7,5,17,54,71,'B2','3rd',8,8,8,24,55,79,'A1','1st',3,5,4,12,36,48,'D7','17th',198,66,'3rd','',''),(19,'Nnayelugo Tochukwu ','M','30,August,2004',6,7,5,18,48,66,'B3','6th',7,7,7,21,48,69,'B3','6th',7,8,7,22,25,47,'D7','18th',182,60.67,'10th','','');
/*!40000 ALTER TABLE `ss1a_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_3rd_term`
--

DROP TABLE IF EXISTS `ss1a_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `GMK_ca1` double NOT NULL,
  `GMK_ca2` double NOT NULL,
  `GMK_ca3` double NOT NULL,
  `GMK_ca_total` double NOT NULL,
  `GMK_exam` double NOT NULL,
  `Total_GMK` double NOT NULL,
  `GMK_grade` text NOT NULL,
  `GMK_pos` text NOT NULL,
  `DIN_ca1` double NOT NULL,
  `DIN_ca2` double NOT NULL,
  `DIN_ca3` double NOT NULL,
  `DIN_ca_total` double NOT NULL,
  `DIN_exam` double NOT NULL,
  `Total_DIN` double NOT NULL,
  `DIN_grade` text NOT NULL,
  `DIN_pos` text NOT NULL,
  `ECO_ca1` double NOT NULL,
  `ECO_ca2` double NOT NULL,
  `ECO_ca3` double NOT NULL,
  `ECO_ca_total` double NOT NULL,
  `ECO_exam` double NOT NULL,
  `Total_ECO` double NOT NULL,
  `ECO_grade` text NOT NULL,
  `ECO_pos` text NOT NULL,
  `BEL_ca1` double NOT NULL,
  `BEL_ca2` double NOT NULL,
  `BEL_ca3` double NOT NULL,
  `BEL_ca_total` double NOT NULL,
  `BEL_exam` double NOT NULL,
  `Total_BEL` double NOT NULL,
  `BEL_grade` text NOT NULL,
  `BEL_pos` text NOT NULL,
  `ELC_ca1` double NOT NULL,
  `ELC_ca2` double NOT NULL,
  `ELC_ca3` double NOT NULL,
  `ELC_ca_total` double NOT NULL,
  `ELC_exam` double NOT NULL,
  `Total_ELC` double NOT NULL,
  `ELC_grade` text NOT NULL,
  `ELC_pos` text NOT NULL,
  `WOW_ca1` double NOT NULL,
  `WOW_ca2` double NOT NULL,
  `WOW_ca3` double NOT NULL,
  `WOW_ca_total` double NOT NULL,
  `WOW_exam` double NOT NULL,
  `Total_WOW` double NOT NULL,
  `WOW_grade` text NOT NULL,
  `WOW_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `TDR_ca1` double NOT NULL,
  `TDR_ca2` double NOT NULL,
  `TDR_ca3` double NOT NULL,
  `TDR_ca_total` double NOT NULL,
  `TDR_exam` double NOT NULL,
  `Total_TDR` double NOT NULL,
  `TDR_grade` text NOT NULL,
  `TDR_pos` text NOT NULL,
  `BUT_ca1` double NOT NULL,
  `BUT_ca2` double NOT NULL,
  `BUT_ca3` double NOT NULL,
  `BUT_ca_total` double NOT NULL,
  `BUT_exam` double NOT NULL,
  `Total_BUT` double NOT NULL,
  `BUT_grade` text NOT NULL,
  `BUT_pos` text NOT NULL,
  `CIV_ca1` double NOT NULL,
  `CIV_ca2` double NOT NULL,
  `CIV_ca3` double NOT NULL,
  `CIV_ca_total` double NOT NULL,
  `CIV_exam` double NOT NULL,
  `Total_CIV` double NOT NULL,
  `CIV_grade` text NOT NULL,
  `CIV_pos` text NOT NULL,
  `CRS_ca1` double NOT NULL,
  `CRS_ca2` double NOT NULL,
  `CRS_ca3` double NOT NULL,
  `CRS_ca_total` double NOT NULL,
  `CRS_exam` double NOT NULL,
  `Total_CRS` double NOT NULL,
  `CRS_grade` text NOT NULL,
  `CRS_pos` text NOT NULL,
  `AGR_ca1` double NOT NULL,
  `AGR_ca2` double NOT NULL,
  `AGR_ca3` double NOT NULL,
  `AGR_ca_total` double NOT NULL,
  `AGR_exam` double NOT NULL,
  `Total_AGR` double NOT NULL,
  `AGR_grade` text NOT NULL,
  `AGR_pos` text NOT NULL,
  `ANH_ca1` double NOT NULL,
  `ANH_ca2` double NOT NULL,
  `ANH_ca3` double NOT NULL,
  `ANH_ca_total` double NOT NULL,
  `ANH_exam` double NOT NULL,
  `Total_ANH` double NOT NULL,
  `ANH_grade` text NOT NULL,
  `ANH_pos` text NOT NULL,
  `ENG_ca1` double NOT NULL,
  `ENG_ca2` double NOT NULL,
  `ENG_ca3` double NOT NULL,
  `ENG_ca_total` double NOT NULL,
  `ENG_exam` double NOT NULL,
  `Total_ENG` double NOT NULL,
  `ENG_grade` text NOT NULL,
  `ENG_pos` text NOT NULL,
  `GOV_ca1` double NOT NULL,
  `GOV_ca2` double NOT NULL,
  `GOV_ca3` double NOT NULL,
  `GOV_ca_total` double NOT NULL,
  `GOV_exam` double NOT NULL,
  `Total_GOV` double NOT NULL,
  `GOV_grade` text NOT NULL,
  `GOV_pos` text NOT NULL,
  `BIO_ca1` double NOT NULL,
  `BIO_ca2` double NOT NULL,
  `BIO_ca3` double NOT NULL,
  `BIO_ca_total` double NOT NULL,
  `BIO_exam` double NOT NULL,
  `Total_BIO` double NOT NULL,
  `BIO_grade` text NOT NULL,
  `BIO_pos` text NOT NULL,
  `COM_ca1` double NOT NULL,
  `COM_ca2` double NOT NULL,
  `COM_ca3` double NOT NULL,
  `COM_ca_total` double NOT NULL,
  `COM_exam` double NOT NULL,
  `Total_COM` double NOT NULL,
  `COM_grade` text NOT NULL,
  `COM_pos` text NOT NULL,
  `FAC_ca1` double NOT NULL,
  `FAC_ca2` double NOT NULL,
  `FAC_ca3` double NOT NULL,
  `FAC_ca_total` double NOT NULL,
  `FAC_exam` double NOT NULL,
  `Total_FAC` double NOT NULL,
  `FAC_grade` text NOT NULL,
  `FAC_pos` text NOT NULL,
  `MTH_ca1` double NOT NULL,
  `MTH_ca2` double NOT NULL,
  `MTH_ca3` double NOT NULL,
  `MTH_ca_total` double NOT NULL,
  `MTH_exam` double NOT NULL,
  `Total_MTH` double NOT NULL,
  `MTH_grade` text NOT NULL,
  `MTH_pos` text NOT NULL,
  `LIT_ca1` double NOT NULL,
  `LIT_ca2` double NOT NULL,
  `LIT_ca3` double NOT NULL,
  `LIT_ca_total` double NOT NULL,
  `LIT_exam` double NOT NULL,
  `Total_LIT` double NOT NULL,
  `LIT_grade` text NOT NULL,
  `LIT_pos` text NOT NULL,
  `GEO_ca1` double NOT NULL,
  `GEO_ca2` double NOT NULL,
  `GEO_ca3` double NOT NULL,
  `GEO_ca_total` double NOT NULL,
  `GEO_exam` double NOT NULL,
  `Total_GEO` double NOT NULL,
  `GEO_grade` text NOT NULL,
  `GEO_pos` text NOT NULL,
  `PHY_ca1` double NOT NULL,
  `PHY_ca2` double NOT NULL,
  `PHY_ca3` double NOT NULL,
  `PHY_ca_total` double NOT NULL,
  `PHY_exam` double NOT NULL,
  `Total_PHY` double NOT NULL,
  `PHY_grade` text NOT NULL,
  `PHY_pos` text NOT NULL,
  `CHM_ca1` double NOT NULL,
  `CHM_ca2` double NOT NULL,
  `CHM_ca3` double NOT NULL,
  `CHM_ca_total` double NOT NULL,
  `CHM_exam` double NOT NULL,
  `Total_CHM` double NOT NULL,
  `CHM_grade` text NOT NULL,
  `CHM_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_3rd_term`
--

LOCK TABLES `ss1a_3rd_term` WRITE;
/*!40000 ALTER TABLE `ss1a_3rd_term` DISABLE KEYS */;
INSERT INTO `ss1a_3rd_term` VALUES (1,'Ahmed Saad Mohammed','M','27,November,2003',5,5,6,16,38,54,'C6','9th',5,1,1,7,22,29,'F9','15th',3,5,6,14,26,40,'E8','14th',1,1,1,3,8,11,'F9','19th',5,5,10,20,10,30,'F9','12th',8,9,5,22,43,65,'B3','8th',2,2,0,4,55,59,'C5','8th',3,6,5,14,46,60,'C4','2nd',5,0,6,11,32,43,'E8','14th',3,8,0,11,48,59,'C5','9th',1,1,8,10,25,35,'F9','16th',2,2,8,12,39,51,'C6','15th',6,2,2,10,25,35,'F9','16th',5,5,5,15,24,39,'F9','13th',5,7,8,20,11,31,'F9','18th',10,6,10,26,55,81,'A1','8th',8,8,9,25,34,59,'C5','7th',6,5,7,18,30,48,'D7','11th',5,7,6,18,36,54,'C6','8th',5,4,8,17,35,52,'C6','17th',7,4,10,21,30,51,'C6','8th',1,2,8,11,37,48,'D7','9th',5,3,5,13,17,30,'F9','15th',1064,46.26,'11th','Average result; improve on the following subject(s): Government and Basic Electricity','An average result; you can do better. promoted to next class'),(2,'Aniebona Favour ','F','6,November,2004',9,8,8,25,45,70,'B2','5th',10,10,10,30,25,55,'C5','5th',5,5,6,16,35,51,'C6','5th',0,5,0,5,33,38,'F9','11th',3,5,5,13,33,46,'D7','4th',10,2,0,12,61,73,'B2','3rd',6,6,7,19,49,68,'B3','5th',6,0,5,11,27,38,'F9','11th',7,9,10,26,35,61,'C4','3rd',7,9,10,26,41,67,'B3','6th',5,4,9,18,29,47,'D7','7th',2,6,8,16,49,65,'B3','8th',8,5,7,20,43,63,'C4','4th',5,5,5,15,44,59,'C5','3rd',9,8,8,25,34,59,'C5','5th',10,10,10,30,55,85,'A1','7th',9,6,9,24,37,61,'C4','6th',8,5,6,19,40,59,'C5','4th',6,9,7,22,44,66,'B3','4th',5,9,10,24,50,74,'B2','2nd',5,6,10,21,52,73,'B2','4th',4,4,10,18,44,62,'C4','6th',7,6,5,18,36,54,'C6','6th',1394,60.61,'4th','Good performance, but work harder on Christian religious knowledge','Promoted to next class.'),(3,'Akpan Godwin ','M','14,February,2002',4,5,6,15,28,43,'E8','16th',3,1,1,5,24,29,'F9','15th',5,6,6,17,34,51,'C6','5th',10,10,4,24,30,54,'C6','4th',6,4,5,15,20,35,'F9','8th',7,8,5,20,47,67,'B3','6th',8,8,0,16,35,51,'C6','12th',6,0,5,11,29,40,'E8','10th',5,8,8,21,28,49,'D7','8th',0,7,10,17,29,46,'D7','16th',2,1,9,12,32,44,'E8','9th',2,6,4,12,39,51,'C6','15th',7,2,2,11,20,31,'F9','19th',5,5,5,15,20,35,'F9','16th',7,5,8,20,29,49,'D7','7th',10,7,10,27,46,73,'B2','16th',8,7,9,24,23,47,'D7','9th',7,5,6,18,34,52,'C6','7th',6,7,7,20,38,58,'C5','7th',6,7,10,23,37,60,'C4','12th',3,2,4,9,24,33,'F9','17th',3,5,8,16,30,46,'D7','11th',4,2,5,11,17,28,'F9','17th',1072,46.61,'10th','You tried in other subjects, but you can do better than this','An average result; you can do better. promoted'),(4,'Anyadiegwu Victory ','F','30,March,2002',6,5,6,17,35,52,'C6','10th',8,1,1,10,10,20,'F9','18th',3,5,5,13,27,40,'E8','14th',10,2,5,17,33,50,'C6','5th',6,5,10,21,25,46,'D7','4th',6,2,0,8,32,40,'E8','16th',0,0,10,10,33,43,'E8','16th',6,0,5,11,24,35,'F9','12th',0,0,10,10,33,43,'E8','14th',5,8,10,23,40,63,'C4','8th',4,1,10,15,36,51,'C6','6th',10,5,9,24,46,70,'B2','4th',5,5,7,17,27,44,'E8','14th',5,5,5,15,17,32,'F9','19th',5,7,8,20,15,35,'F9','16th',10,9,10,29,44,73,'B2','16th',7,3,9,19,24,43,'E8','11th',4,6,6,16,33,49,'D7','10th',5,4,6,15,39,54,'C6','8th',5,5,9,19,44,63,'C4','11th',4,1,6,11,28,39,'F9','14th',5,2,10,17,36,53,'C6','7th',6,2,10,18,19,37,'F9','10th',1075,46.74,'9th','Average result; improve on your studies','An average result; you can do better. promoted next class'),(5,'Benneth Emmanuel ','M','4,October,2003',9,8,9,26,46,72,'B2','4th',5,10,5,20,2,22,'F9','17th',7,7,8,22,35,57,'C5','4th',10,5,1,16,40,56,'C5','3rd',7,5,10,22,65,87,'A1','1st',10,7,4,21,65,86,'A1','1st',6,6,10,22,61,83,'A1','1st',7,0,5,12,46,58,'C5','3rd',10,7,10,27,34,61,'C4','3rd',10,8,10,28,52,80,'A1','1st',9,3,10,22,39,61,'C4','3rd',5,1,9,15,53,68,'B3','5th',9,1,10,20,45,65,'B3','3rd',5,5,5,15,26,41,'E8','12th',8,5,8,21,43,64,'C4','4th',10,10,10,30,64,94,'A1','2nd',10,5,9,24,49,73,'B2','4th',6,5,3,14,50,64,'C4','3rd',5,4,6,15,53,68,'B3','3rd',5,6,9,20,53,73,'B2','3rd',5,5,8,18,59,77,'A1','3rd',4,9,10,23,55,78,'A1','2nd',10,10,10,30,49,79,'A1','1st',1567,68.13,'3rd','An excellent result, but  you can do better than this','Promoted to next class.'),(6,'Bulus Samson Oche','M','12,May,2001',6,6,6,18,30,48,'D7','13th',1,1,1,3,27,30,'F9','14th',2,5,5,12,25,37,'F9','17th',1,1,1,3,25,28,'F9','16th',1,1,1,3,1,4,'F9','19th',4,2,0,6,26,32,'F9','19th',0,0,0,0,39,39,'F9','18th',0,0,5,5,27,32,'F9','16th',0,0,0,0,25,25,'F9','18th',5,0,0,5,35,40,'E8','19th',3,1,8,12,24,36,'F9','13th',2,8,2,12,30,42,'E8','19th',7,4,2,13,33,46,'D7','10th',5,5,5,15,29,44,'E8','10th',5,6,8,19,19,38,'F9','15th',10,7,10,27,51,78,'A1','10th',7,3,9,19,22,41,'E8','13th',7,4,6,17,24,41,'E8','17th',5,6,7,18,22,40,'E8','16th',6,3,8,17,35,52,'C6','17th',0,2,4,6,37,43,'E8','12th',3,1,1,5,24,29,'F9','19th',4,3,5,12,14,26,'F9','19th',871,37.87,'19th','A very good result, wake up from your slumber and study your books','A poor performance; sit up and work harder. repeated'),(7,'Dilibe Emmanuel ','M','1,December,2003',5,5,5,15,28,43,'E8','16th',1,6,7,14,28,42,'E8','11th',5,6,5,16,20,36,'F9','19th',6,10,1,17,20,37,'F9','12th',4,3,2,9,10,19,'F9','17th',7,2,0,9,36,45,'D7','14th',6,6,10,22,32,54,'C6','10th',3,0,5,8,37,45,'D7','4th',4,10,10,24,28,52,'C6','7th',6,0,0,6,36,42,'E8','18th',6,1,10,17,25,42,'E8','11th',5,5,5,15,36,51,'C6','15th',8,3,5,16,30,46,'D7','10th',5,5,5,15,23,38,'F9','14th',6,7,8,21,21,42,'E8','12th',10,8,10,28,46,74,'B2','14th',6,3,9,18,23,41,'E8','13th',6,7,3,16,30,46,'D7','14th',5,5,6,16,20,36,'F9','19th',5,3,8,16,24,40,'E8','19th',5,3,8,16,28,44,'E8','11th',2,2,10,14,26,40,'E8','16th',4,4,8,16,14,30,'F9','15th',985,42.83,'15th','A fair result,study harder next term','A fair performance; try harder. promoted on trial'),(8,'Erhrunse Gift ','F','30,September,2004',9,8,8,25,53,78,'A1','1st',1,5,6,12,48,60,'C4','4th',6,6,7,19,40,59,'C5','3rd',10,1,1,12,27,39,'F9','10th',2,5,5,12,28,40,'E8','6th',6,5,0,11,55,66,'B3','7th',6,6,10,22,49,71,'B2','4th',6,0,5,11,29,40,'E8','10th',7,9,10,26,36,62,'C4','2nd',9,9,10,28,40,68,'B3','5th',4,1,9,14,47,61,'C4','3rd',8,6,5,19,49,68,'B3','5th',7,3,2,12,23,35,'F9','16th',5,5,5,15,47,62,'C4','1st',7,8,4,19,33,52,'C6','6th',10,10,10,30,60,90,'A1','4th',10,3,9,22,42,64,'C4','5th',6,7,5,18,35,53,'C6','5th',5,6,8,19,31,50,'C6','11th',5,7,9,21,51,72,'B2','5th',7,5,8,20,52,72,'B2','5th',5,5,10,20,48,68,'B3','5th',6,8,8,22,35,57,'C5','4th',1387,60.3,'5th','Good performance, but work harder  next term.','Promoted to next class.'),(9,'Ebiyei Mary ','F','31,January,2004',5,5,6,16,25,41,'E8','18th',10,5,1,16,30,46,'D7','9th',3,5,5,13,28,41,'E8','12th',1,1,1,3,10,13,'F9','18th',4,5,10,19,15,34,'F9','10th',9,8,4,21,38,59,'C5','9th',5,5,0,10,21,31,'F9','19th',6,0,5,11,24,35,'F9','12th',9,0,0,9,0,9,'F9','19th',8,0,10,18,40,58,'C5','10th',2,1,8,11,24,35,'F9','16th',10,1,8,19,37,56,'C5','12th',8,6,10,24,39,63,'C4','4th',5,5,5,15,20,35,'F9','16th',6,7,4,17,25,42,'E8','12th',10,6,10,26,48,74,'B2','14th',0,5,9,14,20,34,'F9','17th',6,6,4,16,28,44,'E8','15th',5,4,6,15,22,37,'F9','17th',6,8,8,22,42,64,'C4','10th',5,1,4,10,27,37,'F9','15th',4,1,8,13,24,37,'F9','17th',3,2,10,15,18,33,'F9','14th',958,41.65,'16th','A fair result,work harder.','A fair performance; try harder.promoted to next class on trial'),(10,'Joel Jeremiah ','M','22,May,2002',5,5,5,15,25,40,'E8','19th',9,10,10,29,25,54,'C6','6th',2,5,5,12,25,37,'F9','17th',10,1,10,21,10,31,'F9','15th',4,5,5,14,11,25,'F9','15th',5,2,0,7,36,43,'E8','15th',8,8,0,16,28,44,'E8','15th',0,0,5,5,25,30,'F9','18th',5,5,10,20,20,40,'E8','16th',3,5,10,18,29,47,'D7','15th',1,1,8,10,26,36,'F9','13th',2,7,4,13,40,53,'C6','14th',7,3,2,12,23,35,'F9','16th',5,5,5,15,32,47,'D7','7th',4,7,4,15,15,30,'F9','19th',10,7,10,27,44,71,'B2','19th',7,0,9,16,26,42,'E8','12th',7,4,5,16,32,48,'D7','11th',7,4,4,15,22,37,'F9','17th',4,6,9,19,39,58,'C5','14th',3,4,5,12,24,36,'F9','16th',3,4,8,15,20,35,'F9','18th',3,4,7,14,22,36,'F9','11th',955,41.52,'17th','A fair result,put more effort in your studies.','A fair performance; try harder.promoted to next class on trial'),(11,'Lazarus Chiamaka ','F','9,October,2002',5,5,5,15,30,45,'D7','14th',10,5,1,16,21,37,'F9','12th',3,4,5,12,30,42,'E8','11th',10,7,7,24,23,47,'D7','7th',2,3,5,10,12,22,'F9','16th',8,5,4,17,40,57,'C5','10th',6,6,9,21,39,60,'C4','7th',3,0,5,8,25,33,'F9','14th',4,0,10,14,30,44,'E8','13th',6,0,10,16,36,52,'C6','13th',7,1,10,18,17,35,'F9','16th',10,4,8,22,42,64,'C4','10th',8,3,2,13,27,40,'E8','15th',5,5,5,15,20,35,'F9','16th',6,8,8,22,24,46,'D7','10th',10,10,10,30,46,76,'A1','12th',3,3,9,15,17,32,'F9','18th',7,5,6,18,33,51,'C6','8th',6,5,7,18,42,60,'C4','5th',4,6,8,18,37,55,'C5','15th',5,4,4,13,15,28,'F9','19th',5,2,10,17,25,42,'E8','14th',4,4,10,18,18,36,'F9','11th',1039,45.17,'14th','This is a fair result,try harder.','A fair performance; try harder. promoted to next class'),(12,'Livinus Mary ','F','11,July,2003',9,8,8,25,52,77,'A1','2nd',5,10,10,25,49,74,'B2','2nd',9,8,9,26,50,76,'A1','1st',10,10,10,30,48,78,'A1','1st',9,5,10,24,54,78,'A1','2nd',9,5,5,19,64,83,'A1','2nd',5,5,10,20,59,79,'A1','3rd',8,9,5,22,61,83,'A1','1st',9,9,10,28,55,83,'A1','1st',10,7,10,27,51,78,'A1','3rd',10,8,10,28,46,74,'B2','1st',10,8,4,22,57,79,'A1','1st',9,8,10,27,48,75,'A1','1st',5,5,5,15,46,61,'C4','2nd',10,8,8,26,54,80,'A1','1st',10,10,10,30,62,92,'A1','3rd',10,6,9,25,55,80,'A1','2nd',8,6,7,21,56,77,'A1','1st',8,9,8,25,60,85,'A1','1st',10,9,9,28,54,82,'A1','1st',7,9,10,26,59,85,'A1','2nd',8,9,10,27,52,79,'A1','1st',10,8,10,28,50,78,'A1','2nd',1816,78.96,'1st','An excellent result; keep it up','An excellent result, keep it up!promoted to next class'),(13,'Okoli Sunday ','M','24,December,2003',6,5,5,16,33,49,'D7','12th',3,10,10,23,25,48,'D7','7th',4,5,5,14,26,40,'E8','14th',10,10,4,24,22,46,'D7','8th',9,4,10,23,15,38,'F9','7th',4,2,0,6,44,50,'C6','13th',7,7,0,14,43,57,'C5','9th',8,0,5,13,29,42,'E8','5th',9,0,10,19,30,49,'D7','8th',7,4,10,21,37,58,'C5','10th',10,1,10,21,21,42,'E8','11th',10,5,5,20,51,71,'B2','3rd',2,4,7,13,36,49,'D7','9th',5,5,5,15,38,53,'C6','6th',5,5,8,18,30,48,'D7','8th',10,8,10,28,53,81,'A1','8th',9,4,9,22,26,48,'D7','8th',6,8,5,19,34,53,'C6','5th',5,4,7,16,29,45,'D7','13th',5,5,8,18,47,65,'B3','7th',5,6,10,21,25,46,'D7','10th',4,4,10,18,35,53,'C6','7th',4,5,10,19,22,41,'E8','7th',1172,50.96,'7th','Average result; improve on your studies.','Promoted to next class.'),(14,'Okpube Loveline ','F','21,November,2003',9,8,8,25,48,73,'B2','3rd',7,10,8,25,57,82,'A1','1st',7,6,7,20,48,68,'B3','2nd',1,10,8,19,52,71,'B2','2nd',2,4,5,11,47,58,'C5','3rd',7,9,0,16,54,70,'B2','4th',6,6,9,21,60,81,'A1','2nd',7,3,5,15,25,40,'E8','10th',6,9,10,25,31,56,'C5','5th',7,8,10,25,54,79,'A1','2nd',7,6,10,23,46,69,'B3','2nd',8,4,4,16,58,74,'B2','2nd',7,5,10,22,50,72,'B2','2nd',5,5,5,15,42,57,'C5','4th',9,8,4,21,44,65,'B3','3rd',10,10,10,30,69,99,'A1','1st',10,7,9,26,56,82,'A1','1st',6,8,5,19,47,66,'B3','2nd',5,7,8,20,39,59,'C5','6th',4,7,8,19,49,68,'B3','6th',7,10,10,27,64,91,'A1','1st',8,6,10,24,48,72,'B2','4th',7,7,9,23,53,76,'A1','3rd',1628,70.78,'2nd','An excellent performance; but you can be the first.','An excellent result, keep it up! promoted to next class'),(15,'Owah Ifeanyi ','M','30,October,2001',5,6,6,17,35,52,'C6','10th',9,1,10,20,42,62,'C4','3rd',2,5,5,12,29,41,'E8','12th',10,10,5,25,10,35,'F9','13th',6,5,5,16,16,32,'F9','11th',3,5,0,8,28,36,'F9','17th',6,6,10,22,39,61,'C4','6th',6,0,5,11,30,41,'E8','6th',8,6,10,24,21,45,'D7','11th',5,7,10,22,31,53,'C6','12th',5,1,10,16,31,47,'D7','7th',8,8,7,23,41,64,'C4','10th',7,5,10,22,40,62,'C4','6th',5,5,5,15,32,47,'D7','7th',5,7,8,20,23,43,'E8','11th',10,10,10,30,56,86,'A1','6th',1,2,9,12,19,31,'F9','19th',6,8,6,20,28,48,'D7','11th',7,8,8,23,46,69,'B3','2nd',8,3,10,21,32,53,'C6','16th',6,4,9,19,39,58,'C5','7th',3,4,10,17,30,47,'D7','10th',5,4,9,18,19,37,'F9','10th',1150,50,'8th','Average result; study harder.','A very great improvement, keep moving. promoted'),(16,'Tokpa Elizabeth ','F','3,April,2003',7,7,6,20,40,60,'C4','8th',6,8,1,15,28,43,'E8','10th',5,5,6,16,35,51,'C6','5th',1,1,10,12,33,45,'D7','9th',7,5,5,17,18,35,'F9','8th',7,5,4,16,54,70,'B2','4th',0,0,10,10,33,43,'E8','16th',6,0,5,11,22,33,'F9','14th',9,9,10,28,25,53,'C6','6th',6,8,10,24,47,71,'B2','4th',4,3,9,16,44,60,'C4','5th',2,5,8,15,53,68,'B3','5th',8,2,2,12,42,54,'C6','7th',5,5,5,15,39,54,'C6','5th',8,8,8,24,48,72,'B2','2nd',10,9,10,29,59,88,'A1','5th',7,8,9,24,52,76,'A1','3rd',6,7,5,18,33,51,'C6','8th',7,4,3,14,30,44,'E8','14th',10,9,9,28,45,73,'B2','3rd',4,5,10,19,47,66,'B3','6th',6,7,10,23,53,76,'A1','3rd',7,6,10,23,33,56,'C5','5th',1342,58.35,'6th','An average result, study harder.','A good result, but you can do better than this.promoted to next class'),(17,'Urhoma Glory ','F','25,June,2003',9,6,7,22,41,63,'C4','6th',10,8,10,28,20,48,'D7','7th',5,5,5,15,35,50,'C6','8th',8,10,10,28,20,48,'D7','6th',2,5,5,12,18,30,'F9','12th',5,2,0,7,44,51,'C6','12th',5,5,0,10,39,49,'D7','13th',0,0,5,5,27,32,'F9','16th',0,0,10,10,21,31,'F9','17th',4,0,10,14,30,44,'E8','17th',2,1,9,12,24,36,'F9','13th',2,6,9,17,39,56,'C5','12th',8,2,7,17,37,54,'C6','7th',5,5,5,15,32,47,'D7','7th',6,8,8,22,25,47,'D7','9th',10,8,10,28,48,76,'A1','12th',10,2,8,20,25,45,'D7','10th',5,6,5,16,22,38,'F9','18th',5,5,6,16,35,51,'C6','10th',6,7,9,22,43,65,'B3','7th',3,3,9,15,14,29,'F9','18th',4,1,10,15,31,46,'D7','11th',3,4,5,12,15,27,'F9','18th',1063,46.22,'12th','A fair result,put  more effort in your studies.','An average result; you can do better.promoted to next class'),(18,'Aruoba Chiamaka ','F','20,August,2002',4,5,6,15,30,45,'D7','14th',10,1,1,12,22,34,'F9','13th',3,5,5,13,30,43,'E8','10th',1,10,1,12,20,32,'F9','14th',1,5,5,11,6,17,'F9','18th',5,2,0,7,27,34,'F9','18th',6,6,10,22,30,52,'C6','11th',0,5,0,5,22,27,'F9','19th',5,0,10,15,30,45,'D7','11th',6,4,10,20,30,50,'C6','14th',1,1,9,11,20,31,'F9','19th',8,5,5,18,29,47,'D7','18th',5,4,1,10,35,45,'D7','12th',5,5,5,15,23,38,'F9','14th',7,4,4,15,19,34,'F9','17th',10,6,10,26,47,73,'B2','16th',5,2,9,16,22,38,'F9','16th',4,6,5,15,22,37,'F9','19th',5,6,7,18,31,49,'D7','12th',8,6,8,22,38,60,'C4','12th',4,4,10,18,23,41,'E8','13th',3,3,10,16,26,42,'E8','14th',4,4,10,18,18,36,'F9','11th',950,41.3,'18th','Average result; improve on your studies.','A fair performance; try harder.promoted on trial'),(19,'Nnayelugo Tochukwu ','M','30,August,2004',9,8,8,25,38,63,'C4','6th',1,1,1,3,6,9,'F9','19th',4,6,5,15,30,45,'D7','9th',1,1,1,3,15,18,'F9','17th',3,4,3,10,20,30,'F9','12th',8,2,0,10,47,57,'C5','10th',6,6,0,12,36,48,'D7','14th',7,0,5,12,29,41,'E8','6th',6,0,10,16,30,46,'D7','10th',7,0,10,17,47,64,'C4','7th',4,1,5,10,33,43,'E8','10th',2,9,5,16,46,62,'C4','11th',8,3,2,13,32,45,'D7','12th',5,5,5,15,29,44,'E8','10th',6,1,8,15,25,40,'E8','14th',10,7,10,27,50,77,'A1','11th',7,0,9,16,23,39,'F9','15th',5,4,6,15,27,42,'E8','16th',5,5,7,17,27,44,'E8','14th',3,6,9,18,47,65,'B3','7th',5,1,6,12,34,46,'D7','10th',4,5,5,14,31,45,'D7','13th',6,6,5,17,22,39,'F9','8th',1052,45.74,'13th','This is a fair result,study your books.','An average result; you can do better. promoted to the next class');
/*!40000 ALTER TABLE `ss1a_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_psycho_1st_term`
--

DROP TABLE IF EXISTS `ss1a_psycho_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_psycho_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_psycho_1st_term`
--

LOCK TABLES `ss1a_psycho_1st_term` WRITE;
/*!40000 ALTER TABLE `ss1a_psycho_1st_term` DISABLE KEYS */;
INSERT INTO `ss1a_psycho_1st_term` VALUES (1,'Ahmed Saad Mohammed','','','','','','','','','','','','','','','','',''),(2,'Aniebona Favour ','','','','','','','','','','','','','','','','',''),(3,'Akpan Godwin ','','','','','','','','','','','','','','','','',''),(4,'Anyadiegwu Victory ','','','','','','','','','','','','','','','','',''),(5,'Benneth Emmanuel ','','','','','','','','','','','','','','','','',''),(6,'Bulus Samson Oche','','','','','','','','','','','','','','','','',''),(7,'Dilibe Emmanuel ','','','','','','','','','','','','','','','','',''),(8,'Erhrunse Gift ','','','','','','','','','','','','','','','','',''),(9,'Ebiyei Mary ','','','','','','','','','','','','','','','','',''),(10,'Joel Jeremiah ','','','','','','','','','','','','','','','','',''),(11,'Lazarus Chiamaka ','','','','','','','','','','','','','','','','',''),(12,'Livinus Mary ','','','','','','','','','','','','','','','','',''),(13,'Okoli Sunday ','','','','','','','','','','','','','','','','',''),(14,'Okpube Loveline ','','','','','','','','','','','','','','','','',''),(15,'Owah Ifeanyi ','','','','','','','','','','','','','','','','',''),(16,'Tokpa Elizabeth ','','','','','','','','','','','','','','','','',''),(17,'Urhoma Glory ','','','','','','','','','','','','','','','','',''),(18,'Aruoba Chiamaka ','','','','','','','','','','','','','','','','',''),(19,'Nnayelugo Tochukwu ','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `ss1a_psycho_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_psycho_3rd_term`
--

DROP TABLE IF EXISTS `ss1a_psycho_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_psycho_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_psycho_3rd_term`
--

LOCK TABLES `ss1a_psycho_3rd_term` WRITE;
/*!40000 ALTER TABLE `ss1a_psycho_3rd_term` DISABLE KEYS */;
INSERT INTO `ss1a_psycho_3rd_term` VALUES (1,'Ahmed Saad Mohammed','A','B','B','C','A','A','A','A','A','B','A','C','B','B','A','A','A'),(2,'Aniebona Favour ','A','B','B','C','A','A','B','A','A','B','B','C','B','A','B','A','B'),(3,'Akpan Godwin ','A','A','B','B','B','A','A','B','A','C','A','C','B','B','A','A','A'),(4,'Anyadiegwu Victory ','A','B','B','C','A','A','A','B','A','C','B','C','B','B','B','A','C'),(5,'Benneth Emmanuel ','A','B','B','C','B','A','A','B','A','C','C','C','B','C','B','A','A'),(6,'Bulus Samson Oche','B','A','C','D','B','A','A','B','A','C','C','C','B','B','B','B','A'),(7,'Dilibe Emmanuel ','A','A','B','A','A','A','A','B','A','C','B','C','B','A','A','A','A'),(8,'Erhrunse Gift ','A','B','A','B','A','B','B','B','B','C','B','C','B','A','A','A','A'),(9,'Ebiyei Mary ','C','B','B','B','A','A','A','B','A','C','B','C','B','A','B','A','A'),(10,'Joel Jeremiah ','C','A','C','B','A','B','B','A','A','C','B','B','C','A','B','B','A'),(11,'Lazarus Chiamaka ','B','B','C','A','C','A','D','C','A','C','B','B','B','B','C','A','A'),(12,'Livonia  Mary ','A','A','B','B','B','A','C','B','A','C','B','B','B','A','B','B','A'),(13,'Okoli Sunday ','B','A','A','B','B','A','C','B','A','C','B','B','A','B','A','A','A'),(14,'Okpube Loveline ','A','C','A','A','B','A','C','A','A','C','B','B','A','B','B','A','A'),(15,'Owah Ifeanyi ','B','B','A','A','B','A','B','B','B','C','B','B','A','D','C','A','A'),(16,'Tokpa Elizabeth ','B','C','B','A','B','A','C','B','B','C','B','B','A','A','B','A','A'),(17,'Urhoma Glory ','A','B','A','C','C','A','B','B','B','C','B','B','A','B','C','B','B'),(18,'Aruoba Chiamaka ','B','B','C','D','B','B','B','B','B','C','B','A','A','B','C','A','B'),(19,'Nnayelugo Tochukwu ','C','C','C','C','A','B','B','A','C','C','B','A','B','B','B','B','A'),(20,'Livinus Mary ','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `ss1a_psycho_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1a_subjects`
--

DROP TABLE IF EXISTS `ss1a_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1a_subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class` text NOT NULL,
  `subjects` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1a_subjects`
--

LOCK TABLES `ss1a_subjects` WRITE;
/*!40000 ALTER TABLE `ss1a_subjects` DISABLE KEYS */;
INSERT INTO `ss1a_subjects` VALUES (1,'SS 1A','AGR,ANH,BEL,BIO,BUT,CHM,CIV,COM,COS,CRS,DIN,ECO,ELC,ENG,FAC,GEO,GMK,GOV,LIT,MTH,PHY,TDR,WOW');
/*!40000 ALTER TABLE `ss1a_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_1st_term`
--

DROP TABLE IF EXISTS `ss1b_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_1st_term`
--

LOCK TABLES `ss1b_1st_term` WRITE;
/*!40000 ALTER TABLE `ss1b_1st_term` DISABLE KEYS */;
INSERT INTO `ss1b_1st_term` VALUES (1,'Kefas Solomon ','M','14,February,2003',0,0,'','',''),(2,'Odion Naomi ','F','23,February,2004',0,0,'','',''),(4,'Edison Hilda ','F','15,September,2002',0,0,'','',''),(5,'Obiekezie Daniel ','M','8,February,2001',0,0,'','',''),(6,'James Queen ','F','5,May,2002',0,0,'','',''),(7,'Agbo Alex ','M','6,September,2004',0,0,'','',''),(8,'Ephraim Oluebube ','F','10,May,2004',0,0,'','',''),(9,'Ferdinand Victor ','M','1,June,2002',0,0,'','',''),(10,'James Joshua ','M','26,September,2002',0,0,'','',''),(11,'Owah Lazarus ','M','16,June,2003',0,0,'','',''),(12,'Iloegbunam Vincent ','M','28,September,2002',0,0,'','',''),(13,'Akpan Mary ','F','22,September,2003',0,0,'','',''),(14,'Andrew Precious ','F','2,October,2003',0,0,'','',''),(15,'Ebere Nmesoma ','F','9,March,2003',0,0,'','',''),(16,'Lazarus Ifunanya ','F','29,December,2003',0,0,'','',''),(17,'Lebanu Phoebe ','F','24,December,2000',0,0,'','',''),(18,'Okoli Anthonia ','F','29,October,2002',0,0,'','',''),(19,'Wakirina Hyelhirra Daniel','F','22,February,1998',0,0,'','',''),(20,'Umeh Deborah ','F','8,August,2004',0,0,'','','');
/*!40000 ALTER TABLE `ss1b_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_2nd_term`
--

DROP TABLE IF EXISTS `ss1b_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_2nd_term`
--

LOCK TABLES `ss1b_2nd_term` WRITE;
/*!40000 ALTER TABLE `ss1b_2nd_term` DISABLE KEYS */;
INSERT INTO `ss1b_2nd_term` VALUES (1,'Kefas Solomon ','M','14,February,2003',0,0,'','',''),(2,'Odion Naomi ','F','23,February,2004',0,0,'','',''),(4,'Edison Hilda ','F','15,September,2002',0,0,'','',''),(5,'Obiekezie Daniel ','M','8,February,2001',0,0,'','',''),(6,'James Queen ','F','5,May,2002',0,0,'','',''),(7,'Agbo Alex ','M','6,September,2004',0,0,'','',''),(8,'Ephraim Oluebube ','F','10,May,2004',0,0,'','',''),(9,'Ferdinand Victor ','M','1,June,2002',0,0,'','',''),(10,'James Joshua ','M','26,September,2002',0,0,'','',''),(11,'Owah Lazarus ','M','16,June,2003',0,0,'','',''),(12,'Iloegbunam Vincent ','M','28,September,2002',0,0,'','',''),(13,'Akpan Mary ','F','22,September,2003',0,0,'','',''),(14,'Andrew Precious ','F','2,October,2003',0,0,'','',''),(15,'Ebere Nmesoma ','F','9,March,2003',0,0,'','',''),(16,'Lazarus Ifunanya ','F','29,December,2003',0,0,'','',''),(17,'Lebanu Phoebe ','F','24,December,2000',0,0,'','',''),(18,'Okoli Anthonia ','F','29,October,2002',0,0,'','',''),(19,'Wakirina Hyelhirra Daniel','F','22,February,1998',0,0,'','',''),(20,'Umeh Deborah ','F','8,August,2004',0,0,'','','');
/*!40000 ALTER TABLE `ss1b_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_3rd_term`
--

DROP TABLE IF EXISTS `ss1b_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `GMK_ca1` double NOT NULL,
  `GMK_ca2` double NOT NULL,
  `GMK_ca3` double NOT NULL,
  `GMK_ca_total` double NOT NULL,
  `GMK_exam` double NOT NULL,
  `Total_GMK` double NOT NULL,
  `GMK_grade` text NOT NULL,
  `GMK_pos` text NOT NULL,
  `ECO_ca1` double NOT NULL,
  `ECO_ca2` double NOT NULL,
  `ECO_ca3` double NOT NULL,
  `ECO_ca_total` double NOT NULL,
  `ECO_exam` double NOT NULL,
  `Total_ECO` double NOT NULL,
  `ECO_grade` text NOT NULL,
  `ECO_pos` text NOT NULL,
  `DIN_ca1` double NOT NULL,
  `DIN_ca2` double NOT NULL,
  `DIN_ca3` double NOT NULL,
  `DIN_ca_total` double NOT NULL,
  `DIN_exam` double NOT NULL,
  `Total_DIN` double NOT NULL,
  `DIN_grade` text NOT NULL,
  `DIN_pos` text NOT NULL,
  `BEL_ca1` double NOT NULL,
  `BEL_ca2` double NOT NULL,
  `BEL_ca3` double NOT NULL,
  `BEL_ca_total` double NOT NULL,
  `BEL_exam` double NOT NULL,
  `Total_BEL` double NOT NULL,
  `BEL_grade` text NOT NULL,
  `BEL_pos` text NOT NULL,
  `ELC_ca1` double NOT NULL,
  `ELC_ca2` double NOT NULL,
  `ELC_ca3` double NOT NULL,
  `ELC_ca_total` double NOT NULL,
  `ELC_exam` double NOT NULL,
  `Total_ELC` double NOT NULL,
  `ELC_grade` text NOT NULL,
  `ELC_pos` text NOT NULL,
  `WOW_ca1` double NOT NULL,
  `WOW_ca2` double NOT NULL,
  `WOW_ca3` double NOT NULL,
  `WOW_ca_total` double NOT NULL,
  `WOW_exam` double NOT NULL,
  `Total_WOW` double NOT NULL,
  `WOW_grade` text NOT NULL,
  `WOW_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `TDR_ca1` double NOT NULL,
  `TDR_ca2` double NOT NULL,
  `TDR_ca3` double NOT NULL,
  `TDR_ca_total` double NOT NULL,
  `TDR_exam` double NOT NULL,
  `Total_TDR` double NOT NULL,
  `TDR_grade` text NOT NULL,
  `TDR_pos` text NOT NULL,
  `BUT_ca1` double NOT NULL,
  `BUT_ca2` double NOT NULL,
  `BUT_ca3` double NOT NULL,
  `BUT_ca_total` double NOT NULL,
  `BUT_exam` double NOT NULL,
  `Total_BUT` double NOT NULL,
  `BUT_grade` text NOT NULL,
  `BUT_pos` text NOT NULL,
  `CIV_ca1` double NOT NULL,
  `CIV_ca2` double NOT NULL,
  `CIV_ca3` double NOT NULL,
  `CIV_ca_total` double NOT NULL,
  `CIV_exam` double NOT NULL,
  `Total_CIV` double NOT NULL,
  `CIV_grade` text NOT NULL,
  `CIV_pos` text NOT NULL,
  `CRS_ca1` double NOT NULL,
  `CRS_ca2` double NOT NULL,
  `CRS_ca3` double NOT NULL,
  `CRS_ca_total` double NOT NULL,
  `CRS_exam` double NOT NULL,
  `Total_CRS` double NOT NULL,
  `CRS_grade` text NOT NULL,
  `CRS_pos` text NOT NULL,
  `AGR_ca1` double NOT NULL,
  `AGR_ca2` double NOT NULL,
  `AGR_ca3` double NOT NULL,
  `AGR_ca_total` double NOT NULL,
  `AGR_exam` double NOT NULL,
  `Total_AGR` double NOT NULL,
  `AGR_grade` text NOT NULL,
  `AGR_pos` text NOT NULL,
  `ENG_ca1` double NOT NULL,
  `ENG_ca2` double NOT NULL,
  `ENG_ca3` double NOT NULL,
  `ENG_ca_total` double NOT NULL,
  `ENG_exam` double NOT NULL,
  `Total_ENG` double NOT NULL,
  `ENG_grade` text NOT NULL,
  `ENG_pos` text NOT NULL,
  `ANH_ca1` double NOT NULL,
  `ANH_ca2` double NOT NULL,
  `ANH_ca3` double NOT NULL,
  `ANH_ca_total` double NOT NULL,
  `ANH_exam` double NOT NULL,
  `Total_ANH` double NOT NULL,
  `ANH_grade` text NOT NULL,
  `ANH_pos` text NOT NULL,
  `BIO_ca1` double NOT NULL,
  `BIO_ca2` double NOT NULL,
  `BIO_ca3` double NOT NULL,
  `BIO_ca_total` double NOT NULL,
  `BIO_exam` double NOT NULL,
  `Total_BIO` double NOT NULL,
  `BIO_grade` text NOT NULL,
  `BIO_pos` text NOT NULL,
  `GOV_ca1` double NOT NULL,
  `GOV_ca2` double NOT NULL,
  `GOV_ca3` double NOT NULL,
  `GOV_ca_total` double NOT NULL,
  `GOV_exam` double NOT NULL,
  `Total_GOV` double NOT NULL,
  `GOV_grade` text NOT NULL,
  `GOV_pos` text NOT NULL,
  `COM_ca1` double NOT NULL,
  `COM_ca2` double NOT NULL,
  `COM_ca3` double NOT NULL,
  `COM_ca_total` double NOT NULL,
  `COM_exam` double NOT NULL,
  `Total_COM` double NOT NULL,
  `COM_grade` text NOT NULL,
  `COM_pos` text NOT NULL,
  `FAC_ca1` double NOT NULL,
  `FAC_ca2` double NOT NULL,
  `FAC_ca3` double NOT NULL,
  `FAC_ca_total` double NOT NULL,
  `FAC_exam` double NOT NULL,
  `Total_FAC` double NOT NULL,
  `FAC_grade` text NOT NULL,
  `FAC_pos` text NOT NULL,
  `MTH_ca1` double NOT NULL,
  `MTH_ca2` double NOT NULL,
  `MTH_ca3` double NOT NULL,
  `MTH_ca_total` double NOT NULL,
  `MTH_exam` double NOT NULL,
  `Total_MTH` double NOT NULL,
  `MTH_grade` text NOT NULL,
  `MTH_pos` text NOT NULL,
  `LIT_ca1` double NOT NULL,
  `LIT_ca2` double NOT NULL,
  `LIT_ca3` double NOT NULL,
  `LIT_ca_total` double NOT NULL,
  `LIT_exam` double NOT NULL,
  `Total_LIT` double NOT NULL,
  `LIT_grade` text NOT NULL,
  `LIT_pos` text NOT NULL,
  `PHY_ca1` double NOT NULL,
  `PHY_ca2` double NOT NULL,
  `PHY_ca3` double NOT NULL,
  `PHY_ca_total` double NOT NULL,
  `PHY_exam` double NOT NULL,
  `Total_PHY` double NOT NULL,
  `PHY_grade` text NOT NULL,
  `PHY_pos` text NOT NULL,
  `CHM_ca1` double NOT NULL,
  `CHM_ca2` double NOT NULL,
  `CHM_ca3` double NOT NULL,
  `CHM_ca_total` double NOT NULL,
  `CHM_exam` double NOT NULL,
  `Total_CHM` double NOT NULL,
  `CHM_grade` text NOT NULL,
  `CHM_pos` text NOT NULL,
  `GEO_ca1` double NOT NULL,
  `GEO_ca2` double NOT NULL,
  `GEO_ca3` double NOT NULL,
  `GEO_ca_total` double NOT NULL,
  `GEO_exam` double NOT NULL,
  `Total_GEO` double NOT NULL,
  `GEO_grade` text NOT NULL,
  `GEO_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_3rd_term`
--

LOCK TABLES `ss1b_3rd_term` WRITE;
/*!40000 ALTER TABLE `ss1b_3rd_term` DISABLE KEYS */;
INSERT INTO `ss1b_3rd_term` VALUES (1,'Kefas Solomon ','M','14,February,2003',8,9,9,26,55,81,'A1','1st',9,8,9,26,50,76,'A1','1st',10,10,8,28,59,87,'A1','1st',10,10,8,28,50,78,'A1','3rd',7,5,10,22,64,86,'A1','1st',3,9,2,14,47,61,'C4','6th',8,8,10,26,67,93,'A1','1st',10,10,5,25,59,84,'A1','1st',8,9,10,27,60,87,'A1','1st',10,9,10,29,51,80,'A1','2nd',9,7,10,26,57,83,'A1','2nd',6,8,8,22,60,82,'A1','1st',5,5,5,15,53,68,'B3','1st',10,8,10,28,63,91,'A1','1st',10,10,10,30,66,96,'A1','1st',6,8,8,22,41,63,'C4','5th',10,9,9,28,59,87,'A1','1st',8,6,7,21,58,79,'A1','1st',10,8,8,26,52,78,'A1','1st',7,7,8,22,53,75,'A1','3rd',10,9,10,29,65,94,'A1','1st',10,10,10,30,65,95,'A1','1st',9,10,10,29,66,95,'A1','1st',1899,82.57,'1st','An excellent performance; keep it up!','An excellent result, keep it up! The sky is your limit.promoted'),(2,'Odion Naomi ','F','23,February,2004',9,8,8,25,55,80,'A1','2nd',8,7,8,23,45,68,'B3','3rd',4,10,10,24,56,80,'A1','2nd',10,10,5,25,54,79,'A1','2nd',7,4,8,19,38,57,'C5','3rd',10,8,2,20,63,83,'A1','2nd',7,7,10,24,50,74,'B2','3rd',7,0,5,12,28,40,'E8','8th',6,0,10,16,62,78,'A1','2nd',9,9,10,28,49,77,'A1','3rd',10,7,10,27,65,92,'A1','1st',2,6,9,17,60,77,'A1','3rd',5,5,5,15,52,67,'B3','2nd',9,7,10,26,54,80,'A1','2nd',10,10,10,30,60,90,'A1','5th',7,5,8,20,49,69,'B3','1st',10,5,9,24,60,84,'A1','2nd',7,7,6,20,50,70,'B2','2nd',8,8,8,24,50,74,'B2','2nd',9,8,9,26,55,81,'A1','2nd',8,7,10,25,51,76,'A1','3rd',6,9,10,25,46,71,'B2','2nd',6,8,10,24,56,80,'A1','4th',1727,75.09,'2nd','An excellent performance; keep it up!','An excellent result, keep it up! promoted'),(4,'Edison Hilda ','F','15,September,2002',2,4,4,10,20,30,'F9','18th',2,4,5,11,20,31,'F9','17th',10,2,0,12,0,12,'F9','16th',1,1,1,3,10,13,'F9','17th',5,3,2,10,5,15,'F9','17th',2,0,2,4,21,25,'F9','17th',0,0,0,0,16,16,'F9','18th',3,0,5,8,20,28,'F9','18th',0,0,13,13,0,13,'F9','19th',3,0,0,3,14,17,'F9','19th',1,1,7,9,12,21,'F9','17th',2,2,2,6,30,36,'F9','19th',5,5,5,15,16,31,'F9','14th',2,1,2,5,20,25,'F9','19th',5,6,10,21,27,48,'D7','18th',3,1,4,8,11,19,'F9','19th',4,1,9,14,9,23,'F9','17th',7,5,3,15,21,36,'F9','17th',3,4,7,14,28,42,'E8','14th',4,5,9,18,23,41,'E8','16th',1,0,0,1,15,16,'F9','19th',4,4,5,13,13,26,'F9','18th',1,1,4,6,12,18,'F9','18th',582,25.3,'18th','Poor performance,you need to wake up!','Repeat.'),(5,'Obiekezie Daniel ','M','8,February,2001',3,3,4,10,40,50,'C6','12th',3,3,4,10,25,35,'F9','16th',10,2,1,13,0,13,'F9','15th',1,1,1,3,21,24,'F9','12th',4,4,2,10,13,23,'F9','11th',5,0,2,7,39,46,'D7','13th',0,0,0,0,40,40,'E8','12th',3,0,5,8,25,33,'F9','15th',6,0,0,6,38,44,'E8','11th',6,0,10,16,41,57,'C5','7th',5,1,10,16,29,45,'D7','12th',8,6,8,22,44,66,'B3','9th',5,5,5,15,26,41,'E8','10th',5,5,2,12,33,45,'D7','12th',8,8,10,26,39,65,'B3','15th',5,1,8,14,27,41,'E8','13th',1,2,9,12,28,40,'E8','11th',6,7,3,16,30,46,'D7','10th',5,4,3,12,17,29,'F9','19th',5,6,8,19,45,64,'C4','10th',1,1,10,12,31,43,'E8','12th',4,3,5,12,19,31,'F9','14th',3,4,8,15,32,47,'D7','12th',968,42.09,'13th','Average result;you need to work harder','A poor performance, wake up from your slumber. promoted on trial'),(6,'James Queen ','F','5,May,2002',9,8,8,25,50,75,'A1','3rd',6,7,7,20,38,58,'C5','5th',1,1,1,3,0,3,'F9','19th',1,1,1,3,30,33,'F9','11th',2,5,3,10,16,26,'F9','9th',3,0,2,5,52,57,'C5','8th',5,5,0,10,44,54,'C6','10th',6,0,5,11,26,37,'F9','10th',6,0,10,16,31,47,'D7','8th',10,8,10,28,54,82,'A1','1st',6,1,10,17,47,64,'C4','5th',10,6,4,20,55,75,'A1','5th',5,5,5,15,44,59,'C5','3rd',7,8,10,25,40,65,'B3','5th',10,10,10,30,61,91,'A1','3rd',9,8,9,26,41,67,'B3','2nd',9,7,9,25,47,72,'B2','4th',7,8,5,20,21,41,'E8','14th',6,5,8,19,43,62,'C4','5th',8,8,10,26,57,83,'A1','1st',9,7,0,16,50,66,'B3','5th',5,10,10,25,40,65,'B3','4th',9,7,10,26,59,85,'A1','2nd',1367,59.43,'5th','A very good result, but you can do better if you work harder!','A good result; you can do better than this.promoted'),(7,'Agbo Alex ','M','6,September,2004',8,7,7,22,50,72,'B2','6th',5,6,5,16,35,51,'C6','7th',1,1,1,3,8,11,'F9','17th',1,1,1,3,21,24,'F9','12th',3,4,5,12,10,22,'F9','12th',8,2,0,10,45,55,'C5','9th',6,6,0,12,58,70,'B2','5th',8,10,5,23,47,70,'B2','3rd',6,0,0,6,40,46,'D7','10th',9,6,0,15,41,56,'C5','8th',5,1,10,16,34,50,'C6','8th',2,6,7,15,49,64,'C4','11th',5,5,5,15,42,57,'C5','4th',7,3,7,17,25,42,'E8','13th',10,8,10,28,60,88,'A1','8th',7,8,4,19,38,57,'C5','6th',10,6,9,25,47,72,'B2','4th',4,6,5,15,30,45,'D7','12th',5,5,7,17,43,60,'C4','8th',6,9,9,24,43,67,'B3','7th',7,3,10,20,45,65,'B3','6th',4,5,10,19,29,48,'D7','7th',7,4,6,17,42,59,'C5','8th',1251,54.39,'8th','A very good result, but improve on your vocational subjects,animal husbandry and chemistry','An average performance; your grades are dropping. Stop playing and work harder.'),(8,'Ephraim Oluebube ','F','10,May,2004',8,7,8,23,45,68,'B3','7th',5,6,7,18,45,63,'C4','4th',10,10,8,28,52,80,'A1','2nd',10,7,10,27,23,50,'C6','5th',7,5,9,21,36,57,'C5','3rd',10,8,7,25,62,87,'A1','1st',7,7,10,24,48,72,'B2','4th',6,0,5,11,30,41,'E8','6th',7,9,10,26,51,77,'A1','3rd',8,9,10,27,50,77,'A1','3rd',10,4,10,24,50,74,'B2','4th',10,7,10,27,54,81,'A1','2nd',5,5,5,15,40,55,'C5','5th',10,7,10,27,53,80,'A1','2nd',10,10,10,30,65,95,'A1','2nd',8,8,8,24,41,65,'B3','4th',9,7,9,25,47,72,'B2','4th',7,7,6,20,44,64,'C4','3rd',8,8,8,24,48,72,'B2','3rd',7,6,9,22,52,74,'B2','4th',5,7,10,22,47,69,'B3','4th',6,9,10,25,43,68,'B3','3rd',7,8,8,23,59,82,'A1','3rd',1623,70.57,'4th','A very good result, but improve on the following subject(s):technical drawing,basic electricity and english language!','An excellent result, keep it up! promoted'),(9,'Ferdinand Victor ','M','1,June,2002',8,7,7,22,52,74,'B2','4th',5,5,6,16,40,56,'C5','6th',4,10,10,24,52,76,'A1','5th',10,1,1,12,24,36,'F9','10th',4,5,5,14,19,33,'F9','8th',2,0,0,2,39,41,'E8','14th',7,7,0,14,52,66,'B3','6th',6,0,5,11,30,41,'E8','6th',7,0,10,17,31,48,'D7','7th',0,5,0,5,44,49,'D7','14th',7,2,10,19,34,53,'C6','6th',10,5,7,22,51,73,'B2','6th',5,5,5,15,39,54,'C6','6th',8,4,8,20,37,57,'C5','7th',10,7,10,27,62,89,'A1','6th',7,1,8,16,31,47,'D7','9th',6,4,7,17,35,52,'C6','8th',7,6,4,17,35,52,'C6','6th',5,4,6,15,25,40,'E8','15th',5,5,9,19,47,66,'B3','8th',3,4,8,15,38,53,'C6','10th',4,5,9,18,26,44,'E8','8th',5,7,6,18,43,61,'C4','7th',1261,54.83,'7th','Good performance, but work harder on Mathematics,chemistry,government and your vocational subjects!','An average performance; your grades are dropping. Stop playing and work harder.'),(10,'James Joshua ','M','26,September,2002',2,2,4,8,20,28,'F9','19th',2,4,4,10,20,30,'F9','18th',1,1,1,3,50,53,'C6','6th',1,1,1,3,5,8,'F9','18th',1,5,5,11,5,16,'F9','16th',2,0,2,4,14,18,'F9','18th',0,0,0,0,16,16,'F9','18th',3,0,5,8,21,29,'F9','17th',2,0,0,2,15,17,'F9','18th',1,0,5,6,14,20,'F9','18th',1,1,7,9,8,17,'F9','18th',5,1,5,11,30,41,'E8','18th',5,5,5,15,10,25,'F9','19th',2,2,2,6,20,26,'F9','18th',4,3,10,17,24,41,'E8','19th',5,1,4,10,12,22,'F9','18th',2,0,9,11,9,20,'F9','18th',6,7,3,16,20,36,'F9','17th',5,4,5,14,19,33,'F9','17th',5,0,9,14,16,30,'F9','18th',0,1,5,6,13,19,'F9','17th',3,2,5,10,12,22,'F9','19th',1,1,4,6,9,15,'F9','19th',582,25.3,'18th','A very poor performance, you need to wake up and be serious!','Repeat.'),(11,'Owah Lazarus ','M','16,June,2003',8,8,8,24,49,73,'B2','5th',8,7,7,22,50,72,'B2','2nd',10,10,5,25,52,77,'A1','4th',10,10,8,28,53,81,'A1','1st',7,5,10,22,42,64,'C4','2nd',8,5,2,15,60,75,'A1','4th',8,8,10,26,57,83,'A1','2nd',8,10,5,23,49,72,'B2','2nd',8,5,10,23,43,66,'B3','4th',8,6,10,24,46,70,'B2','5th',10,10,10,30,51,81,'A1','3rd',10,3,5,18,46,64,'C4','11th',5,5,5,15,36,51,'C6','7th',6,5,7,18,52,70,'B2','4th',10,10,10,30,61,91,'A1','3rd',7,8,8,23,44,67,'B3','2nd',8,5,9,22,51,73,'B2','3rd',7,7,3,17,45,62,'C4','4th',5,7,6,18,43,61,'C4','7th',7,6,8,21,47,68,'B3','5th',8,8,10,26,57,83,'A1','2nd',6,8,10,24,41,65,'B3','4th',8,8,10,26,54,80,'A1','4th',1649,71.7,'3rd','An excellent result, but you can do better if you try harder!','An excellent result, keep it up! promoted'),(12,'Iloegbunam Vincent ','M','28,September,2002',3,4,4,11,29,40,'E8','16th',2,4,5,11,35,46,'D7','10th',10,8,1,19,23,42,'E8','10th',6,4,6,16,30,46,'D7','7th',7,5,10,22,20,42,'E8','5th',9,9,2,20,51,71,'B2','5th',6,6,0,12,48,60,'C4','8th',6,0,5,11,32,43,'E8','4th',5,8,10,23,36,59,'C5','5th',6,8,9,23,37,60,'C4','6th',1,1,10,12,31,43,'E8','13th',5,3,7,15,43,58,'C5','13th',5,5,5,15,23,38,'F9','12th',4,4,10,18,30,48,'D7','10th',10,3,10,23,46,69,'B3','13th',5,7,8,20,22,42,'E8','12th',7,1,9,17,31,48,'D7','10th',5,6,5,16,30,46,'D7','10th',5,5,6,16,27,43,'E8','13th',7,5,8,20,34,54,'C6','13th',3,1,4,8,25,33,'F9','15th',4,3,10,17,16,33,'F9','12th',6,3,5,14,35,49,'D7','11th',1113,48.39,'10th','Average result; you can do better if you work harder!','An average performance; your grades are dropping. Stop playing and work harder.'),(13,'Akpan Mary ','F','22,September,2003',6,6,6,18,40,58,'C5','10th',7,6,7,20,25,45,'D7','11th',9,5,1,15,25,40,'E8','11th',10,5,1,16,6,22,'F9','15th',5,5,5,15,22,37,'F9','6th',8,5,2,15,37,52,'C6','11th',0,0,0,0,36,36,'F9','15th',6,0,5,11,29,40,'E8','8th',4,0,10,14,33,47,'D7','8th',8,0,10,18,35,53,'C6','11th',5,1,9,15,34,49,'D7','10th',8,7,7,22,43,65,'B3','10th',5,5,5,15,15,30,'F9','15th',8,4,2,14,40,54,'C6','9th',10,8,10,28,43,71,'B2','11th',7,4,8,19,27,46,'D7','10th',6,4,9,19,14,33,'F9','14th',4,7,5,16,35,51,'C6','7th',4,5,5,14,32,46,'D7','12th',6,5,8,19,42,61,'C4','11th',3,5,10,18,35,53,'C6','10th',4,7,10,21,20,41,'E8','10th',2,7,10,19,35,54,'C6','9th',1084,47.13,'11th','Poor performance, you need to wake up and be serious!','A good result, but you can do better than this.promoted'),(14,'Andrew Precious ','F','2,October,2003',8,7,7,22,36,58,'C5','10th',2,5,5,12,38,50,'C6','8th',10,8,10,28,22,50,'C6','7th',1,10,10,21,41,62,'C4','4th',2,4,4,10,11,21,'F9','13th',7,2,0,9,43,52,'C6','11th',6,6,10,22,40,62,'C4','7th',6,0,5,11,25,36,'F9','11th',6,0,0,6,24,30,'F9','14th',8,0,10,18,37,55,'C5','10th',6,1,9,16,34,50,'C6','8th',2,5,7,14,54,68,'B3','8th',5,5,5,15,28,43,'E8','8th',7,4,2,13,44,57,'C5','7th',10,8,10,28,49,77,'A1','10th',7,7,8,22,29,51,'C6','8th',7,3,9,19,29,48,'D7','10th',6,6,4,16,32,48,'D7','9th',5,4,6,15,37,52,'C6','10th',5,8,8,21,47,68,'B3','5th',7,3,10,20,29,49,'D7','11th',4,3,10,17,25,42,'E8','9th',3,3,10,16,34,50,'C6','10th',1179,51.26,'9th','Average result; you can do better if you work harder!','An average performance; your grades are dropping. Stop playing and work harder.'),(15,'Ebere Nmesoma ','F','9,March,2003',4,4,5,13,34,47,'D7','13th',2,5,4,11,25,36,'F9','14th',10,10,10,30,14,44,'E8','9th',6,10,7,23,20,43,'E8','8th',4,5,3,12,12,24,'F9','10th',8,5,2,15,45,60,'C4','7th',0,0,10,10,27,37,'F9','14th',6,0,5,11,23,34,'F9','12th',5,5,0,10,22,32,'F9','13th',5,7,10,22,28,50,'C6','13th',7,1,10,18,29,47,'D7','11th',10,7,9,26,44,70,'B2','7th',5,5,5,15,15,30,'F9','15th',8,5,2,15,32,47,'D7','11th',8,10,10,28,37,65,'B3','15th',7,5,8,20,23,43,'E8','11th',7,4,9,20,19,39,'F9','12th',6,8,5,19,30,49,'D7','8th',6,4,7,17,45,62,'C4','5th',5,6,8,19,31,50,'C6','14th',3,3,8,14,24,38,'F9','13th',5,5,5,15,26,41,'E8','10th',2,4,10,16,28,44,'E8','13th',1032,44.87,'12th','Poor performance, you need to wake up and be serious!','An average result; you can do better.promoted'),(16,'Lazarus Ifunanya ','F','29,December,2003',7,7,6,20,32,52,'C6','11th',2,4,4,10,28,38,'F9','12th',1,1,1,3,31,34,'F9','12th',10,1,1,12,5,17,'F9','16th',3,3,4,10,11,21,'F9','13th',7,7,6,20,34,54,'C6','10th',6,6,10,22,35,57,'C5','9th',6,0,5,11,31,42,'E8','5th',3,0,10,13,28,41,'E8','12th',5,5,10,20,31,51,'C6','12th',4,1,10,15,22,37,'F9','14th',2,1,10,13,43,56,'C5','14th',5,5,5,15,12,27,'F9','17th',6,5,2,13,27,40,'E8','14th',10,6,10,26,36,62,'C4','17th',6,7,4,17,21,38,'F9','14th',7,4,9,20,12,32,'F9','15th',4,5,6,15,25,40,'E8','15th',5,4,6,15,37,52,'C6','10th',6,6,8,20,36,56,'C5','12th',5,5,10,20,33,53,'C6','10th',5,3,7,15,17,32,'F9','13th',3,2,4,9,23,32,'F9','15th',964,41.91,'14th','Poor performance, you need to wake up and be serious!','A poor performance; sit up and work harder.promoted on trial'),(17,'Lebanu Phoebe ','F','24,December,2000',6,5,5,16,25,41,'E8','15th',3,4,4,11,25,36,'F9','14th',7,10,1,18,0,18,'F9','14th',1,1,1,3,20,23,'F9','14th',1,1,1,3,1,4,'F9','18th',3,5,6,14,17,31,'F9','16th',0,0,0,0,26,26,'F9','16th',5,0,5,10,24,34,'F9','12th',0,0,10,10,20,30,'F9','14th',4,4,10,18,22,40,'E8','17th',3,1,10,14,20,34,'F9','16th',5,3,5,13,40,53,'C6','16th',5,5,5,15,21,36,'F9','13th',4,6,2,12,20,32,'F9','16th',9,5,10,24,43,67,'B3','14th',6,1,4,11,20,31,'F9','16th',8,3,9,20,16,36,'F9','13th',4,6,5,15,20,35,'F9','19th',3,7,4,14,18,32,'F9','18th',6,3,9,18,17,35,'F9','17th',1,0,0,1,23,24,'F9','16th',4,2,5,11,16,27,'F9','16th',4,1,4,9,19,28,'F9','16th',753,32.74,'16th','A very poor performance, you need to wake up and be serious!','Repeat.'),(18,'Okoli Anthonia ','F','29,October,2002',7,7,8,22,40,62,'C4','8th',4,5,6,15,35,50,'C6','8th',1,1,1,3,31,34,'F9','12th',2,8,5,15,35,50,'C6','5th',5,5,5,15,21,36,'F9','7th',8,5,6,19,57,76,'A1','3rd',2,2,0,4,46,50,'C6','11th',4,0,5,9,25,34,'F9','12th',7,10,10,27,30,57,'C5','6th',10,0,10,20,36,56,'C5','8th',1,3,10,14,39,53,'C6','6th',10,7,6,23,54,77,'A1','3rd',5,5,5,15,25,40,'E8','11th',10,5,2,17,41,58,'C5','6th',10,9,10,29,60,89,'A1','6th',8,5,8,21,36,57,'C5','6th',10,5,9,24,32,56,'C5','7th',8,7,5,20,41,61,'C4','5th',5,8,8,21,44,65,'B3','4th',5,8,8,21,43,64,'C4','10th',6,5,10,21,37,58,'C5','7th',5,6,10,21,28,49,'D7','6th',5,3,10,18,48,66,'B3','6th',1298,56.43,'6th','Good performance, but you can do better if you work harder!','A good result; you can do better than this.promoted'),(19,'Wakirina Hyelhirra Daniel','F','22,February,1998',4,4,5,13,25,38,'F9','17th',3,4,5,12,25,37,'F9','13th',5,10,1,16,29,45,'D7','8th',1,1,10,12,30,42,'E8','9th',1,3,4,8,10,18,'F9','15th',5,0,2,7,28,35,'F9','15th',0,0,0,0,39,39,'F9','13th',6,0,5,11,21,32,'F9','16th',3,0,10,13,13,26,'F9','16th',5,5,10,20,22,42,'E8','15th',4,1,10,15,21,36,'F9','15th',5,2,1,8,36,44,'E8','17th',5,5,5,15,12,27,'F9','17th',5,3,5,13,26,39,'F9','15th',10,6,10,26,45,71,'B2','11th',2,5,8,15,10,25,'F9','17th',0,3,9,12,17,29,'F9','16th',6,5,4,15,25,40,'E8','15th',5,7,6,18,18,36,'F9','16th',5,3,9,17,31,48,'D7','15th',2,1,8,11,24,35,'F9','14th',4,2,5,11,16,27,'F9','16th',3,2,9,14,27,41,'E8','14th',852,37.04,'15th','Poor performance, but I recommend promotion on trial!','Repeat.'),(20,'Umeh Deborah ','F','8,August,2004',2,4,4,10,34,44,'E8','14th',1,2,2,5,25,30,'F9','18th',1,1,1,3,1,4,'F9','18th',1,1,1,3,5,8,'F9','18th',1,1,1,3,1,4,'F9','18th',2,0,0,2,15,17,'F9','19th',0,0,0,0,25,25,'F9','17th',0,0,0,0,25,25,'F9','19th',0,0,0,0,21,21,'F9','17th',0,0,0,0,41,41,'E8','16th',1,1,1,3,1,4,'F9','19th',1,2,3,6,48,54,'C6','15th',5,5,5,15,27,42,'E8','9th',0,0,0,0,28,28,'F9','17th',8,8,10,26,52,78,'A1','9th',1,8,1,10,24,34,'F9','15th',0,2,0,2,17,19,'F9','19th',4,6,5,15,28,43,'E8','13th',7,6,4,17,30,47,'D7','11th',0,0,0,0,28,28,'F9','19th',1,1,1,3,16,19,'F9','17th',3,3,3,9,19,28,'F9','15th',0,0,0,0,25,25,'F9','17th',668,29.04,'17th','Poor performance, but I recommend promotion on trial!','Repeat.');
/*!40000 ALTER TABLE `ss1b_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_psycho_3rd_term`
--

DROP TABLE IF EXISTS `ss1b_psycho_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_psycho_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_psycho_3rd_term`
--

LOCK TABLES `ss1b_psycho_3rd_term` WRITE;
/*!40000 ALTER TABLE `ss1b_psycho_3rd_term` DISABLE KEYS */;
INSERT INTO `ss1b_psycho_3rd_term` VALUES (1,'Kefas Solomon ','A','A','B','A','A','A','A','B','A','A','A','A','B','B','B','A','B'),(2,'Odion Naomi ','A','B','A','A','A','A','B','C','A','A','B','B','C','C','C','B','C'),(3,'Edison Hilda ','D','C','C','D','D','C','E','C','D','E','C','D','D','C','D','C','B'),(4,'Obiekezie Daniel ','B','D','C','B','C','A','C','B','D','E','C','D','D','D','D','C','A'),(5,'James Queen ','A','A','A','B','A','A','A','B','B','A','B','C','C','C','B','B','C'),(6,'Agbo Alex ','B','B','C','A','A','A','A','C','B','A','B','C','C','C','C','B','B'),(7,'Ephraim Oluebube ','A','B','A','A','A','A','A','C','B','A','B','C','C','B','B','A','B'),(8,'Ferdinand Victor ','B','B','B','B','A','A','B','A','A','A','C','C','C','B','B','D','C'),(9,'James Joshua ','C','C','D','C','D','B','B','A','C','E','C','C','C','D','C','C','D'),(10,'Owah Lazarus ','B','B','C','C','B','A','B','A','B','B','D','C','C','C','C','B','B'),(11,'Iloegbunam Vincent ','B','A','B','C','B','B','B','A','C','B','C','D','C','D','D','C','C'),(12,'Akpan Mary ','C','B','A','C','C','B','C','D','C','B','C','C','D','C','C','C','C'),(13,'Andrew Precious ','C','B','B','B','B','A','C','C','C','B','C','C','C','C','C','B','B'),(14,'Ebere Nmesoma ','C','C','C','D','C','B','C','D','C','C','C','C','C','B','C','C','C'),(15,'Lazarus Ifunanya ','B','C','B','C','D','A','C','D','B','C','C','D','D','C','D','D','C'),(16,'Lebanu Phoebe ','C','C','C','D','C','D','C','D','D','D','D','C','C','E','D','C','C'),(17,'Okoli Anthonia ','B','C','C','A','C','C','D','C','B','D','D','C','D','D','D','B','D'),(18,'Wakirina Hyelhirra Daniel','B','B','C','C','D','D','D','C','D','D','C','C','E','C','C','A','C'),(19,'Umeh Deborah ','C','C','D','D','C','C','C','D','D','C','C','C','C','C','C','B','C');
/*!40000 ALTER TABLE `ss1b_psycho_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss1b_subjects`
--

DROP TABLE IF EXISTS `ss1b_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss1b_subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class` text NOT NULL,
  `subjects` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss1b_subjects`
--

LOCK TABLES `ss1b_subjects` WRITE;
/*!40000 ALTER TABLE `ss1b_subjects` DISABLE KEYS */;
INSERT INTO `ss1b_subjects` VALUES (1,'SS 1B','AGR,ANH,BEL,BIO,BUT,CHM,CIV,COM,COS,CRS,DIN,ECO,ELC,ENG,FAC,GEO,GMK,GOV,LIT,MTH,PHY,TDR,WOW');
/*!40000 ALTER TABLE `ss1b_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_1st_term`
--

DROP TABLE IF EXISTS `ss2a_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_1st_term`
--

LOCK TABLES `ss2a_1st_term` WRITE;
/*!40000 ALTER TABLE `ss2a_1st_term` DISABLE KEYS */;
INSERT INTO `ss2a_1st_term` VALUES (2,'James Jedidiah Urbanus','M','6,February,2001',0,0,'','',''),(3,'Adinchezor Favour ','F','20,July,2002',0,0,'','',''),(6,'David Jude Chukwuebuka','M','30,July,2003',0,0,'','',''),(7,'Mathew Gideon ','M','7,June,2001',0,0,'','',''),(8,'Anigboyu Chidera ','M','15,July,2000',0,0,'','',''),(9,'Peter Grace Amarachi','F','22,August,2003',0,0,'','',''),(10,'Mathew Ebenezer  ','M','14,March,2001',0,0,'','',''),(11,'Ishaya Lois ','F','15,October,2004',0,0,'','',''),(12,'Istifanus Rejoice ','F','20,March,2004',0,0,'','',''),(13,'Abdulaziz Ishaq ','M','1,August,2002',0,0,'','',''),(14,'Ikechukwu Abuchi ','M','15,October,2001',0,0,'','',''),(15,'James Danjuma Kaya','M','25,August,2000',0,0,'','',''),(16,'Eze Kingsley ','M','7,July,2002',0,0,'','',''),(17,'Idoghor Joshua ','M','23,September,2000',0,0,'','','');
/*!40000 ALTER TABLE `ss2a_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_2nd_term`
--

DROP TABLE IF EXISTS `ss2a_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_2nd_term`
--

LOCK TABLES `ss2a_2nd_term` WRITE;
/*!40000 ALTER TABLE `ss2a_2nd_term` DISABLE KEYS */;
INSERT INTO `ss2a_2nd_term` VALUES (2,'James Jedidiah Urbanus','M','6,February,2001',0,0,'','',''),(3,'Adinchezor Favour ','F','20,July,2002',0,0,'','',''),(6,'David Jude Chukwuebuka','M','30,July,2003',0,0,'','',''),(7,'Mathew Gideon ','M','7,June,2001',0,0,'','',''),(8,'Anigboyu Chidera ','M','15,July,2000',0,0,'','',''),(9,'Peter Grace Amarachi','F','22,August,2003',0,0,'','',''),(10,'Mathew Ebenezer  ','M','14,March,2001',0,0,'','',''),(11,'Ishaya Lois ','F','15,October,2004',0,0,'','',''),(12,'Istifanus Rejoice ','F','20,March,2004',0,0,'','',''),(13,'Abdulaziz Ishaq ','M','1,August,2002',0,0,'','',''),(14,'Ikechukwu Abuchi ','M','15,October,2001',0,0,'','',''),(15,'James Danjuma Kaya','M','25,August,2000',0,0,'','',''),(16,'Eze Kingsley ','M','7,July,2002',0,0,'','',''),(17,'Idoghor Joshua ','M','23,September,2000',0,0,'','','');
/*!40000 ALTER TABLE `ss2a_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_3rd_term`
--

DROP TABLE IF EXISTS `ss2a_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `DIN_ca1` double NOT NULL,
  `DIN_ca2` double NOT NULL,
  `DIN_ca3` double NOT NULL,
  `DIN_ca_total` double NOT NULL,
  `DIN_exam` double NOT NULL,
  `Total_DIN` double NOT NULL,
  `DIN_grade` text NOT NULL,
  `DIN_pos` text NOT NULL,
  `ELC_ca1` double NOT NULL,
  `ELC_ca2` double NOT NULL,
  `ELC_ca3` double NOT NULL,
  `ELC_ca_total` double NOT NULL,
  `ELC_exam` double NOT NULL,
  `Total_ELC` double NOT NULL,
  `ELC_grade` text NOT NULL,
  `ELC_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `CRS_ca1` double NOT NULL,
  `CRS_ca2` double NOT NULL,
  `CRS_ca3` double NOT NULL,
  `CRS_ca_total` double NOT NULL,
  `CRS_exam` double NOT NULL,
  `Total_CRS` double NOT NULL,
  `CRS_grade` text NOT NULL,
  `CRS_pos` text NOT NULL,
  `BIO_ca1` double NOT NULL,
  `BIO_ca2` double NOT NULL,
  `BIO_ca3` double NOT NULL,
  `BIO_ca_total` double NOT NULL,
  `BIO_exam` double NOT NULL,
  `Total_BIO` double NOT NULL,
  `BIO_grade` text NOT NULL,
  `BIO_pos` text NOT NULL,
  `COM_ca1` double NOT NULL,
  `COM_ca2` double NOT NULL,
  `COM_ca3` double NOT NULL,
  `COM_ca_total` double NOT NULL,
  `COM_exam` double NOT NULL,
  `Total_COM` double NOT NULL,
  `COM_grade` text NOT NULL,
  `COM_pos` text NOT NULL,
  `FAC_ca1` double NOT NULL,
  `FAC_ca2` double NOT NULL,
  `FAC_ca3` double NOT NULL,
  `FAC_ca_total` double NOT NULL,
  `FAC_exam` double NOT NULL,
  `Total_FAC` double NOT NULL,
  `FAC_grade` text NOT NULL,
  `FAC_pos` text NOT NULL,
  `MTH_ca1` double NOT NULL,
  `MTH_ca2` double NOT NULL,
  `MTH_ca3` double NOT NULL,
  `MTH_ca_total` double NOT NULL,
  `MTH_exam` double NOT NULL,
  `Total_MTH` double NOT NULL,
  `MTH_grade` text NOT NULL,
  `MTH_pos` text NOT NULL,
  `ENG_ca1` double NOT NULL,
  `ENG_ca2` double NOT NULL,
  `ENG_ca3` double NOT NULL,
  `ENG_ca_total` double NOT NULL,
  `ENG_exam` double NOT NULL,
  `Total_ENG` double NOT NULL,
  `ENG_grade` text NOT NULL,
  `ENG_pos` text NOT NULL,
  `GOV_ca1` double NOT NULL,
  `GOV_ca2` double NOT NULL,
  `GOV_ca3` double NOT NULL,
  `GOV_ca_total` double NOT NULL,
  `GOV_exam` double NOT NULL,
  `Total_GOV` double NOT NULL,
  `GOV_grade` text NOT NULL,
  `GOV_pos` text NOT NULL,
  `LIT_ca1` double NOT NULL,
  `LIT_ca2` double NOT NULL,
  `LIT_ca3` double NOT NULL,
  `LIT_ca_total` double NOT NULL,
  `LIT_exam` double NOT NULL,
  `Total_LIT` double NOT NULL,
  `LIT_grade` text NOT NULL,
  `LIT_pos` text NOT NULL,
  `CIV_ca1` double NOT NULL,
  `CIV_ca2` double NOT NULL,
  `CIV_ca3` double NOT NULL,
  `CIV_ca_total` double NOT NULL,
  `CIV_exam` double NOT NULL,
  `Total_CIV` double NOT NULL,
  `CIV_grade` text NOT NULL,
  `CIV_pos` text NOT NULL,
  `GEO_ca1` double NOT NULL,
  `GEO_ca2` double NOT NULL,
  `GEO_ca3` double NOT NULL,
  `GEO_ca_total` double NOT NULL,
  `GEO_exam` double NOT NULL,
  `Total_GEO` double NOT NULL,
  `GEO_grade` text NOT NULL,
  `GEO_pos` text NOT NULL,
  `CHM_ca1` double NOT NULL,
  `CHM_ca2` double NOT NULL,
  `CHM_ca3` double NOT NULL,
  `CHM_ca_total` double NOT NULL,
  `CHM_exam` double NOT NULL,
  `Total_CHM` double NOT NULL,
  `CHM_grade` text NOT NULL,
  `CHM_pos` text NOT NULL,
  `AGR_ca1` double NOT NULL,
  `AGR_ca2` double NOT NULL,
  `AGR_ca3` double NOT NULL,
  `AGR_ca_total` double NOT NULL,
  `AGR_exam` double NOT NULL,
  `Total_AGR` double NOT NULL,
  `AGR_grade` text NOT NULL,
  `AGR_pos` text NOT NULL,
  `ANH_ca1` double NOT NULL,
  `ANH_ca2` double NOT NULL,
  `ANH_ca3` double NOT NULL,
  `ANH_ca_total` double NOT NULL,
  `ANH_exam` double NOT NULL,
  `Total_ANH` double NOT NULL,
  `ANH_grade` text NOT NULL,
  `ANH_pos` text NOT NULL,
  `BEL_ca1` double NOT NULL,
  `BEL_ca2` double NOT NULL,
  `BEL_ca3` double NOT NULL,
  `BEL_ca_total` double NOT NULL,
  `BEL_exam` double NOT NULL,
  `Total_BEL` double NOT NULL,
  `BEL_grade` text NOT NULL,
  `BEL_pos` text NOT NULL,
  `PHY_ca1` double NOT NULL,
  `PHY_ca2` double NOT NULL,
  `PHY_ca3` double NOT NULL,
  `PHY_ca_total` double NOT NULL,
  `PHY_exam` double NOT NULL,
  `Total_PHY` double NOT NULL,
  `PHY_grade` text NOT NULL,
  `PHY_pos` text NOT NULL,
  `GMK_ca1` double NOT NULL,
  `GMK_ca2` double NOT NULL,
  `GMK_ca3` double NOT NULL,
  `GMK_ca_total` double NOT NULL,
  `GMK_exam` double NOT NULL,
  `Total_GMK` double NOT NULL,
  `GMK_grade` text NOT NULL,
  `GMK_pos` text NOT NULL,
  `ECO_ca1` double NOT NULL,
  `ECO_ca2` double NOT NULL,
  `ECO_ca3` double NOT NULL,
  `ECO_ca_total` double NOT NULL,
  `ECO_exam` double NOT NULL,
  `Total_ECO` double NOT NULL,
  `ECO_grade` text NOT NULL,
  `ECO_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_3rd_term`
--

LOCK TABLES `ss2a_3rd_term` WRITE;
/*!40000 ALTER TABLE `ss2a_3rd_term` DISABLE KEYS */;
INSERT INTO `ss2a_3rd_term` VALUES (2,'James Jedidiah Urbanus','M','6,February,2001',0,0,0,0,0,0,'','12th',5,5,6,16,21,37,'F9','9th',0,0,10,10,29,39,'F9','11th',6,6,10,22,41,63,'C4','3rd',8,8,10,26,37,63,'C4','11th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',6,5,5,16,32,48,'D7','6th',6,7,9,22,51,73,'B2','7th',10,8,8,26,45,71,'B2','1st',7,7,8,22,50,72,'B2','3rd',10,8,8,26,49,75,'A1','5th',7,4,10,21,54,75,'A1','8th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',5,9,7,21,50,71,'B2','10th',0,0,0,0,0,0,'','10th',6,6,6,18,30,48,'D7','6th',7,6,6,19,19,38,'F9','12th',773,59.46,'6th','Good performance, but work harder on Mathematics, economics and trade subjects','A good result; you can do better than this.promoted'),(3,'Adinchezor Favour ','F','20,July,2002',5,10,6,21,42,63,'C4','7th',7,5,10,22,23,45,'D7','5th',8,8,10,26,39,65,'B3','4th',4,7,10,21,37,58,'C5','5th',10,5,10,25,51,76,'A1','4th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',4,7,4,15,29,44,'E8','10th',6,8,9,23,58,81,'A1','3rd',8,8,8,24,27,51,'C6','3rd',9,9,10,28,51,79,'A1','1st',7,5,8,20,40,60,'C4','9th',6,6,10,22,49,71,'B2','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',8,8,6,22,26,48,'D7','7th',3,6,8,17,0,17,'F9','10th',8,8,8,24,38,62,'C4','3rd',10,0,10,20,30,50,'C6','7th',870,58,'9th','Good performance, but work harder on Mathematics and trade subjects','A very good performance, you have the capacity to do better.promoted'),(6,'David Jude Chukwuebuka','M','30,July,2003',8,1,10,19,47,66,'B3','6th',7,5,10,22,29,51,'C6','3rd',0,0,10,10,44,54,'C6','6th',3,10,10,23,26,49,'D7','7th',10,7,10,27,40,67,'B3','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',5,8,9,22,46,68,'B3','2nd',5,8,8,21,55,76,'A1','4th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',8,7,8,23,40,63,'C4','8th',6,9,10,25,60,85,'A1','5th',5,6,8,19,21,40,'E8','4th',5,5,10,20,40,60,'C4','5th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',10,3,10,23,44,67,'B3','4th',7,7,7,21,35,56,'C5','5th',8,1,10,19,35,54,'C6','6th',856,61.14,'5th','weldone, but you could do better especially Chemistry ','A very great improvement, keep moving. promoted'),(7,'Mathew Gideon ','M','7,June,2001',0,0,0,0,0,0,'','12th',5,5,5,15,16,31,'F9','11th',0,0,10,10,33,43,'E8','8th',2,1,10,13,19,32,'F9','11th',8,6,10,24,44,68,'B3','9th',3,3,1,7,30,37,'F9','2nd',3,4,6,13,50,63,'C4','1st',3,7,5,15,30,45,'D7','9th',5,8,8,21,43,64,'C4','11th',7,5,4,16,25,41,'E8','5th',0,0,0,0,0,0,'','10th',6,6,8,20,33,53,'C6','12th',9,8,10,27,39,66,'B3','12th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',5,5,5,15,30,45,'D7','10th',7,1,8,16,30,46,'D7','10th',634,48.77,'11th','Average result; improve on the following subject(s):Trade,CRK, Commerce, English, and Government ','A good result; you can do better than this.promoted'),(8,'Anigboyu Chidera ','M','15,July,2000',1,1,1,3,38,41,'E8','11th',3,3,4,10,5,15,'F9','13th',0,0,0,0,25,25,'F9','13th',1,1,10,12,11,23,'F9','14th',5,5,10,20,40,60,'C4','12th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',3,5,4,12,26,38,'F9','13th',2,6,9,17,42,59,'C5','12th',3,7,4,14,30,44,'E8','4th',6,6,7,19,39,58,'C5','4th',5,5,4,14,27,41,'E8','13th',5,5,10,20,50,70,'B2','11th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',5,5,5,15,30,45,'D7','10th',0,1,4,5,18,23,'F9','14th',542,41.69,'13th','Average result; improve on the following subject(s):Trade,CRK, Commerce, English,Computer, Mathematics and Economics ','A fair performance; try harder.promotedon trial'),(9,'Peter Grace Amarachi','F','22,August,2003',8,10,10,28,40,68,'B3','5th',7,5,8,20,21,41,'E8','6th',0,0,10,10,32,42,'E8','10th',6,4,10,20,24,44,'E8','9th',10,6,10,26,47,73,'B2','7th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',5,5,7,17,33,50,'C6','5th',7,7,10,24,52,76,'A1','4th',8,8,8,24,36,60,'C4','2nd',8,8,9,25,53,78,'A1','2nd',7,7,8,22,44,66,'B3','6th',8,5,10,23,49,72,'B2','9th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',10,7,7,24,30,54,'C6','6th',0,0,0,0,0,0,'','10th',8,7,8,23,38,61,'C4','4th',9,1,10,20,27,47,'D7','9th',832,59.43,'7th','good performance, but work harder on economics and computer studies ','A good result; you can do better than this.promted'),(10,'Mathew Ebenezer  ','M','14,March,2001',8,10,1,19,39,58,'C5','10th',0,0,0,0,0,0,'','14th',0,0,9,9,25,34,'F9','12th',1,1,9,11,13,24,'F9','13th',6,2,10,18,31,49,'D7','13th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',4,6,4,14,23,37,'F9','14th',4,5,9,18,34,52,'C6','13th',1,5,8,14,19,33,'F9','7th',5,5,6,16,42,58,'C5','4th',7,7,8,22,36,58,'C5','10th',6,7,10,23,35,58,'C5','13th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',1,1,1,3,20,23,'F9','8th',0,0,0,0,0,0,'','10th',6,5,5,16,29,45,'D7','10th',8,2,8,18,26,44,'E8','11th',573,44.08,'12th','Average result; improve on the following subject(s):Trades,CRK, Commerce, Government, Computer, Mathematics','A fair performance; try harder.promoted on trial'),(11,'Ishaya Lois ','F','15,October,2004',5,1,1,7,54,61,'C4','8th',7,5,10,22,39,61,'C4','2nd',10,10,10,30,55,85,'A1','1st',10,9,10,29,56,85,'A1','1st',10,7,10,27,52,79,'A1','2nd',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',6,8,8,22,48,70,'B2','1st',9,10,9,28,54,82,'A1','2nd',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',10,8,8,26,60,86,'A1','1st',7,9,10,26,69,95,'A1','1st',7,9,10,26,34,60,'C4','1st',7,6,10,23,51,74,'B2','1st',0,0,0,0,0,0,'','10th',8,2,1,11,47,58,'C5','5th',10,6,10,26,50,76,'A1','1st',8,8,8,24,45,69,'B3','1st',9,8,10,27,49,76,'A1','2nd',1117,74.47,'1st','An excellent performance; keep it up!','An excellent result, keep it up! The sky is your limit.promoted'),(12,'Istifanus Rejoice ','F','20,March,2004',8,10,9,27,48,75,'A1','3rd',8,5,10,23,41,64,'C4','1st',10,10,10,30,53,83,'A1','2nd',7,6,10,23,50,73,'B2','2nd',10,8,10,28,44,72,'B2','8th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',2,5,7,14,32,46,'D7','7th',8,10,10,28,61,89,'A1','1st',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',10,8,8,26,52,78,'A1','3rd',6,9,10,25,65,90,'A1','4th',6,7,10,23,32,55,'C5','2nd',7,8,10,25,45,70,'B2','3rd',0,0,0,0,0,0,'','10th',8,4,9,21,46,67,'B3','4th',10,6,10,26,44,70,'B2','3rd',8,8,7,23,40,63,'C4','2nd',9,4,10,23,45,68,'B3','4th',1063,70.87,'3rd','An excellent result; you will do better in mathamatics!','An excellent result, keep it up!promoted to next class'),(13,'Abdulaziz Ishaq ','M','1,August,2002',8,5,10,23,47,70,'B2','4th',6,5,5,16,23,39,'F9','8th',0,0,7,7,56,63,'C4','5th',7,2,10,19,40,59,'C5','4th',10,10,10,30,49,79,'A1','2nd',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',6,6,7,19,34,53,'C6','4th',3,9,8,20,55,75,'A1','6th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',8,8,8,24,56,80,'A1','2nd',6,9,10,25,54,79,'A1','6th',3,4,5,12,27,39,'F9','5th',6,6,10,22,48,70,'B2','3rd',7,7,10,24,44,68,'B3','1st',10,6,10,26,57,83,'A1','2nd',8,5,10,23,37,60,'C4','5th',0,0,0,0,0,0,'','11th',9,10,10,29,40,69,'B3','3rd',986,65.73,'4th','weldone, but you could do better especially Chemistry and Electronics','A very good performance, you have the capacity to do better. promoted'),(14,'Ikechukwu Abuchi ','M','15,October,2001',8,10,10,28,52,80,'A1','2nd',6,5,5,16,19,35,'F9','10th',0,0,10,10,44,54,'C6','6th',2,6,10,18,23,41,'E8','10th',10,6,10,26,50,76,'A1','4th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',5,4,6,15,31,46,'D7','7th',5,7,8,20,45,65,'B3','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',8,7,8,23,42,65,'B3','7th',9,9,10,28,63,91,'A1','3rd',4,2,5,11,19,30,'F9','6th',5,6,10,21,33,54,'C6','6th',5,6,10,21,27,48,'D7','3rd',7,9,1,17,52,69,'B3','3rd',7,5,10,22,36,58,'C5','6th',0,0,0,0,0,0,'','11th',9,3,9,21,42,63,'C4','5th',875,58.33,'8th','good performance, but work harder on chemistry and electronics ','A very good performance, you have the capacity to do better.promoted'),(15,'James Danjuma Kaya','M','25,August,2000',10,10,10,30,61,91,'A1','1st',5,5,5,15,31,46,'D7','4th',10,10,0,20,46,66,'B3','3rd',7,6,10,23,33,56,'C5','6th',10,9,10,29,55,84,'A1','1st',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',6,4,8,18,39,57,'C5','3rd',7,6,9,22,50,72,'B2','8th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',10,8,8,26,50,76,'A1','4th',10,8,10,28,67,95,'A1','1st',7,8,9,24,29,53,'C6','3rd',7,7,10,24,50,74,'B2','1st',5,4,10,19,42,61,'C4','2nd',10,10,8,28,56,84,'A1','1st',8,7,10,25,48,73,'B2','2nd',0,0,0,0,0,0,'','11th',9,6,10,25,54,79,'A1','1st',1067,71.13,'2nd','An excellent result; you will do better on electronics','An excellent result, keep it up!promoted to next class'),(16,'Eze Kingsley ','M','7,July,2002',0,0,0,0,0,0,'','12th',5,2,3,10,12,22,'F9','12th',0,0,0,0,12,12,'F9','14th',1,1,9,11,17,28,'F9','12th',4,5,10,19,30,49,'D7','13th',3,2,2,7,24,31,'F9','3rd',4,6,0,10,37,47,'D7','3rd',0,0,0,0,0,0,'','11th',5,7,8,20,32,52,'C6','13th',2,5,4,11,17,28,'F9','8th',0,0,0,0,0,0,'','10th',5,1,4,10,24,34,'F9','14th',5,4,10,19,35,54,'C6','14th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'F9','10th',4,5,10,19,18,37,'F9','4th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','11th',0,0,4,4,23,27,'F9','13th',421,35.08,'14th','Poor performance, please push harder','Repeat.'),(17,'Idoghor Joshua ','M','23,September,2000',0,0,0,0,0,0,'','9th',3,5,5,13,27,40,'E8','7th',0,0,9,9,34,43,'E8','8th',4,4,10,18,28,46,'D7','8th',10,8,10,28,48,76,'A1','4th',7,5,4,16,50,66,'B3','1st',6,5,5,16,42,58,'C5','2nd',5,5,6,16,24,40,'E8','12th',2,9,7,18,48,66,'B3','9th',4,6,4,14,26,40,'E8','6th',0,0,0,0,0,0,'','10th',7,6,4,17,38,55,'C5','11th',8,10,10,28,50,78,'A1','7th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',6,5,5,16,30,46,'D7','7th',1,6,9,16,34,50,'C6','7th',704,54.15,'10th','good performance, but you could do better','An average performance; your grades are dropping. Stop playing and work harder.promoted');
/*!40000 ALTER TABLE `ss2a_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_psycho_3rd_term`
--

DROP TABLE IF EXISTS `ss2a_psycho_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_psycho_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_psycho_3rd_term`
--

LOCK TABLES `ss2a_psycho_3rd_term` WRITE;
/*!40000 ALTER TABLE `ss2a_psycho_3rd_term` DISABLE KEYS */;
INSERT INTO `ss2a_psycho_3rd_term` VALUES (1,'James Jedidiah Urbanus','A','B','B','B','A','B','B','B','B','A','A','B','B','A','B','A','B'),(2,'Adinchezor Favour ','B','B','A','B','B','B','B','A','B','A','A','B','B','B','B','B','B'),(3,'David Jude Chukwuebuka','C','A','B','B','B','B','A','A','B','B','B','C','B','B','A','C','B'),(4,'Mathew Gideon ','C','A','C','C','C','B','B','A','B','B','B','B','B','B','B','C','B'),(5,'Anigboyu Chidera ','C','B','C','B','C','B','B','A','B','B','B','B','C','C','B','C','C'),(6,'Peter Grace Amarachi','B','A','A','B','B','A','A','B','B','B','A','B','B','B','B','B','B'),(7,'Mathew Ebenezer  ','C','B','B','B','B','B','B','A','B','B','A','B','B','B','B','C','B'),(8,'Ishaya Lois ','A','B','B','A','A','A','A','B','B','A','A','A','B','A','B','A','B'),(9,'Istifanus Rejoice ','B','B','A','A','A','A','A','B','A','A','B','B','B','B','B','A','B'),(10,'Abdulaziz Ishaq ','B','A','A','A','B','A','A','A','A','B','B','B','B','B','B','B','B'),(11,'Ikechukwu Abuchi ','B','A','A','A','B','B','B','A','A','B','B','B','A','B','A','C','B'),(12,'James Danjuma Kaya','A','B','A','A','A','A','A','A','B','A','A','B','B','A','B','A','B'),(13,'Eze Kingsley ','C','B','A','C','B','B','B','A','B','C','B','B','B','B','A','B','B'),(14,'Idoghor Joshua ','B','B','B','B','B','B','B','A','B','B','B','B','B','B','B','B','B');
/*!40000 ALTER TABLE `ss2a_psycho_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2a_subjects`
--

DROP TABLE IF EXISTS `ss2a_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2a_subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class` text NOT NULL,
  `subjects` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2a_subjects`
--

LOCK TABLES `ss2a_subjects` WRITE;
/*!40000 ALTER TABLE `ss2a_subjects` DISABLE KEYS */;
INSERT INTO `ss2a_subjects` VALUES (1,'SS 2A','AGR,ANH,BEL,BIO,CHM,CIV,COM,COS,CRS,DIN,ECO,ELC,ENG,FAC,GEO,GMK,GOV,LIT,MTH,PHY');
/*!40000 ALTER TABLE `ss2a_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_1st_term`
--

DROP TABLE IF EXISTS `ss2b_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_1st_term`
--

LOCK TABLES `ss2b_1st_term` WRITE;
/*!40000 ALTER TABLE `ss2b_1st_term` DISABLE KEYS */;
INSERT INTO `ss2b_1st_term` VALUES (1,'Ahmed Abubakar ','M','18,September,2002',0,0,'','',''),(2,'Alison Vidro ','M','9,May,2001',0,0,'','',''),(3,'Dele Emmanuel ','M','3,March,2003',0,0,'','',''),(4,'Emmanuel Felix ','M','23,September,2003',0,0,'','',''),(5,'Okoro Emmanuel ','M','26,March,2003',0,0,'','',''),(6,'Hussaini Kamarudeen ','M','6,February,2000',0,0,'','',''),(7,'John Ibrahim ','M','27,May,2002',0,0,'','',''),(8,'Ogbodo Brendan Chibueze','M','29,December,2003',0,0,'','',''),(9,'Ogbu Kingsley ','M','21,August,2000',0,0,'','',''),(10,'Yakubu Isah ','M','8,July,2001',0,0,'','',''),(11,'Anaeme Cynthia ','F','9,February,2004',0,0,'','',''),(12,'Eke Nkechinyere ','F','8,November,2001',0,0,'','',''),(13,'Geoffrey Jecinta ','F','10,March,2002',0,0,'','',''),(14,'Ogar Abiyei Faith','F','9,September,2001',0,0,'','',''),(15,'Nwankwo Nzubechukwu ','F','7,December,2002',0,0,'','','');
/*!40000 ALTER TABLE `ss2b_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_2nd_term`
--

DROP TABLE IF EXISTS `ss2b_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_2nd_term`
--

LOCK TABLES `ss2b_2nd_term` WRITE;
/*!40000 ALTER TABLE `ss2b_2nd_term` DISABLE KEYS */;
INSERT INTO `ss2b_2nd_term` VALUES (1,'Ahmed Abubakar ','M','18,September,2002',0,0,'','',''),(2,'Alison Vidro ','M','9,May,2001',0,0,'','',''),(3,'Dele Emmanuel ','M','3,March,2003',0,0,'','',''),(4,'Emmanuel Felix ','M','23,September,2003',0,0,'','',''),(5,'Okoro Emmanuel ','M','26,March,2003',0,0,'','',''),(6,'Hussaini Kamarudeen ','M','6,February,2000',0,0,'','',''),(7,'John Ibrahim ','M','27,May,2002',0,0,'','',''),(8,'Ogbodo Brendan Chibueze','M','29,December,2003',0,0,'','',''),(9,'Ogbu Kingsley ','M','21,August,2000',0,0,'','',''),(10,'Yakubu Isah ','M','8,July,2001',0,0,'','',''),(11,'Anaeme Cynthia ','F','9,February,2004',0,0,'','',''),(12,'Eke Nkechinyere ','F','8,November,2001',0,0,'','',''),(13,'Geoffrey Jecinta ','F','10,March,2002',0,0,'','',''),(14,'Ogar Abiyei Faith','F','9,September,2001',0,0,'','',''),(15,'Nwankwo Nzubechukwu ','F','7,December,2002',0,0,'','','');
/*!40000 ALTER TABLE `ss2b_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_3rd_term`
--

DROP TABLE IF EXISTS `ss2b_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `BEL_ca1` double NOT NULL,
  `BEL_ca2` double NOT NULL,
  `BEL_ca3` double NOT NULL,
  `BEL_ca_total` double NOT NULL,
  `BEL_exam` double NOT NULL,
  `Total_BEL` double NOT NULL,
  `BEL_grade` text NOT NULL,
  `BEL_pos` text NOT NULL,
  `GMK_ca1` double NOT NULL,
  `GMK_ca2` double NOT NULL,
  `GMK_ca3` double NOT NULL,
  `GMK_ca_total` double NOT NULL,
  `GMK_exam` double NOT NULL,
  `Total_GMK` double NOT NULL,
  `GMK_grade` text NOT NULL,
  `GMK_pos` text NOT NULL,
  `DIN_ca1` double NOT NULL,
  `DIN_ca2` double NOT NULL,
  `DIN_ca3` double NOT NULL,
  `DIN_ca_total` double NOT NULL,
  `DIN_exam` double NOT NULL,
  `Total_DIN` double NOT NULL,
  `DIN_grade` text NOT NULL,
  `DIN_pos` text NOT NULL,
  `ELC_ca1` double NOT NULL,
  `ELC_ca2` double NOT NULL,
  `ELC_ca3` double NOT NULL,
  `ELC_ca_total` double NOT NULL,
  `ELC_exam` double NOT NULL,
  `Total_ELC` double NOT NULL,
  `ELC_grade` text NOT NULL,
  `ELC_pos` text NOT NULL,
  `COS_ca1` double NOT NULL,
  `COS_ca2` double NOT NULL,
  `COS_ca3` double NOT NULL,
  `COS_ca_total` double NOT NULL,
  `COS_exam` double NOT NULL,
  `Total_COS` double NOT NULL,
  `COS_grade` text NOT NULL,
  `COS_pos` text NOT NULL,
  `CRS_ca1` double NOT NULL,
  `CRS_ca2` double NOT NULL,
  `CRS_ca3` double NOT NULL,
  `CRS_ca_total` double NOT NULL,
  `CRS_exam` double NOT NULL,
  `Total_CRS` double NOT NULL,
  `CRS_grade` text NOT NULL,
  `CRS_pos` text NOT NULL,
  `BIO_ca1` double NOT NULL,
  `BIO_ca2` double NOT NULL,
  `BIO_ca3` double NOT NULL,
  `BIO_ca_total` double NOT NULL,
  `BIO_exam` double NOT NULL,
  `Total_BIO` double NOT NULL,
  `BIO_grade` text NOT NULL,
  `BIO_pos` text NOT NULL,
  `COM_ca1` double NOT NULL,
  `COM_ca2` double NOT NULL,
  `COM_ca3` double NOT NULL,
  `COM_ca_total` double NOT NULL,
  `COM_exam` double NOT NULL,
  `Total_COM` double NOT NULL,
  `COM_grade` text NOT NULL,
  `COM_pos` text NOT NULL,
  `ECO_ca1` double NOT NULL,
  `ECO_ca2` double NOT NULL,
  `ECO_ca3` double NOT NULL,
  `ECO_ca_total` double NOT NULL,
  `ECO_exam` double NOT NULL,
  `Total_ECO` double NOT NULL,
  `ECO_grade` text NOT NULL,
  `ECO_pos` text NOT NULL,
  `FAC_ca1` double NOT NULL,
  `FAC_ca2` double NOT NULL,
  `FAC_ca3` double NOT NULL,
  `FAC_ca_total` double NOT NULL,
  `FAC_exam` double NOT NULL,
  `Total_FAC` double NOT NULL,
  `FAC_grade` text NOT NULL,
  `FAC_pos` text NOT NULL,
  `MTH_ca1` double NOT NULL,
  `MTH_ca2` double NOT NULL,
  `MTH_ca3` double NOT NULL,
  `MTH_ca_total` double NOT NULL,
  `MTH_exam` double NOT NULL,
  `Total_MTH` double NOT NULL,
  `MTH_grade` text NOT NULL,
  `MTH_pos` text NOT NULL,
  `ENG_ca1` double NOT NULL,
  `ENG_ca2` double NOT NULL,
  `ENG_ca3` double NOT NULL,
  `ENG_ca_total` double NOT NULL,
  `ENG_exam` double NOT NULL,
  `Total_ENG` double NOT NULL,
  `ENG_grade` text NOT NULL,
  `ENG_pos` text NOT NULL,
  `GOV_ca1` double NOT NULL,
  `GOV_ca2` double NOT NULL,
  `GOV_ca3` double NOT NULL,
  `GOV_ca_total` double NOT NULL,
  `GOV_exam` double NOT NULL,
  `Total_GOV` double NOT NULL,
  `GOV_grade` text NOT NULL,
  `GOV_pos` text NOT NULL,
  `LIT_ca1` double NOT NULL,
  `LIT_ca2` double NOT NULL,
  `LIT_ca3` double NOT NULL,
  `LIT_ca_total` double NOT NULL,
  `LIT_exam` double NOT NULL,
  `Total_LIT` double NOT NULL,
  `LIT_grade` text NOT NULL,
  `LIT_pos` text NOT NULL,
  `CIV_ca1` double NOT NULL,
  `CIV_ca2` double NOT NULL,
  `CIV_ca3` double NOT NULL,
  `CIV_ca_total` double NOT NULL,
  `CIV_exam` double NOT NULL,
  `Total_CIV` double NOT NULL,
  `CIV_grade` text NOT NULL,
  `CIV_pos` text NOT NULL,
  `GEO_ca1` double NOT NULL,
  `GEO_ca2` double NOT NULL,
  `GEO_ca3` double NOT NULL,
  `GEO_ca_total` double NOT NULL,
  `GEO_exam` double NOT NULL,
  `Total_GEO` double NOT NULL,
  `GEO_grade` text NOT NULL,
  `GEO_pos` text NOT NULL,
  `CHM_ca1` double NOT NULL,
  `CHM_ca2` double NOT NULL,
  `CHM_ca3` double NOT NULL,
  `CHM_ca_total` double NOT NULL,
  `CHM_exam` double NOT NULL,
  `Total_CHM` double NOT NULL,
  `CHM_grade` text NOT NULL,
  `CHM_pos` text NOT NULL,
  `AGR_ca1` double NOT NULL,
  `AGR_ca2` double NOT NULL,
  `AGR_ca3` double NOT NULL,
  `AGR_ca_total` double NOT NULL,
  `AGR_exam` double NOT NULL,
  `Total_AGR` double NOT NULL,
  `AGR_grade` text NOT NULL,
  `AGR_pos` text NOT NULL,
  `ANH_ca1` double NOT NULL,
  `ANH_ca2` double NOT NULL,
  `ANH_ca3` double NOT NULL,
  `ANH_ca_total` double NOT NULL,
  `ANH_exam` double NOT NULL,
  `Total_ANH` double NOT NULL,
  `ANH_grade` text NOT NULL,
  `ANH_pos` text NOT NULL,
  `PHY_ca1` double NOT NULL,
  `PHY_ca2` double NOT NULL,
  `PHY_ca3` double NOT NULL,
  `PHY_ca_total` double NOT NULL,
  `PHY_exam` double NOT NULL,
  `Total_PHY` double NOT NULL,
  `PHY_grade` text NOT NULL,
  `PHY_pos` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_3rd_term`
--

LOCK TABLES `ss2b_3rd_term` WRITE;
/*!40000 ALTER TABLE `ss2b_3rd_term` DISABLE KEYS */;
INSERT INTO `ss2b_3rd_term` VALUES (1,'Ahmed Abubakar ','M','18,September,2002',4,10,1,15,23,38,'F9','7th',6,5,5,16,32,48,'D7','7th',0,0,0,0,0,0,'','8th',0,0,0,0,0,0,'','12th',10,10,10,30,24,54,'C6','6th',1,1,7,9,8,17,'F9','15th',5,3,10,18,35,53,'C6','11th',0,0,0,0,0,0,'','10th',3,2,7,12,20,32,'F9','12th',0,0,0,0,0,0,'','10th',3,3,4,10,26,36,'F9','13th',0,4,8,12,33,45,'D7','15th',6,7,8,21,25,46,'D7','4th',5,6,7,18,34,52,'C6','7th',5,8,4,17,40,57,'C5','8th',8,9,10,27,37,64,'C4','13th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',542,45.17,'12th','A very poor result, please sit up!','An average performance; your grades are dropping. Stop playing and work harder.promoted'),(2,'Alison Vidro ','M','9,May,2001',0,0,0,0,0,0,'','10th',5,5,5,15,30,45,'D7','10th',0,0,0,0,0,0,'','11th',0,0,0,0,0,0,'','12th',0,0,0,0,25,25,'F9','15th',1,1,6,8,20,28,'F9','12th',6,1,10,17,28,45,'D7','15th',5,1,1,7,30,37,'F9','1st',4,1,1,6,21,27,'F9','13th',5,0,0,5,47,52,'C6','1st',3,6,0,9,35,44,'E8','9th',1,7,8,16,42,58,'C5','11th',2,1,4,7,13,20,'F9','10th',0,0,0,0,0,0,'','10th',5,5,4,14,33,47,'D7','13th',2,7,8,17,42,59,'C5','15th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',487,40.58,'14th','A very poor result, please sit up!','A fair performance; try harder.promoted on trial'),(3,'Dele Emmanuel ','M','3,March,2003',0,0,0,0,0,0,'','10th',5,5,5,15,34,49,'D7','6th',0,0,0,0,0,0,'','11th',2,3,5,10,19,29,'F9','9th',0,0,0,0,35,35,'F9','11th',3,2,7,12,12,24,'F9','13th',7,4,10,21,30,51,'C6','14th',0,0,0,0,0,0,'','10th',0,3,1,4,21,25,'F9','14th',0,0,0,0,0,0,'','10th',3,4,0,7,27,34,'F9','14th',1,4,7,12,42,54,'C6','13th',4,1,8,13,28,41,'E8','6th',6,6,8,20,32,52,'C6','7th',5,5,4,14,28,42,'E8','15th',5,9,10,24,40,64,'C4','13th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',500,41.67,'13th','A very poor result, please sit up!','A fair performance; try harder.promoted'),(4,'Emmanuel Felix ','M','23,September,2003',7,5,10,22,52,74,'B2','1st',0,0,0,0,0,0,'','13th',8,8,10,26,45,71,'B2','4th',9,5,10,24,46,70,'B2','1st',8,8,10,26,42,68,'B3','3rd',1,5,9,15,40,55,'C5','5th',10,7,10,27,55,82,'A1','6th',0,0,0,0,0,0,'','10th',9,4,8,21,50,71,'B2','5th',0,0,0,0,0,0,'','10th',6,6,4,16,45,61,'C4','3rd',2,8,8,18,54,72,'B2','6th',0,0,0,0,0,0,'','11th',0,0,0,0,0,0,'','10th',7,8,8,23,34,57,'C5','8th',10,10,10,30,55,85,'A1','5th',6,8,5,19,40,59,'C5','2nd',5,4,10,19,36,55,'C5','5th',4,5,10,19,30,49,'D7','3rd',10,6,10,26,46,72,'B2','1st',1001,66.73,'5th','A very good result, but improve on the following subject(s):Animal Husbandry and  C.R.S','A very good performance, you have the capacity to do better.promoted'),(5,'Okoro Emmanuel ','M','26,March,2003',6,8,1,15,48,63,'C4','3rd',5,5,6,16,30,46,'D7','8th',1,1,1,3,50,53,'C6','7th',3,5,2,10,10,20,'F9','11th',0,0,10,10,40,50,'C6','8th',7,1,8,16,24,40,'E8','9th',8,10,10,28,45,73,'B2','7th',0,0,0,0,0,0,'','10th',9,3,10,22,32,54,'C6','9th',0,0,0,0,0,0,'','10th',3,7,6,16,32,48,'D7','7th',3,8,9,20,43,63,'C4','10th',0,0,0,0,0,0,'','11th',0,0,0,0,0,0,'','10th',7,8,8,23,36,59,'C5','7th',9,9,10,28,43,71,'B2','9th',4,3,5,12,28,40,'E8','5th',4,6,10,20,40,60,'C4','3rd',0,0,0,0,0,0,'','10th',7,3,8,18,34,52,'C6','5th',792,52.8,'9th','An average performance, please improve on the following subjects; physics, chemistry,  mathematics and electronics. ','A good result; you can do better than this.promoted'),(6,'Hussaini Kamarudeen ','M','6,February,2000',0,0,0,0,0,0,'','10th',5,6,5,16,30,46,'D7','8th',0,0,0,0,0,0,'','10th',4,5,8,17,45,62,'C4','2nd',0,0,0,0,35,35,'F9','11th',5,1,9,15,28,43,'E8','8th',7,5,10,22,41,63,'C4','10th',0,0,0,0,0,0,'','10th',5,4,7,16,39,55,'C5','8th',0,0,0,0,0,0,'','10th',6,6,3,15,25,40,'E8','11th',3,6,9,18,52,70,'B2','8th',1,1,4,6,34,40,'E8','7th',5,5,6,16,52,68,'B3','5th',5,1,4,10,37,47,'D7','13th',7,8,10,25,57,82,'A1','6th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',651,54.25,'8th','A  good result, but improve on the following subject(s):Garment Making,  Computer Science, Mathematics, Government and Civic Education. ','A good result; you can do better than this.promoted'),(7,'John Ibrahim ','M','27,May,2002',0,0,0,0,0,0,'','10th',6,5,5,16,28,44,'E8','12th',0,0,0,0,0,0,'','11th',0,0,0,0,0,0,'','12th',0,0,0,0,36,36,'F9','10th',1,1,8,10,10,20,'F9','14th',6,2,10,18,35,53,'C6','11th',0,0,0,0,0,0,'','10th',3,2,1,6,15,21,'F9','15th',0,0,0,0,0,0,'','10th',2,4,4,10,27,37,'F9','12th',5,4,9,18,31,49,'D7','14th',3,1,4,8,13,21,'F9','9th',4,4,6,14,32,46,'D7','9th',5,4,5,14,37,51,'C6','12th',6,4,8,18,50,68,'B3','11th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',446,40.55,'15th','A very poor performance,however,I recommend you for promotion! ','A fair performance; try harder. promoted on trial'),(8,'Ogbodo Brendan Chibueze','M','29,December,2003',1,1,1,3,32,35,'F9','8th',0,0,0,0,0,0,'','13th',8,1,1,10,48,58,'C5','5th',2,5,10,17,31,48,'D7','7th',0,0,10,10,46,56,'C5','5th',7,5,10,22,48,70,'B2','3rd',10,7,10,27,60,87,'A1','2nd',0,0,0,0,0,0,'','10th',8,5,10,23,53,76,'A1','2nd',0,0,0,0,0,0,'','10th',6,7,6,19,41,60,'C4','4th',6,9,8,23,53,76,'A1','5th',10,10,8,28,55,83,'A1','1st',8,8,10,26,59,85,'A1','2nd',10,8,8,26,53,79,'A1','1st',9,8,10,27,63,90,'A1','3rd',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',7,7,10,24,32,56,'C5','2nd',0,0,0,0,0,0,'','10th',959,68.5,'3rd',' A  wonderful performance, but please improve on the following subjects: Basic electricity, Electronics, Mathematics and Animal Husbandry. ','A very good performance, you have the capacity to do better.promoted'),(9,'Ogbu Kingsley ','M','21,August,2000',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','13th',8,10,10,28,62,90,'A1','1st',3,2,5,10,18,28,'F9','10th',10,10,9,29,55,84,'A1','1st',4,7,10,21,33,54,'C6','6th',10,8,10,28,57,85,'A1','4th',0,0,0,0,0,0,'','10th',9,7,10,26,50,76,'A1','2nd',0,0,0,0,0,0,'','10th',6,6,6,18,41,59,'C5','5th',3,9,9,21,58,79,'A1','4th',0,0,0,0,0,0,'','11th',0,0,0,0,0,0,'','10th',8,8,8,24,53,77,'A1','4th',9,7,10,26,65,91,'A1','2nd',7,7,5,19,26,45,'D7','4th',6,6,10,22,35,57,'C5','4th',7,7,10,24,39,63,'C4','1st',8,5,10,23,48,71,'B2','2nd',959,68.5,'3rd','A wonderful performance,  but please improve on the following subjects: Electronics, Mathematics , Animal Husbandry ,C.R.S and Chemistry. ',' A very good performance, you have the capacity to do better.promoted'),(10,'Yakubu Isah ','M','8,July,2001',0,0,0,0,0,0,'','10th',5,5,5,15,30,45,'D7','10th',0,0,0,0,0,0,'','11th',0,0,0,0,0,0,'','12th',0,0,0,0,32,32,'F9','14th',1,1,5,7,27,34,'F9','10th',8,5,10,23,30,53,'C6','11th',0,0,0,0,0,0,'','10th',7,4,4,15,24,39,'F9','11th',0,0,0,0,0,0,'','10th',4,0,4,8,26,34,'F9','14th',2,8,9,19,44,63,'C4','10th',5,1,4,10,21,31,'F9','8th',8,8,7,23,46,69,'B3','4th',5,5,8,18,38,56,'C5','10th',4,7,10,21,46,67,'B3','12th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',523,47.55,'11th','A very poor performance,however,I recommend you for promotion! ','An average performance; your grades are dropping. Stop playing and work harder. promoted'),(11,'Anaeme Cynthia ','F','9,February,2004',1,1,1,3,52,55,'C5','5th',7,8,7,22,40,62,'C4','3rd',1,1,1,3,52,55,'C5','6th',8,5,5,18,40,58,'C5','5th',10,10,10,30,33,63,'C4','4th',5,9,10,24,38,62,'C4','4th',10,7,10,27,60,87,'A1','2nd',0,0,0,0,0,0,'','10th',9,3,10,22,37,59,'C5','6th',0,0,0,0,0,0,'','10th',6,6,8,20,51,71,'B2','1st',8,8,10,26,55,81,'A1','3rd',0,0,0,0,0,0,'','11th',0,0,0,0,0,0,'','10th',10,8,8,26,52,78,'A1','3rd',7,7,10,24,62,86,'A1','4th',6,5,10,21,25,46,'D7','3rd',6,7,10,23,41,64,'C4','2nd',0,0,0,0,0,0,'','10th',10,5,10,25,46,71,'B2','2nd',998,66.53,'6th','A wonderful performance,  but please improve on the following subjects:Chemistry, Economics,  Basic Electricity,  Garment Making  and Domestic Installation. ','A very good performance, you have the capacity to do better.promoted'),(12,'Eke Nkechinyere ','F','8,November,2001',5,10,6,21,42,63,'C4','3rd',8,7,7,22,32,54,'C6','5th',6,10,10,26,48,74,'B2','3rd',5,5,9,19,31,50,'C6','6th',0,0,10,10,42,52,'C6','7th',10,10,10,30,57,87,'A1','1st',10,9,10,29,56,85,'A1','4th',0,0,0,0,0,0,'','10th',10,10,10,30,44,74,'B2','4th',0,0,0,0,0,0,'','10th',7,5,8,20,30,50,'C6','6th',8,9,10,27,57,84,'A1','1st',10,8,8,26,48,74,'B2','2nd',10,10,10,30,59,89,'A1','1st',8,8,8,24,55,79,'A1','1st',7,9,10,26,56,82,'A1','6th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',997,71.21,'2nd','An excellent performance; keep it up!','An excellent result, keep it up!promoted to next class'),(13,'Geoffrey Jecinta ','F','10,March,2002',10,8,8,26,23,49,'D7','6th',7,8,8,23,40,63,'C4','2nd',0,0,0,0,0,0,'','9th',8,5,9,22,40,62,'C4','2nd',0,0,10,10,33,43,'E8','9th',2,4,10,16,31,47,'D7','7th',8,5,10,23,40,63,'C4','10th',0,0,0,0,0,0,'','10th',8,4,10,22,34,56,'C5','7th',0,0,0,0,0,0,'','10th',3,5,5,13,35,48,'D7','7th',5,9,9,23,48,71,'B2','7th',7,7,8,22,35,57,'C5','3rd',9,9,10,28,39,67,'B3','6th',7,5,8,20,40,60,'C4','6th',5,7,10,22,48,70,'B2','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',756,58.15,'7th','A good result, but please improve on the following subject(s):Mathematics, C.R.S,Government, Computer Science and Basic Electricity. ','An average result; you can do better. promoted'),(14,'Ogar Abiyei Faith','F','9,September,2001',10,10,10,30,42,72,'B2','2nd',9,9,9,27,45,72,'B2','1st',8,10,10,28,62,90,'A1','1st',7,5,8,20,40,60,'C4','4th',8,8,10,26,54,80,'A1','2nd',7,9,10,26,55,81,'A1','2nd',10,7,10,27,62,89,'A1','1st',0,0,0,0,0,0,'','10th',8,5,10,23,54,77,'A1','1st',0,0,0,0,0,0,'','10th',6,7,7,20,44,64,'C4','2nd',5,9,9,23,59,82,'A1','2nd',0,0,0,0,0,0,'','11th',0,0,0,0,0,0,'','10th',7,8,8,23,51,74,'B2','5th',6,10,10,26,68,94,'A1','1st',7,9,10,26,34,60,'C4','1st',7,7,10,24,47,71,'B2','1st',0,0,0,0,0,0,'','10th',10,7,10,27,43,70,'B2','4th',1136,75.73,'1st','An excellent performance; keep it up!','An excellent result, keep it up! The sky is your limit.promoted'),(15,'Nwankwo Nzubechukwu ','F','7,December,2002',1,1,1,3,25,28,'F9','9th',8,9,9,26,30,56,'C5','4th',0,0,0,0,0,0,'','11th',5,5,10,20,26,46,'D7','8th',0,0,10,10,25,35,'F9','11th',3,6,9,18,14,32,'F9','11th',10,8,10,28,38,66,'B3','8th',0,0,0,0,0,0,'','10th',8,6,10,24,20,44,'E8','10th',0,0,0,0,0,0,'','10th',2,6,8,16,27,43,'E8','10th',1,8,8,17,40,57,'C5','12th',4,8,8,20,24,44,'E8','5th',8,8,8,24,49,73,'B2','3rd',5,5,8,18,34,52,'C6','11th',8,9,10,27,45,72,'B2','8th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',0,0,0,0,0,0,'','10th',648,49.85,'10th','A very poor result, please sit up!','A very good improvement; do not relax, keep moving!promoted');
/*!40000 ALTER TABLE `ss2b_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_psycho_3rd_term`
--

DROP TABLE IF EXISTS `ss2b_psycho_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_psycho_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `Honesty` text NOT NULL,
  `Relationship with others` text NOT NULL,
  `Neatness` text NOT NULL,
  `Handwritting` text NOT NULL,
  `Attentiveness` text NOT NULL,
  `Class Attendance` text NOT NULL,
  `Punctuality` text NOT NULL,
  `Games` text NOT NULL,
  `Fluency` text NOT NULL,
  `Assignment` text NOT NULL,
  `Self Control` text NOT NULL,
  `Organisational Ability` text NOT NULL,
  `Initiative` text NOT NULL,
  `Sense Of Responsibility` text NOT NULL,
  `Co-curricular Activities` text NOT NULL,
  `Politeness` text NOT NULL,
  `Emotional Stability` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_psycho_3rd_term`
--

LOCK TABLES `ss2b_psycho_3rd_term` WRITE;
/*!40000 ALTER TABLE `ss2b_psycho_3rd_term` DISABLE KEYS */;
INSERT INTO `ss2b_psycho_3rd_term` VALUES (1,'Ahmed Abubakar ','B','B','B','B','C','B','A','B','C','B','B','C','C','C','B','B','B'),(2,'Alison Vidro ','B','C','C','C','B','C','C','B','C','D','B','B','A','B','B','B','C'),(3,'Dele Emmanuel ','C','C','B','B','C','C','C','B','D','C','D','C','C','C','C','D','D'),(4,'Emmanuel Felix ','B','B','A','B','A','A','A','B','B','B','B','B','B','B','B','B','B'),(5,'Okoro Emmanuel ','C','C','D','D','C','C','B','C','C','B','C','C','C','D','C','C','D'),(6,'Hussaini Kamarudeen ','C','C','C','C','B','C','C','B','C','C','B','B','C','C','C','C','C'),(7,'John Ibrahim ','C','C','C','D','C','D','C','C','C','C','C','B','C','B','C','B','C'),(8,'Ogbodo Brendan Chibueze','B','B','B','B','A','A','A','A','A','A','B','B','A','B','B','B','B'),(9,'Ogbu Kingsley ','B','B','D','C','B','B','B','B','C','B','B','B','A','B','A','B','B'),(10,'Yakubu Isah ','C','B','C','D','C','B','C','B','C','B','C','D','D','B','B','B','B'),(11,'Anaeme Cynthia ','B','B','B','D','C','B','B','B','C','B','B','B','B','C','C','B','C'),(12,'Eke Nkechinyere ','B','B','B','C','A','A','A','C','C','C','C','C','C','B','B','B','A'),(13,'Geoffrey Jecinta ','C','B','C','C','B','C','B','B','B','D','B','B','B','B','C','B','C'),(14,'Ogar Abiyei Faith','B','B','A','A','A','A','A','A','B','A','B','B','B','A','B','B','B'),(15,'Nwankwo Nzubechukwu ','C','B','B','C','B','C','B','B','B','B','B','B','C','B','C','C','B');
/*!40000 ALTER TABLE `ss2b_psycho_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss2b_subjects`
--

DROP TABLE IF EXISTS `ss2b_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss2b_subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class` text NOT NULL,
  `subjects` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss2b_subjects`
--

LOCK TABLES `ss2b_subjects` WRITE;
/*!40000 ALTER TABLE `ss2b_subjects` DISABLE KEYS */;
INSERT INTO `ss2b_subjects` VALUES (1,'SS 2B','AGR,ANH,BEL,BIO,CHM,CIV,COM,COS,CRS,DIN,ECO,ELC,ENG,FAC,GEO,GMK,GOV,LIT,MTH,PHY');
/*!40000 ALTER TABLE `ss2b_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss3_1st_term`
--

DROP TABLE IF EXISTS `ss3_1st_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss3_1st_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss3_1st_term`
--

LOCK TABLES `ss3_1st_term` WRITE;
/*!40000 ALTER TABLE `ss3_1st_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss3_1st_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss3_2nd_term`
--

DROP TABLE IF EXISTS `ss3_2nd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss3_2nd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss3_2nd_term`
--

LOCK TABLES `ss3_2nd_term` WRITE;
/*!40000 ALTER TABLE `ss3_2nd_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss3_2nd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss3_3rd_term`
--

DROP TABLE IF EXISTS `ss3_3rd_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss3_3rd_term` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `DOB` text NOT NULL,
  `grand` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  `teach_com` text NOT NULL,
  `prin_com` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss3_3rd_term`
--

LOCK TABLES `ss3_3rd_term` WRITE;
/*!40000 ALTER TABLE `ss3_3rd_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss3_3rd_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss3_subjects`
--

DROP TABLE IF EXISTS `ss3_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss3_subjects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `class` text NOT NULL,
  `subjects` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss3_subjects`
--

LOCK TABLES `ss3_subjects` WRITE;
/*!40000 ALTER TABLE `ss3_subjects` DISABLE KEYS */;
INSERT INTO `ss3_subjects` VALUES (1,'SS 3','AGR,ANH');
/*!40000 ALTER TABLE `ss3_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempojss1a`
--

DROP TABLE IF EXISTS `tempojss1a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempojss1a` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `st` double NOT NULL,
  `nd` double NOT NULL,
  `rd` double NOT NULL,
  `total` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempojss1a`
--

LOCK TABLES `tempojss1a` WRITE;
/*!40000 ALTER TABLE `tempojss1a` DISABLE KEYS */;
INSERT INTO `tempojss1a` VALUES (1,'ADEBAYO EMMANUEL ',0,0,64.13,64.13,21.376666666666665,'6th'),(2,'AMOS DAN ',0,0,64.73,64.73,21.576666666666668,'5th'),(3,'DAVID WISDOM ',0,0,76.53,76.53,25.51,'1st'),(4,'JACOB JEBLIGA ',0,0,30.47,30.47,10.156666666666666,'17th'),(5,'FRIDAY HENRY EBUBE',0,0,73.33,73.33,24.44333333333333,'2nd'),(6,'JOSEPH JOHN ',0,0,47,47,15.666666666666666,'13th'),(7,'LIVINUS VICTOR ',0,0,69.13,69.13,23.043333333333333,'3rd'),(8,'NWANKO ISAAC ',0,0,59.8,59.8,19.933333333333334,'9th'),(9,'EZEKIEL IBRAHIM EPHRAIM',0,0,46.8,46.8,15.6,'14th'),(10,'BABALOLA AGNESS BIDEMI',0,0,51.67,51.67,17.223333333333333,'11th'),(11,'DILIBE IFUNANYA ROSE',0,0,52.93,52.93,17.643333333333334,'10th'),(12,'GABRIEL BLESSING ',0,0,46.6,46.6,15.533333333333333,'15th'),(13,'ONWA ANGEL MMESOMA',0,0,65.8,65.8,21.933333333333334,'4th'),(14,'ONYEMA PASCHALINE ',0,0,49,49,16.333333333333332,'12th'),(15,'ORJI PRECIOUS ',0,0,62.53,62.53,20.843333333333334,'7th'),(16,'EJIKEME MARVELOUS ',0,0,61.73,61.73,20.576666666666664,'8th'),(17,'ERNEST INUWA ',0,0,36.67,36.67,12.223333333333334,'16th');
/*!40000 ALTER TABLE `tempojss1a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempojss1b`
--

DROP TABLE IF EXISTS `tempojss1b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempojss1b` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `st` double NOT NULL,
  `nd` double NOT NULL,
  `rd` double NOT NULL,
  `total` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempojss1b`
--

LOCK TABLES `tempojss1b` WRITE;
/*!40000 ALTER TABLE `tempojss1b` DISABLE KEYS */;
INSERT INTO `tempojss1b` VALUES (1,'AKPAN RIGHTEOUSNESS ',0,0,75.6,75.6,25.2,'2nd'),(2,'ALHASSAN ISTIFANUS ',0,0,66.13,66.13,22.043333333333333,'4th'),(3,'CHUKWU CHRISTIAN ',0,0,30.73,30.73,10.243333333333334,'17th'),(4,'EBERE CHINONSO ',0,0,44.8,44.8,14.933333333333332,'11th'),(5,'EDISON AMSONOM ',0,0,28.93,28.93,9.643333333333333,'18th'),(6,'JAMES  ENDURANCE ',0,0,48.53,48.53,16.176666666666666,'9th'),(7,'LAZARUS IKECHUKWU ',0,0,35.4,35.4,11.799999999999999,'15th'),(8,'MICHAEL VICTOR ',0,0,48.8,48.8,16.266666666666666,'8th'),(9,'OGUEJIOFOR EBUKA ',0,0,60.6,60.6,20.2,'5th'),(10,'RICHARD TIMOTHY ',0,0,20.8,20.8,6.933333333333334,'19th'),(11,'YAKUBU REUBEN ',0,0,33.53,33.53,11.176666666666668,'16th'),(12,'ISAAC MICHAEL ',0,0,35.87,35.87,11.956666666666665,'14th'),(13,'ANEKE VICTORIA ',0,0,40.13,40.13,13.376666666666667,'12th'),(14,'CHINWUBA EBUBE ',0,0,67.2,67.2,22.400000000000002,'3rd'),(15,'HASKAINU BILWA ',0,0,58.4,58.4,19.466666666666665,'6th'),(16,'JACOB HANNATU ',0,0,48.33,48.33,16.11,'10th'),(17,'NWOBI MARVELOUS IFUNANYA',0,0,76.73,76.73,25.576666666666668,'1st'),(18,'OSUJI JUDITH CHINAZA',0,0,36.4,36.4,12.133333333333333,'13th'),(19,'DOZIE REJOICE CHIAMAKA',0,0,53.4,53.4,17.8,'7th');
/*!40000 ALTER TABLE `tempojss1b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempojss2a`
--

DROP TABLE IF EXISTS `tempojss2a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempojss2a` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `st` double NOT NULL,
  `nd` double NOT NULL,
  `rd` double NOT NULL,
  `total` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempojss2a`
--

LOCK TABLES `tempojss2a` WRITE;
/*!40000 ALTER TABLE `tempojss2a` DISABLE KEYS */;
INSERT INTO `tempojss2a` VALUES (1,'Jeremiah Abigail ',0,0,60.73,60.73,20.243333333333332,'13th'),(2,'Benneth Joy N.',0,0,74.2,74.2,24.733333333333334,'3rd'),(3,'Okwundu Sarah Ifunaya',0,0,71.67,71.67,23.89,'5th'),(4,'Owah Chinedu ',0,0,61.93,61.93,20.643333333333334,'12th'),(5,'Oguejiofor Chinenye ',0,0,65.07,65.07,21.689999999999998,'10th'),(6,'Daniel Miracle  ',0,0,68.07,68.07,22.689999999999998,'6th'),(7,'Mathew Mary B.',0,0,41.8,41.8,13.933333333333332,'20th'),(8,'Daniel Dorcas ',0,0,72.4,72.4,24.133333333333336,'4th'),(9,'Nnagbo Somtochukwu ',0,0,54.33,54.33,18.11,'15th'),(10,'Hickson Tuyelshibeh ',0,0,67.47,67.47,22.49,'7th'),(11,'Imoh Emmanuel  ',0,0,60.33,60.33,20.11,'14th'),(12,'Ohis Joseph ',0,0,75.07,75.07,25.02333333333333,'2nd'),(13,'Ngwan Dokrit ',0,0,52.07,52.07,17.356666666666666,'17th'),(14,'Aniebona Goodluck ',0,0,78.33,78.33,26.11,'1st'),(15,'Peter Jessica M.',0,0,64.07,64.07,21.356666666666666,'11th'),(16,'Agbo Hillary ',0,0,52.8,52.8,17.599999999999998,'16th'),(17,'Andrew Innocent  ',0,0,48.2,48.2,16.066666666666666,'18th'),(18,'Godgift Joseph ',0,0,67.33,67.33,22.44333333333333,'8th'),(19,'Odion Perpetua ',0,0,66.67,66.67,22.223333333333333,'9th'),(20,'Orji Faith ',0,0,43.87,43.87,14.623333333333333,'19th');
/*!40000 ALTER TABLE `tempojss2a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempojss2b`
--

DROP TABLE IF EXISTS `tempojss2b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempojss2b` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `st` double NOT NULL,
  `nd` double NOT NULL,
  `rd` double NOT NULL,
  `total` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempojss2b`
--

LOCK TABLES `tempojss2b` WRITE;
/*!40000 ALTER TABLE `tempojss2b` DISABLE KEYS */;
INSERT INTO `tempojss2b` VALUES (1,'Uzoma Chioma ',0,0,54.27,54.27,18.09,'14th'),(2,'Musa Peace ',0,0,58,58,19.333333333333332,'11th'),(3,'Adakole Blessing ',0,0,66.93,66.93,22.310000000000002,'7th'),(4,'Ebiyie Elizabeth ',0,0,42.6,42.6,14.200000000000001,'18th'),(5,'Mathew Martha ',0,0,53,53,17.666666666666668,'15th'),(6,'Agu Chinaza ',0,0,31.33,31.33,10.443333333333333,'19th'),(7,'Orinya Peace ',0,0,74.27,74.27,24.756666666666664,'3rd'),(8,'Okoli Jecinta ',0,0,64.8,64.8,21.599999999999998,'8th'),(9,'Musa Timothy ',0,0,78,78,26,'2nd'),(10,'Ejikeme Trust ',0,0,69,69,23,'5th'),(11,'Dilibe Chigozie ',0,0,68.13,68.13,22.709999999999997,'6th'),(12,'Nwobi Truimp ',0,0,70.47,70.47,23.49,'4th'),(13,'Chisom Chinweuba ',0,0,62.73,62.73,20.91,'10th'),(14,'Akila Joshua ',0,0,45.87,45.87,15.29,'17th'),(15,'Andrew Isaac ',0,0,55.8,55.8,18.599999999999998,'12th'),(16,'Daniel Omonya ',0,0,48.13,48.13,16.043333333333333,'16th'),(17,'Anthony Benjamin ',0,0,78.73,78.73,26.243333333333336,'1st'),(18,'Solomon John ',0,0,63.27,63.27,21.09,'9th'),(19,'Umeh Austin ',0,0,54.71,54.71,18.236666666666668,'13th');
/*!40000 ALTER TABLE `tempojss2b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temposs1a`
--

DROP TABLE IF EXISTS `temposs1a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temposs1a` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `st` double NOT NULL,
  `nd` double NOT NULL,
  `rd` double NOT NULL,
  `total` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temposs1a`
--

LOCK TABLES `temposs1a` WRITE;
/*!40000 ALTER TABLE `temposs1a` DISABLE KEYS */;
INSERT INTO `temposs1a` VALUES (1,'Ahmed Saad Mohammed',71,59,46.26,176.26,58.75333333333333,'6th'),(2,'Aniebona Favour ',53.67,61.33,60.61,175.61,58.53666666666667,'7th'),(3,'Akpan Godwin ',63,60.67,46.61,170.28,56.76,'9th'),(4,'Anyadiegwu Victory ',57.67,62.67,46.74,167.08,55.693333333333335,'13th'),(5,'Benneth Emmanuel ',58.33,65.67,68.13,192.13,64.04333333333334,'3rd'),(6,'Bulus Samson Oche',63,50,37.87,150.87,50.29,'18th'),(7,'Dilibe Emmanuel ',48.67,53.33,42.83,144.82999999999998,48.276666666666664,'19th'),(8,'Erhrunse Gift ',68.67,54,60.3,182.97,60.99,'5th'),(9,'Ebiyei Mary ',48,61.33,41.65,150.98,50.32666666666666,'17th'),(10,'Joel Jeremiah ',67,49.33,41.52,157.85,52.61666666666667,'16th'),(11,'Lazarus Chiamaka ',68.33,59,45.17,172.5,57.5,'8th'),(12,'Livinus Mary ',71,72.67,78.96,222.63,74.21,'1st'),(13,'Okoli Sunday ',58.67,54.67,50.96,164.3,54.76666666666667,'14th'),(14,'Okpube Loveline ',57.67,64.67,70.78,193.12,64.37333333333333,'2nd'),(15,'Owah Ifeanyi ',65.67,68.33,50,184,61.333333333333336,'4th'),(16,'Tokpa Elizabeth ',52.33,57,58.35,167.68,55.89333333333334,'12th'),(17,'Urhoma Glory ',65,59,46.22,170.22,56.74,'10th'),(18,'Aruoba Chiamaka ',53.33,66,41.3,160.63,53.54333333333333,'15th'),(19,'Nnayelugo Tochukwu ',62,60.67,45.74,168.41,56.13666666666666,'11th');
/*!40000 ALTER TABLE `temposs1a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temposs1b`
--

DROP TABLE IF EXISTS `temposs1b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temposs1b` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `st` double NOT NULL,
  `nd` double NOT NULL,
  `rd` double NOT NULL,
  `total` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temposs1b`
--

LOCK TABLES `temposs1b` WRITE;
/*!40000 ALTER TABLE `temposs1b` DISABLE KEYS */;
INSERT INTO `temposs1b` VALUES (1,'Kefas Solomon ',0,0,82.57,82.57,27.52333333333333,'1st'),(2,'Odion Naomi ',0,0,75.09,75.09,25.03,'2nd'),(3,'Edison Hilda ',0,0,25.3,25.3,8.433333333333334,'18th'),(4,'Obiekezie Daniel ',0,0,42.09,42.09,14.030000000000001,'13th'),(5,'James Queen ',0,0,59.43,59.43,19.81,'5th'),(6,'Agbo Alex ',0,0,54.39,54.39,18.13,'8th'),(7,'Ephraim Oluebube ',0,0,70.57,70.57,23.52333333333333,'4th'),(8,'Ferdinand Victor ',0,0,54.83,54.83,18.276666666666667,'7th'),(9,'James Joshua ',0,0,25.3,25.3,8.433333333333334,'18th'),(10,'Owah Lazarus ',0,0,71.7,71.7,23.900000000000002,'3rd'),(11,'Iloegbunam Vincent ',0,0,48.39,48.39,16.13,'10th'),(12,'Akpan Mary ',0,0,47.13,47.13,15.71,'11th'),(13,'Andrew Precious ',0,0,51.26,51.26,17.086666666666666,'9th'),(14,'Ebere Nmesoma ',0,0,44.87,44.87,14.956666666666665,'12th'),(15,'Lazarus Ifunanya ',0,0,41.91,41.91,13.969999999999999,'14th'),(16,'Lebanu Phoebe ',0,0,32.74,32.74,10.913333333333334,'16th'),(17,'Okoli Anthonia ',0,0,56.43,56.43,18.81,'6th'),(18,'Wakirina Hyelhirra Daniel',0,0,37.04,37.04,12.346666666666666,'15th'),(19,'Umeh Deborah ',0,0,29.04,29.04,9.68,'17th');
/*!40000 ALTER TABLE `temposs1b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temposs2a`
--

DROP TABLE IF EXISTS `temposs2a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temposs2a` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `st` double NOT NULL,
  `nd` double NOT NULL,
  `rd` double NOT NULL,
  `total` double NOT NULL,
  `average` double NOT NULL,
  `position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temposs2a`
--

LOCK TABLES `temposs2a` WRITE;
/*!40000 ALTER TABLE `temposs2a` DISABLE KEYS */;
INSERT INTO `temposs2a` VALUES (1,'James Jedidiah Urbanus',0,0,59.46,59.46,19.82,'6th'),(2,'Adinchezor Favour ',0,0,58,58,19.333333333333332,'9th'),(3,'David Jude Chukwuebuka',0,0,61.14,61.14,20.38,'5th'),(4,'Mathew Gideon ',0,0,48.77,48.77,16.256666666666668,'11th'),(5,'Anigboyu Chidera ',0,0,41.69,41.69,13.896666666666667,'13th'),(6,'Peter Grace Amarachi',0,0,59.43,59.43,19.81,'7th'),(7,'Mathew Ebenezer  ',0,0,44.08,44.08,14.693333333333333,'12th'),(8,'Ishaya Lois ',0,0,74.47,74.47,24.823333333333334,'1st'),(9,'Istifanus Rejoice ',0,0,70.87,70.87,23.623333333333335,'3rd'),(10,'Abdulaziz Ishaq ',0,0,65.73,65.73,21.91,'4th'),(11,'Ikechukwu Abuchi ',0,0,58.33,58.33,19.44333333333333,'8th'),(12,'James Danjuma Kaya',0,0,71.13,71.13,23.709999999999997,'2nd'),(13,'Eze Kingsley ',0,0,35.08,35.08,11.693333333333333,'14th'),(14,'Idoghor Joshua ',0,0,54.15,54.15,18.05,'10th');
/*!40000 ALTER TABLE `temposs2a` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-28 10:35:05
