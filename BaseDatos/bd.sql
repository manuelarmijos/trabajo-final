-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: 169.62.217.189    Database: turismo
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `actividadesLugares`
--

DROP TABLE IF EXISTS `actividadesLugares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividadesLugares` (
  `id` int NOT NULL AUTO_INCREMENT,
  `actividad` varchar(45) NOT NULL,
  `costo` double NOT NULL,
  `idTipoActividad` int NOT NULL,
  `idLugar` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lugares_idx` (`idLugar`),
  KEY `fk_tipo_actividad_idx` (`idTipoActividad`),
  CONSTRAINT `fk_lugares` FOREIGN KEY (`idLugar`) REFERENCES `lugares` (`idlugar`),
  CONSTRAINT `fk_tipo_actividad` FOREIGN KEY (`idTipoActividad`) REFERENCES `tipoActividad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividadesLugares`
--

LOCK TABLES `actividadesLugares` WRITE;
/*!40000 ALTER TABLE `actividadesLugares` DISABLE KEYS */;
INSERT INTO `actividadesLugares` VALUES (1,'Deporte futbol',0,2,1),(2,'Caminata',0,1,2),(3,'Caminata de personas en el parque',0,1,5),(4,'Caminata de personas en el parque sosa',2,1,5),(6,'acampada',12,4,6),(7,'montañas de escalar',12,3,6),(8,'futbol',0,2,6);
/*!40000 ALTER TABLE `actividadesLugares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lugar` varchar(45) DEFAULT NULL,
  `estrellas` int DEFAULT NULL,
  `votos` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES (1,'Jipiro',2,1),(2,'Catedral',4,1),(3,'Catamayo',4,1),(4,'Catedral',5,1),(5,'Catedral',1,1),(6,'Catedral',1,1),(7,'Catedral',1,1),(8,'Catedral',5,1),(9,'Jipiro',5,1),(10,'Catedral',5,1),(11,'Catedral',5,1),(12,'Catedral',5,1),(13,'Catedral',5,1),(14,'Catedral',5,1),(15,'Jipiro',5,1),(16,'Catamayo',5,1),(17,'Catamayo',5,1),(18,'Catedral',4,1),(19,'Catedral',1,1),(20,'Catedral',1,1),(21,'Catedral',5,1),(22,'Jipiro',5,1),(23,'Catamayo',5,1),(24,'Jipiro',1,1),(25,'Malacatos',5,1),(26,'Jipiro',5,1);
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugares`
--

DROP TABLE IF EXISTS `lugares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lugares` (
  `idlugar` int NOT NULL AUTO_INCREMENT,
  `lugar` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `latitud` varchar(45) DEFAULT NULL,
  `longitud` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlugar`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugares`
--

LOCK TABLES `lugares` WRITE;
/*!40000 ALTER TABLE `lugares` DISABLE KEYS */;
INSERT INTO `lugares` VALUES (1,'Jipiro','Parque jipiro de loja','Parque jipiro de loja','-3.9720295','-79.2056852'),(2,'Catedral','Iglesia de la ciudad de loja','Iglesia de la ciudad de loja','-3.996525','-79.2033074'),(3,'Catamayo','Aguamania','Aguamania','-3.9922311','-79.3709852'),(4,'Malacatos','Malacatos','Vía a catamayo ','-4.229633083887617','-79.24070718027343'),(5,'Vilcabamba','Vilcabamba','Vilcambamba de loja','-4.266436967385585','-79.22812418203125'),(6,'La cascarilla','Loja Norte','Norte de la ciudad de Loja','-3.992637832684178','-79.1388692519043');
/*!40000 ALTER TABLE `lugares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoActividad`
--

DROP TABLE IF EXISTS `tipoActividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoActividad` (
  `id` int NOT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoActividad`
--

LOCK TABLES `tipoActividad` WRITE;
/*!40000 ALTER TABLE `tipoActividad` DISABLE KEYS */;
INSERT INTO `tipoActividad` VALUES (1,'Caminata'),(2,'Deporte'),(3,'Montaña'),(4,'Acampada'),(5,'Canoas'),(6,'Paseo Caballo'),(7,'Bicicleta'),(8,'Parillada'),(9,'Ajedrez'),(10,'Piscina'),(11,'Golumbio'),(12,'Tarabita'),(13,'Escalar'),(14,'Parque de diversiones'),(15,'Patinestas'),(16,'Motocros'),(17,'Zoológico'),(18,'Otros');
/*!40000 ALTER TABLE `tipoActividad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-14 22:56:00
