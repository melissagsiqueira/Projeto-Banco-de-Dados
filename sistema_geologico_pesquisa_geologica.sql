-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: sistema_geologico
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `pesquisa_geologica`
--

DROP TABLE IF EXISTS `pesquisa_geologica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesquisa_geologica` (
  `id_pesquisa` int NOT NULL AUTO_INCREMENT,
  `id_geologo` int DEFAULT NULL,
  `id_pedra` int DEFAULT NULL,
  `data_pesquisa` date DEFAULT NULL,
  `observacao` text,
  PRIMARY KEY (`id_pesquisa`),
  KEY `id_geologo` (`id_geologo`),
  KEY `id_pedra` (`id_pedra`),
  CONSTRAINT `pesquisa_geologica_ibfk_1` FOREIGN KEY (`id_geologo`) REFERENCES `geologo` (`id_geologo`),
  CONSTRAINT `pesquisa_geologica_ibfk_2` FOREIGN KEY (`id_pedra`) REFERENCES `pedra` (`id_pedra`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesquisa_geologica`
--

LOCK TABLES `pesquisa_geologica` WRITE;
/*!40000 ALTER TABLE `pesquisa_geologica` DISABLE KEYS */;
INSERT INTO `pesquisa_geologica` VALUES (1,1,1,'2026-06-05','Pesquisa realizada sobre quatzo rosa encontrado na região de Mato Grosso.');
/*!40000 ALTER TABLE `pesquisa_geologica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-16 10:02:51
