-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: kutuphane
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `kitap_turleri`
--

DROP TABLE IF EXISTS `kitap_turleri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kitap_turleri` (
  `tur_id` tinyint NOT NULL AUTO_INCREMENT,
  `tur_adi` varchar(40) NOT NULL,
  PRIMARY KEY (`tur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitap_turleri`
--

LOCK TABLES `kitap_turleri` WRITE;
/*!40000 ALTER TABLE `kitap_turleri` DISABLE KEYS */;
INSERT INTO `kitap_turleri` VALUES (1,'Roman'),(2,'Hikaye'),(3,'Şiir'),(4,'Gezi'),(5,'Çocuk'),(6,'Kişisel Gelişim'),(7,'Sağlık');
/*!40000 ALTER TABLE `kitap_turleri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kitaplar`
--

DROP TABLE IF EXISTS `kitaplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kitaplar` (
  `kitap_id` int NOT NULL AUTO_INCREMENT,
  `tur_id` tinyint NOT NULL,
  `kitap_adi` varchar(40) NOT NULL,
  `yazar` varchar(40) NOT NULL,
  `yayinevi` varchar(40) NOT NULL,
  `sayfa_sayisi` smallint NOT NULL,
  PRIMARY KEY (`kitap_id`,`tur_id`),
  KEY `fk_kitaplar_kitap_turleri_idx` (`tur_id`),
  CONSTRAINT `fk_kitaplar_kitap_turleri` FOREIGN KEY (`tur_id`) REFERENCES `kitap_turleri` (`tur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitaplar`
--

LOCK TABLES `kitaplar` WRITE;
/*!40000 ALTER TABLE `kitaplar` DISABLE KEYS */;
INSERT INTO `kitaplar` VALUES (1,1,'Kuyucaklı Yusuf','Sabahattin Ali','Deneme',221),(2,1,'Suç ve Ceza','Dostoyevski','Deneme',687),(3,1,'Beyaz Gemi','Cengiz Aytmatov','Deneme',168),(4,1,'Sinekli Bakkal','Halide Edip Adıvar','Örnek',476),(5,1,'Çalıkuşu','Reşat Nuri Güntekin','Örnek',544),(6,1,'Sefiller','Victor Hugo','Örnek',520),(7,2,'Kaşağı','Ömer Seyfettin','Deneme',176),(8,1,'Yaban','Yakup Kadri Karaosmanoğlu','Deneme',215),(9,1,'Ölü Canlar','Gogol','Örnek',484),(10,3,'Otuz Beş Yaş','Cahit Sıtkı Tarancı','Örnek',120),(11,3,'Safahat','Mehmet Akif Ersoy','Örnek',560),(12,4,'Anadolu Notları','Reşat Nuri Güntekin','Örnek',287);
/*!40000 ALTER TABLE `kitaplar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `odunc_kitaplar`
--

DROP TABLE IF EXISTS `odunc_kitaplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `odunc_kitaplar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ogrenci_no` int NOT NULL,
  `kitap_id` int NOT NULL,
  `verilis_tarihi` date NOT NULL,
  `teslim_tarihi` date DEFAULT NULL,
  `aciklama` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`kitap_id`,`ogrenci_no`),
  KEY `fk_odunc_kitaplar_ogrenciler1_idx` (`ogrenci_no`),
  KEY `fk_odunc_kitaplar_kitaplar1_idx` (`kitap_id`),
  CONSTRAINT `fk_odunc_kitaplar_kitaplar1` FOREIGN KEY (`kitap_id`) REFERENCES `kitaplar` (`kitap_id`),
  CONSTRAINT `fk_odunc_kitaplar_ogrenciler1` FOREIGN KEY (`ogrenci_no`) REFERENCES `ogrenciler` (`ogrenci_no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `odunc_kitaplar`
--

LOCK TABLES `odunc_kitaplar` WRITE;
/*!40000 ALTER TABLE `odunc_kitaplar` DISABLE KEYS */;
INSERT INTO `odunc_kitaplar` VALUES (7,145,3,'2022-02-09',NULL,NULL),(8,222,2,'2022-02-09',NULL,NULL),(9,188,12,'2022-02-09',NULL,NULL),(10,985,1,'2022-02-16',NULL,NULL),(11,461,6,'2022-02-18',NULL,NULL),(12,344,8,'2022-02-18',NULL,NULL);
/*!40000 ALTER TABLE `odunc_kitaplar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ogrenciler`
--

DROP TABLE IF EXISTS `ogrenciler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogrenciler` (
  `ogrenci_no` int NOT NULL,
  `ad` varchar(25) NOT NULL,
  `soyad` varchar(25) NOT NULL,
  `sinif` tinyint NOT NULL,
  `cinsiyet` varchar(7) NOT NULL,
  `telefon` varchar(12) NOT NULL,
  PRIMARY KEY (`ogrenci_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogrenciler`
--

LOCK TABLES `ogrenciler` WRITE;
/*!40000 ALTER TABLE `ogrenciler` DISABLE KEYS */;
INSERT INTO `ogrenciler` VALUES (99,'Ayşe','Y.',9,'Kız','567854333'),(145,'Esat','E.',11,'Erkek','066378412'),(150,'Emirhan','Ç.',11,'Erkek','0765434566'),(188,'Ali','K.',9,'Erkek','076665332'),(222,'Zeynep','Ö.',10,'Kız','04678433568'),(344,'Esra','Ö.',10,'Kız','036653246'),(460,'Yakup','B.',11,'Erkek','086306894'),(461,'Serpil','K.',10,'Kız','08876543456'),(985,'Mehmet','D.',12,'Erkek','0188654678');
/*!40000 ALTER TABLE `ogrenciler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12 19:07:44
