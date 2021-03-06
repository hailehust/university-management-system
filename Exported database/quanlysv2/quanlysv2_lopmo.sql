-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: quanlysv2
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `lopmo`
--

DROP TABLE IF EXISTS `lopmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lopmo` (
  `maLopMo` varchar(45) NOT NULL,
  `soLuongSinhVienToiDa` int(11) NOT NULL,
  `siSo` int(11) NOT NULL,
  `maHocPhan` varchar(40) NOT NULL,
  `maHocKyHeThong` varchar(20) NOT NULL,
  PRIMARY KEY (`maLopMo`),
  KEY `fk_lopmotc_hocphantc1_idx` (`maHocPhan`),
  KEY `fk_lopmotc_hockyhethong1_idx` (`maHocKyHeThong`),
  CONSTRAINT `fk_lopmotc_hockyhethong1` FOREIGN KEY (`maHocKyHeThong`) REFERENCES `hockyhethong` (`maHocKyHeThong`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lopmotc_hocphantc1` FOREIGN KEY (`maHocPhan`) REFERENCES `hocphan` (`maHocPhan`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lopmo`
--

LOCK TABLES `lopmo` WRITE;
/*!40000 ALTER TABLE `lopmo` DISABLE KEYS */;
/*!40000 ALTER TABLE `lopmo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-15 16:42:32
