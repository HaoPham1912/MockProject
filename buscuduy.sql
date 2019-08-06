-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bus
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `id_acc` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id_acc`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `role_idx` (`role_id`),
  CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'cus1','cus1',1),(2,'sell1','sell1',2),(3,'duy','duy',3),(4,'cus2','cus2',1),(26,'HaoPham191','12345678',1),(27,'cus3','12312312',1),(28,'cus4','12312312',2);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `id_ad` int(11) NOT NULL AUTO_INCREMENT,
  `id_acc_ad` int(11) NOT NULL,
  `admin_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_ad`),
  UNIQUE KEY `id_acc_ad_UNIQUE` (`id_acc_ad`),
  CONSTRAINT `admin_acc` FOREIGN KEY (`id_acc_ad`) REFERENCES `account` (`id_acc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,3,'Duy LV','0907865432','Quy Nhơn','duylv@gmail.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bus` (
  `id_bus` int(11) NOT NULL AUTO_INCREMENT,
  `id_buses` int(11) NOT NULL,
  `time_go` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `car_position` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time_estimate` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_bus`),
  KEY `bus_buses_idx` (`id_buses`),
  CONSTRAINT `bus_buses` FOREIGN KEY (`id_buses`) REFERENCES `buses` (`id_buses`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
INSERT INTO `bus` VALUES (1,1,'07:00','SG1','01:07:00'),(2,1,'09:00','SG1','01:07:00'),(3,1,'13:30','SG1','01:07:00'),(4,1,'17:45','SG1','01:07:00'),(5,1,'20:15','SG1','01:07:00'),(6,1,'23:00','SG1','01:07:00'),(7,2,'07:00','SG2','00:06:06'),(8,2,'8:30','SG2','00:06:06'),(9,2,'10:30','SG2','00:06:06'),(10,2,'13:00','SG2','00:06:06'),(11,2,'13:30','SG2','00:06:06'),(12,2,'14:00','SG2','00:06:06'),(13,3,'00:15','SG3','00:16:53'),(14,3,'23:15','SG3','00:16:53'),(15,3,'22:00','SG3','00:16:53'),(16,3,'06:00','SG3','00:16:53'),(17,3,'6:30','SG3','00:16:53'),(18,3,'7:00','SG3','00:16:53'),(19,4,'7:00','HN1','01:07:00'),(20,4,'08:00','HN1','01:07:00'),(21,4,'13:00','HN1','01:07:00'),(22,4,'17:00','HN1','01:07:00'),(23,4,'21:15','HN1','01:07:00'),(24,4,'23:00','HN1','01:07:00'),(25,5,'07:00','DL1','00:06:06'),(26,5,'09:00','DL1','00:06:06'),(27,5,'13:00','DL1','00:06:06'),(28,5,'14:15','DL1','00:06:06'),(29,5,'16:30','DL1','00:06:06'),(30,5,'20:00','DL1','00:06:06'),(31,6,'07:00','DN1','00:16:53'),(32,6,'13:00','DN1','00:16:53'),(33,6,'17:30','DN1','00:16:53'),(34,6,'20:15','DN1','00:16:53'),(35,6,'21:00','DN1','00:16:53'),(36,6,'23:00','DN1','00:16:53');
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `buses` (
  `id_buses` int(11) NOT NULL AUTO_INCREMENT,
  `start_place` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_place` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `distance` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id_buses`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses`
--

LOCK TABLES `buses` WRITE;
/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
INSERT INTO `buses` VALUES (1,'Ho Chi Minh','Ha Noi',1712,2000000),(2,'Ho Chi Minh','Da Lat',298,500000),(3,'Ho Chi Minh ','Da Nang',952,1200000),(4,'Ha Noi','Ho Chi Minh',1712,2500000),(5,'Da Lat','Ho Chi Minh',298,450000),(6,'Da Nang','Ho Chi Minh',952,1150000);
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `id_cus` int(11) NOT NULL AUTO_INCREMENT,
  `id_acc_cus` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_cus`),
  UNIQUE KEY `id_acc_UNIQUE` (`id_acc_cus`),
  CONSTRAINT `account_cus` FOREIGN KEY (`id_acc_cus`) REFERENCES `account` (`id_acc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'Hiếu Tâm','0909878654','tammmmma@gmail.com','Quận 9'),(2,4,'Lê Văn Luyện','0897865432','luyen@gmail.com','Thái Bình'),(23,26,'Phạm Thị Như Hảoaasas','0337886640','nhuhaopham.spkt@gmail.com','9B, Trịnh Hoài Đức'),(24,27,'Phạm Thị Như ','0337886640','aaa@gmail.com','40/4, Tô Vĩnh DIện, phường Linh Chiểu');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `id_emp` int(11) NOT NULL AUTO_INCREMENT,
  `id_acc_emp` int(11) NOT NULL,
  `emp_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `emp_phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `emp_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `emp_email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_emp`),
  UNIQUE KEY `id_acc_emp_UNIQUE` (`id_acc_emp`),
  CONSTRAINT `emp_acc` FOREIGN KEY (`id_acc_emp`) REFERENCES `account` (`id_acc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,2,'Hiếu Tâm','0909878654','Quận 9','vana@gmail.com'),(2,28,'Phạm','0337886641','1 Võ Văn Ngân','aaba@gmail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'customer'),(2,'seller'),(3,'admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `date_go` date NOT NULL,
  `date_book` date NOT NULL,
  `seat_number` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_bus` int(11) NOT NULL,
  `id_cus` int(11) NOT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `ticket_bus_idx` (`id_bus`),
  KEY `ticket_cus_idx` (`id_cus`),
  CONSTRAINT `ticket_bus` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_cus` FOREIGN KEY (`id_cus`) REFERENCES `customer` (`id_cus`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'2019-12-09','2019-12-06',22,0,2000,'0123456789','Pham Thi Nhu',1,24),(2,'2019-10-08','2019-10-01',17,0,20000,'093369969','Pham Thi Nhu',2,24),(3,'2019-08-27','2019-08-12',12,0,20000,'095658574','Pham Thi Nhu',3,24);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-06 16:43:33
