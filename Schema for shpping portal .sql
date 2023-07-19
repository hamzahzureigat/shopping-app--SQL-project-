CREATE DATABASE  IF NOT EXISTS `shopping_portal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shopping_portal`;
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: shopping_portal
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `ADDED_IN`
--

DROP TABLE IF EXISTS `ADDED_IN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ADDED_IN` (
  `list_id` int NOT NULL,
  `serial_number` int DEFAULT NULL,
  `tdate1` timestamp NULL DEFAULT NULL,
  KEY `serial_number` (`serial_number`),
  KEY `list_id` (`list_id`),
  CONSTRAINT `added_in_ibfk_1` FOREIGN KEY (`serial_number`) REFERENCES `PRODUCT` (`serial_number`),
  CONSTRAINT `added_in_ibfk_2` FOREIGN KEY (`list_id`) REFERENCES `LIST1` (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADDED_IN`
--

LOCK TABLES `ADDED_IN` WRITE;
/*!40000 ALTER TABLE `ADDED_IN` DISABLE KEYS */;
INSERT INTO `ADDED_IN` VALUES (194,2,'2023-01-14 19:27:08'),(194,3,'2023-01-14 19:27:14'),(305,4,'2023-01-14 19:30:35'),(305,3,'2023-01-14 19:30:36'),(305,2,'2023-01-14 19:30:37'),(867,6,'2023-01-16 05:12:15'),(867,6,'2023-01-16 05:12:17'),(730,5,'2023-01-16 05:14:42'),(730,4,'2023-01-16 05:14:43'),(150,2,'2023-01-17 11:23:13'),(150,2,'2023-01-17 11:23:14'),(454,6,'2023-01-18 07:59:28'),(591,2,'2023-01-18 09:58:53'),(50,2,'2023-01-18 13:06:18'),(50,2,'2023-01-18 13:06:19'),(862,66,'2023-01-22 15:31:01'),(270,2,'2023-01-22 16:44:42'),(270,3,'2023-01-22 16:44:44'),(206,5,'2023-01-22 16:45:03'),(206,5,'2023-01-22 16:45:04'),(827,2,'2023-01-22 18:20:32'),(827,2,'2023-01-22 18:20:33'),(212,2,'2022-01-22 19:27:25'),(212,3,'2022-01-22 19:27:26'),(212,4,'2022-01-22 19:27:27'),(212,5,'2022-01-22 19:27:41'),(996,2,'2022-01-22 19:28:25'),(996,3,'2022-01-22 19:28:26'),(996,4,'2022-01-22 19:28:27'),(74,2,'2023-01-23 10:16:02'),(74,3,'2023-01-23 10:16:03'),(802,2,'2023-01-23 14:51:58'),(802,3,'2023-01-23 14:51:59'),(802,4,'2023-01-23 14:52:01'),(433,66,'2023-01-23 17:39:18');
/*!40000 ALTER TABLE `ADDED_IN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CANCLE`
--

DROP TABLE IF EXISTS `CANCLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CANCLE` (
  `c_check_id` int NOT NULL,
  UNIQUE KEY `c_check_id_UNIQUE` (`c_check_id`),
  CONSTRAINT `cancle_ibfk_2` FOREIGN KEY (`c_check_id`) REFERENCES `CHECK_OUT` (`check_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CANCLE`
--

LOCK TABLES `CANCLE` WRITE;
/*!40000 ALTER TABLE `CANCLE` DISABLE KEYS */;
INSERT INTO `CANCLE` VALUES (12596),(29735),(50176),(71854),(73314),(74147),(77812);
/*!40000 ALTER TABLE `CANCLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHECK_OUT`
--

DROP TABLE IF EXISTS `CHECK_OUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHECK_OUT` (
  `check_id` int NOT NULL,
  `order_number` int NOT NULL,
  `c_email` varchar(150) NOT NULL,
  `time1` timestamp NULL DEFAULT NULL,
  `total_cost` int DEFAULT NULL,
  PRIMARY KEY (`check_id`),
  KEY `c_email` (`c_email`),
  KEY `order_number` (`order_number`),
  CONSTRAINT `check_out_ibfk_1` FOREIGN KEY (`c_email`) REFERENCES `CUSTOMER` (`c_email`),
  CONSTRAINT `check_out_ibfk_2` FOREIGN KEY (`order_number`) REFERENCES `ORDER1` (`order_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHECK_OUT`
--

LOCK TABLES `CHECK_OUT` WRITE;
/*!40000 ALTER TABLE `CHECK_OUT` DISABLE KEYS */;
INSERT INTO `CHECK_OUT` VALUES (12596,7844,'Peter.email.com','2023-01-18 07:59:28',239),(14440,7649,'Amy.email.com','2023-01-14 19:27:14',71),(22681,8396,'Peter.email.com','2023-01-22 15:31:01',22),(23481,7703,'Robert.email.com','2023-01-23 10:16:03',71),(29735,2089,'Peter.email.com','2023-01-16 05:14:43',51),(30487,7841,'Amy.email.com','2023-01-22 16:44:44',71),(35162,9837,'Peter.email.com','2022-01-22 19:27:41',107),(50176,7953,'Peter.email.com','2023-01-17 11:23:14',60),(51056,5790,'Amy.email.com','2023-01-14 19:30:37',86),(61662,9284,'Amy.email.com','2023-01-18 09:58:53',37),(61926,2296,'Robert.email.com','2023-01-23 14:52:01',86),(67260,4870,'Amy.email.com','2023-01-18 13:06:19',60),(71854,3782,'Robert.email.com','2023-01-22 18:20:33',60),(73314,9239,'Robert.email.com','2023-01-23 17:39:18',22),(74147,3628,'Amy.email.com','2022-01-22 19:28:27',86),(77812,6848,'Amy.email.com','2023-01-22 16:45:04',56),(93445,3414,'Amy.email.com','2023-01-16 05:12:17',464);
/*!40000 ALTER TABLE `CHECK_OUT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CHOOSE`
--

DROP TABLE IF EXISTS `CHOOSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHOOSE` (
  `c_email` varchar(150) NOT NULL,
  `serial_number` int NOT NULL,
  KEY `serial_number` (`serial_number`),
  KEY `c_email` (`c_email`),
  CONSTRAINT `choose_ibfk_1` FOREIGN KEY (`serial_number`) REFERENCES `PRODUCT` (`serial_number`),
  CONSTRAINT `choose_ibfk_2` FOREIGN KEY (`c_email`) REFERENCES `CUSTOMER` (`c_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHOOSE`
--

LOCK TABLES `CHOOSE` WRITE;
/*!40000 ALTER TABLE `CHOOSE` DISABLE KEYS */;
INSERT INTO `CHOOSE` VALUES ('Amy.email.com',2),('Amy.email.com',3),('Amy.email.com',4),('Amy.email.com',3),('Amy.email.com',2),('Amy.email.com',6),('Amy.email.com',6),('Peter.email.com',5),('Peter.email.com',4),('Amy.email.com',2),('Amy.email.com',2),('Amy.email.com',3),('Amy.email.com',3),('Peter.email.com',2),('Peter.email.com',2),('Peter.email.com',6),('Amy.email.com',2),('Amy.email.com',2),('Amy.email.com',2),('Peter.email.com',66),('Amy.email.com',2),('Amy.email.com',3),('Amy.email.com',5),('Amy.email.com',5),('Robert.email.com',2),('Robert.email.com',2),('Peter.email.com',2),('Peter.email.com',3),('Peter.email.com',4),('Peter.email.com',5),('Amy.email.com',2),('Amy.email.com',3),('Amy.email.com',4),('Robert.email.com',2),('Robert.email.com',3),('Robert.email.com',2),('Robert.email.com',3),('Robert.email.com',4),('Robert.email.com',66);
/*!40000 ALTER TABLE `CHOOSE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `c_email` varchar(150) NOT NULL,
  UNIQUE KEY `c_email_UNIQUE` (`c_email`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`c_email`) REFERENCES `USER1` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES ('Amy.email.com'),('Hannah.email.com'),('Peter.email.com'),('Robert.email.com');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LIST1`
--

DROP TABLE IF EXISTS `LIST1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LIST1` (
  `list_id` int NOT NULL,
  PRIMARY KEY (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LIST1`
--

LOCK TABLES `LIST1` WRITE;
/*!40000 ALTER TABLE `LIST1` DISABLE KEYS */;
INSERT INTO `LIST1` VALUES (50),(74),(150),(194),(206),(212),(218),(270),(305),(433),(454),(591),(639),(655),(730),(802),(827),(862),(867),(996);
/*!40000 ALTER TABLE `LIST1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDER1`
--

DROP TABLE IF EXISTS `ORDER1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDER1` (
  `order_number` int NOT NULL,
  `list_id` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`order_number`),
  UNIQUE KEY `list_id_UNIQUE` (`list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDER1`
--

LOCK TABLES `ORDER1` WRITE;
/*!40000 ALTER TABLE `ORDER1` DISABLE KEYS */;
INSERT INTO `ORDER1` VALUES (4870,0000000050),(7703,0000000074),(7953,0000000150),(7649,0000000194),(6848,0000000206),(9837,0000000212),(7841,0000000270),(5790,0000000305),(9239,0000000433),(7844,0000000454),(9284,0000000591),(2089,0000000730),(2296,0000000802),(3782,0000000827),(8396,0000000862),(3414,0000000867),(3628,0000000996);
/*!40000 ALTER TABLE `ORDER1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAYMENT`
--

DROP TABLE IF EXISTS `PAYMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAYMENT` (
  `pay_check_id` int NOT NULL,
  `product_cost` float NOT NULL,
  `shipping_cost` float NOT NULL,
  `percentage` float NOT NULL,
  `financial_receipt_number` int NOT NULL,
  UNIQUE KEY `financial_receipt_number` (`financial_receipt_number`),
  KEY `pay_check_id` (`pay_check_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`pay_check_id`) REFERENCES `CHECK_OUT` (`check_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAYMENT`
--

LOCK TABLES `PAYMENT` WRITE;
/*!40000 ALTER TABLE `PAYMENT` DISABLE KEYS */;
INSERT INTO `PAYMENT` VALUES (22681,7,15,0.14,1106710),(51056,70,15,1.4,2250326),(93445,440,15,8.8,2863110),(35162,90,15,1.8,4410795),(30487,55,15,1.1,5381460),(14440,55,15,1.1,5471585),(67260,44,15,0.88,7731533),(23481,55,15,1.1,9067686),(61926,70,15,1.4,9118813);
/*!40000 ALTER TABLE `PAYMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCT` (
  `serial_number` int NOT NULL,
  `category` char(150) DEFAULT NULL,
  `price` float NOT NULL,
  `wight` double NOT NULL,
  `num` int DEFAULT NULL,
  `s_email` varchar(150) DEFAULT NULL,
  `name1` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`serial_number`),
  KEY `s_email` (`s_email`),
  KEY `num` (`num`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`s_email`) REFERENCES `SELLER` (`s_email`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`num`) REFERENCES `WAREHOUSE` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (2,'sport',22,1.5,1,'Sandy.email.com','ball'),(3,'accessories',33,0.5,1,'Sandy.email.com','watche'),(4,'accessories',15,0.2,1,'Sandy.email.com','eyeware'),(5,'accessories',20,0.1,2,'Betty.email.com','hat'),(6,'computer',220,0.5,2,'Betty.email.com','keyboard'),(20,'spor',20,0.2,2,'Betty.email.com','big '),(49,'video game',40,0.5,2,'Sandy.email.com','the last of us '),(66,'sport',7,1,NULL,'Betty.email.com','water bottle'),(67,'school',2,0.1,2,'Sandy.email.com','pen'),(78,'sport',40,1.5,2,'Betty.email.com','big bag ');
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SELLER`
--

DROP TABLE IF EXISTS `SELLER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SELLER` (
  `s_email` varchar(150) NOT NULL,
  UNIQUE KEY `s_email_UNIQUE` (`s_email`),
  CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`s_email`) REFERENCES `USER1` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SELLER`
--

LOCK TABLES `SELLER` WRITE;
/*!40000 ALTER TABLE `SELLER` DISABLE KEYS */;
INSERT INTO `SELLER` VALUES ('Betty.email.com'),('Olivia.email.com'),('Sandy.email.com');
/*!40000 ALTER TABLE `SELLER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER1`
--

DROP TABLE IF EXISTS `USER1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER1` (
  `email` varchar(150) NOT NULL,
  `phone_number` int NOT NULL,
  `pass_word` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER1`
--

LOCK TABLES `USER1` WRITE;
/*!40000 ALTER TABLE `USER1` DISABLE KEYS */;
INSERT INTO `USER1` VALUES ('Amy.email.com',1234567801,'a1234','William','Amy',23),('Betty.email.com',1234567805,'a1234','Richard','Betty',33),('Hannah.email.com',1234567802,'a1234','Ben','Hannah',24),('Michael.email.com',1234567803,'a1234','Vicky','Michael',24),('Olivia.email.com',13456,'ah446','smith','Olivia',55),('Peter.email.com',1234567800,'a1234','Chuck','Peter',22),('Robert.email.com',123456789,'1234','Brown','Robert',44),('Sandy.email.com',1234567804,'a1234','Susan','Sandy',55);
/*!40000 ALTER TABLE `USER1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WAREHOUSE`
--

DROP TABLE IF EXISTS `WAREHOUSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WAREHOUSE` (
  `num` int NOT NULL,
  `capacity` float DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WAREHOUSE`
--

LOCK TABLES `WAREHOUSE` WRITE;
/*!40000 ALTER TABLE `WAREHOUSE` DISABLE KEYS */;
INSERT INTO `WAREHOUSE` VALUES (1,1200,'amman'),(2,1200,'amman'),(3,1300,'amman');
/*!40000 ALTER TABLE `WAREHOUSE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24  9:05:47
