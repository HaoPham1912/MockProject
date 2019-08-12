-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: bus
-- ------------------------------------------------------
-- Server version	8.0.15

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'cus1','cus1',1),(2,'sell1','sell1',2),(3,'duy','duy',3),(4,'cus2','cus2',1),(26,'HaoPham191','12345678',1),(27,'cus3','12312312',1),(28,'cus4','12312312',2),(29,'thanglozbaoheo','12345678',1),(30,'thanglozbaoheoa','12345678',1);
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
  `car_position` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_estimate` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_end` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
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
INSERT INTO `bus` VALUES (1,1,'07:00','SG1','01:07:00','07:07'),(2,1,'09:00','SG1','01:07:00','09:07'),(3,1,'13:30','SG1','01:07:00','13:07'),(4,1,'17:45','SG1','01:07:00','17:52'),(5,1,'20:15','SG1','01:07:00','20:22'),(6,1,'23:00','SG1','01:07:00','23:07'),(7,2,'07:00','SG2','00:06:06','13:06'),(8,2,'8:30','SG2','00:06:06','14:36'),(9,2,'10:30','SG2','00:06:06','16:36'),(10,2,'13:00','SG2','00:06:06','19:06'),(11,2,'13:30','SG2','00:06:06','19:36'),(12,2,'14:00','SG2','00:06:06','20:06'),(13,3,'00:15','SG3','00:16:53','17:08'),(14,3,'23:15','SG3','00:16:53','16:08'),(15,3,'22:00','SG3','00:16:53','15:53'),(16,3,'06:00','SG3','00:16:53','22:53'),(17,3,'6:30','SG3','00:16:53','23:23'),(18,3,'7:00','SG3','00:16:53','23:53'),(19,4,'7:00','HN1','01:07:00','07:07'),(20,4,'08:00','HN1','01:07:00','09:07'),(21,4,'13:00','HN1','01:07:00','13:07'),(22,4,'17:00','HN1','01:07:00','17:52'),(23,4,'21:15','HN1','01:07:00','20:22'),(24,4,'23:00','HN1','01:07:00','23:07'),(25,5,'07:00','DL1','00:06:06','13:06'),(26,5,'09:00','DL1','00:06:06','14:36'),(27,5,'13:00','DL1','00:06:06','16:36'),(28,5,'14:15','DL1','00:06:06','19:06'),(29,5,'16:30','DL1','00:06:06','19:36'),(30,5,'20:00','DL1','00:06:06','20:06'),(31,6,'07:00','DN1','00:16:53','17:08'),(32,6,'13:00','DN1','00:16:53','16:08'),(33,6,'17:30','DN1','00:16:53','15:53'),(34,6,'20:15','DN1','00:16:53','22:53'),(35,6,'21:00','DN1','00:16:53','23:23'),(36,6,'23:00','DN1','00:16:53','23:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'Hieu Tâm','0909878654','tammmmma@gmail.com','Qu?n 9'),(2,4,'Lê Văn Luyện','0897865432','luyen@gmail.com','Thái Bình'),(23,26,'Phạm Thị Như Hảoaasas','0337886640','nhuhaopham.spkt@gmail.com','9B, Trịnh Hoài Đức'),(24,27,'Phạm Thị Như ','0337886640','aaa@gmail.com','40/4, Tô Vĩnh DIện, phường Linh Chiểu'),(25,29,'thang bao van loz','0934021059','hung@gmail.com','01, Vo Van Ngan'),(26,30,'Lê V?n Duy','0934021059','hung@gmail.com','2');
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
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `station` (
  `id_station` int(11) NOT NULL AUTO_INCREMENT,
  `stop_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id_station`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Ho Chi Minh','01, Vo Van Ngan'),(2,'Ha Noi','256, Ba Dinh'),(3,'Da Lat','413, Ga Da Lat'),(4,'Da Nang','65, Cau Rong');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
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
  `time_book` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `ticket_bus_idx` (`id_bus`),
  KEY `ticket_cus_idx` (`id_cus`),
  CONSTRAINT `ticket_bus` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_cus` FOREIGN KEY (`id_cus`) REFERENCES `customer` (`id_cus`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (36,'2019-08-13','2019-08-12',3,0,2000000,'09098786545555','Hi?u Tâmmmm',1,1,'09:20:04'),(37,'2019-08-13','2019-08-12',4,0,2000000,'09098786545555','Hi?u Tâmmmm',1,1,'09:20:04'),(38,'2019-08-13','2019-08-12',7,0,2000000,'09098786545555','Hi?u Tâmmmm',1,1,'09:20:04'),(39,'2019-08-13','2019-08-12',8,0,2000000,'09098786545555','Hi?u Tâmmmm',1,1,'09:20:04'),(40,'2019-08-16','2019-08-12',20,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:44:42'),(41,'2019-08-16','2019-08-12',24,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:44:42'),(42,'2019-08-16','2019-08-12',28,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:44:42'),(43,'2019-08-24','2019-08-12',3,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:45:44'),(44,'2019-08-24','2019-08-12',4,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:45:44'),(45,'2019-08-24','2019-08-12',7,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:45:44'),(46,'2019-08-24','2019-08-12',8,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:45:44'),(47,'2019-08-24','2019-08-12',12,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:45:44'),(48,'2019-08-24','2019-08-12',11,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:51:43'),(49,'2019-08-24','2019-08-12',15,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:51:43'),(50,'2019-08-24','2019-08-12',24,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'09:51:43'),(51,'2019-08-30','2019-08-12',24,0,2000000,'0909878654','Hi?u Tâmmmm',3,1,'09:55:38'),(52,'2019-08-30','2019-08-12',28,0,2000000,'0909878654','Hi?u Tâmmmm',3,1,'09:55:38'),(53,'2019-08-21','2019-08-10',4,1,500000,'0909878654','Hi?u Tâmmmm',8,1,'09:57:24'),(56,'2019-08-15','2019-08-12',24,0,2000000,'0909878654','Hi?u Tâmmmm',2,1,'11:07:45'),(57,'2019-08-30','2019-08-12',11,0,2000000,'0909878654','Hi?u Tâmmmm',1,1,'11:11:24'),(58,'2019-08-20','2019-08-12',3,0,2000000,'0909878654','Hi?u Tâmmmmmmmmm',1,1,'11:27:23'),(59,'2019-12-09','2019-08-12',7,0,2000000,'0909878654','Hieu Tâmmm',5,1,'15:02:49'),(60,'2019-12-09','2019-08-12',11,0,2000000,'0909878654','Hieu Tâmmm',5,1,'15:02:49'),(61,'2019-12-09','2019-08-12',15,0,2000000,'0909878654','Hieu Tâmmm',5,1,'15:02:49'),(62,'2019-12-09','2019-08-12',23,0,2000000,'0909878654','Hieu Tâmmm',5,1,'15:02:49'),(63,'2019-12-09','2019-08-12',24,0,2000000,'0909878654','Hieu Tâmmm',5,1,'15:02:49'),(64,'2019-12-09','2019-08-12',27,0,2000000,'0909878654','Hieu Tâmmm',5,1,'15:02:49'),(65,'2019-12-10','2019-08-12',20,0,2000000,'0909878654','Hieu Tâmmm',1,1,'15:04:18'),(66,'2019-08-14','2019-08-12',20,0,2000000,'0909878654','Hieu Tâmmm',5,1,'15:07:21'),(67,'2019-08-14','2019-08-12',24,0,2000000,'0909878654','Hieu Tâmmm',5,1,'15:07:21'),(68,'2019-08-14','2019-08-12',28,0,2000000,'0909878654','Hieu Tâmmm',5,1,'15:07:21'),(69,'2019-08-11','2019-08-12',2,0,2000000,'0909878654','Hieu Tâmmm',1,1,'15:12:18'),(70,'2019-08-17','2019-08-12',4,0,2000000,'0909878654','Hieu Tâm',1,1,'15:42:53'),(71,'2019-08-17','2019-08-12',8,0,2000000,'0909878654','Hieu Tâm',1,1,'15:42:53'),(72,'2019-08-17','2019-08-12',19,0,2000000,'0897865432','Lê V?n Luy?n',1,2,'15:45:00'),(73,'2019-08-17','2019-08-12',23,0,2000000,'0897865432','Lê V?n Luy?n',1,2,'15:45:00'),(74,'2019-08-17','2019-08-12',24,0,2000000,'0897865432','Lê V?n Luy?n',1,2,'15:45:00'),(75,'2019-08-17','2019-08-12',28,0,2000000,'0897865432','Lê V?n Luy?n',1,2,'15:45:00'),(76,'2019-08-17','2019-08-12',16,0,500000,'0897865432','Lê V?n Luy?n',8,2,'15:45:18'),(77,'2019-08-17','2019-08-12',20,0,500000,'0897865432','Lê V?n Luy?n',8,2,'15:45:18'),(78,'2019-08-16','2019-08-12',8,0,2000000,'0909878654','Hieu Tâm',1,1,'16:07:36'),(79,'2019-08-16','2019-08-12',12,0,2000000,'0909878654','Hieu Tâm',1,1,'16:07:36'),(80,'2019-08-16','2019-08-12',16,0,2000000,'0909878654','Hieu Tâm',1,1,'16:07:36');
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

-- Dump completed on 2019-08-12 21:31:48
