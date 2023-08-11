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
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `categoria_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `categoria_ID_idx` (`categoria_ID`),
  CONSTRAINT `categoria_ID` FOREIGN KEY (`categoria_ID`) REFERENCES `tbc_categoria` (`ID`)
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
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido_1` varchar(45) NOT NULL,
  `apellido_2` varchar(45) DEFAULT NULL,
  `genero` enum('M','F') NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
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
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `capacidad` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `fecha_registro` datetime NOT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `negocio_ID` int unsigned DEFAULT NULL,
  `ubicacion_sucursal_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `negocio_ID_idx` (`negocio_ID`),
  KEY `ubicacion_sucursal_ID_idx` (`ubicacion_sucursal_ID`),
  CONSTRAINT `negocio_ID` FOREIGN KEY (`negocio_ID`) REFERENCES `tbb_negocio` (`ID`),
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
  `status` tinyint NOT NULL DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `persona_ID` int unsigned DEFAULT NULL,
  `rol_ID` int unsigned DEFAULT NULL,
  `ubicacion_usuario_ID` int unsigned DEFAULT NULL,
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `nombre_usuario_UNIQUE` (`nombre_usuario`),
  KEY `persona_idx` (`persona_ID`),
  KEY `rol_idx` (`rol_ID`),
  KEY `ubicacion_usuario_idx` (`ubicacion_usuario_ID`),
  CONSTRAINT `persona_ID` FOREIGN KEY (`persona_ID`) REFERENCES `tbb_persona` (`ID`),
  CONSTRAINT `rol_ID` FOREIGN KEY (`rol_ID`) REFERENCES `tbc_rol` (`ID`),
  CONSTRAINT `ubicacion_usuario_ID` FOREIGN KEY (`ubicacion_usuario_ID`) REFERENCES `tbb_ubicacion` (`ID`)
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
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `decripcion` varchar(200) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `horario_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  KEY `horario_ID_idx` (`horario_ID`),
  CONSTRAINT `horario_ID` FOREIGN KEY (`horario_ID`) REFERENCES `tbc_horario` (`ID`)
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
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
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
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
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
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `sucursal_ID` int unsigned DEFAULT NULL,
  `servicio_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `sucursal_ID_idx` (`sucursal_ID`),
  KEY `servicio_ID_idx` (`servicio_ID`),
  CONSTRAINT `servicio_ID` FOREIGN KEY (`servicio_ID`) REFERENCES `tbc_servicio` (`ID`),
  CONSTRAINT `sucursal_ID` FOREIGN KEY (`sucursal_ID`) REFERENCES `tbb_sucursal` (`ID`)
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
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `puntuacion` enum('1','2','3','4','5') NOT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `usuario_ID` int unsigned DEFAULT NULL,
  `servicio_ID` int unsigned DEFAULT NULL,
  `sucursal_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `valoracion_sucursal_ID_idx` (`sucursal_ID`),
  KEY `valoracion_servicio_ID_idx` (`servicio_ID`),
  KEY `valoracion_usuario_ID_idx` (`usuario_ID`),
  CONSTRAINT `valoracion_servicio_ID` FOREIGN KEY (`servicio_ID`) REFERENCES `tbc_servicio` (`ID`),
  CONSTRAINT `valoracion_sucursal_ID` FOREIGN KEY (`sucursal_ID`) REFERENCES `tbb_sucursal` (`ID`),
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
/*!50003 DROP FUNCTION IF EXISTS `fnNombreNegocioRandom` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnNombreNegocioRandom`() RETURNS varchar(30) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_NombreNegocioGenerado VARCHAR(30) DEFAULT NULL;
		SET v_NombreNegocioGenerado = ELT(fnNumeroAleatorioRangos(1,160),
        "Gypsy Bar","Extasis","Primera Edición","Ambar","Bartopia","Mundo De Neón","Lunula Bar","Bar One",
		"Noches Vip","Crepúsculo","Bar Bates","Búhos Bar","Sueños Y Coctéles","Cosmo Bar","Bar Damasco",
		"Bar El Dorado","Brillo De Luna","Bar La Capilla","Bar Júpiter","La Isla","Barra B","El Fénix",
		"La Parada","Bar Bombay","Cóctel Dorado","AkBar","Acuario Bar","Bar Costa Azul","El Turco Bar",
		"Bar Rojo","Bar El Gitano","La Unión","El Sótano","Bar Tauro","Bar Rocco","La Bóveda Dorada","Burbón",
		"Tribalistas Bar","El Místico","El Barril Dorado","El Gran Bohemio","El escondite Dorado","El Estelar",
		"Bar El Borbón","Vasper Bar","Las Brasas","Venus","La Vieja Guardia","Distrito Bar","Mandala Bar",
		"Los Vikingos","Pub De Londres","Centeno Bar","La Guarida","Bing Bang","Niquel Bar","Tabula Bar",
		"Bar El Distrito","Barseco","La República","Solano Bar","Bar Los Amigos","Miramar","Bar Serrano",
		"Titanic","Santo Bar","Mis Birritas","Orale Pues","La Última Y Ya Está","Mis Súper Cuates",
		"Tequilas DF","Rancho Bar","Bar El Sombrerón","Bar El Azteca","El Portal Mexicano","Tex Mex Bar",
		"Taco Bar","La Condesa","La Tequilera","El Gran Danzón","El Tequilazo","Bar El Norteño","El Distrital",
		"Bar El Poblano","Mi Cuate Bar","Bendito México","Mis Chelitas","El Compadre","Mi México Lindo",
		"La Conga","Escarlata Bar","El Templo De La Salsa","El Impero Salsero","Ritmo Divino","Bar Astral",
		"Tiempo De Salsa","Bar Las Rosas","Ritmo Y Son","Bar La Sabrosura","Divino Tumbao","La Loma Salsera",
		"Bongos Dorados","El Son Divino","Tropical Bar","Salsa Bar","Salsa Manía","La Taberna","Piso 13",
		"La Bodeguita","Roxy Rocker","Atomic Bar","Infinity Bar","Déjà Vu","Nebula Bar","Ondas De Rock",
		"Rock Well","La Sagrada","Cien Fuegos","Alfa Bar","Onda Azul","Vibras De Rock","Raíces Rockeras",
		"Flama Dorada","La Roca Bar","360 Bar","Espacio Rock","Bar Gravity","El Imperial","La Estación",
		"Bar Element","Místico Bar","El Palmar","Bar La Azotea","Luna Bar","Bar Casablanca","Bar El Residente",
		"Línea De Oro","Salón Blue","Paramount Bar","Terracota","Tabú Bar","Avanti Bar","Nova Club","Bar Azul",
		"Bar sensei","Nivel Dorado","Club Amigo","Olimpus Bar","Bar El Victoriano","Bar La Alameda",
		"La Morenita Bar","Tiempo De Brisndis","Vibras Doradas","La Barra Licores","Astros Azules",
		"Llanero Solitario","Cuatro Lunas","El Monarca","Paradise Bar","La Oficina");
	RETURN v_NombreNegocioGenerado;
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
/*!50003 DROP PROCEDURE IF EXISTS `DBspClean` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DBspClean`()
BEGIN

	UPDATE tbb_ubicacion SET Ubicacion_Padre_ID = NULL;
    UPDATE tbc_categoria SET horario_ID = NULL;
    UPDATE tbb_negocio SET categoria_ID = NULL;
    
    DELETE FROM tbb_ubicacion;
    ALTER TABLE tbb_ubicacion AUTO_INCREMENT = 1;
    
    
	DELETE FROM tbc_categoria;
    ALTER TABLE tbc_categoria AUTO_INCREMENT = 1;
    
    DELETE FROM tbb_negocio;
    ALTER TABLE tbb_negocio AUTO_INCREMENT = 1;
    
	DELETE FROM tbc_servicio;
    ALTER TABLE tbc_servicio AUTO_INCREMENT = 1;
    
	DELETE FROM tbc_rol;
    ALTER TABLE tbc_rol AUTO_INCREMENT = 1;
    
	DELETE FROM tbc_horario;
    ALTER TABLE tbc_horario AUTO_INCREMENT = 1;
    
    /*DELETE FROM tbb_sucursal;
    ALTER TABLE tbb_sucursal AUTO_INCREMENT = 1;*/
    
    DELETE FROM tbb_persona;
    ALTER TABLE tbb_persona AUTO_INCREMENT = 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DBspFill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DBspFill`()
BEGIN
	CALL spSetUbicacionesBase();
    CALL spSetCatalogos();
	CALL spSetNegocios(200);
    #CALL spSetCategorias();
    #CALL spSetHorarios();
    #CALL spSetRoles();
    #CALL spSetServicios();
    #CALL spSetUsers(200);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DBspStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DBspStatus`()
BEGIN
    (SELECT "tbb negocio" as Tabla,	 COUNT(*) as Total_Registros FROM tbb_negocio)
	UNION
	(SELECT "tbb persona" as Tabla, COUNT(*) as Total_Registros FROM tbb_persona)
     UNION
	(SELECT "tbb sucursal" as Tabla,  COUNT(*) as Total_Registros FROM tbb_sucursal)
     UNION
	(SELECT "tbb ubicacion" as Tabla,	 COUNT(*) as Total_Registros FROM tbb_ubicacion)
     UNION
	(SELECT "tbb usuario" as Tabla, COUNT(*) as Total_Registros FROM tbb_usuario)
     UNION
	(SELECT "tbc categoria" as Tabla, COUNT(*) as Total_Registros FROM tbc_categoria)
     UNION
	(SELECT "tbc horario" as Tabla, COUNT(*) as Total_Registros FROM tbc_horario)
     UNION
	(SELECT "tbc rol" as Tabla, COUNT(*) as Total_Registros FROM tbc_rol)
	UNION
	(SELECT "tbc servicio" as Tabla, COUNT(*) as Total_Registros FROM tbc_servicio)
     UNION
	(SELECT "tbd servicios sucursal" as Tabla, COUNT(*) as Total_Registros FROM tbd_servicios_sucursal)
    UNION
	(SELECT "tbd valoracion" as Tabla, COUNT(*) as Total_Registros FROM tbd_valoracion);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spMkNegocio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spMkNegocio`()
BEGIN
	DECLARE v_nombreNegocio VARCHAR(50) DEFAULT fnNombreNegocioRandom();
    DECLARE v_categoriaId INT DEFAULT fnNumeroAleatorioRangos(1,6);
		INSERT INTO tbb_negocio VALUES (DEFAULT, v_nombreNegocio, DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spMkPersona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spMkPersona`()
BEGIN
	DECLARE v_genero CHAR(3) DEFAULT ELT(fnNumeroAleatorioRangos(1,2), "M", "F");
	DECLARE v_nombre VARCHAR (50) DEFAULT fnGeneraNombre(v_genero);
    DECLARE v_apellido1 VARCHAR(50) DEFAULT fnGeneraApellido();
    DECLARE v_apellido2 VARCHAR(50) DEFAULT fnGeneraApellido();
    DECLARE v_fechaNacimiento DATE DEFAULT fnGeneraFechaNacimiento('1980-01-01','2005-01-01');
    
		INSERT INTO tbb_persona VALUES (DEFAULT, v_nombre, v_apellido1, v_apellido2, v_genero, v_fechaNacimiento, DEFAULT, DEFAULT, NULL);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spMkUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spMkUser`()
BEGIN
	DECLARE v_genero CHAR(3) DEFAULT ELT(fnNumeroAleatorioRangos(1,2), "M", "F");
	DECLARE v_username VARCHAR(80) DEFAULT NULL;
    
    SELECT CONCAT("Generando usuario random del genero: ", v_genero) as Mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetCatalogos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetCatalogos`()
BEGIN
	#### 
    DECLARE v_random INT DEFAULT fnNumeroAleatorioRangos(1,5);
    DECLARE v_random1 INT DEFAULT fnNumeroAleatorioRangos(1,4);
    DECLARE v_random2 INT DEFAULT fnNumeroAleatorioRangos(3,5);
    
    ####
    INSERT INTO tbc_horario VALUES (DEFAULT,"Matutino","Abierto de 08:00 a 14:00 horas",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_horario VALUES (DEFAULT,"Vespertino","Abierto de 14:00 a 20:00 horas",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_horario VALUES (DEFAULT,"Juventud","Abierto de 16:00 a 22:00 horas",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_horario VALUES (DEFAULT,"Nocturno","Abierto de 20:00 a 02:00 horas",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_horario VALUES (DEFAULT,"After","Abierto de 21:00 a 07:00 horas",DEFAULT,DEFAULT,NULL);
    
    ####
	INSERT INTO tbc_categoria VALUES (DEFAULT,"Cantina","Negocio enfocado a la venta de bebias alcohólicas con servicio de música",DEFAULT,DEFAULT,NULL,2);
    INSERT INTO tbc_categoria VALUES (DEFAULT,"Temático","Negocio versatil con gran adaptabilidad de servicios",DEFAULT,DEFAULT,NULL,v_random);
    INSERT INTO tbc_categoria VALUES (DEFAULT,"Restaurant","Bar diurno con variedad de servicios",DEFAULT,DEFAULT,NULL,1);
    INSERT INTO tbc_categoria VALUES (DEFAULT,"Karaoke","Enfocados al servicio de karaoke",DEFAULT,DEFAULT,NULL,v_random1);
    INSERT INTO tbc_categoria VALUES (DEFAULT,"Discoteca","Oferta diferentes servicios de música",DEFAULT,DEFAULT,NULL,v_random2);
    INSERT INTO tbc_categoria VALUES (DEFAULT,"Table Dance","Negocio enfocado a venta de alcohól y servicios de compañía",DEFAULT,DEFAULT,NULL,5);
    
    ####
    INSERT INTO tbc_rol VALUES (DEFAULT,"Admin","Gestor de la sucursal de un negocio",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_rol VALUES (DEFAULT,"Cliente","Usuario consumidor de los servicios que ofrecen los negocios (Puede realizar evaluaciones y comentarios)",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_rol VALUES (DEFAULT,"User","Usuario por defecto, puede visualizar pero no evaluar ni comentar",DEFAULT,DEFAULT,NULL);
    
    ####
    INSERT INTO tbc_servicio VALUES (DEFAULT,"Bebidas alcohólicas","Bebidas alcohólicas en su forma base",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_servicio VALUES (DEFAULT,"Bebidas no alcohólicas","Bebidas no alcohólicas con o sin gas",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_servicio VALUES (DEFAULT,"Coctelería","Bebidas alcohólicas preparadas de distintas formas",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_servicio VALUES (DEFAULT,"Snacks","Pequeños platillos de botanas y/o aperitivos para acompañar las bebidas",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_servicio VALUES (DEFAULT,"Platillos","Distintos tipos de platillos, comida típica o antojitos mexicanos",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_servicio VALUES (DEFAULT,"Smoke","Catalogo de cigarros para los clientes fumadores",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_servicio VALUES (DEFAULT,"Musica","Servicio de música por petición del cliente",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_servicio VALUES (DEFAULT,"Musica en vivo","Presentacion de grupo/s musicales en vivo",DEFAULT,DEFAULT,NULL);
    INSERT INTO tbc_servicio VALUES (DEFAULT,"Karaoke","Servicio de pistas musicales para que el cliente pueda cantar su selección",DEFAULT,DEFAULT,NULL);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetNegocios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetNegocios`(v_cuantos INT)
BEGIN
	DECLARE i INT DEFAULT 1;
		WHILE i<= v_cuantos DO
			CALL spMkNegocio();
            CALL spMkPersona();
			SET i=i+1;
        END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetUbicacionesBase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetUbicacionesBase`()
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
/*!50003 DROP PROCEDURE IF EXISTS `spSetUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetUsers`(v_cuantos INT)
BEGIN
	DECLARE i INT DEFAULT 1;
		WHILE i <= v_cuantos DO
			CALL spMkUser();
			SET i=i+1;
		END WHILE;
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

-- Dump completed on 2023-08-05 14:33:19
