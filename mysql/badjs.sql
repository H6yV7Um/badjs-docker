-- MySQL dump 10.13  Distrib 5.6.27, for Linux (x86_64)
--
-- Host: localhost    Database: badjs
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `b_apply`
--

DROP TABLE IF EXISTS `b_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `appkey` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `blacklist` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `mail` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `passTime` datetime DEFAULT NULL,
  `online` int(2) DEFAULT '1',
  `limitpv` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_apply`
--

LOCK TABLES `b_apply` WRITE;
/*!40000 ALTER TABLE `b_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_approve`
--

DROP TABLE IF EXISTS `b_approve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_approve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reply` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `applyId` int(11) NOT NULL,
  `createTime` timestamp NULL DEFAULT NULL,
  `applyStatus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `applyId` (`applyId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_approve`
--

LOCK TABLES `b_approve` WRITE;
/*!40000 ALTER TABLE `b_approve` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_approve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_data`
--

DROP TABLE IF EXISTS `b_log_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_log_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logpv` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_data`
--

LOCK TABLES `b_log_data` WRITE;
/*!40000 ALTER TABLE `b_log_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_pv`
--

DROP TABLE IF EXISTS `b_pv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_pv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badjsid` int(11) NOT NULL DEFAULT '0',
  `pv` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `badjsid` (`badjsid`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_pv`
--

LOCK TABLES `b_pv` WRITE;
/*!40000 ALTER TABLE `b_pv` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_pv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_quality`
--

DROP TABLE IF EXISTS `b_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_quality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badjsid` int(11) NOT NULL DEFAULT '0',
  `rate` varchar(10) DEFAULT NULL,
  `pv` int(11) DEFAULT NULL,
  `badjscount` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `badjsid` (`badjsid`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_quality`
--

LOCK TABLES `b_quality` WRITE;
/*!40000 ALTER TABLE `b_quality` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_score`
--

DROP TABLE IF EXISTS `b_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `badjsid` int(11) NOT NULL DEFAULT '0',
  `score` varchar(10) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `badjsid` (`badjsid`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_score`
--

LOCK TABLES `b_score` WRITE;
/*!40000 ALTER TABLE `b_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_statistics`
--

DROP TABLE IF EXISTS `b_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_statistics`
--

LOCK TABLES `b_statistics` WRITE;
/*!40000 ALTER TABLE `b_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user`
--

DROP TABLE IF EXISTS `b_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `chineseName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user`
--

LOCK TABLES `b_user` WRITE;
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
INSERT INTO `b_user` VALUES (1,'sampsonwang','sampsonwang',1,'sampsonwang@tencent.com','952ad24938ada99304c5d8821e3af86e');
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_apply`
--

DROP TABLE IF EXISTS `b_user_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `applyId` int(11) NOT NULL,
  `role` int(1) NOT NULL DEFAULT '0',
  `createTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `applyId_idx` (`applyId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_apply`
--

LOCK TABLES `b_user_apply` WRITE;
/*!40000 ALTER TABLE `b_user_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_apply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-27 19:39:38
