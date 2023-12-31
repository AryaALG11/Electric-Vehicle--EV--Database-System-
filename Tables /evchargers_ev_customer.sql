-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: evchargers
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `ev_customer`
--

DROP TABLE IF EXISTS `ev_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ev_customer` (
  `EV_Customer_SSN` int NOT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Serial_Number` int NOT NULL,
  PRIMARY KEY (`EV_Customer_SSN`),
  KEY `Serial_Number` (`Serial_Number`),
  CONSTRAINT `ev_customer_ibfk_1` FOREIGN KEY (`EV_Customer_SSN`) REFERENCES `customer` (`SSN`),
  CONSTRAINT `ev_customer_ibfk_2` FOREIGN KEY (`Serial_Number`) REFERENCES `vehicle` (`Serial_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ev_customer`
--

LOCK TABLES `ev_customer` WRITE;
/*!40000 ALTER TABLE `ev_customer` DISABLE KEYS */;
INSERT INTO `ev_customer` VALUES (123456789,'USA','12345',1),(234567890,'USA','23456',2),(345678901,'USA','34567',3),(456789012,'USA','45678',4),(567890123,'USA','56789',5),(678901234,'USA','67890',6),(789012345,'USA','78901',7),(890123456,'USA','89012',8),(901234567,'USA','90123',9),(912345678,'USA','91234',10);
/*!40000 ALTER TABLE `ev_customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-09 20:38:47
