-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 192.168.1.10    Database: LittleLemonDB
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

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
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` date DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `TotalCost` decimal(10,0) DEFAULT NULL,
  `BookingID` int DEFAULT NULL,
  `DeliveryID` int DEFAULT NULL,
  `MenuID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `StaffID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `booking_fk_idx` (`BookingID`),
  KEY `delivery_fk_idx` (`DeliveryID`),
  KEY `customer_fk_idx` (`CustomerID`),
  KEY `staff_fk_idx` (`StaffID`),
  KEY `menu_fk_idx` (`MenuID`),
  CONSTRAINT `customer_fk` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `delivery_fk` FOREIGN KEY (`DeliveryID`) REFERENCES `Delivery` (`DeliveryID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'2023-01-12',3,543,1,1,3,3,2),(2,'2023-01-12',2,324,2,2,1,2,1),(3,'2023-01-12',1,123,3,3,2,4,5),(4,'2023-01-12',3,534,4,4,5,1,6),(5,'2023-01-12',2,234,5,5,7,6,1),(6,'2023-01-13',3,524,6,6,8,10,6),(7,'2023-01-13',2,425,7,7,10,9,5),(8,'2023-01-13',1,142,8,8,4,7,6),(9,'2023-01-13',3,565,9,9,9,5,1),(10,'2023-01-13',1,134,10,10,6,8,2),(11,'2023-01-14',2,255,11,11,5,4,5);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22 11:38:30
