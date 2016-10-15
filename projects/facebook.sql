-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Facebook
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add profile',7,'add_profile'),(20,'Can change profile',7,'change_profile'),(21,'Can delete profile',7,'delete_profile'),(22,'Can add cors model',8,'add_corsmodel'),(23,'Can change cors model',8,'change_corsmodel'),(24,'Can delete cors model',8,'delete_corsmodel');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$Wpk3c9CT5T4k$B6LnW0AhFBdtO28+ICs1dRIfhWslEEp5jIs2HhoXmAQ=','2016-10-11 17:37:48',1,'ashkar','','','',1,1,'2016-09-26 07:22:53'),(2,'pbkdf2_sha256$30000$tI0XY8z96pO9$nRcvAGS/g1CLiK2wekAq/MpP2s8XP2O5TfIJcqoM3KA=','2016-10-11 15:31:20',0,'ashycodes@gmail.com','Ashkar','Sidheeque','ashycodes@gmail.com',0,1,'2016-10-03 05:07:39'),(3,'pbkdf2_sha256$30000$vf2o2Y0fRGxa$DYq7xR+BYxemWVQYc61oieyNMMSMaW1JCu2FIWlYcLA=','2016-10-05 05:48:31',0,'eva','Eva','Kenz','evakenz@gmail.com',0,1,'2016-10-03 15:02:29'),(79,'pbkdf2_sha256$30000$2kzrty1feHh5$ewpSkwqUaL7uMOy4zdqnASwtI5TThEn+ci1QHuxfOjg=',NULL,0,'shamil@gmail.com','Shamil','Ahmed','shamil@gmail.com',0,1,'2016-10-14 10:32:28'),(108,'pbkdf2_sha256$30000$rwrLcBM8G7aK$3NqMiqtLi7Ue3anR9rG8LxvBb2/G2WBQ8tHTiNsT1DE=',NULL,0,'','','','',0,0,'2016-10-14 16:21:53'),(109,'pbkdf2_sha256$30000$o5CU13MYl1a5$OpPkJsYt02g3MSP9iKk4gg1eezesB/Ez/mrBTB7dnUU=',NULL,0,'test@gmail.com','test','tes','test@gmail.com',0,0,'2016-10-14 16:22:54'),(111,'pbkdf2_sha256$30000$SFjvCnnGf9f1$0cMmMd4fexPS3Gr2FNgCGC5GV/U5mZRNOd0cR1c8xDE=',NULL,0,'fest@gmail.com','test','','fest@gmail.com',0,0,'2016-10-14 16:23:54'),(112,'pbkdf2_sha256$30000$CCrMNiFamje9$NEukyPF0/xwNPjMO1vtyeIQxzo+Mv0v9Iexrg6jwUEk=',NULL,0,'ashkarsidheeque@gmail.com','test','','ashkarsidheeque@gmail.com',0,0,'2016-10-14 16:30:09');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-10-03 05:07:39','2','ashycodes@gmail.com',1,'[{\"added\": {}}]',3,1),(2,'2016-10-03 05:08:05','2','ashycodes@gmail.com',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',3,1),(3,'2016-10-03 15:02:30','3','eva',1,'[{\"added\": {}}]',3,1),(4,'2016-10-03 15:02:50','3','eva',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]',3,1),(5,'2016-10-11 17:36:53','21','nunu@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]',3,1),(6,'2016-10-11 17:38:49','21','nunu@gmail.com',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',3,1),(7,'2016-10-11 17:58:39','25','test@test.com',3,'',3,1),(8,'2016-10-11 17:59:30','24','anu@gmail.com',3,'',3,1),(9,'2016-10-11 18:14:20','26','test@gmail.com',3,'',3,1),(10,'2016-10-12 04:32:44','31','',3,'',3,1),(11,'2016-10-12 04:32:44','27','ash@gmail.com',3,'',3,1),(12,'2016-10-12 04:32:44','22','lulu@gmail.com',3,'',3,1),(13,'2016-10-12 04:32:44','21','nunu@gmail.com',3,'',3,1),(14,'2016-10-12 04:32:44','23','shamil@gmail.com',3,'',3,1),(15,'2016-10-12 04:32:44','28','testt@gmail.com',3,'',3,1),(16,'2016-10-12 04:32:44','30','testu@gmail.com',3,'',3,1),(17,'2016-10-12 07:04:03','33','',3,'',3,1),(18,'2016-10-12 07:04:03','39','ashy@gmail.com',3,'',3,1),(19,'2016-10-12 07:04:03','58','fffgfd@tttttt.commm',3,'',3,1),(20,'2016-10-12 07:04:03','42','sara@gmail.com',3,'',3,1),(21,'2016-10-12 07:04:04','44','saran@gmail.com',3,'',3,1),(22,'2016-10-12 07:04:04','45','saranya@gmail.com',3,'',3,1),(23,'2016-10-12 07:04:04','47','saranyssa@gmail.com',3,'',3,1),(24,'2016-10-12 07:04:04','40','shamil@gmail.com',3,'',3,1),(25,'2016-10-12 07:04:04','41','sharaf@gmail.com',3,'',3,1),(26,'2016-10-12 07:04:04','48','ttt@tttt.com',3,'',3,1),(27,'2016-10-12 07:04:04','53','ttttt@tttt.com',3,'',3,1),(28,'2016-10-12 07:04:04','55','ttttt@tttt.comw',3,'',3,1),(29,'2016-10-12 07:04:04','57','ttttttt@tttttt.commm',3,'',3,1),(30,'2016-10-12 07:04:04','56','ttttttttt@tttttt.commm',3,'',3,1),(31,'2016-10-12 07:12:46','60','asdf@gdf.com',3,'',3,1),(32,'2016-10-12 07:12:46','59','fkljslkf@sfks.lfsjflk',3,'',3,1),(33,'2016-10-12 07:12:47','63','fls@gkl.com',3,'',3,1),(34,'2016-10-12 07:48:42','69','askdl@gl.com',3,'',3,1),(35,'2016-10-12 07:48:42','67','dddllll@g.coom',3,'',3,1),(36,'2016-10-12 07:48:42','66','ddllll@g.coom',3,'',3,1),(37,'2016-10-12 07:48:42','64','llll@g.coom',3,'',3,1),(38,'2016-10-12 07:48:42','68','llslslsls@gmail.com',3,'',3,1),(39,'2016-10-14 05:03:29','15','',3,'',3,1),(40,'2016-10-14 05:03:30','6','af@lljsl.com',3,'',3,1),(41,'2016-10-14 05:03:30','8','hdfghhaf@lljsl.com',3,'',3,1),(42,'2016-10-14 05:03:30','11','hdfllmlmlghhaf@lljsl.com',3,'',3,1),(43,'2016-10-14 05:03:30','9','hdflmlghhaf@lljsl.com',3,'',3,1),(44,'2016-10-14 05:03:30','13','hdkklmlmlghhaf@lljsl.com',3,'',3,1),(45,'2016-10-14 05:03:30','7','hhhaf@lljsl.com',3,'',3,1),(46,'2016-10-14 05:03:30','21','jkkads@kldlj.cjslfkj',3,'',3,1),(47,'2016-10-14 05:03:30','20','jkkas@kldlj.cjslfkj',3,'',3,1),(48,'2016-10-14 05:03:30','14','kklmlmlghhaf@lljsl.com',3,'',3,1),(49,'2016-10-14 05:03:30','18','lkfjddddls@lkl.sdfjs',3,'',3,1),(50,'2016-10-14 05:03:30','19','lkfjddfsddls@lkl.sdfjs',3,'',3,1),(51,'2016-10-14 05:03:30','17','lkfjls@lkl.sdfjs',3,'',3,1),(52,'2016-10-14 05:03:30','4','tlslsssl@gmlss.com',3,'',3,1),(53,'2016-10-14 06:54:57','36','',3,'',3,1),(54,'2016-10-14 06:54:57','27','aasssls@fddf.co',3,'',3,1),(55,'2016-10-14 06:54:57','26','aasssls@fddf.com',3,'',3,1),(56,'2016-10-14 06:54:57','25','aasssls@fddff.com',3,'',3,1),(57,'2016-10-14 06:54:57','34','akjfk@kjlsf.com',3,'',3,1),(58,'2016-10-14 06:54:57','29','asfjl@lwdffjl.coo',3,'',3,1),(59,'2016-10-14 06:54:57','28','asfjl@lwfjl.coo',3,'',3,1),(60,'2016-10-14 06:54:57','30','asssfjl@lwdffjl.coo',3,'',3,1),(61,'2016-10-14 06:54:57','31','dfdfsf@lwdffjl.codf',3,'',3,1),(62,'2016-10-14 06:54:57','33','dffsf@lffjl.codf',3,'',3,1),(63,'2016-10-14 06:54:57','32','dffsf@lwdffjl.codf',3,'',3,1),(64,'2016-10-14 06:54:57','23','dlksf@fff.com',3,'',3,1),(65,'2016-10-14 06:54:57','24','dlsssf@fff.com',3,'',3,1),(66,'2016-10-14 06:54:57','22','flksf@lsffljf.com',3,'',3,1),(67,'2016-10-14 06:57:29','39','',3,'',3,1),(68,'2016-10-14 06:58:17','41','',3,'',3,1),(69,'2016-10-14 06:59:30','42','',3,'',3,1),(70,'2016-10-14 07:55:09','43','',3,'',3,1),(71,'2016-10-14 07:57:03','44','',3,'',3,1),(72,'2016-10-14 08:18:30','45','',3,'',3,1),(73,'2016-10-14 08:18:30','52','ashkar@gmail.com',3,'',3,1),(74,'2016-10-14 08:19:00','53','ashkar@gmail.com',3,'',3,1),(75,'2016-10-14 08:53:51','58','',3,'',3,1),(76,'2016-10-14 08:53:51','62','abi@gmail.com',3,'',3,1),(77,'2016-10-14 08:53:51','60','abshar@gmail.com',3,'',3,1),(78,'2016-10-14 08:53:51','61','abshsar@gmail.com',3,'',3,1),(79,'2016-10-14 08:53:51','54','ashkar@gmail.com',3,'',3,1),(80,'2016-10-14 08:53:51','55','ashkars@gmail.com',3,'',3,1),(81,'2016-10-14 08:53:51','57','ashkassrdds@gmail.com',3,'',3,1),(82,'2016-10-14 08:53:51','56','ashkassrs@gmail.com',3,'',3,1),(83,'2016-10-14 08:57:39','63','shamil@gmail.com',3,'',3,1),(84,'2016-10-14 09:03:48','64','shamil@gmail.com',3,'',3,1),(85,'2016-10-14 09:13:42','65','shamil@gmail.com',3,'',3,1),(86,'2016-10-14 09:21:22','66','shamil@gmail.com',3,'',3,1),(87,'2016-10-14 09:24:13','67','shamil@gmail.com',3,'',3,1),(88,'2016-10-14 09:32:36','69','shamil@gmail.com',3,'',3,1),(89,'2016-10-14 09:42:34','70','shamil@gmail.com',3,'',3,1),(90,'2016-10-14 09:56:20','71','shamil@gmail.com',3,'',3,1),(91,'2016-10-14 09:58:18','72','shamil@gmail.com',3,'',3,1),(92,'2016-10-14 10:01:25','73','shamil@gmail.com',3,'',3,1),(93,'2016-10-14 10:04:39','74','shamil@gmail.com',3,'',3,1),(94,'2016-10-14 10:07:47','75','shamil@gmail.com',3,'',3,1),(95,'2016-10-14 10:13:03','76','shamil@gmail.com',3,'',3,1),(96,'2016-10-14 10:28:48','77','shamil@gmail.com',3,'',3,1),(97,'2016-10-14 10:31:55','78','shamil@gmail.com',3,'',3,1),(98,'2016-10-14 10:40:19','80','test@test.com',3,'',3,1),(99,'2016-10-14 10:42:58','81','test@test.com',3,'',3,1),(100,'2016-10-14 10:48:41','82','test@test.com',3,'',3,1),(101,'2016-10-14 11:00:32','83','test@test.com',3,'',3,1),(102,'2016-10-14 11:02:56','84','test@gmail.com',3,'',3,1),(103,'2016-10-14 11:04:02','85','test@gmail.com',3,'',3,1),(104,'2016-10-14 11:04:50','86','test@gmail.com',3,'',3,1),(105,'2016-10-14 11:07:19','87','test@gmail.com',3,'',3,1),(106,'2016-10-14 11:10:24','88','test@gmail.com',3,'',3,1),(107,'2016-10-14 11:15:02','89','test@gmail.com',3,'',3,1),(108,'2016-10-14 11:15:25','90','test@gmail.com',3,'',3,1),(109,'2016-10-14 11:17:49','91','test@gmail.com',3,'',3,1),(110,'2016-10-14 11:21:22','92','test@gmail.com',3,'',3,1),(111,'2016-10-14 11:23:15','93','test@gmail.com',3,'',3,1),(112,'2016-10-14 11:26:05','94','test@gmail.com',3,'',3,1),(113,'2016-10-14 11:27:59','95','test@gmail.com',3,'',3,1),(114,'2016-10-14 15:06:31','96','test@gmail.com',3,'',3,1),(115,'2016-10-14 15:24:08','97','test@gmail.com',3,'',3,1),(116,'2016-10-14 15:26:15','98','test@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',3,1),(117,'2016-10-14 15:26:40','98','test@gmail.com',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',3,1),(118,'2016-10-14 15:33:47','98','test@gmail.com',3,'',3,1),(119,'2016-10-14 15:44:08','100','ashkarsidheeque@gmail.com',3,'',3,1),(120,'2016-10-14 15:46:13','101','ashkarsidheeque@gmail.com',3,'',3,1),(121,'2016-10-14 15:59:48','102','ashkarsidheeque@gmail.com',3,'',3,1),(122,'2016-10-14 16:00:46','103','ashkarsidheeque@gmail.com',3,'',3,1),(123,'2016-10-14 16:03:18','104','ashkarsidheeque@gmail.com',3,'',3,1),(124,'2016-10-14 16:03:52','105','ashkarsidheeque@gmail.com',3,'',3,1),(125,'2016-10-14 16:19:47','106','ashkarsidheeque@gmail.com',3,'',3,1),(126,'2016-10-14 16:21:47','107','ashkarsidheeque@gmail.com',3,'',3,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(8,'corsheaders','corsmodel'),(7,'login','profile'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-09-26 05:30:18'),(2,'auth','0001_initial','2016-09-26 05:30:21'),(3,'admin','0001_initial','2016-09-26 05:30:21'),(4,'admin','0002_logentry_remove_auto_add','2016-09-26 05:30:22'),(5,'contenttypes','0002_remove_content_type_name','2016-09-26 05:30:22'),(6,'auth','0002_alter_permission_name_max_length','2016-09-26 05:30:22'),(7,'auth','0003_alter_user_email_max_length','2016-09-26 05:30:23'),(8,'auth','0004_alter_user_username_opts','2016-09-26 05:30:23'),(9,'auth','0005_alter_user_last_login_null','2016-09-26 05:30:23'),(10,'auth','0006_require_contenttypes_0002','2016-09-26 05:30:23'),(11,'auth','0007_alter_validators_add_error_messages','2016-09-26 05:30:23'),(12,'auth','0008_alter_user_username_max_length','2016-09-26 05:30:23'),(13,'sessions','0001_initial','2016-09-26 05:30:24'),(14,'login','0001_initial','2016-10-03 07:18:43'),(15,'login','0002_auto_20161011_0719','2016-10-11 07:19:39'),(16,'login','0003_auto_20161014_1000','2016-10-14 10:00:57'),(17,'login','0004_auto_20161014_1012','2016-10-14 10:12:44');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4qirrfvgo9bop67lmdigz0n1e1to8qkc','OTQxYWY0MDM2YmIwOTViMjQ2ZjY2YWE2NzM3YjVmNGQ5YzVhYjZkNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImViZTlhYTZiZTg2NWQxMTFmNmVkNjg4MTJhYWYyMjBlNzBlMWQzYWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-10-25 17:37:48'),('8gdf7gfulk0198xgr1xx0rnoaj4407l1','MzE4NDNkYjE3ODkwZWYzNzBmNTk5ODVhMzk0ODFkMDBmZTFkYjkyMzp7fQ==','2016-10-25 15:18:35'),('ab6fsvwjqesh96pgx7gm8eew07c3t4d7','YmJjNjU1ZGQwYzJkOGZlOTZmYTAzOWUzZjhiOWVjMjRkNDBkMWJhYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFhZTk5OGY5YzQzZTg2MjkwZmJlYmE2YjM5MzZkNzUyZWExNzJlZmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIiwidXNlciI6Mn0=','2016-10-25 15:31:18'),('kdgc56vdg7xidbm5b35fekm7ngqm62w6','MzE4NDNkYjE3ODkwZWYzNzBmNTk5ODVhMzk0ODFkMDBmZTFkYjkyMzp7fQ==','2016-10-25 15:18:05'),('na7qba5yrufboq7zcxufb0gkbzbzmyhi','YmJjNjU1ZGQwYzJkOGZlOTZmYTAzOWUzZjhiOWVjMjRkNDBkMWJhYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFhZTk5OGY5YzQzZTg2MjkwZmJlYmE2YjM5MzZkNzUyZWExNzJlZmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIiwidXNlciI6Mn0=','2016-10-25 15:21:40'),('wsn3f8g5hmdsgswe267g7qd5mpsu9ohd','MzE4NDNkYjE3ODkwZWYzNzBmNTk5ODVhMzk0ODFkMDBmZTFkYjkyMzp7fQ==','2016-10-25 15:21:05'),('wsqx0o5fpah8k8kzvzm7j2cd7jtkibji','NGFiM2E1NzhiMjliMTBiYjJhNDQwMTBiMjVlZWJjNmYxZWVmMzdkZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImI0ZTg2M2QwYzk0NTYzYmIxMDQyODE3NDM4MWQ5ZGQyM2Y2YWEzZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=','2016-10-19 05:48:31'),('xm08w37fy4a0mwrag08pcjuldfq2udc7','YmJjNjU1ZGQwYzJkOGZlOTZmYTAzOWUzZjhiOWVjMjRkNDBkMWJhYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjFhZTk5OGY5YzQzZTg2MjkwZmJlYmE2YjM5MzZkNzUyZWExNzJlZmYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIiwidXNlciI6Mn0=','2016-10-25 15:31:20'),('zi9rpb1xiu4lnhsbapkc7qm0d9c7bvoe','MzE4NDNkYjE3ODkwZWYzNzBmNTk5ODVhMzk0ODFkMDBmZTFkYjkyMzp7fQ==','2016-10-25 15:19:39');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_profile`
--

DROP TABLE IF EXISTS `login_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(100) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `login_profile_user_id_2714a7c6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_profile`
--

LOCK TABLES `login_profile` WRITE;
/*!40000 ALTER TABLE `login_profile` DISABLE KEYS */;
INSERT INTO `login_profile` VALUES (2,' http://127.0.0.1:9000/static/images/pro.jpeg ','1988-09-01','M',2),(3,' http://127.0.0.1:9000/static/images/eva.jpeg ','2016-02-16','F',3),(23,'static/media/shamil.jpg',NULL,'M',79),(42,'http://127.0.0.1:9000/static/media/ashkar.JPG',NULL,'M',111),(43,'http://127.0.0.1:9000/static/media/ashkar.JPG',NULL,'M',112);
/*!40000 ALTER TABLE `login_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-15 10:36:47
