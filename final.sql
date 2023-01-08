CREATE DATABASE  IF NOT EXISTS `final` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: final
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `gts`
--

DROP TABLE IF EXISTS `gts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gts` (
  `id` int NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  `imgclass` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL,
  `onclick` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gts`
--

LOCK TABLES `gts` WRITE;
/*!40000 ALTER TABLE `gts` DISABLE KEYS */;
INSERT INTO `gts` VALUES (1,'column','demo cursor','photo/gts-ash.jpg','width:100%','currentSlide(1)'),(2,'column','demo cursor','photo/gts-black.jpg','width:100%','currentSlide(2)'),(3,'column','demo cursor','photo/gts-white.jpg','width:100%','currentSlide(3)'),(4,'column','demo cursor','photo/gts-yellow.jpg','width:100%','currentSlide(4)');
/*!40000 ALTER TABLE `gts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gtsone`
--

DROP TABLE IF EXISTS `gtsone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gtsone` (
  `id` int NOT NULL,
  `classone` varchar(45) DEFAULT NULL,
  `classtwo` varchar(45) DEFAULT NULL,
  `text` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gtsone`
--

LOCK TABLES `gtsone` WRITE;
/*!40000 ALTER TABLE `gtsone` DISABLE KEYS */;
INSERT INTO `gtsone` VALUES (1,'mySlides','numbertext','1 / 4','photo/gts-ash.jpg','width: 600px'),(2,'mySlides','numbertext','2 / 4','photo/gts-black.jpg','width: 600px'),(3,'mySlides','numbertext','3/ 4','photo/gts-white.jpg','width: 600px'),(4,'mySlides','numbertext','4 / 4','photo/gts-yellow.jpg','width: 600px');
/*!40000 ALTER TABLE `gtsone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guestbook` (
  `GBNO` tinyint NOT NULL AUTO_INCREMENT,
  `GBName` varchar(10) DEFAULT NULL,
  `Mail` varchar(30) DEFAULT NULL,
  `Subject` varchar(30) DEFAULT NULL,
  `Content` text,
  `Putdate` date DEFAULT NULL,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
INSERT INTO `guestbook` VALUES (1,'1','1','1','1','2023-01-07'),(2,'23','2','2','2','2023-01-07'),(3,'2','2','2','2','2023-01-07'),(4,'22','2','2','2','2023-01-07'),(5,'2','2','2','2','2023-01-07'),(6,'2','2','2','2','2023-01-07'),(7,'3','3','3','3','2023-01-07'),(8,'4','4','4','4','2023-01-07'),(9,'5','5','5','5','2023-01-07'),(10,'6','6','6','6','2023-01-07'),(11,'7','7','7','7','2023-01-07'),(12,'50','1','3','s','2023-01-07');
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lx`
--

DROP TABLE IF EXISTS `lx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lx` (
  `id` int NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  `imgclass` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL,
  `onclick` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lx`
--

LOCK TABLES `lx` WRITE;
/*!40000 ALTER TABLE `lx` DISABLE KEYS */;
INSERT INTO `lx` VALUES (1,'column','demo cursor','photo/lx-ash.jpg','width:100%','currentSlide(1)'),(2,'column','demo cursor','photo/lx-black.jpg','width:100%','currentSlide(2)'),(3,'column','demo cursor','photo/lx-green.jpg','width:100%','currentSlide(3)'),(4,'column','demo cursor','photo/lx-red.jpg','width:100%','currentSlide(4)'),(5,'column','demo cursor','photo/lx-white.jpg','width:100%','currentSlide(5)');
/*!40000 ALTER TABLE `lx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lxone`
--

DROP TABLE IF EXISTS `lxone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lxone` (
  `id` int NOT NULL,
  `classone` varchar(45) DEFAULT NULL,
  `classtwo` varchar(45) DEFAULT NULL,
  `text` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lxone`
--

LOCK TABLES `lxone` WRITE;
/*!40000 ALTER TABLE `lxone` DISABLE KEYS */;
INSERT INTO `lxone` VALUES (1,'mySlides','numbertext','1 / 5','photo/lx-ash.jpg','width: 600px;'),(2,'mySlides','numbertext','2 / 5','photo/lx-black.jpg','width: 600px;'),(3,'mySlides','numbertext','3 / 5','photo/lx-green.jpg','width: 600px;'),(4,'mySlides','numbertext','4/ 5','photo/lx-red.jpg','width: 600px;'),(5,'mySlides','numbertext','5 / 5','photo/lx-white.jpg','width: 600px;');
/*!40000 ALTER TABLE `lxone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `add` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('test','1234','測試','0912345678','桃園市中壢區','test@gmail.com');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `IDproduct` int NOT NULL,
  `NameProduct` varchar(45) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `Left` varchar(45) DEFAULT NULL,
  `Src` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primavera`
--

DROP TABLE IF EXISTS `primavera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `primavera` (
  `id` int NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  `imgclass` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL,
  `onclick` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primavera`
--

LOCK TABLES `primavera` WRITE;
/*!40000 ALTER TABLE `primavera` DISABLE KEYS */;
INSERT INTO `primavera` VALUES (1,'column','demo cursor','photo/pri-ash.jpg','width:100%','currentSlide(1)'),(2,'column','demo cursor','photo/pri-green.jpg','width:100%','currentSlide(2)'),(3,'column','demo cursor','photo/pri-red.jpg','width:100%','currentSlide(3)'),(4,'column','demo cursor','photo/pri-white.jpg','width:100%','currentSlide(4)');
/*!40000 ALTER TABLE `primavera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primaveraone`
--

DROP TABLE IF EXISTS `primaveraone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `primaveraone` (
  `id` int NOT NULL,
  `classone` varchar(45) DEFAULT NULL,
  `classtwo` varchar(45) DEFAULT NULL,
  `text` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primaveraone`
--

LOCK TABLES `primaveraone` WRITE;
/*!40000 ALTER TABLE `primaveraone` DISABLE KEYS */;
INSERT INTO `primaveraone` VALUES (1,'mySlides','numbertext','1 / 4','photo/pri-ash.jpg','width: 600px'),(2,'mySlides','numbertext','2 / 4','photo/pri-green.jpg','width: 600px'),(3,'mySlides','numbertext','3/ 4','photo/pri-red.jpg','width: 600px'),(4,'mySlides','numbertext','4 / 4','photo/pri-white.jpg','width: 600px');
/*!40000 ALTER TABLE `primaveraone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `IDproduct` int NOT NULL,
  `NameProduct` varchar(45) DEFAULT NULL,
  `Color` varchar(45) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `Left` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'GTS 300 Super Sport Euro 5','gray','305000','5','gts-ash'),(2,'GTS 300 Super Sport Euro 5','black','305000','37','gts-black'),(3,'GTS 300 Super Sport Euro 5','white','305000','53','gts-white'),(4,'GTS 300 Super Sport Euro 5','yellow','305000','43','gts-yellow'),(5,'LX 125 Euro 5','blue','121900','75','lx-ash'),(6,'LX 125 Euro 5','black','121900','40','lx-black'),(7,'LX 125 Euro 5','green','121900','34','lx-green'),(8,'LX 125 Euro 5','red','121900','51','lx-red'),(9,'LX 125 Euro 5','white','121900','25','lx-white'),(10,'Primavera 150 Euro 5','gray','305000','10','pri-ash'),(11,'Primavera 150 Euro 5','green','305000','35','pri-green'),(12,'Primavera 150 Euro 5','red','305000','20','pri-red'),(13,'Primavera 150 Euro 5','white','305000','48','pri-white'),(14,'Sprint 150 Euro 5','gray','171000','53','spr-ash'),(15,'Sprint 150 Euro 5','blue','171000','21','spr-blue'),(16,'Sprint 150 Euro 5','white','171000','41','spr-white'),(17,'Sprint 150 Euro 5','yellow','171000','39','spr-yellow');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprint`
--

DROP TABLE IF EXISTS `sprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprint` (
  `id` int NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  `imgclass` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL,
  `onclick` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprint`
--

LOCK TABLES `sprint` WRITE;
/*!40000 ALTER TABLE `sprint` DISABLE KEYS */;
INSERT INTO `sprint` VALUES (1,'column','demo cursor','photo/spr-ash.jpg','width:100%','currentSlide(1)'),(2,'column','demo cursor','photo/spr-blue.jpg','width:100%','currentSlide(2)'),(3,'column','demo cursor','photo/spr-white.jpg','width:100%','currentSlide(3)'),(4,'column','demo cursor','photo/spr-yellow.jpg','width:100%','currentSlide(4)');
/*!40000 ALTER TABLE `sprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprintone`
--

DROP TABLE IF EXISTS `sprintone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprintone` (
  `id` int NOT NULL,
  `classone` varchar(45) DEFAULT NULL,
  `classtwo` varchar(45) DEFAULT NULL,
  `text` varchar(45) DEFAULT NULL,
  `src` varchar(45) DEFAULT NULL,
  `style` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprintone`
--

LOCK TABLES `sprintone` WRITE;
/*!40000 ALTER TABLE `sprintone` DISABLE KEYS */;
INSERT INTO `sprintone` VALUES (1,'mySlides','numbertext','1 / 4','photo/spr-ash.jpg','width: 600px;height: 690px;'),(2,'mySlides','numbertext','2 / 4','photo/spr-blue.jpg','width: 600px;height: 690px;'),(3,'mySlides','numbertext','3/ 4','photo/spr-white.jpg','width: 600px;height: 690px;'),(4,'mySlides','numbertext','4 / 4','photo/spr-yellow.jpg','width: 600px;height: 690px;');
/*!40000 ALTER TABLE `sprintone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-07  9:50:33
