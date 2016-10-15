-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

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
-- Table structure for table `tbl_classes`
--

DROP TABLE IF EXISTS `tbl_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_classes` (
  `pk_int_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `vchr_class_name` varchar(20) DEFAULT NULL,
  `fk_int_dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_int_class_id`),
  UNIQUE KEY `vchr_class_name` (`vchr_class_name`),
  KEY `fk_int_dept_id` (`fk_int_dept_id`),
  CONSTRAINT `tbl_classes_ibfk_1` FOREIGN KEY (`fk_int_dept_id`) REFERENCES `tbl_dept` (`pk_int_dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_classes`
--

LOCK TABLES `tbl_classes` WRITE;
/*!40000 ALTER TABLE `tbl_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_dept`
--

DROP TABLE IF EXISTS `tbl_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_dept` (
  `pk_int_dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `vchr_dept_name` varchar(25) DEFAULT NULL,
  `vchr_dept_description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pk_int_dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_dept`
--

LOCK TABLES `tbl_dept` WRITE;
/*!40000 ALTER TABLE `tbl_dept` DISABLE KEYS */;
INSERT INTO `tbl_dept` VALUES (1,'Computer Science','CS'),(2,'Electronics','EC'),(3,'Commerce','CC'),(4,'Arts','AR');
/*!40000 ALTER TABLE `tbl_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_enrollment`
--

DROP TABLE IF EXISTS `tbl_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_enrollment` (
  `pk_int_enrollment_id` int(11) NOT NULL AUTO_INCREMENT,
  `int_count` int(11) DEFAULT NULL,
  `fk_int_class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_int_enrollment_id`),
  KEY `fk_int_class_id` (`fk_int_class_id`),
  CONSTRAINT `tbl_enrollment_ibfk_1` FOREIGN KEY (`fk_int_class_id`) REFERENCES `tbl_classes` (`pk_int_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_enrollment`
--

LOCK TABLES `tbl_enrollment` WRITE;
/*!40000 ALTER TABLE `tbl_enrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_stock`
--

DROP TABLE IF EXISTS `tbl_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_stock` (
  `pk_int_stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `vchr_name` varchar(20) DEFAULT NULL,
  `int_Quantity` int(11) DEFAULT NULL,
  `int_Price` float DEFAULT NULL,
  `fk_int_supplier` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_int_stock_id`),
  KEY `fk_int_supplier` (`fk_int_supplier`),
  CONSTRAINT `tbl_stock_ibfk_1` FOREIGN KEY (`fk_int_supplier`) REFERENCES `tbl_supplier` (`Pk_int_supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_stock`
--

LOCK TABLES `tbl_stock` WRITE;
/*!40000 ALTER TABLE `tbl_stock` DISABLE KEYS */;
INSERT INTO `tbl_stock` VALUES (1,'Mouse',10,501.5,1),(2,'Keyboard',5,451.5,3),(3,'Modem',10,1201.5,2),(5,'Headphone',50,751.5,4),(6,'Memory',2,3501.5,4);
/*!40000 ALTER TABLE `tbl_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_supplier`
--

DROP TABLE IF EXISTS `tbl_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_supplier` (
  `Pk_int_supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `vchr_supplier_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Pk_int_supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_supplier`
--

LOCK TABLES `tbl_supplier` WRITE;
/*!40000 ALTER TABLE `tbl_supplier` DISABLE KEYS */;
INSERT INTO `tbl_supplier` VALUES (1,'Logitech'),(2,'Samsung'),(3,'Iball'),(4,'LG'),(5,'Creative');
/*!40000 ALTER TABLE `tbl_supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-15 10:39:51
