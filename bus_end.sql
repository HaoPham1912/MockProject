CREATE DATABASE  IF NOT EXISTS `bus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `bus`;
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `admin_address` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_ad`),
  UNIQUE KEY `id_acc_ad_UNIQUE` (`id_acc_ad`),
  CONSTRAINT `admin_acc` FOREIGN KEY (`id_acc_ad`) REFERENCES `account` (`id_acc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `address` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_cus`),
  UNIQUE KEY `id_acc_UNIQUE` (`id_acc_cus`),
  CONSTRAINT `account_cus` FOREIGN KEY (`id_acc_cus`) REFERENCES `account` (`id_acc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'Hieu Tâmmmm','0909878654','tamm@gmail.com.vn','Quan 9999'),(2,4,'Hieu Tâm','0897865432','luyen@gmail.com','Thái Bìnhh'),(23,26,'Phạm Thị Như Hảo','0337886640','nhuhaopham.spkt@gmail.com','Quận 9'),(24,27,'Bảo Văn','0337886640','aaa@gmail.com','40/4, Tô Vĩnh Diện');
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
  `emp_address` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
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
INSERT INTO `employee` VALUES (1,2,'Phạm Thị Như Hảo a','0337886640','Quận 9','vana@gmail.com.vn'),(2,28,'Phạm Thị Như Hảo','0337886640','Quận 9','aaba@gmail.com');
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
  `time_book` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `ticket_bus_idx` (`id_bus`),
  KEY `ticket_cus_idx` (`id_cus`),
  CONSTRAINT `ticket_bus` FOREIGN KEY (`id_bus`) REFERENCES `bus` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_cus` FOREIGN KEY (`id_cus`) REFERENCES `customer` (`id_cus`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (196,'2019-08-21','2019-08-19',14,1,2000000,'0909878654','Hieu Tâmm',1,1,'15:16:37',''),(208,'2019-08-26','2019-08-20',6,0,2000000,'0909878654','Hieu Tâm',2,1,'10:01:40',''),(209,'2019-08-21','2019-08-20',7,1,2000000,'0909878654','Hieu Tâm',2,1,'10:01:40',''),(210,'2019-08-21','2019-08-20',8,0,2000000,'0909878654','Hieu Tâm',2,1,'16:00:00',''),(211,'2019-08-22','2019-08-20',1,0,2000000,'0909878654','Hieu Tâmmmm',4,1,'15:39:45',''),(212,'2019-08-21','2019-08-20',2,1,2000000,'0909878654','Hieu Tâmmmm',4,1,'15:39:45',''),(213,'2019-08-22','2019-08-20',3,0,2000000,'0909878654','Hieu Tâmmmm',4,1,'15:39:45',''),(214,'2019-08-22','2019-08-20',5,0,2000000,'0909878654','Hieu Tâmmmm',4,1,'15:39:45',''),(215,'2019-08-22','2019-08-20',10,0,2000000,'0909878654','Hieu Tâmmmm',3,1,'15:42:01',''),(216,'2019-08-22','2019-08-20',11,0,2000000,'0909878654','Hieu Tâmmmm',3,1,'15:42:01',''),(217,'2019-08-22','2019-08-20',14,1,2000000,'0909878654','Hieu Tâmmmm',3,1,'15:42:01',''),(218,'2019-08-21','2019-08-20',15,1,2000000,'0909878654','Hieu Tâmmmm',3,1,'15:42:01',''),(219,'2019-08-22','2019-08-20',6,0,2000000,'0909878654','Hieu Tâmmmm',1,1,'15:49:05',''),(220,'2019-08-22','2019-08-20',7,0,2000000,'0909878654','Hieu Tâmmmm',1,1,'15:49:05',''),(221,'2019-08-22','2019-08-20',10,0,2000000,'0909878654','Hieu Tâmmmm',1,1,'15:49:05',''),(222,'2019-08-22','2019-08-20',11,0,2000000,'0909878654','Hieu Tâmmmm',1,1,'15:49:05','');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bus'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `CheckAvailableTicket` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `CheckAvailableTicket` ON SCHEDULE EVERY 1 SECOND STARTS '2019-08-14 14:58:33' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM bus.ticket where status = 0 and TIMESTAMPDIFF(SECOND,concat(date_book," ",time_book),NOW()) > 84600 */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'bus'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-20 16:12:51
