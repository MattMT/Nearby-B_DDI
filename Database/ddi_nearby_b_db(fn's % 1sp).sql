CREATE DATABASE  IF NOT EXISTS `ddi_nearby_b_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ddi_nearby_b_db`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ddi_nearby_b_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `tbb_negocio`
--

DROP TABLE IF EXISTS `tbb_negocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_negocio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `status` tinyint DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `categoria_ID` int DEFAULT NULL,
  `horario_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  KEY `categoria_idx` (`categoria_ID`),
  KEY `horario_idx` (`horario_ID`),
  CONSTRAINT `categoria` FOREIGN KEY (`categoria_ID`) REFERENCES `tbc_categoria` (`ID`),
  CONSTRAINT `horario` FOREIGN KEY (`horario_ID`) REFERENCES `tbc_horario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_negocio`
--

LOCK TABLES `tbb_negocio` WRITE;
/*!40000 ALTER TABLE `tbb_negocio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_negocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_persona`
--

DROP TABLE IF EXISTS `tbb_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_persona` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido_1` varchar(45) NOT NULL,
  `apellido_2` varchar(45) DEFAULT NULL,
  `genero` enum('M','F') NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `status` tinyint DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_persona`
--

LOCK TABLES `tbb_persona` WRITE;
/*!40000 ALTER TABLE `tbb_persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_sucursal`
--

DROP TABLE IF EXISTS `tbb_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_sucursal` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `capacidad` int NOT NULL,
  `status` tinyint DEFAULT '1',
  `fecha_registro` datetime NOT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `negocio_ID` int NOT NULL,
  `ubicacion_sucursal_ID` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ubicacion_idx` (`ubicacion_sucursal_ID`),
  KEY `negocio_idx` (`negocio_ID`),
  CONSTRAINT `negocio` FOREIGN KEY (`negocio_ID`) REFERENCES `tbb_negocio` (`ID`),
  CONSTRAINT `ubicacion_sucursal_ID` FOREIGN KEY (`ubicacion_sucursal_ID`) REFERENCES `tbb_ubicacion` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_sucursal`
--

LOCK TABLES `tbb_sucursal` WRITE;
/*!40000 ALTER TABLE `tbb_sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_ubicacion`
--

DROP TABLE IF EXISTS `tbb_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_ubicacion` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `pais_ID` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `Ubicacion_Padre_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_ubicacion_ID_idx` (`Ubicacion_Padre_ID`),
  CONSTRAINT `fk_ubicacion_ID` FOREIGN KEY (`Ubicacion_Padre_ID`) REFERENCES `tbb_ubicacion` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_ubicacion`
--

LOCK TABLES `tbb_ubicacion` WRITE;
/*!40000 ALTER TABLE `tbb_ubicacion` DISABLE KEYS */;
INSERT INTO `tbb_ubicacion` VALUES (1,'Noroeste','Región',1,1,'2023-08-04 11:50:17',NULL,NULL),(2,'Baja California','Estado',1,1,'2023-08-04 11:50:17',NULL,1),(3,'Baja California Sur','Estado',1,1,'2023-08-04 11:50:17',NULL,1),(4,'Chihuahua','Estado',1,1,'2023-08-04 11:50:17',NULL,1),(5,'Durango','Estado',1,1,'2023-08-04 11:50:17',NULL,1),(6,'Sinaloa','Estado',1,1,'2023-08-04 11:50:17',NULL,1),(7,'Sonora','Estado',1,1,'2023-08-04 11:50:17',NULL,1),(8,'Noreste','Región',1,1,'2023-08-04 11:50:18',NULL,NULL),(9,'Coahuila','Estado',1,1,'2023-08-04 11:50:18',NULL,8),(10,'Nuevo León','Estado',1,1,'2023-08-04 11:50:18',NULL,8),(11,'Tamaulipas','Estado',1,1,'2023-08-04 11:50:18',NULL,8),(12,'Occidente','Región',1,1,'2023-08-04 11:50:18',NULL,NULL),(13,'Colima','Estado',1,1,'2023-08-04 11:50:18',NULL,12),(14,'Jalisco','Estado',1,1,'2023-08-04 11:50:18',NULL,12),(15,'Michoacán','Estado',1,1,'2023-08-04 11:50:18',NULL,12),(16,'Nayarit','Estado',1,1,'2023-08-04 11:50:18',NULL,12),(17,'Oriente','Región',1,1,'2023-08-04 11:50:18',NULL,NULL),(18,'Hidalgo','Estado',1,1,'2023-08-04 11:50:18',NULL,17),(19,'Puebla','Estado',1,1,'2023-08-04 11:50:18',NULL,17),(20,'Veracruz','Estado',1,1,'2023-08-04 11:50:18',NULL,17),(21,'Tlaxcala','Estado',1,1,'2023-08-04 11:50:18',NULL,17),(22,'Centronorte','Región',1,1,'2023-08-04 11:50:18',NULL,NULL),(23,'Aguascalientes','Estado',1,1,'2023-08-04 11:50:18',NULL,22),(24,'Guanajuato','Estado',1,1,'2023-08-04 11:50:18',NULL,22),(25,'Querétaro','Estado',1,1,'2023-08-04 11:50:18',NULL,22),(26,'San Luis Potosí','Estado',1,1,'2023-08-04 11:50:18',NULL,22),(27,'Zacatecas','Estado',1,1,'2023-08-04 11:50:18',NULL,22),(28,'Centrosur','Región',1,1,'2023-08-04 11:50:18',NULL,NULL),(29,'Ciudad de México','Entidad Federativa',1,1,'2023-08-04 11:50:18',NULL,28),(30,'Estado de México','Estado',1,1,'2023-08-04 11:50:18',NULL,28),(31,'Morelos','Estado',1,1,'2023-08-04 11:50:18',NULL,28),(32,'Suroeste','Región',1,1,'2023-08-04 11:50:18',NULL,NULL),(33,'Chiapas','Estado',1,1,'2023-08-04 11:50:18',NULL,32),(34,'Guerrero','Estado',1,1,'2023-08-04 11:50:18',NULL,32),(35,'Oaxaca','Estado',1,1,'2023-08-04 11:50:18',NULL,32),(36,'Sureste','Región',1,1,'2023-08-04 11:50:18',NULL,NULL),(37,'Campeche','Estado',1,1,'2023-08-04 11:50:18',NULL,36),(38,'Quintana Roo','Estado',1,1,'2023-08-04 11:50:18',NULL,36),(39,'Tabasco','Estado',1,1,'2023-08-04 11:50:18',NULL,36),(40,'Yucatán','Estado',1,1,'2023-08-04 11:50:18',NULL,36),(41,'Huauchinango','Ciudad',1,1,'2023-08-04 11:50:18',NULL,19),(42,'Lázaro Cárdenas','Ciudad',1,1,'2023-08-04 11:50:18',NULL,19),(43,'Juan Galindo','Ciudad',1,1,'2023-08-04 11:50:18',NULL,19),(44,'Xicotepec','Ciudad',1,1,'2023-08-04 11:50:18',NULL,19),(45,'Villa Ávila Camacho','Ciudad',1,1,'2023-08-04 11:50:18',NULL,19),(46,'73080','Código Postal',1,1,'2023-08-04 11:50:18',NULL,44),(47,'La Rivera','Colonia',1,1,'2023-08-04 11:50:18',NULL,46),(48,'Ganadera','Colonia',1,1,'2023-08-04 11:50:18',NULL,46),(49,'González Ortega','Calle',1,1,'2023-08-04 11:50:18',NULL,47),(50,'Mina','Calle',1,1,'2023-08-04 11:50:18',NULL,47),(51,'45','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,49),(52,'46','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,49),(53,'47','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,49),(54,'48','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,49),(55,'49','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,49),(56,'S/N','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,49),(57,'101','Número Interior',1,1,'2023-08-04 11:50:18',NULL,51),(58,'102','Número Interior',1,1,'2023-08-04 11:50:18',NULL,51),(59,'201','Número Interior',1,1,'2023-08-04 11:50:18',NULL,51),(60,'202','Número Interior',1,1,'2023-08-04 11:50:18',NULL,51),(61,'301','Número Interior',1,1,'2023-08-04 11:50:18',NULL,51),(62,'302','Número Interior',1,1,'2023-08-04 11:50:18',NULL,51),(63,'102','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,50),(64,'103','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,50),(65,'105','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,50),(66,'108','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,50),(67,'109','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,50),(68,'S/N','Número Exterior',1,1,'2023-08-04 11:50:18',NULL,50),(69,'A','Número Interior',1,1,'2023-08-04 11:50:18',NULL,64),(70,'B','Número Interior',1,1,'2023-08-04 11:50:18',NULL,64),(71,'C','Número Interior',1,1,'2023-08-04 11:50:18',NULL,64),(72,'Libertad','Colonia',1,1,'2023-08-04 11:50:18',NULL,41),(73,'Catalina','Colonia',1,1,'2023-08-04 11:50:18',NULL,41),(74,'Potro','Colonia',1,1,'2023-08-04 11:50:18',NULL,43),(75,'Centro','Colonia',1,1,'2023-08-04 11:50:18',NULL,43),(76,'Los Manguitos','Colonia',1,1,'2023-08-04 11:50:18',NULL,42),(77,'El Huasteco','Colonia',1,1,'2023-08-04 11:50:18',NULL,42),(78,'Jalapilla','Colonia',1,1,'2023-08-04 11:50:18',NULL,45),(79,'5 Mayo','Colonia',1,1,'2023-08-04 11:50:18',NULL,45),(80,'Noroeste','Región',1,1,'2023-08-04 11:50:21',NULL,NULL),(81,'Baja California','Estado',1,1,'2023-08-04 11:50:21',NULL,80),(82,'Baja California Sur','Estado',1,1,'2023-08-04 11:50:21',NULL,80),(83,'Chihuahua','Estado',1,1,'2023-08-04 11:50:21',NULL,80),(84,'Durango','Estado',1,1,'2023-08-04 11:50:21',NULL,80),(85,'Sinaloa','Estado',1,1,'2023-08-04 11:50:21',NULL,80),(86,'Sonora','Estado',1,1,'2023-08-04 11:50:21',NULL,80),(87,'Noreste','Región',1,1,'2023-08-04 11:50:21',NULL,NULL),(88,'Coahuila','Estado',1,1,'2023-08-04 11:50:21',NULL,87),(89,'Nuevo León','Estado',1,1,'2023-08-04 11:50:21',NULL,87),(90,'Tamaulipas','Estado',1,1,'2023-08-04 11:50:21',NULL,87),(91,'Occidente','Región',1,1,'2023-08-04 11:50:21',NULL,NULL),(92,'Colima','Estado',1,1,'2023-08-04 11:50:21',NULL,91),(93,'Jalisco','Estado',1,1,'2023-08-04 11:50:21',NULL,91),(94,'Michoacán','Estado',1,1,'2023-08-04 11:50:21',NULL,91),(95,'Nayarit','Estado',1,1,'2023-08-04 11:50:21',NULL,91),(96,'Oriente','Región',1,1,'2023-08-04 11:50:21',NULL,NULL),(97,'Hidalgo','Estado',1,1,'2023-08-04 11:50:21',NULL,96),(98,'Puebla','Estado',1,1,'2023-08-04 11:50:21',NULL,96),(99,'Veracruz','Estado',1,1,'2023-08-04 11:50:21',NULL,96),(100,'Tlaxcala','Estado',1,1,'2023-08-04 11:50:21',NULL,96),(101,'Centronorte','Región',1,1,'2023-08-04 11:50:21',NULL,NULL),(102,'Aguascalientes','Estado',1,1,'2023-08-04 11:50:21',NULL,101),(103,'Guanajuato','Estado',1,1,'2023-08-04 11:50:21',NULL,101),(104,'Querétaro','Estado',1,1,'2023-08-04 11:50:21',NULL,101),(105,'San Luis Potosí','Estado',1,1,'2023-08-04 11:50:21',NULL,101),(106,'Zacatecas','Estado',1,1,'2023-08-04 11:50:21',NULL,101),(107,'Centrosur','Región',1,1,'2023-08-04 11:50:21',NULL,NULL),(108,'Ciudad de México','Entidad Federativa',1,1,'2023-08-04 11:50:21',NULL,107),(109,'Estado de México','Estado',1,1,'2023-08-04 11:50:21',NULL,107),(110,'Morelos','Estado',1,1,'2023-08-04 11:50:21',NULL,107),(111,'Suroeste','Región',1,1,'2023-08-04 11:50:21',NULL,NULL),(112,'Chiapas','Estado',1,1,'2023-08-04 11:50:21',NULL,111),(113,'Guerrero','Estado',1,1,'2023-08-04 11:50:21',NULL,111),(114,'Oaxaca','Estado',1,1,'2023-08-04 11:50:21',NULL,111),(115,'Sureste','Región',1,1,'2023-08-04 11:50:21',NULL,NULL),(116,'Campeche','Estado',1,1,'2023-08-04 11:50:21',NULL,115),(117,'Quintana Roo','Estado',1,1,'2023-08-04 11:50:21',NULL,115),(118,'Tabasco','Estado',1,1,'2023-08-04 11:50:21',NULL,115),(119,'Yucatán','Estado',1,1,'2023-08-04 11:50:21',NULL,115);
/*!40000 ALTER TABLE `tbb_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_usuario`
--

DROP TABLE IF EXISTS `tbb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuario` (
  `nombre_usuario` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  `status` tinyint DEFAULT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `persona_ID` int NOT NULL,
  `rol_ID` int NOT NULL,
  `ubicacion_usuario_ID` int unsigned NOT NULL,
  KEY `persona_idx` (`persona_ID`),
  KEY `rol_idx` (`rol_ID`),
  KEY `ubicacion_idx` (`ubicacion_usuario_ID`),
  KEY `ubicacion_usuario_idx` (`ubicacion_usuario_ID`),
  CONSTRAINT `fk_ubicacion_usuario_ID` FOREIGN KEY (`ubicacion_usuario_ID`) REFERENCES `tbb_ubicacion` (`ID`),
  CONSTRAINT `persona` FOREIGN KEY (`persona_ID`) REFERENCES `tbb_persona` (`ID`),
  CONSTRAINT `rol` FOREIGN KEY (`rol_ID`) REFERENCES `tbc_rol` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuario`
--

LOCK TABLES `tbb_usuario` WRITE;
/*!40000 ALTER TABLE `tbb_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_categoria`
--

DROP TABLE IF EXISTS `tbc_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_categoria` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `decripcion` varchar(200) NOT NULL,
  `status` tinyint DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_categoria`
--

LOCK TABLES `tbc_categoria` WRITE;
/*!40000 ALTER TABLE `tbc_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_horario`
--

DROP TABLE IF EXISTS `tbc_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_horario` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `status` tinyint DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_horario`
--

LOCK TABLES `tbc_horario` WRITE;
/*!40000 ALTER TABLE `tbc_horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_rol`
--

DROP TABLE IF EXISTS `tbc_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_rol` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `status` tinyint DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_rol`
--

LOCK TABLES `tbc_rol` WRITE;
/*!40000 ALTER TABLE `tbc_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_servicio`
--

DROP TABLE IF EXISTS `tbc_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_servicio` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_servicio`
--

LOCK TABLES `tbc_servicio` WRITE;
/*!40000 ALTER TABLE `tbc_servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_servicios_sucursal`
--

DROP TABLE IF EXISTS `tbd_servicios_sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_servicios_sucursal` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `sucursal_ID` int NOT NULL,
  `servicio_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `sucursal_ID_idx` (`sucursal_ID`),
  KEY `servicio_ID_idx` (`servicio_ID`,`sucursal_ID`),
  CONSTRAINT `servicio` FOREIGN KEY (`servicio_ID`) REFERENCES `tbc_servicio` (`ID`),
  CONSTRAINT `sucursal` FOREIGN KEY (`sucursal_ID`) REFERENCES `tbb_sucursal` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_servicios_sucursal`
--

LOCK TABLES `tbd_servicios_sucursal` WRITE;
/*!40000 ALTER TABLE `tbd_servicios_sucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_servicios_sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_valoracion`
--

DROP TABLE IF EXISTS `tbd_valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_valoracion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `puntuacion` enum('1','2','3','4','5') NOT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `usuario_ID` int DEFAULT NULL,
  `servicio_ID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `valoracion_servicio_ID_idx` (`servicio_ID`),
  KEY `valoracion_usuario_ID_idx` (`usuario_ID`),
  CONSTRAINT `valoracion_servicio_ID` FOREIGN KEY (`servicio_ID`) REFERENCES `tbc_servicio` (`ID`),
  CONSTRAINT `valoracion_usuario_ID` FOREIGN KEY (`usuario_ID`) REFERENCES `tbb_usuario` (`persona_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_valoracion`
--

LOCK TABLES `tbd_valoracion` WRITE;
/*!40000 ALTER TABLE `tbd_valoracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_valoracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ddi_nearby_b_db'
--

--
-- Dumping routines for database 'ddi_nearby_b_db'
--
/*!50003 DROP FUNCTION IF EXISTS `fnBanderaPorcentaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnBanderaPorcentaje`(v_porcentaje int) RETURNS int
    DETERMINISTIC
BEGIN
	declare v_valor int default (fnNumeroAleatorioRangos(0,100));
	declare v_bandera boolean default false;

	if v_valor <= v_porcentaje then
		set v_bandera = true;
	end if;
	RETURN v_bandera;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnCalculaEdad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnCalculaEdad`(v_fechaNacimiento DATE) RETURNS int
    DETERMINISTIC
BEGIN
RETURN FLOOR(DATEDIFF(NOW(),v_fechaNacimiento)/365.25);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnGeneraApellido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGeneraApellido`() RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_apellidoGenerado VARCHAR(50) DEFAULT NULL;

		SET v_apellidoGenerado = ELT(fnNumeroAleatorioRangos(1,100), 
			"Álvarez","Briones","Cruz","Díaz","Estrada", "Fuentes","Gayosso","Hernández","Ibarra","Jiménez",
			"Kuno","López","Martínez","Ortíz","Paredes", "Quiróz","Ramírez","Sampayo","Téllez","Urbina",
			"Vargas","Wurtz","Ximénez","Yañez","Zapata", "García","González","Pérez","Rodríguez","Sánchez",
            "Romero","Gómez","Flores","Morales","Vázquez", "Reyes","Torres","Gutiérrez","Ruíz","Mendoza",
            "Aguilar","Moreno","Castillo","Méndez","Chávez", "Rivera","Juárez","Ramos","Domínguez","Herrera",
            "Medina","Castro","Vargas","Guzmán","Velazquez", "Muñoz","Rojas","de la Cruz","Contreras","Salazar",
            "Luna","Ortega","Santiago","Guerrero","Bautista", "Cortés","Soto","Alvarado","Espinoza","Lara",
            "Ávila","Ríos","Cervantes","Silva","Delgado", "Vega","Márquez","Sandoval","Carrillo","León",
            "Mejía","Solís","Rosas","Valdéz","Nuñez", "Campos","Santos","Camacho","Navarro","Peña",
            "Maldonado","Rosales","Acosta","Miranda","Trejo", "Valencia","Nava","Pacheco","Huerta","Padilla");

RETURN v_apellidoGenerado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnGeneraEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGeneraEmail`(v_nombre VARCHAR(50), v_apellido1 VARCHAR(50)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_usuarioEmail VARCHAR(60) DEFAULT NULL;
    DECLARE v_dominio VARCHAR(60) DEFAULT NULL;
    DECLARE v_emailExixtente BOOLEAN DEFAULT FALSE;
    DECLARE v_numeral INT DEFAULT NULL;
    DECLARE v_emailGenerado VARCHAR(60) DEFAULT NULL;
    DECLARE v_numeralEmail INT DEFAULT NULL;
    
    SET v_apellido1 = fnRemplazaCaracteres(v_apellido1);
    SET v_usuarioEmail = fnRemplazaCaracteres(concat(substring(v_nombre,1,1),".",v_apellido1));
    SET v_dominio = ELT(fnNumeroAleatorioRangos(1,10),
		"hotmail.com", "live.com", "gmail.com","outlook.com","yahoo.com",
		"altavista.com","excite.com","gmx.com","zoho.com","apple.com");
	SET v_emailGenerado = lower(CONCAT(v_usuarioEmail,'@',v_dominio));
		IF v_emailGenerado IN (SELECT email FROM tbb_usuario WHERE email LIKE CONCAT(v_usuarioEmail,'%@', v_dominio)) THEN
        SET v_emailGenerado = (SELECT COUNT(*) FROM tbb_usuario WHERE email LIKE CONCAT(v_usuarioEmail,'%@', v_dominio))+1;
        SET v_emailGenerado = LOWER(CONCAT(v_usuarioEmail, v_numeralEmail,'@',v_dominio));
        END IF;
RETURN v_emailGenerado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnGeneraFechaHoraRandom` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGeneraFechaHoraRandom`(fechaInicio DATETIME, fechaFin DATETIME) RETURNS datetime
    DETERMINISTIC
BEGIN
    DECLARE v_fechaAleatoria DATETIME;
    DECLARE v_segundosTotales INT;
    
    SET @ultimo_mensaje= CONCAT("Calculando una fecha con hora del: ", fechaInicio, " al " , fechaFin, " -->", now());
    SET v_fechaAleatoria = fechaInicio;
    SET v_segundosTotales = TIMESTAMPDIFF(SECOND, fechaInicio, fechaFin);
    SET @segundos_totales= CONCAT("Segundos Totales: ", v_segundosTotales);
    SET v_fechaAleatoria = v_fechaAleatoria + INTERVAL FLOOR(RAND() * v_segundosTotales) SECOND;
    RETURN v_fechaAleatoria;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnGeneraFechaNacimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGeneraFechaNacimiento`(fechaInicio date, fechaFin date) RETURNS date
    DETERMINISTIC
BEGIN
	declare minDias int;
    declare maxDias int;
    declare diasAleatorios int;
    declare fechaAleatoria date;
    
    set minDias = datediff(fechaInicio, '1900-01-01');
    set maxDias = datediff(fechaFin, '1900-01-01');
    set diasAleatorios = fnNumeroAleatorioRangos(minDias, maxDias);
    set fechaAleatoria = date_add('1900-01-01', interval diasAleatorios day);
RETURN fechaAleatoria;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnGeneraNombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGeneraNombre`(v_genero CHAR) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_nombreGenerado VARCHAR(50) DEFAULT NULL;
    DECLARE v_nombreGenerado2 VARCHAR(50) DEFAULT NULL;    
    /*DECLARE v_primerapellido VARCHAR(50) DEFAULT NULL;    
    DECLARE v_segundoapellido VARCHAR(50) DEFAULT NULL;*/    
    DECLARE v_banderaNombreCompuesto BOOLEAN DEFAULT (fnBanderaPorcentaje(35));
    
   	SET v_nombreGenerado = fnGeneraNombreSimple(v_genero);
    
    IF v_banderaNombreCompuesto THEN 
		WHILE v_nombreGenerado2 IS NULL OR v_nombreGenerado2 = v_nombreGenerado DO
             SET v_nombreGenerado2 = fnGeneraNombreSimple(v_genero);
        END WHILE;
        SET v_nombreGenerado = CONCAT(v_nombreGenerado," ", v_nombreGenerado2);
	END IF;
    
    RETURN v_nombreGenerado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnGeneraNombreSimple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGeneraNombreSimple`(v_genero CHAR) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_nombreGenerado VARCHAR(100) DEFAULT NULL;
    
		IF v_genero = "M" THEN 
			SET v_nombreGenerado = ELT(fnNumeroAleatorioRangos(1,50),
				"Antonio", "Baltazar", "Carlos", "Daniel", "Ernesto", "Fernando", "Gustavo", "Hugo", "Ignacio" ,"Jaime",
                "Karim", "Lorenzo", "Manuel", "Nabor", "Octavio", "Pablo", "Quetzálcoatl", "Ramón", "Saúl" ,"Tadeo",
                "Uriel", "Valentín", "Yahir", "Xavier", "Zacek", "Alejandro", "Bernardo", "Camilo", "Dylan" ,"Edgar",
                "Francisco", "Gerardo", "Héctor", "Iván", "Josafat", "Karlo", "Luis", "Marco", "Neftalí" ,"Óscar",
                "Pedro", "Raúl", "Salvador", "Timoteo", "Uziel", "Víctor", "William", "Germán", "Benito","Gonzálo");
		ELSEIF v_genero = "F" THEN 
			SET v_nombreGenerado = ELT(fnNumeroAleatorioRangos(1,50),
				"Alondra", "Berenice", "Carla", "Daniela", "Evelyn", "Fernanda", "Gabriela", "Hanna", "Isabel" ,"Jazmín",
                "Karen", "Laura", "María", "Natalia", "Olga", "Patricia", "Quetzálli", "Renata", "Sandra" ,"Tamara",
                "Ursula", "Valeria", "Yara", "Xochítl", "Zara", "Alma", "Barbara", "Carolina", "Denisse" ,"Esther",
                "Fatima", "Galilea", "Helena", "Ivana", "Jaqueline", "Karla", "Lorena", "Magdalena", "Nadia" ,"Ofelia",
                "Paola", "Rosa", "Salomé", "Tanya", "Alejandra", "Josefa", "Wendy", "Valentina", "Elena","Sofía");
		END IF;
	RETURN v_nombreGenerado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnGeneraNombreUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGeneraNombreUsuario`(v_id INT) RETURNS varchar(255) CHARSET utf8mb3
    DETERMINISTIC
BEGIN
	DECLARE v_titulo VARCHAR(15) DEFAULT NULL;
	DECLARE v_nombre VARCHAR(50) DEFAULT '-';
    DECLARE v_apellido VARCHAR(50) DEFAULT '-';
    DECLARE v_numeral INT DEFAULT 0;
    
    SET v_nombre = (SELECT nombre FROM tbb_persona WHERE id=v_id);
    SET v_apellido = (SELECT apellido_1 FROM tbb_persona WHERE id=v_id);
    
    IF v_titulo IS NULL THEN
		SET v_numeral = (SELECT COUNT(*) FROM tbb_usuario WHERE nombre_usuario LIKE CONCAT(v_nombre,' ',v_apellido,' %'));
    ELSE
		SET v_numeral = (SELECT COUNT(*) FROM tbb_usuario WHERE nombre_usuario LIKE CONCAT(v_titulo,' ',v_nombre,' ',v_apellido,' %'));
	END IF;
    
    IF v_titulo IS NULL AND v_numeral > 0 THEN
		RETURN CONCAT(v_nombre,' ',v_apellido,' ',v_numeral);
	ELSEIF v_titulo IS NULL AND v_numeral = 0 THEN
		RETURN CONCAT(v_nombre,' ',v_apellido);
	ELSEIF v_titulo IS NOT NULL AND v_numeral > 0 THEN
		RETURN CONCAT(v_titulo,' ',v_nombre,' ',v_apellido,' ',v_numeral);
	ELSE 
		RETURN CONCAT(v_titulo,' ',v_nombre,' ',v_apellido);
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnGeneraPwdRandom` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnGeneraPwdRandom`(minChars INT, maxChars INT) RETURNS char(32) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE chars VARCHAR(255) DEFAULT 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+=-';
    DECLARE pwdChain CHAR(32) DEFAULT '';
    DECLARE i INT DEFAULT 0;
    DECLARE charCount INT DEFAULT 0;
    DECLARE pwdLength INT DEFAULT 0;
    
    SET pwdLength = fnNumeroAleatorioRangos(minChars,maxChars);
    
    WHILE i < pwdLength DO
		SET pwdChain = CONCAT(pwdChain, SUBSTRING(chars, fnNumeroAleatorioRangos(0,LENGTH(chars)), 1));
        SET i = i + 1;
	END WHILE;
RETURN pwdChain;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnNumeroAleatorioRangos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnNumeroAleatorioRangos`(v_limiteInferior int, v_limiteSuperior int) RETURNS int
    DETERMINISTIC
BEGIN
declare v_numeroGenerado int default floor(Rand()* (v_limiteSuperior-v_limiteInferior+1)+v_limiteInferior);
set @numeroGenerado = v_numeroGenerado;
RETURN v_numeroGenerado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fnRemplazaCaracteres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnRemplazaCaracteres`(v_palabra VARCHAR(60)) RETURNS varchar(60) CHARSET utf8mb4
    DETERMINISTIC
BEGIN

	set v_palabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(v_palabra, 'Á', 'A'), 'É','E'), 'Í', 'I'), 'Ó', 'O'), 'Ú','U');
	set v_palabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(v_palabra, 'á', 'a'), 'é','e'), 'í', 'i'), 'ó', 'o'), 'ú','u');
	set v_palabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(v_palabra, 'ä', 'a'), 'ë','e'), 'ï', 'i'), 'ö', 'o'), 'ü','u');
	set v_palabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(v_palabra, 'À', 'A'), 'È','E'), 'Ì', 'I'), 'Ò', 'O'), 'Ù','U');
	set v_palabra=REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(v_palabra, 'à', 'a'), 'è','e'), 'ì', 'i'), 'ò', 'o'), 'ù','u');
	set v_palabra=REPLACE(v_palabra, ' ', '_');
	set v_palabra=REPLACE(v_palabra, '\'', '');
	set v_palabra=REPLACE(v_palabra, 'ñ', 'n');
	set v_palabra=REPLACE(v_palabra, 'Ñ', 'N');
	set v_palabra=REPLACE(v_palabra, 'ç', 'c');
	set v_palabra=REPLACE(v_palabra, 'Ç', 'C');
	set v_palabra=REPLACE(v_palabra, 'ø', 'o');
	set v_palabra=REPLACE(v_palabra, 'Ø', 'O');
	set v_palabra=REPLACE(v_palabra, 'æ', 'ae');
	set v_palabra=REPLACE(v_palabra, 'Æ', 'AE');
	set v_palabra=REPLACE(v_palabra, 'œ', 'oe');
	set v_palabra=REPLACE(v_palabra, 'Œ', 'OE');

	RETURN v_palabra;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spRegistraUbicacionesBase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spRegistraUbicacionesBase`()
BEGIN
    DECLARE v_pais_ID INT DEFAULT NULL;
    DECLARE v_estado_ID INT DEFAULT NULL;
    DECLARE v_ciudad_ID INT DEFAULT NULL;
    DECLARE v_colonia_ID INT DEFAULT NULL;
    DECLARE v_calle_ID INT DEFAULT NULL;
    DECLARE v_cp_ID INT DEFAULT NULL;
    DECLARE v_ne_ID INT DEFAULT NULL;
    DECLARE v_region_ID INT DEFAULT NULL;
    
    SET v_pais_ID = 1;
    
    /* INSERTANDO LAS REGIONES DE MÉXICO */
    INSERT INTO tbb_ubicacion  VALUES
		(DEFAULT, "Noroeste", "Región", v_pais_ID, DEFAULT, DEFAULT, NULL, NULL);
    
    SET v_region_ID = last_insert_id();    
    INSERT INTO tbb_ubicacion  VALUES    
		(DEFAULT, "Baja California", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Baja California Sur", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Chihuahua", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Durango", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Sinaloa", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Sonora", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID);
     
	INSERT INTO tbb_ubicacion  VALUES
		(DEFAULT, "Noreste", "Región", v_pais_ID, DEFAULT, DEFAULT, NULL, NULL);
	SET v_region_ID = last_insert_id();    
    INSERT INTO tbb_ubicacion  VALUES    
		(DEFAULT, "Coahuila", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Nuevo León", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Tamaulipas", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID);
        
	INSERT INTO tbb_ubicacion  VALUES
		(DEFAULT, "Occidente", "Región", v_pais_ID, DEFAULT, DEFAULT, NULL, NULL);
	SET v_region_ID = last_insert_id();    
    INSERT INTO tbb_ubicacion  VALUES    
		(DEFAULT, "Colima", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Jalisco", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
		(DEFAULT, "Michoacán", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Nayarit", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID);
        
    INSERT INTO tbb_ubicacion  VALUES
		(DEFAULT, "Oriente", "Región", v_pais_ID, DEFAULT, DEFAULT, NULL, NULL);
	SET v_region_ID = last_insert_id();    
    INSERT INTO tbb_ubicacion  VALUES    
		(DEFAULT, "Hidalgo", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Puebla", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Veracruz", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Tlaxcala", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID);
	
	INSERT INTO tbb_ubicacion  VALUES
		(DEFAULT, "Centronorte", "Región", v_pais_ID, DEFAULT, DEFAULT, NULL, NULL);
	SET v_region_ID = last_insert_id();    
    INSERT INTO tbb_ubicacion  VALUES    
		(DEFAULT, "Aguascalientes", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL,v_region_ID),
		(DEFAULT, "Guanajuato", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Querétaro", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "San Luis Potosí", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL,v_region_ID),
		(DEFAULT, "Zacatecas", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID);
    
    INSERT INTO tbb_ubicacion  VALUES
		(DEFAULT, "Centrosur", "Región", v_pais_ID, DEFAULT, DEFAULT, NULL, NULL);
	SET v_region_ID = last_insert_id();    
    INSERT INTO tbb_ubicacion  VALUES    
		(DEFAULT, "Ciudad de México", "Entidad Federativa", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Estado de México", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Morelos", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID);
	
	INSERT INTO tbb_ubicacion  VALUES
		(DEFAULT, "Suroeste", "Región", v_pais_ID, DEFAULT, DEFAULT, NULL, NULL);
	SET v_region_ID = last_insert_id();    
    INSERT INTO tbb_ubicacion  VALUES    
		(DEFAULT, "Chiapas", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Guerrero", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Oaxaca", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID);
        
    INSERT INTO tbb_ubicacion  VALUES
		(DEFAULT, "Sureste", "Región", v_pais_ID, DEFAULT, DEFAULT, NULL, NULL);
	SET v_region_ID = last_insert_id();    
    INSERT INTO tbb_ubicacion  VALUES    
	    (DEFAULT, "Campeche", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Quintana Roo", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
        (DEFAULT, "Tabasco", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID),
		(DEFAULT, "Yucatán", "Estado", v_pais_ID, DEFAULT, DEFAULT, NULL, v_region_ID);
        
	/* INSERTA EL MUNICIPIO DE XICOTEPEC*/
		SET v_estado_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="Puebla" and pais_id=v_pais_ID);
		INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "Huauchinango", "Ciudad", v_pais_ID, DEFAULT, DEFAULT, NULL, v_estado_id),
			(DEFAULT, "Lázaro Cárdenas", "Ciudad", v_pais_ID, DEFAULT, DEFAULT, NULL, v_estado_id),
			(DEFAULT, "Juan Galindo", "Ciudad", v_pais_ID, DEFAULT, DEFAULT, NULL, v_estado_id),
			(DEFAULT, "Xicotepec", "Ciudad", v_pais_ID, DEFAULT, DEFAULT, NULL, v_estado_id),
			(DEFAULT, "Villa Ávila Camacho", "Ciudad", v_pais_ID, DEFAULT, DEFAULT, NULL,v_estado_id);
    
		/* INSERTA EL MUNICIPIO DE XICOTEPEC*/
		SET v_ciudad_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="Xicotepec" and Tipo="Ciudad" and ubicacion_padre_id=v_estado_ID);
		INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "73080", "Código Postal", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ciudad_id);
      
        /* INSERTA COLONIAS DE CADA MUNICIPIO REGISTRADO */
        SET v_cp_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="73080" and ubicacion_padre_id=v_ciudad_id);
		INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "La Rivera", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL, v_cp_id),
			(DEFAULT, "Ganadera", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL, v_cp_id);
        
        /* INSERTA CALLES DE LA COLONIA*/
		SET v_colonia_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="La Rivera" and ubicacion_padre_id=v_cp_id);
		INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "González Ortega", "Calle", v_pais_ID, DEFAULT, DEFAULT, NULL, v_colonia_id),
			(DEFAULT, "Mina", "Calle", v_pais_ID, DEFAULT, DEFAULT, NULL, v_colonia_id);
        
        /* INSERTA LOS NÚMEROS */
        SET v_calle_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="González Ortega" and ubicacion_padre_id=v_colonia_id);
        INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "45", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "46", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "47", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "48", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "49", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "S/N", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id);
        
        SET v_ne_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="45" and ubicacion_padre_id=v_calle_id);
        INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "101", "Número Interior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ne_id),
			(DEFAULT, "102", "Número Interior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ne_id),
			(DEFAULT, "201", "Número Interior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ne_id),
			(DEFAULT, "202", "Número Interior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ne_id),
			(DEFAULT, "301", "Número Interior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ne_id),
			(DEFAULT, "302", "Número Interior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ne_id);
        
        
        SET v_calle_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="Mina" and ubicacion_padre_id=v_colonia_id);
        INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "102", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "103", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "105", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "108", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "109", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id),
			(DEFAULT, "S/N", "Número Exterior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_calle_id);
        
        
        SET v_ne_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="103" and ubicacion_padre_id=v_calle_id);
        INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "A", "Número Interior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ne_id),
			(DEFAULT, "B", "Número Interior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ne_id),
			(DEFAULT, "C", "Número Interior", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ne_id);
        
        /* INSERTA COLONIAS DE CADA MUNICIPIO REGISTRADO */
		SET v_ciudad_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="Huauchinango" and ubicacion_padre_id=v_estado_ID);
		INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "Libertad", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ciudad_id),
			(DEFAULT, "Catalina", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ciudad_id);
        
        SET v_ciudad_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="Juan Galindo" and ubicacion_padre_id=v_estado_ID);
		INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "Potro", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ciudad_id),
			(DEFAULT, "Centro", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL,v_ciudad_id);
                
        SET v_ciudad_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="Lázaro Cárdenas" and ubicacion_padre_id=v_estado_ID);
		INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "Los Manguitos", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ciudad_id),
			(DEFAULT, "El Huasteco", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ciudad_id);
        
        SET v_ciudad_id = (SELECT ID FROM tbb_ubicacion WHERE Nombre="Villa Ávila Camacho" and ubicacion_padre_id=v_estado_ID);
		INSERT INTO tbb_ubicacion VALUES 
			(DEFAULT, "Jalapilla", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ciudad_id),
			(DEFAULT, "5 Mayo", "Colonia", v_pais_ID, DEFAULT, DEFAULT, NULL, v_ciudad_id);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-04 11:56:45
