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
  `ubicacion_sucursal_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `nagocio_idx` (`negocio_ID`),
  KEY `ubicacion_idx` (`ubicacion_sucursal_ID`),
  CONSTRAINT `negocio` FOREIGN KEY (`negocio_ID`) REFERENCES `tbb_negocio` (`ID`),
  CONSTRAINT `ubicacion_sucursal` FOREIGN KEY (`ubicacion_sucursal_ID`) REFERENCES `tbb_ubicacion` (`ID`)
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
  `ID` int NOT NULL AUTO_INCREMENT,
  `numero_int` int DEFAULT NULL,
  `numero_ext` varchar(5) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `codigo_postal` int NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `status` tinyint DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_ubicacion`
--

LOCK TABLES `tbb_ubicacion` WRITE;
/*!40000 ALTER TABLE `tbb_ubicacion` DISABLE KEYS */;
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
  `ubicacion_usuario_ID` int NOT NULL,
  KEY `persona_idx` (`persona_ID`),
  KEY `rol_idx` (`rol_ID`),
  KEY `ubicacion_idx` (`ubicacion_usuario_ID`),
  KEY `ubicacion_usuario_idx` (`ubicacion_usuario_ID`),
  CONSTRAINT `persona` FOREIGN KEY (`persona_ID`) REFERENCES `tbb_persona` (`ID`),
  CONSTRAINT `rol` FOREIGN KEY (`rol_ID`) REFERENCES `tbc_rol` (`ID`),
  CONSTRAINT `ubicacion_usuario` FOREIGN KEY (`ubicacion_usuario_ID`) REFERENCES `tbb_ubicacion` (`ID`)
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-25 11:04:32
