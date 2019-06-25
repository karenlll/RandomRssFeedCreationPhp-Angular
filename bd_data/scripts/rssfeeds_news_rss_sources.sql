-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: rssfeeds
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
-- Table structure for table `news_rss_sources`
--

DROP TABLE IF EXISTS `news_rss_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news_rss_sources` (
  `idnews_rss_sources` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `url` varchar(100) NOT NULL,
  `topic` int(11) DEFAULT NULL,
  `updated_at` timestamp(5) NULL DEFAULT NULL,
  `created_at` timestamp(5) NULL DEFAULT NULL,
  PRIMARY KEY (`idnews_rss_sources`),
  KEY `news_topics_fk_idx` (`topic`),
  CONSTRAINT `news_topics_fk` FOREIGN KEY (`topic`) REFERENCES `topics` (`idtopics`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_rss_sources`
--

LOCK TABLES `news_rss_sources` WRITE;
/*!40000 ALTER TABLE `news_rss_sources` DISABLE KEYS */;
INSERT INTO `news_rss_sources` VALUES (1,'El Tiempo - Opinion','http://www.eltiempo.com/rss/opinion.xml',1,'2019-06-20 07:53:50.00000',NULL);
INSERT INTO `news_rss_sources` VALUES (2,'El Tiempo - Mas Opinion','https://www.eltiempo.com/rss/opinion_mas-opinion.xml',1,'2019-06-20 07:53:50.00000',NULL);
INSERT INTO `news_rss_sources` VALUES (3,'El Tiempo - Editoriales','https://www.eltiempo.com/rss/opinion_editorial.xml',1,'2019-06-20 07:53:50.00000',NULL);
INSERT INTO `news_rss_sources` VALUES (4,'El Tiempo - Blog','http://www.eltiempo.com/contenido/feed',1,'2019-06-20 07:53:50.00000',NULL);
/*!40000 ALTER TABLE `news_rss_sources` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-24 19:00:43
