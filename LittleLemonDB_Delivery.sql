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
-- Table structure for table `Delivery`
--

DROP TABLE IF EXISTS `Delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Delivery` (
  `DeliveryID` int NOT NULL AUTO_INCREMENT,
  `DeliveryDate` date DEFAULT NULL,
  `DeliveryStatus` varchar(45) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DeliveryID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Delivery`
--

LOCK TABLES `Delivery` WRITE;
/*!40000 ALTER TABLE `Delivery` DISABLE KEYS */;
INSERT INTO `Delivery` VALUES (1,'2023-01-12','Delivered','100 Nguyen Van Troi','Phu Nhuan','Vietnam'),(2,'2023-01-12','Delivered','23 Nguyen Dinh Chieu','3','Vietnam'),(3,'2023-01-12','Delivered','115 Nguyen Tat Thanh','4','Vietnam'),(4,'2023-01-12','Delivered','205 Nam Ky Khoi Nghia','3','Vietnam'),(5,'2023-01-12','Delivered','76 Nguyen Thi Dinh','2','Vietnam'),(6,'2023-01-13','Delivered','683 Nguyen Duy Trinh','2','Vietnam'),(7,'2023-01-13','Delivered','97 Le Van Sy','3','Vietnam'),(8,'2023-01-13','Delivered','120 Luong Dinh Cua','2','Vietnam'),(9,'2023-01-13','On-going','90 Le Van Viet','9','Vietnam'),(10,'2023-01-13','On-going','205 Vo Van Ngan','Thu Duc','Vietnam'),(11,'2023-01-14','Cancelled','1 Cong Hoa','Tan Binh','Vietnam');
/*!40000 ALTER TABLE `Delivery` ENABLE KEYS */;
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
