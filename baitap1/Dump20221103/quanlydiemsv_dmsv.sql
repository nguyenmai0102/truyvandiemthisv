-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlydiemsv
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dmsv`
--

DROP TABLE IF EXISTS `dmsv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dmsv` (
  `MaSV` char(3) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `HoSV` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenSV` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Phai` char(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `NgaySinh` datetime NOT NULL,
  `NoiSinh` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MaKhoa` char(2) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `HocBong` float DEFAULT NULL,
  PRIMARY KEY (`MaSV`),
  KEY `DMKhoa_MaKhoa_fk` (`MaKhoa`),
  CONSTRAINT `DMKhoa_MaKhoa_fk` FOREIGN KEY (`MaKhoa`) REFERENCES `dmkhoa` (`MaKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dmsv`
--

LOCK TABLES `dmsv` WRITE;
/*!40000 ALTER TABLE `dmsv` DISABLE KEYS */;
INSERT INTO `dmsv` VALUES ('A01','Nguyễn Thị','Hải','Nữ','1990-03-20 00:00:00','Hà Nội','TH',130000),('A02','Trần Văn','Chính','Nam','1992-12-24 00:00:00','Bình Định','VL',150000),('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21 00:00:00','TP Hồ Chí Minh','TH',170000),('A04','Trần Anh','Tuấn','Nam','1990-12-20 00:00:00','Hà Nội','AV',80000),('B01','Trần Thanh','Mai','Nữ','1991-08-12 00:00:00','Hải Phòng','TR',0),('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02 00:00:00','TP Hồ Chí Minh','AV',0);
/*!40000 ALTER TABLE `dmsv` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-03 15:11:41
