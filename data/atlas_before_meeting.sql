-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: atlas
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

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
-- Table structure for table `AreaPermissionAssignments`
--

DROP TABLE IF EXISTS `AreaPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionAssignments`
--

LOCK TABLES `AreaPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `AreaPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

LOCK TABLES `AreaPermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `AreaPermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

LOCK TABLES `AreaPermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `AreaPermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,106,'Header',0,0,0),(2,106,'Column 1',0,0,0),(3,106,'Column 2',0,0,0),(4,106,'Column 3',0,0,0),(5,106,'Column 4',0,0,0),(6,105,'Primary',0,0,0),(7,105,'Secondary 1',0,0,0),(8,105,'Secondary 2',0,0,0),(9,105,'Secondary 3',0,0,0),(10,105,'Secondary 4',0,0,0),(11,105,'Secondary 5',0,0,0),(12,1,'Header Nav',0,0,1),(13,1,'Header',0,0,0),(14,1,'Sidebar',0,0,0),(15,1,'Main',0,0,0),(16,124,'Main',0,0,0),(17,126,'Header Nav',0,0,1),(18,126,'Main',0,0,0),(19,123,'Header Nav',0,0,1),(20,123,'Main',0,0,0),(21,125,'Header Nav',0,0,1),(22,125,'Main',0,0,0),(23,128,'Header Nav',0,0,1),(24,128,'Main',0,0,0),(25,127,'Header Nav',0,0,1),(26,127,'Main',0,0,0),(27,129,'Header Nav',0,0,1),(28,129,'Main',0,0,0),(29,130,'Header Nav',0,0,1),(30,130,'Main',0,0,0),(31,130,'Right Top',0,0,0),(32,1,'Right Top',0,0,0),(33,123,'Right Top',0,0,0),(34,126,'Right Top',0,0,0),(35,129,'Right Top',0,0,0),(36,128,'Right Top',0,0,0),(37,127,'Right Top',0,0,0),(38,125,'Right Top',0,0,0),(39,1,'Left Top',0,0,0),(40,141,'Main',0,0,0),(41,123,'Left Top',0,0,0),(42,125,'Left Top',0,0,0),(43,142,'Main',0,0,0),(44,123,'Footer',0,0,1),(45,143,'Main',0,0,0),(46,125,'Footer',0,0,1),(47,126,'Left Top',0,0,0),(48,126,'Footer',0,0,1),(49,127,'Left Top',0,0,0),(50,127,'Footer',0,0,1),(51,128,'Left Top',0,0,0),(52,128,'Footer',0,0,1),(53,129,'Left Top',0,0,0),(54,129,'Footer',0,0,1),(55,130,'Left Top',0,0,0),(56,130,'Footer',0,0,1),(57,130,'Breadcrumbs',0,0,0),(58,129,'Breadcrumbs',0,0,0),(59,128,'Breadcrumbs',0,0,0),(60,127,'Breadcrumbs',0,0,0),(61,126,'Breadcrumbs',0,0,0),(62,125,'Breadcrumbs',0,0,0),(63,123,'Breadcrumbs',0,0,0),(64,1,'Footer',0,0,1),(65,145,'Header Nav',0,0,1),(66,145,'Left Top',0,0,0),(67,145,'Main',0,0,0),(68,145,'Right Top',0,0,0),(69,145,'Footer',0,0,1),(70,144,'Header Nav',0,0,1),(71,144,'Left Top',0,0,0),(72,144,'Main',0,0,0),(73,144,'Right Top',0,0,0),(74,144,'Footer',0,0,1),(75,145,'Breadcrumbs',0,0,0),(76,145,'Title',0,0,0),(77,145,'Content',0,0,0),(78,146,'Header Nav',0,0,1),(79,146,'Title',0,0,0),(80,146,'Content',0,0,0),(81,146,'Footer',0,0,1),(82,146,'Breadcrumbs',0,0,0),(83,150,'Header Nav',0,0,1),(84,150,'Left Top',0,0,0),(85,150,'Main',0,0,0),(86,150,'Right Top',0,0,0),(87,150,'Footer',0,0,1),(88,150,'Breadcrumbs',0,0,0);
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeyCategories`
--

DROP TABLE IF EXISTS `AttributeKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeyCategories`
--

LOCK TABLES `AttributeKeyCategories` WRITE;
/*!40000 ALTER TABLE `AttributeKeyCategories` DISABLE KEYS */;
INSERT INTO `AttributeKeyCategories` VALUES (1,'collection',1,NULL),(2,'user',1,NULL),(3,'file',1,NULL);
/*!40000 ALTER TABLE `AttributeKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeKeys`
--

DROP TABLE IF EXISTS `AttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeKeys`
--

LOCK TABLES `AttributeKeys` WRITE;
/*!40000 ALTER TABLE `AttributeKeys` DISABLE KEYS */;
INSERT INTO `AttributeKeys` VALUES (1,'meta_title','Meta Title',1,1,0,0,0,1,1,1,0),(2,'meta_description','Meta Description',1,1,0,0,0,1,2,1,0),(3,'meta_keywords','Meta Keywords',1,1,0,0,0,1,2,1,0),(4,'icon_dashboard','Dashboard Icon',1,1,0,1,0,1,2,1,0),(5,'exclude_nav','Exclude From Nav',1,1,0,0,0,1,3,1,0),(6,'exclude_page_list','Exclude From Page List',1,1,0,0,0,1,3,1,0),(7,'header_extra_content','Header Extra Content',1,1,0,0,0,1,2,1,0),(8,'exclude_search_index','Exclude From Search Index',1,1,0,0,0,1,3,1,0),(9,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,0,1,3,1,0),(10,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,0,1,3,2,0),(11,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,0,1,3,2,0),(12,'width','Width',1,1,0,0,0,1,6,3,0),(13,'height','Height',1,1,0,0,0,1,6,3,0),(14,'is_featured','Featured Page',1,0,0,0,0,1,3,1,0);
/*!40000 ALTER TABLE `AttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSetKeys`
--

DROP TABLE IF EXISTS `AttributeSetKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSetKeys`
--

LOCK TABLES `AttributeSetKeys` WRITE;
/*!40000 ALTER TABLE `AttributeSetKeys` DISABLE KEYS */;
INSERT INTO `AttributeSetKeys` VALUES (1,1,1),(2,1,2),(3,1,3),(5,2,1),(6,2,2),(7,1,4),(8,2,3),(9,2,4);
/*!40000 ALTER TABLE `AttributeSetKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeSets`
--

DROP TABLE IF EXISTS `AttributeSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeSets`
--

LOCK TABLES `AttributeSets` WRITE;
/*!40000 ALTER TABLE `AttributeSets` DISABLE KEYS */;
INSERT INTO `AttributeSets` VALUES (1,'Page Header','page_header',1,0,0,0),(2,'Navigation and Indexing','navigation',1,0,0,1);
/*!40000 ALTER TABLE `AttributeSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypeCategories`
--

DROP TABLE IF EXISTS `AttributeTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypeCategories`
--

LOCK TABLES `AttributeTypeCategories` WRITE;
/*!40000 ALTER TABLE `AttributeTypeCategories` DISABLE KEYS */;
INSERT INTO `AttributeTypeCategories` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(6,1),(6,2),(6,3),(7,1),(7,3),(8,1),(8,2),(8,3),(9,2);
/*!40000 ALTER TABLE `AttributeTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeTypes`
--

DROP TABLE IF EXISTS `AttributeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeTypes`
--

LOCK TABLES `AttributeTypes` WRITE;
/*!40000 ALTER TABLE `AttributeTypes` DISABLE KEYS */;
INSERT INTO `AttributeTypes` VALUES (1,'text','Text',0),(2,'textarea','Text Area',0),(3,'boolean','Checkbox',0),(4,'date_time','Date/Time',0),(5,'image_file','Image/File',0),(6,'number','Number',0),(7,'rating','Rating',0),(8,'select','Select',0),(9,'address','Address',0);
/*!40000 ALTER TABLE `AttributeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AttributeValues`
--

DROP TABLE IF EXISTS `AttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AttributeValues`
--

LOCK TABLES `AttributeValues` WRITE;
/*!40000 ALTER TABLE `AttributeValues` DISABLE KEYS */;
INSERT INTO `AttributeValues` VALUES (1,3,'2013-07-02 12:15:41',1,2),(2,4,'2013-07-02 12:15:42',1,2),(3,3,'2013-07-02 12:15:42',1,2),(4,4,'2013-07-02 12:15:43',1,2),(5,3,'2013-07-02 12:15:43',1,2),(6,4,'2013-07-02 12:15:43',1,2),(7,3,'2013-07-02 12:15:43',1,2),(8,3,'2013-07-02 12:15:44',1,2),(9,4,'2013-07-02 12:15:44',1,2),(10,3,'2013-07-02 12:15:44',1,2),(11,4,'2013-07-02 12:15:44',1,2),(12,3,'2013-07-02 12:15:45',1,2),(13,4,'2013-07-02 12:15:45',1,2),(14,3,'2013-07-02 12:15:45',1,2),(15,4,'2013-07-02 12:15:45',1,2),(16,3,'2013-07-02 12:15:46',1,2),(17,4,'2013-07-02 12:15:46',1,2),(18,3,'2013-07-02 12:15:46',1,2),(19,4,'2013-07-02 12:15:46',1,2),(20,5,'2013-07-02 12:15:47',1,3),(21,3,'2013-07-02 12:15:47',1,2),(22,4,'2013-07-02 12:15:47',1,2),(23,3,'2013-07-02 12:15:47',1,2),(24,3,'2013-07-02 12:15:48',1,2),(25,4,'2013-07-02 12:15:48',1,2),(26,3,'2013-07-02 12:15:48',1,2),(27,4,'2013-07-02 12:15:48',1,2),(28,3,'2013-07-02 12:15:48',1,2),(29,4,'2013-07-02 12:15:49',1,2),(30,3,'2013-07-02 12:15:49',1,2),(31,5,'2013-07-02 12:15:49',1,3),(32,4,'2013-07-02 12:15:50',1,2),(33,3,'2013-07-02 12:15:50',1,2),(34,5,'2013-07-02 12:15:50',1,3),(35,4,'2013-07-02 12:15:50',1,2),(36,3,'2013-07-02 12:15:51',1,2),(37,4,'2013-07-02 12:15:51',1,2),(38,3,'2013-07-02 12:15:51',1,2),(39,3,'2013-07-02 12:15:51',1,2),(40,4,'2013-07-02 12:15:51',1,2),(41,3,'2013-07-02 12:15:52',1,2),(42,4,'2013-07-02 12:15:52',1,2),(43,3,'2013-07-02 12:15:52',1,2),(44,4,'2013-07-02 12:15:52',1,2),(45,3,'2013-07-02 12:15:53',1,2),(46,4,'2013-07-02 12:15:53',1,2),(47,3,'2013-07-02 12:15:54',1,2),(48,4,'2013-07-02 12:15:54',1,2),(49,3,'2013-07-02 12:15:54',1,2),(50,3,'2013-07-02 12:15:55',1,2),(51,3,'2013-07-02 12:15:55',1,2),(52,3,'2013-07-02 12:15:55',1,2),(53,4,'2013-07-02 12:15:56',1,2),(54,3,'2013-07-02 12:15:56',1,2),(55,4,'2013-07-02 12:15:56',1,2),(56,3,'2013-07-02 12:15:56',1,2),(57,4,'2013-07-02 12:15:57',1,2),(58,3,'2013-07-02 12:15:57',1,2),(59,4,'2013-07-02 12:15:57',1,2),(60,4,'2013-07-02 12:15:58',1,2),(61,3,'2013-07-02 12:15:58',1,2),(62,4,'2013-07-02 12:15:58',1,2),(63,4,'2013-07-02 12:15:58',1,2),(64,5,'2013-07-02 12:15:59',1,3),(65,8,'2013-07-02 12:15:59',1,3),(66,3,'2013-07-02 12:15:59',1,2),(67,4,'2013-07-02 12:16:00',1,2),(68,5,'2013-07-02 12:16:00',1,3),(69,5,'2013-07-02 12:16:00',1,3),(70,3,'2013-07-02 12:16:01',1,2),(71,3,'2013-07-02 12:16:01',1,2),(72,3,'2013-07-02 12:16:01',1,2),(73,3,'2013-07-02 12:16:01',1,2),(74,3,'2013-07-02 12:16:02',1,2),(75,5,'2013-07-02 12:16:02',1,3),(76,3,'2013-07-02 12:16:02',1,2),(77,3,'2013-07-02 12:16:02',1,2),(78,3,'2013-07-02 12:16:03',1,2),(79,3,'2013-07-02 12:16:03',1,2),(80,3,'2013-07-02 12:16:04',1,2),(81,3,'2013-07-02 12:16:04',1,2),(82,3,'2013-07-02 12:16:05',1,2),(83,3,'2013-07-02 12:16:05',1,2),(84,3,'2013-07-02 12:16:05',1,2),(85,3,'2013-07-02 12:16:06',1,2),(86,3,'2013-07-02 12:16:06',1,2),(87,3,'2013-07-02 12:16:06',1,2),(88,3,'2013-07-02 12:16:06',1,2),(89,3,'2013-07-02 12:16:07',1,2),(90,3,'2013-07-02 12:16:07',1,2),(91,3,'2013-07-02 12:16:07',1,2),(92,3,'2013-07-02 12:16:08',1,2),(93,3,'2013-07-02 12:16:08',1,2),(94,3,'2013-07-02 12:16:08',1,2),(95,3,'2013-07-02 12:16:08',1,2),(96,3,'2013-07-02 12:16:09',1,2),(97,3,'2013-07-02 12:16:09',1,2),(98,3,'2013-07-02 12:16:09',1,2),(99,3,'2013-07-02 12:16:09',1,2),(100,3,'2013-07-02 12:16:10',1,2),(101,3,'2013-07-02 12:16:10',1,2),(102,3,'2013-07-02 12:16:10',1,2),(103,3,'2013-07-02 12:16:11',1,2),(104,3,'2013-07-02 12:16:11',1,2),(105,3,'2013-07-02 12:16:11',1,2),(106,3,'2013-07-02 12:16:11',1,2),(107,3,'2013-07-02 12:16:12',1,2),(108,8,'2013-07-02 12:16:12',1,3),(109,3,'2013-07-02 12:16:12',1,2),(110,3,'2013-07-02 12:16:13',1,2),(111,3,'2013-07-02 12:16:13',1,2),(112,3,'2013-07-02 12:16:13',1,2),(113,3,'2013-07-02 12:16:13',1,2),(114,3,'2013-07-02 12:16:13',1,2),(115,3,'2013-07-02 12:16:14',1,2),(116,3,'2013-07-02 12:16:14',1,2),(117,5,'2013-07-02 12:16:19',1,3),(118,5,'2013-07-02 12:16:24',1,3),(119,8,'2013-07-02 12:16:24',1,3),(120,4,'2013-07-02 14:08:07',1,2),(121,12,'2013-07-02 14:26:13',1,6),(122,13,'2013-07-02 14:26:13',1,6),(123,12,'2013-07-02 14:36:01',1,6),(124,13,'2013-07-02 14:36:02',1,6),(129,12,'2013-07-02 14:40:03',1,6),(130,13,'2013-07-02 14:40:04',1,6),(131,12,'2013-07-02 14:40:49',1,6),(132,13,'2013-07-02 14:40:56',1,6),(133,1,'2013-07-02 16:37:50',1,1),(134,2,'2013-07-02 16:37:50',1,2),(135,3,'2013-07-02 16:37:50',1,2),(136,14,'2013-07-02 16:37:50',1,3),(137,1,'2013-07-02 16:38:31',1,1),(138,2,'2013-07-02 16:38:31',1,2),(139,3,'2013-07-02 16:38:31',1,2),(140,14,'2013-07-02 16:38:31',1,3),(141,1,'2013-07-02 16:38:55',1,1),(142,2,'2013-07-02 16:38:55',1,2),(143,3,'2013-07-02 16:38:55',1,2),(144,14,'2013-07-02 16:38:55',1,3),(145,1,'2013-07-02 18:19:56',1,1),(146,2,'2013-07-02 18:19:56',1,2),(147,3,'2013-07-02 18:19:56',1,2),(148,14,'2013-07-02 18:19:56',1,3),(149,1,'2013-07-02 18:20:36',1,1),(150,2,'2013-07-02 18:20:36',1,2),(151,3,'2013-07-02 18:20:36',1,2),(152,14,'2013-07-02 18:20:36',1,3),(153,1,'2013-07-02 18:20:59',1,1),(154,2,'2013-07-02 18:20:59',1,2),(155,3,'2013-07-02 18:20:59',1,2),(156,14,'2013-07-02 18:20:59',1,3),(157,1,'2013-07-02 18:21:38',1,1),(158,2,'2013-07-02 18:21:38',1,2),(159,3,'2013-07-02 18:21:38',1,2),(160,14,'2013-07-02 18:21:39',1,3),(161,1,'2013-07-02 18:21:57',1,1),(162,2,'2013-07-02 18:21:57',1,2),(163,3,'2013-07-02 18:21:57',1,2),(164,14,'2013-07-02 18:21:57',1,3),(165,1,'2013-07-02 18:22:22',1,1),(166,2,'2013-07-02 18:22:22',1,2),(167,3,'2013-07-02 18:22:22',1,2),(168,14,'2013-07-02 18:22:22',1,3),(169,1,'2013-07-08 22:40:16',1,1),(170,2,'2013-07-08 22:40:17',1,2),(171,3,'2013-07-08 22:40:17',1,2),(172,1,'2013-07-08 22:40:53',1,1),(173,2,'2013-07-08 22:40:53',1,2),(174,3,'2013-07-08 22:40:53',1,2);
/*!40000 ALTER TABLE `AttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

DROP TABLE IF EXISTS `BasicWorkflowPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowPermissionAssignments`
--

LOCK TABLES `BasicWorkflowPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BasicWorkflowProgressData`
--

DROP TABLE IF EXISTS `BasicWorkflowProgressData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BasicWorkflowProgressData`
--

LOCK TABLES `BasicWorkflowProgressData` WRITE;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` DISABLE KEYS */;
/*!40000 ALTER TABLE `BasicWorkflowProgressData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockPermissionAssignments`
--

DROP TABLE IF EXISTS `BlockPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockPermissionAssignments`
--

LOCK TABLES `BlockPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `BlockPermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockRelations`
--

DROP TABLE IF EXISTS `BlockRelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockRelations`
--

LOCK TABLES `BlockRelations` WRITE;
/*!40000 ALTER TABLE `BlockRelations` DISABLE KEYS */;
INSERT INTO `BlockRelations` VALUES (1,19,18,'DUPLICATE'),(2,24,15,'DUPLICATE'),(3,54,53,'DUPLICATE'),(4,61,40,'DUPLICATE'),(5,68,16,'DUPLICATE'),(6,73,72,'DUPLICATE');
/*!40000 ALTER TABLE `BlockRelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessList` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

DROP TABLE IF EXISTS `BlockTypePermissionBlockTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

LOCK TABLES `BlockTypePermissionBlockTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockTypes`
--

DROP TABLE IF EXISTS `BlockTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockTypes`
--

LOCK TABLES `BlockTypes` WRITE;
/*!40000 ALTER TABLE `BlockTypes` DISABLE KEYS */;
INSERT INTO `BlockTypes` VALUES (1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,0,400,400,0),(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,0,400,400,0),(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,0,300,100,0),(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,0,300,100,0),(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,0,400,400,0),(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,0,400,400,0),(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,0,400,400,0),(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,1,500,350,0),(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,2,600,465,0),(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,5,500,350,0),(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,6,370,100,0),(12,'file','File','Link to files stored in the asset library.',1,0,0,0,7,300,250,0),(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,8,380,200,0),(14,'form','Form','Build simple forms and surveys.',1,0,0,0,9,420,430,0),(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,10,400,200,0),(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,11,350,480,0),(17,'html','HTML','For adding HTML by hand.',1,0,0,0,12,600,465,0),(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,13,400,550,0),(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,14,430,400,0),(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,15,500,350,0),(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,16,400,330,0),(22,'search','Search','Add a search box to your site.',1,0,0,0,17,400,240,0),(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,4,550,400,0),(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,0,0,18,420,300,0),(25,'tags','Tags','List pages based on type, area.',1,0,0,0,19,450,260,0),(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,20,320,220,0),(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,21,400,210,0),(29,'slideshow_with_caption','Slideshow with Captions','A better slideshow with captions',1,0,0,0,3,700,450,0),(30,'asmiller_gallery','Galleria Image Gallery','Display a beautiful image gallery (Galleria plugin)',1,0,0,0,22,550,400,2),(31,'book_now','Book Now Button','booking button on the left hand side rail',1,0,0,0,23,700,450,0),(32,'mailing_list','Mailing List','Mailchimp Mailing List block',1,0,0,0,24,700,450,0),(33,'facebook_like','Facebook Like','Facebook Fans',1,0,0,0,25,700,450,0),(34,'follow_us','Follow Us','Twitter and Free Wifi graphic',1,0,0,0,26,700,450,0),(35,'location','Location','Google map and address',1,0,0,0,27,700,450,0),(36,'directions','Directions','TFL Directions',1,0,0,0,28,700,450,0),(37,'swp_breadcrumbs','Breadcrumbs','Add breadcrumbs to your website<br />By <a href=\"http://www.smartwebprojects.net/\">www.smartwebprojects.net</a>',1,0,0,0,29,400,80,3),(38,'address_contact_info','Address and Contact Info','used on the contact us right hand side',1,0,0,0,30,700,450,0);
/*!40000 ALTER TABLE `BlockTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Blocks`
--

DROP TABLE IF EXISTS `Blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(32) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Blocks`
--

LOCK TABLES `Blocks` WRITE;
/*!40000 ALTER TABLE `Blocks` DISABLE KEYS */;
INSERT INTO `Blocks` VALUES (1,'','2013-07-02 12:16:14','2013-07-02 12:16:16',NULL,'1',9,1,NULL),(2,'','2013-07-02 12:16:16','2013-07-02 12:16:16',NULL,'1',9,1,NULL),(3,'','2013-07-02 12:16:16','2013-07-02 12:16:17',NULL,'1',9,1,NULL),(4,'','2013-07-02 12:16:17','2013-07-02 12:16:17',NULL,'1',9,1,NULL),(5,'','2013-07-02 12:16:18','2013-07-02 12:16:18',NULL,'1',9,1,NULL),(6,'','2013-07-02 12:16:19','2013-07-02 12:16:20',NULL,'1',6,1,NULL),(7,'','2013-07-02 12:16:20','2013-07-02 12:16:20',NULL,'1',7,1,NULL),(8,'','2013-07-02 12:16:21','2013-07-02 12:16:21',NULL,'1',5,1,NULL),(9,'','2013-07-02 12:16:22','2013-07-02 12:16:23',NULL,'1',5,1,NULL),(10,'','2013-07-02 12:16:23','2013-07-02 12:16:23',NULL,'1',4,1,NULL),(11,'','2013-07-02 12:16:23','2013-07-02 12:16:23',NULL,'1',3,1,NULL),(12,'','2013-07-02 12:16:23','2013-07-02 12:16:24',NULL,'1',5,1,NULL),(13,NULL,'2013-07-02 12:35:19','2013-07-02 12:35:19',NULL,'1',8,1,NULL),(14,NULL,'2013-07-02 13:23:30','2013-07-02 13:23:30',NULL,'1',9,1,NULL),(15,NULL,'2013-07-02 13:26:24','2013-07-02 13:33:39',NULL,'1',9,1,NULL),(16,NULL,'2013-07-02 13:41:58','2013-07-02 13:44:28',NULL,'1',9,1,NULL),(17,NULL,'2013-07-02 13:48:35','2013-07-02 13:53:27',NULL,'1',9,1,NULL),(18,NULL,'2013-07-02 13:55:13','2013-07-02 13:55:13',NULL,'1',9,1,NULL),(19,NULL,'2013-07-02 13:56:58','2013-07-02 13:56:58',NULL,'1',9,1,NULL),(21,NULL,'2013-07-02 14:36:44','2013-07-02 14:41:12',NULL,'1',23,1,NULL),(22,NULL,'2013-07-02 14:52:21','2013-07-02 14:52:21',NULL,'1',29,1,NULL),(23,'Featured Attractions','2013-07-02 16:44:47','2013-07-02 17:07:29','right_featured_attractions','1',20,1,NULL),(24,NULL,'2013-07-02 18:33:33','2013-07-02 18:33:33',NULL,'1',9,1,NULL),(25,NULL,'2013-07-04 20:52:34','2013-07-04 20:52:34',NULL,'1',30,1,NULL),(26,NULL,'2013-07-07 16:18:17','2013-07-07 16:18:17',NULL,'1',31,1,NULL),(27,NULL,'2013-07-07 18:28:11','2013-07-07 18:28:11',NULL,'1',32,1,NULL),(28,NULL,'2013-07-07 19:39:46','2013-07-07 19:39:46',NULL,'1',33,1,NULL),(29,NULL,'2013-07-08 19:53:37','2013-07-08 19:53:37',NULL,'1',34,1,NULL),(30,NULL,'2013-07-08 19:59:06','2013-07-08 19:59:06',NULL,'1',31,1,NULL),(31,NULL,'2013-07-08 19:59:45','2013-07-08 19:59:45',NULL,'1',32,1,NULL),(32,NULL,'2013-07-08 20:00:07','2013-07-08 20:00:07',NULL,'1',33,1,NULL),(33,NULL,'2013-07-08 20:00:30','2013-07-08 20:00:30',NULL,'1',34,1,NULL),(34,NULL,'2013-07-08 20:01:10','2013-07-08 20:01:10',NULL,'1',2,1,NULL),(35,NULL,'2013-07-08 21:23:27','2013-07-08 21:23:27',NULL,'1',35,1,NULL),(36,NULL,'2013-07-08 21:23:45','2013-07-08 21:23:45',NULL,'1',36,1,NULL),(37,NULL,'2013-07-08 21:26:33','2013-07-08 21:26:33',NULL,'1',2,1,NULL),(38,NULL,'2013-07-08 21:29:54','2013-07-08 21:29:54',NULL,'1',2,1,NULL),(39,NULL,'2013-07-08 21:30:03','2013-07-08 21:30:03',NULL,'1',2,1,NULL),(40,NULL,'2013-07-08 21:32:36','2013-07-08 21:32:36',NULL,'1',9,1,NULL),(41,NULL,'2013-07-08 21:33:23','2013-07-08 21:33:23',NULL,'1',2,1,NULL),(42,NULL,'2013-07-08 21:33:30','2013-07-08 21:33:30',NULL,'1',2,1,NULL),(43,NULL,'2013-07-08 21:33:50','2013-07-08 21:33:50',NULL,'1',2,1,NULL),(44,NULL,'2013-07-08 21:34:00','2013-07-08 21:34:00',NULL,'1',2,1,NULL),(45,NULL,'2013-07-08 21:34:26','2013-07-08 21:34:26',NULL,'1',2,1,NULL),(46,NULL,'2013-07-08 21:34:33','2013-07-08 21:34:33',NULL,'1',2,1,NULL),(47,NULL,'2013-07-08 21:34:58','2013-07-08 21:34:58',NULL,'1',2,1,NULL),(48,NULL,'2013-07-08 21:35:04','2013-07-08 21:35:04',NULL,'1',2,1,NULL),(49,NULL,'2013-07-08 21:35:25','2013-07-08 21:35:25',NULL,'1',2,1,NULL),(50,NULL,'2013-07-08 21:35:32','2013-07-08 21:35:32',NULL,'1',2,1,NULL),(52,NULL,'2013-07-08 21:43:49','2013-07-08 21:43:49',NULL,'1',8,1,NULL),(53,NULL,'2013-07-08 21:52:17','2013-07-08 21:52:17',NULL,'1',37,1,NULL),(54,NULL,'2013-07-08 22:10:12','2013-07-08 22:10:12',NULL,'1',37,1,NULL),(55,NULL,'2013-07-08 22:15:51','2013-07-08 22:15:51',NULL,'1',37,1,NULL),(56,NULL,'2013-07-08 22:26:34','2013-07-08 22:26:34',NULL,'1',37,1,NULL),(57,NULL,'2013-07-08 22:27:12','2013-07-08 22:27:12',NULL,'1',37,1,NULL),(58,NULL,'2013-07-08 22:27:41','2013-07-08 22:27:41',NULL,'1',37,1,NULL),(59,NULL,'2013-07-08 22:28:07','2013-07-08 22:28:07',NULL,'1',37,1,NULL),(60,NULL,'2013-07-08 22:28:31','2013-07-08 22:28:31',NULL,'1',37,1,NULL),(61,NULL,'2013-07-08 22:45:27','2013-07-08 22:45:27',NULL,'1',9,1,NULL),(62,NULL,'2013-07-08 22:53:25','2013-07-08 22:53:25',NULL,'1',37,1,NULL),(63,NULL,'2013-07-08 22:55:14','2013-07-08 22:55:14',NULL,'1',9,1,NULL),(64,NULL,'2013-07-08 22:55:41','2013-07-08 22:55:41',NULL,'1',9,1,NULL),(65,NULL,'2013-07-08 22:56:43','2013-07-08 22:56:43',NULL,'1',37,1,NULL),(66,NULL,'2013-07-08 22:57:06','2013-07-08 22:57:19',NULL,'1',9,1,NULL),(67,NULL,'2013-07-08 22:58:12','2013-07-08 22:58:12',NULL,'1',9,1,NULL),(68,NULL,'2013-07-08 23:03:33','2013-07-08 23:03:34',NULL,'1',9,1,NULL),(69,NULL,'2013-07-08 23:05:04','2013-07-08 23:05:04',NULL,'1',37,1,NULL),(70,NULL,'2013-07-08 23:05:14','2013-07-08 23:05:14',NULL,'1',2,1,NULL),(71,NULL,'2013-07-08 23:05:21','2013-07-08 23:05:21',NULL,'1',2,1,NULL),(72,NULL,'2013-07-08 23:05:45','2013-07-08 23:05:45',NULL,'1',9,1,NULL),(73,NULL,'2013-07-08 23:07:22','2013-07-08 23:07:22',NULL,'1',9,1,NULL),(74,NULL,'2013-07-08 23:08:10','2013-07-08 23:08:10',NULL,'1',35,1,NULL);
/*!40000 ALTER TABLE `Blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionAttributeValues`
--

DROP TABLE IF EXISTS `CollectionAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionAttributeValues`
--

LOCK TABLES `CollectionAttributeValues` WRITE;
/*!40000 ALTER TABLE `CollectionAttributeValues` DISABLE KEYS */;
INSERT INTO `CollectionAttributeValues` VALUES (3,1,3,1),(3,1,4,2),(4,1,3,3),(4,1,4,4),(5,1,3,5),(5,1,4,6),(6,1,3,7),(7,1,3,8),(7,1,4,9),(8,1,3,10),(8,1,4,11),(9,1,3,12),(9,1,4,13),(11,1,3,14),(11,1,4,15),(12,1,3,16),(12,1,4,17),(13,1,3,18),(13,1,4,19),(14,1,3,21),(14,1,4,22),(14,1,5,20),(15,1,3,23),(16,1,3,24),(16,1,4,25),(17,1,3,26),(17,1,4,27),(18,1,3,28),(18,1,4,29),(19,1,3,30),(19,1,4,32),(19,1,5,31),(20,1,3,33),(20,1,4,35),(20,1,5,34),(21,1,3,36),(21,1,4,37),(22,1,3,38),(23,1,3,39),(23,1,4,40),(24,1,3,41),(24,1,4,42),(25,1,3,43),(25,1,4,44),(26,1,3,45),(26,1,4,46),(28,1,3,47),(28,1,4,48),(29,1,3,49),(30,1,3,50),(31,1,3,51),(32,1,3,52),(32,1,4,53),(34,1,3,54),(34,1,4,55),(35,1,3,56),(35,1,4,57),(36,1,3,58),(37,1,4,59),(38,1,4,60),(40,1,3,61),(40,1,4,62),(41,1,4,63),(42,1,5,64),(42,1,8,65),(43,1,3,66),(43,1,4,67),(44,1,5,68),(45,1,5,69),(46,1,3,70),(47,1,3,71),(48,1,3,72),(49,1,3,73),(50,1,3,74),(51,1,5,75),(53,1,3,76),(54,1,3,77),(55,1,3,78),(56,1,3,79),(57,1,3,80),(58,1,3,81),(60,1,3,82),(61,1,3,83),(62,1,3,84),(63,1,3,85),(64,1,3,86),(65,1,3,87),(67,1,3,88),(68,1,3,89),(69,1,3,90),(71,1,3,91),(72,1,3,92),(73,1,3,93),(74,1,3,94),(77,1,3,95),(78,1,3,96),(79,1,3,97),(80,1,3,98),(82,1,3,99),(83,1,3,100),(84,1,3,101),(85,1,3,102),(86,1,3,103),(87,1,3,104),(88,1,3,105),(89,1,3,106),(90,1,3,107),(91,1,8,108),(92,1,3,109),(93,1,3,110),(94,1,3,111),(95,1,3,112),(96,1,3,113),(97,1,3,114),(99,1,3,115),(100,1,3,116),(105,1,5,118),(105,1,8,119),(106,1,5,117),(131,1,4,120),(133,1,1,133),(133,1,2,134),(133,1,3,135),(133,1,14,136),(134,1,1,137),(134,1,2,138),(134,1,3,139),(134,1,14,140),(135,1,1,141),(135,1,2,142),(135,1,3,143),(135,1,14,144),(136,1,1,145),(136,1,2,146),(136,1,3,147),(136,1,14,148),(137,1,1,149),(137,1,2,150),(137,1,3,151),(137,1,14,152),(138,1,1,153),(138,1,2,154),(138,1,3,155),(138,1,14,156),(138,2,1,157),(138,2,2,158),(138,2,3,159),(138,2,14,160),(139,1,1,161),(139,1,2,162),(139,1,3,163),(139,1,14,164),(140,1,1,165),(140,1,2,166),(140,1,3,167),(140,1,14,168),(145,1,1,169),(145,1,2,170),(145,1,3,171),(145,2,1,169),(145,2,2,170),(145,2,3,171),(145,3,1,169),(145,3,2,170),(145,3,3,171),(146,1,1,172),(146,1,2,173),(146,1,3,174),(146,2,1,172),(146,2,2,173),(146,2,3,174);
/*!40000 ALTER TABLE `CollectionAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

DROP TABLE IF EXISTS `CollectionSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_is_featured` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

LOCK TABLES `CollectionSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `CollectionSearchIndexAttributes` VALUES (1,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(3,NULL,NULL,'blog, blogging','icon-book',0,0,NULL,0,0,0),(4,NULL,NULL,'new blog, write blog, blogging','icon-pencil',0,0,NULL,0,0,0),(5,NULL,NULL,'blog drafts,composer','icon-book',0,0,NULL,0,0,0),(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,0,0,0),(7,NULL,NULL,'pages, add page, delete page, copy, move, alias','icon-home',0,0,NULL,0,0,0),(8,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk','icon-road',0,0,NULL,0,0,0),(9,NULL,NULL,'find page, search page, search, find, pages, sitemap','icon-search',0,0,NULL,0,0,0),(11,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute','icon-picture',0,0,NULL,0,0,0),(12,NULL,NULL,'file, file attributes, title, attribute, description, rename','icon-cog',0,0,NULL,0,0,0),(13,NULL,NULL,'files, category, categories','icon-list-alt',0,0,NULL,0,0,0),(14,NULL,NULL,'new file set','icon-plus-sign',1,0,NULL,0,0,0),(15,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,0,0,0),(16,NULL,NULL,'find, search, people, delete user, remove user, change password, password','icon-user',0,0,NULL,0,0,0),(17,NULL,NULL,'user, group, people, permissions, access, expire','icon-globe',0,0,NULL,0,0,0),(18,NULL,NULL,'user attributes, user data, gather data, registration data','icon-cog',0,0,NULL,0,0,0),(19,NULL,NULL,'new user, create','icon-plus-sign',1,0,NULL,0,0,0),(20,NULL,NULL,'new user group, new group, group, create','icon-plus',1,0,NULL,0,0,0),(21,NULL,NULL,'group set','icon-list',0,0,NULL,0,0,0),(22,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,0,0,0),(23,NULL,NULL,'hits, pageviews, visitors, activity','icon-signal',0,0,NULL,0,0,0),(24,NULL,NULL,'forms, questions, response, data','icon-briefcase',0,0,NULL,0,0,0),(25,NULL,NULL,'questions, quiz, response','icon-tasks',0,0,NULL,0,0,0),(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history','icon-time',0,0,NULL,0,0,0),(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css','icon-font',0,0,NULL,0,0,0),(29,NULL,NULL,'theme',NULL,0,0,NULL,0,0,0),(30,NULL,NULL,'page types',NULL,0,0,NULL,0,0,0),(31,NULL,NULL,'custom theme, change theme, custom css, css',NULL,0,0,NULL,0,0,0),(32,NULL,NULL,'page type defaults, global block, global area, starter, template','icon-file',0,0,NULL,0,0,0),(34,NULL,NULL,'page attributes, custom','icon-cog',0,0,NULL,0,0,0),(35,NULL,NULL,'single, page, custom, application','icon-wrench',0,0,NULL,0,0,0),(36,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,0,0,0),(37,NULL,NULL,NULL,'icon-list',0,0,NULL,0,0,0),(38,NULL,NULL,NULL,'icon-user',0,0,NULL,0,0,0),(40,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo','icon-th',0,0,NULL,0,0,0),(41,NULL,NULL,NULL,'icon-lock',0,0,NULL,0,0,0),(42,NULL,NULL,NULL,NULL,1,0,NULL,1,0,0),(43,NULL,NULL,'block, refresh, custom','icon-wrench',0,0,NULL,0,0,0),(44,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0),(45,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0),(46,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,0,0,0),(47,NULL,NULL,'update, upgrade',NULL,0,0,NULL,0,0,0),(48,NULL,NULL,'concrete5.org, my account, marketplace',NULL,0,0,NULL,0,0,0),(49,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,0,0,0),(50,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,0,0,0),(51,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0),(53,NULL,NULL,'website name, title',NULL,0,0,NULL,0,0,0),(54,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,0,0,0),(55,NULL,NULL,'tinymce, content block, fonts, editor, tinymce, content, overlay',NULL,0,0,NULL,0,0,0),(56,NULL,NULL,'translate, translation, internationalization, multilingual, translate',NULL,0,0,NULL,0,0,0),(57,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,0,0,0),(58,NULL,NULL,'interface, quick nav, dashboard background, background image',NULL,0,0,NULL,0,0,0),(60,NULL,NULL,'vanity, pretty url, seo, pageview, view',NULL,0,0,NULL,0,0,0),(61,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,0,0,0),(62,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,0,0,0),(63,NULL,NULL,'pretty, slug',NULL,0,0,NULL,0,0,0),(64,NULL,NULL,'turn off statistics, tracking, statistics, pageviews, hits',NULL,0,0,NULL,0,0,0),(65,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,0,0,0),(67,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,0),(68,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,0),(69,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,0,0,0),(71,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,0,0,0),(72,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,0,0,0),(73,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,0,0,0),(74,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,0,0,0),(77,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,0,0,0),(78,NULL,NULL,'security, registration',NULL,0,0,NULL,0,0,0),(79,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,0,0,0),(80,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,0,0,0),(82,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,0,0,0),(83,NULL,NULL,'member profile, member page,community, forums, social, avatar',NULL,0,0,NULL,0,0,0),(84,NULL,NULL,'signup, new user, community',NULL,0,0,NULL,0,0,0),(85,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,0,0,0),(86,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,0,0,0),(87,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,0,0,0),(88,NULL,NULL,'attribute configuration',NULL,0,0,NULL,0,0,0),(89,NULL,NULL,'attributes, sets',NULL,0,0,NULL,0,0,0),(90,NULL,NULL,'attributes, types',NULL,0,0,NULL,0,0,0),(91,NULL,NULL,NULL,NULL,0,0,NULL,1,0,0),(92,NULL,NULL,'overrides, system info, debug, support,help',NULL,0,0,NULL,0,0,0),(93,NULL,NULL,'errors,exceptions, develop, support, help',NULL,0,0,NULL,0,0,0),(94,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, errors, log',NULL,0,0,NULL,0,0,0),(95,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,0,0,0),(96,NULL,NULL,'network, proxy server',NULL,0,0,NULL,0,0,0),(97,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,0,0,0),(99,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,0,0,0),(100,NULL,NULL,'export, database, xml, starting, points, schema, refresh, custom, tables',NULL,0,0,NULL,0,0,0),(105,NULL,NULL,NULL,NULL,1,0,NULL,1,0,0),(106,NULL,NULL,NULL,NULL,1,0,NULL,0,0,0),(123,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(124,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(125,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(126,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(127,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(128,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(129,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(130,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(131,NULL,NULL,NULL,'icon-gift',0,0,NULL,0,0,0),(133,'','','',NULL,0,0,NULL,0,0,0),(134,'','','',NULL,0,0,NULL,0,0,0),(135,'','','',NULL,0,0,NULL,0,0,1),(136,'','','',NULL,0,0,NULL,0,0,1),(137,'','','',NULL,0,0,NULL,0,0,1),(138,'Soho','','',NULL,0,0,NULL,0,0,1),(139,'','','',NULL,0,0,NULL,0,0,0),(140,'','','',NULL,0,0,NULL,0,0,0),(141,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(142,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(143,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(145,'Privacy Policy','','',NULL,0,0,NULL,0,0,0),(146,'','','',NULL,0,0,NULL,0,0,0),(149,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0),(150,NULL,NULL,NULL,NULL,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `CollectionSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaLayouts`
--

DROP TABLE IF EXISTS `CollectionVersionAreaLayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaLayouts`
--

LOCK TABLES `CollectionVersionAreaLayouts` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaLayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionAreaStyles`
--

DROP TABLE IF EXISTS `CollectionVersionAreaStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

LOCK TABLES `CollectionVersionAreaStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionAreaStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlockStyles`
--

DROP TABLE IF EXISTS `CollectionVersionBlockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

LOCK TABLES `CollectionVersionBlockStyles` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlockStyles` VALUES (1,3,14,'Main',0),(1,6,14,'Main',0),(1,6,22,'Main',0),(1,7,14,'Main',0),(1,7,22,'Main',0),(1,7,23,'Right Top',0),(1,8,14,'Main',0),(1,8,22,'Main',0),(1,8,23,'Right Top',0),(1,8,26,'Left Top',0),(1,8,27,'Left Top',0),(1,9,14,'Main',0),(1,9,22,'Main',0),(1,9,23,'Right Top',0),(1,9,26,'Left Top',0),(1,9,27,'Left Top',0),(1,9,28,'Left Top',0),(1,10,14,'Main',0),(1,10,22,'Main',0),(1,10,23,'Right Top',0),(1,11,14,'Main',0),(1,11,22,'Main',0),(1,11,23,'Right Top',0),(1,11,34,'Left Top',0),(1,12,14,'Main',0),(1,12,22,'Main',0),(1,12,23,'Right Top',0),(1,12,34,'Left Top',0),(1,12,37,'Right Top',0),(123,3,24,'Main',0),(123,4,24,'Main',0),(123,5,24,'Main',0),(123,5,38,'Left Top',0),(123,5,39,'Right Top',0),(123,6,24,'Main',0),(123,6,38,'Left Top',0),(123,6,39,'Right Top',0),(124,3,13,'Main',0),(124,4,13,'Main',0),(125,3,41,'Left Top',0),(125,3,42,'Right Top',0),(126,3,16,'Main',0),(126,4,16,'Main',0),(126,4,43,'Left Top',0),(126,4,44,'Right Top',0),(126,5,43,'Left Top',0),(126,5,44,'Right Top',0),(126,5,58,'Breadcrumbs',0),(126,5,68,'Main',0),(127,3,25,'Main',0),(127,4,25,'Main',0),(127,4,45,'Left Top',0),(127,4,46,'Right Top',0),(128,3,17,'Main',0),(128,4,17,'Main',0),(128,4,47,'Left Top',0),(128,4,48,'Right Top',0),(129,3,19,'Main',0),(129,4,19,'Main',0),(129,5,19,'Main',0),(129,5,49,'Left Top',0),(129,5,50,'Right Top',0),(130,4,54,'Breadcrumbs',0),(143,3,61,'Main',0),(150,5,70,'Left Top',0),(150,5,73,'Main',0);
/*!40000 ALTER TABLE `CollectionVersionBlockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocks`
--

DROP TABLE IF EXISTS `CollectionVersionBlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocks`
--

LOCK TABLES `CollectionVersionBlocks` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocks` DISABLE KEYS */;
INSERT INTO `CollectionVersionBlocks` VALUES (1,2,14,'Main',0,1,0,0),(1,3,14,'Main',0,0,0,0),(1,4,14,'Main',1,0,0,0),(1,4,21,'Main',0,1,0,0),(1,5,14,'Main',1,0,0,0),(1,5,22,'Main',0,1,0,0),(1,6,14,'Main',1,0,0,0),(1,6,22,'Main',0,0,0,0),(1,6,23,'Right Top',0,1,0,0),(1,7,14,'Main',1,0,0,0),(1,7,22,'Main',0,0,0,0),(1,7,23,'Right Top',0,0,0,0),(1,7,26,'Left Top',0,1,0,0),(1,7,27,'Left Top',1,1,0,0),(1,8,14,'Main',1,0,0,0),(1,8,22,'Main',0,0,0,0),(1,8,23,'Right Top',0,0,0,0),(1,8,26,'Left Top',0,0,0,0),(1,8,27,'Left Top',1,0,0,0),(1,8,28,'Left Top',2,1,0,0),(1,9,14,'Main',1,0,0,0),(1,9,22,'Main',0,0,0,0),(1,9,23,'Right Top',0,0,0,0),(1,9,26,'Left Top',0,0,0,0),(1,9,27,'Left Top',1,0,0,0),(1,9,28,'Left Top',2,0,0,0),(1,9,29,'Left Top',3,1,0,0),(1,10,14,'Main',1,0,0,0),(1,10,22,'Main',0,0,0,0),(1,10,23,'Right Top',0,0,0,0),(1,10,34,'Left Top',0,1,0,0),(1,11,14,'Main',1,0,0,0),(1,11,22,'Main',0,0,0,0),(1,11,23,'Right Top',0,0,0,0),(1,11,34,'Left Top',0,0,0,0),(1,11,37,'Right Top',1,1,0,0),(1,12,14,'Main',1,0,0,0),(1,12,22,'Main',0,0,0,0),(1,12,23,'Right Top',0,0,0,0),(1,12,34,'Left Top',0,0,0,0),(1,12,37,'Right Top',1,0,0,0),(105,1,6,'Primary',0,1,0,0),(105,1,7,'Primary',1,1,0,0),(105,1,8,'Secondary 1',0,1,0,0),(105,1,9,'Secondary 2',0,1,0,0),(105,1,10,'Secondary 3',0,1,0,0),(105,1,11,'Secondary 4',0,1,0,0),(105,1,12,'Secondary 5',0,1,0,0),(106,1,1,'Header',0,1,0,0),(106,1,2,'Column 1',0,1,0,0),(106,1,3,'Column 2',0,1,0,0),(106,1,4,'Column 3',0,1,0,0),(106,1,5,'Column 4',0,1,0,0),(123,2,15,'Main',0,1,0,0),(123,3,24,'Main',0,1,0,0),(123,4,24,'Main',0,0,0,0),(123,4,38,'Left Top',0,1,0,0),(123,4,39,'Right Top',0,1,0,0),(123,5,24,'Main',0,0,0,0),(123,5,38,'Left Top',0,0,0,0),(123,5,39,'Right Top',0,0,0,0),(123,6,24,'Main',0,0,0,0),(123,6,38,'Left Top',0,0,0,0),(123,6,39,'Right Top',0,0,0,0),(123,6,60,'Breadcrumbs',0,1,0,0),(124,2,13,'Main',0,1,0,0),(124,2,52,'Main',1,1,0,0),(124,3,13,'Main',0,0,0,0),(124,4,13,'Main',0,0,0,0),(124,4,69,'Main',1,1,0,0),(125,2,41,'Left Top',0,1,0,0),(125,2,42,'Right Top',0,1,0,0),(125,3,41,'Left Top',0,0,0,0),(125,3,42,'Right Top',0,0,0,0),(125,3,59,'Breadcrumbs',0,1,0,0),(126,2,16,'Main',0,1,0,0),(126,3,16,'Main',0,0,0,0),(126,3,43,'Left Top',0,1,0,0),(126,3,44,'Right Top',0,1,0,0),(126,4,16,'Main',0,0,0,0),(126,4,43,'Left Top',0,0,0,0),(126,4,44,'Right Top',0,0,0,0),(126,4,58,'Breadcrumbs',0,1,0,0),(126,5,43,'Left Top',0,0,0,0),(126,5,44,'Right Top',0,0,0,0),(126,5,58,'Breadcrumbs',0,0,0,0),(126,5,68,'Main',0,1,0,0),(127,2,25,'Main',0,1,0,0),(127,3,25,'Main',0,0,0,0),(127,3,45,'Left Top',0,1,0,0),(127,3,46,'Right Top',0,1,0,0),(127,4,25,'Main',0,0,0,0),(127,4,45,'Left Top',0,0,0,0),(127,4,46,'Right Top',0,0,0,0),(127,4,57,'Breadcrumbs',0,1,0,0),(128,2,17,'Main',0,1,0,0),(128,3,17,'Main',0,0,0,0),(128,3,47,'Left Top',0,1,0,0),(128,3,48,'Right Top',0,1,0,0),(128,4,17,'Main',0,0,0,0),(128,4,47,'Left Top',0,0,0,0),(128,4,48,'Right Top',0,0,0,0),(128,4,56,'Breadcrumbs',0,1,0,0),(129,2,18,'Main',0,1,0,0),(129,3,19,'Main',0,1,0,0),(129,4,19,'Main',0,0,0,0),(129,4,49,'Left Top',0,1,0,0),(129,4,50,'Right Top',0,1,0,0),(129,5,19,'Main',0,0,0,0),(129,5,49,'Left Top',0,0,0,0),(129,5,50,'Right Top',0,0,0,0),(129,5,55,'Breadcrumbs',0,1,0,0),(130,3,53,'Breadcrumbs',0,1,0,0),(130,4,54,'Breadcrumbs',0,1,0,0),(141,2,30,'Main',0,1,0,0),(141,2,31,'Main',1,1,0,0),(141,2,32,'Main',2,1,0,0),(141,2,33,'Main',3,1,0,0),(141,3,30,'Main',0,0,0,0),(141,3,31,'Main',1,0,0,0),(141,3,32,'Main',2,0,0,0),(141,3,33,'Main',3,0,0,0),(142,2,35,'Main',0,1,0,0),(142,2,36,'Main',1,1,0,0),(143,2,40,'Main',0,1,0,0),(143,3,61,'Main',0,1,0,0),(145,3,62,'Breadcrumbs',0,1,0,0),(145,3,63,'Title',0,1,0,0),(145,3,64,'Content',0,1,0,0),(146,2,65,'Breadcrumbs',0,1,0,0),(146,2,66,'Title',0,1,0,0),(146,2,67,'Content',0,1,0,0),(150,4,70,'Left Top',0,1,0,0),(150,4,71,'Right Top',0,1,0,0),(150,4,72,'Main',0,1,0,0),(150,5,70,'Left Top',0,0,0,0),(150,5,73,'Main',0,1,0,0),(150,5,74,'Right Top',0,1,0,0);
/*!40000 ALTER TABLE `CollectionVersionBlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

DROP TABLE IF EXISTS `CollectionVersionBlocksOutputCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

LOCK TABLES `CollectionVersionBlocksOutputCache` WRITE;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionBlocksOutputCache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

DROP TABLE IF EXISTS `CollectionVersionRelatedEdits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersionRelatedEdits`
--

LOCK TABLES `CollectionVersionRelatedEdits` WRITE;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` DISABLE KEYS */;
/*!40000 ALTER TABLE `CollectionVersionRelatedEdits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CollectionVersions`
--

DROP TABLE IF EXISTS `CollectionVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CollectionVersions`
--

LOCK TABLES `CollectionVersions` WRITE;
/*!40000 ALTER TABLE `CollectionVersions` DISABLE KEYS */;
INSERT INTO `CollectionVersions` VALUES (1,1,'Home','home','','2013-07-02 12:14:02','2013-07-02 12:14:02','Initial Version',0,0,1,NULL,5,4,NULL),(1,2,'Home','home','','2013-07-02 12:14:02','2013-07-02 13:23:30','Version 2',0,0,1,1,5,4,NULL),(1,3,'Home','home','','2013-07-02 12:14:02','2013-07-02 14:26:27','Version 3',0,0,1,1,5,4,NULL),(1,4,'Home','home','','2013-07-02 12:14:02','2013-07-02 14:35:19','Version 4',0,0,1,1,5,4,NULL),(1,5,'Home','home','','2013-07-02 12:14:02','2013-07-02 14:50:10','Version 5',0,0,1,1,5,4,NULL),(1,6,'Home','home','','2013-07-02 12:14:02','2013-07-02 16:44:47','New Version 6',0,0,1,1,5,4,NULL),(1,7,'Home','home','','2013-07-02 12:14:02','2013-07-07 16:18:17','Version 7',0,0,1,1,5,4,NULL),(1,8,'Home','home','','2013-07-02 12:14:02','2013-07-07 19:39:46','New Version 8',0,0,1,1,5,4,NULL),(1,9,'Home','home','','2013-07-02 12:14:02','2013-07-08 19:53:36','Version 9',0,0,1,1,5,4,NULL),(1,10,'Home','home','','2013-07-02 12:14:02','2013-07-08 20:00:49','Version 10',0,0,1,1,5,4,NULL),(1,11,'Home','home','','2013-07-02 12:14:02','2013-07-08 21:26:31','Version 11',0,0,1,1,5,4,NULL),(1,12,'Home','home','','2013-07-02 12:14:02','2013-07-08 22:45:26','Version 12',1,0,1,1,5,4,NULL),(2,1,'Dashboard','dashboard','','2013-07-02 12:14:20','2013-07-02 12:14:20','Initial Version',1,0,1,NULL,5,0,NULL),(3,1,'Composer','composer','Write for your site.','2013-07-02 12:14:28','2013-07-02 12:14:28','Initial Version',1,0,1,NULL,5,0,NULL),(4,1,'Write','write','','2013-07-02 12:14:29','2013-07-02 12:14:29','Initial Version',1,0,1,NULL,5,0,NULL),(5,1,'Drafts','drafts','','2013-07-02 12:14:30','2013-07-02 12:14:30','Initial Version',1,0,1,NULL,5,0,NULL),(6,1,'Sitemap','sitemap','Whole world at a glance.','2013-07-02 12:14:30','2013-07-02 12:14:30','Initial Version',1,0,1,NULL,5,0,NULL),(7,1,'Full Sitemap','full','','2013-07-02 12:14:31','2013-07-02 12:14:31','Initial Version',1,0,1,NULL,5,0,NULL),(8,1,'Flat View','explore','','2013-07-02 12:14:31','2013-07-02 12:14:31','Initial Version',1,0,1,NULL,5,0,NULL),(9,1,'Page Search','search','','2013-07-02 12:14:32','2013-07-02 12:14:32','Initial Version',1,0,1,NULL,5,0,NULL),(10,1,'Files','files','All documents and images.','2013-07-02 12:14:32','2013-07-02 12:14:32','Initial Version',1,0,1,NULL,5,0,NULL),(11,1,'File Manager','search','','2013-07-02 12:14:33','2013-07-02 12:14:33','Initial Version',1,0,1,NULL,5,0,NULL),(12,1,'Attributes','attributes','','2013-07-02 12:14:33','2013-07-02 12:14:33','Initial Version',1,0,1,NULL,5,0,NULL),(13,1,'File Sets','sets','','2013-07-02 12:14:34','2013-07-02 12:14:34','Initial Version',1,0,1,NULL,5,0,NULL),(14,1,'Add File Set','add_set','','2013-07-02 12:14:35','2013-07-02 12:14:35','Initial Version',1,0,1,NULL,5,0,NULL),(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2013-07-02 12:14:35','2013-07-02 12:14:35','Initial Version',1,0,1,NULL,5,0,NULL),(16,1,'Search Users','search','','2013-07-02 12:14:36','2013-07-02 12:14:36','Initial Version',1,0,1,NULL,5,0,NULL),(17,1,'User Groups','groups','','2013-07-02 12:14:37','2013-07-02 12:14:37','Initial Version',1,0,1,NULL,5,0,NULL),(18,1,'Attributes','attributes','','2013-07-02 12:14:38','2013-07-02 12:14:38','Initial Version',1,0,1,NULL,5,0,NULL),(19,1,'Add User','add','','2013-07-02 12:14:38','2013-07-02 12:14:38','Initial Version',1,0,1,NULL,5,0,NULL),(20,1,'Add Group','add_group','','2013-07-02 12:14:39','2013-07-02 12:14:39','Initial Version',1,0,1,NULL,5,0,NULL),(21,1,'Group Sets','group_sets','','2013-07-02 12:14:39','2013-07-02 12:14:39','Initial Version',1,0,1,NULL,5,0,NULL),(22,1,'Reports','reports','Get data from forms and logs.','2013-07-02 12:14:40','2013-07-02 12:14:40','Initial Version',1,0,1,NULL,5,0,NULL),(23,1,'Statistics','statistics','View your site activity.','2013-07-02 12:14:41','2013-07-02 12:14:41','Initial Version',1,0,1,NULL,5,0,NULL),(24,1,'Form Results','forms','Get submission data.','2013-07-02 12:14:41','2013-07-02 12:14:41','Initial Version',1,0,1,NULL,5,0,NULL),(25,1,'Surveys','surveys','','2013-07-02 12:14:42','2013-07-02 12:14:42','Initial Version',1,0,1,NULL,5,0,NULL),(26,1,'Logs','logs','','2013-07-02 12:14:43','2013-07-02 12:14:43','Initial Version',1,0,1,NULL,5,0,NULL),(27,1,'Pages & Themes','pages','Reskin your site.','2013-07-02 12:14:43','2013-07-02 12:14:43','Initial Version',1,0,1,NULL,5,0,NULL),(28,1,'Themes','themes','Reskin your site.','2013-07-02 12:14:44','2013-07-02 12:14:44','Initial Version',1,0,1,NULL,5,0,NULL),(29,1,'Add','add','','2013-07-02 12:14:45','2013-07-02 12:14:45','Initial Version',1,0,1,NULL,5,0,NULL),(30,1,'Inspect','inspect','','2013-07-02 12:14:45','2013-07-02 12:14:45','Initial Version',1,0,1,NULL,5,0,NULL),(31,1,'Customize','customize','','2013-07-02 12:14:46','2013-07-02 12:14:46','Initial Version',1,0,1,NULL,5,0,NULL),(32,1,'Page Types','types','What goes in your site.','2013-07-02 12:14:46','2013-07-02 12:14:46','Initial Version',1,0,1,NULL,5,0,NULL),(33,1,'Add Page Type','add','Add page types to your site.','2013-07-02 12:14:47','2013-07-02 12:14:47','Initial Version',1,0,1,NULL,5,0,NULL),(34,1,'Attributes','attributes','','2013-07-02 12:14:48','2013-07-02 12:14:48','Initial Version',1,0,1,NULL,5,0,NULL),(35,1,'Single Pages','single','','2013-07-02 12:14:48','2013-07-02 12:14:48','Initial Version',1,0,1,NULL,5,0,NULL),(36,1,'Workflow','workflow','','2013-07-02 12:14:49','2013-07-02 12:14:49','Initial Version',1,0,1,NULL,5,0,NULL),(37,1,'Workflow List','list','','2013-07-02 12:14:50','2013-07-02 12:14:50','Initial Version',1,0,1,NULL,5,0,NULL),(38,1,'Waiting for Me','me','','2013-07-02 12:14:50','2013-07-02 12:14:50','Initial Version',1,0,1,NULL,5,0,NULL),(39,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2013-07-02 12:14:51','2013-07-02 12:14:51','Initial Version',1,0,1,NULL,5,0,NULL),(40,1,'Stacks','stacks','Share content across your site.','2013-07-02 12:14:52','2013-07-02 12:14:52','Initial Version',1,0,1,NULL,5,0,NULL),(41,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2013-07-02 12:14:52','2013-07-02 12:14:52','Initial Version',1,0,1,NULL,5,0,NULL),(42,1,'Stack List','list','','2013-07-02 12:14:53','2013-07-02 12:14:53','Initial Version',1,0,1,NULL,5,0,NULL),(43,1,'Block Types','types','Manage the installed block types in your site.','2013-07-02 12:14:55','2013-07-02 12:14:55','Initial Version',1,0,1,NULL,5,0,NULL),(44,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2013-07-02 12:14:55','2013-07-02 12:14:55','Initial Version',1,0,1,NULL,5,0,NULL),(45,1,'Dashboard','news','','2013-07-02 12:14:56','2013-07-02 12:14:56','Initial Version',1,0,1,NULL,5,0,NULL),(46,1,'Add Functionality','install','Install add-ons & themes.','2013-07-02 12:14:57','2013-07-02 12:14:57','Initial Version',1,0,1,NULL,5,0,NULL),(47,1,'Update Add-Ons','update','Update your installed packages.','2013-07-02 12:14:58','2013-07-02 12:14:58','Initial Version',1,0,1,NULL,5,0,NULL),(48,1,'Connect to the Community','connect','Connect to the concrete5 community.','2013-07-02 12:14:59','2013-07-02 12:14:59','Initial Version',1,0,1,NULL,5,0,NULL),(49,1,'Get More Themes','themes','Download themes from concrete5.org.','2013-07-02 12:15:00','2013-07-02 12:15:00','Initial Version',1,0,1,NULL,5,0,NULL),(50,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2013-07-02 12:15:01','2013-07-02 12:15:01','Initial Version',1,0,1,NULL,5,0,NULL),(51,1,'System & Settings','system','Secure and setup your site.','2013-07-02 12:15:02','2013-07-02 12:15:02','Initial Version',1,0,1,NULL,5,0,NULL),(52,1,'Basics','basics','Basic information about your website.','2013-07-02 12:15:03','2013-07-02 12:15:03','Initial Version',1,0,1,NULL,5,0,NULL),(53,1,'Site Name','site_name','','2013-07-02 12:15:04','2013-07-02 12:15:04','Initial Version',1,0,1,NULL,5,0,NULL),(54,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2013-07-02 12:15:05','2013-07-02 12:15:05','Initial Version',1,0,1,NULL,5,0,NULL),(55,1,'Rich Text Editor','editor','','2013-07-02 12:15:05','2013-07-02 12:15:05','Initial Version',1,0,1,NULL,5,0,NULL),(56,1,'Languages','multilingual','','2013-07-02 12:15:07','2013-07-02 12:15:07','Initial Version',1,0,1,NULL,5,0,NULL),(57,1,'Time Zone','timezone','','2013-07-02 12:15:08','2013-07-02 12:15:08','Initial Version',1,0,1,NULL,5,0,NULL),(58,1,'Interface Preferences','interface','','2013-07-02 12:15:09','2013-07-02 12:15:09','Initial Version',1,0,1,NULL,5,0,NULL),(59,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2013-07-02 12:15:10','2013-07-02 12:15:10','Initial Version',1,0,1,NULL,5,0,NULL),(60,1,'Pretty URLs','urls','','2013-07-02 12:15:11','2013-07-02 12:15:11','Initial Version',1,0,1,NULL,5,0,NULL),(61,1,'Bulk SEO Updater','bulk_seo_tool','','2013-07-02 12:15:11','2013-07-02 12:15:11','Initial Version',1,0,1,NULL,5,0,NULL),(62,1,'Tracking Codes','tracking_codes','','2013-07-02 12:15:12','2013-07-02 12:15:12','Initial Version',1,0,1,NULL,5,0,NULL),(63,1,'Excluded URL Word List','excluded','','2013-07-02 12:15:12','2013-07-02 12:15:12','Initial Version',1,0,1,NULL,5,0,NULL),(64,1,'Statistics','statistics','','2013-07-02 12:15:13','2013-07-02 12:15:13','Initial Version',1,0,1,NULL,5,0,NULL),(65,1,'Search Index','search_index','','2013-07-02 12:15:14','2013-07-02 12:15:14','Initial Version',1,0,1,NULL,5,0,NULL),(66,1,'Optimization','optimization','Keep your site running well.','2013-07-02 12:15:15','2013-07-02 12:15:15','Initial Version',1,0,1,NULL,5,0,NULL),(67,1,'Cache & Speed Settings','cache','','2013-07-02 12:15:15','2013-07-02 12:15:15','Initial Version',1,0,1,NULL,5,0,NULL),(68,1,'Clear Cache','clear_cache','','2013-07-02 12:15:16','2013-07-02 12:15:16','Initial Version',1,0,1,NULL,5,0,NULL),(69,1,'Automated Jobs','jobs','','2013-07-02 12:15:17','2013-07-02 12:15:17','Initial Version',1,0,1,NULL,5,0,NULL),(70,1,'Permissions & Access','permissions','Control who sees and edits your site.','2013-07-02 12:15:18','2013-07-02 12:15:18','Initial Version',1,0,1,NULL,5,0,NULL),(71,1,'Site Access','site','','2013-07-02 12:15:18','2013-07-02 12:15:18','Initial Version',1,0,1,NULL,5,0,NULL),(72,1,'File Manager Permissions','files','','2013-07-02 12:15:19','2013-07-02 12:15:19','Initial Version',1,0,1,NULL,5,0,NULL),(73,1,'Allowed File Types','file_types','','2013-07-02 12:15:19','2013-07-02 12:15:19','Initial Version',1,0,1,NULL,5,0,NULL),(74,1,'Task Permissions','tasks','','2013-07-02 12:15:20','2013-07-02 12:15:20','Initial Version',1,0,1,NULL,5,0,NULL),(75,1,'User Permissions','users','','2013-07-02 12:15:21','2013-07-02 12:15:21','Initial Version',1,0,1,NULL,5,0,NULL),(76,1,'Advanced Permissions','advanced','','2013-07-02 12:15:22','2013-07-02 12:15:22','Initial Version',1,0,1,NULL,5,0,NULL),(77,1,'IP Blacklist','ip_blacklist','','2013-07-02 12:15:22','2013-07-02 12:15:22','Initial Version',1,0,1,NULL,5,0,NULL),(78,1,'Captcha Setup','captcha','','2013-07-02 12:15:23','2013-07-02 12:15:23','Initial Version',1,0,1,NULL,5,0,NULL),(79,1,'Spam Control','antispam','','2013-07-02 12:15:24','2013-07-02 12:15:24','Initial Version',1,0,1,NULL,5,0,NULL),(80,1,'Maintenance Mode','maintenance_mode','','2013-07-02 12:15:25','2013-07-02 12:15:25','Initial Version',1,0,1,NULL,5,0,NULL),(81,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2013-07-02 12:15:26','2013-07-02 12:15:26','Initial Version',1,0,1,NULL,5,0,NULL),(82,1,'Login Destination','postlogin','','2013-07-02 12:15:27','2013-07-02 12:15:27','Initial Version',1,0,1,NULL,5,0,NULL),(83,1,'Public Profiles','profiles','','2013-07-02 12:15:27','2013-07-02 12:15:27','Initial Version',1,0,1,NULL,5,0,NULL),(84,1,'Public Registration','public_registration','','2013-07-02 12:15:28','2013-07-02 12:15:28','Initial Version',1,0,1,NULL,5,0,NULL),(85,1,'Email','mail','Control how your site send and processes mail.','2013-07-02 12:15:28','2013-07-02 12:15:28','Initial Version',1,0,1,NULL,5,0,NULL),(86,1,'SMTP Method','method','','2013-07-02 12:15:29','2013-07-02 12:15:29','Initial Version',1,0,1,NULL,5,0,NULL),(87,1,'Email Importers','importers','','2013-07-02 12:15:30','2013-07-02 12:15:30','Initial Version',1,0,1,NULL,5,0,NULL),(88,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2013-07-02 12:15:30','2013-07-02 12:15:30','Initial Version',1,0,1,NULL,5,0,NULL),(89,1,'Sets','sets','Group attributes into sets for easier organization','2013-07-02 12:15:32','2013-07-02 12:15:32','Initial Version',1,0,1,NULL,5,0,NULL),(90,1,'Types','types','Choose which attribute types are available for different items.','2013-07-02 12:15:32','2013-07-02 12:15:32','Initial Version',1,0,1,NULL,5,0,NULL),(91,1,'Environment','environment','Advanced settings for web developers.','2013-07-02 12:15:33','2013-07-02 12:15:33','Initial Version',1,0,1,NULL,5,0,NULL),(92,1,'Environment Information','info','','2013-07-02 12:15:34','2013-07-02 12:15:34','Initial Version',1,0,1,NULL,5,0,NULL),(93,1,'Debug Settings','debug','','2013-07-02 12:15:34','2013-07-02 12:15:34','Initial Version',1,0,1,NULL,5,0,NULL),(94,1,'Logging Settings','logging','','2013-07-02 12:15:35','2013-07-02 12:15:35','Initial Version',1,0,1,NULL,5,0,NULL),(95,1,'File Storage Locations','file_storage_locations','','2013-07-02 12:15:35','2013-07-02 12:15:35','Initial Version',1,0,1,NULL,5,0,NULL),(96,1,'Proxy Server','proxy','','2013-07-02 12:15:36','2013-07-02 12:15:36','Initial Version',1,0,1,NULL,5,0,NULL),(97,1,'Backup & Restore','backup_restore','Backup or restore your website.','2013-07-02 12:15:37','2013-07-02 12:15:37','Initial Version',1,0,1,NULL,5,0,NULL),(98,1,'Backup Database','backup','','2013-07-02 12:15:38','2013-07-02 12:15:38','Initial Version',1,0,1,NULL,5,0,NULL),(99,1,'Update concrete5','update','','2013-07-02 12:15:38','2013-07-02 12:15:38','Initial Version',1,0,1,NULL,5,0,NULL),(100,1,'Database XML','database','','2013-07-02 12:15:39','2013-07-02 12:15:39','Initial Version',1,0,1,NULL,5,0,NULL),(101,1,'Composer','composer','','2013-07-02 12:15:39','2013-07-02 12:15:39','Initial Version',1,0,1,NULL,5,0,NULL),(102,1,'',NULL,NULL,'2013-07-02 12:15:40','2013-07-02 12:15:40','Initial Version',1,0,NULL,NULL,0,1,NULL),(103,1,'',NULL,NULL,'2013-07-02 12:15:40','2013-07-02 12:15:40','Initial Version',1,0,NULL,NULL,0,2,NULL),(104,1,'',NULL,NULL,'2013-07-02 12:15:40','2013-07-02 12:15:40','Initial Version',1,0,NULL,NULL,0,3,NULL),(105,1,'Customize Dashboard Home','home','','2013-07-02 12:15:40','2013-07-02 12:15:40','Initial Version',1,0,1,NULL,5,2,NULL),(106,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2013-07-02 12:15:41','2013-07-02 12:15:41','Initial Version',1,0,1,NULL,5,3,NULL),(107,1,'Drafts','!drafts','','2013-07-02 12:16:24','2013-07-02 12:16:24','Initial Version',1,0,1,NULL,5,0,NULL),(108,1,'Trash','!trash','','2013-07-02 12:16:25','2013-07-02 12:16:25','Initial Version',1,0,1,NULL,5,0,NULL),(109,1,'Stacks','!stacks','','2013-07-02 12:16:26','2013-07-02 12:16:26','Initial Version',1,0,1,NULL,5,0,NULL),(110,1,'Login','login','','2013-07-02 12:16:27','2013-07-02 12:16:27','Initial Version',1,0,1,NULL,5,0,NULL),(111,1,'Register','register','','2013-07-02 12:16:28','2013-07-02 12:16:28','Initial Version',1,0,1,NULL,5,0,NULL),(112,1,'Profile','profile','','2013-07-02 12:16:29','2013-07-02 12:16:29','Initial Version',1,0,1,NULL,5,0,NULL),(113,1,'Edit','edit','','2013-07-02 12:16:29','2013-07-02 12:16:29','Initial Version',1,0,1,NULL,5,0,NULL),(114,1,'Avatar','avatar','','2013-07-02 12:16:30','2013-07-02 12:16:30','Initial Version',1,0,1,NULL,5,0,NULL),(115,1,'Messages','messages','','2013-07-02 12:16:30','2013-07-02 12:16:30','Initial Version',1,0,1,NULL,5,0,NULL),(116,1,'Friends','friends','','2013-07-02 12:16:31','2013-07-02 12:16:31','Initial Version',1,0,1,NULL,5,0,NULL),(117,1,'Page Not Found','page_not_found','','2013-07-02 12:16:31','2013-07-02 12:16:31','Initial Version',1,0,1,NULL,5,0,NULL),(118,1,'Page Forbidden','page_forbidden','','2013-07-02 12:16:32','2013-07-02 12:16:32','Initial Version',1,0,1,NULL,5,0,NULL),(119,1,'Download File','download_file','','2013-07-02 12:16:33','2013-07-02 12:16:33','Initial Version',1,0,1,NULL,5,0,NULL),(120,1,'Members','members','','2013-07-02 12:16:33','2013-07-02 12:16:33','Initial Version',1,0,1,NULL,5,0,NULL),(121,1,'',NULL,NULL,'2013-07-02 12:16:35','2013-07-02 12:16:35','Initial Version',1,0,NULL,NULL,0,4,NULL),(122,1,'',NULL,NULL,'2013-07-02 12:28:00','2013-07-02 12:28:00','Initial Version',1,0,NULL,NULL,0,5,NULL),(123,1,'Facilities','facilities','','2013-07-02 12:33:00','2013-07-02 12:34:01','Initial Version',0,0,1,1,5,5,NULL),(123,2,'Facilities','facilities','','2013-07-02 12:33:00','2013-07-02 13:26:24','Version 2',0,0,1,1,5,5,NULL),(123,3,'Facilities','facilities','','2013-07-02 12:33:00','2013-07-02 18:33:32','New Version 3',0,0,1,1,5,5,NULL),(123,4,'Facilities','facilities','','2013-07-02 12:33:00','2013-07-08 21:29:54','Version 4',0,0,1,1,5,5,NULL),(123,5,'Facilities','facilities','','2013-07-02 12:33:00','2013-07-08 21:32:37','Version 5',1,0,1,1,5,5,NULL),(123,6,'Facilities','facilities','','2013-07-02 12:33:00','2013-07-08 22:28:30','New Version 6',0,1,1,NULL,5,5,NULL),(124,1,'Header Nav','header-nav',NULL,'2013-07-02 12:34:09','2013-07-02 12:34:09','Initial Version',0,0,1,NULL,5,1,NULL),(124,2,'Header Nav','header-nav',NULL,'2013-07-02 12:34:09','2013-07-02 12:35:19','New Version 2',0,0,1,1,5,1,NULL),(124,3,'Header Nav','header-nav',NULL,'2013-07-02 12:34:09','2013-07-08 21:52:05','New Version 3',0,0,1,1,5,1,NULL),(124,4,'Header Nav','header-nav',NULL,'2013-07-02 12:34:09','2013-07-08 23:05:04','New Version 4',1,0,1,1,5,1,NULL),(125,1,'Book Now!','book-now','','2013-07-02 12:35:00','2013-07-02 12:36:01','Initial Version',0,0,1,1,5,5,NULL),(125,2,'Book Now!','book-now','','2013-07-02 12:35:00','2013-07-08 21:33:23','Version 2',0,0,1,1,5,5,NULL),(125,3,'Book Now!','book-now','','2013-07-02 12:35:00','2013-07-08 22:28:06','Version 3',1,0,1,1,5,5,NULL),(126,1,'Location','location','','2013-07-02 12:36:00','2013-07-02 12:36:26','Initial Version',0,0,1,1,5,5,NULL),(126,2,'Location','location','','2013-07-02 12:36:00','2013-07-02 13:41:58','Version 2',0,0,1,1,5,5,NULL),(126,3,'Location','location','','2013-07-02 12:36:00','2013-07-08 21:33:49','Version 3',0,0,1,1,5,5,NULL),(126,4,'Location','location','','2013-07-02 12:36:00','2013-07-08 22:27:41','Version 4',0,0,1,1,5,5,NULL),(126,5,'Location','location','','2013-07-02 12:36:00','2013-07-08 23:03:32','Version 5',1,0,1,1,5,5,NULL),(127,1,'Gallery','gallery','','2013-07-02 12:37:00','2013-07-02 12:37:34','Version 1',0,0,1,1,5,5,NULL),(127,2,'Gallery','gallery','','2013-07-02 12:37:00','2013-07-04 20:52:34','New Version 2',0,0,1,1,5,5,NULL),(127,3,'Gallery','gallery','','2013-07-02 12:37:00','2013-07-08 21:34:26','Version 3',0,0,1,1,5,5,NULL),(127,4,'Gallery','gallery','','2013-07-02 12:37:00','2013-07-08 22:27:12','Version 4',1,0,1,1,5,5,NULL),(128,1,'Local Info','local-info','','2013-07-02 12:38:00','2013-07-02 12:38:15','Initial Version',0,0,1,1,5,5,NULL),(128,2,'Local Info','local-info','','2013-07-02 12:38:00','2013-07-02 13:48:35','Version 2',0,0,1,1,5,5,NULL),(128,3,'Local Info','local-info','','2013-07-02 12:38:00','2013-07-08 21:34:58','Version 3',0,0,1,1,5,5,NULL),(128,4,'Local Info','local-info','','2013-07-02 12:38:00','2013-07-08 22:26:33','Version 4',1,0,1,1,5,5,NULL),(129,1,'FAQ','faq','','2013-07-02 12:39:00','2013-07-02 12:39:04','Initial Version',0,0,1,1,5,5,NULL),(129,2,'FAQ','faq','','2013-07-02 12:39:00','2013-07-02 13:55:13','Version 2',0,0,1,1,5,5,NULL),(129,3,'FAQ','faq','','2013-07-02 12:39:00','2013-07-02 13:56:58','Version 3',0,0,1,1,5,5,NULL),(129,4,'FAQ','faq','','2013-07-02 12:39:00','2013-07-08 21:35:25','Version 4',0,0,1,1,5,5,NULL),(129,5,'FAQ','faq','','2013-07-02 12:39:00','2013-07-08 22:15:50','Version 5',1,0,1,1,5,5,NULL),(130,1,'Top Attractions','top-attractions','','2013-07-02 12:40:00','2013-07-02 12:40:28','Initial Version',0,0,1,1,5,5,NULL),(130,2,'Top Attractions','top-attractions','','2013-07-02 12:40:00','2013-07-08 21:36:23','Version 2',0,0,1,1,5,5,NULL),(130,3,'Top Attractions','top-attractions','','2013-07-02 12:40:00','2013-07-08 21:52:05','Version 3',0,0,1,1,5,5,NULL),(130,4,'Top Attractions','top-attractions','','2013-07-02 12:40:00','2013-07-08 22:10:11','Version 4',1,0,1,1,5,5,NULL),(131,1,'Designer Content','designer_content',NULL,'2013-07-02 14:08:07','2013-07-02 14:08:07','Initial Version',1,0,1,NULL,5,0,NULL),(132,1,'',NULL,NULL,'2013-07-02 16:37:17','2013-07-02 16:37:17','Initial Version',1,0,NULL,NULL,0,6,NULL),(133,1,'London Zoo','london-zoo','','2013-07-02 16:37:00','2013-07-02 16:37:49','Initial Version',1,0,1,1,5,6,NULL),(134,1,'London Eye','london-eye','','2013-07-02 16:38:00','2013-07-02 16:38:30','Initial Version',1,0,1,1,5,6,NULL),(135,1,'Tate Modern','tate-modern','','2013-07-02 16:38:00','2013-07-02 16:38:54','Initial Version',1,0,1,1,5,6,NULL),(136,1,'Hyde Park','hyde-park','','2013-07-02 17:46:00','2013-07-02 18:19:56','Initial Version',1,0,1,1,5,6,NULL),(137,1,'Oxford Circus','oxford-circus','','2013-07-02 18:20:00','2013-07-02 18:20:35','Initial Version',1,0,1,1,5,6,NULL),(138,1,'Soho','soho','','2013-07-02 18:20:00','2013-07-02 18:20:58','Initial Version',0,0,1,1,5,6,NULL),(138,2,'Soho','soho','','2013-07-02 18:20:00','2013-07-02 18:21:38','New Version 2',1,0,1,1,5,6,NULL),(139,1,'Notting Hill','notting-hill','','2013-07-02 18:21:00','2013-07-02 18:21:56','Initial Version',1,0,1,1,5,6,NULL),(140,1,'Edgware Road','edgware-road','','2013-07-02 18:22:00','2013-07-02 18:22:22','Initial Version',1,0,1,1,5,6,NULL),(141,1,'left hand side','left-hand-side',NULL,'2013-07-08 19:58:28','2013-07-08 19:58:28','Initial Version',0,0,1,NULL,5,1,NULL),(141,2,'left hand side','left-hand-side',NULL,'2013-07-08 19:58:28','2013-07-08 19:59:05','New Version 2',1,0,1,1,5,1,NULL),(141,3,'left hand side','left-hand-side',NULL,'2013-07-08 19:58:28','2013-07-08 20:02:05','New Version 3',0,1,1,NULL,5,1,NULL),(142,1,'right hand side','right-hand-side',NULL,'2013-07-08 21:20:44','2013-07-08 21:20:44','Initial Version',0,0,1,NULL,5,1,NULL),(142,2,'right hand side','right-hand-side',NULL,'2013-07-08 21:20:44','2013-07-08 21:23:27','New Version 2',1,0,1,1,5,1,NULL),(143,1,'Footer','footer',NULL,'2013-07-08 21:32:03','2013-07-08 21:32:03','Initial Version',0,0,1,NULL,5,1,NULL),(143,2,'Footer','footer',NULL,'2013-07-08 21:32:03','2013-07-08 21:32:36','New Version 2',0,0,1,1,5,1,NULL),(143,3,'Footer','footer',NULL,'2013-07-08 21:32:03','2013-07-08 22:45:26','New Version 3',1,0,1,1,5,1,NULL),(144,1,'',NULL,NULL,'2013-07-08 22:39:06','2013-07-08 22:39:06','Initial Version',1,0,NULL,NULL,0,7,NULL),(145,1,'Privacy Policy','privacy-policy','','2013-07-08 22:39:00','2013-07-08 22:40:16','Initial Version',0,0,1,1,5,7,NULL),(145,2,'Privacy Policy','privacy-policy','','2013-07-08 22:39:00','2013-07-08 22:47:14','New Version 2',0,0,1,1,5,7,NULL),(145,3,'Privacy Policy','privacy-policy','','2013-07-08 22:39:00','2013-07-08 22:48:16','Version 3',1,0,1,1,5,7,NULL),(146,1,'Terms & conditions','terms-conditions','Terms & conditions','2013-07-08 22:40:00','2013-07-08 22:40:52','Initial Version',0,0,1,1,5,7,NULL),(146,2,'Terms & conditions','terms-conditions','Terms & conditions','2013-07-08 22:40:00','2013-07-08 22:56:43','Version 2',1,0,1,1,5,7,NULL),(148,1,'Investor Relations','httpwwwatlashostelsplccom',NULL,'2013-07-08 22:43:14','2013-07-08 22:43:14','Initial Version',1,0,NULL,NULL,5,0,NULL),(149,1,'Jobs','jobs','','2013-07-08 22:43:00','2013-07-08 22:43:27','Initial Version',1,0,1,1,5,5,NULL),(150,1,'Contact Us','cont','','2013-07-08 22:59:00','2013-07-08 22:59:47','Initial Version',0,0,1,1,5,5,NULL),(150,2,'Contact Us','contact-us','','2013-07-08 22:59:00','2013-07-08 23:00:30','New Version 2',0,0,1,1,5,5,NULL),(150,3,'Contact Us','contact-us','','2013-07-08 22:59:00','2013-07-08 23:00:58','New Version 3',0,0,1,1,5,5,NULL),(150,4,'Contact Us','contact-us','','2013-07-08 22:59:00','2013-07-08 23:05:04','Version 4',1,0,1,1,5,5,NULL),(150,5,'Contact Us','contact-us','','2013-07-08 22:59:00','2013-07-08 23:07:21','New Version 5',0,1,1,NULL,5,5,NULL);
/*!40000 ALTER TABLE `CollectionVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (1,'2013-07-02 12:14:02','2013-07-08 22:45:34','home'),(2,'2013-07-02 12:14:20','2013-07-02 12:14:28','dashboard'),(3,'2013-07-02 12:14:28','2013-07-02 12:14:29','composer'),(4,'2013-07-02 12:14:29','2013-07-02 12:14:29','write'),(5,'2013-07-02 12:14:30','2013-07-02 12:14:30','drafts'),(6,'2013-07-02 12:14:30','2013-07-02 12:14:30','sitemap'),(7,'2013-07-02 12:14:31','2013-07-02 12:14:31','full'),(8,'2013-07-02 12:14:31','2013-07-02 12:14:32','explore'),(9,'2013-07-02 12:14:32','2013-07-02 12:14:32','search'),(10,'2013-07-02 12:14:32','2013-07-02 12:14:33','files'),(11,'2013-07-02 12:14:33','2013-07-02 12:14:33','search'),(12,'2013-07-02 12:14:33','2013-07-02 12:14:34','attributes'),(13,'2013-07-02 12:14:34','2013-07-02 12:14:35','sets'),(14,'2013-07-02 12:14:35','2013-07-02 12:14:35','add_set'),(15,'2013-07-02 12:14:35','2013-07-02 12:14:36','users'),(16,'2013-07-02 12:14:36','2013-07-02 12:14:37','search'),(17,'2013-07-02 12:14:37','2013-07-02 12:14:37','groups'),(18,'2013-07-02 12:14:38','2013-07-02 12:14:38','attributes'),(19,'2013-07-02 12:14:38','2013-07-02 12:14:39','add'),(20,'2013-07-02 12:14:39','2013-07-02 12:14:39','add_group'),(21,'2013-07-02 12:14:39','2013-07-02 12:14:40','group_sets'),(22,'2013-07-02 12:14:40','2013-07-02 12:14:41','reports'),(23,'2013-07-02 12:14:41','2013-07-02 12:14:41','statistics'),(24,'2013-07-02 12:14:41','2013-07-02 12:14:42','forms'),(25,'2013-07-02 12:14:42','2013-07-02 12:14:42','surveys'),(26,'2013-07-02 12:14:43','2013-07-02 12:14:43','logs'),(27,'2013-07-02 12:14:43','2013-07-02 12:14:44','pages'),(28,'2013-07-02 12:14:44','2013-07-02 12:14:44','themes'),(29,'2013-07-02 12:14:45','2013-07-02 12:14:45','add'),(30,'2013-07-02 12:14:45','2013-07-02 12:14:45','inspect'),(31,'2013-07-02 12:14:46','2013-07-02 12:14:46','customize'),(32,'2013-07-02 12:14:46','2013-07-02 12:14:47','types'),(33,'2013-07-02 12:14:47','2013-07-02 12:14:48','add'),(34,'2013-07-02 12:14:48','2013-07-02 12:14:48','attributes'),(35,'2013-07-02 12:14:48','2013-07-02 12:14:49','single'),(36,'2013-07-02 12:14:49','2013-07-02 12:14:50','workflow'),(37,'2013-07-02 12:14:50','2013-07-02 12:14:50','list'),(38,'2013-07-02 12:14:50','2013-07-02 12:14:51','me'),(39,'2013-07-02 12:14:51','2013-07-02 12:14:52','blocks'),(40,'2013-07-02 12:14:52','2013-07-02 12:14:52','stacks'),(41,'2013-07-02 12:14:52','2013-07-02 12:14:53','permissions'),(42,'2013-07-02 12:14:53','2013-07-02 12:14:55','list'),(43,'2013-07-02 12:14:55','2013-07-02 12:14:55','types'),(44,'2013-07-02 12:14:55','2013-07-02 12:14:56','extend'),(45,'2013-07-02 12:14:56','2013-07-02 12:14:57','news'),(46,'2013-07-02 12:14:57','2013-07-02 12:14:58','install'),(47,'2013-07-02 12:14:58','2013-07-02 12:14:59','update'),(48,'2013-07-02 12:14:59','2013-07-02 12:15:00','connect'),(49,'2013-07-02 12:15:00','2013-07-02 12:15:01','themes'),(50,'2013-07-02 12:15:01','2013-07-02 12:15:02','add-ons'),(51,'2013-07-02 12:15:02','2013-07-02 12:15:03','system'),(52,'2013-07-02 12:15:03','2013-07-02 12:15:04','basics'),(53,'2013-07-02 12:15:04','2013-07-02 12:15:05','site_name'),(54,'2013-07-02 12:15:05','2013-07-02 12:15:05','icons'),(55,'2013-07-02 12:15:05','2013-07-02 12:15:06','editor'),(56,'2013-07-02 12:15:07','2013-07-02 12:15:08','multilingual'),(57,'2013-07-02 12:15:08','2013-07-02 12:15:09','timezone'),(58,'2013-07-02 12:15:09','2013-07-02 12:15:10','interface'),(59,'2013-07-02 12:15:10','2013-07-02 12:15:10','seo'),(60,'2013-07-02 12:15:11','2013-07-02 12:15:11','urls'),(61,'2013-07-02 12:15:11','2013-07-02 12:15:11','bulk_seo_tool'),(62,'2013-07-02 12:15:12','2013-07-02 12:15:12','tracking_codes'),(63,'2013-07-02 12:15:12','2013-07-02 12:15:13','excluded'),(64,'2013-07-02 12:15:13','2013-07-02 12:15:14','statistics'),(65,'2013-07-02 12:15:14','2013-07-02 12:15:14','search_index'),(66,'2013-07-02 12:15:15','2013-07-02 12:15:15','optimization'),(67,'2013-07-02 12:15:15','2013-07-02 12:15:16','cache'),(68,'2013-07-02 12:15:16','2013-07-02 12:15:17','clear_cache'),(69,'2013-07-02 12:15:17','2013-07-02 12:15:17','jobs'),(70,'2013-07-02 12:15:18','2013-07-02 12:15:18','permissions'),(71,'2013-07-02 12:15:18','2013-07-02 12:15:18','site'),(72,'2013-07-02 12:15:19','2013-07-02 12:15:19','files'),(73,'2013-07-02 12:15:19','2013-07-02 12:15:20','file_types'),(74,'2013-07-02 12:15:20','2013-07-02 12:15:21','tasks'),(75,'2013-07-02 12:15:21','2013-07-02 12:15:22','users'),(76,'2013-07-02 12:15:22','2013-07-02 12:15:22','advanced'),(77,'2013-07-02 12:15:22','2013-07-02 12:15:23','ip_blacklist'),(78,'2013-07-02 12:15:23','2013-07-02 12:15:24','captcha'),(79,'2013-07-02 12:15:24','2013-07-02 12:15:25','antispam'),(80,'2013-07-02 12:15:25','2013-07-02 12:15:26','maintenance_mode'),(81,'2013-07-02 12:15:26','2013-07-02 12:15:26','registration'),(82,'2013-07-02 12:15:27','2013-07-02 12:15:27','postlogin'),(83,'2013-07-02 12:15:27','2013-07-02 12:15:28','profiles'),(84,'2013-07-02 12:15:28','2013-07-02 12:15:28','public_registration'),(85,'2013-07-02 12:15:28','2013-07-02 12:15:29','mail'),(86,'2013-07-02 12:15:29','2013-07-02 12:15:30','method'),(87,'2013-07-02 12:15:30','2013-07-02 12:15:30','importers'),(88,'2013-07-02 12:15:30','2013-07-02 12:15:32','attributes'),(89,'2013-07-02 12:15:32','2013-07-02 12:15:32','sets'),(90,'2013-07-02 12:15:32','2013-07-02 12:15:33','types'),(91,'2013-07-02 12:15:33','2013-07-02 12:15:33','environment'),(92,'2013-07-02 12:15:34','2013-07-02 12:15:34','info'),(93,'2013-07-02 12:15:34','2013-07-02 12:15:35','debug'),(94,'2013-07-02 12:15:35','2013-07-02 12:15:35','logging'),(95,'2013-07-02 12:15:35','2013-07-02 12:15:36','file_storage_locations'),(96,'2013-07-02 12:15:36','2013-07-02 12:15:37','proxy'),(97,'2013-07-02 12:15:37','2013-07-02 12:15:37','backup_restore'),(98,'2013-07-02 12:15:38','2013-07-02 12:15:38','backup'),(99,'2013-07-02 12:15:38','2013-07-02 12:15:39','update'),(100,'2013-07-02 12:15:39','2013-07-02 12:15:39','database'),(101,'2013-07-02 12:15:39','2013-07-02 12:15:40','composer'),(102,'2013-07-02 12:15:40','2013-07-02 12:15:40',NULL),(103,'2013-07-02 12:15:40','2013-07-02 12:15:40',NULL),(104,'2013-07-02 12:15:40','2013-07-02 12:15:40',NULL),(105,'2013-07-02 12:15:40','2013-07-02 12:15:41','home'),(106,'2013-07-02 12:15:41','2013-07-02 12:15:41','welcome'),(107,'2013-07-02 12:16:24','2013-07-02 12:16:25','!drafts'),(108,'2013-07-02 12:16:25','2013-07-02 12:16:25','!trash'),(109,'2013-07-02 12:16:26','2013-07-02 12:16:27','!stacks'),(110,'2013-07-02 12:16:27','2013-07-02 12:16:28','login'),(111,'2013-07-02 12:16:28','2013-07-02 12:16:28','register'),(112,'2013-07-02 12:16:29','2013-07-02 12:16:29','profile'),(113,'2013-07-02 12:16:29','2013-07-02 12:16:29','edit'),(114,'2013-07-02 12:16:30','2013-07-02 12:16:30','avatar'),(115,'2013-07-02 12:16:30','2013-07-02 12:16:31','messages'),(116,'2013-07-02 12:16:31','2013-07-02 12:16:31','friends'),(117,'2013-07-02 12:16:31','2013-07-02 12:16:32','page_not_found'),(118,'2013-07-02 12:16:32','2013-07-02 12:16:32','page_forbidden'),(119,'2013-07-02 12:16:33','2013-07-02 12:16:33','download_file'),(120,'2013-07-02 12:16:33','2013-07-02 12:16:34','members'),(121,'2013-07-02 12:16:35','2013-07-02 12:16:35',NULL),(122,'2013-07-02 12:28:00','2013-07-02 12:28:00',NULL),(123,'2013-07-02 12:34:01','2013-07-08 21:32:57','facilities'),(124,'2013-07-02 12:34:09','2013-07-08 23:06:01','header-nav'),(125,'2013-07-02 12:36:01','2013-07-08 22:28:12','book-now'),(126,'2013-07-02 12:36:26','2013-07-08 23:03:46','location'),(127,'2013-07-02 12:37:34','2013-07-08 22:27:18','gallery'),(128,'2013-07-02 12:38:15','2013-07-08 22:26:44','local-info'),(129,'2013-07-02 12:39:04','2013-07-08 22:15:57','faq'),(130,'2013-07-02 12:40:28','2013-07-08 22:10:17','top-attractions'),(131,'2013-07-02 14:08:07','2013-07-02 14:08:07','designer_content'),(132,'2013-07-02 16:37:17','2013-07-02 16:37:17',NULL),(133,'2013-07-02 16:37:49','2013-07-02 17:45:55','london-zoo'),(134,'2013-07-02 16:38:30','2013-07-02 17:46:01','london-eye'),(135,'2013-07-02 16:38:54','2013-07-02 17:46:06','tate-modern'),(136,'2013-07-02 18:19:56','2013-07-02 18:19:57','hyde-park'),(137,'2013-07-02 18:20:35','2013-07-02 18:20:37','oxford-circus'),(138,'2013-07-02 18:20:58','2013-07-02 18:21:39','soho'),(139,'2013-07-02 18:21:56','2013-07-02 18:21:58','notting-hill'),(140,'2013-07-02 18:22:22','2013-07-02 18:22:23','edgware-road'),(141,'2013-07-08 19:58:28','2013-07-08 20:00:34','left-hand-side'),(142,'2013-07-08 21:20:44','2013-07-08 21:23:48','right-hand-side'),(143,'2013-07-08 21:32:03','2013-07-08 22:45:34','footer'),(144,'2013-07-08 22:39:06','2013-07-08 22:39:06',NULL),(145,'2013-07-08 22:40:16','2013-07-08 22:55:55','privacy-policy'),(146,'2013-07-08 22:40:52','2013-07-08 22:58:28','terms-conditions'),(148,'2013-07-08 22:43:14','2013-07-08 22:43:14','httpwwwatlashostelsplccom'),(149,'2013-07-08 22:43:27','2013-07-08 22:43:27','jobs'),(150,'2013-07-08 22:59:47','2013-07-08 23:06:00','cont');
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerContentLayout`
--

DROP TABLE IF EXISTS `ComposerContentLayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerContentLayout`
--

LOCK TABLES `ComposerContentLayout` WRITE;
/*!40000 ALTER TABLE `ComposerContentLayout` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerContentLayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerDrafts`
--

DROP TABLE IF EXISTS `ComposerDrafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerDrafts`
--

LOCK TABLES `ComposerDrafts` WRITE;
/*!40000 ALTER TABLE `ComposerDrafts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerDrafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComposerTypes`
--

DROP TABLE IF EXISTS `ComposerTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComposerTypes`
--

LOCK TABLES `ComposerTypes` WRITE;
/*!40000 ALTER TABLE `ComposerTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ComposerTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Config`
--

DROP TABLE IF EXISTS `Config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Config`
--

LOCK TABLES `Config` WRITE;
/*!40000 ALTER TABLE `Config` DISABLE KEYS */;
INSERT INTO `Config` VALUES ('ACCESS_ENTITY_UPDATED','2013-07-02 13:26:13','1372771573',0,0),('ANTISPAM_LOG_SPAM','2013-07-02 11:16:34','1',0,0),('APP_VERSION_LATEST','2013-07-07 14:43:02','5.6.1.2',0,0),('DO_PAGE_REINDEX_CHECK','2013-07-08 22:06:02','0',0,0),('ENABLE_BLOCK_CACHE','2013-07-08 21:52:50','0',0,0),('ENABLE_LOG_EMAILS','2013-07-02 11:16:34','1',0,0),('ENABLE_LOG_ERRORS','2013-07-02 11:16:34','1',0,0),('ENABLE_MARKETPLACE_SUPPORT','2013-07-02 11:16:34','1',0,0),('ENABLE_OVERRIDE_CACHE','2013-07-08 21:52:50','0',0,0),('FULL_PAGE_CACHE_GLOBAL','2013-07-08 21:52:50','0',0,0),('FULL_PAGE_CACHE_LIFETIME','2013-07-08 21:52:50','default',0,0),('FULL_PAGE_CACHE_LIFETIME_CUSTOM','2013-07-08 21:52:50',NULL,0,0),('NEWSFLOW_LAST_VIEWED','2013-07-08 18:45:33','1373309133',1,0),('SEEN_INTRODUCTION','2013-07-02 11:27:10','1',0,0),('SITE','2013-07-02 11:16:37','Atlas Hostels',0,0),('SITE_APP_VERSION','2013-07-02 11:16:38','5.6.1.2',0,0),('SITE_DEBUG_LEVEL','2013-07-02 11:16:34','1',0,0),('SITE_INSTALLED_APP_VERSION','2013-07-02 11:16:38','5.6.1.2',0,0);
/*!40000 ALTER TABLE `Config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStylePresets`
--

DROP TABLE IF EXISTS `CustomStylePresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStylePresets`
--

LOCK TABLES `CustomStylePresets` WRITE;
/*!40000 ALTER TABLE `CustomStylePresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStylePresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomStyleRules`
--

DROP TABLE IF EXISTS `CustomStyleRules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomStyleRules`
--

LOCK TABLES `CustomStyleRules` WRITE;
/*!40000 ALTER TABLE `CustomStyleRules` DISABLE KEYS */;
/*!40000 ALTER TABLE `CustomStyleRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DownloadStatistics`
--

DROP TABLE IF EXISTS `DownloadStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DownloadStatistics`
--

LOCK TABLES `DownloadStatistics` WRITE;
/*!40000 ALTER TABLE `DownloadStatistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `DownloadStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileAttributeValues`
--

DROP TABLE IF EXISTS `FileAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileAttributeValues`
--

LOCK TABLES `FileAttributeValues` WRITE;
/*!40000 ALTER TABLE `FileAttributeValues` DISABLE KEYS */;
INSERT INTO `FileAttributeValues` VALUES (1,1,12,121),(1,1,13,122),(1,2,12,129),(1,2,13,130),(2,1,12,123),(2,1,13,124),(3,1,12,131),(3,1,13,132);
/*!40000 ALTER TABLE `FileAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionAssignments`
--

DROP TABLE IF EXISTS `FilePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionAssignments`
--

LOCK TABLES `FilePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FilePermissionAssignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissionFileTypes`
--

DROP TABLE IF EXISTS `FilePermissionFileTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissionFileTypes`
--

LOCK TABLES `FilePermissionFileTypes` WRITE;
/*!40000 ALTER TABLE `FilePermissionFileTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissionFileTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilePermissions`
--

DROP TABLE IF EXISTS `FilePermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FilePermissions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) NOT NULL DEFAULT '0',
  `canWrite` int(4) NOT NULL DEFAULT '0',
  `canAdmin` int(4) NOT NULL DEFAULT '0',
  `canSearch` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilePermissions`
--

LOCK TABLES `FilePermissions` WRITE;
/*!40000 ALTER TABLE `FilePermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `FilePermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSearchIndexAttributes`
--

DROP TABLE IF EXISTS `FileSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

LOCK TABLES `FileSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `FileSearchIndexAttributes` DISABLE KEYS */;
INSERT INTO `FileSearchIndexAttributes` VALUES (1,570.0000,360.0000),(2,973.0000,615.0000),(3,570.0000,360.0000);
/*!40000 ALTER TABLE `FileSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetFiles`
--

DROP TABLE IF EXISTS `FileSetFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetFiles`
--

LOCK TABLES `FileSetFiles` WRITE;
/*!40000 ALTER TABLE `FileSetFiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetFiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionAssignments`
--

DROP TABLE IF EXISTS `FileSetPermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionAssignments`
--

LOCK TABLES `FileSetPermissionAssignments` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionAssignments` DISABLE KEYS */;
INSERT INTO `FileSetPermissionAssignments` VALUES (0,36,34),(0,37,35),(0,38,36),(0,39,37),(0,40,38),(0,41,39),(0,42,41),(0,43,40),(0,44,42);
/*!40000 ALTER TABLE `FileSetPermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessList`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessList`
--

LOCK TABLES `FileSetPermissionFileTypeAccessList` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetPermissionFileTypeAccessListCustom`
--

DROP TABLE IF EXISTS `FileSetPermissionFileTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetPermissionFileTypeAccessListCustom`
--

LOCK TABLES `FileSetPermissionFileTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetPermissionFileTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSetSavedSearches`
--

DROP TABLE IF EXISTS `FileSetSavedSearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSetSavedSearches`
--

LOCK TABLES `FileSetSavedSearches` WRITE;
/*!40000 ALTER TABLE `FileSetSavedSearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSetSavedSearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileSets`
--

DROP TABLE IF EXISTS `FileSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileSets`
--

LOCK TABLES `FileSets` WRITE;
/*!40000 ALTER TABLE `FileSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileStorageLocations`
--

DROP TABLE IF EXISTS `FileStorageLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileStorageLocations`
--

LOCK TABLES `FileStorageLocations` WRITE;
/*!40000 ALTER TABLE `FileStorageLocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `FileStorageLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersionLog`
--

DROP TABLE IF EXISTS `FileVersionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersionLog`
--

LOCK TABLES `FileVersionLog` WRITE;
/*!40000 ALTER TABLE `FileVersionLog` DISABLE KEYS */;
INSERT INTO `FileVersionLog` VALUES (1,1,1,5,12),(2,1,1,5,13),(3,2,1,5,12),(4,2,1,5,13),(5,3,1,5,12),(6,3,1,5,13),(7,1,2,1,0),(8,1,2,5,12),(9,1,2,5,13),(10,1,2,5,12),(11,1,2,5,13),(12,1,2,5,12),(13,1,2,5,13),(14,1,2,5,12),(15,1,2,5,13),(16,3,1,5,12),(17,3,1,5,13);
/*!40000 ALTER TABLE `FileVersionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FileVersions`
--

DROP TABLE IF EXISTS `FileVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FileVersions`
--

LOCK TABLES `FileVersions` WRITE;
/*!40000 ALTER TABLE `FileVersions` DISABLE KEYS */;
INSERT INTO `FileVersions` VALUES (1,1,'1.jpg','801372771573',1,309058,'1.jpg','','',0,'2013-07-02 14:26:13',1,1,'2013-07-02 14:26:13',1,1,0,'jpg',1),(2,1,'2.jpg','621372772161',1,281447,'2.jpg','','',1,'2013-07-02 14:36:01',1,1,'2013-07-02 14:36:01',1,1,0,'jpg',1),(3,1,'3.jpg','441372772178',1,338906,'3.jpg','','',1,'2013-07-02 14:36:19',1,1,'2013-07-02 14:36:19',1,1,0,'jpg',1),(1,2,'1.jpg','591372772322',1,42279,'1.jpg','','',1,'2013-07-02 14:38:42',1,1,'2013-07-02 14:26:13',1,1,0,'jpg',1);
/*!40000 ALTER TABLE `FileVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Files`
--

LOCK TABLES `Files` WRITE;
/*!40000 ALTER TABLE `Files` DISABLE KEYS */;
INSERT INTO `Files` VALUES (1,'2013-07-02 14:26:13',1,0,1,0,NULL),(2,'2013-07-02 14:36:01',1,0,1,0,NULL),(3,'2013-07-02 14:36:18',1,0,0,0,NULL);
/*!40000 ALTER TABLE `Files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSetGroups`
--

DROP TABLE IF EXISTS `GroupSetGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSetGroups`
--

LOCK TABLES `GroupSetGroups` WRITE;
/*!40000 ALTER TABLE `GroupSetGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSetGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupSets`
--

DROP TABLE IF EXISTS `GroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupSets`
--

LOCK TABLES `GroupSets` WRITE;
/*!40000 ALTER TABLE `GroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
INSERT INTO `Groups` VALUES (1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL),(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL),(3,'Administrators','',0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Index Search Engine','Index the site to allow searching to work quickly and accurately.','2013-07-02 12:14:20',NULL,0,NULL,0,'ENABLED','index_search',1),(2,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2013-07-02 12:14:20',NULL,0,NULL,0,'ENABLED','generate_sitemap',0),(3,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2013-07-02 12:14:20',NULL,0,NULL,0,'ENABLED','process_email',0),(4,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2013-07-02 12:14:20',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0);
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobsLog`
--

DROP TABLE IF EXISTS `JobsLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobsLog`
--

LOCK TABLES `JobsLog` WRITE;
/*!40000 ALTER TABLE `JobsLog` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobsLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPresets`
--

DROP TABLE IF EXISTS `LayoutPresets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPresets`
--

LOCK TABLES `LayoutPresets` WRITE;
/*!40000 ALTER TABLE `LayoutPresets` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutPresets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layouts`
--

DROP TABLE IF EXISTS `Layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layouts`
--

LOCK TABLES `Layouts` WRITE;
/*!40000 ALTER TABLE `Layouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Logs`
--

DROP TABLE IF EXISTS `Logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Logs`
--

LOCK TABLES `Logs` WRITE;
/*!40000 ALTER TABLE `Logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailImporters`
--

DROP TABLE IF EXISTS `MailImporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailImporters`
--

LOCK TABLES `MailImporters` WRITE;
/*!40000 ALTER TABLE `MailImporters` DISABLE KEYS */;
INSERT INTO `MailImporters` VALUES (1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');
/*!40000 ALTER TABLE `MailImporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MailValidationHashes`
--

DROP TABLE IF EXISTS `MailValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MailValidationHashes`
--

LOCK TABLES `MailValidationHashes` WRITE;
/*!40000 ALTER TABLE `MailValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `MailValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Packages`
--

DROP TABLE IF EXISTS `Packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Packages`
--

LOCK TABLES `Packages` WRITE;
/*!40000 ALTER TABLE `Packages` DISABLE KEYS */;
INSERT INTO `Packages` VALUES (1,'Designer Content','designer_content','Create custom content blocks via the dashboard.','2013-07-02 14:08:07',1,'3.1.1',NULL),(2,'Galleria image gallery','asmiller_gallery','Easily create amazing image galleries for showcasing your work, presenting your products, or sharing your photos.','2013-07-04 20:51:18',1,'2.0',NULL),(3,'Breadcrumbs','swp_breadcrumbs','Allows to add breadcrumbs navigation as a block.<br />By <a href=\"http://www.smartwebprojects.net/\">www.smartwebprojects.net</a>','2013-07-08 21:49:20',1,'2.0',NULL);
/*!40000 ALTER TABLE `Packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePaths`
--

DROP TABLE IF EXISTS `PagePaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePaths`
--

LOCK TABLES `PagePaths` WRITE;
/*!40000 ALTER TABLE `PagePaths` DISABLE KEYS */;
INSERT INTO `PagePaths` VALUES (1,2,'/dashboard','1'),(2,3,'/dashboard/composer','1'),(3,4,'/dashboard/composer/write','1'),(4,5,'/dashboard/composer/drafts','1'),(5,6,'/dashboard/sitemap','1'),(6,7,'/dashboard/sitemap/full','1'),(7,8,'/dashboard/sitemap/explore','1'),(8,9,'/dashboard/sitemap/search','1'),(9,10,'/dashboard/files','1'),(10,11,'/dashboard/files/search','1'),(11,12,'/dashboard/files/attributes','1'),(12,13,'/dashboard/files/sets','1'),(13,14,'/dashboard/files/add_set','1'),(14,15,'/dashboard/users','1'),(15,16,'/dashboard/users/search','1'),(16,17,'/dashboard/users/groups','1'),(17,18,'/dashboard/users/attributes','1'),(18,19,'/dashboard/users/add','1'),(19,20,'/dashboard/users/add_group','1'),(20,21,'/dashboard/users/group_sets','1'),(21,22,'/dashboard/reports','1'),(22,23,'/dashboard/reports/statistics','1'),(23,24,'/dashboard/reports/forms','1'),(24,25,'/dashboard/reports/surveys','1'),(25,26,'/dashboard/reports/logs','1'),(26,27,'/dashboard/pages','1'),(27,28,'/dashboard/pages/themes','1'),(28,29,'/dashboard/pages/themes/add','1'),(29,30,'/dashboard/pages/themes/inspect','1'),(30,31,'/dashboard/pages/themes/customize','1'),(31,32,'/dashboard/pages/types','1'),(32,33,'/dashboard/pages/types/add','1'),(33,34,'/dashboard/pages/attributes','1'),(34,35,'/dashboard/pages/single','1'),(35,36,'/dashboard/workflow','1'),(36,37,'/dashboard/workflow/list','1'),(37,38,'/dashboard/workflow/me','1'),(38,39,'/dashboard/blocks','1'),(39,40,'/dashboard/blocks/stacks','1'),(40,41,'/dashboard/blocks/permissions','1'),(41,42,'/dashboard/blocks/stacks/list','1'),(42,43,'/dashboard/blocks/types','1'),(43,44,'/dashboard/extend','1'),(44,45,'/dashboard/news','1'),(45,46,'/dashboard/extend/install','1'),(46,47,'/dashboard/extend/update','1'),(47,48,'/dashboard/extend/connect','1'),(48,49,'/dashboard/extend/themes','1'),(49,50,'/dashboard/extend/add-ons','1'),(50,51,'/dashboard/system','1'),(51,52,'/dashboard/system/basics','1'),(52,53,'/dashboard/system/basics/site_name','1'),(53,54,'/dashboard/system/basics/icons','1'),(54,55,'/dashboard/system/basics/editor','1'),(55,56,'/dashboard/system/basics/multilingual','1'),(56,57,'/dashboard/system/basics/timezone','1'),(57,58,'/dashboard/system/basics/interface','1'),(58,59,'/dashboard/system/seo','1'),(59,60,'/dashboard/system/seo/urls','1'),(60,61,'/dashboard/system/seo/bulk_seo_tool','1'),(61,62,'/dashboard/system/seo/tracking_codes','1'),(62,63,'/dashboard/system/seo/excluded','1'),(63,64,'/dashboard/system/seo/statistics','1'),(64,65,'/dashboard/system/seo/search_index','1'),(65,66,'/dashboard/system/optimization','1'),(66,67,'/dashboard/system/optimization/cache','1'),(67,68,'/dashboard/system/optimization/clear_cache','1'),(68,69,'/dashboard/system/optimization/jobs','1'),(69,70,'/dashboard/system/permissions','1'),(70,71,'/dashboard/system/permissions/site','1'),(71,72,'/dashboard/system/permissions/files','1'),(72,73,'/dashboard/system/permissions/file_types','1'),(73,74,'/dashboard/system/permissions/tasks','1'),(74,75,'/dashboard/system/permissions/users','1'),(75,76,'/dashboard/system/permissions/advanced','1'),(76,77,'/dashboard/system/permissions/ip_blacklist','1'),(77,78,'/dashboard/system/permissions/captcha','1'),(78,79,'/dashboard/system/permissions/antispam','1'),(79,80,'/dashboard/system/permissions/maintenance_mode','1'),(80,81,'/dashboard/system/registration','1'),(81,82,'/dashboard/system/registration/postlogin','1'),(82,83,'/dashboard/system/registration/profiles','1'),(83,84,'/dashboard/system/registration/public_registration','1'),(84,85,'/dashboard/system/mail','1'),(85,86,'/dashboard/system/mail/method','1'),(86,87,'/dashboard/system/mail/importers','1'),(87,88,'/dashboard/system/attributes','1'),(88,89,'/dashboard/system/attributes/sets','1'),(89,90,'/dashboard/system/attributes/types','1'),(90,91,'/dashboard/system/environment','1'),(91,92,'/dashboard/system/environment/info','1'),(92,93,'/dashboard/system/environment/debug','1'),(93,94,'/dashboard/system/environment/logging','1'),(94,95,'/dashboard/system/environment/file_storage_locations','1'),(95,96,'/dashboard/system/environment/proxy','1'),(96,97,'/dashboard/system/backup_restore','1'),(97,98,'/dashboard/system/backup_restore/backup','1'),(98,99,'/dashboard/system/backup_restore/update','1'),(99,100,'/dashboard/system/backup_restore/database','1'),(100,101,'/dashboard/pages/types/composer','1'),(101,105,'/dashboard/home','1'),(102,106,'/dashboard/welcome','1'),(103,107,'/!drafts','1'),(104,108,'/!trash','1'),(105,109,'/!stacks','1'),(106,110,'/login','1'),(107,111,'/register','1'),(108,112,'/profile','1'),(109,113,'/profile/edit','1'),(110,114,'/profile/avatar','1'),(111,115,'/profile/messages','1'),(112,116,'/profile/friends','1'),(113,117,'/page_not_found','1'),(114,118,'/page_forbidden','1'),(115,119,'/download_file','1'),(116,120,'/members','1'),(130,131,'/dashboard/blocks/designer_content','1'),(134,133,'/!trash/london-zoo','1'),(135,134,'/!trash/london-eye','1'),(136,135,'/!trash/tate-modern','1'),(146,141,'/!stacks/left-hand-side','1'),(148,142,'/!stacks/right-hand-side','1'),(151,123,'/facilities','1'),(172,130,'/top-attractions','1'),(173,136,'/top-attractions/hyde-park','1'),(174,137,'/top-attractions/oxford-circus','1'),(175,138,'/top-attractions/soho','1'),(176,139,'/top-attractions/notting-hill','1'),(177,140,'/top-attractions/edgware-road','1'),(178,129,'/faq','1'),(179,128,'/local-info','1'),(180,127,'/gallery','1'),(182,125,'/book-now','1'),(185,149,'/faq/jobs','1'),(186,143,'/!stacks/footer','1'),(188,145,'/faq/privacy-policy','1'),(189,146,'/faq/terms-conditions','1'),(191,150,'/contact-us','0'),(194,126,'/location','1'),(195,150,'/faq/contact-us','1'),(196,124,'/!stacks/header-nav','1');
/*!40000 ALTER TABLE `PagePaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionAssignments`
--

DROP TABLE IF EXISTS `PagePermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionAssignments`
--

LOCK TABLES `PagePermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PagePermissionAssignments` DISABLE KEYS */;
INSERT INTO `PagePermissionAssignments` VALUES (1,1,45),(1,2,46),(1,3,47),(1,4,48),(1,5,49),(1,6,50),(1,7,51),(1,8,52),(1,9,53),(1,10,54),(1,11,55),(1,12,56),(1,13,57),(1,14,58),(1,15,59),(2,1,18),(2,2,19),(2,3,24),(2,4,20),(2,5,21),(2,6,26),(2,7,28),(2,8,30),(2,9,27),(2,10,31),(2,11,32),(2,12,22),(2,13,25),(2,14,23),(2,15,29),(42,1,33),(110,1,34),(111,1,35);
/*!40000 ALTER TABLE `PagePermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessList`
--

LOCK TABLES `PagePermissionPageTypeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPageTypeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPageTypeAccessListCustom`
--

LOCK TABLES `PagePermissionPageTypeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPageTypeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

LOCK TABLES `PagePermissionPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionPropertyAttributeAccessListCustom`
--

LOCK TABLES `PagePermissionPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessList`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessList`
--

LOCK TABLES `PagePermissionThemeAccessList` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

DROP TABLE IF EXISTS `PagePermissionThemeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePermissionThemeAccessListCustom`
--

LOCK TABLES `PagePermissionThemeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `PagePermissionThemeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageSearchIndex`
--

DROP TABLE IF EXISTS `PageSearchIndex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageSearchIndex`
--

LOCK TABLES `PageSearchIndex` WRITE;
/*!40000 ALTER TABLE `PageSearchIndex` DISABLE KEYS */;
INSERT INTO `PageSearchIndex` VALUES (3,'','Composer','Write for your site.','/dashboard/composer','2013-07-02 12:14:28','2013-07-02 12:15:42',NULL,0),(4,'','Write','','/dashboard/composer/write','2013-07-02 12:14:29','2013-07-02 12:15:43',NULL,0),(5,'','Drafts','','/dashboard/composer/drafts','2013-07-02 12:14:30','2013-07-02 12:15:43',NULL,0),(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2013-07-02 12:14:30','2013-07-02 12:15:44',NULL,0),(7,'','Full Sitemap','','/dashboard/sitemap/full','2013-07-02 12:14:31','2013-07-02 12:15:44',NULL,0),(8,'','Flat View','','/dashboard/sitemap/explore','2013-07-02 12:14:31','2013-07-02 12:15:45',NULL,0),(9,'','Page Search','','/dashboard/sitemap/search','2013-07-02 12:14:32','2013-07-02 12:15:45',NULL,0),(11,'','File Manager','','/dashboard/files/search','2013-07-02 12:14:33','2013-07-02 12:15:46',NULL,0),(12,'','Attributes','','/dashboard/files/attributes','2013-07-02 12:14:33','2013-07-02 12:15:46',NULL,0),(13,'','File Sets','','/dashboard/files/sets','2013-07-02 12:14:34','2013-07-02 12:15:47',NULL,0),(14,'','Add File Set','','/dashboard/files/add_set','2013-07-02 12:14:35','2013-07-02 12:15:47',NULL,0),(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2013-07-02 12:14:35','2013-07-02 12:15:48',NULL,0),(16,'','Search Users','','/dashboard/users/search','2013-07-02 12:14:36','2013-07-02 12:15:48',NULL,0),(17,'','User Groups','','/dashboard/users/groups','2013-07-02 12:14:37','2013-07-02 12:15:48',NULL,0),(18,'','Attributes','','/dashboard/users/attributes','2013-07-02 12:14:38','2013-07-02 12:15:49',NULL,0),(19,'','Add User','','/dashboard/users/add','2013-07-02 12:14:38','2013-07-02 12:15:50',NULL,0),(20,'','Add Group','','/dashboard/users/add_group','2013-07-02 12:14:39','2013-07-02 12:15:50',NULL,0),(21,'','Group Sets','','/dashboard/users/group_sets','2013-07-02 12:14:39','2013-07-02 12:15:51',NULL,0),(22,'','Reports','Get data from forms and logs.','/dashboard/reports','2013-07-02 12:14:40','2013-07-02 12:15:51',NULL,0),(23,'','Statistics','View your site activity.','/dashboard/reports/statistics','2013-07-02 12:14:41','2013-07-02 12:15:52',NULL,0),(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2013-07-02 12:14:41','2013-07-02 12:15:52',NULL,0),(25,'','Surveys','','/dashboard/reports/surveys','2013-07-02 12:14:42','2013-07-02 12:15:53',NULL,0),(26,'','Logs','','/dashboard/reports/logs','2013-07-02 12:14:43','2013-07-02 12:15:54',NULL,0),(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2013-07-02 12:14:44','2013-07-02 12:15:54',NULL,0),(29,'','Add','','/dashboard/pages/themes/add','2013-07-02 12:14:45','2013-07-02 12:15:55',NULL,0),(30,'','Inspect','','/dashboard/pages/themes/inspect','2013-07-02 12:14:45','2013-07-02 12:15:55',NULL,0),(31,'','Customize','','/dashboard/pages/themes/customize','2013-07-02 12:14:46','2013-07-02 12:15:55',NULL,0),(32,'','Page Types','What goes in your site.','/dashboard/pages/types','2013-07-02 12:14:46','2013-07-02 12:15:56',NULL,0),(34,'','Attributes','','/dashboard/pages/attributes','2013-07-02 12:14:48','2013-07-02 12:15:56',NULL,0),(35,'','Single Pages','','/dashboard/pages/single','2013-07-02 12:14:48','2013-07-02 12:15:57',NULL,0),(36,'','Workflow','','/dashboard/workflow','2013-07-02 12:14:49','2013-07-02 12:15:57',NULL,0),(37,'','Workflow List','','/dashboard/workflow/list','2013-07-02 12:14:50','2013-07-02 12:15:58',NULL,0),(38,'','Waiting for Me','','/dashboard/workflow/me','2013-07-02 12:14:50','2013-07-02 12:15:58',NULL,0),(40,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2013-07-02 12:14:52','2013-07-02 12:15:58',NULL,0),(41,'','Block & Stack Permissions','Control who can add blocks and stacks on your site.','/dashboard/blocks/permissions','2013-07-02 12:14:52','2013-07-02 12:15:59',NULL,0),(42,'','Stack List','','/dashboard/blocks/stacks/list','2013-07-02 12:14:53','2013-07-02 12:15:59',NULL,0),(43,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2013-07-02 12:14:55','2013-07-02 12:16:00',NULL,0),(44,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2013-07-02 12:14:55','2013-07-02 12:16:00',NULL,0),(45,'','Dashboard','','/dashboard/news','2013-07-02 12:14:56','2013-07-02 12:16:01',NULL,0),(46,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2013-07-02 12:14:57','2013-07-02 12:16:01',NULL,0),(47,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2013-07-02 12:14:58','2013-07-02 12:16:01',NULL,0),(48,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2013-07-02 12:14:59','2013-07-02 12:16:01',NULL,0),(49,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2013-07-02 12:15:00','2013-07-02 12:16:02',NULL,0),(50,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2013-07-02 12:15:01','2013-07-02 12:16:02',NULL,0),(51,'','System & Settings','Secure and setup your site.','/dashboard/system','2013-07-02 12:15:02','2013-07-02 12:16:02',NULL,0),(53,'','Site Name','','/dashboard/system/basics/site_name','2013-07-02 12:15:04','2013-07-02 12:16:02',NULL,0),(54,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2013-07-02 12:15:05','2013-07-02 12:16:03',NULL,0),(55,'','Rich Text Editor','','/dashboard/system/basics/editor','2013-07-02 12:15:05','2013-07-02 12:16:03',NULL,0),(56,'','Languages','','/dashboard/system/basics/multilingual','2013-07-02 12:15:07','2013-07-02 12:16:04',NULL,0),(57,'','Time Zone','','/dashboard/system/basics/timezone','2013-07-02 12:15:08','2013-07-02 12:16:04',NULL,0),(58,'','Interface Preferences','','/dashboard/system/basics/interface','2013-07-02 12:15:09','2013-07-02 12:16:05',NULL,0),(60,'','Pretty URLs','','/dashboard/system/seo/urls','2013-07-02 12:15:11','2013-07-02 12:16:05',NULL,0),(61,'','Bulk SEO Updater','','/dashboard/system/seo/bulk_seo_tool','2013-07-02 12:15:11','2013-07-02 12:16:05',NULL,0),(62,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2013-07-02 12:15:12','2013-07-02 12:16:06',NULL,0),(63,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2013-07-02 12:15:12','2013-07-02 12:16:06',NULL,0),(64,'','Statistics','','/dashboard/system/seo/statistics','2013-07-02 12:15:13','2013-07-02 12:16:06',NULL,0),(65,'','Search Index','','/dashboard/system/seo/search_index','2013-07-02 12:15:14','2013-07-02 12:16:06',NULL,0),(67,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2013-07-02 12:15:15','2013-07-02 12:16:07',NULL,0),(68,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2013-07-02 12:15:16','2013-07-02 12:16:07',NULL,0),(69,'','Automated Jobs','','/dashboard/system/optimization/jobs','2013-07-02 12:15:17','2013-07-02 12:16:07',NULL,0),(71,'','Site Access','','/dashboard/system/permissions/site','2013-07-02 12:15:18','2013-07-02 12:16:08',NULL,0),(72,'','File Manager Permissions','','/dashboard/system/permissions/files','2013-07-02 12:15:19','2013-07-02 12:16:08',NULL,0),(73,'','Allowed File Types','','/dashboard/system/permissions/file_types','2013-07-02 12:15:19','2013-07-02 12:16:08',NULL,0),(74,'','Task Permissions','','/dashboard/system/permissions/tasks','2013-07-02 12:15:20','2013-07-02 12:16:08',NULL,0),(77,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2013-07-02 12:15:22','2013-07-02 12:16:09',NULL,0),(78,'','Captcha Setup','','/dashboard/system/permissions/captcha','2013-07-02 12:15:23','2013-07-02 12:16:09',NULL,0),(79,'','Spam Control','','/dashboard/system/permissions/antispam','2013-07-02 12:15:24','2013-07-02 12:16:09',NULL,0),(80,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2013-07-02 12:15:25','2013-07-02 12:16:09',NULL,0),(82,'','Login Destination','','/dashboard/system/registration/postlogin','2013-07-02 12:15:27','2013-07-02 12:16:10',NULL,0),(83,'','Public Profiles','','/dashboard/system/registration/profiles','2013-07-02 12:15:27','2013-07-02 12:16:10',NULL,0),(84,'','Public Registration','','/dashboard/system/registration/public_registration','2013-07-02 12:15:28','2013-07-02 12:16:10',NULL,0),(85,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2013-07-02 12:15:28','2013-07-02 12:16:11',NULL,0),(86,'','SMTP Method','','/dashboard/system/mail/method','2013-07-02 12:15:29','2013-07-02 12:16:11',NULL,0),(87,'','Email Importers','','/dashboard/system/mail/importers','2013-07-02 12:15:30','2013-07-02 12:16:11',NULL,0),(88,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2013-07-02 12:15:30','2013-07-02 12:16:11',NULL,0),(89,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2013-07-02 12:15:32','2013-07-02 12:16:12',NULL,0),(90,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2013-07-02 12:15:32','2013-07-02 12:16:12',NULL,0),(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(92,'','Environment Information','','/dashboard/system/environment/info','2013-07-02 12:15:34','2013-07-02 12:16:13',NULL,0),(93,'','Debug Settings','','/dashboard/system/environment/debug','2013-07-02 12:15:34','2013-07-02 12:16:13',NULL,0),(94,'','Logging Settings','','/dashboard/system/environment/logging','2013-07-02 12:15:35','2013-07-02 12:16:13',NULL,0),(95,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2013-07-02 12:15:35','2013-07-02 12:16:13',NULL,0),(96,'','Proxy Server','','/dashboard/system/environment/proxy','2013-07-02 12:15:36','2013-07-02 12:16:13',NULL,0),(97,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup_restore','2013-07-02 12:15:37','2013-07-02 12:16:14',NULL,0),(99,'','Update concrete5','','/dashboard/system/backup_restore/update','2013-07-02 12:15:38','2013-07-02 12:16:14',NULL,0),(100,'','Database XML','','/dashboard/system/backup_restore/database','2013-07-02 12:15:39','2013-07-02 12:16:14',NULL,0),(106,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2013-07-02 12:15:41','2013-07-02 12:16:19',NULL,0),(105,'','Customize Dashboard Home','','/dashboard/home','2013-07-02 12:15:40','2013-07-02 12:16:24',NULL,0),(1,'\r\nHi, a warm welcome to Atlas!\r\n \r\n We happily offer each guest at our travel hostel a clean and comfy place to stay in London, where you can rest your backpack, put your feet up and relax. \r\n You will be fantastically located within only a short distance of all the vibrant sights and sounds this great city has to offer. \r\n Relaxing in Hyde Park… Shopping in Regents Street… Going out for drinks and meals in Soho… Visiting museums in South Kensington… are just some of the attractions to be explored on your doorstep. \r\n Our staff will gladly take the time out to chat and assist you in any way they best can, whether it’s simply providing directions, recommending day tours, the best music events on, or suggesting the most exciting nightlife spots.  test 1 - test 2 - test 3 -  ','Home','',NULL,'2013-07-02 12:14:02','2013-07-08 22:45:36',NULL,0),(123,'\r\nFacilities\r\n \r\nDorm sizes consist of 6, 8 and 10 beds. Each dorm has ensuite bathroom.\r\n We provide the following facilities: \r\n\r\n Free WIFI\r\n No Curfew\r\n Free Bed Linen\r\n Free Cooking/ Communal Kitchen Facilities\r\n Dorm Lockers for personal belongings\r\n Luggage Storage\r\n 24 hours Hot Shower Facility\r\n Washing Room with Dryer\r\n Friendly Staff\r\n Easy Transport Links\r\n Dorm Lockers\r\n Discounted Tickets For Tourist Attractions\r\n Closed Circuit TV for your safety\r\n Hairdryers\r\n Towels for Hire\r\n Book Exchange\r\n Free City Maps\r\n ','Facilities','','/facilities','2013-07-02 12:33:00','2013-07-08 21:32:59',NULL,0),(125,'','Book Now!','','/book-now','2013-07-02 12:35:00','2013-07-08 22:28:14',NULL,0),(126,'\r\nTravelling From Heathrow Airport\r\n \r\n Take Heathrow Express towards London Paddington Rail Station. \r\n Once you are outside the rail station then start out along LONDON STREET. \r\n After 150 yards turn right onto SUSSEX GARDENS, heading south. \r\n You will reach your destination 76 yards along SUSSEX GARDENS. \r\n\r\nTravelling From Waterloo\r\n \r\n Take the Bakerloo Line towards Queen\'s Park Underground Station or Bakerloo  Line towards Harrow &amp; Wealdstone Underground Station or Bakerloo Line towards Stonebridge Park Underground Station. \r\n Then after 8 stops you will arrive at Paddington Underground station. \r\n Once you are outside the Paddington station then start out along LONDON STREET, heading south. \r\n After 150 yards turn right onto SUSSEX GARDENS, heading south. \r\n You will reach your destination 76 yards along SUSSEX GARDENS. \r\n\r\nTravelling from Victoria\r\n \r\n Once you are outside the station then start out along LONDON STREET, After 150 yards turn right onto SUSSEX GARDENS, heading south. \r\n You will reach your destination 76 yards along SUSSEX GARDENS. \r\n If you are travelling from Victoria Coach Station, walk down to Victoria Station and follow the directions as provided above. \r\n\r\nTravelling from Gatwick Airport\r\n \r\n At Gatwick Airport Rail Station take Southern train towards London Victoria Rail Station. \r\n Then On the underground system take the westbound circle line or District Line to Paddington. \r\n Once you are outside the station then start out along LONDON STREET, heading south. \r\n After 150 yards turn right onto SUSSEX GARDENS, heading south. \r\n You will reach your destination 76 yards along SUSSEX GARDENS. \r\n\r\nTravelling from Stansted Airport\r\n \r\n Take the National Express from Stanstead Airport to London Victoria Coach Station. \r\n Then walk down to Victoria Station. \r\n On the underground system take the westbound circle line or District Line to Paddington. \r\n Once you are outside the rail station then start out along LONDON STREET, heading south. \r\n After 150 yards turn right onto SUSSEX GARDENS, heading south. \r\n You will reach your destination 76 yards along SUSSEX GARDENS.  ','Location','','/location','2013-07-02 12:36:00','2013-07-08 23:03:48',NULL,0),(127,'','Gallery','','/gallery','2013-07-02 12:37:00','2013-07-08 22:27:20',NULL,0),(128,'\r\nNearest Underground Train\r\n \r\n 2 Minutes - Paddington underground station (Bakerloo/Hammersmith &amp; City and Bakerloo Lines \r\n\r\nNearest British Rail Station\r\n \r\n 3 Minutes – Paddington Rail Station \r\n\r\nLocal Buses\r\n \r\n Serving routes from Paddington station: \r\n 159, 205, 23, 27, 332, 36, 436, 7, N7 \r\n\r\nNearest ATM/Bank\r\n \r\n 90 yards – Natwest Bank, 26 Spring Street, W2 1JA \r\n\r\nNearest Post Office\r\n \r\n 0.3 Miles - Paddington Quay, Retail Unit 6, 4 Praed Street, London, W2 1JX \r\n Telephone: 0845 605 1605 \r\n  Opening Hours \r\n Mon: 09:00 - 17:00 \r\n Tue: 09:00 - 17:00 \r\n Wed: 09:30 - 17:00 \r\n Thu: 09:00 - 17:00 \r\n Fri: 09:00 - 17:00 \r\n Sat: 09:00 - 12:30 \r\n\r\nNearest Café\r\n \r\n 111 yards – Luigi’s Sandwich Bar 8A Spring St, London W2 3RA \r\n\r\nBest nearest Pub\r\n \r\n 393 yards -The Monkey Puzzle 30 Southwick St, London, Greater London W2 1JQ \r\n\r\nNearest Supermarket\r\n \r\n 175 yards - Sainsbury\'s Local , Station Concourse, Paddington Station, London W2 1HB \r\n\r\nNearest Cinema\r\n \r\n 0.62 miles - Odeon Marble Arch - 10 Edgware Rd, Marble Arch, London W2 2EN  ','Local Info','','/local-info','2013-07-02 12:38:00','2013-07-08 22:26:46',NULL,0),(129,'FAQs\r\n\r\n\r\n Nearest tube / bus stop to the hostel?  \r\n\r\nbar 1 \r\n \r\n \r\n\r\n\r\n What is the address of the hostel?  \r\n\r\nbar 2 \r\n \r\n \r\n\r\n\r\n What do i need to check in / out?  \r\n\r\nbar 3 \r\n \r\n \r\n\r\n\r\n What time do i need to check in / out?  \r\n\r\nbar 4 \r\n \r\n \r\n\r\n\r\n What is your policy for under 18s?  \r\n\r\nbar 5 \r\n \r\n \r\n\r\n\r\n What is included in the price?  \r\n\r\nbar 5 \r\n \r\n \r\n\r\n\r\n How long is reception open for?  \r\n\r\nbar 5 \r\n \r\n \r\n\r\n\r\n Where can i store my luggage?  \r\n\r\nbar 5 \r\n \r\n \r\n\r\n\r\n Do you have wifi in the hostel?  \r\n\r\nbar 5 \r\n \r\n \r\n\r\n\r\n Do you serve breakfast?  \r\n\r\nbar 5 \r\n \r\n \r\n  ','FAQ','','/faq','2013-07-02 12:39:00','2013-07-08 22:15:59',NULL,0),(130,'','Top Attractions','','/top-attractions','2013-07-02 12:40:00','2013-07-08 22:10:20',NULL,0),(131,'','Designer Content',NULL,'/dashboard/blocks/designer_content','2013-07-02 14:08:07','2013-07-02 14:08:08',NULL,0),(133,'','London Zoo','','/top-attractions/london-zoo','2013-07-02 16:37:00','2013-07-02 16:37:52',NULL,0),(134,'','London Eye','','/top-attractions/london-eye','2013-07-02 16:38:00','2013-07-02 16:38:33',NULL,0),(135,'','Tate Modern','','/top-attractions/tate-modern','2013-07-02 16:38:00','2013-07-02 16:38:57',NULL,0),(136,'','Hyde Park','','/top-attractions/hyde-park','2013-07-02 17:46:00','2013-07-02 18:19:58',NULL,0),(137,'','Oxford Circus','','/top-attractions/oxford-circus','2013-07-02 18:20:00','2013-07-02 18:20:38',NULL,0),(138,'','Soho','','/top-attractions/soho','2013-07-02 18:20:00','2013-07-02 18:21:59',NULL,0),(139,'','Notting Hill','','/top-attractions/notting-hill','2013-07-02 18:21:00','2013-07-02 18:21:59',NULL,0),(140,'','Edgware Road','','/top-attractions/edgware-road','2013-07-02 18:22:00','2013-07-02 18:22:24',NULL,0),(142,'16 Talbot Square, London, Paddington, W25LH - 0845 519 9448 Direction ','right hand side',NULL,'/!stacks/right-hand-side','2013-07-08 21:20:44','2013-07-08 21:23:49',NULL,0),(143,' 2013 © Atlas Hostels PLC. Privacy Policy | Terms &amp; Conditions | Contact Us | Investor Relations | Jobs  ','Footer',NULL,'/!stacks/footer','2013-07-08 21:32:03','2013-07-08 22:45:34',NULL,0),(141,'£15 a night for a bed in central london! Monthly Newsletter - Subscribe to our newsletter and stay up to date with the latest news and deals! Facebook https://twitter.com/AtlasHostels ','left hand side',NULL,'/!stacks/left-hand-side','2013-07-08 19:58:28','2013-07-08 20:00:35',NULL,0),(124,'','Header Nav',NULL,'/!stacks/header-nav','2013-07-02 12:34:09','2013-07-08 23:06:01',NULL,0),(145,'Privacy Policy  Atlas is committed to preserving the privacy of all visitors to the Website. Please read the following privacy policy to understand how we use and protect the information that you provide to us. \r\n\r\nShould you choose to register on the Website or contact us through the Website, you will be asked to provide certain personal information. We may use your personal information to keep you informed of the different land investments that we promote and market from time to time that we think may be of interest to you and for future email mailings, support, notification of new services, and general correspondence that may relate to you. If you would rather not receive future marketing emails from us please inform us by e-mail at info@Atlashostelsplc.com.\r\nWe are registered under the Data Protection Act 1998 and comply with the Act in all our dealings with your personal data. The information you provide will be kept confidential and will be used only to support your customer relationship with us. We will not disclose or sell your information outside our corporate group, except in connection with the proposed or actual sale of the whole or part of the Atlas business or where we are required to do so by law or a regulatory authority. We never rent or sell your personal information.\r\nThe data that we collect from you may be transferred to, and stored at, a destination outside the European Economic Area (“EEA”). It may also be processed by staff operating outside the EEA who work for us or for one of our suppliers. By submitting your personal data, you agree to this transfer, storing or processing. We will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this privacy policy.\r\nAtlas may also collect personal information about your use of the Website by using a cookie file that is stored on the hard drive of your computer. Cookies contain information that is transferred to your computer’s hard drive. They help us to improve the Website and to deliver a better and more personalised service.\r\nYou may refuse to accept cookies by activating the setting on your browser that allows you to refuse the setting of cookies. However, if you select this setting you may be unable to access certain parts of the Website. Unless you have adjusted your browser setting so that it will refuse cookies, our system will issue cookies when you log on to our site. For more information about cookies including how to set your internet browser to reject cookies please go to www.allaboutcookies.org\r\nUnfortunately, the transmission of information via the internet is not completely secure. Although Atlas will do its best to protect your personal data, it cannot guarantee the security of data transmitted to the Website; any transmission is at your own risk.\r\nThis Website may contain links to third party websites. Atlas is not responsible for the data protection or privacy policies of those third parties.\r\nYou have a right to ask us to provide a copy of the personal data we hold about you, and where you do we are entitled by law to make a small administrative charge for providing such data.\r\nAny changes to our privacy policy in the future will be posted to the Website.\r\nAll comments, queries and requests relating to our use of your information are welcomed and should be addressed to Atlas Hostels Plc, 2ND FLOOR BERKLEY SQUARE HOUSE, BERKELEY SQUARE, LONDON, UNITED KINGDOM, W1J 6BD, 0800 122 3455.\r\n ','Privacy Policy','','/faq/privacy-policy','2013-07-08 22:39:00','2013-07-08 22:55:57',NULL,0),(146,'Terms &amp; Conditions  Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. \r\n\r\nUt adipiscing elit magna sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet. Et harum quidem rerum facilis fusce condimentum eleifend enim a feugiat.\r\nLusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.\r\nPraesentium voluptatum deleniti atque corrupti quos\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.\r\nMentum eleifend enim a feugiat distinctio lor\r\n\r\n   \r\nLorem ipsum dolor integer sed arcu\r\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Integer sed arcu. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. \r\n Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non sit amet, consectetur adipiscing elit. Ut adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque lorem ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat consectetur adipiscing elit. \r\n   \r\nMolestias excepturi sint\r\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. \r\n\r\nUt adipiscing elit magna sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet. Et harum quidem rerum facilis fusce condimentum eleifend enim a feugiat.\r\nLusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.\r\nPraesentium voluptatum deleniti atque corrupti quos\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.\r\nMentum eleifend enim a feugiat distinctio lor\r\nUt adipiscing elit magna sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet. Et harum quidem rerum facilis fusce condimentum eleifend enim a feugiat.\r\nLusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.\r\nPraesentium voluptatum deleniti atque corrupti quos\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.\r\nMentum eleifend enim a feugiat distinctio lor\r\n\r\n Praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus usce condimentum eleifend enim a feugiat consectetur adipiscing elit. \r\n   \r\nVehicula sem ut volutpat\r\n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Integer sed arcu. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non sit amet, consectetur adipiscing elit. Ut adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. \r\n Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat consectetur adipiscing elit. \r\n   \r\nVero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis\r\n\r\nUt adipiscing elit magna sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat.\r\nLusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.\r\nPraesentium voluptatum deleniti atque corrupti quos\r\n\r\n Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat consectetur adipiscing elit.  ','Terms & conditions','Terms & conditions','/faq/terms-conditions','2013-07-08 22:40:00','2013-07-08 22:58:30',NULL,0),(149,'','Jobs','','/faq/jobs','2013-07-08 22:43:00','2013-07-08 22:43:29',NULL,0),(150,'\r\n\r\nMap\r\n \r\n\r\n\r\n\r\n\r\n  \r\n  \r\n  \r\n  \r\n\r\n \r\n \r\n\r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n\r\n \r\n \r\n\r\nMap DataMap data ©2013 Google - Terms of Use \r\n \r\n\r\nMap Data \r\nMap data ©2013 Google \r\n \r\n \r\n\r\nMap data ©2013 Google \r\n \r\nReport a map error \r\n\r\n\r\n\r\n\r\n\r\n\r\n  \r\n  \r\n  \r\n  \r\n  \r\n\r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n \r\n\r\n \r\n \r\n \r\n\r\n\r\n  \r\n\r\n\r\n  \r\n  \r\n  \r\n  \r\n \r\n \r\n \r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n\r\n  \r\n  \r\n \r\n \r\n\r\n\r\nMap \r\n\r\n\r\n \r\nTerrain \r\n \r\n \r\n\r\nSatellite \r\n\r\n\r\n \r\n45° \r\n\r\n \r\nLabels \r\n \r\n \r\n \r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n200 m \r\n1000 ft \r\n \r\n \r\n \r\n\r\n Atlas Hostel is located next to London Paddington train station; A short walk away from the hostel and you have the majestic Hyde Park, shopping on Oxford Circus, Regents Street and Kensington. \r\n Name  Email *  Message \r\n Send Message \r\n  ','Contact Us','','/faq/contact-us','2013-07-08 22:59:00','2013-07-08 23:06:02',NULL,0);
/*!40000 ALTER TABLE `PageSearchIndex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageStatistics`
--

DROP TABLE IF EXISTS `PageStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=612 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageStatistics`
--

LOCK TABLES `PageStatistics` WRITE;
/*!40000 ALTER TABLE `PageStatistics` DISABLE KEYS */;
INSERT INTO `PageStatistics` VALUES (1,1,'2013-07-02','2013-07-02 11:27:10',1),(2,106,'2013-07-02','2013-07-02 11:27:11',1),(3,2,'2013-07-02','2013-07-02 11:27:18',1),(4,28,'2013-07-02','2013-07-02 11:27:36',1),(5,28,'2013-07-02','2013-07-02 11:27:39',1),(6,28,'2013-07-02','2013-07-02 11:27:51',1),(7,30,'2013-07-02','2013-07-02 11:27:51',1),(8,30,'2013-07-02','2013-07-02 11:28:00',1),(9,28,'2013-07-02','2013-07-02 11:28:05',1),(10,28,'2013-07-02','2013-07-02 11:28:08',1),(11,28,'2013-07-02','2013-07-02 11:28:10',1),(12,2,'2013-07-02','2013-07-02 11:29:52',1),(13,7,'2013-07-02','2013-07-02 11:29:56',1),(14,2,'2013-07-02','2013-07-02 11:30:19',1),(15,32,'2013-07-02','2013-07-02 11:32:20',1),(16,32,'2013-07-02','2013-07-02 11:32:33',1),(17,32,'2013-07-02','2013-07-02 11:32:42',1),(18,32,'2013-07-02','2013-07-02 11:32:42',1),(19,2,'2013-07-02','2013-07-02 11:32:59',1),(20,7,'2013-07-02','2013-07-02 11:33:01',1),(21,6,'2013-07-02','2013-07-02 11:34:02',1),(22,7,'2013-07-02','2013-07-02 11:34:02',1),(23,1,'2013-07-02','2013-07-02 11:34:09',1),(24,1,'2013-07-02','2013-07-02 11:35:00',1),(25,1,'2013-07-02','2013-07-02 11:35:07',1),(26,6,'2013-07-02','2013-07-02 11:36:02',1),(27,7,'2013-07-02','2013-07-02 11:36:02',1),(28,1,'2013-07-02','2013-07-02 11:36:09',1),(29,6,'2013-07-02','2013-07-02 11:36:27',1),(30,7,'2013-07-02','2013-07-02 11:36:27',1),(31,1,'2013-07-02','2013-07-02 11:36:37',1),(32,1,'2013-07-02','2013-07-02 11:36:39',1),(33,126,'2013-07-02','2013-07-02 11:36:42',1),(34,6,'2013-07-02','2013-07-02 11:37:36',1),(35,7,'2013-07-02','2013-07-02 11:37:36',1),(36,6,'2013-07-02','2013-07-02 11:38:16',1),(37,7,'2013-07-02','2013-07-02 11:38:16',1),(38,6,'2013-07-02','2013-07-02 11:39:05',1),(39,7,'2013-07-02','2013-07-02 11:39:05',1),(40,6,'2013-07-02','2013-07-02 11:40:30',1),(41,7,'2013-07-02','2013-07-02 11:40:30',1),(42,126,'2013-07-02','2013-07-02 12:16:59',1),(43,1,'2013-07-02','2013-07-02 12:19:19',1),(44,1,'2013-07-02','2013-07-02 12:19:30',1),(45,1,'2013-07-02','2013-07-02 12:24:45',1),(46,123,'2013-07-02','2013-07-02 12:24:48',1),(47,123,'2013-07-02','2013-07-02 12:24:54',1),(48,123,'2013-07-02','2013-07-02 12:33:56',1),(49,1,'2013-07-02','2013-07-02 12:34:06',1),(50,125,'2013-07-02','2013-07-02 12:34:15',1),(51,126,'2013-07-02','2013-07-02 12:34:17',1),(52,126,'2013-07-02','2013-07-02 12:34:49',1),(53,126,'2013-07-02','2013-07-02 12:44:54',1),(54,128,'2013-07-02','2013-07-02 12:44:57',1),(55,126,'2013-07-02','2013-07-02 12:45:02',1),(56,125,'2013-07-02','2013-07-02 12:45:03',1),(57,123,'2013-07-02','2013-07-02 12:45:04',1),(58,1,'2013-07-02','2013-07-02 12:45:05',1),(59,123,'2013-07-02','2013-07-02 12:45:06',1),(60,125,'2013-07-02','2013-07-02 12:45:08',1),(61,126,'2013-07-02','2013-07-02 12:45:09',1),(62,127,'2013-07-02','2013-07-02 12:45:10',1),(63,1,'2013-07-02','2013-07-02 12:45:13',1),(64,128,'2013-07-02','2013-07-02 12:45:17',1),(65,128,'2013-07-02','2013-07-02 12:46:20',1),(66,128,'2013-07-02','2013-07-02 12:54:29',1),(67,129,'2013-07-02','2013-07-02 12:54:36',1),(68,129,'2013-07-02','2013-07-02 12:54:40',1),(69,129,'2013-07-02','2013-07-02 12:55:34',1),(70,129,'2013-07-02','2013-07-02 12:55:51',1),(71,129,'2013-07-02','2013-07-02 12:57:12',1),(72,1,'2013-07-02','2013-07-02 13:07:18',1),(73,2,'2013-07-02','2013-07-02 13:07:22',1),(74,46,'2013-07-02','2013-07-02 13:08:04',1),(75,46,'2013-07-02','2013-07-02 13:08:07',1),(76,46,'2013-07-02','2013-07-02 13:08:08',1),(77,46,'2013-07-02','2013-07-02 13:08:52',1),(78,2,'2013-07-02','2013-07-02 13:08:59',1),(79,131,'2013-07-02','2013-07-02 13:09:04',1),(80,131,'2013-07-02','2013-07-02 13:09:23',1),(81,1,'2013-07-02','2013-07-02 13:14:13',1),(82,131,'2013-07-02','2013-07-02 13:18:41',1),(83,131,'2013-07-02','2013-07-02 13:18:41',1),(84,1,'2013-07-02','2013-07-02 13:25:16',1),(85,1,'2013-07-02','2013-07-02 13:32:55',1),(86,1,'2013-07-02','2013-07-02 13:33:05',1),(87,1,'2013-07-02','2013-07-02 13:33:42',1),(88,1,'2013-07-02','2013-07-02 13:34:05',1),(89,1,'2013-07-02','2013-07-02 13:34:44',1),(90,2,'2013-07-02','2013-07-02 13:34:47',1),(91,43,'2013-07-02','2013-07-02 13:34:52',1),(92,1,'2013-07-02','2013-07-02 13:35:05',1),(93,1,'2013-07-02','2013-07-02 13:42:35',1),(94,1,'2013-07-02','2013-07-02 13:43:00',1),(95,1,'2013-07-02','2013-07-02 13:43:06',1),(96,1,'2013-07-02','2013-07-02 13:43:13',1),(97,123,'2013-07-02','2013-07-02 13:43:28',1),(98,2,'2013-07-02','2013-07-02 13:44:15',1),(99,43,'2013-07-02','2013-07-02 13:44:23',1),(100,43,'2013-07-02','2013-07-02 13:44:39',1),(101,43,'2013-07-02','2013-07-02 13:44:48',1),(102,43,'2013-07-02','2013-07-02 13:44:50',1),(103,2,'2013-07-02','2013-07-02 13:44:57',1),(104,43,'2013-07-02','2013-07-02 13:45:01',1),(105,2,'2013-07-02','2013-07-02 13:45:05',1),(106,2,'2013-07-02','2013-07-02 13:45:06',1),(107,131,'2013-07-02','2013-07-02 13:45:10',1),(108,131,'2013-07-02','2013-07-02 13:47:45',1),(109,131,'2013-07-02','2013-07-02 13:49:47',1),(110,131,'2013-07-02','2013-07-02 13:49:48',1),(111,1,'2013-07-02','2013-07-02 13:49:58',1),(112,1,'2013-07-02','2013-07-02 13:50:03',1),(113,2,'2013-07-02','2013-07-02 13:50:28',1),(114,43,'2013-07-02','2013-07-02 13:50:35',1),(115,1,'2013-07-02','2013-07-02 13:51:32',1),(116,1,'2013-07-02','2013-07-02 14:01:29',1),(117,1,'2013-07-02','2013-07-02 14:01:47',1),(118,1,'2013-07-02','2013-07-02 14:02:34',1),(119,2,'2013-07-02','2013-07-02 15:08:17',1),(120,34,'2013-07-02','2013-07-02 15:08:29',1),(121,34,'2013-07-02','2013-07-02 15:08:35',1),(122,1,'2013-07-02','2013-07-02 15:19:57',1),(123,110,'2013-07-02','2013-07-02 15:20:09',1),(124,1,'2013-07-02','2013-07-02 15:20:09',0),(125,110,'2013-07-02','2013-07-02 15:20:30',0),(126,110,'2013-07-02','2013-07-02 15:20:36',0),(127,110,'2013-07-02','2013-07-02 15:20:40',0),(128,2,'2013-07-02','2013-07-02 15:20:41',1),(129,1,'2013-07-02','2013-07-02 15:20:45',1),(130,1,'2013-07-02','2013-07-02 15:20:52',1),(131,1,'2013-07-02','2013-07-02 15:21:02',1),(132,1,'2013-07-02','2013-07-02 15:21:08',1),(133,1,'2013-07-02','2013-07-02 15:21:12',1),(134,123,'2013-07-02','2013-07-02 15:21:17',1),(135,123,'2013-07-02','2013-07-02 15:21:55',1),(136,123,'2013-07-02','2013-07-02 15:24:24',1),(137,123,'2013-07-02','2013-07-02 15:25:17',1),(138,123,'2013-07-02','2013-07-02 15:26:10',1),(139,123,'2013-07-02','2013-07-02 15:26:45',1),(140,123,'2013-07-02','2013-07-02 15:28:27',1),(141,123,'2013-07-02','2013-07-02 15:28:39',1),(142,123,'2013-07-02','2013-07-02 15:28:50',1),(143,1,'2013-07-02','2013-07-02 15:28:54',1),(144,1,'2013-07-02','2013-07-02 15:28:57',1),(145,123,'2013-07-02','2013-07-02 15:29:05',1),(146,125,'2013-07-02','2013-07-02 15:29:06',1),(147,126,'2013-07-02','2013-07-02 15:29:08',1),(148,127,'2013-07-02','2013-07-02 15:29:10',1),(149,128,'2013-07-02','2013-07-02 15:29:12',1),(150,129,'2013-07-02','2013-07-02 15:29:14',1),(151,127,'2013-07-02','2013-07-02 15:29:17',1),(152,127,'2013-07-02','2013-07-02 15:29:19',1),(153,34,'2013-07-02','2013-07-02 15:30:11',1),(154,34,'2013-07-02','2013-07-02 15:30:12',1),(155,2,'2013-07-02','2013-07-02 15:30:21',1),(156,32,'2013-07-02','2013-07-02 15:30:35',1),(157,33,'2013-07-02','2013-07-02 15:30:38',1),(158,127,'2013-07-02','2013-07-02 15:32:24',1),(159,128,'2013-07-02','2013-07-02 15:32:27',1),(160,130,'2013-07-02','2013-07-02 15:32:30',1),(161,33,'2013-07-02','2013-07-02 15:37:17',1),(162,32,'2013-07-02','2013-07-02 15:37:17',1),(163,1,'2013-07-02','2013-07-02 15:37:21',1),(164,1,'2013-07-02','2013-07-02 15:37:26',1),(165,2,'2013-07-02','2013-07-02 15:37:30',1),(166,7,'2013-07-02','2013-07-02 15:37:32',1),(167,6,'2013-07-02','2013-07-02 15:37:51',1),(168,7,'2013-07-02','2013-07-02 15:37:51',1),(169,6,'2013-07-02','2013-07-02 15:38:32',1),(170,7,'2013-07-02','2013-07-02 15:38:32',1),(171,6,'2013-07-02','2013-07-02 15:38:56',1),(172,7,'2013-07-02','2013-07-02 15:38:56',1),(173,130,'2013-07-02','2013-07-02 15:40:28',1),(174,130,'2013-07-02','2013-07-02 15:40:39',1),(175,130,'2013-07-02','2013-07-02 15:41:28',1),(176,1,'2013-07-02','2013-07-02 15:41:43',1),(177,1,'2013-07-02','2013-07-02 15:41:46',1),(178,1,'2013-07-02','2013-07-02 15:43:24',1),(179,1,'2013-07-02','2013-07-02 15:58:03',1),(180,1,'2013-07-02','2013-07-02 15:58:38',1),(181,1,'2013-07-02','2013-07-02 15:58:45',1),(182,1,'2013-07-02','2013-07-02 16:07:02',1),(183,1,'2013-07-02','2013-07-02 16:37:19',1),(184,1,'2013-07-02','2013-07-02 16:37:41',1),(185,1,'2013-07-02','2013-07-02 16:42:16',1),(186,1,'2013-07-02','2013-07-02 16:42:37',1),(187,1,'2013-07-02','2013-07-02 16:43:55',1),(188,1,'2013-07-02','2013-07-02 16:44:38',1),(189,2,'2013-07-02','2013-07-02 16:44:55',1),(190,7,'2013-07-02','2013-07-02 16:44:59',1),(191,6,'2013-07-02','2013-07-02 17:19:57',1),(192,7,'2013-07-02','2013-07-02 17:19:57',1),(193,6,'2013-07-02','2013-07-02 17:20:37',1),(194,7,'2013-07-02','2013-07-02 17:20:37',1),(195,6,'2013-07-02','2013-07-02 17:21:00',1),(196,7,'2013-07-02','2013-07-02 17:21:00',1),(197,6,'2013-07-02','2013-07-02 17:21:58',1),(198,7,'2013-07-02','2013-07-02 17:21:58',1),(199,6,'2013-07-02','2013-07-02 17:22:23',1),(200,7,'2013-07-02','2013-07-02 17:22:24',1),(201,1,'2013-07-02','2013-07-02 17:32:32',1),(202,1,'2013-07-02','2013-07-02 17:32:53',1),(203,123,'2013-07-02','2013-07-02 17:33:06',1),(204,123,'2013-07-02','2013-07-02 17:33:15',1),(205,110,'2013-07-02','2013-07-02 17:36:18',1),(206,1,'2013-07-02','2013-07-02 17:36:18',0),(207,1,'2013-07-02','2013-07-02 17:36:23',0),(208,1,'2013-07-02','2013-07-02 17:36:28',0),(209,1,'2013-07-04','2013-07-04 19:04:06',0),(210,1,'2013-07-04','2013-07-04 19:05:57',0),(211,110,'2013-07-04','2013-07-04 19:06:06',0),(212,2,'2013-07-04','2013-07-04 19:06:07',1),(213,105,'2013-07-04','2013-07-04 19:06:07',1),(214,1,'2013-07-04','2013-07-04 19:06:28',1),(215,1,'2013-07-04','2013-07-04 19:13:48',1),(216,1,'2013-07-04','2013-07-04 19:14:17',1),(217,1,'2013-07-04','2013-07-04 19:16:54',1),(218,1,'2013-07-04','2013-07-04 19:17:21',1),(219,1,'2013-07-04','2013-07-04 19:19:02',1),(220,126,'2013-07-04','2013-07-04 19:21:22',1),(221,129,'2013-07-04','2013-07-04 19:21:54',1),(222,128,'2013-07-04','2013-07-04 19:21:56',1),(223,127,'2013-07-04','2013-07-04 19:22:02',1),(224,126,'2013-07-04','2013-07-04 19:22:04',1),(225,125,'2013-07-04','2013-07-04 19:22:06',1),(226,123,'2013-07-04','2013-07-04 19:22:07',1),(227,123,'2013-07-04','2013-07-04 19:23:08',1),(228,123,'2013-07-04','2013-07-04 19:23:22',1),(229,126,'2013-07-04','2013-07-04 19:23:36',1),(230,127,'2013-07-04','2013-07-04 19:23:44',1),(231,127,'2013-07-04','2013-07-04 19:24:55',1),(232,2,'2013-07-04','2013-07-04 19:51:08',1),(233,46,'2013-07-04','2013-07-04 19:51:14',1),(234,46,'2013-07-04','2013-07-04 19:51:18',1),(235,46,'2013-07-04','2013-07-04 19:51:19',1),(236,1,'2013-07-04','2013-07-04 19:51:30',1),(237,127,'2013-07-04','2013-07-04 19:51:33',1),(238,127,'2013-07-04','2013-07-04 19:53:04',1),(239,127,'2013-07-04','2013-07-04 19:56:46',1),(240,128,'2013-07-04','2013-07-04 19:57:12',1),(241,129,'2013-07-04','2013-07-04 19:57:14',1),(242,129,'2013-07-04','2013-07-04 19:57:32',1),(243,130,'2013-07-04','2013-07-04 19:58:25',1),(244,1,'2013-07-04','2013-07-04 19:58:33',1),(245,1,'2013-07-04','2013-07-04 20:07:30',1),(246,1,'2013-07-04','2013-07-04 20:08:42',1),(247,1,'2013-07-04','2013-07-04 20:16:34',1),(248,1,'2013-07-04','2013-07-04 20:17:07',1),(249,2,'2013-07-04','2013-07-04 21:12:20',1),(250,1,'2013-07-07','2013-07-07 14:34:39',0),(251,1,'2013-07-07','2013-07-07 14:35:37',0),(252,1,'2013-07-07','2013-07-07 14:41:22',0),(253,1,'2013-07-07','2013-07-07 14:41:29',0),(254,110,'2013-07-07','2013-07-07 14:42:50',0),(255,110,'2013-07-07','2013-07-07 14:42:59',0),(256,2,'2013-07-07','2013-07-07 14:43:00',1),(257,105,'2013-07-07','2013-07-07 14:43:01',1),(258,1,'2013-07-07','2013-07-07 14:44:45',1),(259,1,'2013-07-07','2013-07-07 14:45:09',1),(260,2,'2013-07-07','2013-07-07 14:46:10',1),(261,51,'2013-07-07','2013-07-07 14:46:15',1),(262,68,'2013-07-07','2013-07-07 14:46:19',1),(263,68,'2013-07-07','2013-07-07 14:46:22',1),(264,68,'2013-07-07','2013-07-07 14:46:22',1),(265,1,'2013-07-07','2013-07-07 14:46:29',1),(266,2,'2013-07-07','2013-07-07 14:46:50',1),(267,1,'2013-07-07','2013-07-07 14:50:35',1),(268,110,'2013-07-07','2013-07-07 14:51:15',1),(269,1,'2013-07-07','2013-07-07 14:51:15',0),(270,1,'2013-07-07','2013-07-07 14:51:44',0),(271,1,'2013-07-07','2013-07-07 14:53:52',0),(272,1,'2013-07-07','2013-07-07 14:54:33',0),(273,110,'2013-07-07','2013-07-07 14:56:32',0),(274,2,'2013-07-07','2013-07-07 14:56:33',1),(275,51,'2013-07-07','2013-07-07 14:56:41',1),(276,68,'2013-07-07','2013-07-07 14:56:45',1),(277,68,'2013-07-07','2013-07-07 14:56:48',1),(278,68,'2013-07-07','2013-07-07 14:56:49',1),(279,1,'2013-07-07','2013-07-07 14:56:52',1),(280,1,'2013-07-07','2013-07-07 14:57:25',1),(281,2,'2013-07-07','2013-07-07 14:57:47',1),(282,43,'2013-07-07','2013-07-07 14:58:11',1),(283,2,'2013-07-07','2013-07-07 14:58:23',1),(284,131,'2013-07-07','2013-07-07 14:59:27',1),(285,131,'2013-07-07','2013-07-07 15:00:34',1),(286,131,'2013-07-07','2013-07-07 15:00:35',1),(287,1,'2013-07-07','2013-07-07 15:15:33',1),(288,110,'2013-07-07','2013-07-07 15:16:02',1),(289,1,'2013-07-07','2013-07-07 15:16:03',0),(290,1,'2013-07-07','2013-07-07 15:16:13',0),(291,110,'2013-07-07','2013-07-07 15:16:25',0),(292,2,'2013-07-07','2013-07-07 15:16:26',1),(293,51,'2013-07-07','2013-07-07 15:16:34',1),(294,68,'2013-07-07','2013-07-07 15:16:41',1),(295,68,'2013-07-07','2013-07-07 15:16:43',1),(296,68,'2013-07-07','2013-07-07 15:16:44',1),(297,1,'2013-07-07','2013-07-07 15:17:15',1),(298,1,'2013-07-07','2013-07-07 15:17:40',1),(299,2,'2013-07-07','2013-07-07 15:40:31',1),(300,131,'2013-07-07','2013-07-07 15:40:36',1),(301,131,'2013-07-07','2013-07-07 15:41:24',1),(302,131,'2013-07-07','2013-07-07 15:41:25',1),(303,1,'2013-07-07','2013-07-07 17:26:57',1),(304,1,'2013-07-07','2013-07-07 17:29:55',1),(305,1,'2013-07-07','2013-07-07 17:38:24',1),(306,1,'2013-07-07','2013-07-07 17:38:43',1),(307,1,'2013-07-07','2013-07-07 17:39:43',1),(308,1,'2013-07-07','2013-07-07 17:40:03',1),(309,1,'2013-07-07','2013-07-07 17:40:54',1),(310,1,'2013-07-07','2013-07-07 17:41:16',1),(311,1,'2013-07-07','2013-07-07 17:41:27',1),(312,1,'2013-07-07','2013-07-07 17:42:06',0),(313,1,'2013-07-07','2013-07-07 17:42:24',0),(314,1,'2013-07-07','2013-07-07 17:46:12',0),(315,1,'2013-07-07','2013-07-07 17:48:40',0),(316,1,'2013-07-07','2013-07-07 17:52:11',0),(317,1,'2013-07-07','2013-07-07 17:52:17',0),(318,1,'2013-07-07','2013-07-07 17:55:57',0),(319,110,'2013-07-07','2013-07-07 17:56:16',0),(320,2,'2013-07-07','2013-07-07 17:56:17',1),(321,51,'2013-07-07','2013-07-07 17:56:21',1),(322,68,'2013-07-07','2013-07-07 17:56:25',1),(323,68,'2013-07-07','2013-07-07 17:56:27',1),(324,68,'2013-07-07','2013-07-07 17:56:27',1),(325,1,'2013-07-07','2013-07-07 17:56:31',1),(326,1,'2013-07-07','2013-07-07 17:56:47',1),(327,1,'2013-07-07','2013-07-07 17:56:47',1),(328,1,'2013-07-07','2013-07-07 17:59:05',1),(329,1,'2013-07-07','2013-07-07 17:59:10',1),(330,1,'2013-07-07','2013-07-07 17:59:34',1),(331,1,'2013-07-07','2013-07-07 17:59:40',1),(332,1,'2013-07-07','2013-07-07 18:00:07',1),(333,1,'2013-07-07','2013-07-07 18:01:17',1),(334,1,'2013-07-07','2013-07-07 18:03:44',1),(335,1,'2013-07-07','2013-07-07 18:10:11',1),(336,1,'2013-07-07','2013-07-07 18:12:27',1),(337,1,'2013-07-07','2013-07-07 18:18:07',1),(338,1,'2013-07-07','2013-07-07 18:18:32',1),(339,1,'2013-07-07','2013-07-07 18:24:04',1),(340,1,'2013-07-07','2013-07-07 18:29:21',1),(341,1,'2013-07-07','2013-07-07 18:30:34',1),(342,1,'2013-07-07','2013-07-07 18:31:00',1),(343,1,'2013-07-07','2013-07-07 18:31:40',1),(344,1,'2013-07-07','2013-07-07 18:32:16',1),(345,1,'2013-07-07','2013-07-07 18:32:49',1),(346,1,'2013-07-07','2013-07-07 18:33:16',1),(347,1,'2013-07-07','2013-07-07 18:33:38',1),(348,1,'2013-07-07','2013-07-07 18:35:28',1),(349,1,'2013-07-07','2013-07-07 18:35:58',1),(350,2,'2013-07-07','2013-07-07 18:36:49',1),(351,131,'2013-07-07','2013-07-07 18:36:53',1),(352,131,'2013-07-07','2013-07-07 18:37:34',1),(353,131,'2013-07-07','2013-07-07 18:37:35',1),(354,1,'2013-07-07','2013-07-07 18:39:11',1),(355,1,'2013-07-07','2013-07-07 18:39:24',1),(356,1,'2013-07-07','2013-07-07 18:39:28',1),(357,110,'2013-07-07','2013-07-07 18:40:11',1),(358,1,'2013-07-07','2013-07-07 18:40:11',0),(359,110,'2013-07-07','2013-07-07 18:40:27',0),(360,110,'2013-07-07','2013-07-07 18:40:31',0),(361,2,'2013-07-07','2013-07-07 18:40:32',1),(362,51,'2013-07-07','2013-07-07 18:40:41',1),(363,68,'2013-07-07','2013-07-07 18:40:54',1),(364,68,'2013-07-07','2013-07-07 18:40:56',1),(365,68,'2013-07-07','2013-07-07 18:40:56',1),(366,1,'2013-07-07','2013-07-07 18:41:04',1),(367,1,'2013-07-07','2013-07-07 18:41:12',1),(368,2,'2013-07-07','2013-07-07 18:42:43',1),(369,131,'2013-07-07','2013-07-07 18:42:49',1),(370,131,'2013-07-07','2013-07-07 18:43:42',1),(371,131,'2013-07-07','2013-07-07 18:43:43',1),(372,1,'2013-07-08','2013-07-08 18:45:24',1),(373,105,'2013-07-08','2013-07-08 18:45:32',1),(374,1,'2013-07-08','2013-07-08 18:47:22',1),(375,2,'2013-07-08','2013-07-08 18:47:44',1),(376,131,'2013-07-08','2013-07-08 18:48:15',1),(377,1,'2013-07-08','2013-07-08 18:48:18',1),(378,1,'2013-07-08','2013-07-08 18:55:41',1),(379,1,'2013-07-08','2013-07-08 18:56:39',1),(380,1,'2013-07-08','2013-07-08 18:57:32',1),(381,2,'2013-07-08','2013-07-08 18:58:10',1),(382,1,'2013-07-08','2013-07-08 18:58:15',1),(383,40,'2013-07-08','2013-07-08 18:58:18',1),(384,40,'2013-07-08','2013-07-08 18:58:28',1),(385,40,'2013-07-08','2013-07-08 18:58:29',1),(386,40,'2013-07-08','2013-07-08 18:58:31',1),(387,1,'2013-07-08','2013-07-08 18:58:56',1),(388,141,'2013-07-08','2013-07-08 19:00:35',1),(389,40,'2013-07-08','2013-07-08 19:00:35',1),(390,1,'2013-07-08','2013-07-08 19:00:44',1),(391,1,'2013-07-08','2013-07-08 19:01:22',1),(392,1,'2013-07-08','2013-07-08 19:01:37',1),(393,2,'2013-07-08','2013-07-08 19:01:48',1),(394,40,'2013-07-08','2013-07-08 19:01:51',1),(395,40,'2013-07-08','2013-07-08 19:01:53',1),(396,1,'2013-07-08','2013-07-08 19:02:28',1),(397,1,'2013-07-08','2013-07-08 19:02:36',1),(398,123,'2013-07-08','2013-07-08 19:02:38',1),(399,125,'2013-07-08','2013-07-08 19:02:41',1),(400,123,'2013-07-08','2013-07-08 19:02:43',1),(401,1,'2013-07-08','2013-07-08 19:02:45',1),(402,2,'2013-07-08','2013-07-08 19:03:17',1),(403,35,'2013-07-08','2013-07-08 19:03:58',1),(404,1,'2013-07-08','2013-07-08 19:08:20',1),(405,2,'2013-07-08','2013-07-08 19:08:30',1),(406,131,'2013-07-08','2013-07-08 20:13:27',1),(407,131,'2013-07-08','2013-07-08 20:14:11',1),(408,131,'2013-07-08','2013-07-08 20:14:12',1),(409,1,'2013-07-08','2013-07-08 20:14:30',1),(410,131,'2013-07-08','2013-07-08 20:14:35',1),(411,1,'2013-07-08','2013-07-08 20:14:40',1),(412,1,'2013-07-08','2013-07-08 20:18:16',1),(413,131,'2013-07-08','2013-07-08 20:18:26',1),(414,131,'2013-07-08','2013-07-08 20:19:02',1),(415,131,'2013-07-08','2013-07-08 20:19:03',1),(416,1,'2013-07-08','2013-07-08 20:20:20',1),(417,2,'2013-07-08','2013-07-08 20:20:36',1),(418,40,'2013-07-08','2013-07-08 20:20:39',1),(419,40,'2013-07-08','2013-07-08 20:20:44',1),(420,40,'2013-07-08','2013-07-08 20:20:45',1),(421,40,'2013-07-08','2013-07-08 20:20:48',1),(422,142,'2013-07-08','2013-07-08 20:23:49',1),(423,40,'2013-07-08','2013-07-08 20:23:49',1),(424,1,'2013-07-08','2013-07-08 20:23:55',1),(425,1,'2013-07-08','2013-07-08 20:24:11',1),(426,1,'2013-07-08','2013-07-08 20:24:14',1),(427,1,'2013-07-08','2013-07-08 20:25:28',1),(428,1,'2013-07-08','2013-07-08 20:26:22',1),(429,1,'2013-07-08','2013-07-08 20:28:23',1),(430,1,'2013-07-08','2013-07-08 20:28:35',1),(431,1,'2013-07-08','2013-07-08 20:29:22',1),(432,1,'2013-07-08','2013-07-08 20:29:39',1),(433,123,'2013-07-08','2013-07-08 20:29:41',1),(434,123,'2013-07-08','2013-07-08 20:29:46',1),(435,123,'2013-07-08','2013-07-08 20:30:13',1),(436,123,'2013-07-08','2013-07-08 20:32:03',1),(437,123,'2013-07-08','2013-07-08 20:32:09',1),(438,123,'2013-07-08','2013-07-08 20:32:58',1),(439,125,'2013-07-08','2013-07-08 20:33:07',1),(440,125,'2013-07-08','2013-07-08 20:33:11',1),(441,125,'2013-07-08','2013-07-08 20:33:38',1),(442,126,'2013-07-08','2013-07-08 20:33:40',1),(443,126,'2013-07-08','2013-07-08 20:33:43',1),(444,126,'2013-07-08','2013-07-08 20:34:08',1),(445,127,'2013-07-08','2013-07-08 20:34:09',1),(446,127,'2013-07-08','2013-07-08 20:34:13',1),(447,127,'2013-07-08','2013-07-08 20:34:41',1),(448,128,'2013-07-08','2013-07-08 20:34:48',1),(449,128,'2013-07-08','2013-07-08 20:34:52',1),(450,128,'2013-07-08','2013-07-08 20:35:10',1),(451,129,'2013-07-08','2013-07-08 20:35:13',1),(452,129,'2013-07-08','2013-07-08 20:35:17',1),(453,129,'2013-07-08','2013-07-08 20:35:38',1),(454,130,'2013-07-08','2013-07-08 20:35:50',1),(455,130,'2013-07-08','2013-07-08 20:35:54',1),(456,130,'2013-07-08','2013-07-08 20:42:13',1),(457,2,'2013-07-08','2013-07-08 20:42:26',1),(458,51,'2013-07-08','2013-07-08 20:42:29',1),(459,68,'2013-07-08','2013-07-08 20:42:34',1),(460,68,'2013-07-08','2013-07-08 20:42:35',1),(461,68,'2013-07-08','2013-07-08 20:42:36',1),(462,130,'2013-07-08','2013-07-08 20:42:41',1),(463,130,'2013-07-08','2013-07-08 20:42:56',1),(464,130,'2013-07-08','2013-07-08 20:44:19',1),(465,130,'2013-07-08','2013-07-08 20:44:56',1),(466,130,'2013-07-08','2013-07-08 20:45:19',1),(467,2,'2013-07-08','2013-07-08 20:49:07',1),(468,46,'2013-07-08','2013-07-08 20:49:15',1),(469,46,'2013-07-08','2013-07-08 20:49:20',1),(470,46,'2013-07-08','2013-07-08 20:49:21',1),(471,130,'2013-07-08','2013-07-08 20:51:54',1),(472,130,'2013-07-08','2013-07-08 20:51:59',1),(473,130,'2013-07-08','2013-07-08 20:52:48',1),(474,130,'2013-07-08','2013-07-08 20:53:51',1),(475,130,'2013-07-08','2013-07-08 20:54:05',1),(476,130,'2013-07-08','2013-07-08 20:55:14',1),(477,130,'2013-07-08','2013-07-08 20:57:49',1),(478,130,'2013-07-08','2013-07-08 20:58:12',1),(479,130,'2013-07-08','2013-07-08 21:01:24',1),(480,125,'2013-07-08','2013-07-08 21:01:27',1),(481,130,'2013-07-08','2013-07-08 21:01:30',1),(482,130,'2013-07-08','2013-07-08 21:05:04',1),(483,130,'2013-07-08','2013-07-08 21:05:49',1),(484,130,'2013-07-08','2013-07-08 21:05:54',1),(485,130,'2013-07-08','2013-07-08 21:07:04',1),(486,130,'2013-07-08','2013-07-08 21:07:23',1),(487,130,'2013-07-08','2013-07-08 21:07:54',1),(488,130,'2013-07-08','2013-07-08 21:08:20',1),(489,130,'2013-07-08','2013-07-08 21:08:48',1),(490,130,'2013-07-08','2013-07-08 21:10:03',1),(491,130,'2013-07-08','2013-07-08 21:10:19',1),(492,130,'2013-07-08','2013-07-08 21:15:16',1),(493,123,'2013-07-08','2013-07-08 21:15:28',1),(494,130,'2013-07-08','2013-07-08 21:15:30',1),(495,129,'2013-07-08','2013-07-08 21:15:34',1),(496,129,'2013-07-08','2013-07-08 21:15:38',1),(497,129,'2013-07-08','2013-07-08 21:15:58',1),(498,129,'2013-07-08','2013-07-08 21:20:48',1),(499,129,'2013-07-08','2013-07-08 21:23:17',1),(500,129,'2013-07-08','2013-07-08 21:23:25',1),(501,129,'2013-07-08','2013-07-08 21:24:15',1),(502,129,'2013-07-08','2013-07-08 21:24:38',1),(503,129,'2013-07-08','2013-07-08 21:25:18',1),(504,129,'2013-07-08','2013-07-08 21:26:03',1),(505,128,'2013-07-08','2013-07-08 21:26:17',1),(506,128,'2013-07-08','2013-07-08 21:26:20',1),(507,128,'2013-07-08','2013-07-08 21:26:45',1),(508,127,'2013-07-08','2013-07-08 21:26:55',1),(509,127,'2013-07-08','2013-07-08 21:26:59',1),(510,127,'2013-07-08','2013-07-08 21:27:19',1),(511,126,'2013-07-08','2013-07-08 21:27:22',1),(512,126,'2013-07-08','2013-07-08 21:27:28',1),(513,126,'2013-07-08','2013-07-08 21:27:48',1),(514,125,'2013-07-08','2013-07-08 21:27:51',1),(515,125,'2013-07-08','2013-07-08 21:27:54',1),(516,125,'2013-07-08','2013-07-08 21:28:13',1),(517,123,'2013-07-08','2013-07-08 21:28:15',1),(518,123,'2013-07-08','2013-07-08 21:28:18',1),(519,2,'2013-07-08','2013-07-08 21:29:07',1),(520,40,'2013-07-08','2013-07-08 21:29:10',1),(521,40,'2013-07-08','2013-07-08 21:29:12',1),(522,2,'2013-07-08','2013-07-08 21:29:30',1),(523,51,'2013-07-08','2013-07-08 21:29:35',1),(524,68,'2013-07-08','2013-07-08 21:29:38',1),(525,68,'2013-07-08','2013-07-08 21:29:39',1),(526,68,'2013-07-08','2013-07-08 21:29:40',1),(527,1,'2013-07-08','2013-07-08 21:29:42',1),(528,1,'2013-07-08','2013-07-08 21:29:47',1),(529,2,'2013-07-08','2013-07-08 21:36:15',1),(530,8,'2013-07-08','2013-07-08 21:36:19',1),(531,2,'2013-07-08','2013-07-08 21:36:31',1),(532,7,'2013-07-08','2013-07-08 21:36:37',1),(533,2,'2013-07-08','2013-07-08 21:37:38',1),(534,32,'2013-07-08','2013-07-08 21:37:48',1),(535,32,'2013-07-08','2013-07-08 21:37:52',1),(536,32,'2013-07-08','2013-07-08 21:38:23',1),(537,32,'2013-07-08','2013-07-08 21:38:23',1),(538,32,'2013-07-08','2013-07-08 21:38:29',1),(539,32,'2013-07-08','2013-07-08 21:38:36',1),(540,32,'2013-07-08','2013-07-08 21:38:36',1),(541,33,'2013-07-08','2013-07-08 21:38:39',1),(542,33,'2013-07-08','2013-07-08 21:39:06',1),(543,32,'2013-07-08','2013-07-08 21:39:07',1),(544,2,'2013-07-08','2013-07-08 21:39:15',1),(545,7,'2013-07-08','2013-07-08 21:39:50',1),(546,6,'2013-07-08','2013-07-08 21:40:18',1),(547,7,'2013-07-08','2013-07-08 21:40:18',1),(548,6,'2013-07-08','2013-07-08 21:40:54',1),(549,7,'2013-07-08','2013-07-08 21:40:54',1),(550,6,'2013-07-08','2013-07-08 21:42:42',1),(551,7,'2013-07-08','2013-07-08 21:42:42',1),(552,6,'2013-07-08','2013-07-08 21:43:15',1),(553,7,'2013-07-08','2013-07-08 21:43:15',1),(554,6,'2013-07-08','2013-07-08 21:43:28',1),(555,7,'2013-07-08','2013-07-08 21:43:28',1),(556,1,'2013-07-08','2013-07-08 21:44:13',1),(557,1,'2013-07-08','2013-07-08 21:44:16',1),(558,1,'2013-07-08','2013-07-08 21:45:35',1),(559,145,'2013-07-08','2013-07-08 21:45:55',1),(560,145,'2013-07-08','2013-07-08 21:45:59',1),(561,2,'2013-07-08','2013-07-08 21:47:20',1),(562,32,'2013-07-08','2013-07-08 21:47:24',1),(563,32,'2013-07-08','2013-07-08 21:47:29',1),(564,144,'2013-07-08','2013-07-08 21:47:29',1),(565,1,'2013-07-08','2013-07-08 21:47:39',1),(566,123,'2013-07-08','2013-07-08 21:47:41',1),(567,145,'2013-07-08','2013-07-08 21:47:48',1),(568,145,'2013-07-08','2013-07-08 21:47:53',1),(569,145,'2013-07-08','2013-07-08 21:48:17',1),(570,145,'2013-07-08','2013-07-08 21:48:43',1),(571,145,'2013-07-08','2013-07-08 21:48:59',1),(572,145,'2013-07-08','2013-07-08 21:49:15',1),(573,2,'2013-07-08','2013-07-08 21:51:18',1),(574,51,'2013-07-08','2013-07-08 21:51:21',1),(575,67,'2013-07-08','2013-07-08 21:52:36',1),(576,67,'2013-07-08','2013-07-08 21:52:50',1),(577,67,'2013-07-08','2013-07-08 21:52:50',1),(578,2,'2013-07-08','2013-07-08 21:52:56',1),(579,51,'2013-07-08','2013-07-08 21:52:59',1),(580,68,'2013-07-08','2013-07-08 21:53:05',1),(581,68,'2013-07-08','2013-07-08 21:53:07',1),(582,68,'2013-07-08','2013-07-08 21:53:07',1),(583,145,'2013-07-08','2013-07-08 21:53:10',1),(584,145,'2013-07-08','2013-07-08 21:55:55',1),(585,146,'2013-07-08','2013-07-08 21:55:59',1),(586,146,'2013-07-08','2013-07-08 21:56:03',1),(587,146,'2013-07-08','2013-07-08 21:58:29',1),(588,146,'2013-07-08','2013-07-08 21:58:59',1),(589,126,'2013-07-08','2013-07-08 21:59:03',1),(590,126,'2013-07-08','2013-07-08 21:59:15',1),(591,2,'2013-07-08','2013-07-08 21:59:26',1),(592,7,'2013-07-08','2013-07-08 21:59:29',1),(593,6,'2013-07-08','2013-07-08 21:59:49',1),(594,7,'2013-07-08','2013-07-08 21:59:49',1),(595,2,'2013-07-08','2013-07-08 22:00:02',1),(596,8,'2013-07-08','2013-07-08 22:00:05',1),(597,8,'2013-07-08','2013-07-08 22:00:07',1),(598,8,'2013-07-08','2013-07-08 22:00:10',1),(599,8,'2013-07-08','2013-07-08 22:00:12',1),(600,126,'2013-07-08','2013-07-08 22:01:55',1),(601,126,'2013-07-08','2013-07-08 22:03:23',1),(602,126,'2013-07-08','2013-07-08 22:03:47',1),(603,126,'2013-07-08','2013-07-08 22:04:09',1),(604,150,'2013-07-08','2013-07-08 22:04:40',1),(605,150,'2013-07-08','2013-07-08 22:04:44',1),(606,150,'2013-07-08','2013-07-08 22:06:01',1),(607,150,'2013-07-08','2013-07-08 22:06:57',1),(608,2,'2013-07-08','2013-07-08 22:08:47',1),(609,131,'2013-07-08','2013-07-08 22:08:50',1),(610,131,'2013-07-08','2013-07-08 22:09:38',1),(611,131,'2013-07-08','2013-07-08 22:09:39',1);
/*!40000 ALTER TABLE `PageStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemeStyles`
--

DROP TABLE IF EXISTS `PageThemeStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemeStyles`
--

LOCK TABLES `PageThemeStyles` WRITE;
/*!40000 ALTER TABLE `PageThemeStyles` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageThemeStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageThemes`
--

DROP TABLE IF EXISTS `PageThemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageThemes`
--

LOCK TABLES `PageThemes` WRITE;
/*!40000 ALTER TABLE `PageThemes` DISABLE KEYS */;
INSERT INTO `PageThemes` VALUES (1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0),(2,'greensalad','Green Salad Theme','This is concrete5\'s Green Salad site theme.',0),(3,'dark_chocolate','Dark Chocolate','Dark Chocolate is concrete5\'s default theme in black.',0),(4,'greek_yogurt','Greek Yogurt','An elegant theme for concrete5.',0),(5,'atlas_hostel','Atlas Hostels','Theme for atlas hostels',0);
/*!40000 ALTER TABLE `PageThemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypeAttributes`
--

DROP TABLE IF EXISTS `PageTypeAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypeAttributes`
--

LOCK TABLES `PageTypeAttributes` WRITE;
/*!40000 ALTER TABLE `PageTypeAttributes` DISABLE KEYS */;
INSERT INTO `PageTypeAttributes` VALUES (6,1),(6,2),(6,3),(6,14),(7,1),(7,2),(7,3);
/*!40000 ALTER TABLE `PageTypeAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTypes`
--

DROP TABLE IF EXISTS `PageTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTypes`
--

LOCK TABLES `PageTypes` WRITE;
/*!40000 ALTER TABLE `PageTypes` DISABLE KEYS */;
INSERT INTO `PageTypes` VALUES (1,'core_stack','main.png','Stack',1,0),(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0),(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0),(4,'right_sidebar','right_sidebar.png','Home Page',0,0),(5,'three_column_common','right_sidebar.png','Three Column Common',0,0),(6,'attraction_item','template1.png','Top Attraction Item',0,0),(7,'full_width','main.png','Full Width',0,0);
/*!40000 ALTER TABLE `PageTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageWorkflowProgress`
--

DROP TABLE IF EXISTS `PageWorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageWorkflowProgress`
--

LOCK TABLES `PageWorkflowProgress` WRITE;
/*!40000 ALTER TABLE `PageWorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `PageWorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pages`
--

DROP TABLE IF EXISTS `Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` varchar(255) DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pages`
--

LOCK TABLES `Pages` WRITE;
/*!40000 ALTER TABLE `Pages` DISABLE KEYS */;
INSERT INTO `Pages` VALUES (1,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,18,0,0,0,-1,'0',0,0),(2,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,-1,'0',0,1),(3,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,-1,'0',0,1),(4,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,-1,'0',0,1),(5,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,-1,'0',0,1),(6,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,-1,'0',0,1),(7,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,-1,'0',0,1),(8,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,-1,'0',0,1),(9,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,-1,'0',0,1),(10,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,-1,'0',0,1),(11,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,-1,'0',0,1),(12,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,-1,'0',0,1),(13,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,-1,'0',0,1),(14,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,-1,'0',0,1),(15,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,6,3,2,0,-1,'0',0,1),(16,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,-1,'0',0,1),(17,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,-1,'0',0,1),(18,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,-1,'0',0,1),(19,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,-1,'0',0,1),(20,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,-1,'0',0,1),(21,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,15,0,-1,'0',0,1),(22,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,-1,'0',0,1),(23,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,22,0,-1,'0',0,1),(24,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,22,0,-1,'0',0,1),(25,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,22,0,-1,'0',0,1),(26,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,22,0,-1,'0',0,1),(27,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,-1,'0',0,1),(28,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,27,0,-1,'0',0,1),(29,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,28,0,-1,'0',0,1),(30,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,28,0,-1,'0',0,1),(31,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,28,0,-1,'0',0,1),(32,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,27,0,-1,'0',0,1),(33,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,32,0,-1,'0',0,1),(34,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,27,0,-1,'0',0,1),(35,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,27,0,-1,'0',0,1),(36,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,-1,'0',0,1),(37,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/list.php',0,NULL,0,1,0,0,36,0,-1,'0',0,1),(38,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,36,0,-1,'0',0,1),(39,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,4,7,2,0,-1,'0',0,1),(40,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,39,0,-1,'0',0,1),(41,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,39,0,-1,'0',0,1),(42,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,40,0,-1,'0',0,1),(43,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,39,0,-1,'0',0,1),(44,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,-1,'0',0,1),(45,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,-1,'0',0,1),(46,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,44,0,-1,'0',0,1),(47,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,44,0,-1,'0',0,1),(48,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,44,0,-1,'0',0,1),(49,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,44,0,-1,'0',0,1),(50,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,44,0,-1,'0',0,1),(51,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,10,2,0,-1,'0',0,1),(52,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,51,0,-1,'0',0,1),(53,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,52,0,-1,'0',0,1),(54,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,52,0,-1,'0',0,1),(55,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,52,0,-1,'0',0,1),(56,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,52,0,-1,'0',0,1),(57,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,52,0,-1,'0',0,1),(58,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,52,0,-1,'0',0,1),(59,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,6,1,51,0,-1,'0',0,1),(60,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,59,0,-1,'0',0,1),(61,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk_seo_tool.php',0,NULL,0,1,0,1,59,0,-1,'0',0,1),(62,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,2,59,0,-1,'0',0,1),(63,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,59,0,-1,'0',0,1),(64,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,4,59,0,-1,'0',0,1),(65,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,5,59,0,-1,'0',0,1),(66,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,51,0,-1,'0',0,1),(67,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,66,0,-1,'0',0,1),(68,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,66,0,-1,'0',0,1),(69,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,66,0,-1,'0',0,1),(70,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,10,3,51,0,-1,'0',0,1),(71,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,70,0,-1,'0',0,1),(72,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,70,0,-1,'0',0,1),(73,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,70,0,-1,'0',0,1),(74,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,70,0,-1,'0',0,1),(75,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,4,70,0,-1,'0',0,1),(76,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,5,70,0,-1,'0',0,1),(77,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,6,70,0,-1,'0',0,1),(78,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,7,70,0,-1,'0',0,1),(79,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,8,70,0,-1,'0',0,1),(80,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,9,70,0,-1,'0',0,1),(81,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,51,0,-1,'0',0,1),(82,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,81,0,-1,'0',0,1),(83,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,81,0,-1,'0',0,1),(84,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,81,0,-1,'0',0,1),(85,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,51,0,-1,'0',0,1),(86,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,85,0,-1,'0',0,1),(87,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,85,0,-1,'0',0,1),(88,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,51,0,-1,'0',0,1),(89,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,88,0,-1,'0',0,1),(90,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,88,0,-1,'0',0,1),(91,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,7,51,0,-1,'0',0,1),(92,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,91,0,-1,'0',0,1),(93,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,91,0,-1,'0',0,1),(94,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,91,0,-1,'0',0,1),(95,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,91,0,-1,'0',0,1),(96,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,4,91,0,-1,'0',0,1),(97,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,51,0,-1,'0',0,1),(98,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,97,0,-1,'0',0,1),(99,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,97,0,-1,'0',0,1),(100,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,97,0,-1,'0',0,1),(101,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,32,0,-1,'0',0,1),(102,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(103,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(104,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(105,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,-1,'0',0,1),(106,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,-1,'0',0,1),(107,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(108,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,3,0,0,0,-1,'0',0,1),(109,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,4,0,0,0,-1,'0',0,1),(110,0,1,0,NULL,NULL,NULL,1,110,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(111,0,1,0,NULL,NULL,NULL,1,111,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1),(112,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,-1,'0',0,1),(113,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,112,0,-1,'0',0,1),(114,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,112,0,-1,'0',0,1),(115,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,112,0,-1,'0',0,1),(116,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,112,0,-1,'0',0,1),(117,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(118,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1),(119,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,-1,'0',0,1),(120,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members.php',0,NULL,0,1,0,2,1,0,-1,'0',0,1),(121,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(122,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(123,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,1,0,-1,'0',0,0),(124,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,109,0,-1,'0',0,1),(125,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,1,0,-1,'0',0,0),(126,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,1,0,-1,'0',0,0),(127,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,1,0,-1,'0',0,0),(128,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,1,0,-1,'0',0,0),(129,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,5,8,1,0,-1,'0',0,0),(130,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,5,9,1,0,-1,'0',0,0),(131,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/designer_content.php',0,NULL,0,1,0,3,39,1,-1,'0',0,1),(132,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(133,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,0,108,0,-1,'0',0,1),(134,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,1,108,0,-1,'0',0,1),(135,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,2,108,0,-1,'0',0,1),(136,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,130,0,-1,'0',0,0),(137,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,130,0,-1,'0',0,0),(138,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,130,0,-1,'0',0,0),(139,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,130,0,-1,'0',0,0),(140,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,130,0,-1,'0',0,0),(141,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,109,0,-1,'0',0,1),(142,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,109,0,-1,'0',0,1),(143,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,109,0,-1,'0',0,1),(144,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0),(145,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,129,0,-1,'0',0,0),(146,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,129,0,-1,'0',0,0),(148,0,1,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,'http://www.atlashostelsplc.com',1,1,0,2,129,0,-1,'0',0,0),(149,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,129,0,-1,'0',0,0),(150,0,1,1,1,'2013-07-08 23:06:57','2013-07-08 23:08:10',1,1,'PARENT',NULL,0,NULL,0,1,0,3,129,0,-1,'0',0,0);
/*!40000 ALTER TABLE `Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccess`
--

DROP TABLE IF EXISTS `PermissionAccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccess`
--

LOCK TABLES `PermissionAccess` WRITE;
/*!40000 ALTER TABLE `PermissionAccess` DISABLE KEYS */;
INSERT INTO `PermissionAccess` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1);
/*!40000 ALTER TABLE `PermissionAccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntities`
--

DROP TABLE IF EXISTS `PermissionAccessEntities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntities`
--

LOCK TABLES `PermissionAccessEntities` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntities` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntities` VALUES (1,1),(2,1),(3,1),(4,5),(5,6);
/*!40000 ALTER TABLE `PermissionAccessEntities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroupSets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroupSets`
--

LOCK TABLES `PermissionAccessEntityGroupSets` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityGroupSets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityGroups`
--

DROP TABLE IF EXISTS `PermissionAccessEntityGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

LOCK TABLES `PermissionAccessEntityGroups` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityGroups` VALUES (1,1,3),(2,2,1),(3,3,2);
/*!40000 ALTER TABLE `PermissionAccessEntityGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypeCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

LOCK TABLES `PermissionAccessEntityTypeCategories` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypeCategories` VALUES (1,1),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(2,1),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(3,1),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(4,1),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(5,1),(6,6),(6,7);
/*!40000 ALTER TABLE `PermissionAccessEntityTypeCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityTypes`
--

DROP TABLE IF EXISTS `PermissionAccessEntityTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

LOCK TABLES `PermissionAccessEntityTypes` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` DISABLE KEYS */;
INSERT INTO `PermissionAccessEntityTypes` VALUES (1,'group','Group',0),(2,'user','User',0),(3,'group_set','Group Set',0),(4,'group_combination','Group Combination',0),(5,'page_owner','Page Owner',0),(6,'file_uploader','File Uploader',0);
/*!40000 ALTER TABLE `PermissionAccessEntityTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessEntityUsers`
--

DROP TABLE IF EXISTS `PermissionAccessEntityUsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

LOCK TABLES `PermissionAccessEntityUsers` WRITE;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessEntityUsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessList`
--

DROP TABLE IF EXISTS `PermissionAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessList`
--

LOCK TABLES `PermissionAccessList` WRITE;
/*!40000 ALTER TABLE `PermissionAccessList` DISABLE KEYS */;
INSERT INTO `PermissionAccessList` VALUES (1,1,0,10),(2,1,0,10),(3,1,0,10),(4,1,0,10),(5,1,0,10),(6,1,0,10),(7,1,0,10),(8,1,0,10),(9,1,0,10),(10,1,0,10),(11,1,0,10),(12,1,0,10),(13,1,0,10),(14,1,0,10),(15,1,0,10),(16,1,0,10),(17,1,0,10),(18,1,0,10),(19,1,0,10),(20,1,0,10),(21,1,0,10),(22,1,0,10),(23,1,0,10),(24,1,0,10),(25,1,0,10),(26,1,0,10),(27,1,0,10),(28,1,0,10),(29,1,0,10),(30,1,0,10),(31,1,0,10),(32,1,0,10),(33,2,0,10),(34,2,0,10),(34,3,0,10),(35,2,0,10),(36,1,0,10),(36,2,0,10),(37,1,0,10),(38,1,0,10),(39,1,0,10),(40,1,0,10),(41,1,0,10),(42,1,0,10),(43,1,0,10),(44,1,0,10),(45,2,0,10),(46,1,0,10),(47,1,0,10),(48,1,0,10),(49,1,0,10),(50,1,0,10),(51,1,0,10),(52,1,0,10),(53,1,0,10),(54,1,0,10),(55,1,0,10),(56,1,0,10),(57,1,0,10),(58,1,0,10),(59,1,0,10);
/*!40000 ALTER TABLE `PermissionAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAccessWorkflows`
--

DROP TABLE IF EXISTS `PermissionAccessWorkflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAccessWorkflows`
--

LOCK TABLES `PermissionAccessWorkflows` WRITE;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionAccessWorkflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionAssignments`
--

DROP TABLE IF EXISTS `PermissionAssignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionAssignments`
--

LOCK TABLES `PermissionAssignments` WRITE;
/*!40000 ALTER TABLE `PermissionAssignments` DISABLE KEYS */;
INSERT INTO `PermissionAssignments` VALUES (1,16),(2,17),(3,54),(4,55),(5,56),(6,57),(7,59),(8,60),(9,61),(10,62),(11,63),(12,65),(13,66),(14,67),(15,68),(16,69),(17,70);
/*!40000 ALTER TABLE `PermissionAssignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionDurationObjects`
--

DROP TABLE IF EXISTS `PermissionDurationObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionDurationObjects`
--

LOCK TABLES `PermissionDurationObjects` WRITE;
/*!40000 ALTER TABLE `PermissionDurationObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionDurationObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeyCategories`
--

DROP TABLE IF EXISTS `PermissionKeyCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeyCategories`
--

LOCK TABLES `PermissionKeyCategories` WRITE;
/*!40000 ALTER TABLE `PermissionKeyCategories` DISABLE KEYS */;
INSERT INTO `PermissionKeyCategories` VALUES (1,'page',NULL),(2,'single_page',NULL),(3,'stack',NULL),(4,'composer_page',NULL),(5,'user',NULL),(6,'file_set',NULL),(7,'file',NULL),(8,'area',NULL),(9,'block_type',NULL),(10,'block',NULL),(11,'admin',NULL),(12,'sitemap',NULL),(13,'marketplace_newsflow',NULL),(14,'basic_workflow',NULL);
/*!40000 ALTER TABLE `PermissionKeyCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionKeys`
--

DROP TABLE IF EXISTS `PermissionKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionKeys`
--

LOCK TABLES `PermissionKeys` WRITE;
/*!40000 ALTER TABLE `PermissionKeys` DISABLE KEYS */;
INSERT INTO `PermissionKeys` VALUES (1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0),(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0),(3,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0),(4,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0),(5,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0),(6,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0),(7,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0),(8,'edit_page_type','Change Page Type',0,0,'Ability to change just the page type for this page, also check out Theme permissions.',1,0),(9,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0),(10,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0),(11,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0),(12,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0),(13,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0),(14,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0),(15,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0),(16,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',9,0),(17,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',9,0),(18,'view_area','View Area',0,0,'Can view the area and its contents.',8,0),(19,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',8,0),(20,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',8,0),(21,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',8,0),(22,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',8,0),(23,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',8,0),(24,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',8,0),(25,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',8,0),(26,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',8,0),(27,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',10,0),(28,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',10,0),(29,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',10,0),(30,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',10,0),(31,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',10,0),(32,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',10,0),(33,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',10,0),(34,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',6,0),(35,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',6,0),(36,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0),(37,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',6,0),(38,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',6,0),(39,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',6,0),(40,'delete_file_set','Delete File Set',0,0,'',6,0),(41,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',6,0),(42,'add_file','Add File',0,1,'Can add files to set.',6,0),(43,'view_file','View Files',0,0,'Can view and download files.',7,0),(44,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',7,0),(45,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',7,0),(46,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',7,0),(47,'copy_file','Copy File',0,0,'Can copy file.',7,0),(48,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',7,0),(49,'delete_file','Delete File',0,0,'Can delete file.',7,0),(50,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0),(51,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0),(52,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0),(53,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0),(54,'access_user_search','Access User Search',0,1,'',5,0),(55,'edit_user_properties','Edit User Details',0,1,NULL,5,0),(56,'view_user_attributes','View User Attributes',0,1,NULL,5,0),(57,'activate_user','Activate/Deactivate User',0,0,NULL,5,0),(58,'sudo','Sign in as User',0,0,NULL,5,0),(59,'delete_user','Delete User',0,0,NULL,5,0),(60,'access_group_search','Access Group Search',0,0,'',5,0),(61,'edit_groups','Edit Groups',0,0,'',5,0),(62,'assign_user_groups','Assign Groups to User',0,1,'',5,0),(63,'backup','Perform Backups',0,0,NULL,11,0),(64,'access_task_permissions','Access Task Permissions',0,0,NULL,11,0),(65,'access_sitemap','Access Sitemap',0,0,NULL,12,0),(66,'access_page_defaults','Access Page Type Defaults',0,0,NULL,11,0),(67,'empty_trash','Empty Trash',0,0,NULL,11,0),(68,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0),(69,'install_packages','Install Packages',0,0,NULL,13,0),(70,'view_newsflow','View Newsflow',0,0,NULL,13,0);
/*!40000 ALTER TABLE `PermissionKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PileContents`
--

DROP TABLE IF EXISTS `PileContents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PileContents`
--

LOCK TABLES `PileContents` WRITE;
/*!40000 ALTER TABLE `PileContents` DISABLE KEYS */;
/*!40000 ALTER TABLE `PileContents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piles`
--

DROP TABLE IF EXISTS `Piles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piles`
--

LOCK TABLES `Piles` WRITE;
/*!40000 ALTER TABLE `Piles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Piles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupRequests`
--

DROP TABLE IF EXISTS `SignupRequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupRequests`
--

LOCK TABLES `SignupRequests` WRITE;
/*!40000 ALTER TABLE `SignupRequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `SignupRequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stacks`
--

DROP TABLE IF EXISTS `Stacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stacks`
--

LOCK TABLES `Stacks` WRITE;
/*!40000 ALTER TABLE `Stacks` DISABLE KEYS */;
INSERT INTO `Stacks` VALUES (1,'Header Nav',20,124),(2,'left hand side',0,141),(3,'right hand side',0,142),(4,'Footer',20,143);
/*!40000 ALTER TABLE `Stacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemAntispamLibraries`
--

DROP TABLE IF EXISTS `SystemAntispamLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemAntispamLibraries`
--

LOCK TABLES `SystemAntispamLibraries` WRITE;
/*!40000 ALTER TABLE `SystemAntispamLibraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemAntispamLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemCaptchaLibraries`
--

DROP TABLE IF EXISTS `SystemCaptchaLibraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

LOCK TABLES `SystemCaptchaLibraries` WRITE;
/*!40000 ALTER TABLE `SystemCaptchaLibraries` DISABLE KEYS */;
INSERT INTO `SystemCaptchaLibraries` VALUES ('securimage','SecurImage (Default)',1,0);
/*!40000 ALTER TABLE `SystemCaptchaLibraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotifications`
--

DROP TABLE IF EXISTS `SystemNotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotifications`
--

LOCK TABLES `SystemNotifications` WRITE;
/*!40000 ALTER TABLE `SystemNotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemNotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeKeys`
--

DROP TABLE IF EXISTS `UserAttributeKeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeKeys`
--

LOCK TABLES `UserAttributeKeys` WRITE;
/*!40000 ALTER TABLE `UserAttributeKeys` DISABLE KEYS */;
INSERT INTO `UserAttributeKeys` VALUES (10,0,0,1,0,1,0,1,1),(11,0,0,1,0,1,0,2,1);
/*!40000 ALTER TABLE `UserAttributeKeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAttributeValues`
--

DROP TABLE IF EXISTS `UserAttributeValues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAttributeValues`
--

LOCK TABLES `UserAttributeValues` WRITE;
/*!40000 ALTER TABLE `UserAttributeValues` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserAttributeValues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserBannedIPs`
--

DROP TABLE IF EXISTS `UserBannedIPs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserBannedIPs`
--

LOCK TABLES `UserBannedIPs` WRITE;
/*!40000 ALTER TABLE `UserBannedIPs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserBannedIPs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups`
--

DROP TABLE IF EXISTS `UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups`
--

LOCK TABLES `UserGroups` WRITE;
/*!40000 ALTER TABLE `UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserOpenIDs`
--

DROP TABLE IF EXISTS `UserOpenIDs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserOpenIDs`
--

LOCK TABLES `UserOpenIDs` WRITE;
/*!40000 ALTER TABLE `UserOpenIDs` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserOpenIDs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessList`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessList`
--

LOCK TABLES `UserPermissionAssignGroupAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionAssignGroupAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionAssignGroupAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionAssignGroupAccessListCustom`
--

LOCK TABLES `UserPermissionAssignGroupAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionAssignGroupAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAccessList`
--

LOCK TABLES `UserPermissionEditPropertyAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionEditPropertyAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionEditPropertyAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessList`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessList`
--

LOCK TABLES `UserPermissionUserSearchAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionUserSearchAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionUserSearchAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionUserSearchAccessListCustom`
--

LOCK TABLES `UserPermissionUserSearchAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionUserSearchAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessList`
--

LOCK TABLES `UserPermissionViewAttributeAccessList` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

DROP TABLE IF EXISTS `UserPermissionViewAttributeAccessListCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPermissionViewAttributeAccessListCustom`
--

LOCK TABLES `UserPermissionViewAttributeAccessListCustom` WRITE;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPermissionViewAttributeAccessListCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessages`
--

DROP TABLE IF EXISTS `UserPrivateMessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessages`
--

LOCK TABLES `UserPrivateMessages` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPrivateMessagesTo`
--

DROP TABLE IF EXISTS `UserPrivateMessagesTo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPrivateMessagesTo`
--

LOCK TABLES `UserPrivateMessagesTo` WRITE;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserPrivateMessagesTo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserSearchIndexAttributes`
--

DROP TABLE IF EXISTS `UserSearchIndexAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

LOCK TABLES `UserSearchIndexAttributes` WRITE;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserSearchIndexAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserValidationHashes`
--

DROP TABLE IF EXISTS `UserValidationHashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserValidationHashes`
--

LOCK TABLES `UserValidationHashes` WRITE;
/*!40000 ALTER TABLE `UserValidationHashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserValidationHashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'admin','phpchap@gmail.com','7b6aa392e1665a3a203124d5df874205','1',-1,1,'2013-07-02 12:13:49',0,1373321378,1373222431,2130706433,1373219776,8,NULL,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersFriends`
--

DROP TABLE IF EXISTS `UsersFriends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersFriends`
--

LOCK TABLES `UsersFriends` WRITE;
/*!40000 ALTER TABLE `UsersFriends` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersFriends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgress`
--

DROP TABLE IF EXISTS `WorkflowProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgress`
--

LOCK TABLES `WorkflowProgress` WRITE;
/*!40000 ALTER TABLE `WorkflowProgress` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowProgress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressCategories`
--

DROP TABLE IF EXISTS `WorkflowProgressCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressCategories`
--

LOCK TABLES `WorkflowProgressCategories` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressCategories` DISABLE KEYS */;
INSERT INTO `WorkflowProgressCategories` VALUES (1,'page',NULL),(2,'file',NULL),(3,'user',NULL);
/*!40000 ALTER TABLE `WorkflowProgressCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowProgressHistory`
--

DROP TABLE IF EXISTS `WorkflowProgressHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowProgressHistory`
--

LOCK TABLES `WorkflowProgressHistory` WRITE;
/*!40000 ALTER TABLE `WorkflowProgressHistory` DISABLE KEYS */;
INSERT INTO `WorkflowProgressHistory` VALUES (1,1,'2013-07-02 11:34:01','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"1\";}'),(2,2,'2013-07-02 11:36:02','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"125\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"2\";}'),(3,3,'2013-07-02 11:36:26','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"126\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"3\";}'),(4,4,'2013-07-02 11:37:35','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"127\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"4\";}'),(5,5,'2013-07-02 11:38:16','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"128\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"5\";}'),(6,6,'2013-07-02 11:39:04','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"6\";}'),(7,7,'2013-07-02 11:40:29','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"7\";}'),(8,8,'2013-07-02 12:24:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"8\";}'),(9,9,'2013-07-02 12:33:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"9\";}'),(10,10,'2013-07-02 12:44:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"126\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"10\";}'),(11,11,'2013-07-02 12:54:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"128\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"11\";}'),(12,12,'2013-07-02 12:55:33','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"12\";}'),(13,13,'2013-07-02 12:57:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"13\";}'),(14,14,'2013-07-02 13:33:42','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"14\";}'),(15,15,'2013-07-02 13:42:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"15\";}'),(16,16,'2013-07-02 14:02:33','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"16\";}'),(17,17,'2013-07-02 15:37:50','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"17\";}'),(18,18,'2013-07-02 15:38:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"134\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"18\";}'),(19,19,'2013-07-02 15:38:56','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"135\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"19\";}'),(20,20,'2013-07-02 16:45:55','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"133\";s:4:\"wrID\";s:2:\"20\";}'),(21,21,'2013-07-02 16:46:00','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"134\";s:4:\"wrID\";s:2:\"21\";}'),(22,22,'2013-07-02 16:46:06','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"10\";s:3:\"cID\";s:3:\"135\";s:4:\"wrID\";s:2:\"22\";}'),(23,23,'2013-07-02 17:19:57','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"136\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"23\";}'),(24,24,'2013-07-02 17:20:37','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"24\";}'),(25,25,'2013-07-02 17:20:59','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"138\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"25\";}'),(26,26,'2013-07-02 17:21:39','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"138\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"26\";}'),(27,27,'2013-07-02 17:21:57','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"139\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"27\";}'),(28,28,'2013-07-02 17:22:23','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"28\";}'),(29,29,'2013-07-02 17:32:52','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"29\";}'),(30,30,'2013-07-04 19:23:21','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"30\";}'),(31,31,'2013-07-04 19:56:45','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"127\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"31\";}'),(32,1,'2013-07-07 17:41:16','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:1:\"1\";}'),(33,2,'2013-07-07 18:41:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:1:\"2\";}'),(34,1,'2013-07-08 18:58:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:1:\"1\";}'),(35,2,'2013-07-08 19:00:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"141\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"2\";}'),(36,3,'2013-07-08 19:01:21','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:1:\"3\";}'),(37,4,'2013-07-08 20:23:48','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"142\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"4\";}'),(38,5,'2013-07-08 20:29:38','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:1:\"5\";}'),(39,6,'2013-07-08 20:30:11','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"6\";}'),(40,7,'2013-07-08 20:32:57','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"123\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:1:\"7\";}'),(41,8,'2013-07-08 20:33:37','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"125\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"8\";}'),(42,9,'2013-07-08 20:34:06','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"126\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"9\";}'),(43,10,'2013-07-08 20:34:40','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"127\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"10\";}'),(44,11,'2013-07-08 20:35:09','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"128\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"11\";}'),(45,12,'2013-07-08 20:35:38','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"12\";}'),(46,13,'2013-07-08 20:44:17','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"13\";}'),(47,14,'2013-07-08 20:52:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"14\";}'),(48,15,'2013-07-08 21:10:17','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"15\";}'),(49,16,'2013-07-08 21:15:57','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"16\";}'),(50,17,'2013-07-08 21:26:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"128\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"17\";}'),(51,18,'2013-07-08 21:27:18','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"127\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"18\";}'),(52,19,'2013-07-08 21:27:48','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"126\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"19\";}'),(53,20,'2013-07-08 21:28:12','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"125\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"20\";}'),(54,21,'2013-07-08 21:40:17','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"21\";}'),(55,22,'2013-07-08 21:40:53','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"146\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"22\";}'),(56,23,'2013-07-08 21:43:27','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"149\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"23\";}'),(57,24,'2013-07-08 21:45:34','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"24\";}'),(58,25,'2013-07-08 21:47:14','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"25\";}'),(59,26,'2013-07-08 21:55:55','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"26\";}'),(60,27,'2013-07-08 21:58:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"146\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"27\";}'),(61,28,'2013-07-08 21:59:48','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"150\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"28\";}'),(62,29,'2013-07-08 22:00:31','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"150\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"29\";}'),(63,30,'2013-07-08 22:00:58','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"150\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"30\";}'),(64,31,'2013-07-08 22:03:46','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"126\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"31\";}'),(65,32,'2013-07-08 22:06:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"12\";s:3:\"cID\";s:3:\"150\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"32\";}');
/*!40000 ALTER TABLE `WorkflowProgressHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowRequestObjects`
--

DROP TABLE IF EXISTS `WorkflowRequestObjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowRequestObjects`
--

LOCK TABLES `WorkflowRequestObjects` WRITE;
/*!40000 ALTER TABLE `WorkflowRequestObjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowRequestObjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowTypes`
--

DROP TABLE IF EXISTS `WorkflowTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowTypes`
--

LOCK TABLES `WorkflowTypes` WRITE;
/*!40000 ALTER TABLE `WorkflowTypes` DISABLE KEYS */;
INSERT INTO `WorkflowTypes` VALUES (1,'basic','Basic Workflow',0);
/*!40000 ALTER TABLE `WorkflowTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workflows`
--

DROP TABLE IF EXISTS `Workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workflows`
--

LOCK TABLES `Workflows` WRITE;
/*!40000 ALTER TABLE `Workflows` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddress`
--

DROP TABLE IF EXISTS `atAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddress`
--

LOCK TABLES `atAddress` WRITE;
/*!40000 ALTER TABLE `atAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressCustomCountries`
--

DROP TABLE IF EXISTS `atAddressCustomCountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressCustomCountries`
--

LOCK TABLES `atAddressCustomCountries` WRITE;
/*!40000 ALTER TABLE `atAddressCustomCountries` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressCustomCountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atAddressSettings`
--

DROP TABLE IF EXISTS `atAddressSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atAddressSettings`
--

LOCK TABLES `atAddressSettings` WRITE;
/*!40000 ALTER TABLE `atAddressSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atAddressSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBoolean`
--

DROP TABLE IF EXISTS `atBoolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBoolean`
--

LOCK TABLES `atBoolean` WRITE;
/*!40000 ALTER TABLE `atBoolean` DISABLE KEYS */;
INSERT INTO `atBoolean` VALUES (20,1),(31,1),(34,1),(64,1),(65,1),(68,1),(69,1),(75,1),(108,1),(117,1),(118,1),(119,1),(136,0),(140,0),(144,1),(148,1),(152,1),(156,0),(160,1),(164,0),(168,0);
/*!40000 ALTER TABLE `atBoolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atBooleanSettings`
--

DROP TABLE IF EXISTS `atBooleanSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atBooleanSettings`
--

LOCK TABLES `atBooleanSettings` WRITE;
/*!40000 ALTER TABLE `atBooleanSettings` DISABLE KEYS */;
INSERT INTO `atBooleanSettings` VALUES (5,0),(6,0),(8,0),(9,0),(10,1),(11,1),(14,0);
/*!40000 ALTER TABLE `atBooleanSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTime`
--

DROP TABLE IF EXISTS `atDateTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTime`
--

LOCK TABLES `atDateTime` WRITE;
/*!40000 ALTER TABLE `atDateTime` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDateTimeSettings`
--

DROP TABLE IF EXISTS `atDateTimeSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDateTimeSettings`
--

LOCK TABLES `atDateTimeSettings` WRITE;
/*!40000 ALTER TABLE `atDateTimeSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atDateTimeSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atDefault`
--

DROP TABLE IF EXISTS `atDefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atDefault`
--

LOCK TABLES `atDefault` WRITE;
/*!40000 ALTER TABLE `atDefault` DISABLE KEYS */;
INSERT INTO `atDefault` VALUES (1,'blog, blogging'),(2,'icon-book'),(3,'new blog, write blog, blogging'),(4,'icon-pencil'),(5,'blog drafts,composer'),(6,'icon-book'),(7,'pages, add page, delete page, copy, move, alias'),(8,'pages, add page, delete page, copy, move, alias'),(9,'icon-home'),(10,'pages, add page, delete page, copy, move, alias, bulk'),(11,'icon-road'),(12,'find page, search page, search, find, pages, sitemap'),(13,'icon-search'),(14,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),(15,'icon-picture'),(16,'file, file attributes, title, attribute, description, rename'),(17,'icon-cog'),(18,'files, category, categories'),(19,'icon-list-alt'),(21,'new file set'),(22,'icon-plus-sign'),(23,'users, groups, people, find, delete user, remove user, change password, password'),(24,'find, search, people, delete user, remove user, change password, password'),(25,'icon-user'),(26,'user, group, people, permissions, access, expire'),(27,'icon-globe'),(28,'user attributes, user data, gather data, registration data'),(29,'icon-cog'),(30,'new user, create'),(32,'icon-plus-sign'),(33,'new user group, new group, group, create'),(35,'icon-plus'),(36,'group set'),(37,'icon-list'),(38,'forms, log, error, email, mysql, exception, survey'),(39,'hits, pageviews, visitors, activity'),(40,'icon-signal'),(41,'forms, questions, response, data'),(42,'icon-briefcase'),(43,'questions, quiz, response'),(44,'icon-tasks'),(45,'forms, log, error, email, mysql, exception, survey, history'),(46,'icon-time'),(47,'new theme, theme, active theme, change theme, template, css'),(48,'icon-font'),(49,'theme'),(50,'page types'),(51,'custom theme, change theme, custom css, css'),(52,'page type defaults, global block, global area, starter, template'),(53,'icon-file'),(54,'page attributes, custom'),(55,'icon-cog'),(56,'single, page, custom, application'),(57,'icon-wrench'),(58,'add workflow, remove workflow'),(59,'icon-list'),(60,'icon-user'),(61,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),(62,'icon-th'),(63,'icon-lock'),(66,'block, refresh, custom'),(67,'icon-wrench'),(70,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),(71,'update, upgrade'),(72,'concrete5.org, my account, marketplace'),(73,'buy theme, new theme, marketplace, template'),(74,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),(76,'website name, title'),(77,'logo, favicon, iphone, icon, bookmark'),(78,'tinymce, content block, fonts, editor, tinymce, content, overlay'),(79,'translate, translation, internationalization, multilingual, translate'),(80,'timezone, profile, locale'),(81,'interface, quick nav, dashboard background, background image'),(82,'vanity, pretty url, seo, pageview, view'),(83,'bulk, seo, change keywords, engine, optimization, search'),(84,'traffic, statistics, google analytics, quant, pageviews, hits'),(85,'pretty, slug'),(86,'turn off statistics, tracking, statistics, pageviews, hits'),(87,'configure search, site search, search option'),(88,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),(89,'cache option, turn off cache, no cache, page cache, caching'),(90,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),(91,'editors, hide site, offline, private, public, access'),(92,'file options, file manager, upload, modify'),(93,'security, files, media, extension, manager, upload'),(94,'security, actions, administrator, admin, package, marketplace, search'),(95,'security, lock ip, lock out, block ip, address, restrict, access'),(96,'security, registration'),(97,'antispam, block spam, security'),(98,'lock site, under construction, hide, hidden'),(99,'profile, login, redirect, specific, dashboard, administrators'),(100,'member profile, member page,community, forums, social, avatar'),(101,'signup, new user, community'),(102,'smtp, mail settings'),(103,'email server, mail settings, mail configuration, external, internal'),(104,'email server, mail settings, mail configuration, private message, message system, import, email, message'),(105,'attribute configuration'),(106,'attributes, sets'),(107,'attributes, types'),(109,'overrides, system info, debug, support,help'),(110,'errors,exceptions, develop, support, help'),(111,'email, logging, logs, smtp, pop, errors, mysql, errors, log'),(112,'security, alternate storage, hide files'),(113,'network, proxy server'),(114,'export, backup, database, sql, mysql, encryption, restore'),(115,'upgrade, new version, update'),(116,'export, database, xml, starting, points, schema, refresh, custom, tables'),(120,'icon-gift'),(133,''),(134,''),(135,''),(137,''),(138,''),(139,''),(141,''),(142,''),(143,''),(145,''),(146,''),(147,''),(149,''),(150,''),(151,''),(153,''),(154,''),(155,''),(157,'Soho'),(158,''),(159,''),(161,''),(162,''),(163,''),(165,''),(166,''),(167,''),(169,'Privacy Policy'),(170,''),(171,''),(172,''),(173,''),(174,'');
/*!40000 ALTER TABLE `atDefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atFile`
--

DROP TABLE IF EXISTS `atFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atFile`
--

LOCK TABLES `atFile` WRITE;
/*!40000 ALTER TABLE `atFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `atFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atNumber`
--

DROP TABLE IF EXISTS `atNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atNumber`
--

LOCK TABLES `atNumber` WRITE;
/*!40000 ALTER TABLE `atNumber` DISABLE KEYS */;
INSERT INTO `atNumber` VALUES (121,973.0000),(122,615.0000),(123,973.0000),(124,615.0000),(129,570.0000),(130,360.0000),(131,570.0000),(132,360.0000);
/*!40000 ALTER TABLE `atNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptions`
--

DROP TABLE IF EXISTS `atSelectOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptions`
--

LOCK TABLES `atSelectOptions` WRITE;
/*!40000 ALTER TABLE `atSelectOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectOptionsSelected`
--

DROP TABLE IF EXISTS `atSelectOptionsSelected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectOptionsSelected`
--

LOCK TABLES `atSelectOptionsSelected` WRITE;
/*!40000 ALTER TABLE `atSelectOptionsSelected` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectOptionsSelected` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atSelectSettings`
--

DROP TABLE IF EXISTS `atSelectSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atSelectSettings`
--

LOCK TABLES `atSelectSettings` WRITE;
/*!40000 ALTER TABLE `atSelectSettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `atSelectSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atTextareaSettings`
--

DROP TABLE IF EXISTS `atTextareaSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atTextareaSettings`
--

LOCK TABLES `atTextareaSettings` WRITE;
/*!40000 ALTER TABLE `atTextareaSettings` DISABLE KEYS */;
INSERT INTO `atTextareaSettings` VALUES (2,''),(3,''),(4,''),(7,'');
/*!40000 ALTER TABLE `atTextareaSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentFile`
--

DROP TABLE IF EXISTS `btContentFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentFile`
--

LOCK TABLES `btContentFile` WRITE;
/*!40000 ALTER TABLE `btContentFile` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentImage`
--

DROP TABLE IF EXISTS `btContentImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentImage`
--

LOCK TABLES `btContentImage` WRITE;
/*!40000 ALTER TABLE `btContentImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `btContentImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btContentLocal`
--

DROP TABLE IF EXISTS `btContentLocal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btContentLocal`
--

LOCK TABLES `btContentLocal` WRITE;
/*!40000 ALTER TABLE `btContentLocal` DISABLE KEYS */;
INSERT INTO `btContentLocal` VALUES (1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						'),(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>'),(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>'),(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>'),(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>'),(14,'<div class=\"headline\">\r\n<h3>Hi, a warm welcome to Atlas!</h3>\r\n</div>\r\n<p>We happily offer each guest at our travel hostel a clean and comfy place to stay in London, where you can rest your backpack, put your feet up and relax.</p>\r\n<p>You will be fantastically located within only a short distance of all the vibrant sights and sounds this great city has to offer.</p>\r\n<p>Relaxing in Hyde Park… Shopping in Regents Street… Going out for drinks and meals in Soho… Visiting museums in South Kensington… are just some of the attractions to be explored on your doorstep.</p>\r\n<p>Our staff will gladly take the time out to chat and assist you in any way they best can, whether it’s simply providing directions, recommending day tours, the best music events on, or suggesting the most exciting nightlife spots.</p>'),(15,'<div class=\"headline\">\r\n<h3>Facilities</h3>\r\n</div>\r\n<p>Dorm sizes consist of 6, 8 and 10 beds. Each dorm has ensuite bathroom.</p>\r\n<p>We provide the following facilities:</p>\r\n<ul class=\"unstyled\">\r\n<li><em class=\"icon-ok color-green\"></em> Free WIFI</li>\r\n<li><em class=\"icon-ok color-green\"></em> No Curfew</li>\r\n<li><em class=\"icon-ok color-green\"></em> Free Bed Linen</li>\r\n<li><em class=\"icon-ok color-green\"></em> Free Cooking/ Communal Kitchen Facilities</li>\r\n<li><em class=\"icon-ok color-green\"></em> Dorm Lockers for personal belongings</li>\r\n<li><em class=\"icon-ok color-green\"></em> Luggage Storage</li>\r\n<li><em class=\"icon-ok color-green\"></em> 24 hours Hot Shower Facility</li>\r\n<li><em class=\"icon-ok color-green\"></em> Washing Room with Dryer</li>\r\n<li><em class=\"icon-ok color-green\"></em> Friendly Staff</li>\r\n<li><em class=\"icon-ok color-green\"></em> Easy Transport Links</li>\r\n<li><em class=\"icon-ok color-green\"></em> Dorm Lockers</li>\r\n<li><em class=\"icon-ok color-green\"></em> Discounted Tickets For Tourist Attractions</li>\r\n<li><em class=\"icon-ok color-green\"></em> Closed Circuit TV for your safety</li>\r\n<li><em class=\"icon-ok color-green\"></em> Hairdryers</li>\r\n<li><em class=\"icon-ok color-green\"></em> Towels for Hire</li>\r\n<li><em class=\"icon-ok color-green\"></em> Book Exchange</li>\r\n<li><em class=\"icon-ok color-green\"></em> Free City Maps</li>\r\n</ul>'),(16,'<div class=\"headline\">\r\n<h3>Travelling From Heathrow Airport</h3>\r\n</div>\r\n<p>Take Heathrow Express towards London Paddington Rail Station.</p>\r\n<p>Once you are outside the rail station then start out along LONDON STREET.</p>\r\n<p>After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>\r\n<div class=\"headline\">\r\n<h3>Travelling From Waterloo</h3>\r\n</div>\r\n<p>Take the Bakerloo Line towards Queen\'s Park Underground Station or Bakerloo  Line towards Harrow &amp; Wealdstone Underground Station or Bakerloo Line towards Stonebridge Park Underground Station.</p>\r\n<p>Then after 8 stops you will arrive at Paddington Underground station.</p>\r\n<p>Once you are outside the Paddington station then start out along LONDON STREET, heading south.</p>\r\n<p>After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>\r\n<div class=\"headline\">\r\n<h3>Travelling from Victoria</h3>\r\n</div>\r\n<p>Once you are outside the station then start out along LONDON STREET, After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>\r\n<p>If you are travelling from Victoria Coach Station, walk down to Victoria Station and follow the directions as provided above.</p>\r\n<div class=\"headline\">\r\n<h3>Travelling from Gatwick Airport</h3>\r\n</div>\r\n<p>At Gatwick Airport Rail Station take Southern train towards London Victoria Rail Station.</p>\r\n<p>Then On the underground system take the westbound circle line or District Line to Paddington.</p>\r\n<p>Once you are outside the station then start out along LONDON STREET, heading south.</p>\r\n<p>After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>\r\n<div class=\"headline\">\r\n<h3>Travelling from Stansted Airport</h3>\r\n</div>\r\n<p>Take the National Express from Stanstead Airport to London Victoria Coach Station.</p>\r\n<p>Then walk down to Victoria Station.</p>\r\n<p>On the underground system take the westbound circle line or District Line to Paddington.</p>\r\n<p>Once you are outside the rail station then start out along LONDON STREET, heading south.</p>\r\n<p>After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>'),(17,'<div class=\"headline\">\r\n<h3>Nearest Underground Train</h3>\r\n</div>\r\n<p>2 Minutes - Paddington underground station (Bakerloo/Hammersmith &amp; City and Bakerloo Lines</p>\r\n<div class=\"headline\">\r\n<h3>Nearest British Rail Station</h3>\r\n</div>\r\n<p>3 Minutes – Paddington Rail Station</p>\r\n<div class=\"headline\">\r\n<h3>Local Buses</h3>\r\n</div>\r\n<p>Serving routes from Paddington station:</p>\r\n<p>159, 205, 23, 27, 332, 36, 436, 7, N7</p>\r\n<div class=\"headline\">\r\n<h3>Nearest ATM/Bank</h3>\r\n</div>\r\n<p>90 yards – Natwest Bank, 26 Spring Street, W2 1JA</p>\r\n<div class=\"headline\">\r\n<h3>Nearest Post Office</h3>\r\n</div>\r\n<p>0.3 Miles - Paddington Quay, Retail Unit 6, 4 Praed Street, London, W2 1JX</p>\r\n<p>Telephone: 0845 605 1605</p>\r\n<p> Opening Hours</p>\r\n<p>Mon: 09:00 - 17:00</p>\r\n<p>Tue: 09:00 - 17:00</p>\r\n<p>Wed: 09:30 - 17:00</p>\r\n<p>Thu: 09:00 - 17:00</p>\r\n<p>Fri: 09:00 - 17:00</p>\r\n<p>Sat: 09:00 - 12:30</p>\r\n<div class=\"headline\">\r\n<h3>Nearest Café</h3>\r\n</div>\r\n<p>111 yards – Luigi’s Sandwich Bar 8A Spring St, London W2 3RA</p>\r\n<div class=\"headline\">\r\n<h3>Best nearest Pub</h3>\r\n</div>\r\n<p>393 yards -The Monkey Puzzle 30 Southwick St, London, Greater London W2 1JQ</p>\r\n<div class=\"headline\">\r\n<h3>Nearest Supermarket</h3>\r\n</div>\r\n<p>175 yards - Sainsbury\'s Local , Station Concourse, Paddington Station, London W2 1HB</p>\r\n<div class=\"headline\">\r\n<h3>Nearest Cinema</h3>\r\n</div>\r\n<p>0.62 miles - Odeon Marble Arch - 10 Edgware Rd, Marble Arch, London W2 2EN</p>'),(18,'<div id=\"accordion2\" class=\"accordion acc-home margin-bottom-40\">\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseOne\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> Nearest tube / bus stop to the hostel? </a></div>\r\n<div id=\"collapseOne\" class=\"accordion-body in collapse\" style=\"height: auto;\">\r\n<div class=\"accordion-inner\">bar 1</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseTwo\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What is the address of the hostel? </a></div>\r\n<div id=\"collapseTwo\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 2</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseThree\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What do i need to check in / out? </a></div>\r\n<div id=\"collapseThree\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 3</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseFour\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What time do i need to check in / out? </a></div>\r\n<div id=\"collapseFour\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 4</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseFive\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What is your policy for under 18s? </a></div>\r\n<div id=\"collapseFive\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseSix\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What is included in the price? </a></div>\r\n<div id=\"collapseSix\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseSeven\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> How long is reception open for? </a></div>\r\n<div id=\"collapseSeven\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseEight\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> Where can i store my luggage? </a></div>\r\n<div id=\"collapseEight\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseNine\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> Do you have wifi in the hostel? </a></div>\r\n<div id=\"collapseNine\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseTen\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> Do you serve breakfast? </a></div>\r\n<div id=\"collapseTen\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group--></div>'),(19,'<h4>FAQs</h4>\r\n<div id=\"accordion2\" class=\"accordion acc-home margin-bottom-40\">\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseOne\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> Nearest tube / bus stop to the hostel? </a></div>\r\n<div id=\"collapseOne\" class=\"accordion-body in collapse\" style=\"height: auto;\">\r\n<div class=\"accordion-inner\">bar 1</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseTwo\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What is the address of the hostel? </a></div>\r\n<div id=\"collapseTwo\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 2</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseThree\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What do i need to check in / out? </a></div>\r\n<div id=\"collapseThree\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 3</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseFour\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What time do i need to check in / out? </a></div>\r\n<div id=\"collapseFour\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 4</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseFive\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What is your policy for under 18s? </a></div>\r\n<div id=\"collapseFive\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseSix\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> What is included in the price? </a></div>\r\n<div id=\"collapseSix\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseSeven\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> How long is reception open for? </a></div>\r\n<div id=\"collapseSeven\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseEight\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> Where can i store my luggage? </a></div>\r\n<div id=\"collapseEight\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseNine\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> Do you have wifi in the hostel? </a></div>\r\n<div id=\"collapseNine\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group-->\r\n<div class=\"accordion-group\">\r\n<div class=\"accordion-heading\"><a class=\"accordion-toggle\" href=\"#collapseTen\" data-toggle=\"collapse\" data-parent=\"#accordion2\"> Do you serve breakfast? </a></div>\r\n<div id=\"collapseTen\" class=\"accordion-body collapse\" style=\"height: 0px;\">\r\n<div class=\"accordion-inner\">bar 5</div>\r\n</div>\r\n</div>\r\n<!--/accordion-group--></div>'),(24,'<div class=\"headline\">\r\n<h3>Facilities</h3>\r\n</div>\r\n<h4>Dorm sizes consist of 6, 8 and 10 beds. Each dorm has ensuite bathroom.</h4>\r\n<p>We provide the following facilities:</p>\r\n<ul class=\"unstyled\">\r\n<li><em class=\"icon-ok color-green\"></em> Free WIFI</li>\r\n<li><em class=\"icon-ok color-green\"></em> No Curfew</li>\r\n<li><em class=\"icon-ok color-green\"></em> Free Bed Linen</li>\r\n<li><em class=\"icon-ok color-green\"></em> Free Cooking/ Communal Kitchen Facilities</li>\r\n<li><em class=\"icon-ok color-green\"></em> Dorm Lockers for personal belongings</li>\r\n<li><em class=\"icon-ok color-green\"></em> Luggage Storage</li>\r\n<li><em class=\"icon-ok color-green\"></em> 24 hours Hot Shower Facility</li>\r\n<li><em class=\"icon-ok color-green\"></em> Washing Room with Dryer</li>\r\n<li><em class=\"icon-ok color-green\"></em> Friendly Staff</li>\r\n<li><em class=\"icon-ok color-green\"></em> Easy Transport Links</li>\r\n<li><em class=\"icon-ok color-green\"></em> Dorm Lockers</li>\r\n<li><em class=\"icon-ok color-green\"></em> Discounted Tickets For Tourist Attractions</li>\r\n<li><em class=\"icon-ok color-green\"></em> Closed Circuit TV for your safety</li>\r\n<li><em class=\"icon-ok color-green\"></em> Hairdryers</li>\r\n<li><em class=\"icon-ok color-green\"></em> Towels for Hire</li>\r\n<li><em class=\"icon-ok color-green\"></em> Book Exchange</li>\r\n<li><em class=\"icon-ok color-green\"></em> Free City Maps</li>\r\n</ul>'),(40,'<p>2013 © Atlas Hostels PLC. <a href=\"/privacy\">Privacy Policy</a> | <a href=\"/terms\">Terms &amp; Conditions</a> | <a href=\"/location\">Contact Us</a> | <a href=\"/investors\">Investor Relations</a> | <a href=\"/jobs\">Jobs</a></p>'),(61,'<p>2013 © Atlas Hostels PLC. <a title=\"Privacy Policy\" href=\"{CCM:CID_145}\">Privacy Policy</a> | <a title=\"Terms &amp; conditions\" href=\"{CCM:CID_146}\">Terms &amp; Conditions</a> | <a title=\"Contact Us\" href=\"{CCM:CID_147}\">Contact Us</a> | <a title=\"Investor Relations\" href=\"{CCM:CID_148}\">Investor Relations</a> | <a title=\"Jobs\" href=\"{CCM:CID_149}\">Jobs</a></p>'),(63,'<h3>Privacy Policy</h3>'),(64,'<p>Atlas is committed to preserving the privacy of all visitors to the Website. Please read the following privacy policy to understand how we use and protect the information that you provide to us.</p>\r\n<ol>\r\n<li>Should you choose to register on the Website or contact us through the Website, you will be asked to provide certain personal information. We may use your personal information to keep you informed of the different land investments that we promote and market from time to time that we think may be of interest to you and for future email mailings, support, notification of new services, and general correspondence that may relate to you. If you would rather not receive future marketing emails from us please inform us by e-mail at info@Atlashostelsplc.com.</li>\r\n<li>We are registered under the Data Protection Act 1998 and comply with the Act in all our dealings with your personal data. The information you provide will be kept confidential and will be used only to support your customer relationship with us. We will not disclose or sell your information outside our corporate group, except in connection with the proposed or actual sale of the whole or part of the Atlas business or where we are required to do so by law or a regulatory authority. We never rent or sell your personal information.</li>\r\n<li>The data that we collect from you may be transferred to, and stored at, a destination outside the European Economic Area (“EEA”). It may also be processed by staff operating outside the EEA who work for us or for one of our suppliers. By submitting your personal data, you agree to this transfer, storing or processing. We will take all steps reasonably necessary to ensure that your data is treated securely and in accordance with this privacy policy.</li>\r\n<li>Atlas may also collect personal information about your use of the Website by using a cookie file that is stored on the hard drive of your computer. Cookies contain information that is transferred to your computer’s hard drive. They help us to improve the Website and to deliver a better and more personalised service.</li>\r\n<li>You may refuse to accept cookies by activating the setting on your browser that allows you to refuse the setting of cookies. However, if you select this setting you may be unable to access certain parts of the Website. Unless you have adjusted your browser setting so that it will refuse cookies, our system will issue cookies when you log on to our site. For more information about cookies including how to set your internet browser to reject cookies please go to www.allaboutcookies.org</li>\r\n<li>Unfortunately, the transmission of information via the internet is not completely secure. Although Atlas will do its best to protect your personal data, it cannot guarantee the security of data transmitted to the Website; any transmission is at your own risk.</li>\r\n<li>This Website may contain links to third party websites. Atlas is not responsible for the data protection or privacy policies of those third parties.</li>\r\n<li>You have a right to ask us to provide a copy of the personal data we hold about you, and where you do we are entitled by law to make a small administrative charge for providing such data.</li>\r\n<li>Any changes to our privacy policy in the future will be posted to the Website.</li>\r\n<li>All comments, queries and requests relating to our use of your information are welcomed and should be addressed to Atlas Hostels Plc, 2ND FLOOR BERKLEY SQUARE HOUSE, BERKELEY SQUARE, LONDON, UNITED KINGDOM, W1J 6BD, 0800 122 3455.</li>\r\n</ol>'),(66,'<h3>Terms &amp; Conditions</h3>'),(67,'<p>Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>\r\n<ol>\r\n<li>Ut adipiscing elit magna sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet. Et harum quidem rerum facilis fusce condimentum eleifend enim a feugiat.</li>\r\n<li>Lusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.</li>\r\n<li>Praesentium voluptatum deleniti atque corrupti quos</li>\r\n<li>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.</li>\r\n<li>Mentum eleifend enim a feugiat distinctio lor</li>\r\n</ol>\r\n<p> </p>\r\n<h4>Lorem ipsum dolor integer sed arcu</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Integer sed arcu. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non <a href=\"#\">libero consectetur adipiscing</a> elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>\r\n<p><strong>Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non sit amet, consectetur adipiscing elit. Ut adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque lorem ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat <a href=\"#\">consectetur adipiscing elit</a>.</strong></p>\r\n<p> </p>\r\n<h4>Molestias excepturi sint</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>\r\n<ul>\r\n<li>Ut adipiscing elit magna sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet. Et harum quidem rerum facilis fusce condimentum eleifend enim a feugiat.</li>\r\n<li>Lusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.</li>\r\n<li>Praesentium voluptatum deleniti atque corrupti quos</li>\r\n<li>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.</li>\r\n<li>Mentum eleifend enim a feugiat distinctio lor</li>\r\n<li>Ut adipiscing elit magna sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet. Et harum quidem rerum facilis fusce condimentum eleifend enim a feugiat.</li>\r\n<li>Lusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.</li>\r\n<li>Praesentium voluptatum deleniti atque corrupti quos</li>\r\n<li>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi.</li>\r\n<li>Mentum eleifend enim a feugiat distinctio lor</li>\r\n</ul>\r\n<p><em>Praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus usce condimentum eleifend enim a feugiat <a href=\"#\">consectetur adipiscing elit</a>.</em></p>\r\n<p> </p>\r\n<h4>Vehicula sem ut volutpat</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Integer sed arcu. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non sit amet, consectetur adipiscing elit. Ut adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non <a href=\"#\">libero consectetur adipiscing</a> elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>\r\n<p>Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat <a href=\"#\">consectetur adipiscing elit</a>.</p>\r\n<p> </p>\r\n<h4><em>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</em></h4>\r\n<ul>\r\n<li>Ut adipiscing elit magna sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat.</li>\r\n<li>Lusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati.</li>\r\n<li>Praesentium voluptatum deleniti atque corrupti quos</li>\r\n</ul>\r\n<p>Iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non ipsum dolor sit amet. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat <a href=\"#\">consectetur adipiscing elit</a>.</p>'),(68,'<div class=\"headline\">\r\n<h3>Travelling From Heathrow Airport</h3>\r\n</div>\r\n<p>Take Heathrow Express towards London Paddington Rail Station.</p>\r\n<p>Once you are outside the rail station then start out along LONDON STREET.</p>\r\n<p>After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>\r\n<div class=\"headline\">\r\n<h3>Travelling From Waterloo</h3>\r\n</div>\r\n<p>Take the Bakerloo Line towards Queen\'s Park Underground Station or Bakerloo  Line towards Harrow &amp; Wealdstone Underground Station or Bakerloo Line towards Stonebridge Park Underground Station.</p>\r\n<p>Then after 8 stops you will arrive at Paddington Underground station.</p>\r\n<p>Once you are outside the Paddington station then start out along LONDON STREET, heading south.</p>\r\n<p>After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>\r\n<div class=\"headline\">\r\n<h3>Travelling from Victoria</h3>\r\n</div>\r\n<p>Once you are outside the station then start out along LONDON STREET, After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>\r\n<p>If you are travelling from Victoria Coach Station, walk down to Victoria Station and follow the directions as provided above.</p>\r\n<div class=\"headline\">\r\n<h3>Travelling from Gatwick Airport</h3>\r\n</div>\r\n<p>At Gatwick Airport Rail Station take Southern train towards London Victoria Rail Station.</p>\r\n<p>Then On the underground system take the westbound circle line or District Line to Paddington.</p>\r\n<p>Once you are outside the station then start out along LONDON STREET, heading south.</p>\r\n<p>After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>\r\n<div class=\"headline\">\r\n<h3>Travelling from Stansted Airport</h3>\r\n</div>\r\n<p>Take the National Express from Stanstead Airport to London Victoria Coach Station.</p>\r\n<p>Then walk down to Victoria Station.</p>\r\n<p>On the underground system take the westbound circle line or District Line to Paddington.</p>\r\n<p>Once you are outside the rail station then start out along LONDON STREET, heading south.</p>\r\n<p>After 150 yards turn right onto SUSSEX GARDENS, heading south.</p>\r\n<p>You will reach your destination 76 yards along SUSSEX GARDENS.</p>'),(72,'<div class=\"span6\"><!-- Contacts -->\r\n<div class=\"headline\">\r\n<h3>Map</h3>\r\n</div>\r\n<div id=\"map\" class=\"map map-box map-box-space margin-bottom-40\" style=\"position: relative; background-color: #e5e3df; overflow: hidden;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 1; cursor: url(\'http://maps.gstatic.com/mapfiles/openhand_8_8.cur\'), default; -webkit-transform-origin: 0px 0px; -webkit-transform: matrix(1, 0, 0, 1, 0, 0);\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 200;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 201;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 202;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 100;\"> </div>\r\n<div style=\"position: absolute; z-index: 0; left: 0px; top: 0px;\">\r\n<div style=\"overflow: hidden; width: 570px; height: 252px;\"><img style=\"width: 570px; height: 252px;\" src=\"http://maps.googleapis.com/maps/api/js/StaticMapService.GetMapImage?1m2&amp;1i4189948&amp;2i2789013&amp;2e1&amp;3u15&amp;4m2&amp;1u570&amp;2u252&amp;5m5&amp;1e0&amp;2b1&amp;5sen-US&amp;6sus&amp;10b0&amp;token=112920\" alt=\"\" /></div>\r\n</div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 1;\">\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 4px; top: -150px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221070883&amp;src=apiv3&amp;hl=en-US&amp;x=16367&amp;s=&amp;y=10894&amp;z=15&amp;s=Gal&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 4px; top: 106px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221077399&amp;src=apiv3&amp;hl=en-US&amp;x=16367&amp;s=&amp;y=10895&amp;z=15&amp;s=Gali&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 260px; top: -150px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221079305&amp;src=apiv3&amp;hl=en-US&amp;x=16368&amp;s=&amp;y=10894&amp;z=15&amp;s=Galile&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 260px; top: 106px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221062649&amp;src=apiv3&amp;hl=en-US&amp;x=16368&amp;s=&amp;y=10895&amp;z=15&amp;s=Galileo&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -252px; top: -150px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221009590&amp;src=apiv3&amp;hl=en-US&amp;x=16366&amp;s=&amp;y=10894&amp;z=15&amp;s=&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -252px; top: 106px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221062649&amp;src=apiv3&amp;hl=en-US&amp;x=16366&amp;s=&amp;y=10895&amp;z=15&amp;s=G&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 516px; top: -150px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221032374&amp;src=apiv3&amp;hl=en-US&amp;x=16369&amp;s=&amp;y=10894&amp;z=15&amp;s=G&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 516px; top: 106px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221054091&amp;src=apiv3&amp;hl=en-US&amp;x=16369&amp;s=&amp;y=10895&amp;z=15&amp;s=Ga&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"margin: 2px 5px 2px 2px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;\">\r\n<div style=\"width: 62px; height: 24px; cursor: pointer;\"><img style=\"position: absolute; left: 0px; top: 0px; width: 62px; height: 24px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/google_white.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"z-index: 1000001; position: absolute; right: 107px; bottom: 0px;\">\r\n<div style=\"height: 19px; -webkit-user-select: none; line-height: 19px; padding-right: 2px; padding-left: 50px; background-image: -webkit-linear-gradient(left, rgba(255, 255, 255, 0) 0px, rgba(255, 255, 255, 0.496094) 50px); font-family: Arial, sans-serif; font-size: 10px; color: #444444; white-space: nowrap; direction: ltr; text-align: right; background-position: initial initial; background-repeat: initial initial;\"><a style=\"color: #444444; text-decoration: underline; cursor: pointer; display: none;\">Map Data</a><span>Map data ©2013 Google</span><span> - </span><a style=\"color: #444444; text-decoration: underline; cursor: pointer;\" href=\"http://www.google.com/intl/en-US_US/help/terms_maps.html\" target=\"_blank\">Terms of Use</a></div>\r\n</div>\r\n<div style=\"background-color: white; padding: 15px 21px; border: 1px solid #ababab; font-family: Arial, sans-serif; color: #222222; -webkit-box-shadow: rgba(0, 0, 0, 0.199219) 0px 4px 16px; box-shadow: rgba(0, 0, 0, 0.199219) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 135px; top: 35px;\">\r\n<div style=\"padding: 0px 0px 10px; font-size: 16px;\">Map Data</div>\r\n<div style=\"font-size: 13px;\">Map data ©2013 Google</div>\r\n<div style=\"width: 10px; height: 10px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;\"><img style=\"position: absolute; left: -18px; top: -44px; width: 68px; height: 67px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"gmnoscreen\" style=\"position: absolute; right: 0px; bottom: 0px;\">\r\n<div style=\"font-family: Arial, sans-serif; font-size: 10px; color: #444444; direction: ltr; text-align: right; background-color: #f5f5f5;\">Map data ©2013 Google</div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"font-size: 10px; height: 17px; background-color: #f5f5f5; border: 1px solid #dcdcdc; line-height: 19px; position: absolute; right: 24px; bottom: 0px;\"><a style=\"font-family: Arial, sans-serif; font-size: 85%; font-weight: bold; bottom: 1px; padding: 1px 3px; color: #444444; text-decoration: none; position: relative;\" title=\"Report errors in the road map or imagery to Google\" href=\"http://maps.google.com/maps?ll=51.515067,-0.174708&amp;z=15&amp;t=m&amp;hl=en-US&amp;skstate=action:mps_dialog$apiref:1&amp;output=classic\" target=\"_new\">Report a map error</a></div>\r\n<div class=\"gmnoprint\" style=\"position: absolute; -webkit-user-select: none; margin-left: 5px; margin-top: 5px; width: 19px; height: 19px; right: 0px; bottom: 0px;\">\r\n<div style=\"background-color: #ffffff; border-left-width: 1px; border-left-style: solid; border-left-color: #979797; border-top-width: 1px; border-top-style: solid; border-top-color: #979797; overflow: hidden; width: 120px; height: 120px; display: none;\">\r\n<div style=\"position: absolute; left: 7px; top: 7px; border: 1px solid #979797; width: 111px; height: 111px; background-color: #e5e3df; overflow: hidden;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 1; cursor: url(\'http://maps.gstatic.com/mapfiles/openhand_8_8.cur\'), default; -webkit-transform-origin: 0px 0px; -webkit-transform: matrix(1, 0, 0, 1, 0, 0);\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 200;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 201;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 202;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 100;\"> </div>\r\n<div style=\"position: absolute; z-index: 0; left: 0px; top: 0px;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 1;\">\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -259px; top: -226px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221000000&amp;src=apiv3&amp;hl=en-US&amp;x=2045&amp;y=1361&amp;z=12&amp;s=&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -3px; top: -226px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221000000&amp;src=apiv3&amp;hl=en-US&amp;x=2046&amp;y=1361&amp;z=12&amp;s=Gal&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -259px; top: 30px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221000000&amp;src=apiv3&amp;hl=en-US&amp;x=2045&amp;y=1362&amp;z=12&amp;s=G&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -3px; top: 30px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221000000&amp;src=apiv3&amp;hl=en-US&amp;x=2046&amp;y=1362&amp;z=12&amp;s=Gali&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"width: 19px; height: 19px; position: absolute; cursor: pointer; left: 0px; top: 0px;\">\r\n<div style=\"width: 19px; height: 19px; overflow: hidden; position: absolute;\" title=\"Open the overview map\"><img style=\"position: absolute; left: -40px; top: -405px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d7.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"margin: 5px; -webkit-user-select: none; position: absolute; left: 0px; top: 0px;\">\r\n<div class=\"gmnoprint\" style=\"cursor: url(\'http://maps.gstatic.com/mapfiles/openhand_8_8.cur\'), default; width: 78px; height: 78px; position: absolute; left: 0px; top: 0px;\">\r\n<div class=\"gmnoprint\" style=\"width: 78px; height: 78px; position: absolute; left: 0px; top: 0px;\"> </div>\r\n<div class=\"gmnoprint\" style=\"position: absolute; left: 10px; top: 11px;\">\r\n<div style=\"width: 59px; height: 59px; overflow: hidden; position: relative;\"><img style=\"position: absolute; left: 0px; top: 0px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d7.png\" alt=\"\" />\r\n<div style=\"position: absolute; left: 0px; top: 20px; width: 19.666666666666668px; height: 19.666666666666668px; cursor: pointer;\" title=\"Pan left\"> </div>\r\n<div style=\"position: absolute; left: 39px; top: 20px; width: 19.666666666666668px; height: 19.666666666666668px; cursor: pointer;\" title=\"Pan right\"> </div>\r\n<div style=\"position: absolute; left: 20px; top: 0px; width: 19.666666666666668px; height: 19.666666666666668px; cursor: pointer;\" title=\"Pan up\"> </div>\r\n<div style=\"position: absolute; left: 20px; top: 39px; width: 19.666666666666668px; height: 19.666666666666668px; cursor: pointer;\" title=\"Pan down\"> </div>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"cursor: url(\'http://maps.gstatic.com/mapfiles/openhand_8_8.cur\'), default; position: absolute; left: 23px; top: 85px;\">\r\n<div style=\"width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px;\"><img style=\"position: absolute; left: -9px; top: -102px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 1029px; height: 255px;\" src=\"http://maps.gstatic.com/mapfiles/cb/mod_cb_scout/cb_scout_sprite_api_003.png\" alt=\"\" /></div>\r\n<div style=\"width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;\"><img style=\"position: absolute; left: -107px; top: -102px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 1029px; height: 255px;\" src=\"http://maps.gstatic.com/mapfiles/cb/mod_cb_scout/cb_scout_sprite_api_003.png\" alt=\"\" /></div>\r\n<div style=\"width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;\"><img style=\"position: absolute; left: -58px; top: -102px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 1029px; height: 255px;\" src=\"http://maps.gstatic.com/mapfiles/cb/mod_cb_scout/cb_scout_sprite_api_003.png\" alt=\"\" /></div>\r\n<div style=\"width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;\"><img style=\"position: absolute; left: -205px; top: -102px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 1029px; height: 255px;\" src=\"http://maps.gstatic.com/mapfiles/cb/mod_cb_scout/cb_scout_sprite_api_003.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"opacity: 0.6; display: none; position: absolute;\"><img style=\"-webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; cursor: pointer; width: 22px; height: 22px;\" title=\"Rotate map 90 degrees\" src=\"http://maps.gstatic.com/mapfiles/rotate2.png\" alt=\"\" /></div>\r\n<div class=\"gmnoprint\" style=\"position: absolute; left: 28px; top: 130px;\"><img style=\"width: 22px; height: 39px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/szc4.png\" alt=\"\" />\r\n<div style=\"position: absolute; left: 0px; top: 0px; width: 22px; height: 17px; cursor: pointer;\" title=\"Zoom in\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 18px; width: 22px; height: 17px; cursor: pointer;\" title=\"Zoom out\"> </div>\r\n</div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"margin: 5px; z-index: 0; position: absolute; cursor: pointer; right: 0px; top: 0px;\">\r\n<div style=\"float: left;\">\r\n<div style=\"direction: ltr; overflow: hidden; text-align: center; position: relative; color: #000000; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 13px; background-color: #ffffff; padding: 1px 6px; border: 1px solid #717b87; -webkit-box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; font-weight: bold; min-width: 28px; background-position: initial initial; background-repeat: initial initial;\" title=\"Show street map\">Map</div>\r\n<div style=\"background-color: white; z-index: -1; padding-top: 2px; border-width: 0px 1px 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-color: #717b87; border-bottom-color: #717b87; border-left-color: #717b87; -webkit-box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; position: absolute; left: 0px; top: 24px; text-align: left; display: none;\">\r\n<div style=\"color: #000000; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: #ffffff; padding: 1px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap;\" title=\"Show street map with terrain\">\r\n<div style=\"position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;\"><img style=\"position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" alt=\"\" /></div>\r\n<label style=\"vertical-align: middle; cursor: pointer;\">Terrain</label></div>\r\n</div>\r\n</div>\r\n<div style=\"float: left;\">\r\n<div style=\"direction: ltr; overflow: hidden; text-align: center; position: relative; color: #333333; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 13px; background-color: #ffffff; padding: 1px 6px; border-width: 1px 1px 1px 0px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-top-color: #717b87; border-right-color: #717b87; border-bottom-color: #717b87; -webkit-box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; font-weight: normal; min-width: 51px; background-position: initial initial; background-repeat: initial initial;\" title=\"Show satellite imagery\">Satellite</div>\r\n<div style=\"background-color: white; z-index: -1; padding-top: 2px; border-width: 0px 1px 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-color: #717b87; border-bottom-color: #717b87; border-left-color: #717b87; -webkit-box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; position: absolute; right: 0px; top: 24px; text-align: left; display: none;\">\r\n<div style=\"color: #b8b8b8; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: #ffffff; padding: 1px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap; display: none;\" title=\"Zoom in to show 45 degree view\">\r\n<div style=\"position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;\"><img style=\"position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" alt=\"\" /></div>\r\n<label style=\"vertical-align: middle; cursor: pointer;\">45°</label></div>\r\n<div style=\"color: #000000; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: #ffffff; padding: 1px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap;\" title=\"Show imagery with street names\">\r\n<div style=\"position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;\"><img style=\"position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" alt=\"\" /></div>\r\n<label style=\"vertical-align: middle; cursor: pointer;\">Labels</label></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"-webkit-user-select: none; width: 107px; height: 26px; color: #000000; font-family: Arial, sans-serif; font-size: 11px; margin-bottom: 3px; position: absolute; left: 69px; bottom: 0px;\">\r\n<div style=\"width: 4px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px;\"><img style=\"position: absolute; left: 0px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"width: 103px; height: 4px; overflow: hidden; position: absolute; left: 3px; top: 11px;\"><img style=\"position: absolute; left: 0px; top: -424px; width: 103px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"position: absolute; left: 0px; top: 11px; width: 1px; height: 4px; overflow: hidden;\"><img style=\"position: absolute; left: 0px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div class=\"gmnoprint\" style=\"position: absolute; left: 0px; top: 11px; width: 1px; height: 4px; overflow: hidden; right: 0px;\"><img style=\"position: absolute; left: 0px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"width: 4px; height: 12px; overflow: hidden; position: absolute; left: 67px; top: 0px;\"><img style=\"position: absolute; left: -4px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"width: 4px; height: 12px; overflow: hidden; position: absolute; left: 103px; top: 14px;\"><img style=\"position: absolute; left: -8px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"position: absolute; left: 8px; bottom: 15px; direction: ltr;\">200 m</div>\r\n<div style=\"position: absolute; left: 8px; top: 15px; direction: ltr;\">1000 ft</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!---/map-->\r\n<p>Atlas Hostel is located next to London Paddington train station; A short walk away from the hostel and you have the majestic Hyde Park, shopping on Oxford Circus, Regents Street and Kensington.</p>\r\n<br /><form><label>Name</label> <input class=\"span7\" type=\"text\" /> <label>Email <span class=\"color-red\">*</span></label> <input class=\"span7\" type=\"text\" /> <label>Message</label> <textarea class=\"span10\" rows=\"8\"></textarea>\r\n<p><button class=\"btn-u\" type=\"submit\">Send Message</button></p>\r\n</form></div>'),(73,'<div class=\"headline\">\r\n<h3>Map</h3>\r\n</div>\r\n<div id=\"map\" class=\"map map-box map-box-space margin-bottom-40\" style=\"position: relative; background-color: #e5e3df; overflow: hidden;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 1; cursor: url(\'http://maps.gstatic.com/mapfiles/openhand_8_8.cur\'), default; -webkit-transform-origin: 0px 0px; -webkit-transform: matrix(1, 0, 0, 1, 0, 0);\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 200;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 201;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 202;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 100;\"> </div>\r\n<div style=\"position: absolute; z-index: 0; left: 0px; top: 0px;\">\r\n<div style=\"overflow: hidden; width: 570px; height: 252px;\"><img style=\"width: 570px; height: 252px;\" src=\"http://maps.googleapis.com/maps/api/js/StaticMapService.GetMapImage?1m2&amp;1i4189948&amp;2i2789013&amp;2e1&amp;3u15&amp;4m2&amp;1u570&amp;2u252&amp;5m5&amp;1e0&amp;2b1&amp;5sen-US&amp;6sus&amp;10b0&amp;token=112920\" alt=\"\" /></div>\r\n</div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 1;\">\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 4px; top: -150px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221070883&amp;src=apiv3&amp;hl=en-US&amp;x=16367&amp;s=&amp;y=10894&amp;z=15&amp;s=Gal&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 4px; top: 106px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221077399&amp;src=apiv3&amp;hl=en-US&amp;x=16367&amp;s=&amp;y=10895&amp;z=15&amp;s=Gali&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 260px; top: -150px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221079305&amp;src=apiv3&amp;hl=en-US&amp;x=16368&amp;s=&amp;y=10894&amp;z=15&amp;s=Galile&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 260px; top: 106px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221062649&amp;src=apiv3&amp;hl=en-US&amp;x=16368&amp;s=&amp;y=10895&amp;z=15&amp;s=Galileo&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -252px; top: -150px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221009590&amp;src=apiv3&amp;hl=en-US&amp;x=16366&amp;s=&amp;y=10894&amp;z=15&amp;s=&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -252px; top: 106px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221062649&amp;src=apiv3&amp;hl=en-US&amp;x=16366&amp;s=&amp;y=10895&amp;z=15&amp;s=G&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 516px; top: -150px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221032374&amp;src=apiv3&amp;hl=en-US&amp;x=16369&amp;s=&amp;y=10894&amp;z=15&amp;s=G&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: 516px; top: 106px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221054091&amp;src=apiv3&amp;hl=en-US&amp;x=16369&amp;s=&amp;y=10895&amp;z=15&amp;s=Ga&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"margin: 2px 5px 2px 2px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;\">\r\n<div style=\"width: 62px; height: 24px; cursor: pointer;\"><img style=\"position: absolute; left: 0px; top: 0px; width: 62px; height: 24px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/google_white.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"z-index: 1000001; position: absolute; right: 107px; bottom: 0px;\">\r\n<div style=\"height: 19px; -webkit-user-select: none; line-height: 19px; padding-right: 2px; padding-left: 50px; background-image: -webkit-linear-gradient(left, rgba(255, 255, 255, 0) 0px, rgba(255, 255, 255, 0.496094) 50px); font-family: Arial, sans-serif; font-size: 10px; color: #444444; white-space: nowrap; direction: ltr; text-align: right; background-position: initial initial; background-repeat: initial initial;\"><a style=\"color: #444444; text-decoration: underline; cursor: pointer; display: none;\">Map Data</a><span>Map data ©2013 Google</span><span> - </span><a style=\"color: #444444; text-decoration: underline; cursor: pointer;\" href=\"http://www.google.com/intl/en-US_US/help/terms_maps.html\" target=\"_blank\">Terms of Use</a></div>\r\n</div>\r\n<div style=\"background-color: white; padding: 15px 21px; border: 1px solid #ababab; font-family: Arial, sans-serif; color: #222222; -webkit-box-shadow: rgba(0, 0, 0, 0.199219) 0px 4px 16px; box-shadow: rgba(0, 0, 0, 0.199219) 0px 4px 16px; z-index: 10000002; display: none; width: 256px; height: 148px; position: absolute; left: 135px; top: 35px;\">\r\n<div style=\"padding: 0px 0px 10px; font-size: 16px;\">Map Data</div>\r\n<div style=\"font-size: 13px;\">Map data ©2013 Google</div>\r\n<div style=\"width: 10px; height: 10px; overflow: hidden; position: absolute; opacity: 0.7; right: 12px; top: 12px; z-index: 10000; cursor: pointer;\"><img style=\"position: absolute; left: -18px; top: -44px; width: 68px; height: 67px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"gmnoscreen\" style=\"position: absolute; right: 0px; bottom: 0px;\">\r\n<div style=\"font-family: Arial, sans-serif; font-size: 10px; color: #444444; direction: ltr; text-align: right; background-color: #f5f5f5;\">Map data ©2013 Google</div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"font-size: 10px; height: 17px; background-color: #f5f5f5; border: 1px solid #dcdcdc; line-height: 19px; position: absolute; right: 24px; bottom: 0px;\"><a style=\"font-family: Arial, sans-serif; font-size: 85%; font-weight: bold; bottom: 1px; padding: 1px 3px; color: #444444; text-decoration: none; position: relative;\" title=\"Report errors in the road map or imagery to Google\" href=\"http://maps.google.com/maps?ll=51.515067,-0.174708&amp;z=15&amp;t=m&amp;hl=en-US&amp;skstate=action:mps_dialog$apiref:1&amp;output=classic\" target=\"_new\">Report a map error</a></div>\r\n<div class=\"gmnoprint\" style=\"position: absolute; -webkit-user-select: none; margin-left: 5px; margin-top: 5px; width: 19px; height: 19px; right: 0px; bottom: 0px;\">\r\n<div style=\"background-color: #ffffff; border-left-width: 1px; border-left-style: solid; border-left-color: #979797; border-top-width: 1px; border-top-style: solid; border-top-color: #979797; overflow: hidden; width: 120px; height: 120px; display: none;\">\r\n<div style=\"position: absolute; left: 7px; top: 7px; border: 1px solid #979797; width: 111px; height: 111px; background-color: #e5e3df; overflow: hidden;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; overflow: hidden; width: 100%; height: 100%; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 1; cursor: url(\'http://maps.gstatic.com/mapfiles/openhand_8_8.cur\'), default; -webkit-transform-origin: 0px 0px; -webkit-transform: matrix(1, 0, 0, 1, 0, 0);\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 200;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 201;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 202;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 100;\"> </div>\r\n<div style=\"position: absolute; z-index: 0; left: 0px; top: 0px;\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 0;\">\r\n<div style=\"position: absolute; left: 0px; top: 0px; z-index: 1;\">\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -259px; top: -226px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221000000&amp;src=apiv3&amp;hl=en-US&amp;x=2045&amp;y=1361&amp;z=12&amp;s=&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -3px; top: -226px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221000000&amp;src=apiv3&amp;hl=en-US&amp;x=2046&amp;y=1361&amp;z=12&amp;s=Gal&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -259px; top: 30px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt1.googleapis.com/vt?lyrs=m@221000000&amp;src=apiv3&amp;hl=en-US&amp;x=2045&amp;y=1362&amp;z=12&amp;s=G&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n<div style=\"width: 256px; height: 256px; position: absolute; left: -3px; top: 30px; opacity: 1; -webkit-transition: opacity 200ms ease-out;\"><img style=\"width: 256px; height: 256px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://mt0.googleapis.com/vt?lyrs=m@221000000&amp;src=apiv3&amp;hl=en-US&amp;x=2046&amp;y=1362&amp;z=12&amp;s=Gali&amp;style=59,37%7Csmartmaps\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"width: 19px; height: 19px; position: absolute; cursor: pointer; left: 0px; top: 0px;\">\r\n<div style=\"width: 19px; height: 19px; overflow: hidden; position: absolute;\" title=\"Open the overview map\"><img style=\"position: absolute; left: -40px; top: -405px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d7.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"margin: 5px; -webkit-user-select: none; position: absolute; left: 0px; top: 0px;\">\r\n<div class=\"gmnoprint\" style=\"cursor: url(\'http://maps.gstatic.com/mapfiles/openhand_8_8.cur\'), default; width: 78px; height: 78px; position: absolute; left: 0px; top: 0px;\">\r\n<div class=\"gmnoprint\" style=\"width: 78px; height: 78px; position: absolute; left: 0px; top: 0px;\"> </div>\r\n<div class=\"gmnoprint\" style=\"position: absolute; left: 10px; top: 11px;\">\r\n<div style=\"width: 59px; height: 59px; overflow: hidden; position: relative;\"><img style=\"position: absolute; left: 0px; top: 0px; width: 59px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d7.png\" alt=\"\" />\r\n<div style=\"position: absolute; left: 0px; top: 20px; width: 19.666666666666668px; height: 19.666666666666668px; cursor: pointer;\" title=\"Pan left\"> </div>\r\n<div style=\"position: absolute; left: 39px; top: 20px; width: 19.666666666666668px; height: 19.666666666666668px; cursor: pointer;\" title=\"Pan right\"> </div>\r\n<div style=\"position: absolute; left: 20px; top: 0px; width: 19.666666666666668px; height: 19.666666666666668px; cursor: pointer;\" title=\"Pan up\"> </div>\r\n<div style=\"position: absolute; left: 20px; top: 39px; width: 19.666666666666668px; height: 19.666666666666668px; cursor: pointer;\" title=\"Pan down\"> </div>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"cursor: url(\'http://maps.gstatic.com/mapfiles/openhand_8_8.cur\'), default; position: absolute; left: 23px; top: 85px;\">\r\n<div style=\"width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px;\"><img style=\"position: absolute; left: -9px; top: -102px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 1029px; height: 255px;\" src=\"http://maps.gstatic.com/mapfiles/cb/mod_cb_scout/cb_scout_sprite_api_003.png\" alt=\"\" /></div>\r\n<div style=\"width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;\"><img style=\"position: absolute; left: -107px; top: -102px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 1029px; height: 255px;\" src=\"http://maps.gstatic.com/mapfiles/cb/mod_cb_scout/cb_scout_sprite_api_003.png\" alt=\"\" /></div>\r\n<div style=\"width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;\"><img style=\"position: absolute; left: -58px; top: -102px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 1029px; height: 255px;\" src=\"http://maps.gstatic.com/mapfiles/cb/mod_cb_scout/cb_scout_sprite_api_003.png\" alt=\"\" /></div>\r\n<div style=\"width: 32px; height: 40px; overflow: hidden; position: absolute; left: 0px; top: 0px; visibility: hidden;\"><img style=\"position: absolute; left: -205px; top: -102px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 1029px; height: 255px;\" src=\"http://maps.gstatic.com/mapfiles/cb/mod_cb_scout/cb_scout_sprite_api_003.png\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"opacity: 0.6; display: none; position: absolute;\"><img style=\"-webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; cursor: pointer; width: 22px; height: 22px;\" title=\"Rotate map 90 degrees\" src=\"http://maps.gstatic.com/mapfiles/rotate2.png\" alt=\"\" /></div>\r\n<div class=\"gmnoprint\" style=\"position: absolute; left: 28px; top: 130px;\"><img style=\"width: 22px; height: 39px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/szc4.png\" alt=\"\" />\r\n<div style=\"position: absolute; left: 0px; top: 0px; width: 22px; height: 17px; cursor: pointer;\" title=\"Zoom in\"> </div>\r\n<div style=\"position: absolute; left: 0px; top: 18px; width: 22px; height: 17px; cursor: pointer;\" title=\"Zoom out\"> </div>\r\n</div>\r\n</div>\r\n<div class=\"gmnoprint\" style=\"margin: 5px; z-index: 0; position: absolute; cursor: pointer; right: 0px; top: 0px;\">\r\n<div style=\"float: left;\">\r\n<div style=\"direction: ltr; overflow: hidden; text-align: center; position: relative; color: #000000; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 13px; background-color: #ffffff; padding: 1px 6px; border: 1px solid #717b87; -webkit-box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; font-weight: bold; min-width: 28px; background-position: initial initial; background-repeat: initial initial;\" title=\"Show street map\">Map</div>\r\n<div style=\"background-color: white; z-index: -1; padding-top: 2px; border-width: 0px 1px 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-color: #717b87; border-bottom-color: #717b87; border-left-color: #717b87; -webkit-box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; position: absolute; left: 0px; top: 24px; text-align: left; display: none;\">\r\n<div style=\"color: #000000; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: #ffffff; padding: 1px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap;\" title=\"Show street map with terrain\">\r\n<div style=\"position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;\"><img style=\"position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" alt=\"\" /></div>\r\n<label style=\"vertical-align: middle; cursor: pointer;\">Terrain</label></div>\r\n</div>\r\n</div>\r\n<div style=\"float: left;\">\r\n<div style=\"direction: ltr; overflow: hidden; text-align: center; position: relative; color: #333333; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 13px; background-color: #ffffff; padding: 1px 6px; border-width: 1px 1px 1px 0px; border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-top-color: #717b87; border-right-color: #717b87; border-bottom-color: #717b87; -webkit-box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; font-weight: normal; min-width: 51px; background-position: initial initial; background-repeat: initial initial;\" title=\"Show satellite imagery\">Satellite</div>\r\n<div style=\"background-color: white; z-index: -1; padding-top: 2px; border-width: 0px 1px 1px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-color: #717b87; border-bottom-color: #717b87; border-left-color: #717b87; -webkit-box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; box-shadow: rgba(0, 0, 0, 0.398438) 0px 2px 4px; position: absolute; right: 0px; top: 24px; text-align: left; display: none;\">\r\n<div style=\"color: #b8b8b8; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: #ffffff; padding: 1px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap; display: none;\" title=\"Zoom in to show 45 degree view\">\r\n<div style=\"position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden; display: none;\"><img style=\"position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" alt=\"\" /></div>\r\n<label style=\"vertical-align: middle; cursor: pointer;\">45°</label></div>\r\n<div style=\"color: #000000; font-family: Arial, sans-serif; -webkit-user-select: none; font-size: 11px; background-color: #ffffff; padding: 1px 8px 3px 5px; direction: ltr; text-align: left; white-space: nowrap;\" title=\"Show imagery with street names\">\r\n<div style=\"position: absolute; left: 1px; top: -2px; width: 13px; height: 11px; overflow: hidden;\"><img style=\"position: absolute; left: -52px; top: -44px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 68px; height: 67px;\" src=\"http://maps.gstatic.com/mapfiles/mv/imgs8.png\" alt=\"\" /></div>\r\n<label style=\"vertical-align: middle; cursor: pointer;\">Labels</label></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div style=\"-webkit-user-select: none; width: 107px; height: 26px; color: #000000; font-family: Arial, sans-serif; font-size: 11px; margin-bottom: 3px; position: absolute; left: 69px; bottom: 0px;\">\r\n<div style=\"width: 4px; height: 26px; overflow: hidden; position: absolute; left: 0px; top: 0px;\"><img style=\"position: absolute; left: 0px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"width: 103px; height: 4px; overflow: hidden; position: absolute; left: 3px; top: 11px;\"><img style=\"position: absolute; left: 0px; top: -424px; width: 103px; height: 492px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"position: absolute; left: 0px; top: 11px; width: 1px; height: 4px; overflow: hidden;\"><img style=\"position: absolute; left: 0px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div class=\"gmnoprint\" style=\"position: absolute; left: 0px; top: 11px; width: 1px; height: 4px; overflow: hidden; right: 0px;\"><img style=\"position: absolute; left: 0px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"width: 4px; height: 12px; overflow: hidden; position: absolute; left: 67px; top: 0px;\"><img style=\"position: absolute; left: -4px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"width: 4px; height: 12px; overflow: hidden; position: absolute; left: 103px; top: 14px;\"><img style=\"position: absolute; left: -8px; top: -398px; -webkit-user-select: none; border: 0px; padding: 0px; margin: 0px; width: 59px; height: 492px;\" src=\"http://maps.gstatic.com/mapfiles/mapcontrols3d6.png\" alt=\"\" /></div>\r\n<div style=\"position: absolute; left: 8px; bottom: 15px; direction: ltr;\">200 m</div>\r\n<div style=\"position: absolute; left: 8px; top: 15px; direction: ltr;\">1000 ft</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!---/map-->\r\n<p>Atlas Hostel is located next to London Paddington train station; A short walk away from the hostel and you have the majestic Hyde Park, shopping on Oxford Circus, Regents Street and Kensington.</p>\r\n<p> </p>\r\n<form><label>Name</label> <input class=\"span7\" type=\"text\" /> <label>Email <span class=\"color-red\">*</span></label> <input class=\"span7\" type=\"text\" /> <label>Message</label> <textarea class=\"span10\" rows=\"8\"></textarea>\r\n<p><button class=\"btn-u\" type=\"submit\">Send Message</button></p>\r\n</form>');
/*!40000 ALTER TABLE `btContentLocal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreScrapbookDisplay`
--

DROP TABLE IF EXISTS `btCoreScrapbookDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreScrapbookDisplay`
--

LOCK TABLES `btCoreScrapbookDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btCoreScrapbookDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btCoreStackDisplay`
--

DROP TABLE IF EXISTS `btCoreStackDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btCoreStackDisplay`
--

LOCK TABLES `btCoreStackDisplay` WRITE;
/*!40000 ALTER TABLE `btCoreStackDisplay` DISABLE KEYS */;
INSERT INTO `btCoreStackDisplay` VALUES (34,141),(37,142),(38,141),(39,142),(41,141),(42,142),(43,141),(44,142),(45,141),(46,142),(47,141),(48,142),(49,141),(50,142),(70,141),(71,142);
/*!40000 ALTER TABLE `btCoreStackDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDCAddressContactInfo`
--

DROP TABLE IF EXISTS `btDCAddressContactInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDCAddressContactInfo` (
  `bID` int(10) unsigned NOT NULL,
  `field_1_textbox_text` text,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDCAddressContactInfo`
--

LOCK TABLES `btDCAddressContactInfo` WRITE;
/*!40000 ALTER TABLE `btDCAddressContactInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDCAddressContactInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDCBookNow`
--

DROP TABLE IF EXISTS `btDCBookNow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDCBookNow` (
  `bID` int(10) unsigned NOT NULL,
  `field_1_textbox_text` text,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDCBookNow`
--

LOCK TABLES `btDCBookNow` WRITE;
/*!40000 ALTER TABLE `btDCBookNow` DISABLE KEYS */;
INSERT INTO `btDCBookNow` VALUES (26,'£15 a night for a bed in central london!'),(30,'£15 a night for a bed in central london!');
/*!40000 ALTER TABLE `btDCBookNow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDCDirections`
--

DROP TABLE IF EXISTS `btDCDirections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDCDirections` (
  `bID` int(10) unsigned NOT NULL,
  `field_1_textbox_text` text,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDCDirections`
--

LOCK TABLES `btDCDirections` WRITE;
/*!40000 ALTER TABLE `btDCDirections` DISABLE KEYS */;
INSERT INTO `btDCDirections` VALUES (36,'Direction');
/*!40000 ALTER TABLE `btDCDirections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDCFacebookLike`
--

DROP TABLE IF EXISTS `btDCFacebookLike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDCFacebookLike` (
  `bID` int(10) unsigned NOT NULL,
  `field_1_textbox_text` text,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDCFacebookLike`
--

LOCK TABLES `btDCFacebookLike` WRITE;
/*!40000 ALTER TABLE `btDCFacebookLike` DISABLE KEYS */;
INSERT INTO `btDCFacebookLike` VALUES (28,'Facebook'),(32,'Facebook');
/*!40000 ALTER TABLE `btDCFacebookLike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDCFollowUs`
--

DROP TABLE IF EXISTS `btDCFollowUs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDCFollowUs` (
  `bID` int(10) unsigned NOT NULL,
  `field_1_textbox_text` text,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDCFollowUs`
--

LOCK TABLES `btDCFollowUs` WRITE;
/*!40000 ALTER TABLE `btDCFollowUs` DISABLE KEYS */;
INSERT INTO `btDCFollowUs` VALUES (29,'https://twitter.com/AtlasHostels'),(33,'https://twitter.com/AtlasHostels');
/*!40000 ALTER TABLE `btDCFollowUs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDCImageSlider`
--

DROP TABLE IF EXISTS `btDCImageSlider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDCImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `field_1_textbox_text` text,
  `field_2_image_fID` int(11) DEFAULT NULL,
  `field_2_image_internalLinkCID` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDCImageSlider`
--

LOCK TABLES `btDCImageSlider` WRITE;
/*!40000 ALTER TABLE `btDCImageSlider` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDCImageSlider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDCLocation`
--

DROP TABLE IF EXISTS `btDCLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDCLocation` (
  `bID` int(10) unsigned NOT NULL,
  `field_1_textbox_text` text,
  `field_2_textbox_text` text,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDCLocation`
--

LOCK TABLES `btDCLocation` WRITE;
/*!40000 ALTER TABLE `btDCLocation` DISABLE KEYS */;
INSERT INTO `btDCLocation` VALUES (35,'16 Talbot Square, London, Paddington, W25LH','0845 519 9448'),(74,'16 Talbot Square, London, Paddington, W25LH','0845 519 9448');
/*!40000 ALTER TABLE `btDCLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDCMailingList`
--

DROP TABLE IF EXISTS `btDCMailingList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDCMailingList` (
  `bID` int(10) unsigned NOT NULL,
  `field_1_textbox_text` text,
  `field_2_textbox_text` text,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDCMailingList`
--

LOCK TABLES `btDCMailingList` WRITE;
/*!40000 ALTER TABLE `btDCMailingList` DISABLE KEYS */;
INSERT INTO `btDCMailingList` VALUES (27,'Monthley Newsletter','Subscribe to our newsletter and stay up to date with the latest news and deals!'),(31,'Monthly Newsletter','Subscribe to our newsletter and stay up to date with the latest news and deals!');
/*!40000 ALTER TABLE `btDCMailingList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDCSlideshowWithCaption`
--

DROP TABLE IF EXISTS `btDCSlideshowWithCaption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDCSlideshowWithCaption` (
  `bID` int(10) unsigned NOT NULL,
  `field_1_textbox_text` text,
  `field_2_image_fID` int(11) DEFAULT NULL,
  `field_3_textbox_text` text,
  `field_4_image_fID` int(11) DEFAULT NULL,
  `field_5_textbox_text` text,
  `field_6_image_fID` int(11) DEFAULT NULL,
  `field_7_textbox_text` text,
  `field_8_image_fID` int(11) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDCSlideshowWithCaption`
--

LOCK TABLES `btDCSlideshowWithCaption` WRITE;
/*!40000 ALTER TABLE `btDCSlideshowWithCaption` DISABLE KEYS */;
INSERT INTO `btDCSlideshowWithCaption` VALUES (22,'test 1',1,'test 2',2,'test 3',2,'',0);
/*!40000 ALTER TABLE `btDCSlideshowWithCaption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDashboardNewsflowLatest`
--

DROP TABLE IF EXISTS `btDashboardNewsflowLatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDashboardNewsflowLatest`
--

LOCK TABLES `btDashboardNewsflowLatest` WRITE;
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` DISABLE KEYS */;
INSERT INTO `btDashboardNewsflowLatest` VALUES (8,'A'),(9,'B'),(12,'C');
/*!40000 ALTER TABLE `btDashboardNewsflowLatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btDateNav`
--

DROP TABLE IF EXISTS `btDateNav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btDateNav`
--

LOCK TABLES `btDateNav` WRITE;
/*!40000 ALTER TABLE `btDateNav` DISABLE KEYS */;
/*!40000 ALTER TABLE `btDateNav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btExternalForm`
--

DROP TABLE IF EXISTS `btExternalForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btExternalForm`
--

LOCK TABLES `btExternalForm` WRITE;
/*!40000 ALTER TABLE `btExternalForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btExternalForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFlashContent`
--

DROP TABLE IF EXISTS `btFlashContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFlashContent`
--

LOCK TABLES `btFlashContent` WRITE;
/*!40000 ALTER TABLE `btFlashContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFlashContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btForm`
--

DROP TABLE IF EXISTS `btForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btForm`
--

LOCK TABLES `btForm` WRITE;
/*!40000 ALTER TABLE `btForm` DISABLE KEYS */;
/*!40000 ALTER TABLE `btForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswerSet`
--

DROP TABLE IF EXISTS `btFormAnswerSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswerSet`
--

LOCK TABLES `btFormAnswerSet` WRITE;
/*!40000 ALTER TABLE `btFormAnswerSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswerSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormAnswers`
--

DROP TABLE IF EXISTS `btFormAnswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormAnswers`
--

LOCK TABLES `btFormAnswers` WRITE;
/*!40000 ALTER TABLE `btFormAnswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormAnswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btFormQuestions`
--

DROP TABLE IF EXISTS `btFormQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btFormQuestions`
--

LOCK TABLES `btFormQuestions` WRITE;
/*!40000 ALTER TABLE `btFormQuestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btFormQuestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGoogleMap`
--

DROP TABLE IF EXISTS `btGoogleMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGoogleMap`
--

LOCK TABLES `btGoogleMap` WRITE;
/*!40000 ALTER TABLE `btGoogleMap` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGoogleMap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBook`
--

DROP TABLE IF EXISTS `btGuestBook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBook`
--

LOCK TABLES `btGuestBook` WRITE;
/*!40000 ALTER TABLE `btGuestBook` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btGuestBookEntries`
--

DROP TABLE IF EXISTS `btGuestBookEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btGuestBookEntries`
--

LOCK TABLES `btGuestBookEntries` WRITE;
/*!40000 ALTER TABLE `btGuestBookEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `btGuestBookEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNavigation`
--

DROP TABLE IF EXISTS `btNavigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNavigation`
--

LOCK TABLES `btNavigation` WRITE;
/*!40000 ALTER TABLE `btNavigation` DISABLE KEYS */;
INSERT INTO `btNavigation` VALUES (13,'display_asc','top',0,0,'none','enough',0,0),(52,'display_asc','top',0,0,'relevant_breadcrumb','enough',0,0);
/*!40000 ALTER TABLE `btNavigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btNextPrevious`
--

DROP TABLE IF EXISTS `btNextPrevious`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btNextPrevious`
--

LOCK TABLES `btNextPrevious` WRITE;
/*!40000 ALTER TABLE `btNextPrevious` DISABLE KEYS */;
/*!40000 ALTER TABLE `btNextPrevious` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btPageList`
--

DROP TABLE IF EXISTS `btPageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btPageList`
--

LOCK TABLES `btPageList` WRITE;
/*!40000 ALTER TABLE `btPageList` DISABLE KEYS */;
INSERT INTO `btPageList` VALUES (23,3,'display_asc',130,0,0,0,1,6,0,'','',0,1,0);
/*!40000 ALTER TABLE `btPageList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btRssDisplay`
--

DROP TABLE IF EXISTS `btRssDisplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btRssDisplay`
--

LOCK TABLES `btRssDisplay` WRITE;
/*!40000 ALTER TABLE `btRssDisplay` DISABLE KEYS */;
/*!40000 ALTER TABLE `btRssDisplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSearch`
--

DROP TABLE IF EXISTS `btSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSearch`
--

LOCK TABLES `btSearch` WRITE;
/*!40000 ALTER TABLE `btSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshow`
--

DROP TABLE IF EXISTS `btSlideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshow`
--

LOCK TABLES `btSlideshow` WRITE;
/*!40000 ALTER TABLE `btSlideshow` DISABLE KEYS */;
INSERT INTO `btSlideshow` VALUES (21,0,'ORDER',NULL,NULL);
/*!40000 ALTER TABLE `btSlideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSlideshowImg`
--

DROP TABLE IF EXISTS `btSlideshowImg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSlideshowImg`
--

LOCK TABLES `btSlideshowImg` WRITE;
/*!40000 ALTER TABLE `btSlideshowImg` DISABLE KEYS */;
INSERT INTO `btSlideshowImg` VALUES (3,21,1,'',4,2,0,0,360),(4,21,3,'',4,2,0,1,360);
/*!40000 ALTER TABLE `btSlideshowImg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurvey`
--

DROP TABLE IF EXISTS `btSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurvey`
--

LOCK TABLES `btSurvey` WRITE;
/*!40000 ALTER TABLE `btSurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyOptions`
--

DROP TABLE IF EXISTS `btSurveyOptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyOptions`
--

LOCK TABLES `btSurveyOptions` WRITE;
/*!40000 ALTER TABLE `btSurveyOptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyOptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSurveyResults`
--

DROP TABLE IF EXISTS `btSurveyResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSurveyResults`
--

LOCK TABLES `btSurveyResults` WRITE;
/*!40000 ALTER TABLE `btSurveyResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `btSurveyResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btSwpBreadcrumbs`
--

DROP TABLE IF EXISTS `btSwpBreadcrumbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btSwpBreadcrumbs` (
  `bID` int(10) unsigned NOT NULL,
  `delimiter` varchar(255) DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btSwpBreadcrumbs`
--

LOCK TABLES `btSwpBreadcrumbs` WRITE;
/*!40000 ALTER TABLE `btSwpBreadcrumbs` DISABLE KEYS */;
INSERT INTO `btSwpBreadcrumbs` VALUES (53,'>'),(54,'/'),(55,'/'),(56,'/'),(57,'/'),(58,'/'),(59,'/'),(60,'/'),(62,'/'),(65,'/'),(69,'/');
/*!40000 ALTER TABLE `btSwpBreadcrumbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btTags`
--

DROP TABLE IF EXISTS `btTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btTags`
--

LOCK TABLES `btTags` WRITE;
/*!40000 ALTER TABLE `btTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `btTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btVideo`
--

DROP TABLE IF EXISTS `btVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btVideo`
--

LOCK TABLES `btVideo` WRITE;
/*!40000 ALTER TABLE `btVideo` DISABLE KEYS */;
/*!40000 ALTER TABLE `btVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btYouTube`
--

DROP TABLE IF EXISTS `btYouTube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btYouTube`
--

LOCK TABLES `btYouTube` WRITE;
/*!40000 ALTER TABLE `btYouTube` DISABLE KEYS */;
/*!40000 ALTER TABLE `btYouTube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btasmillerGallery`
--

DROP TABLE IF EXISTS `btasmillerGallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btasmillerGallery` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `smallThumbs` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '600',
  `maxWidth` int(10) unsigned DEFAULT '800',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btasmillerGallery`
--

LOCK TABLES `btasmillerGallery` WRITE;
/*!40000 ALTER TABLE `btasmillerGallery` DISABLE KEYS */;
INSERT INTO `btasmillerGallery` VALUES (25,0,1,600,800);
/*!40000 ALTER TABLE `btasmillerGallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `btasmillerGalleryImg`
--

DROP TABLE IF EXISTS `btasmillerGalleryImg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `btasmillerGalleryImg` (
  `GalleryImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  `imgWidth` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`GalleryImgId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `btasmillerGalleryImg`
--

LOCK TABLES `btasmillerGalleryImg` WRITE;
/*!40000 ALTER TABLE `btasmillerGalleryImg` DISABLE KEYS */;
INSERT INTO `btasmillerGalleryImg` VALUES (1,25,3,'foo',0,360,NULL),(2,25,2,'bar',1,615,NULL),(3,25,1,'tres',2,360,NULL);
/*!40000 ALTER TABLE `btasmillerGalleryImg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-08 23:11:20
