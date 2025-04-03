CREATE DATABASE  IF NOT EXISTS `studentinfodb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `studentinfodb`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: studentinfodb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `coursetb`
--

DROP TABLE IF EXISTS `coursetb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursetb` (
  `courseId` int NOT NULL,
  `courseName` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursetb`
--

LOCK TABLES `coursetb` WRITE;
/*!40000 ALTER TABLE `coursetb` DISABLE KEYS */;
INSERT INTO `coursetb` VALUES (1,'IT'),(2,'BSBA'),(3,'ABEL'),(4,'BPA');
/*!40000 ALTER TABLE `coursetb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentrecordtb`
--

DROP TABLE IF EXISTS `studentrecordtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentrecordtb` (
  `studentId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(250) DEFAULT NULL,
  `lastName` varchar(250) DEFAULT NULL,
  `middleName` varchar(250) DEFAULT NULL,
  `houseNo` int DEFAULT NULL,
  `brgyName` varchar(250) DEFAULT NULL,
  `municipality` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `region` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `birthdate` varchar(250) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `studContactNo` varchar(250) DEFAULT NULL,
  `emailAddress` varchar(250) DEFAULT NULL,
  `guardianFirstName` varchar(250) DEFAULT NULL,
  `guardianLastName` varchar(250) DEFAULT NULL,
  `hobbies` varchar(250) DEFAULT NULL,
  `nickname` varchar(250) DEFAULT NULL,
  `courseId` int DEFAULT NULL,
  `yearId` int DEFAULT NULL,
  PRIMARY KEY (`studentId`),
  KEY `courseId` (`courseId`),
  KEY `yearId` (`yearId`),
  CONSTRAINT `studentrecordtb_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `coursetb` (`courseId`),
  CONSTRAINT `studentrecordtb_ibfk_2` FOREIGN KEY (`yearId`) REFERENCES `yeartb` (`yearId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentrecordtb`
--

LOCK TABLES `studentrecordtb` WRITE;
/*!40000 ALTER TABLE `studentrecordtb` DISABLE KEYS */;
INSERT INTO `studentrecordtb` VALUES (1,'Von Andrei','Macaraeg','Mabanglo',142,'Nalsian Norte','Byambang','Pangasinan','Region 1','Philippines','2002-11-30',23,'09958621062','vmacaraeg@gmail.com','Josephine','Macaraeg','Playing games','Bon',1,3),(2,'Ana','Santos','Gomez',45,'Barangay 3','Quezon City','Metro Manila','NCR','Philippines','2001-08-22',23,'09234567890','ana@email.com','Pedro','Santos','Drawing','Ana',1,2),(3,'Carlos','Bautista','Mendoza',78,'Barangay 6','Taguig','Metro Manila','NCR','Philippines','2000-04-10',25,'09345678901','carlos@email.com','Luisa','Bautista','Playing basketball','Carlos',1,3),(4,'Maria','Martinez','Lopez',12,'Barangay 8','Pasig','Metro Manila','NCR','Philippines','1999-07-19',24,'09456789012','maria@email.com','Juan','Martinez','Cooking','Maria',2,2),(5,'Pedro','Reyes','Gonzales',89,'Barangay 2','Makati','Metro Manila','NCR','Philippines','1997-11-14',27,'09567890123','pedro@email.com','Maria','Reyes','Photography','Pedro',2,3);
/*!40000 ALTER TABLE `studentrecordtb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeartb`
--

DROP TABLE IF EXISTS `yeartb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yeartb` (
  `yearId` int NOT NULL,
  `yearLvl` int DEFAULT NULL,
  PRIMARY KEY (`yearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeartb`
--

LOCK TABLES `yeartb` WRITE;
/*!40000 ALTER TABLE `yeartb` DISABLE KEYS */;
INSERT INTO `yeartb` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `yeartb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-04  3:31:43
