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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_negocio`
--

LOCK TABLES `tbb_negocio` WRITE;
/*!40000 ALTER TABLE `tbb_negocio` DISABLE KEYS */;
INSERT INTO `tbb_negocio` VALUES (1,'Gypsy Bar',1,'2023-08-10 23:40:11',NULL,1),(2,'Extasis',1,'2023-08-10 23:40:11',NULL,1),(3,'Primera Edición',1,'2023-08-10 23:40:11',NULL,1),(4,'Ambar',1,'2023-08-10 23:40:11',NULL,1),(5,'Bartopia',1,'2023-08-10 23:40:11',NULL,1),(6,'Mundo De Neón',1,'2023-08-10 23:40:11',NULL,1),(7,'Lunula Bar',1,'2023-08-10 23:40:11',NULL,1),(8,'Bar One',1,'2023-08-10 23:40:11',NULL,1),(9,'Noches Vip',1,'2023-08-10 23:40:11',NULL,1),(10,'Crepúsculo',1,'2023-08-10 23:40:11',NULL,1),(11,'Bar Bates',1,'2023-08-10 23:40:11',NULL,1),(12,'Búhos Bar',1,'2023-08-10 23:40:11',NULL,1),(13,'Sueños Y Coctéles',1,'2023-08-10 23:40:11',NULL,1),(14,'Cosmo Bar',1,'2023-08-10 23:40:11',NULL,1),(15,'Bar Damasco',1,'2023-08-10 23:40:11',NULL,1),(16,'Bar El Dorado',1,'2023-08-10 23:40:11',NULL,1),(17,'Brillo De Luna',1,'2023-08-10 23:40:11',NULL,1),(18,'Bar La Capilla',1,'2023-08-10 23:40:11',NULL,1),(19,'Bar Júpiter',1,'2023-08-10 23:40:11',NULL,1),(20,'La Isla',1,'2023-08-10 23:40:11',NULL,1),(21,'Barra B',1,'2023-08-10 23:40:11',NULL,1),(22,'El Fénix',1,'2023-08-10 23:40:11',NULL,1),(23,'La Parada',1,'2023-08-10 23:40:11',NULL,1),(24,'Bar Bombay',1,'2023-08-10 23:40:11',NULL,1),(25,'Cóctel Dorado',1,'2023-08-10 23:40:11',NULL,1),(26,'AkBar',1,'2023-08-10 23:40:11',NULL,1),(27,'Acuario Bar',1,'2023-08-10 23:40:11',NULL,1),(28,'Bar Costa Azul',1,'2023-08-10 23:40:11',NULL,1),(29,'El Turco Bar',1,'2023-08-10 23:40:11',NULL,1),(30,'Bar Rojo',1,'2023-08-10 23:40:11',NULL,1),(31,'Bar El Gitano',1,'2023-08-10 23:40:11',NULL,1),(32,'La Unión',1,'2023-08-10 23:40:11',NULL,1),(33,'El Sótano',1,'2023-08-10 23:40:11',NULL,1),(34,'Bar Tauro',1,'2023-08-10 23:40:11',NULL,1),(35,'Bar Rocco',1,'2023-08-10 23:40:11',NULL,1),(36,'La Bóveda Dorada',1,'2023-08-10 23:40:11',NULL,1),(37,'Burbón',1,'2023-08-10 23:40:11',NULL,1),(38,'Tribalistas Bar',1,'2023-08-10 23:40:11',NULL,1),(39,'El Místico',1,'2023-08-10 23:40:11',NULL,1),(40,'El Barril Dorado',1,'2023-08-10 23:40:11',NULL,1),(41,'El Gran Bohemio',1,'2023-08-10 23:40:11',NULL,1),(42,'El escondite Dorado',1,'2023-08-10 23:40:11',NULL,1),(43,'El Estelar',1,'2023-08-10 23:40:11',NULL,1),(44,'Bar El Borbón',1,'2023-08-10 23:40:11',NULL,1),(45,'Vasper Bar',1,'2023-08-10 23:40:11',NULL,1),(46,'Las Brasas',1,'2023-08-10 23:40:11',NULL,1),(47,'Venus',1,'2023-08-10 23:40:11',NULL,1),(48,'La Vieja Guardia',1,'2023-08-10 23:40:11',NULL,1),(49,'Distrito Bar',1,'2023-08-10 23:40:11',NULL,1),(50,'Mandala Bar',1,'2023-08-10 23:40:11',NULL,1),(51,'Los Vikingos',1,'2023-08-10 23:40:11',NULL,1),(52,'Pub De Londres',1,'2023-08-10 23:40:11',NULL,1),(53,'Centeno Bar',1,'2023-08-10 23:40:11',NULL,1),(54,'La Guarida',1,'2023-08-10 23:40:11',NULL,1),(55,'Bing Bang',1,'2023-08-10 23:40:11',NULL,1),(56,'Niquel Bar',1,'2023-08-10 23:40:11',NULL,1),(57,'Tabula Bar',1,'2023-08-10 23:40:11',NULL,1),(58,'Bar El Distrito',1,'2023-08-10 23:40:11',NULL,1),(59,'Barseco',1,'2023-08-10 23:40:11',NULL,1),(60,'La República',1,'2023-08-10 23:40:11',NULL,1),(61,'Solano Bar',1,'2023-08-10 23:40:11',NULL,1),(62,'Bar Los Amigos',1,'2023-08-10 23:40:11',NULL,1),(63,'Miramar',1,'2023-08-10 23:40:11',NULL,1),(64,'Bar Serrano',1,'2023-08-10 23:40:11',NULL,1),(65,'Titanic',1,'2023-08-10 23:40:11',NULL,1),(66,'Santo Bar',1,'2023-08-10 23:40:11',NULL,1),(67,'Mis Birritas',1,'2023-08-10 23:40:11',NULL,1),(68,'Orale Pues',1,'2023-08-10 23:40:11',NULL,1),(69,'La Última Y Ya Está',1,'2023-08-10 23:40:11',NULL,1),(70,'Mis Súper Cuates',1,'2023-08-10 23:40:11',NULL,1),(71,'Tequilas DF',1,'2023-08-10 23:40:11',NULL,1),(72,'Rancho Bar',1,'2023-08-10 23:40:11',NULL,1),(73,'Bar El Sombrerón',1,'2023-08-10 23:40:11',NULL,1),(74,'Bar El Azteca',1,'2023-08-10 23:40:11',NULL,1),(75,'El Portal Mexicano',1,'2023-08-10 23:40:11',NULL,1),(76,'Tex Mex Bar',1,'2023-08-10 23:40:11',NULL,1),(77,'Taco Bar',1,'2023-08-10 23:40:11',NULL,1),(78,'La Condesa',1,'2023-08-10 23:40:11',NULL,1),(79,'La Tequilera',1,'2023-08-10 23:40:11',NULL,1),(80,'El Gran Danzón',1,'2023-08-10 23:40:11',NULL,1),(81,'El Tequilazo',1,'2023-08-10 23:40:11',NULL,1),(82,'Bar El Norteño',1,'2023-08-10 23:40:12',NULL,1),(83,'El Distrital',1,'2023-08-10 23:40:12',NULL,1),(84,'Bar El Poblano',1,'2023-08-10 23:40:12',NULL,1),(85,'Mi Cuate Bar',1,'2023-08-10 23:40:12',NULL,1),(86,'Bendito México',1,'2023-08-10 23:40:12',NULL,1),(87,'Mis Chelitas',1,'2023-08-10 23:40:12',NULL,1),(88,'El Compadre',1,'2023-08-10 23:40:12',NULL,1),(89,'Mi México Lindo',1,'2023-08-10 23:40:12',NULL,1),(90,'La Conga',1,'2023-08-10 23:40:12',NULL,1),(91,'Escarlata Bar',1,'2023-08-10 23:40:12',NULL,1),(92,'El Templo De La Salsa',1,'2023-08-10 23:40:12',NULL,1),(93,'El Impero Salsero',1,'2023-08-10 23:40:12',NULL,1),(94,'Ritmo Divino',1,'2023-08-10 23:40:12',NULL,1),(95,'Bar Astral',1,'2023-08-10 23:40:12',NULL,1),(96,'Tiempo De Salsa',1,'2023-08-10 23:40:12',NULL,1),(97,'Bar Las Rosas',1,'2023-08-10 23:40:12',NULL,1),(98,'Ritmo Y Son',1,'2023-08-10 23:40:12',NULL,1),(99,'Bar La Sabrosura',1,'2023-08-10 23:40:12',NULL,1),(100,'Divino Tumbao',1,'2023-08-10 23:40:12',NULL,1),(101,'La Loma Salsera',1,'2023-08-10 23:40:12',NULL,1),(102,'Bongos Dorados',1,'2023-08-10 23:40:12',NULL,1),(103,'El Son Divino',1,'2023-08-10 23:40:12',NULL,1),(104,'Tropical Bar',1,'2023-08-10 23:40:12',NULL,1),(105,'Salsa Bar',1,'2023-08-10 23:40:12',NULL,1),(106,'Salsa Manía',1,'2023-08-10 23:40:12',NULL,1),(107,'La Taberna',1,'2023-08-10 23:40:12',NULL,1),(108,'Piso 13',1,'2023-08-10 23:40:12',NULL,1),(109,'La Bodeguita',1,'2023-08-10 23:40:12',NULL,1),(110,'Roxy Rocker',1,'2023-08-10 23:40:12',NULL,1),(111,'Atomic Bar',1,'2023-08-10 23:40:12',NULL,1),(112,'Infinity Bar',1,'2023-08-10 23:40:12',NULL,1),(113,'Déjà Vu',1,'2023-08-10 23:40:12',NULL,1),(114,'Nebula Bar',1,'2023-08-10 23:40:12',NULL,1),(115,'Ondas De Rock',1,'2023-08-10 23:40:12',NULL,1),(116,'Rock Well',1,'2023-08-10 23:40:12',NULL,1),(117,'La Sagrada',1,'2023-08-10 23:40:12',NULL,1),(118,'Cien Fuegos',1,'2023-08-10 23:40:12',NULL,1),(119,'Alfa Bar',1,'2023-08-10 23:40:12',NULL,1),(120,'Onda Azul',1,'2023-08-10 23:40:12',NULL,1),(121,'Vibras De Rock',1,'2023-08-10 23:40:12',NULL,1),(122,'Raíces Rockeras',1,'2023-08-10 23:40:12',NULL,1),(123,'Flama Dorada',1,'2023-08-10 23:40:12',NULL,1),(124,'La Roca Bar',1,'2023-08-10 23:40:12',NULL,1),(125,'Bar 360',1,'2023-08-10 23:40:12',NULL,1),(126,'Espacio Rock',1,'2023-08-10 23:40:12',NULL,1),(127,'Bar Gravity',1,'2023-08-10 23:40:12',NULL,1),(128,'El Imperial',1,'2023-08-10 23:40:12',NULL,1),(129,'La Estación',1,'2023-08-10 23:40:12',NULL,1),(130,'Bar Element',1,'2023-08-10 23:40:12',NULL,1),(131,'Místico Bar',1,'2023-08-10 23:40:12',NULL,1),(132,'El Palmar',1,'2023-08-10 23:40:12',NULL,1),(133,'Bar La Azotea',1,'2023-08-10 23:40:12',NULL,1),(134,'Luna Bar',1,'2023-08-10 23:40:12',NULL,1),(135,'Bar Casablanca',1,'2023-08-10 23:40:12',NULL,1),(136,'Bar El Residente',1,'2023-08-10 23:40:12',NULL,1),(137,'Línea De Oro',1,'2023-08-10 23:40:12',NULL,1),(138,'Salón Blue',1,'2023-08-10 23:40:12',NULL,1),(139,'Paramount Bar',1,'2023-08-10 23:40:12',NULL,1),(140,'Terracota',1,'2023-08-10 23:40:12',NULL,1),(141,'Tabú Bar',1,'2023-08-10 23:40:12',NULL,1),(142,'Avanti Bar',1,'2023-08-10 23:40:12',NULL,1),(143,'Nova Club',1,'2023-08-10 23:40:12',NULL,1),(144,'Bar Azul',1,'2023-08-10 23:40:12',NULL,1),(145,'Bar sensei',1,'2023-08-10 23:40:12',NULL,1),(146,'Nivel Dorado',1,'2023-08-10 23:40:12',NULL,1),(147,'Club Amigo',1,'2023-08-10 23:40:12',NULL,1),(148,'Olimpus Bar',1,'2023-08-10 23:40:12',NULL,1),(149,'Bar El Victoriano',1,'2023-08-10 23:40:12',NULL,1),(150,'Bar La Alameda',1,'2023-08-10 23:40:12',NULL,1),(151,'La Morenita Bar',1,'2023-08-10 23:40:12',NULL,1),(152,'Tiempo De Brisndis',1,'2023-08-10 23:40:12',NULL,1),(153,'Vibras Doradas',1,'2023-08-10 23:40:12',NULL,1),(154,'La Barra Licores',1,'2023-08-10 23:40:12',NULL,1),(155,'Astros Azules',1,'2023-08-10 23:40:12',NULL,1),(156,'Llanero Solitario',1,'2023-08-10 23:40:12',NULL,1),(157,'Cuatro Lunas',1,'2023-08-10 23:40:12',NULL,1),(158,'El Monarca',1,'2023-08-10 23:40:12',NULL,1),(159,'Paradise Bar',1,'2023-08-10 23:40:12',NULL,1),(160,'La Oficina',1,'2023-08-10 23:40:12',NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_persona`
--

LOCK TABLES `tbb_persona` WRITE;
/*!40000 ALTER TABLE `tbb_persona` DISABLE KEYS */;
INSERT INTO `tbb_persona` VALUES (1,'Daniela','Contreras','Cervantes','F','2001-08-24',1,'2023-08-10 23:40:12',NULL),(2,'Yahir Josafat','Paredes','Guerrero','M','1998-09-16',1,'2023-08-10 23:40:12',NULL),(3,'Elena','Ramírez','Acosta','F','1983-03-22',1,'2023-08-10 23:40:12',NULL),(4,'Karen','Ortíz','Gayosso','F','2002-06-07',1,'2023-08-10 23:40:12',NULL),(5,'Manuel','Cervantes','Peña','M','1987-10-23',1,'2023-08-10 23:40:12',NULL),(6,'Tamara','Vega','Luna','F','1998-08-12',1,'2023-08-10 23:40:12',NULL),(7,'Berenice','Hernández','Romero','F','1986-12-07',1,'2023-08-10 23:40:12',NULL),(8,'Saúl','Vargas','Peña','M','2001-02-17',1,'2023-08-10 23:40:12',NULL),(9,'Sandra Laura','Hernández','Espinoza','F','1984-04-22',1,'2023-08-10 23:40:12',NULL),(10,'Tamara','Yañez','Álvarez','F','1987-09-29',1,'2023-08-10 23:40:12',NULL),(11,'Quetzálli','González','Morales','F','2002-05-09',1,'2023-08-10 23:40:12',NULL),(12,'Héctor','Juárez','Vázquez','M','1988-07-10',1,'2023-08-10 23:40:12',NULL),(13,'Carolina Salomé','Luna','Chávez','F','1990-06-14',1,'2023-08-10 23:40:12',NULL),(14,'Renata','Ramírez','Carrillo','F','1990-08-08',1,'2023-08-10 23:40:12',NULL),(15,'Denisse','Kuno','Solís','F','1999-06-16',1,'2023-08-10 23:40:12',NULL),(16,'Gonzálo','Vázquez','Sandoval','M','2001-02-23',1,'2023-08-10 23:40:12',NULL),(17,'Carla','Moreno','Peña','F','1986-06-25',1,'2023-08-10 23:40:12',NULL),(18,'Renata Evelyn','Reyes','Guzmán','F','1995-01-08',1,'2023-08-10 23:40:12',NULL),(19,'Marco Ignacio','Salazar','Ramos','M','1994-08-07',1,'2023-08-10 23:40:12',NULL),(20,'Karim','Solís','Méndez','M','1998-10-01',1,'2023-08-10 23:40:12',NULL),(21,'Uriel','Ximénez','Peña','M','1999-10-29',1,'2023-08-10 23:40:12',NULL),(22,'Nabor Quetzálcoatl','Márquez','Navarro','M','1982-09-11',1,'2023-08-10 23:40:12',NULL),(23,'Valentina Tamara','Kuno','Vázquez','F','1990-05-28',1,'2023-08-10 23:40:12',NULL),(24,'Josafat','Castro','Muñoz','M','1985-01-24',1,'2023-08-10 23:40:12',NULL),(25,'Raúl Gerardo','Alvarado','Chávez','M','1985-10-05',1,'2023-08-10 23:40:12',NULL),(26,'María Natalia','Contreras','Ortíz','F','2002-11-26',1,'2023-08-10 23:40:12',NULL),(27,'Benito Dylan','Peña','Mejía','M','1988-07-02',1,'2023-08-10 23:40:12',NULL),(28,'Carlos','Martínez','Juárez','M','2004-03-29',1,'2023-08-10 23:40:12',NULL),(29,'Hugo Víctor','Gayosso','Ortega','M','2002-01-15',1,'2023-08-10 23:40:12',NULL),(30,'Valentina Ursula','Ramírez','Luna','F','1992-10-18',1,'2023-08-10 23:40:12',NULL),(31,'Sofía Karen','Díaz','Muñoz','F','1996-08-06',1,'2023-08-10 23:40:12',NULL),(32,'Helena Patricia','Muñoz','Santos','F','1995-11-22',1,'2023-08-10 23:40:12',NULL),(33,'Carolina Daniela','Ávila','Vázquez','F','1994-09-01',1,'2023-08-10 23:40:12',NULL),(34,'Fernanda','García','Valencia','F','2004-10-20',1,'2023-08-10 23:40:12',NULL),(35,'Saúl','Rodríguez','González','M','1992-07-01',1,'2023-08-10 23:40:12',NULL),(36,'Nadia','Trejo','Castillo','F','1987-05-01',1,'2023-08-10 23:40:12',NULL),(37,'Francisco William','Rosas','Vázquez','M','1985-11-07',1,'2023-08-10 23:40:12',NULL),(38,'Josafat Uriel','Trejo','Castro','M','1997-10-12',1,'2023-08-10 23:40:12',NULL),(39,'Timoteo','Gutiérrez','Sánchez','M','1988-01-17',1,'2023-08-10 23:40:12',NULL),(40,'Natalia','Rodríguez','Ortega','F','1984-11-14',1,'2023-08-10 23:40:12',NULL),(41,'Jaime Francisco','Medina','Bautista','M','1998-08-02',1,'2023-08-10 23:40:12',NULL),(42,'Lorena','Nuñez','Cruz','F','1994-04-24',1,'2023-08-10 23:40:12',NULL),(43,'Sofía Hanna','Sandoval','Méndez','F','2000-10-13',1,'2023-08-10 23:40:12',NULL),(44,'Patricia','Vargas','Martínez','F','2004-08-15',1,'2023-08-10 23:40:12',NULL),(45,'Barbara','Ortíz','Ibarra','F','1980-10-18',1,'2023-08-10 23:40:12',NULL),(46,'Isabel','Vega','Yañez','F','2002-12-18',1,'2023-08-10 23:40:12',NULL),(47,'Paola','Padilla','Vargas','F','1996-04-09',1,'2023-08-10 23:40:12',NULL),(48,'Elena','Alvarado','Juárez','F','1987-04-05',1,'2023-08-10 23:40:12',NULL),(49,'Germán','Juárez','Ramos','M','2004-10-23',1,'2023-08-10 23:40:12',NULL),(50,'Ofelia','Acosta','Yañez','F','1990-10-20',1,'2023-08-10 23:40:12',NULL),(51,'Lorenzo','Mendoza','Gómez','M','1989-04-04',1,'2023-08-10 23:40:12',NULL),(52,'Barbara','Sánchez','Santos','F','1991-07-11',1,'2023-08-10 23:40:12',NULL),(53,'Carolina Patricia','Trejo','Carrillo','F','1982-02-18',1,'2023-08-10 23:40:12',NULL),(54,'Saúl Zacek','Gutiérrez','Ruíz','M','1999-07-27',1,'2023-08-10 23:40:12',NULL),(55,'Isabel','Gutiérrez','Gutiérrez','F','1998-11-22',1,'2023-08-10 23:40:12',NULL),(56,'Nadia','Padilla','Alvarado','F','1990-06-26',1,'2023-08-10 23:40:12',NULL),(57,'Baltazar Gonzálo','Camacho','Aguilar','M','1990-08-16',1,'2023-08-10 23:40:12',NULL),(58,'Patricia Sofía','Huerta','Nava','F','2001-03-30',1,'2023-08-10 23:40:12',NULL),(59,'Pablo Iván','Castillo','López','M','1987-07-06',1,'2023-08-10 23:40:12',NULL),(60,'Ernesto','Alvarado','López','M','1993-07-18',1,'2023-08-10 23:40:12',NULL),(61,'Ernesto Luis','Gutiérrez','Soto','M','1985-11-05',1,'2023-08-10 23:40:12',NULL),(62,'Baltazar Raúl','Gayosso','Rosas','M','2003-03-07',1,'2023-08-10 23:40:12',NULL),(63,'Pedro Josafat','Cruz','Díaz','M','1982-06-24',1,'2023-08-10 23:40:12',NULL),(64,'Fernando','Contreras','Luna','M','1986-06-30',1,'2023-08-10 23:40:12',NULL),(65,'Neftalí','Navarro','López','M','2003-08-16',1,'2023-08-10 23:40:12',NULL),(66,'Antonio Gonzálo','Camacho','Chávez','M','1995-02-19',1,'2023-08-10 23:40:12',NULL),(67,'Alejandra','Alvarado','Ávila','F','1992-03-04',1,'2023-08-10 23:40:12',NULL),(68,'Carlos Edgar','Solís','Gómez','M','1983-08-16',1,'2023-08-10 23:40:12',NULL),(69,'Ivana','Téllez','Maldonado','F','2004-09-10',1,'2023-08-10 23:40:12',NULL),(70,'Pedro Óscar','Guzmán','Sánchez','M','2001-09-02',1,'2023-08-10 23:40:12',NULL),(71,'Uziel','Castro','Rosales','M','1980-09-05',1,'2023-08-10 23:40:12',NULL),(72,'Daniel','Solís','Nuñez','M','1999-11-15',1,'2023-08-10 23:40:12',NULL),(73,'Karlo','Paredes','Contreras','M','1991-10-15',1,'2023-08-10 23:40:12',NULL),(74,'Zara','Domínguez','Miranda','F','1985-03-20',1,'2023-08-10 23:40:12',NULL),(75,'Karim','Rodríguez','Mejía','M','1983-12-04',1,'2023-08-10 23:40:12',NULL),(76,'Uziel','García','Contreras','M','1984-01-26',1,'2023-08-10 23:40:12',NULL),(77,'William','Paredes','Valencia','M','1988-03-15',1,'2023-08-10 23:40:12',NULL),(78,'Sandra','Huerta','Rosas','F','1984-03-24',1,'2023-08-10 23:40:12',NULL),(79,'Luis','Velazquez','Vargas','M','2004-11-09',1,'2023-08-10 23:40:12',NULL),(80,'Neftalí','Santos','Cruz','M','1993-08-05',1,'2023-08-10 23:40:12',NULL),(81,'Nadia','González','Cruz','F','1987-10-16',1,'2023-08-10 23:40:12',NULL),(82,'Antonio','Muñoz','Sandoval','M','1984-11-01',1,'2023-08-10 23:40:12',NULL),(83,'Natalia','Aguilar','Yañez','F','2003-12-08',1,'2023-08-10 23:40:12',NULL),(84,'Valentín','Velazquez','Rivera','M','1995-04-09',1,'2023-08-10 23:40:12',NULL),(85,'Laura','Ortíz','Álvarez','F','1995-07-27',1,'2023-08-10 23:40:12',NULL),(86,'Karlo','Ríos','Domínguez','M','1987-02-12',1,'2023-08-10 23:40:12',NULL),(87,'Rosa','Torres','Rodríguez','F','1988-12-16',1,'2023-08-10 23:40:12',NULL),(88,'Berenice','Herrera','Reyes','F','1987-07-13',1,'2023-08-10 23:40:12',NULL),(89,'Ernesto Francisco','León','Quiróz','M','1989-04-04',1,'2023-08-10 23:40:12',NULL),(90,'Baltazar','Luna','Trejo','M','2002-07-05',1,'2023-08-10 23:40:12',NULL),(91,'Sandra','Rosas','Huerta','F','1991-12-02',1,'2023-08-10 23:40:12',NULL),(92,'Ernesto','Aguilar','León','M','1998-05-21',1,'2023-08-10 23:40:12',NULL),(93,'Edgar Ernesto','Soto','Díaz','M','1984-10-28',1,'2023-08-10 23:40:12',NULL),(94,'Elena','Ríos','Cortés','F','1983-04-26',1,'2023-08-10 23:40:12',NULL),(95,'Alma Isabel','Flores','López','F','1994-12-29',1,'2023-08-10 23:40:12',NULL),(96,'Sandra','Ramos','García','F','2001-06-08',1,'2023-08-10 23:40:12',NULL),(97,'Yara','Ximénez','Mejía','F','1988-05-08',1,'2023-08-10 23:40:12',NULL),(98,'Marco Pedro','Solís','Soto','M','2001-07-22',1,'2023-08-10 23:40:12',NULL),(99,'Carlos Manuel','López','Rosas','M','1999-02-25',1,'2023-08-10 23:40:12',NULL),(100,'Uriel','de la Cruz','Cortés','M','1992-12-10',1,'2023-08-10 23:40:12',NULL),(101,'Karen','Sampayo','Yañez','F','1996-08-09',1,'2023-08-10 23:40:12',NULL),(102,'Alma Sandra','González','Ximénez','F','1988-09-02',1,'2023-08-10 23:40:12',NULL),(103,'Gonzálo Nabor','Torres','Briones','M','2004-05-27',1,'2023-08-10 23:40:12',NULL),(104,'Salomé Tamara','Chávez','Fuentes','F','2002-11-08',1,'2023-08-10 23:40:12',NULL),(105,'Yahir Nabor','Huerta','Kuno','M','1993-10-08',1,'2023-08-10 23:40:12',NULL),(106,'Josafat','Bautista','Quiróz','M','2000-05-24',1,'2023-08-10 23:40:12',NULL),(107,'Xochítl','Gómez','Ramírez','F','2002-07-22',1,'2023-08-10 23:40:12',NULL),(108,'Karlo Xavier','Vargas','Cortés','M','1996-04-15',1,'2023-08-10 23:40:12',NULL),(109,'Héctor','Ríos','Guerrero','M','1980-05-04',1,'2023-08-10 23:40:12',NULL),(110,'Iván','Nuñez','Wurtz','M','1993-03-11',1,'2023-08-10 23:40:12',NULL),(111,'Alondra','Camacho','Flores','F','2004-09-04',1,'2023-08-10 23:40:12',NULL),(112,'Carolina','Díaz','Guzmán','F','1994-04-06',1,'2023-08-10 23:40:12',NULL),(113,'Carlos','Vargas','Castro','M','2004-11-10',1,'2023-08-10 23:40:12',NULL),(114,'Tadeo Edgar','Vega','Álvarez','M','1999-07-11',1,'2023-08-10 23:40:12',NULL),(115,'Barbara Esther','Romero','León','F','1981-06-22',1,'2023-08-10 23:40:12',NULL),(116,'Elena Paola','Urbina','Velazquez','F','1982-11-12',1,'2023-08-10 23:40:12',NULL),(117,'Daniela','Téllez','Silva','F','1982-06-21',1,'2023-08-10 23:40:12',NULL),(118,'Hugo Lorenzo','Vega','Jiménez','M','1984-04-13',1,'2023-08-10 23:40:12',NULL),(119,'Quetzálli','Gutiérrez','Rosales','F','1991-03-14',1,'2023-08-10 23:40:12',NULL),(120,'Baltazar Timoteo','Zapata','Salazar','M','1986-10-16',1,'2023-08-10 23:40:12',NULL),(121,'Natalia','Moreno','Zapata','F','2004-09-21',1,'2023-08-10 23:40:12',NULL),(122,'Dylan Marco','Álvarez','León','M','2003-11-22',1,'2023-08-10 23:40:12',NULL),(123,'Uriel Josafat','Urbina','Rosales','M','2004-11-22',1,'2023-08-10 23:40:12',NULL),(124,'Jaime Saúl','Morales','Vargas','M','1996-04-30',1,'2023-08-10 23:40:12',NULL),(125,'Hanna','Castillo','Soto','F','1981-06-29',1,'2023-08-10 23:40:12',NULL),(126,'Raúl Gustavo','Martínez','García','M','2002-11-02',1,'2023-08-10 23:40:12',NULL),(127,'Galilea Carolina','Santos','Cortés','F','1997-09-21',1,'2023-08-10 23:40:12',NULL),(128,'Tanya','Téllez','Gómez','F','1980-10-24',1,'2023-08-10 23:40:12',NULL),(129,'Nabor','Torres','Estrada','M','1983-02-02',1,'2023-08-10 23:40:12',NULL),(130,'Óscar Pedro','Ávila','Ibarra','M','1987-11-07',1,'2023-08-10 23:40:12',NULL),(131,'Carlos','Domínguez','García','M','2000-06-10',1,'2023-08-10 23:40:12',NULL),(132,'Germán Jaime','Kuno','Miranda','M','1989-09-03',1,'2023-08-10 23:40:12',NULL),(133,'Pedro','Delgado','Romero','M','1987-07-15',1,'2023-08-10 23:40:12',NULL),(134,'María','Pérez','Santiago','F','1987-03-27',1,'2023-08-10 23:40:12',NULL),(135,'María','Romero','Silva','F','1999-03-02',1,'2023-08-10 23:40:12',NULL),(136,'Sandra','Sánchez','Torres','F','2004-01-05',1,'2023-08-10 23:40:12',NULL),(137,'Paola','Torres','Vázquez','F','1996-02-27',1,'2023-08-10 23:40:12',NULL),(138,'Dylan Luis','Acosta','Domínguez','M','1995-04-21',1,'2023-08-10 23:40:12',NULL),(139,'Yara Alejandra','Jiménez','Solís','F','2000-03-31',1,'2023-08-10 23:40:12',NULL),(140,'Tanya','Sandoval','Pérez','F','1980-08-14',1,'2023-08-10 23:40:12',NULL),(141,'Tadeo','Salazar','Mejía','M','1985-03-03',1,'2023-08-10 23:40:12',NULL),(142,'Ofelia','Romero','Ramírez','F','2003-05-09',1,'2023-08-10 23:40:12',NULL),(143,'Francisco Antonio','Yañez','López','M','2002-01-11',1,'2023-08-10 23:40:12',NULL),(144,'Baltazar','García','Sampayo','M','1982-07-30',1,'2023-08-10 23:40:12',NULL),(145,'Natalia','Moreno','González','F','1981-12-12',1,'2023-08-10 23:40:12',NULL),(146,'Salomé','Jiménez','Maldonado','F','1986-01-31',1,'2023-08-10 23:40:12',NULL),(147,'Ursula','Alvarado','Paredes','F','1997-05-01',1,'2023-08-10 23:40:12',NULL),(148,'Dylan Uriel','Flores','Mendoza','M','1980-08-13',1,'2023-08-10 23:40:12',NULL),(149,'Fernanda','Mejía','Lara','F','1981-06-27',1,'2023-08-10 23:40:12',NULL),(150,'Pedro','Moreno','Guerrero','M','2003-06-04',1,'2023-08-10 23:40:12',NULL),(151,'Rosa Carla','Silva','Guzmán','F','1992-07-11',1,'2023-08-10 23:40:12',NULL),(152,'Sofía','Ramírez','Santos','F','2001-01-13',1,'2023-08-10 23:40:12',NULL),(153,'Alma','Vargas','Domínguez','F','2000-05-03',1,'2023-08-10 23:40:12',NULL),(154,'Carla','Guzmán','Velazquez','F','1982-04-29',1,'2023-08-10 23:40:12',NULL),(155,'Daniela','Santiago','Rosales','F','1997-01-25',1,'2023-08-10 23:40:12',NULL),(156,'Alma Ivana','Márquez','Valdéz','F','2002-03-18',1,'2023-08-10 23:40:12',NULL),(157,'Isabel','Navarro','Navarro','F','2000-02-18',1,'2023-08-10 23:40:12',NULL),(158,'Marco','Lara','Vargas','M','2003-08-24',1,'2023-08-10 23:40:12',NULL),(159,'Ignacio','Delgado','Wurtz','M','2000-09-10',1,'2023-08-10 23:40:12',NULL),(160,'Jaqueline Renata','Lara','Castillo','F','1980-06-26',1,'2023-08-10 23:40:12',NULL),(161,'Alejandra Karen','Moreno','Castillo','F','2002-02-08',1,'2023-08-10 23:40:12',NULL),(162,'William Valentín','Gómez','Morales','M','1997-10-11',1,'2023-08-10 23:40:12',NULL),(163,'Barbara','Cervantes','Fuentes','F','1981-11-12',1,'2023-08-10 23:40:12',NULL),(164,'Karlo','Peña','Ruíz','M','1985-04-09',1,'2023-08-10 23:40:12',NULL),(165,'Alejandra','Alvarado','Espinoza','F','1990-04-12',1,'2023-08-10 23:40:12',NULL),(166,'Uziel','Martínez','Trejo','M','1988-10-27',1,'2023-08-10 23:40:12',NULL),(167,'Fernanda','Solís','Márquez','F','1988-12-21',1,'2023-08-10 23:40:12',NULL),(168,'Karla','Wurtz','Valencia','F','1982-08-27',1,'2023-08-10 23:40:12',NULL),(169,'Quetzálli Ursula','Ibarra','Téllez','F','1996-04-10',1,'2023-08-10 23:40:12',NULL),(170,'Valentina','Navarro','de la Cruz','F','1985-05-26',1,'2023-08-10 23:40:12',NULL),(171,'Josafat Antonio','Valencia','Delgado','M','2002-02-07',1,'2023-08-10 23:40:12',NULL),(172,'Alejandro Germán','Urbina','Quiróz','M','1984-03-23',1,'2023-08-10 23:40:12',NULL),(173,'William','Castillo','Romero','M','1986-10-21',1,'2023-08-10 23:40:12',NULL),(174,'Alejandro','Juárez','Mejía','M','1995-01-19',1,'2023-08-10 23:40:12',NULL),(175,'Quetzálli Elena','Santos','Castillo','F','1992-06-14',1,'2023-08-10 23:40:12',NULL),(176,'Camilo','Mejía','Mendoza','M','1993-12-13',1,'2023-08-10 23:40:12',NULL),(177,'Ofelia Valentina','Rivera','Mendoza','F','1995-08-18',1,'2023-08-10 23:40:12',NULL),(178,'Evelyn','Paredes','Moreno','F','1996-11-12',1,'2023-08-10 23:40:12',NULL),(179,'Uriel','Moreno','Solís','M','2001-01-17',1,'2023-08-10 23:40:12',NULL),(180,'Jazmín Alondra','Muñoz','Ríos','F','2003-02-02',1,'2023-08-10 23:40:12',NULL),(181,'Ramón','Ibarra','Aguilar','M','1999-06-21',1,'2023-08-10 23:40:12',NULL),(182,'Wendy','Cervantes','Rosas','F','2003-10-17',1,'2023-08-10 23:40:12',NULL),(183,'Raúl','Castro','Jiménez','M','2003-12-07',1,'2023-08-10 23:40:12',NULL),(184,'Uriel','Reyes','Guzmán','M','1995-06-11',1,'2023-08-10 23:40:12',NULL),(185,'Fernando','Estrada','Navarro','M','1987-03-31',1,'2023-08-10 23:40:12',NULL),(186,'Hanna Yara','León','Luna','F','1996-07-18',1,'2023-08-10 23:40:12',NULL),(187,'Luis','Gutiérrez','Alvarado','M','1985-08-25',1,'2023-08-10 23:40:12',NULL),(188,'Gustavo','Huerta','Castro','M','1996-02-18',1,'2023-08-10 23:40:12',NULL),(189,'Sofía','Vega','Carrillo','F','1997-02-23',1,'2023-08-10 23:40:12',NULL),(190,'Ignacio Gonzálo','Medina','Guzmán','M','1984-05-10',1,'2023-08-10 23:40:12',NULL),(191,'Germán','Guzmán','Rosas','M','1992-05-31',1,'2023-08-10 23:40:12',NULL),(192,'Antonio','Urbina','Miranda','M','1982-08-28',1,'2023-08-10 23:40:12',NULL),(193,'Quetzálli Magdalena','Márquez','Contreras','F','1995-06-28',1,'2023-08-10 23:40:12',NULL),(194,'Manuel','Espinoza','Cortés','M','1985-12-05',1,'2023-08-10 23:40:12',NULL),(195,'Lorenzo','Estrada','Medina','M','1990-03-04',1,'2023-08-10 23:40:12',NULL),(196,'Karen Elena','Urbina','Kuno','F','2003-07-16',1,'2023-08-10 23:40:12',NULL),(197,'Tadeo Edgar','Sandoval','Kuno','M','1985-04-04',1,'2023-08-10 23:40:12',NULL),(198,'Evelyn Laura','Rosales','Santos','F','1994-06-18',1,'2023-08-10 23:40:12',NULL),(199,'Baltazar','Sandoval','Carrillo','M','1995-01-09',1,'2023-08-10 23:40:12',NULL),(200,'Patricia','Yañez','Wurtz','F','1989-04-17',1,'2023-08-10 23:40:12',NULL),(201,'Ernesto','Cortés','Pacheco','M','2002-09-23',1,'2023-08-10 23:40:12',NULL),(202,'Berenice','Díaz','Ibarra','F','1987-04-12',1,'2023-08-10 23:40:12',NULL),(203,'Quetzálcoatl Daniel','Ruíz','Espinoza','M','1986-09-15',1,'2023-08-10 23:40:12',NULL),(204,'Uriel','López','Romero','M','1984-05-24',1,'2023-08-10 23:40:12',NULL),(205,'Ofelia Josefa','Téllez','Téllez','F','1989-08-22',1,'2023-08-10 23:40:12',NULL),(206,'Pablo','Guzmán','Ríos','M','2004-02-20',1,'2023-08-10 23:40:12',NULL),(207,'Ivana','Soto','Reyes','F','1999-04-10',1,'2023-08-10 23:40:12',NULL),(208,'Rosa','Zapata','Silva','F','2002-10-25',1,'2023-08-10 23:40:12',NULL),(209,'Xavier Baltazar','Delgado','Santiago','M','2002-06-07',1,'2023-08-10 23:40:12',NULL),(210,'Ofelia Elena','Guzmán','Silva','F','1981-08-31',1,'2023-08-10 23:40:12',NULL),(211,'Uziel','López','Maldonado','M','1983-09-17',1,'2023-08-10 23:40:12',NULL),(212,'Edgar','Silva','Navarro','M','1986-03-21',1,'2023-08-10 23:40:12',NULL),(213,'Valentina Patricia','Delgado','León','F','1998-07-20',1,'2023-08-10 23:40:12',NULL),(214,'Pedro Gonzálo','Muñoz','Márquez','M','1984-11-09',1,'2023-08-10 23:40:12',NULL),(215,'Galilea','Cruz','Téllez','F','2001-09-30',1,'2023-08-10 23:40:12',NULL),(216,'Quetzálli Fatima','López','Ríos','F','1985-05-02',1,'2023-08-10 23:40:12',NULL),(217,'Renata Helena','Yañez','Wurtz','F','1989-02-17',1,'2023-08-10 23:40:12',NULL),(218,'Xavier','Trejo','Romero','M','1996-12-25',1,'2023-08-10 23:40:12',NULL),(219,'Iván','Estrada','Vargas','M','2002-11-12',1,'2023-08-10 23:40:12',NULL),(220,'Jazmín Josefa','Nava','López','F','1997-05-05',1,'2023-08-10 23:40:12',NULL),(221,'Daniel','Peña','González','M','1996-07-21',1,'2023-08-10 23:40:12',NULL),(222,'Hanna','Paredes','Romero','F','1981-04-29',1,'2023-08-10 23:40:12',NULL),(223,'Karim','Jiménez','Mejía','M','1999-02-13',1,'2023-08-10 23:40:12',NULL),(224,'Saúl','Ríos','Chávez','M','1981-12-01',1,'2023-08-10 23:40:12',NULL),(225,'Fernando Saúl','Herrera','Mendoza','M','1992-07-16',1,'2023-08-10 23:40:12',NULL),(226,'Quetzálcoatl Xavier','Reyes','Gutiérrez','M','2000-04-09',1,'2023-08-10 23:40:12',NULL),(227,'Olga Rosa','Sánchez','Valencia','F','2002-05-14',1,'2023-08-10 23:40:12',NULL),(228,'Valentina Ivana','Guzmán','Soto','F','1997-11-02',1,'2023-08-10 23:40:12',NULL),(229,'Paola','Miranda','González','F','1992-04-20',1,'2023-08-10 23:40:12',NULL),(230,'Alma','León','Rivera','F','2002-03-19',1,'2023-08-10 23:40:12',NULL),(231,'Alejandro','Romero','Pacheco','M','2004-07-08',1,'2023-08-10 23:40:12',NULL),(232,'Fatima','Gutiérrez','Briones','F','2004-04-07',1,'2023-08-10 23:40:12',NULL),(233,'Valentina Denisse','Trejo','Fuentes','F','1990-12-08',1,'2023-08-10 23:40:12',NULL),(234,'Raúl','Rosas','Ortega','M','1995-01-29',1,'2023-08-10 23:40:12',NULL),(235,'Raúl William','Sampayo','Hernández','M','2001-03-23',1,'2023-08-10 23:40:12',NULL),(236,'Luis','Pacheco','Alvarado','M','1991-02-07',1,'2023-08-10 23:40:12',NULL),(237,'Raúl','Hernández','Maldonado','M','1986-12-20',1,'2023-08-10 23:40:12',NULL),(238,'Wendy','Santos','Castro','F','2004-09-26',1,'2023-08-10 23:40:12',NULL),(239,'Gonzálo Timoteo','Gómez','Padilla','M','1980-08-06',1,'2023-08-10 23:40:12',NULL),(240,'Iván','Herrera','Rivera','M','2000-06-23',1,'2023-08-10 23:40:12',NULL),(241,'Xochítl Sofía','Guzmán','Ávila','F','2002-07-04',1,'2023-08-10 23:40:12',NULL),(242,'Nabor Yahir','Rivera','Trejo','M','1988-09-24',1,'2023-08-10 23:40:12',NULL),(243,'Magdalena','Pérez','Kuno','F','1997-10-12',1,'2023-08-10 23:40:12',NULL),(244,'Edgar Neftalí','Estrada','Acosta','M','1992-05-04',1,'2023-08-10 23:40:12',NULL),(245,'Josefa Esther','Téllez','Sampayo','F','1987-05-01',1,'2023-08-10 23:40:12',NULL),(246,'Denisse','Quiróz','Jiménez','F','1980-04-15',1,'2023-08-10 23:40:12',NULL),(247,'Magdalena','Reyes','Ramos','F','1988-04-13',1,'2023-08-10 23:40:12',NULL),(248,'Baltazar Marco','Soto','Fuentes','M','1987-06-22',1,'2023-08-10 23:40:12',NULL),(249,'Alejandro','Rivera','Sandoval','M','1992-09-10',1,'2023-08-10 23:40:12',NULL),(250,'Víctor','Hernández','Ortega','M','2001-08-02',1,'2023-08-10 23:40:12',NULL),(251,'Lorenzo','Álvarez','Romero','M','1992-12-23',1,'2023-08-10 23:40:12',NULL),(252,'Isabel','Flores','Kuno','F','1993-09-23',1,'2023-08-10 23:40:12',NULL),(253,'Ramón','Paredes','Alvarado','M','2004-01-21',1,'2023-08-10 23:40:12',NULL),(254,'Esther','Huerta','Sampayo','F','2003-05-10',1,'2023-08-10 23:40:12',NULL),(255,'Uziel','Peña','Carrillo','M','1986-06-04',1,'2023-08-10 23:40:12',NULL),(256,'Valeria','Santiago','Nuñez','F','1988-11-19',1,'2023-08-10 23:40:12',NULL),(257,'Salvador William','Hernández','Ortega','M','2000-09-05',1,'2023-08-10 23:40:12',NULL),(258,'Gustavo Francisco','Ríos','Silva','M','1992-09-19',1,'2023-08-10 23:40:12',NULL),(259,'Benito Nabor','Moreno','Pérez','M','1983-01-21',1,'2023-08-10 23:40:12',NULL),(260,'Barbara','Trejo','Martínez','F','1999-08-13',1,'2023-08-10 23:40:12',NULL),(261,'Karen','Nava','Ramírez','F','2003-05-11',1,'2023-08-10 23:40:12',NULL),(262,'Germán Zacek','Salazar','Ramos','M','1994-10-06',1,'2023-08-10 23:40:12',NULL),(263,'Josefa','Santos','Salazar','F','1988-11-18',1,'2023-08-10 23:40:12',NULL),(264,'Josafat','Ortega','Cruz','M','1986-05-08',1,'2023-08-10 23:40:12',NULL),(265,'Pedro Jaime','Herrera','Rosales','M','1982-07-29',1,'2023-08-10 23:40:12',NULL),(266,'María','Silva','Acosta','F','1990-04-22',1,'2023-08-10 23:40:12',NULL),(267,'Ignacio Jaime','Domínguez','Nuñez','M','1998-12-25',1,'2023-08-10 23:40:12',NULL),(268,'Zacek Nabor','Campos','Domínguez','M','2001-11-25',1,'2023-08-10 23:40:12',NULL),(269,'Valentina','Pacheco','Padilla','F','1981-07-28',1,'2023-08-10 23:40:12',NULL),(270,'Hugo','Chávez','Carrillo','M','1994-06-30',1,'2023-08-10 23:40:12',NULL),(271,'Denisse Jaqueline','Delgado','Bautista','F','1980-03-29',1,'2023-08-10 23:40:12',NULL),(272,'Jaime','Ramos','Márquez','M','1990-02-05',1,'2023-08-10 23:40:12',NULL),(273,'Alondra','Sandoval','León','F','1996-11-24',1,'2023-08-10 23:40:12',NULL),(274,'Barbara','Nava','Yañez','F','1987-02-25',1,'2023-08-10 23:40:12',NULL),(275,'Barbara','Méndez','Contreras','F','1995-07-23',1,'2023-08-10 23:40:12',NULL),(276,'Zacek','Ávila','Estrada','M','1982-11-19',1,'2023-08-10 23:40:12',NULL),(277,'Ernesto','Mejía','Delgado','M','1987-12-19',1,'2023-08-10 23:40:12',NULL),(278,'Benito','Rivera','Reyes','M','1990-05-21',1,'2023-08-10 23:40:12',NULL),(279,'Uziel','Paredes','Cruz','M','1997-06-11',1,'2023-08-10 23:40:12',NULL),(280,'Camilo','Campos','Bautista','M','1995-12-21',1,'2023-08-10 23:40:12',NULL),(281,'Valentín','Márquez','de la Cruz','M','1993-09-15',1,'2023-08-10 23:40:12',NULL),(282,'Yahir','Cervantes','Sánchez','M','1987-02-20',1,'2023-08-10 23:40:12',NULL),(283,'Ivana','Silva','Lara','F','1987-01-07',1,'2023-08-10 23:40:12',NULL),(284,'Dylan','Márquez','Ibarra','M','1984-02-28',1,'2023-08-10 23:40:12',NULL),(285,'Tanya Valeria','Medina','Yañez','F','1997-01-29',1,'2023-08-10 23:40:12',NULL),(286,'Karen','Ávila','Nuñez','F','1983-07-23',1,'2023-08-10 23:40:12',NULL),(287,'Yahir','Gayosso','Álvarez','M','2000-10-03',1,'2023-08-10 23:40:12',NULL),(288,'Saúl Uriel','Miranda','Chávez','M','1990-04-24',1,'2023-08-10 23:40:12',NULL),(289,'Alejandra','Yañez','Herrera','F','1999-03-06',1,'2023-08-10 23:40:12',NULL),(290,'Ernesto','Téllez','Santiago','M','1995-03-05',1,'2023-08-10 23:40:12',NULL),(291,'Daniel','Alvarado','Paredes','M','1997-12-05',1,'2023-08-10 23:40:12',NULL),(292,'Pablo','Navarro','Medina','M','2002-02-28',1,'2023-08-10 23:40:12',NULL),(293,'Lorena','Trejo','Muñoz','F','2004-01-01',1,'2023-08-10 23:40:12',NULL),(294,'Manuel','Jiménez','Cervantes','M','1988-04-11',1,'2023-08-10 23:40:12',NULL),(295,'Héctor','Álvarez','Ibarra','M','1989-07-13',1,'2023-08-10 23:40:12',NULL),(296,'Rosa Karla','Padilla','Nuñez','F','1986-10-06',1,'2023-08-10 23:40:12',NULL),(297,'Jaqueline Paola','Valencia','Reyes','F','2002-03-24',1,'2023-08-10 23:40:12',NULL),(298,'Octavio Dylan','Nava','López','M','1997-04-18',1,'2023-08-10 23:40:12',NULL),(299,'Carlos','Nuñez','Fuentes','M','1998-04-11',1,'2023-08-10 23:40:12',NULL),(300,'Gonzálo Carlos','Flores','Chávez','M','1986-01-23',1,'2023-08-10 23:40:12',NULL),(301,'Paola','Huerta','Domínguez','F','1991-04-30',1,'2023-08-10 23:40:12',NULL),(302,'Patricia','Zapata','Flores','F','2001-09-26',1,'2023-08-10 23:40:12',NULL),(303,'Uriel Gustavo','Chávez','Rosas','M','1999-11-26',1,'2023-08-10 23:40:12',NULL),(304,'Víctor Pablo','Valdéz','Yañez','M','1996-11-19',1,'2023-08-10 23:40:12',NULL),(305,'Esther Alondra','Yañez','Quiróz','F','1982-02-21',1,'2023-08-10 23:40:12',NULL),(306,'Ofelia','Ruíz','Guzmán','F','1993-02-12',1,'2023-08-10 23:40:12',NULL),(307,'Valentín','Cortés','Huerta','M','2004-05-18',1,'2023-08-10 23:40:12',NULL),(308,'Xochítl','Rivera','Rosas','F','1999-05-22',1,'2023-08-10 23:40:12',NULL),(309,'Ignacio','Valdéz','Bautista','M','1998-09-16',1,'2023-08-10 23:40:12',NULL),(310,'Laura','Briones','Torres','F','1999-06-30',1,'2023-08-10 23:40:12',NULL),(311,'Elena','León','Ibarra','F','1980-07-29',1,'2023-08-10 23:40:12',NULL),(312,'Rosa Natalia','Navarro','Contreras','F','1986-12-18',1,'2023-08-10 23:40:12',NULL),(313,'Wendy','Medina','Vega','F','1986-12-25',1,'2023-08-10 23:40:12',NULL),(314,'Valentín','Maldonado','Urbina','M','1987-03-14',1,'2023-08-10 23:40:12',NULL),(315,'Natalia','Romero','Alvarado','F','1992-02-15',1,'2023-08-10 23:40:12',NULL),(316,'Octavio','Trejo','Santos','M','1992-09-15',1,'2023-08-10 23:40:12',NULL),(317,'Berenice Galilea','Ibarra','Guzmán','F','1990-10-22',1,'2023-08-10 23:40:12',NULL),(318,'Yara','Pacheco','Guzmán','F','1999-01-20',1,'2023-08-10 23:40:12',NULL),(319,'Antonio','Nuñez','Urbina','M','1991-12-01',1,'2023-08-10 23:40:12',NULL),(320,'Fernanda','Fuentes','Trejo','F','1994-02-10',1,'2023-08-10 23:40:12',NULL),(321,'Patricia Magdalena','Nuñez','Padilla','F','1990-07-20',1,'2023-08-10 23:40:12',NULL),(322,'Xavier','Vargas','Santiago','M','1992-06-26',1,'2023-08-10 23:40:12',NULL),(323,'Zara','Castillo','Cortés','F','2004-06-14',1,'2023-08-10 23:40:12',NULL),(324,'Josefa','Reyes','Álvarez','F','2004-02-19',1,'2023-08-10 23:40:12',NULL),(325,'Yara Magdalena','Mendoza','Ríos','F','1990-02-21',1,'2023-08-10 23:40:12',NULL),(326,'Carla Alejandra','Rodríguez','Vega','F','2003-03-04',1,'2023-08-10 23:40:12',NULL),(327,'Baltazar Ernesto','Gómez','Morales','M','1998-08-11',1,'2023-08-10 23:40:12',NULL),(328,'Renata Alejandra','Mendoza','Gómez','F','1989-02-10',1,'2023-08-10 23:40:12',NULL),(329,'Carla Laura','Díaz','Méndez','F','1982-06-11',1,'2023-08-10 23:40:12',NULL),(330,'Tadeo','Vargas','Valdéz','M','1993-11-21',1,'2023-08-10 23:40:12',NULL),(331,'Víctor','Gómez','Valdéz','M','1985-11-29',1,'2023-08-10 23:40:12',NULL),(332,'Jazmín','Gayosso','Delgado','F','1993-03-22',1,'2023-08-10 23:40:12',NULL),(333,'William','Torres','Estrada','M','1983-06-29',1,'2023-08-10 23:40:12',NULL),(334,'Carla María','Jiménez','Silva','F','1989-09-26',1,'2023-08-10 23:40:12',NULL),(335,'Patricia','Álvarez','López','F','1994-05-08',1,'2023-08-10 23:40:12',NULL),(336,'Ofelia','Flores','Rodríguez','F','1990-07-08',1,'2023-08-10 23:40:12',NULL),(337,'Uriel Germán','Vargas','Delgado','M','1984-01-03',1,'2023-08-10 23:40:12',NULL),(338,'Fernanda','Méndez','Campos','F','2004-06-10',1,'2023-08-10 23:40:12',NULL),(339,'Tadeo','Valencia','Salazar','M','1982-12-03',1,'2023-08-10 23:40:12',NULL),(340,'Karla','Ávila','Aguilar','F','2002-04-25',1,'2023-08-10 23:40:12',NULL),(341,'Hugo','Nava','Moreno','M','1984-06-18',1,'2023-08-10 23:40:12',NULL),(342,'Xochítl','Flores','Vargas','F','1980-10-13',1,'2023-08-10 23:40:12',NULL),(343,'Lorena','Santiago','Trejo','F','2000-10-03',1,'2023-08-10 23:40:13',NULL),(344,'Francisco Karlo','Lara','Ruíz','M','2000-03-07',1,'2023-08-10 23:40:13',NULL),(345,'Alma Yara','Ríos','Zapata','F','1981-06-11',1,'2023-08-10 23:40:13',NULL),(346,'Valeria','Zapata','Nava','F','1981-10-24',1,'2023-08-10 23:40:13',NULL),(347,'Yahir Luis','Gómez','Torres','M','2001-09-11',1,'2023-08-10 23:40:13',NULL),(348,'Dylan','Campos','de la Cruz','M','1987-01-13',1,'2023-08-10 23:40:13',NULL),(349,'Daniela','Domínguez','Vargas','F','1994-04-29',1,'2023-08-10 23:40:13',NULL),(350,'Marco','Pérez','Jiménez','M','1996-11-17',1,'2023-08-10 23:40:13',NULL),(351,'Karlo','Ruíz','Sandoval','M','1998-02-15',1,'2023-08-10 23:40:13',NULL),(352,'Neftalí Timoteo','Huerta','Reyes','M','2000-08-22',1,'2023-08-10 23:40:13',NULL),(353,'Neftalí','Juárez','Díaz','M','1999-06-26',1,'2023-08-10 23:40:13',NULL),(354,'Lorena','Márquez','Cortés','F','2003-11-28',1,'2023-08-10 23:40:13',NULL),(355,'Wendy Nadia','Díaz','Peña','F','1989-09-01',1,'2023-08-10 23:40:13',NULL),(356,'Uriel Benito','Soto','Aguilar','M','2004-12-14',1,'2023-08-10 23:40:13',NULL),(357,'Tamara','Fuentes','Martínez','F','1991-09-29',1,'2023-08-10 23:40:13',NULL),(358,'Patricia','Vargas','Kuno','F','2002-06-06',1,'2023-08-10 23:40:13',NULL),(359,'Xavier Luis','García','Hernández','M','1995-05-23',1,'2023-08-10 23:40:13',NULL),(360,'Barbara','Reyes','Wurtz','F','1980-08-04',1,'2023-08-10 23:40:13',NULL),(361,'Salvador Xavier','Solís','Soto','M','2002-05-18',1,'2023-08-10 23:40:13',NULL),(362,'Benito','Mejía','Martínez','M','1985-07-15',1,'2023-08-10 23:40:13',NULL),(363,'Esther','Martínez','Campos','F','2001-08-16',1,'2023-08-10 23:40:13',NULL),(364,'Berenice Sandra','Sandoval','Delgado','F','1989-08-20',1,'2023-08-10 23:40:13',NULL),(365,'Fatima Berenice','Flores','Castro','F','1995-01-24',1,'2023-08-10 23:40:13',NULL),(366,'Saúl','Ortíz','Salazar','M','1994-09-11',1,'2023-08-10 23:40:13',NULL),(367,'Nabor','Muñoz','Trejo','M','1981-04-19',1,'2023-08-10 23:40:13',NULL),(368,'Marco Alejandro','Romero','Pacheco','M','2003-10-07',1,'2023-08-10 23:40:13',NULL),(369,'Fernanda Denisse','Velazquez','Briones','F','1990-11-15',1,'2023-08-10 23:40:13',NULL),(370,'Nabor Saúl','Gayosso','Vargas','M','2000-05-21',1,'2023-08-10 23:40:13',NULL),(371,'Antonio','Chávez','Paredes','M','1990-07-07',1,'2023-08-10 23:40:13',NULL),(372,'Hanna Karla','Hernández','García','F','1980-11-18',1,'2023-08-10 23:40:13',NULL),(373,'Iván','Reyes','León','M','2002-11-10',1,'2023-08-10 23:40:13',NULL),(374,'Octavio Benito','Huerta','Briones','M','1983-04-04',1,'2023-08-10 23:40:13',NULL),(375,'Daniela','Cortés','Hernández','F','1989-07-18',1,'2023-08-10 23:40:13',NULL),(376,'Carolina Nadia','Quiróz','Medina','F','1981-06-20',1,'2023-08-10 23:40:13',NULL),(377,'Isabel','León','Méndez','F','1999-08-11',1,'2023-08-10 23:40:13',NULL),(378,'Alejandra','Urbina','Sánchez','F','2002-12-20',1,'2023-08-10 23:40:13',NULL),(379,'Zara','Flores','Paredes','F','1999-03-17',1,'2023-08-10 23:40:13',NULL),(380,'Ernesto','Vargas','Gómez','M','1980-05-26',1,'2023-08-10 23:40:13',NULL),(381,'Iván','Medina','Medina','M','1980-03-18',1,'2023-08-10 23:40:13',NULL),(382,'Helena','García','Reyes','F','2004-09-11',1,'2023-08-10 23:40:13',NULL),(383,'Lorena','Ximénez','Acosta','F','2004-01-11',1,'2023-08-10 23:40:13',NULL),(384,'Ernesto Marco','Castro','Gómez','M','1980-05-04',1,'2023-08-10 23:40:13',NULL),(385,'Gerardo','Morales','Mejía','M','1980-06-02',1,'2023-08-10 23:40:13',NULL),(386,'Renata Josefa','Vargas','Maldonado','F','2003-11-07',1,'2023-08-10 23:40:13',NULL),(387,'Karlo','Juárez','Ramírez','M','1990-11-20',1,'2023-08-10 23:40:13',NULL),(388,'Barbara Patricia','Acosta','Ávila','F','1999-01-05',1,'2023-08-10 23:40:13',NULL),(389,'Helena Paola','Jiménez','Fuentes','F','2004-07-14',1,'2023-08-10 23:40:13',NULL),(390,'Magdalena','Flores','Gutiérrez','F','2003-03-08',1,'2023-08-10 23:40:13',NULL),(391,'Fernanda','Castillo','Márquez','F','1994-01-12',1,'2023-08-10 23:40:13',NULL),(392,'Ivana','Mejía','Cruz','F','1998-03-11',1,'2023-08-10 23:40:13',NULL),(393,'Renata','Nava','Silva','F','1999-11-26',1,'2023-08-10 23:40:13',NULL),(394,'Evelyn','Nava','de la Cruz','F','1980-01-02',1,'2023-08-10 23:40:13',NULL),(395,'Raúl Hugo','Zapata','León','M','1985-08-05',1,'2023-08-10 23:40:13',NULL),(396,'Daniela Hanna','Medina','Martínez','F','1982-05-19',1,'2023-08-10 23:40:13',NULL),(397,'Pedro Uriel','Salazar','Silva','M','2002-09-30',1,'2023-08-10 23:40:13',NULL),(398,'Marco','Acosta','Torres','M','1981-02-19',1,'2023-08-10 23:40:13',NULL),(399,'Jaime','Mendoza','Mendoza','M','1999-10-28',1,'2023-08-10 23:40:13',NULL),(400,'Renata','Paredes','Alvarado','F','2003-03-22',1,'2023-08-10 23:40:13',NULL),(401,'Lorena Jaqueline','Ximénez','Jiménez','F','1999-08-12',1,'2023-08-10 23:40:13',NULL),(402,'Renata','Quiróz','Vega','F','1987-08-07',1,'2023-08-10 23:40:13',NULL),(403,'Baltazar','Jiménez','Gutiérrez','M','1994-12-20',1,'2023-08-10 23:40:13',NULL),(404,'Valentina','Vargas','Wurtz','F','1990-10-03',1,'2023-08-10 23:40:13',NULL),(405,'Alejandra Fatima','Ruíz','Jiménez','F','1987-08-16',1,'2023-08-10 23:40:13',NULL),(406,'Neftalí Benito','Castro','Cortés','M','1998-05-02',1,'2023-08-10 23:40:13',NULL),(407,'Denisse Salomé','Guzmán','López','F','2004-01-28',1,'2023-08-10 23:40:13',NULL),(408,'Carlos','Sandoval','Lara','M','1984-05-04',1,'2023-08-10 23:40:13',NULL),(409,'Xochítl','Gómez','López','F','1995-12-15',1,'2023-08-10 23:40:13',NULL),(410,'Fernanda Carolina','Juárez','Guerrero','F','1999-04-06',1,'2023-08-10 23:40:13',NULL),(411,'Carolina','González','Ávila','F','1997-09-26',1,'2023-08-10 23:40:13',NULL),(412,'Daniel Fernando','Romero','Yañez','M','1986-07-15',1,'2023-08-10 23:40:13',NULL),(413,'Hanna Karen','Santiago','Chávez','F','1989-07-18',1,'2023-08-10 23:40:13',NULL),(414,'Helena','Rodríguez','Méndez','F','1987-11-27',1,'2023-08-10 23:40:13',NULL),(415,'Bernardo','Yañez','de la Cruz','M','1983-12-16',1,'2023-08-10 23:40:13',NULL),(416,'Manuel','Contreras','Quiróz','M','1980-05-23',1,'2023-08-10 23:40:13',NULL),(417,'Ursula Josefa','Pérez','Cortés','F','1991-06-04',1,'2023-08-10 23:40:13',NULL),(418,'Jaime Lorenzo','Contreras','Zapata','M','1992-04-03',1,'2023-08-10 23:40:13',NULL),(419,'Evelyn Sandra','Vargas','Castro','F','1980-06-13',1,'2023-08-10 23:40:13',NULL),(420,'Helena','Flores','Bautista','F','1986-10-26',1,'2023-08-10 23:40:13',NULL),(421,'Antonio Pablo','Vargas','Soto','M','1999-02-27',1,'2023-08-10 23:40:13',NULL),(422,'Tanya','Delgado','Jiménez','F','1986-06-22',1,'2023-08-10 23:40:13',NULL),(423,'Fernanda Salomé','Trejo','Téllez','F','1981-11-12',1,'2023-08-10 23:40:13',NULL),(424,'Alondra','Gómez','Salazar','F','1980-08-18',1,'2023-08-10 23:40:13',NULL),(425,'Antonio','Yañez','Paredes','M','1980-11-11',1,'2023-08-10 23:40:13',NULL),(426,'Barbara','Pacheco','Morales','F','1998-04-24',1,'2023-08-10 23:40:13',NULL),(427,'Barbara Renata','López','de la Cruz','F','1992-08-16',1,'2023-08-10 23:40:13',NULL),(428,'Isabel','Sánchez','Nava','F','2003-11-29',1,'2023-08-10 23:40:13',NULL),(429,'Josefa','Gayosso','Muñoz','F','1994-08-14',1,'2023-08-10 23:40:13',NULL),(430,'Gonzálo','Gómez','de la Cruz','M','2003-12-12',1,'2023-08-10 23:40:13',NULL),(431,'Karlo','Moreno','Trejo','M','1992-02-28',1,'2023-08-10 23:40:13',NULL),(432,'Alejandra','Valdéz','Castro','F','1981-11-09',1,'2023-08-10 23:40:13',NULL),(433,'Josefa','Miranda','Valencia','F','2003-12-19',1,'2023-08-10 23:40:13',NULL),(434,'Carla','Valencia','Luna','F','1984-02-13',1,'2023-08-10 23:40:13',NULL),(435,'Pedro','Vázquez','Sánchez','M','1990-07-18',1,'2023-08-10 23:40:13',NULL),(436,'Salvador','Domínguez','Peña','M','1980-12-05',1,'2023-08-10 23:40:13',NULL),(437,'Karim Ernesto','Vega','Guzmán','M','1990-04-23',1,'2023-08-10 23:40:13',NULL),(438,'Marco Héctor','Gayosso','Vázquez','M','1993-08-25',1,'2023-08-10 23:40:13',NULL),(439,'Tanya','Cruz','Domínguez','F','1988-12-12',1,'2023-08-10 23:40:13',NULL),(440,'Benito','Ibarra','Herrera','M','1985-02-13',1,'2023-08-10 23:40:13',NULL),(441,'Evelyn Carla','Rosales','Juárez','F','1994-04-01',1,'2023-08-10 23:40:13',NULL),(442,'Uriel','Gutiérrez','Bautista','M','1982-03-13',1,'2023-08-10 23:40:13',NULL),(443,'Daniela Renata','de la Cruz','Valdéz','F','1990-08-03',1,'2023-08-10 23:40:13',NULL),(444,'Olga','Pacheco','Padilla','F','1981-07-03',1,'2023-08-10 23:40:13',NULL),(445,'Uziel','Morales','Briones','M','1981-05-24',1,'2023-08-10 23:40:13',NULL),(446,'Francisco Salvador','Aguilar','Domínguez','M','1985-05-04',1,'2023-08-10 23:40:13',NULL),(447,'Isabel','Soto','Mejía','F','1980-09-20',1,'2023-08-10 23:40:13',NULL),(448,'Helena','Rojas','Santos','F','1995-05-20',1,'2023-08-10 23:40:13',NULL),(449,'Bernardo','Camacho','Delgado','M','1983-04-26',1,'2023-08-10 23:40:13',NULL),(450,'Jaime','Santos','Vega','M','1984-07-27',1,'2023-08-10 23:40:13',NULL),(451,'Helena','Fuentes','Vázquez','F','1994-04-29',1,'2023-08-10 23:40:13',NULL),(452,'Yara','Ibarra','Jiménez','F','1985-06-20',1,'2023-08-10 23:40:13',NULL),(453,'Yara','Martínez','Rodríguez','F','1981-07-30',1,'2023-08-10 23:40:13',NULL),(454,'Víctor Tadeo','Zapata','Díaz','M','1990-12-23',1,'2023-08-10 23:40:13',NULL),(455,'Xavier William','Ximénez','Vázquez','M','1981-03-19',1,'2023-08-10 23:40:13',NULL),(456,'Karlo','Nava','Lara','M','1994-06-24',1,'2023-08-10 23:40:13',NULL),(457,'Gabriela Jaqueline','Estrada','Ramírez','F','1997-01-25',1,'2023-08-10 23:40:13',NULL),(458,'Karen','Yañez','Guzmán','F','2004-11-22',1,'2023-08-10 23:40:13',NULL),(459,'Fernando','Huerta','Ortega','M','1983-02-25',1,'2023-08-10 23:40:13',NULL),(460,'Tamara','Rodríguez','Zapata','F','1990-02-28',1,'2023-08-10 23:40:13',NULL),(461,'Fernando Gonzálo','Guerrero','Urbina','M','1981-06-21',1,'2023-08-10 23:40:13',NULL),(462,'Paola','Rosales','López','F','2001-05-08',1,'2023-08-10 23:40:13',NULL),(463,'Laura','Paredes','Gayosso','F','2001-12-24',1,'2023-08-10 23:40:13',NULL),(464,'Nabor','Wurtz','Sánchez','M','1999-11-23',1,'2023-08-10 23:40:13',NULL),(465,'Tadeo Alejandro','Castillo','Rojas','M','1993-12-18',1,'2023-08-10 23:40:13',NULL),(466,'Karlo','López','Rivera','M','2003-04-08',1,'2023-08-10 23:40:13',NULL),(467,'Bernardo','Bautista','Salazar','M','1981-01-15',1,'2023-08-10 23:40:13',NULL),(468,'Neftalí Pedro','Ríos','Quiróz','M','1996-04-29',1,'2023-08-10 23:40:13',NULL),(469,'Denisse','Maldonado','León','F','1986-12-02',1,'2023-08-10 23:40:13',NULL),(470,'Helena Tanya','Castillo','Castro','F','1987-02-16',1,'2023-08-10 23:40:13',NULL),(471,'Isabel','Paredes','Zapata','F','1999-01-19',1,'2023-08-10 23:40:13',NULL),(472,'Uriel Iván','Hernández','Mendoza','M','1998-06-24',1,'2023-08-10 23:40:13',NULL),(473,'Laura Evelyn','Márquez','de la Cruz','F','1993-08-19',1,'2023-08-10 23:40:13',NULL),(474,'Fernando','Zapata','Maldonado','M','2000-01-27',1,'2023-08-10 23:40:13',NULL),(475,'Ramón Francisco','Pacheco','Ibarra','M','1992-03-04',1,'2023-08-10 23:40:13',NULL),(476,'Gerardo','Navarro','Vargas','M','2003-07-05',1,'2023-08-10 23:40:13',NULL),(477,'Benito','Yañez','García','M','1994-07-22',1,'2023-08-10 23:40:13',NULL),(478,'Manuel','Ramos','Santiago','M','1997-07-20',1,'2023-08-10 23:40:13',NULL),(479,'Natalia Laura','Morales','Padilla','F','2004-09-17',1,'2023-08-10 23:40:13',NULL),(480,'Berenice','Mejía','Trejo','F','1987-05-06',1,'2023-08-10 23:40:13',NULL),(481,'Rosa Evelyn','Valencia','Herrera','F','1995-05-09',1,'2023-08-10 23:40:13',NULL),(482,'Lorena Renata','Luna','Miranda','F','2001-03-28',1,'2023-08-10 23:40:13',NULL),(483,'Manuel','Kuno','Sandoval','M','1994-02-27',1,'2023-08-10 23:40:13',NULL),(484,'Saúl','de la Cruz','Vega','M','1980-10-03',1,'2023-08-10 23:40:13',NULL),(485,'Jazmín','Solís','Castro','F','1983-09-05',1,'2023-08-10 23:40:13',NULL),(486,'Karlo','Yañez','Briones','M','1989-09-22',1,'2023-08-10 23:40:13',NULL),(487,'Nadia Valentina','Ramos','Vargas','F','1984-06-04',1,'2023-08-10 23:40:13',NULL),(488,'Valentín William','Reyes','Padilla','M','2002-07-12',1,'2023-08-10 23:40:13',NULL),(489,'Josefa','Rosas','Chávez','F','1998-03-14',1,'2023-08-10 23:40:13',NULL),(490,'Víctor','Méndez','Ramos','M','1980-10-29',1,'2023-08-10 23:40:13',NULL),(491,'Fernanda','Muñoz','Méndez','F','1993-01-15',1,'2023-08-10 23:40:13',NULL),(492,'Camilo','Jiménez','Valdéz','M','2001-11-19',1,'2023-08-10 23:40:13',NULL),(493,'Jazmín','Guerrero','Ortega','F','1984-02-04',1,'2023-08-10 23:40:13',NULL),(494,'Fernanda','Romero','Téllez','F','1980-11-08',1,'2023-08-10 23:40:13',NULL),(495,'Alejandra','Ortega','Ruíz','F','1982-08-04',1,'2023-08-10 23:40:13',NULL),(496,'Pablo','Quiróz','Mejía','M','1994-09-20',1,'2023-08-10 23:40:13',NULL),(497,'Barbara','Sampayo','Romero','F','1980-05-16',1,'2023-08-10 23:40:13',NULL),(498,'Carlos','Quiróz','Luna','M','1994-01-01',1,'2023-08-10 23:40:13',NULL),(499,'Yara Valeria','Sandoval','Contreras','F','1995-02-15',1,'2023-08-10 23:40:13',NULL),(500,'Neftalí','Sánchez','Urbina','M','1981-08-16',1,'2023-08-10 23:40:13',NULL);
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
  `capacidad` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` datetime DEFAULT NULL,
  `negocio_ID` int unsigned DEFAULT NULL,
  `ubicacion_sucursal_ID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `negocio_ID_idx` (`negocio_ID`),
  KEY `ubicacion_sucursal_ID_idx` (`ubicacion_sucursal_ID`),
  CONSTRAINT `negocio_ID` FOREIGN KEY (`negocio_ID`) REFERENCES `tbb_negocio` (`ID`),
  CONSTRAINT `ubicacion_sucursal_ID` FOREIGN KEY (`ubicacion_sucursal_ID`) REFERENCES `tbb_ubicacion` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_sucursal`
--

LOCK TABLES `tbb_sucursal` WRITE;
/*!40000 ALTER TABLE `tbb_sucursal` DISABLE KEYS */;
INSERT INTO `tbb_sucursal` VALUES (1,'Gypsy Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(2,'Extasis',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(3,'Primera Edición',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(4,'Ambar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(5,'Bartopia',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(6,'Mundo De Neón',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(7,'Lunula Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(8,'Bar One',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(9,'Noches Vip',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(10,'Crepúsculo',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(11,'Bar Bates',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(12,'Búhos Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(13,'Sueños Y Coctéles',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(14,'Cosmo Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(15,'Bar Damasco',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(16,'Bar El Dorado',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(17,'Brillo De Luna',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(18,'Bar La Capilla',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(19,'Bar Júpiter',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(20,'La Isla',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(21,'Barra B',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(22,'El Fénix',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(23,'La Parada',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(24,'Bar Bombay',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(25,'Cóctel Dorado',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(26,'AkBar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(27,'Acuario Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(28,'Bar Costa Azul',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(29,'El Turco Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(30,'Bar Rojo',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(31,'Bar El Gitano',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(32,'La Unión',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(33,'El Sótano',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(34,'Bar Tauro',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(35,'Bar Rocco',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(36,'La Bóveda Dorada',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(37,'Burbón',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(38,'Tribalistas Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(39,'El Místico',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(40,'El Barril Dorado',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(41,'El Gran Bohemio',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(42,'El escondite Dorado',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(43,'El Estelar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(44,'Bar El Borbón',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(45,'Vasper Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(46,'Las Brasas',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(47,'Venus',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(48,'La Vieja Guardia',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(49,'Distrito Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(50,'Mandala Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(51,'Los Vikingos',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(52,'Pub De Londres',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(53,'Centeno Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(54,'La Guarida',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(55,'Bing Bang',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(56,'Niquel Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(57,'Tabula Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(58,'Bar El Distrito',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(59,'Barseco',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(60,'La República',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(61,'Solano Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(62,'Bar Los Amigos',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(63,'Miramar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(64,'Bar Serrano',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(65,'Titanic',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(66,'Santo Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(67,'Mis Birritas',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(68,'Orale Pues',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(69,'La Última Y Ya Está',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(70,'Mis Súper Cuates',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(71,'Tequilas DF',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(72,'Rancho Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(73,'Bar El Sombrerón',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(74,'Bar El Azteca',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(75,'El Portal Mexicano',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(76,'Tex Mex Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(77,'Taco Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(78,'La Condesa',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(79,'La Tequilera',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(80,'El Gran Danzón',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(81,'El Tequilazo',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(82,'Bar El Norteño',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(83,'El Distrital',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(84,'Bar El Poblano',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(85,'Mi Cuate Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(86,'Bendito México',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(87,'Mis Chelitas',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(88,'El Compadre',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(89,'Mi México Lindo',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(90,'La Conga',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(91,'Escarlata Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(92,'El Templo De La Salsa',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(93,'El Impero Salsero',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(94,'Ritmo Divino',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(95,'Bar Astral',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(96,'Tiempo De Salsa',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(97,'Bar Las Rosas',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(98,'Ritmo Y Son',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(99,'Bar La Sabrosura',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(100,'Divino Tumbao',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(101,'La Loma Salsera',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(102,'Bongos Dorados',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(103,'El Son Divino',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(104,'Tropical Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(105,'Salsa Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(106,'Salsa Manía',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(107,'La Taberna',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(108,'Piso 13',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(109,'La Bodeguita',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(110,'Roxy Rocker',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(111,'Atomic Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(112,'Infinity Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(113,'Déjà Vu',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(114,'Nebula Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(115,'Ondas De Rock',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(116,'Rock Well',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(117,'La Sagrada',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(118,'Cien Fuegos',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(119,'Alfa Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(120,'Onda Azul',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(121,'Vibras De Rock',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(122,'Raíces Rockeras',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(123,'Flama Dorada',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(124,'La Roca Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(125,'Bar 360',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(126,'Espacio Rock',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(127,'Bar Gravity',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(128,'El Imperial',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(129,'La Estación',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(130,'Bar Element',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(131,'Místico Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(132,'El Palmar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(133,'Bar La Azotea',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(134,'Luna Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(135,'Bar Casablanca',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(136,'Bar El Residente',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(137,'Línea De Oro',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(138,'Salón Blue',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(139,'Paramount Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(140,'Terracota',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(141,'Tabú Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(142,'Avanti Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(143,'Nova Club',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(144,'Bar Azul',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(145,'Bar sensei',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(146,'Nivel Dorado',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(147,'Club Amigo',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(148,'Olimpus Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(149,'Bar El Victoriano',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(150,'Bar La Alameda',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(151,'La Morenita Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(152,'Tiempo De Brisndis',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(153,'Vibras Doradas',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(154,'La Barra Licores',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(155,'Astros Azules',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(156,'Llanero Solitario',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(157,'Cuatro Lunas',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(158,'El Monarca',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(159,'Paradise Bar',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL),(160,'La Oficina',NULL,1,'2023-08-10 23:40:13',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_ubicacion`
--

LOCK TABLES `tbb_ubicacion` WRITE;
/*!40000 ALTER TABLE `tbb_ubicacion` DISABLE KEYS */;
INSERT INTO `tbb_ubicacion` VALUES (1,'Noroeste','Región',1,1,'2023-08-10 23:40:11',NULL,NULL),(2,'Baja California','Estado',1,1,'2023-08-10 23:40:11',NULL,1),(3,'Baja California Sur','Estado',1,1,'2023-08-10 23:40:11',NULL,1),(4,'Chihuahua','Estado',1,1,'2023-08-10 23:40:11',NULL,1),(5,'Durango','Estado',1,1,'2023-08-10 23:40:11',NULL,1),(6,'Sinaloa','Estado',1,1,'2023-08-10 23:40:11',NULL,1),(7,'Sonora','Estado',1,1,'2023-08-10 23:40:11',NULL,1),(8,'Noreste','Región',1,1,'2023-08-10 23:40:11',NULL,NULL),(9,'Coahuila','Estado',1,1,'2023-08-10 23:40:11',NULL,8),(10,'Nuevo León','Estado',1,1,'2023-08-10 23:40:11',NULL,8),(11,'Tamaulipas','Estado',1,1,'2023-08-10 23:40:11',NULL,8),(12,'Occidente','Región',1,1,'2023-08-10 23:40:11',NULL,NULL),(13,'Colima','Estado',1,1,'2023-08-10 23:40:11',NULL,12),(14,'Jalisco','Estado',1,1,'2023-08-10 23:40:11',NULL,12),(15,'Michoacán','Estado',1,1,'2023-08-10 23:40:11',NULL,12),(16,'Nayarit','Estado',1,1,'2023-08-10 23:40:11',NULL,12),(17,'Oriente','Región',1,1,'2023-08-10 23:40:11',NULL,NULL),(18,'Hidalgo','Estado',1,1,'2023-08-10 23:40:11',NULL,17),(19,'Puebla','Estado',1,1,'2023-08-10 23:40:11',NULL,17),(20,'Veracruz','Estado',1,1,'2023-08-10 23:40:11',NULL,17),(21,'Tlaxcala','Estado',1,1,'2023-08-10 23:40:11',NULL,17),(22,'Centronorte','Región',1,1,'2023-08-10 23:40:11',NULL,NULL),(23,'Aguascalientes','Estado',1,1,'2023-08-10 23:40:11',NULL,22),(24,'Guanajuato','Estado',1,1,'2023-08-10 23:40:11',NULL,22),(25,'Querétaro','Estado',1,1,'2023-08-10 23:40:11',NULL,22),(26,'San Luis Potosí','Estado',1,1,'2023-08-10 23:40:11',NULL,22),(27,'Zacatecas','Estado',1,1,'2023-08-10 23:40:11',NULL,22),(28,'Centrosur','Región',1,1,'2023-08-10 23:40:11',NULL,NULL),(29,'Ciudad de México','Entidad Federativa',1,1,'2023-08-10 23:40:11',NULL,28),(30,'Estado de México','Estado',1,1,'2023-08-10 23:40:11',NULL,28),(31,'Morelos','Estado',1,1,'2023-08-10 23:40:11',NULL,28),(32,'Suroeste','Región',1,1,'2023-08-10 23:40:11',NULL,NULL),(33,'Chiapas','Estado',1,1,'2023-08-10 23:40:11',NULL,32),(34,'Guerrero','Estado',1,1,'2023-08-10 23:40:11',NULL,32),(35,'Oaxaca','Estado',1,1,'2023-08-10 23:40:11',NULL,32),(36,'Sureste','Región',1,1,'2023-08-10 23:40:11',NULL,NULL),(37,'Campeche','Estado',1,1,'2023-08-10 23:40:11',NULL,36),(38,'Quintana Roo','Estado',1,1,'2023-08-10 23:40:11',NULL,36),(39,'Tabasco','Estado',1,1,'2023-08-10 23:40:11',NULL,36),(40,'Yucatán','Estado',1,1,'2023-08-10 23:40:11',NULL,36),(41,'Huauchinango','Ciudad',1,1,'2023-08-10 23:40:11',NULL,19),(42,'Lázaro Cárdenas','Ciudad',1,1,'2023-08-10 23:40:11',NULL,19),(43,'Juan Galindo','Ciudad',1,1,'2023-08-10 23:40:11',NULL,19),(44,'Xicotepec','Ciudad',1,1,'2023-08-10 23:40:11',NULL,19),(45,'Villa Ávila Camacho','Ciudad',1,1,'2023-08-10 23:40:11',NULL,19),(46,'73080','Código Postal',1,1,'2023-08-10 23:40:11',NULL,44),(47,'La Rivera','Colonia',1,1,'2023-08-10 23:40:11',NULL,46),(48,'Ganadera','Colonia',1,1,'2023-08-10 23:40:11',NULL,46),(49,'González Ortega','Calle',1,1,'2023-08-10 23:40:11',NULL,47),(50,'Mina','Calle',1,1,'2023-08-10 23:40:11',NULL,47),(51,'45','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,49),(52,'46','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,49),(53,'47','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,49),(54,'48','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,49),(55,'49','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,49),(56,'S/N','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,49),(57,'101','Número Interior',1,1,'2023-08-10 23:40:11',NULL,51),(58,'102','Número Interior',1,1,'2023-08-10 23:40:11',NULL,51),(59,'201','Número Interior',1,1,'2023-08-10 23:40:11',NULL,51),(60,'202','Número Interior',1,1,'2023-08-10 23:40:11',NULL,51),(61,'301','Número Interior',1,1,'2023-08-10 23:40:11',NULL,51),(62,'302','Número Interior',1,1,'2023-08-10 23:40:11',NULL,51),(63,'102','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,50),(64,'103','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,50),(65,'105','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,50),(66,'108','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,50),(67,'109','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,50),(68,'S/N','Número Exterior',1,1,'2023-08-10 23:40:11',NULL,50),(69,'A','Número Interior',1,1,'2023-08-10 23:40:11',NULL,64),(70,'B','Número Interior',1,1,'2023-08-10 23:40:11',NULL,64),(71,'C','Número Interior',1,1,'2023-08-10 23:40:11',NULL,64),(72,'Libertad','Colonia',1,1,'2023-08-10 23:40:11',NULL,41),(73,'Catalina','Colonia',1,1,'2023-08-10 23:40:11',NULL,41),(74,'Potro','Colonia',1,1,'2023-08-10 23:40:11',NULL,43),(75,'Centro','Colonia',1,1,'2023-08-10 23:40:11',NULL,43),(76,'Los Manguitos','Colonia',1,1,'2023-08-10 23:40:11',NULL,42),(77,'El Huasteco','Colonia',1,1,'2023-08-10 23:40:11',NULL,42),(78,'Jalapilla','Colonia',1,1,'2023-08-10 23:40:11',NULL,45),(79,'5 Mayo','Colonia',1,1,'2023-08-10 23:40:11',NULL,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_categoria`
--

LOCK TABLES `tbc_categoria` WRITE;
/*!40000 ALTER TABLE `tbc_categoria` DISABLE KEYS */;
INSERT INTO `tbc_categoria` VALUES (1,'Cantina','Negocio enfocado a la venta de bebias alcohólicas con servicio de música',1,'2023-08-10 23:40:11',NULL,2),(2,'Temático','Negocio versatil con gran adaptabilidad de servicios',1,'2023-08-10 23:40:11',NULL,1),(3,'Restaurant','Bar diurno con variedad de servicios',1,'2023-08-10 23:40:11',NULL,1),(4,'Karaoke','Enfocados al servicio de karaoke',1,'2023-08-10 23:40:11',NULL,2),(5,'Discoteca','Oferta diferentes servicios de música',1,'2023-08-10 23:40:11',NULL,5),(6,'Table Dance','Negocio enfocado a venta de alcohól y servicios de compañía',1,'2023-08-10 23:40:11',NULL,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_horario`
--

LOCK TABLES `tbc_horario` WRITE;
/*!40000 ALTER TABLE `tbc_horario` DISABLE KEYS */;
INSERT INTO `tbc_horario` VALUES (1,'Matutino','Abierto de 08:00 a 14:00 horas',1,'2023-08-10 23:40:11',NULL),(2,'Vespertino','Abierto de 14:00 a 20:00 horas',1,'2023-08-10 23:40:11',NULL),(3,'Juventud','Abierto de 16:00 a 22:00 horas',1,'2023-08-10 23:40:11',NULL),(4,'Nocturno','Abierto de 20:00 a 02:00 horas',1,'2023-08-10 23:40:11',NULL),(5,'After','Abierto de 21:00 a 07:00 horas',1,'2023-08-10 23:40:11',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_rol`
--

LOCK TABLES `tbc_rol` WRITE;
/*!40000 ALTER TABLE `tbc_rol` DISABLE KEYS */;
INSERT INTO `tbc_rol` VALUES (1,'Admin','Gestor de la sucursal de un negocio',1,'2023-08-10 23:40:11',NULL),(2,'Cliente','Usuario consumidor de los servicios que ofrecen los negocios (Puede realizar evaluaciones y comentarios)',1,'2023-08-10 23:40:11',NULL),(3,'User','Usuario por defecto, puede visualizar pero no evaluar ni comentar',1,'2023-08-10 23:40:11',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_servicio`
--

LOCK TABLES `tbc_servicio` WRITE;
/*!40000 ALTER TABLE `tbc_servicio` DISABLE KEYS */;
INSERT INTO `tbc_servicio` VALUES (1,'Bebidas alcohólicas','Bebidas alcohólicas en su forma base',1,'2023-08-10 23:40:11',NULL),(2,'Bebidas no alcohólicas','Bebidas no alcohólicas con o sin gas',1,'2023-08-10 23:40:11',NULL),(3,'Coctelería','Bebidas alcohólicas preparadas de distintas formas',1,'2023-08-10 23:40:11',NULL),(4,'Snacks','Pequeños platillos de botanas y/o aperitivos para acompañar las bebidas',1,'2023-08-10 23:40:11',NULL),(5,'Platillos','Distintos tipos de platillos, comida típica o antojitos mexicanos',1,'2023-08-10 23:40:11',NULL),(6,'Smoke','Catalogo de cigarros para los clientes fumadores',1,'2023-08-10 23:40:11',NULL),(7,'Musica','Servicio de música por petición del cliente',1,'2023-08-10 23:40:11',NULL),(8,'Musica en vivo','Presentacion de grupo/s musicales en vivo',1,'2023-08-10 23:40:11',NULL),(9,'Karaoke','Servicio de pistas musicales para que el cliente pueda cantar su selección',1,'2023-08-10 23:40:11',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_servicios_sucursal`
--

LOCK TABLES `tbd_servicios_sucursal` WRITE;
/*!40000 ALTER TABLE `tbd_servicios_sucursal` DISABLE KEYS */;
INSERT INTO `tbd_servicios_sucursal` VALUES (1,120,5),(2,77,7),(3,48,3),(4,66,3),(5,13,6),(6,129,2),(7,92,3),(8,107,5),(9,86,2),(10,29,4),(11,90,5),(12,158,3),(13,114,5),(14,96,4),(15,145,5),(16,139,8),(17,55,3),(18,103,2),(19,27,2),(20,57,3),(21,36,4),(22,5,2),(23,90,4),(24,56,5),(25,96,4),(26,40,9),(27,39,2),(28,62,3),(29,22,8),(30,8,6),(31,112,8),(32,135,8),(33,109,8),(34,47,8),(35,69,6),(36,90,1),(37,123,6),(38,80,8),(39,82,2),(40,31,5),(41,7,6),(42,7,3),(43,66,2),(44,59,5),(45,48,1),(46,51,5),(47,47,1),(48,110,1),(49,56,5),(50,77,8),(51,154,2),(52,141,9),(53,13,6),(54,90,2),(55,145,2),(56,30,4),(57,60,7),(58,62,8),(59,151,3),(60,72,5),(61,155,5),(62,54,3),(63,107,3),(64,94,9),(65,31,9),(66,56,7),(67,132,8),(68,84,2),(69,84,9),(70,38,3),(71,127,1),(72,137,2),(73,16,1),(74,27,5),(75,44,7),(76,113,4),(77,151,5),(78,77,1),(79,108,3),(80,74,4),(81,102,9),(82,149,7),(83,153,5),(84,111,9),(85,97,2),(86,45,7),(87,138,1),(88,122,6),(89,108,6),(90,148,8),(91,75,8),(92,93,5),(93,131,5),(94,39,6),(95,47,6),(96,54,7),(97,120,5),(98,28,4),(99,87,5),(100,126,5),(101,6,7),(102,88,5),(103,10,7),(104,31,9),(105,15,6),(106,154,8),(107,68,5),(108,60,3),(109,38,4),(110,15,4),(111,107,2),(112,123,4),(113,98,8),(114,100,5),(115,64,6),(116,143,6),(117,65,2),(118,100,6),(119,23,9),(120,17,8),(121,118,3),(122,1,3),(123,76,5),(124,156,4),(125,40,9),(126,156,1),(127,34,9),(128,45,4),(129,61,6),(130,109,7),(131,81,4),(132,69,9),(133,91,9),(134,154,9),(135,13,4),(136,145,2),(137,63,3),(138,47,6),(139,7,5),(140,19,3),(141,141,6),(142,98,1),(143,104,9),(144,133,3),(145,140,5),(146,23,1),(147,138,1),(148,158,6),(149,6,4),(150,120,6),(151,141,5),(152,149,1),(153,115,3),(154,48,6),(155,34,2),(156,42,7),(157,1,7),(158,130,7),(159,43,2),(160,133,7),(161,51,3),(162,91,9),(163,141,6),(164,104,3),(165,54,9),(166,88,1),(167,70,2),(168,46,1),(169,74,2),(170,33,6),(171,109,4),(172,18,3),(173,152,9),(174,5,3),(175,6,5),(176,63,5),(177,20,3),(178,125,2),(179,113,9),(180,65,3),(181,58,8),(182,36,5),(183,148,1),(184,87,5),(185,153,3),(186,48,8),(187,11,9),(188,82,7),(189,13,3),(190,151,9),(191,25,7),(192,63,6),(193,11,4),(194,124,7),(195,8,2),(196,144,8),(197,100,5),(198,114,9),(199,141,4),(200,43,2),(201,27,3),(202,113,8),(203,138,9),(204,156,2),(205,129,6),(206,84,8),(207,100,6),(208,25,9),(209,43,5),(210,109,9),(211,88,9),(212,48,5),(213,119,2),(214,64,6),(215,146,7),(216,106,3),(217,64,2),(218,102,7),(219,72,3),(220,133,4),(221,105,1),(222,6,2),(223,113,1),(224,18,4),(225,125,6),(226,130,2),(227,62,4),(228,3,7),(229,133,8),(230,87,3),(231,137,4),(232,59,7),(233,50,5),(234,84,2),(235,23,3),(236,152,9),(237,125,2),(238,39,8),(239,83,1),(240,104,1),(241,99,7),(242,143,3),(243,71,5),(244,47,8),(245,86,1),(246,82,5),(247,140,9),(248,160,2),(249,11,7),(250,49,4),(251,19,4),(252,74,3),(253,120,1),(254,158,8),(255,160,6),(256,18,7),(257,16,4),(258,134,9),(259,157,2),(260,11,7),(261,64,8),(262,6,6),(263,1,2),(264,128,5),(265,20,1),(266,26,5),(267,142,1),(268,71,2),(269,58,4),(270,134,1),(271,99,1),(272,37,1),(273,128,7),(274,14,3),(275,63,9),(276,103,3),(277,116,6),(278,155,9),(279,142,5),(280,13,7),(281,87,4),(282,88,5),(283,94,6),(284,17,8),(285,109,9),(286,154,8),(287,14,1),(288,3,9),(289,94,2),(290,141,1),(291,74,3),(292,130,4),(293,39,2),(294,49,9),(295,94,2),(296,57,2),(297,82,2),(298,70,6),(299,117,8),(300,141,9),(301,20,7),(302,77,1),(303,158,6),(304,57,8),(305,146,2),(306,6,7),(307,80,3),(308,23,7),(309,32,8),(310,69,7),(311,61,7),(312,63,8),(313,4,6),(314,138,5),(315,30,3),(316,113,7),(317,120,4),(318,130,8),(319,116,2),(320,69,8),(321,108,9),(322,141,5),(323,106,9),(324,104,5),(325,50,2),(326,13,8),(327,107,9),(328,156,8),(329,77,7),(330,52,4),(331,138,2),(332,68,5),(333,40,7),(334,143,3),(335,121,9),(336,39,5),(337,130,5),(338,28,3),(339,160,1),(340,66,8),(341,133,7),(342,3,9),(343,142,5),(344,104,8),(345,44,8),(346,68,5),(347,79,8),(348,94,5),(349,99,7),(350,80,5),(351,144,1),(352,90,6),(353,98,1),(354,77,3),(355,109,7),(356,85,5),(357,148,1),(358,125,5),(359,71,5),(360,62,3),(361,59,9),(362,81,7),(363,33,8),(364,62,5),(365,82,9),(366,32,2),(367,25,3),(368,27,8),(369,113,9),(370,139,4),(371,28,8),(372,70,8),(373,123,4),(374,91,7),(375,142,3),(376,122,9),(377,63,2),(378,93,4),(379,70,8),(380,8,6),(381,158,1),(382,51,4),(383,13,2),(384,105,7),(385,114,4),(386,98,9),(387,25,7),(388,69,8),(389,131,6),(390,99,3),(391,52,9),(392,96,3),(393,70,4),(394,136,9),(395,23,9),(396,20,8),(397,9,6),(398,151,8),(399,57,3),(400,48,6),(401,66,1),(402,22,5),(403,133,8),(404,86,3),(405,121,9),(406,77,5),(407,45,7),(408,153,5),(409,96,5),(410,124,3),(411,40,3),(412,126,9),(413,99,2),(414,113,2),(415,136,6),(416,112,5),(417,96,4),(418,16,4),(419,80,4),(420,82,4),(421,37,1),(422,117,4),(423,121,6),(424,129,2),(425,76,8),(426,125,4),(427,92,7),(428,128,8),(429,6,5),(430,78,8),(431,145,8),(432,119,1),(433,1,8),(434,56,2),(435,88,4),(436,46,3),(437,83,7),(438,30,7),(439,135,2),(440,51,1),(441,72,1),(442,108,4),(443,109,4),(444,136,1),(445,1,7),(446,61,8),(447,33,4),(448,65,8),(449,140,9),(450,153,1),(451,42,3),(452,63,3),(453,4,4),(454,148,4),(455,42,1),(456,111,2),(457,117,2),(458,111,9),(459,88,9),(460,20,7),(461,61,6),(462,9,4),(463,109,3),(464,54,8),(465,43,7),(466,11,1),(467,138,3),(468,117,8),(469,10,7),(470,98,8),(471,11,9),(472,126,9),(473,55,9),(474,69,5),(475,16,1),(476,3,9),(477,65,4),(478,82,5),(479,3,6),(480,127,3),(481,129,3),(482,35,1),(483,129,7),(484,49,3),(485,83,7),(486,20,4),(487,108,2),(488,100,7),(489,126,7),(490,44,2),(491,29,3),(492,142,6),(493,44,6),(494,24,9),(495,49,7),(496,81,5),(497,136,8),(498,87,3),(499,104,5),(500,67,6),(501,11,4),(502,84,6),(503,48,7),(504,150,4),(505,19,4),(506,116,4),(507,109,3),(508,59,9),(509,137,3),(510,151,8),(511,28,5),(512,139,8),(513,135,5),(514,25,2),(515,61,4),(516,137,1),(517,121,6),(518,102,4),(519,48,2),(520,140,9),(521,145,8),(522,52,2),(523,158,4),(524,125,8),(525,148,1),(526,89,6),(527,38,4),(528,75,1),(529,113,5),(530,31,6),(531,48,7),(532,139,1),(533,135,9),(534,23,9),(535,17,8),(536,114,2),(537,87,3),(538,141,5),(539,134,7),(540,159,8),(541,38,6),(542,91,8),(543,98,5),(544,78,1),(545,111,4),(546,123,7),(547,50,4),(548,2,8),(549,62,3),(550,38,3);
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
  `puntuacion` int NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=901 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_valoracion`
--

LOCK TABLES `tbd_valoracion` WRITE;
/*!40000 ALTER TABLE `tbd_valoracion` DISABLE KEYS */;
INSERT INTO `tbd_valoracion` VALUES (1,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,17),(2,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,59),(3,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,39),(4,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,85),(5,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,116),(6,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,108),(7,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,49),(8,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,8),(9,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,81),(10,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,5),(11,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,77),(12,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,103),(13,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,61),(14,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,147),(15,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,17),(16,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,60),(17,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,35),(18,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,10),(19,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,152),(20,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,55),(21,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,71),(22,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,12),(23,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,132),(24,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,102),(25,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,76),(26,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,107),(27,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,62),(28,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,147),(29,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,99),(30,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,122),(31,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,40),(32,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,8),(33,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,61),(34,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,110),(35,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,93),(36,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,105),(37,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,134),(38,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,4),(39,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,30),(40,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,154),(41,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,139),(42,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,32),(43,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,92),(44,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,92),(45,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,7),(46,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,123),(47,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,64),(48,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,10),(49,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,131),(50,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,151),(51,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,9),(52,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,142),(53,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,27),(54,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,30),(55,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,21),(56,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,78),(57,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,16),(58,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,129),(59,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,91),(60,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,117),(61,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,25),(62,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,109),(63,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,32),(64,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,30),(65,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,99),(66,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,34),(67,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,37),(68,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,117),(69,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,147),(70,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,98),(71,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,18),(72,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,77),(73,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,45),(74,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,13),(75,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,122),(76,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,118),(77,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,70),(78,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,5),(79,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,60),(80,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,152),(81,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,150),(82,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,4),(83,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,117),(84,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,87),(85,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,124),(86,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,35),(87,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,68),(88,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,109),(89,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,135),(90,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,1),(91,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,79),(92,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,48),(93,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,91),(94,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,6),(95,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,65),(96,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,90),(97,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,158),(98,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,94),(99,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,1),(100,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,58),(101,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,78),(102,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,18),(103,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,141),(104,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,160),(105,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,40),(106,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,146),(107,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,32),(108,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,46),(109,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,7,79),(110,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,102),(111,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,59),(112,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,20),(113,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,1),(114,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,111),(115,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,6),(116,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,65),(117,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,4),(118,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,111),(119,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,148),(120,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,147),(121,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,96),(122,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,27),(123,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,3),(124,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,124),(125,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,50),(126,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,8,119),(127,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,156),(128,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,96),(129,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,2,68),(130,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,6,94),(131,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,3,87),(132,1,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,43),(133,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,143),(134,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,159),(135,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,44),(136,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,22),(137,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,26),(138,4,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,59),(139,3,NULL,1,'2023-08-10 23:40:14',NULL,NULL,5,118),(140,2,NULL,1,'2023-08-10 23:40:14',NULL,NULL,4,160),(141,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,1,128),(142,5,NULL,1,'2023-08-10 23:40:14',NULL,NULL,9,18),(143,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,19),(144,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,22),(145,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,129),(146,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,63),(147,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,106),(148,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,33),(149,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,61),(150,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,127),(151,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,6),(152,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,75),(153,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,87),(154,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,116),(155,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,143),(156,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,128),(157,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,113),(158,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,94),(159,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,1),(160,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,81),(161,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,54),(162,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,22),(163,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,117),(164,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,80),(165,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,34),(166,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,86),(167,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,17),(168,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,114),(169,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,11),(170,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,154),(171,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,28),(172,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,111),(173,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,105),(174,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,115),(175,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,87),(176,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,6),(177,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,54),(178,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,89),(179,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,39),(180,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,92),(181,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,156),(182,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,60),(183,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,106),(184,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,96),(185,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,141),(186,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,6),(187,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,14),(188,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,133),(189,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,158),(190,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,58),(191,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,40),(192,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,158),(193,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,15),(194,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,96),(195,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,40),(196,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,115),(197,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,111),(198,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,156),(199,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,150),(200,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,108),(201,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,115),(202,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,150),(203,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,98),(204,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,61),(205,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,111),(206,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,157),(207,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,139),(208,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,138),(209,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,90),(210,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,112),(211,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,112),(212,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,135),(213,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,47),(214,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,115),(215,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,86),(216,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,42),(217,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,91),(218,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,11),(219,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,135),(220,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,123),(221,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,78),(222,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,145),(223,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,28),(224,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,78),(225,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,152),(226,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,121),(227,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,133),(228,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,153),(229,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,111),(230,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,106),(231,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,138),(232,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,19),(233,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,158),(234,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,75),(235,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,122),(236,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,58),(237,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,61),(238,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,93),(239,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,11),(240,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,124),(241,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,135),(242,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,66),(243,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,134),(244,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,157),(245,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,101),(246,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,145),(247,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,47),(248,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,115),(249,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,76),(250,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,100),(251,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,25),(252,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,46),(253,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,93),(254,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,133),(255,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,75),(256,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,138),(257,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,39),(258,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,14),(259,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,28),(260,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,95),(261,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,83),(262,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,46),(263,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,116),(264,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,156),(265,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,12),(266,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,109),(267,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,43),(268,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,11),(269,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,146),(270,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,145),(271,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,135),(272,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,129),(273,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,105),(274,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,59),(275,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,137),(276,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,59),(277,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,156),(278,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,28),(279,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,79),(280,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,118),(281,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,53),(282,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,61),(283,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,74),(284,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,78),(285,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,30),(286,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,84),(287,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,123),(288,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,57),(289,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,98),(290,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,4),(291,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,92),(292,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,148),(293,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,31),(294,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,100),(295,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,123),(296,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,80),(297,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,12),(298,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,16),(299,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,142),(300,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,27),(301,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,51),(302,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,7),(303,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,125),(304,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,8),(305,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,152),(306,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,79),(307,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,110),(308,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,74),(309,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,60),(310,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,32),(311,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,86),(312,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,51),(313,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,114),(314,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,64),(315,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,83),(316,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,72),(317,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,116),(318,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,108),(319,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,16),(320,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,108),(321,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,157),(322,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,30),(323,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,73),(324,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,11),(325,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,20),(326,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,8),(327,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,100),(328,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,56),(329,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,149),(330,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,24),(331,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,99),(332,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,30),(333,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,4),(334,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,2),(335,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,8),(336,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,71),(337,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,37),(338,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,54),(339,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,83),(340,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,9),(341,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,31),(342,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,3),(343,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,27),(344,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,130),(345,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,51),(346,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,53),(347,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,151),(348,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,81),(349,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,98),(350,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,51),(351,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,102),(352,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,80),(353,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,85),(354,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,98),(355,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,123),(356,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,109),(357,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,101),(358,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,160),(359,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,2),(360,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,153),(361,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,137),(362,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,53),(363,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,63),(364,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,59),(365,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,121),(366,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,45),(367,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,119),(368,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,154),(369,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,77),(370,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,69),(371,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,94),(372,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,44),(373,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,24),(374,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,76),(375,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,126),(376,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,134),(377,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,74),(378,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,58),(379,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,41),(380,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,131),(381,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,23),(382,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,58),(383,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,129),(384,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,128),(385,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,9),(386,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,123),(387,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,136),(388,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,37),(389,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,67),(390,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,11),(391,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,13),(392,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,49),(393,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,2),(394,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,74),(395,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,110),(396,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,13),(397,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,122),(398,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,127),(399,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,152),(400,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,86),(401,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,28),(402,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,17),(403,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,88),(404,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,28),(405,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,150),(406,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,44),(407,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,94),(408,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,26),(409,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,153),(410,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,159),(411,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,100),(412,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,20),(413,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,143),(414,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,27),(415,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,44),(416,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,65),(417,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,158),(418,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,123),(419,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,112),(420,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,6),(421,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,1),(422,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,21),(423,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,2),(424,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,35),(425,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,152),(426,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,25),(427,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,76),(428,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,100),(429,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,22),(430,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,28),(431,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,154),(432,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,147),(433,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,39),(434,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,57),(435,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,104),(436,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,84),(437,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,54),(438,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,103),(439,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,52),(440,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,51),(441,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,124),(442,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,32),(443,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,108),(444,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,71),(445,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,36),(446,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,145),(447,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,12),(448,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,43),(449,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,33),(450,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,19),(451,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,140),(452,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,121),(453,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,116),(454,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,88),(455,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,68),(456,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,114),(457,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,97),(458,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,2),(459,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,78),(460,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,93),(461,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,15),(462,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,71),(463,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,146),(464,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,109),(465,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,90),(466,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,102),(467,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,119),(468,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,34),(469,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,145),(470,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,85),(471,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,104),(472,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,111),(473,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,96),(474,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,151),(475,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,33),(476,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,98),(477,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,79),(478,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,84),(479,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,113),(480,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,30),(481,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,140),(482,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,112),(483,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,37),(484,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,57),(485,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,38),(486,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,56),(487,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,39),(488,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,14),(489,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,52),(490,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,95),(491,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,101),(492,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,41),(493,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,57),(494,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,35),(495,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,89),(496,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,80),(497,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,117),(498,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,6),(499,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,25),(500,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,70),(501,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,116),(502,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,30),(503,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,41),(504,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,38),(505,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,14),(506,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,38),(507,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,111),(508,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,7),(509,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,56),(510,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,94),(511,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,104),(512,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,154),(513,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,25),(514,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,76),(515,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,95),(516,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,48),(517,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,17),(518,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,2),(519,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,147),(520,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,1),(521,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,78),(522,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,98),(523,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,144),(524,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,16),(525,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,129),(526,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,116),(527,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,40),(528,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,37),(529,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,121),(530,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,143),(531,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,30),(532,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,100),(533,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,156),(534,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,141),(535,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,9),(536,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,107),(537,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,104),(538,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,11),(539,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,139),(540,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,37),(541,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,21),(542,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,30),(543,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,45),(544,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,35),(545,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,87),(546,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,67),(547,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,110),(548,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,84),(549,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,58),(550,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,81),(551,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,85),(552,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,142),(553,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,30),(554,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,14),(555,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,143),(556,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,117),(557,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,36),(558,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,9),(559,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,13),(560,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,114),(561,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,77),(562,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,54),(563,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,147),(564,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,51),(565,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,102),(566,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,36),(567,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,120),(568,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,111),(569,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,143),(570,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,82),(571,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,152),(572,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,137),(573,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,100),(574,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,96),(575,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,131),(576,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,32),(577,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,116),(578,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,92),(579,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,28),(580,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,35),(581,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,107),(582,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,48),(583,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,159),(584,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,54),(585,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,145),(586,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,44),(587,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,49),(588,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,152),(589,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,60),(590,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,46),(591,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,139),(592,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,98),(593,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,27),(594,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,11),(595,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,88),(596,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,138),(597,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,149),(598,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,17),(599,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,15),(600,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,54),(601,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,34),(602,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,123),(603,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,126),(604,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,34),(605,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,84),(606,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,158),(607,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,97),(608,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,146),(609,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,51),(610,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,102),(611,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,63),(612,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,15),(613,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,150),(614,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,60),(615,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,73),(616,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,54),(617,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,47),(618,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,21),(619,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,89),(620,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,130),(621,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,123),(622,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,31),(623,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,143),(624,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,132),(625,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,104),(626,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,129),(627,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,142),(628,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,17),(629,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,48),(630,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,35),(631,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,159),(632,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,74),(633,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,36),(634,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,37),(635,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,29),(636,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,33),(637,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,92),(638,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,7),(639,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,127),(640,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,48),(641,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,57),(642,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,28),(643,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,24),(644,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,21),(645,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,43),(646,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,101),(647,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,50),(648,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,82),(649,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,110),(650,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,146),(651,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,56),(652,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,2),(653,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,71),(654,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,147),(655,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,27),(656,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,75),(657,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,110),(658,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,57),(659,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,146),(660,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,60),(661,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,142),(662,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,111),(663,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,61),(664,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,88),(665,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,102),(666,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,134),(667,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,89),(668,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,106),(669,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,156),(670,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,14),(671,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,87),(672,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,150),(673,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,4),(674,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,70),(675,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,68),(676,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,156),(677,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,70),(678,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,94),(679,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,23),(680,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,44),(681,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,2),(682,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,56),(683,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,72),(684,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,58),(685,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,129),(686,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,104),(687,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,14),(688,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,1,23),(689,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,21),(690,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,52),(691,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,42),(692,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,36),(693,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,76),(694,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,102),(695,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,44),(696,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,110),(697,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,35),(698,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,4,146),(699,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,24),(700,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,21),(701,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,83),(702,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,153),(703,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,5,71),(704,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,57),(705,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,39),(706,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,9,117),(707,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,120),(708,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,11),(709,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,153),(710,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,64),(711,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,3,144),(712,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,153),(713,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,159),(714,2,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,121),(715,3,NULL,1,'2023-08-10 23:40:15',NULL,NULL,2,77),(716,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,6,118),(717,4,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,6),(718,1,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,2),(719,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,7,130),(720,5,NULL,1,'2023-08-10 23:40:15',NULL,NULL,8,92),(721,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,105),(722,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,125),(723,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,70),(724,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,141),(725,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,70),(726,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,23),(727,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,93),(728,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,102),(729,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,25),(730,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,23),(731,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,47),(732,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,78),(733,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,159),(734,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,27),(735,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,88),(736,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,51),(737,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,85),(738,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,93),(739,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,10),(740,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,9),(741,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,83),(742,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,158),(743,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,103),(744,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,84),(745,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,114),(746,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,111),(747,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,42),(748,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,146),(749,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,137),(750,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,130),(751,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,73),(752,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,91),(753,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,31),(754,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,125),(755,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,159),(756,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,33),(757,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,53),(758,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,10),(759,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,152),(760,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,38),(761,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,26),(762,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,60),(763,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,55),(764,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,37),(765,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,38),(766,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,108),(767,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,45),(768,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,156),(769,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,9),(770,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,158),(771,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,28),(772,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,51),(773,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,99),(774,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,97),(775,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,123),(776,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,139),(777,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,121),(778,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,102),(779,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,94),(780,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,60),(781,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,131),(782,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,78),(783,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,117),(784,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,152),(785,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,157),(786,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,142),(787,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,49),(788,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,59),(789,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,16),(790,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,100),(791,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,60),(792,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,22),(793,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,78),(794,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,11),(795,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,50),(796,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,150),(797,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,104),(798,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,43),(799,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,4),(800,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,65),(801,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,116),(802,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,104),(803,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,89),(804,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,115),(805,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,45),(806,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,148),(807,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,21),(808,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,50),(809,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,26),(810,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,50),(811,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,54),(812,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,56),(813,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,96),(814,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,49),(815,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,43),(816,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,4),(817,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,130),(818,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,14),(819,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,130),(820,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,101),(821,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,32),(822,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,9),(823,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,135),(824,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,158),(825,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,143),(826,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,87),(827,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,36),(828,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,3),(829,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,28),(830,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,89),(831,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,65),(832,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,56),(833,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,153),(834,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,11),(835,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,54),(836,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,130),(837,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,136),(838,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,9),(839,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,22),(840,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,82),(841,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,11),(842,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,41),(843,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,113),(844,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,52),(845,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,155),(846,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,88),(847,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,68),(848,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,144),(849,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,93),(850,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,158),(851,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,30),(852,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,30),(853,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,150),(854,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,113),(855,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,11),(856,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,20),(857,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,157),(858,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,3),(859,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,105),(860,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,117),(861,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,72),(862,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,6),(863,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,86),(864,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,9),(865,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,88),(866,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,65),(867,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,75),(868,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,22),(869,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,77),(870,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,55),(871,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,29),(872,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,152),(873,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,155),(874,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,88),(875,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,124),(876,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,34),(877,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,141),(878,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,105),(879,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,90),(880,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,32),(881,1,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,72),(882,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,53),(883,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,42),(884,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,136),(885,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,2,101),(886,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,76),(887,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,1,107),(888,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,67),(889,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,60),(890,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,6,93),(891,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,45),(892,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,105),(893,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,5,153),(894,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,72),(895,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,7,153),(896,4,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,54),(897,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,8,22),(898,2,NULL,1,'2023-08-10 23:40:16',NULL,NULL,9,115),(899,5,NULL,1,'2023-08-10 23:40:16',NULL,NULL,3,104),(900,3,NULL,1,'2023-08-10 23:40:16',NULL,NULL,4,95);
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
    UPDATE tbb_sucursal SET ubicacion_sucursal_ID = NULL;
    UPDATE tbb_sucursal SET negocio_ID = NULL;
	UPDATE tbd_servicios_sucursal SET sucursal_ID =  NULL;
    UPDATE tbd_servicios_sucursal SET servicio_ID =  NULL;
	UPDATE tbd_valoracion SET usuario_ID =  NULL;
    UPDATE tbd_valoracion SET sucursal_ID =  NULL;
    UPDATE tbd_valoracion SET servicio_ID =  NULL;
    
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
    
    DELETE FROM tbb_sucursal;
    ALTER TABLE tbb_sucursal AUTO_INCREMENT = 1;
    
    DELETE FROM tbb_persona;
    ALTER TABLE tbb_persona AUTO_INCREMENT = 1;
    
    DELETE FROM tbd_servicios_sucursal;
    ALTER TABLE tbd_servicios_sucursal AUTO_INCREMENT = 1;
    
    DELETE FROM tbd_valoracion;
    ALTER TABLE tbd_valoracion AUTO_INCREMENT = 1;
    
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
	CALL spSetNegocios();
    CALL spSetPersonas(500);
    CALL spSetSucursales();
    CALL spSetServiciosSucursales(550);
    CALL spSetValoraciones(900);
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
/*!50003 DROP PROCEDURE IF EXISTS `spMkServicioSucursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spMkServicioSucursal`()
BEGIN
	DECLARE v_random INT DEFAULT fnNumeroAleatorioRangos(1,160);
    DECLARE v_random1 INT DEFAULT fnNumeroAleatorioRangos(1,9);
    
    INSERT INTO tbd_servicios_sucursal VALUES (DEFAULT, v_random, v_random1);
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
/*!50003 DROP PROCEDURE IF EXISTS `spMkValoracion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spMkValoracion`()
BEGIN
	DECLARE v_puntuacion INT DEFAULT fnNumeroAleatorioRangos(1,5);
    DECLARE v_servicio INT DEFAULT fnNumeroAleatorioRangos(1,9);
    DECLARE v_sucursal INT DEFAULT fnNumeroAleatorioRangos(1,160);
    
	INSERT INTO tbd_valoracion VALUES (DEFAULT, v_puntuacion, NULL, DEFAULT, DEFAULT, NULL, NULL, v_servicio, v_sucursal);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetNegocios`()
BEGIN
	#DECLARE v_nombreNegocio VARCHAR(50) DEFAULT fnNombreNegocioRandom();
    DECLARE v_categoriaId INT DEFAULT fnNumeroAleatorioRangos(1,6);
		#INSERT INTO tbb_negocio VALUES (DEFAULT, v_nombreNegocio, DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Gypsy Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Extasis", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Primera Edición", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Ambar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bartopia", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Mundo De Neón", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Lunula Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar One", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Noches Vip", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Crepúsculo", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Bates", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Búhos Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Sueños Y Coctéles", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Cosmo Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Damasco", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Dorado", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Brillo De Luna", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar La Capilla", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Júpiter", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Isla", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Barra B", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Fénix", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Parada", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Bombay", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Cóctel Dorado", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "AkBar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Acuario Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Costa Azul", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Turco Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Rojo", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Gitano", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Unión", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Sótano", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Tauro", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Rocco", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Bóveda Dorada", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Burbón", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Tribalistas Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Místico", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Barril Dorado", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Gran Bohemio", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El escondite Dorado", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Estelar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Borbón", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Vasper Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Las Brasas", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Venus", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Vieja Guardia", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Distrito Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Mandala Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Los Vikingos", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Pub De Londres", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Centeno Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Guarida", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bing Bang", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Niquel Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Tabula Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Distrito", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Barseco", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La República", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Solano Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Los Amigos", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Miramar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Serrano", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Titanic", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Santo Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Mis Birritas", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Orale Pues", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Última Y Ya Está", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Mis Súper Cuates", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Tequilas DF", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Rancho Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Sombrerón", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Azteca", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Portal Mexicano", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Tex Mex Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Taco Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Condesa", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Tequilera", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Gran Danzón", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Tequilazo", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Norteño", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Distrital", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Poblano", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Mi Cuate Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bendito México", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Mis Chelitas", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Compadre", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Mi México Lindo", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Conga", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Escarlata Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Templo De La Salsa", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Impero Salsero", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Ritmo Divino", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Astral", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Tiempo De Salsa", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Las Rosas", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Ritmo Y Son", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar La Sabrosura", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Divino Tumbao", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Loma Salsera", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bongos Dorados", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Son Divino", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Tropical Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Salsa Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Salsa Manía", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Taberna", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Piso 13", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Bodeguita", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Roxy Rocker", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Atomic Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Infinity Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Déjà Vu", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Nebula Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Ondas De Rock", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Rock Well", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Sagrada", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Cien Fuegos", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Alfa Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Onda Azul", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Vibras De Rock", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Raíces Rockeras", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Flama Dorada", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Roca Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar 360", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Espacio Rock", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Gravity", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Imperial", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Estación", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Element", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Místico Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Palmar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar La Azotea", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Luna Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Casablanca", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Residente", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Línea De Oro", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Salón Blue", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Paramount Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Terracota", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Tabú Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Avanti Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Nova Club", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar Azul", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar sensei", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Nivel Dorado", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Club Amigo", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Olimpus Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar El Victoriano", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Bar La Alameda", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Morenita Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Tiempo De Brisndis", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Vibras Doradas", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Barra Licores", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Astros Azules", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Llanero Solitario", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Cuatro Lunas", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "El Monarca", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "Paradise Bar", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
        INSERT INTO tbb_negocio VALUES (DEFAULT, "La Oficina", DEFAULT, DEFAULT, DEFAULT, v_categoriaId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetPersonas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetPersonas`(v_cuantos INT)
BEGIN
	DECLARE i INT DEFAULT 1;
		WHILE i<= v_cuantos DO
            CALL spMkPersona();
			SET i=i+1;
        END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetServiciosSucursales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetServiciosSucursales`(v_cuantos INT)
BEGIN
	DECLARE i INT DEFAULT 1;
		WHILE i<= v_cuantos DO
            CALL spMkServicioSucursal();
			SET i=i+1;
        END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spSetSucursales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetSucursales`()
BEGIN
	INSERT INTO tbb_sucursal VALUES (DEFAULT, "Gypsy Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Extasis", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Primera Edición", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Ambar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bartopia", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Mundo De Neón", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Lunula Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar One", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Noches Vip", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Crepúsculo", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Bates", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Búhos Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Sueños Y Coctéles", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Cosmo Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Damasco", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Dorado", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Brillo De Luna", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar La Capilla", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Júpiter", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Isla", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Barra B", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Fénix", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Parada", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Bombay", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Cóctel Dorado", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "AkBar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Acuario Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Costa Azul", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Turco Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Rojo", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Gitano", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Unión", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Sótano", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Tauro", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Rocco", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Bóveda Dorada", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Burbón", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Tribalistas Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Místico", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Barril Dorado", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Gran Bohemio", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El escondite Dorado", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Estelar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Borbón", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Vasper Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Las Brasas", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Venus", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Vieja Guardia", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Distrito Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Mandala Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Los Vikingos", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Pub De Londres", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Centeno Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Guarida", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bing Bang", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Niquel Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Tabula Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Distrito", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Barseco", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La República", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Solano Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Los Amigos", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Miramar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Serrano", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Titanic", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Santo Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Mis Birritas", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Orale Pues", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Última Y Ya Está", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Mis Súper Cuates", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Tequilas DF", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Rancho Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Sombrerón", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Azteca", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Portal Mexicano", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Tex Mex Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Taco Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Condesa", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Tequilera", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Gran Danzón", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Tequilazo", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Norteño", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Distrital", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Poblano", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Mi Cuate Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bendito México", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Mis Chelitas", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Compadre", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Mi México Lindo", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Conga", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Escarlata Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Templo De La Salsa", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Impero Salsero", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Ritmo Divino", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Astral", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Tiempo De Salsa", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Las Rosas", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Ritmo Y Son", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar La Sabrosura", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Divino Tumbao", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Loma Salsera", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bongos Dorados", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Son Divino", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Tropical Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Salsa Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Salsa Manía", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Taberna", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Piso 13", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Bodeguita", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Roxy Rocker", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Atomic Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Infinity Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Déjà Vu", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Nebula Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Ondas De Rock", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Rock Well", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Sagrada", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Cien Fuegos", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Alfa Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Onda Azul", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Vibras De Rock", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Raíces Rockeras", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Flama Dorada", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Roca Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar 360", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Espacio Rock", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Gravity", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Imperial", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Estación", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Element", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Místico Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Palmar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar La Azotea", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Luna Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Casablanca", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Residente", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Línea De Oro", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Salón Blue", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Paramount Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Terracota", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Tabú Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Avanti Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Nova Club", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar Azul", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar sensei", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Nivel Dorado", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Club Amigo", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Olimpus Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar El Victoriano", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Bar La Alameda", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Morenita Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Tiempo De Brisndis", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Vibras Doradas", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Barra Licores", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Astros Azules", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Llanero Solitario", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Cuatro Lunas", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "El Monarca", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "Paradise Bar", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
    INSERT INTO tbb_sucursal VALUES (DEFAULT, "La Oficina", NULL, DEFAULT, DEFAULT, DEFAULT, NULL, NULL);
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
/*!50003 DROP PROCEDURE IF EXISTS `spSetValoraciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spSetValoraciones`(v_cuantos INT)
BEGIN
	DECLARE i INT DEFAULT 1;
		WHILE i<= v_cuantos DO
            CALL spMkValoracion();
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

-- Dump completed on 2023-08-10 23:44:42
