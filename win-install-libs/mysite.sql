CREATE DATABASE  IF NOT EXISTS `mysite` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mysite`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: mysite
-- ------------------------------------------------------
-- Server version	5.6.20

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(31,'Can add foto',11,'add_foto'),(32,'Can change foto',11,'change_foto'),(33,'Can delete foto',11,'delete_foto'),(37,'Can add kv store',13,'add_kvstore'),(38,'Can change kv store',13,'change_kvstore'),(39,'Can delete kv store',13,'delete_kvstore'),(40,'Can add site',14,'add_site'),(41,'Can change site',14,'change_site'),(42,'Can delete site',14,'delete_site'),(43,'Can add flat page',15,'add_flatpage'),(44,'Can change flat page',15,'change_flatpage'),(45,'Can delete flat page',15,'delete_flatpage');
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
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$8wmhN0jRL1TB$CZya8aqiHl5QFX0idhUo3F9Yt2LZAbxthPD5Nzu8pPs=','2014-09-09 10:13:13',1,'user','','','olexandr.kara@gmail.com',1,1,'2014-08-29 09:07:09'),(2,'pbkdf2_sha256$12000$DemgsHfST05O$iKKEP5olZgffwxcXabQ/pqNFGqXa+LN16PyQhC/2FiU=','2014-09-10 08:19:46',0,'anna','Анна','Кара','kiev.tatuazh@gmail.com',1,1,'2014-09-10 08:16:36');
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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (4,2,31),(1,2,32),(2,2,33),(3,2,44);
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
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (2,'2014-08-29 11:13:02',1,11,'2','Foto object',1,''),(3,'2014-08-29 11:13:14',1,11,'2','Foto object',2,'Ни одно поле не изменено.'),(4,'2014-08-29 11:13:46',1,11,'2','Foto object',2,'Изменен big_url и small_url.'),(5,'2014-08-29 11:22:08',1,11,'2','Foto object',2,'Изменен small_url.'),(6,'2014-08-29 12:26:41',1,11,'1','Foto object',1,''),(7,'2014-08-29 13:23:30',1,11,'2','Foto object',1,''),(8,'2014-08-29 14:17:29',1,11,'1','Foto object',1,''),(9,'2014-08-29 14:48:51',1,11,'2','Foto object',1,''),(10,'2014-08-29 14:55:03',1,11,'3','Foto object',1,''),(11,'2014-08-29 15:00:54',1,11,'3','Foto object',3,''),(12,'2014-08-29 15:01:17',1,11,'2','Foto object',3,''),(13,'2014-08-29 15:01:29',1,11,'1','Foto object',3,''),(14,'2014-08-29 15:01:44',1,11,'4','Foto object',1,''),(15,'2014-08-29 15:01:56',1,11,'5','Foto object',1,''),(16,'2014-08-29 15:13:12',1,11,'6','Foto object',1,''),(17,'2014-08-29 15:43:17',1,11,'1','Foto object',1,''),(18,'2014-08-29 15:43:57',1,11,'2','Foto object',1,''),(19,'2014-08-29 15:47:04',1,11,'3','Foto object',1,''),(20,'2014-08-29 15:48:46',1,11,'4','Foto object',1,''),(21,'2014-08-29 15:54:33',1,11,'5','Foto object',1,''),(22,'2014-08-29 15:55:10',1,11,'6','Foto object',1,''),(23,'2014-08-29 15:56:39',1,11,'7','Foto object',1,''),(24,'2014-08-29 15:57:15',1,11,'8','Foto object',1,''),(25,'2014-08-29 15:59:03',1,11,'9','Foto object',1,''),(26,'2014-08-29 16:02:10',1,11,'9','Foto object',2,'Изменен comment.'),(27,'2014-08-29 16:02:17',1,11,'9','Foto object',2,'Ни одно поле не изменено.'),(28,'2014-08-29 16:08:49',1,11,'10','Foto object',1,''),(29,'2014-08-29 16:39:45',1,11,'11','Foto object',1,''),(30,'2014-09-02 08:21:05',1,11,'12','Foto object',1,''),(31,'2014-09-02 08:23:06',1,11,'12','Foto object',3,''),(32,'2014-09-02 08:23:32',1,11,'10','Foto object',3,''),(33,'2014-09-02 12:13:35',1,11,'9','Foto object',3,''),(34,'2014-09-02 12:14:03',1,11,'11','Foto object',3,''),(35,'2014-09-03 14:26:43',1,11,'13','Foto object',1,''),(36,'2014-09-03 14:32:16',1,11,'13','Foto object',2,'Изменен title.'),(37,'2014-09-05 13:00:06',1,14,'2','localhost',1,''),(38,'2014-09-05 13:02:05',1,14,'1','example.com',3,''),(39,'2014-09-05 13:21:26',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',1,''),(40,'2014-09-05 13:23:16',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Ни одно поле не изменено.'),(41,'2014-09-05 13:24:20',1,14,'2','localhost:8000',2,'Изменен domain.'),(42,'2014-09-05 13:24:33',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Ни одно поле не изменено.'),(43,'2014-09-05 13:26:51',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен template_name.'),(44,'2014-09-05 13:28:33',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Ни одно поле не изменено.'),(45,'2014-09-05 13:29:25',1,14,'2','http://localhost:8000/',2,'Изменен domain.'),(46,'2014-09-05 13:31:02',1,14,'2','localhost:8000',2,'Изменен domain.'),(47,'2014-09-05 13:31:20',1,15,'1','/about/contact/ -- Татуаж в Киеве - о мастере',2,'Изменен url.'),(48,'2014-09-05 13:35:04',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен url.'),(49,'2014-09-05 14:15:16',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен template_name.'),(50,'2014-09-05 14:40:18',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(51,'2014-09-05 14:42:43',1,15,'1','/ -- Татуаж в Киеве - о мастере',2,'Изменен url.'),(52,'2014-09-05 14:43:00',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен url и content.'),(53,'2014-09-05 14:43:21',1,15,'1','/ -- Татуаж в Киеве - о мастере',2,'Изменен url и content.'),(54,'2014-09-05 14:43:47',1,15,'1','/ceni/ -- Татуаж в Киеве - о мастере',2,'Изменен url.'),(55,'2014-09-05 14:44:16',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен url.'),(56,'2014-09-05 14:44:30',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(57,'2014-09-05 14:44:43',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(58,'2014-09-05 14:44:56',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(59,'2014-09-05 14:47:43',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(60,'2014-09-05 15:02:21',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(61,'2014-09-05 15:02:48',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Ни одно поле не изменено.'),(62,'2014-09-05 15:03:14',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(63,'2014-09-05 15:04:39',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(64,'2014-09-05 15:07:37',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(65,'2014-09-05 15:12:09',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(66,'2014-09-05 15:38:01',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Ни одно поле не изменено.'),(67,'2014-09-08 13:46:52',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(68,'2014-09-08 13:52:04',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(69,'2014-09-09 10:18:00',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(70,'2014-09-09 10:23:37',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(71,'2014-09-09 10:24:11',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Ни одно поле не изменено.'),(72,'2014-09-09 10:24:19',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(73,'2014-09-09 10:25:39',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(74,'2014-09-09 10:27:14',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(75,'2014-09-09 10:28:49',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(76,'2014-09-09 10:35:11',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(77,'2014-09-09 10:52:04',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(78,'2014-09-09 10:58:11',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',2,'Изменен content.'),(79,'2014-09-09 14:19:35',1,15,'2','/ -- Татуаж в Киеве - Главная',1,''),(80,'2014-09-09 14:20:01',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Ни одно поле не изменено.'),(81,'2014-09-09 14:22:16',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Ни одно поле не изменено.'),(82,'2014-09-09 14:35:55',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Ни одно поле не изменено.'),(83,'2014-09-09 14:35:59',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Ни одно поле не изменено.'),(84,'2014-09-10 07:13:55',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен template_name.'),(85,'2014-09-10 07:14:11',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен content.'),(86,'2014-09-10 07:14:58',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен content.'),(87,'2014-09-10 07:15:43',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен template_name.'),(88,'2014-09-10 07:16:17',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен content.'),(89,'2014-09-10 07:16:49',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен template_name.'),(90,'2014-09-10 07:17:41',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен template_name.'),(91,'2014-09-10 07:17:49',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Ни одно поле не изменено.'),(92,'2014-09-10 07:19:19',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Ни одно поле не изменено.'),(93,'2014-09-10 07:19:52',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен content.'),(94,'2014-09-10 07:20:21',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Ни одно поле не изменено.'),(95,'2014-09-10 07:21:06',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Ни одно поле не изменено.'),(96,'2014-09-10 07:21:47',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен content.'),(97,'2014-09-10 07:22:30',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен content.'),(98,'2014-09-10 07:24:21',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен content.'),(99,'2014-09-10 07:26:53',1,15,'2','/ -- Татуаж в Киеве - Главная',2,'Изменен content.'),(100,'2014-09-10 07:29:30',1,15,'3','/foto/ -- Татуаж в Киеве - Фото татуаж бровей',1,''),(101,'2014-09-10 07:32:05',1,15,'3','/foto/ -- Татуаж в Киеве - Фото татуаж бровей',2,'Ни одно поле не изменено.'),(102,'2014-09-10 07:52:01',1,15,'4','/ceni/ -- Татуаж в Киеве - Цены',1,''),(103,'2014-09-10 07:54:39',1,15,'5','/otzivi/ -- Татуаж в Киеве - Отзывы',1,''),(104,'2014-09-10 07:58:41',1,15,'6','/faq/ -- Татуаж в Киеве - Вопросы',1,''),(105,'2014-09-10 07:58:58',1,15,'6','/faq/ -- Татуаж в Киеве - Вопросы',2,'Изменен content.'),(106,'2014-09-10 08:01:50',1,15,'1','/about/ -- Татуаж в Киеве - о мастере',3,''),(107,'2014-09-10 08:04:46',1,15,'7','/thanks/ -- Татуаж в Киеве - Спасибо',1,''),(108,'2014-09-10 08:11:05',1,15,'3','/foto/ -- Don\'t touch',2,'Изменен title.'),(109,'2014-09-10 08:11:50',1,15,'8','/foto/foto-brovi/ -- Don\'t touch',1,''),(110,'2014-09-10 08:12:30',1,15,'9','/foto/foto-tatuazh-glaz/ -- Don\'t touch',1,''),(111,'2014-09-10 08:13:22',1,15,'10','/foto/foto-tatuazh-gub/ -- Don\'t touch',1,''),(112,'2014-09-10 08:13:39',1,15,'10','/foto/foto-tatuazh-gub/ -- Don\'t touch',2,'Ни одно поле не изменено.'),(113,'2014-09-10 08:14:42',1,15,'11','/kontakti/ -- Don\'t touch',1,''),(114,'2014-09-10 08:15:16',1,15,'8','/foto/foto-brovi/ -- Don\'t touch',2,'Изменен template_name.'),(115,'2014-09-10 08:15:34',1,15,'9','/foto/foto-tatuazh-glaz/ -- Don\'t touch',2,'Изменен template_name.'),(116,'2014-09-10 08:15:43',1,15,'10','/foto/foto-tatuazh-gub/ -- Don\'t touch',2,'Изменен template_name.'),(117,'2014-09-10 08:16:36',1,4,'2','anna',1,''),(118,'2014-09-10 08:19:23',1,4,'2','anna',2,'Изменен first_name,last_name,email,is_staff и user_permissions.');
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
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(11,'foto','fotos','foto'),(13,'kv store','thumbnail','kvstore'),(14,'site','sites','site'),(15,'flat page','flatpages','flatpage');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage`
--

DROP TABLE IF EXISTS `django_flatpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_flatpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(170) NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_flatpage_c379dc61` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage`
--

LOCK TABLES `django_flatpage` WRITE;
/*!40000 ALTER TABLE `django_flatpage` DISABLE KEYS */;
INSERT INTO `django_flatpage` VALUES (2,'/','Татуаж в Киеве - Главная','<p class=\"p1\">Lorem ipsum dolor sit amet. Neque porro quisquam est, omnis voluptas sit, aspernatur aut odit. Autem vel eum iure reprehenderit, qui ratione voluptatem accusantium doloremque. Eum fugiat, quo minus id, quod maxime placeat, facere possimus omnis. In culpa, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores. Ipsa, quae ab illo inventore veritatis. Possimus, omnis iste natus error. Obcaecati cupiditate non recusandae voluptas nulla vero eos.</p>\r\n<p class=\"p1\">Quasi architecto beatae vitae dicta sunt, explicabo optio, cumque nihil. Delectus, ut perspiciatis, unde omnis voluptas sit, aspernatur aut odit aut reiciendis. Officia deserunt mollitia animi, id est et expedita. Laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis. Hic tenetur a sapiente delectus. Facere possimus, omnis dolor repellendus enim ipsam voluptatem, quia non numquam. Illum, qui eveniet, ut et quasi architecto.</p>\r\n<p class=\"p1\">Excepturi sint, obcaecati cupiditate non provident. Aliquam quaerat voluptatem sequi nesciunt, neque porro. Molestias excepturi sint, obcaecati cupiditate. Quia consequuntur magni dolores eos, qui corrupti, quos dolores eos, qui blanditiis. Mollitia animi, id est et harum quidem. Iure reprehenderit, qui dolorem ipsum quia. Magni dolores et quasi architecto beatae vitae dicta. Libero tempore, cum soluta nobis est. Laboriosam, nisi ut aliquid ex ea voluptate velit esse.</p>\r\n<p class=\"p1\">Earum rerum facilis est laborum et aut officiis debitis. Corporis suscipit laboriosam, nisi ut. Laborum et voluptates repudiandae sint et iusto odio dignissimos. Commodi autem vel illum, qui accusantium doloremque laudantium totam. Quam nihil impedit, quo minus id, quod maxime placeat. Sint, obcaecati cupiditate non numquam. Velit esse, quam nihil impedit. Quidem rerum facilis est eligendi optio. Accusantium doloremque laudantium, totam rem aperiam eaque ipsa.</p>',0,'flatpages/index.html',0),(3,'/foto/','Don\'t touch','<p>Татуаж бровей</p>',0,'flatpages/foto/foto-tatuazh.html',0),(4,'/ceni/','Татуаж в Киеве - Цены','<p>Цены:</p>',0,'flatpages/ceni.html',0),(5,'/otzivi/','Татуаж в Киеве - Отзывы','<h3 class=\"h3-2\">Будем рады любому Вашему отзыву:</h3>',0,'flatpages\\otzivi.html',0),(6,'/faq/','Татуаж в Киеве - Вопросы','<h2>На этой страничке представленны часто задаваемые вопросы, а также ответы на них.</h2>\r\n<p>&nbsp;</p>',0,'flatpages/faq.html',0),(7,'/thanks/','Татуаж в Киеве - Спасибо','<h3>С Вами свяжуться в течении часа</h3>',0,'flatpages/thanks.html',0),(8,'/foto/foto-brovi/','Don\'t touch','<p>Don\'t touch</p>',0,'foto/foto-brovi.html',0),(9,'/foto/foto-tatuazh-glaz/','Don\'t touch','<p>Don\'t touch</p>',0,'foto//foto-tatuazh-glaz.html',0),(10,'/foto/foto-tatuazh-gub/','Don\'t touch','<p>Don\'t touch</p>',0,'foto/foto-tatuazh-gub.html',0),(11,'/kontakti/','Don\'t touch','<p>Don\'t touch</p>',0,'kontakti.html',0);
/*!40000 ALTER TABLE `django_flatpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage_sites`
--

DROP TABLE IF EXISTS `django_flatpage_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_flatpage_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flatpage_id` (`flatpage_id`,`site_id`),
  KEY `django_flatpage_sites_872c4601` (`flatpage_id`),
  KEY `django_flatpage_sites_99732b5c` (`site_id`),
  CONSTRAINT `flatpage_id_refs_id_83cd0023` FOREIGN KEY (`flatpage_id`) REFERENCES `django_flatpage` (`id`),
  CONSTRAINT `site_id_refs_id_2df951cb` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage_sites`
--

LOCK TABLES `django_flatpage_sites` WRITE;
/*!40000 ALTER TABLE `django_flatpage_sites` DISABLE KEYS */;
INSERT INTO `django_flatpage_sites` VALUES (58,2,2),(66,3,2),(61,4,2),(62,5,2),(64,6,2),(65,7,2),(72,8,2),(73,9,2),(74,10,2),(71,11,2);
/*!40000 ALTER TABLE `django_flatpage_sites` ENABLE KEYS */;
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
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('c9eg7c2vn7nu6fb1zfst6wi54x12izjj','NTA0OTdhMjBjYmYxZWZkZmIyZmE3ODM2NTY2YzNjMWE3M2ZmYjlhODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-09-23 10:13:13'),('ws544fgv2cld0mryp92urxwbo96u3lxy','OWFhOGUxODRjNjRlNWQyODAzMDhkOGYxODQxMjI3MTQzYTYyODljMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=','2014-09-24 08:19:46');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (2,'localhost:8000','Татуаж в Киеве');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos_foto`
--

DROP TABLE IF EXISTS `fotos_foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos_foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `type` varchar(2) NOT NULL,
  `image_location` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos_foto`
--

LOCK TABLES `fotos_foto` WRITE;
/*!40000 ALTER TABLE `fotos_foto` DISABLE KEYS */;
INSERT INTO `fotos_foto` VALUES (1,'Брови 1','Татуаж бровей, сразу после процедуры и месяц спустя.','Br','images/1b-brovi_2.jpg','0000-00-00 00:00:00'),(2,'Брови 2','Татуаж бровей до. Сразу после татуажа. Зажившие брови через месяц.','Br','images/2b-brovi_2.jpg','0000-00-00 00:00:00'),(3,'Брови 3','Татуаж бровей до. После. Зажившие.','Br','images/3b-brovi_1.jpg','0000-00-00 00:00:00'),(4,'Губы 1','Татуаж губ, зажившие.','Gu','images/1b-gubi.jpg','0000-00-00 00:00:00'),(5,'Губы 2','Татуаж губ, сразу после процедуры','Gu','images/2b-gubi.jpg','0000-00-00 00:00:00'),(6,'Губы 3','Татуаж губ, зажившие.','Gu','images/3b-gubi.jpg','0000-00-00 00:00:00'),(7,'Глаза 1','Заживший татуаж век.','Gl','images/1b-glaza.jpg','0000-00-00 00:00:00'),(8,'Глаза 2','Татуаж стрелок, спустя 2 месяца.','Gl','images/2b-glaza.jpg','0000-00-00 00:00:00'),(13,'Глаза 3','Татуаж глаз, сразу просле процедуры.','Gl','images/I_eOOpQF5TU.jpg','2014-09-03 14:26:43');
/*!40000 ALTER TABLE `fotos_foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnail_kvstore`
--

DROP TABLE IF EXISTS `thumbnail_kvstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnail_kvstore`
--

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;
INSERT INTO `thumbnail_kvstore` VALUES ('sorl-thumbnail||image||02a12732c2d348000e037b8082df9253','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/bf/34/bf34b9ea36132e1aa549cb2e398bb3d7.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||08b0dcdf48147667b03fb8bc070a9b61','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/3b-brovi.jpg\", \"size\": [593, 1023]}'),('sorl-thumbnail||image||08f821843a6da0aecf94f8e73de93eac','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/e2/4b/e24b8e565ead8dccb3a08475941b2b08.jpg\", \"size\": [200, 288]}'),('sorl-thumbnail||image||09ff482685ff53c2292b75ffb40e184f','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/60/a9/60a9f24a654d979bc2d5e653c67cd0b6.jpg\", \"size\": [200, 211]}'),('sorl-thumbnail||image||0a77021be520cbde7cb080a1ece4de3e','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/70/be/70beb303251e3bbbbe0a5d32cf01aac9.jpg\", \"size\": [69, 99]}'),('sorl-thumbnail||image||0f80db5fe571ede644bca8755e6b0fa4','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/56/af/56afa375a05d2a64c142b2e8da57f2f6.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||13a3e1c835c430548511e48ee626bc9b','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/1b-brovi_1.jpg\", \"size\": [971, 1024]}'),('sorl-thumbnail||image||1889b48e8fa807b4622f3e35ec7d8019','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/18/68/1868c9279bb3eb3dea08d1c35ddcb41a.jpg\", \"size\": [150, 200]}'),('sorl-thumbnail||image||18d88f6a605b1a937e41a60214abc118','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/8d/09/8d09247e9e7c3ee74ebe02a59d017345.jpg\", \"size\": [104, 150]}'),('sorl-thumbnail||image||1f6a133ad7d9548147968346a450b41e','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/84/78/8478f9b4ef3fd12cce0b98f3c61830af.jpg\", \"size\": [150, 100]}'),('sorl-thumbnail||image||2e185554cb68474d31e82e5e13a3d8af','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/56/32/5632539714f79ce5de4ea53f77971483.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||31479c064377dd167d9a7c74f2bb3665','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/f2/27/f227ad4e99e8be525dff6760e03de21c.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||3dc19b8503057714e5b24845a2312ddf','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/ec/48/ec48d3c1b5af348d42f60283f8c29816.jpg\", \"size\": [379, 400]}'),('sorl-thumbnail||image||46139b89f63d84ae0b68f82e471d4a2b','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/3d/f6/3df6d722799b21432eace33001715fcb.jpg\", \"size\": [150, 100]}'),('sorl-thumbnail||image||46c1ddf928645cbd4e578883cb63a19b','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/13/6c/136c99cc18f69a19dee052887eb41f31.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||4744acad47f0f5a66cadd4bb34f6a001','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/95/a4/95a41bcbeac86750cf8008bb43ba0a43.jpg\", \"size\": [474, 500]}'),('sorl-thumbnail||image||49ecec27c578912b39e5ca3b6b91a16f','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/df/40/df400c941c7ba4305435e91588a0ebe6.jpg\", \"size\": [711, 1024]}'),('sorl-thumbnail||image||4af1224b986b98a37123138793f88683','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/9d/9a/9d9a35eda61adbf121b5985c70da00cf.jpg\", \"size\": [132, 190]}'),('sorl-thumbnail||image||4dacddc87ab78baa6b6d3d452de8cdce','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/1b-brovi.jpg\", \"size\": [971, 1024]}'),('sorl-thumbnail||image||650f95e0bce4e0f554e47d48d0c9c695','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/5a/b9/5ab9a50a103a11df6ae7bac5462a44fe.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||661257e2f93ad0595df352c1eab6e53e','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/1s-brovi.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||69adc8f9fffaed262ad33e860cafd1f7','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/1b-brovi_2.jpg\", \"size\": [971, 1024]}'),('sorl-thumbnail||image||6af9290a952d2e9da2488c084bf384a4','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/2014-03-12_10.41.49_1.jpg\", \"size\": [3264, 2448]}'),('sorl-thumbnail||image||701df83fbd422288a82b7e26a17e124b','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/I_eOOpQF5TU.jpg\", \"size\": [2560, 1707]}'),('sorl-thumbnail||image||788e33d6a4cfb356ed262f2695f889b3','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/3b-brovi_1.jpg\", \"size\": [593, 1023]}'),('sorl-thumbnail||image||7dc8df0553569abc879210dcd76c5d5a','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/2b-brovi_2.jpg\", \"size\": [711, 1024]}'),('sorl-thumbnail||image||7e5e712fde76b88c0dfdc5a0a1718002','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/2b-gubi.jpg\", \"size\": [2560, 1927]}'),('sorl-thumbnail||image||8640c0f8847f1d479f0e66c19d50d484','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/26/00/2600af8e8dd734c82ed3bd18e8f68efb.jpg\", \"size\": [150, 200]}'),('sorl-thumbnail||image||87baae25185f71398845acb2a78111ab','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/b7/e2/b7e272f98710eb57d33b781430542c04.jpg\", \"size\": [139, 200]}'),('sorl-thumbnail||image||8ba839de6ae13ee789c6cdfbe494483e','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/0b/1a/0b1abc3cbc97160cf57f33ab7fa5bdcf.jpg\", \"size\": [278, 400]}'),('sorl-thumbnail||image||96d4acac5a059350edd614ab8ecbf7ae','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/2b-glaza.jpg\", \"size\": [2560, 1707]}'),('sorl-thumbnail||image||9ba73528f61e8cff2322c594dcbda059','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/2b-brovi.jpg\", \"size\": [711, 1024]}'),('sorl-thumbnail||image||9cfb7ed077d7ee7a36357290500c733e','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/3d/73/3d7309e0a6d65c0c4dd1b49a8d64ed86.jpg\", \"size\": [347, 500]}'),('sorl-thumbnail||image||9df680f151e7c119c820fcbd354b37f1','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/a3/e7/a3e7b3913b7b98b8acf204345f148405.jpg\", \"size\": [139, 200]}'),('sorl-thumbnail||image||9f76237957d3e8b9b067a4ef4d75b234','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/3b-gubi.jpg\", \"size\": [1280, 720]}'),('sorl-thumbnail||image||a09fe5dfcd488bff0781ded6b2bec69e','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/95/1e/951ece6f115f7dd76dd4ca74e80da86b.jpg\", \"size\": [150, 200]}'),('sorl-thumbnail||image||a109aef23d50dda7046d303075da8d95','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/75/3e/753e6c49c29f6062304915c623742509.jpg\", \"size\": [150, 100]}'),('sorl-thumbnail||image||a29cdb507b8b19137ffb3c4c91731a1d','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/0a/3a/0a3a0d6c1156d63dd0848a5b3037c544.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||a30394851258ee3a9b1e9ed97b58b819','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/2014-03-12_10.41.49.jpg\", \"size\": [3264, 2448]}'),('sorl-thumbnail||image||a319a0e679a6121068dd0d3c957d752e','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/51/62/5162eed8b1e898a43b557e549877aea1.jpg\", \"size\": [95, 100]}'),('sorl-thumbnail||image||a87d8f8395b8847f814454f7d3e00063','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/f2/77/f277f466f02de9a316da7fa8c56827ff.jpg\", \"size\": [278, 400]}'),('sorl-thumbnail||image||a90a6b0d9bbfd58171106a2fc9753417','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/c2/f3/c2f317404751135eebc762902d26c382.jpg\", \"size\": [379, 400]}'),('sorl-thumbnail||image||aa60d6f01188a8f181937316ef32078f','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/56/98/56984899e2e472d0e6d709078a2dc72c.jpg\", \"size\": [150, 200]}'),('sorl-thumbnail||image||acc1e925d29a7b0307c2705fe4b6fe73','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/73/33/7333694b29015214e8738dceb6d5a27a.jpg\", \"size\": [190, 200]}'),('sorl-thumbnail||image||ad24889cd58d645d5bf3a03c78bdca71','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/4c/94/4c94815669ab3649e8102d8734471f92.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||b1627df46379f2372c5497493f1c8628','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/7mdaH3aaXhw.jpg\", \"size\": [2560, 1912]}'),('sorl-thumbnail||image||b26852f7a75e0daa6b6d7f185c19012a','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/64/47/6447668115a467f788c8d11351a7fa87.jpg\", \"size\": [970, 1024]}'),('sorl-thumbnail||image||b2e25e8f923031d08e514cdf549252db','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/d1/e0/d1e0b18ee3e9da85030c3f4419060243.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||b7f820a2633f7dc226e9d0a4141d056f','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/1b-gubi.jpg\", \"size\": [604, 324]}'),('sorl-thumbnail||image||b83fc8c0667cdb7eb3cd8d39a9d35dbf','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/c3/b4/c3b43a4d3b20e8868e4843a7426f2510.jpg\", \"size\": [970, 1024]}'),('sorl-thumbnail||image||b95be1a3ba31244eeaba87b36dbb79fe','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/1b-glaza.jpg\", \"size\": [1280, 704]}'),('sorl-thumbnail||image||bbe130c13c7eeae87c35daab2c6e19d9','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/73/54/7354a1e6173e1878a4418ef95b6c06f0.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||bc1132a89bd42195e6216d9f5eb3a72f','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/e2/66/e2662dce981dcf17d36ed12116d3daae.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||bf344f91a1b6c92a0d70dcad48d585ac','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/95/db/95dbb34b4f31ae5c9d773b3a0b8f6994.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||c2a4c02c7ea7ea20ee8f140ead30e220','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/7c/57/7c578a50d74bb2b35019c3c456724949.jpg\", \"size\": [970, 1024]}'),('sorl-thumbnail||image||c3e20d3fbf45926c0b7ca90c9735b932','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/f3/77/f377f59ce7a4a1df8c128a05ec87dbfa.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||c8cba428a3438a12209c3b819c06eb57','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/fc/df/fcdfb4465e630765293af72c74a02e1c.jpg\", \"size\": [150, 200]}'),('sorl-thumbnail||image||d1f1e67ca104a677c5d64638d3b19b8b','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/74/b6/74b660b5563831eae5409ae80d25c346.jpg\", \"size\": [150, 200]}'),('sorl-thumbnail||image||d5fe0602786f5de5f9349c1169b2eaaa','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/2b-brovi_1.jpg\", \"size\": [711, 1024]}'),('sorl-thumbnail||image||da9c595bde319adadf746a7406261c4a','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/1b/6a/1b6aebcff87e5c948f7bdba462abd1c2.jpg\", \"size\": [970, 1024]}'),('sorl-thumbnail||image||daddd1e53923c6bb56a292020f69b9a6','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/bd/d2/bdd2a6d3ec13e8596fed92526b62b592.jpg\", \"size\": [100, 100]}'),('sorl-thumbnail||image||de710cd06589379a6cb56b0be3b87210','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/1c/ce/1ccecba8f44429f9ed42dd97b9ef491d.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||df21594b884670c470ed0ed9f9f65831','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/5b/8a/5b8a661f812be8797bddbe58f4c5486a.jpg\", \"size\": [970, 647]}'),('sorl-thumbnail||image||e79d465ccfa71002727cd6030dd65cc3','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/a0/9f/a09f9b454645b1931b4777e4dd1e7ecf.jpg\", \"size\": [150, 200]}'),('sorl-thumbnail||image||e94962b83480455751bef03e738f4bea','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/e2/55/e255245064ad105c735f6c5bb94a9173.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||ecf2d678cbc5b26ea818fa266d2fc109','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/d8/78/d8786e6407fb25080ace2787319213cc.jpg\", \"size\": [300, 200]}'),('sorl-thumbnail||image||f2a69ccbacbb77678b9bce6adf36fbfa','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/f8/6d/f86ddac0fecb7f8656b49f4ec0be8346.jpg\", \"size\": [970, 1024]}'),('sorl-thumbnail||image||ff5307a7ea1302dbbf909085e78dc3a6','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/CIXSb_8lZ6A.jpg\", \"size\": [1022, 1024]}'),('sorl-thumbnail||thumbnails||08b0dcdf48147667b03fb8bc070a9b61','[\"0f80db5fe571ede644bca8755e6b0fa4\"]'),('sorl-thumbnail||thumbnails||13a3e1c835c430548511e48ee626bc9b','[\"09ff482685ff53c2292b75ffb40e184f\", \"f2a69ccbacbb77678b9bce6adf36fbfa\", \"3dc19b8503057714e5b24845a2312ddf\", \"a319a0e679a6121068dd0d3c957d752e\", \"a90a6b0d9bbfd58171106a2fc9753417\", \"c3e20d3fbf45926c0b7ca90c9735b932\", \"8640c0f8847f1d479f0e66c19d50d484\", \"e79d465ccfa71002727cd6030dd65cc3\", \"acc1e925d29a7b0307c2705fe4b6fe73\", \"4744acad47f0f5a66cadd4bb34f6a001\"]'),('sorl-thumbnail||thumbnails||4dacddc87ab78baa6b6d3d452de8cdce','[\"c8cba428a3438a12209c3b819c06eb57\", \"b26852f7a75e0daa6b6d7f185c19012a\"]'),('sorl-thumbnail||thumbnails||661257e2f93ad0595df352c1eab6e53e','[\"aa60d6f01188a8f181937316ef32078f\", \"1f6a133ad7d9548147968346a450b41e\", \"daddd1e53923c6bb56a292020f69b9a6\", \"df21594b884670c470ed0ed9f9f65831\", \"a109aef23d50dda7046d303075da8d95\", \"46139b89f63d84ae0b68f82e471d4a2b\", \"b83fc8c0667cdb7eb3cd8d39a9d35dbf\"]'),('sorl-thumbnail||thumbnails||69adc8f9fffaed262ad33e860cafd1f7','[\"bbe130c13c7eeae87c35daab2c6e19d9\"]'),('sorl-thumbnail||thumbnails||6af9290a952d2e9da2488c084bf384a4','[\"31479c064377dd167d9a7c74f2bb3665\"]'),('sorl-thumbnail||thumbnails||701df83fbd422288a82b7e26a17e124b','[\"2e185554cb68474d31e82e5e13a3d8af\"]'),('sorl-thumbnail||thumbnails||788e33d6a4cfb356ed262f2695f889b3','[\"650f95e0bce4e0f554e47d48d0c9c695\"]'),('sorl-thumbnail||thumbnails||7dc8df0553569abc879210dcd76c5d5a','[\"02a12732c2d348000e037b8082df9253\"]'),('sorl-thumbnail||thumbnails||7e5e712fde76b88c0dfdc5a0a1718002','[\"e94962b83480455751bef03e738f4bea\"]'),('sorl-thumbnail||thumbnails||96d4acac5a059350edd614ab8ecbf7ae','[\"bf344f91a1b6c92a0d70dcad48d585ac\"]'),('sorl-thumbnail||thumbnails||9ba73528f61e8cff2322c594dcbda059','[\"da9c595bde319adadf746a7406261c4a\", \"4af1224b986b98a37123138793f88683\", \"a09fe5dfcd488bff0781ded6b2bec69e\", \"49ecec27c578912b39e5ca3b6b91a16f\", \"18d88f6a605b1a937e41a60214abc118\", \"87baae25185f71398845acb2a78111ab\"]'),('sorl-thumbnail||thumbnails||9f76237957d3e8b9b067a4ef4d75b234','[\"ad24889cd58d645d5bf3a03c78bdca71\"]'),('sorl-thumbnail||thumbnails||a30394851258ee3a9b1e9ed97b58b819','[\"b2e25e8f923031d08e514cdf549252db\"]'),('sorl-thumbnail||thumbnails||b1627df46379f2372c5497493f1c8628','[\"ecf2d678cbc5b26ea818fa266d2fc109\"]'),('sorl-thumbnail||thumbnails||b7f820a2633f7dc226e9d0a4141d056f','[\"46c1ddf928645cbd4e578883cb63a19b\"]'),('sorl-thumbnail||thumbnails||b95be1a3ba31244eeaba87b36dbb79fe','[\"de710cd06589379a6cb56b0be3b87210\"]'),('sorl-thumbnail||thumbnails||d5fe0602786f5de5f9349c1169b2eaaa','[\"a29cdb507b8b19137ffb3c4c91731a1d\", \"d1f1e67ca104a677c5d64638d3b19b8b\", \"8ba839de6ae13ee789c6cdfbe494483e\", \"9df680f151e7c119c820fcbd354b37f1\", \"1889b48e8fa807b4622f3e35ec7d8019\", \"08f821843a6da0aecf94f8e73de93eac\", \"0a77021be520cbde7cb080a1ece4de3e\", \"a87d8f8395b8847f814454f7d3e00063\", \"c2a4c02c7ea7ea20ee8f140ead30e220\", \"9cfb7ed077d7ee7a36357290500c733e\"]'),('sorl-thumbnail||thumbnails||ff5307a7ea1302dbbf909085e78dc3a6','[\"bc1132a89bd42195e6216d9f5eb3a72f\"]');
/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-10 11:21:25
