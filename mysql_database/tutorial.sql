-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: tutorial
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ALUMNOS`
--

CREATE DATABASE tutorial;
USE tutorial;

DROP TABLE IF EXISTS `ALUMNOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALUMNOS` (
  `ID` int unsigned NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `F_NACIMIENTO` date NOT NULL,
  `ID_TUTOR` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_TUTOR` (`ID_TUTOR`),
  CONSTRAINT `ALUMNOS_ibfk_1` FOREIGN KEY (`ID_TUTOR`) REFERENCES `PROFESORES` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALUMNOS`
--

LOCK TABLES `ALUMNOS` WRITE;
/*!40000 ALTER TABLE `ALUMNOS` DISABLE KEYS */;
INSERT INTO `ALUMNOS` VALUES (1,'Pablo','Hernandaz Mata','1995-03-14',NULL),(2,'Jeremias','Santo Lote','1993-07-12',NULL),(3,'Teresa','Lomas Trillo','1989-06-19',NULL),(4,'Marta','Fuego García','1992-11-02',NULL),(5,'Sergio','Ot Dirmet','1991-04-21',NULL),(6,'Carmen','Dilma Perna','1987-12-04',NULL);
/*!40000 ALTER TABLE `ALUMNOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ALUMNOS_CURSOS`
--

DROP TABLE IF EXISTS `ALUMNOS_CURSOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALUMNOS_CURSOS` (
  `ID_ALUMNO` int unsigned NOT NULL,
  `ID_CURSO` int unsigned NOT NULL,
  PRIMARY KEY (`ID_ALUMNO`,`ID_CURSO`),
  KEY `ID_CURSO` (`ID_CURSO`),
  CONSTRAINT `ALUMNOS_CURSOS_ibfk_1` FOREIGN KEY (`ID_ALUMNO`) REFERENCES `ALUMNOS` (`ID`),
  CONSTRAINT `ALUMNOS_CURSOS_ibfk_2` FOREIGN KEY (`ID_CURSO`) REFERENCES `CURSOS` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALUMNOS_CURSOS`
--

LOCK TABLES `ALUMNOS_CURSOS` WRITE;
/*!40000 ALTER TABLE `ALUMNOS_CURSOS` DISABLE KEYS */;
INSERT INTO `ALUMNOS_CURSOS` VALUES (1,1),(3,1),(5,1),(4,2),(1,3),(5,3),(2,4);
/*!40000 ALTER TABLE `ALUMNOS_CURSOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAMISAS`
--

DROP TABLE IF EXISTS `CAMISAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CAMISAS` (
  `ID` int NOT NULL,
  `CAMISA` varchar(40) NOT NULL,
  `PESO_GR` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAMISAS`
--

LOCK TABLES `CAMISAS` WRITE;
/*!40000 ALTER TABLE `CAMISAS` DISABLE KEYS */;
INSERT INTO `CAMISAS` VALUES (1,'lino blanca',210),(2,'algodon naranja',290),(3,'seda negra',260);
/*!40000 ALTER TABLE `CAMISAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CURSOS`
--

DROP TABLE IF EXISTS `CURSOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CURSOS` (
  `ID` int unsigned NOT NULL,
  `TITULO` varchar(50) NOT NULL,
  `ID_PROFE` int unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_PROFE` (`ID_PROFE`),
  CONSTRAINT `CURSOS_ibfk_1` FOREIGN KEY (`ID_PROFE`) REFERENCES `PROFESORES` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CURSOS`
--

LOCK TABLES `CURSOS` WRITE;
/*!40000 ALTER TABLE `CURSOS` DISABLE KEYS */;
INSERT INTO `CURSOS` VALUES (1,'Programación PHP',3),(2,'Modelos abstracto de datos',3),(3,'SQL desde cero',1),(4,'Dibujo técnico',2),(5,'SQL avanzado',NULL);
/*!40000 ALTER TABLE `CURSOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLEADOS`
--

DROP TABLE IF EXISTS `EMPLEADOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLEADOS` (
  `ID` int unsigned NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `F_NACIMIENTO` date NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `CARGO` varchar(30) NOT NULL,
  `SALARIO` float unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLEADOS`
--

LOCK TABLES `EMPLEADOS` WRITE;
/*!40000 ALTER TABLE `EMPLEADOS` DISABLE KEYS */;
INSERT INTO `EMPLEADOS` VALUES (1,'Carlos','Jiménez Clarín','1985-05-03','H','Mozo',1500),(2,'Elena','Rubio Cuestas','1978-09-25','M','Secretaria',1300),(3,'José','Calvo Sisman','1990-11-12','H','Mozo',1400),(4,'Margarita','Rodríguez Garcés','1992-05-16','M','Secretaria',1325.5);
/*!40000 ALTER TABLE `EMPLEADOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MASCOTAS`
--

DROP TABLE IF EXISTS `MASCOTAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MASCOTAS` (
  `ID` int NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `ESPECIE` varchar(1) NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `UBICACION` varchar(6) NOT NULL,
  `ESTADO` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MASCOTAS`
--

LOCK TABLES `MASCOTAS` WRITE;
/*!40000 ALTER TABLE `MASCOTAS` DISABLE KEYS */;
INSERT INTO `MASCOTAS` VALUES (1,'Budy','P','M','E05','B'),(2,'Pipo','P','M','E02','B'),(3,'Nuna','P','H','E02','A'),(4,'Bruts','P','M','E03','A'),(5,'Americo','G','M','E04','A'),(6,'Sombra','P','H','E05','A'),(7,'Amaya','G','H','E04','A'),(8,'Talia','G','H','E01','B'),(9,'Trabis','P','M','E02','A'),(10,'Tesa','G','H','E01','A'),(11,'Titito','G','M','E04','B'),(12,'Truca','P','H','E02','A'),(13,'Zulay','P','H','E05','A'),(14,'Dandi','G','M','E04','A'),(15,'Ras','G','M','E01','A'),(16,'Canela','P','H','E02','A');
/*!40000 ALTER TABLE `MASCOTAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MUDAS`
--

DROP TABLE IF EXISTS `MUDAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MUDAS` (
  `ID_CAMISA` int NOT NULL,
  `ID_pantALON` int NOT NULL,
  KEY `ID_CAMISA` (`ID_CAMISA`),
  KEY `ID_pantALON` (`ID_pantALON`),
  CONSTRAINT `MUDAS_ibfk_1` FOREIGN KEY (`ID_CAMISA`) REFERENCES `CAMISAS` (`ID`),
  CONSTRAINT `MUDAS_ibfk_2` FOREIGN KEY (`ID_pantALON`) REFERENCES `PANTALONES` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MUDAS`
--

LOCK TABLES `MUDAS` WRITE;
/*!40000 ALTER TABLE `MUDAS` DISABLE KEYS */;
INSERT INTO `MUDAS` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(3,2);
/*!40000 ALTER TABLE `MUDAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PANTALONES`
--

DROP TABLE IF EXISTS `PANTALONES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PANTALONES` (
  `ID` int NOT NULL,
  `PANTALON` varchar(40) NOT NULL,
  `PESO_GR` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PANTALONES`
--

LOCK TABLES `PANTALONES` WRITE;
/*!40000 ALTER TABLE `PANTALONES` DISABLE KEYS */;
INSERT INTO `PANTALONES` VALUES (1,'tela azul marino',470),(2,'pana marron claro',730);
/*!40000 ALTER TABLE `PANTALONES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSONAS`
--

DROP TABLE IF EXISTS `PERSONAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONAS` (
  `ID` int NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `RUBIA` varchar(1) NOT NULL,
  `ALTA` varchar(1) NOT NULL,
  `GAFAS` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSONAS`
--

LOCK TABLES `PERSONAS` WRITE;
/*!40000 ALTER TABLE `PERSONAS` DISABLE KEYS */;
INSERT INTO `PERSONAS` VALUES (1,'Manuel','S','S','N'),(2,'Maria','N','N','S'),(3,'Carmen','S','N','S'),(4,'José','S','S','S'),(5,'Pedro','N','S','N');
/*!40000 ALTER TABLE `PERSONAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROFESORES`
--

DROP TABLE IF EXISTS `PROFESORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROFESORES` (
  `ID` int unsigned NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `APELLIDOS` varchar(50) NOT NULL,
  `F_NACIMIENTO` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROFESORES`
--

LOCK TABLES `PROFESORES` WRITE;
/*!40000 ALTER TABLE `PROFESORES` DISABLE KEYS */;
INSERT INTO `PROFESORES` VALUES (1,'Federico','Gasco Daza','1975-04-23'),(2,'Ana','Saura Trenzo','1969-08-02'),(3,'Rosa','Honrosa Pérez','1980-09-05');
/*!40000 ALTER TABLE `PROFESORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VEHICULOS`
--

DROP TABLE IF EXISTS `VEHICULOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VEHICULOS` (
  `ID` int NOT NULL,
  `MARCA` varchar(30) NOT NULL,
  `MODELO` varchar(30) NOT NULL,
  `PROX_ITV` date NOT NULL,
  `ULTI_ITV` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VEHICULOS`
--

LOCK TABLES `VEHICULOS` WRITE;
/*!40000 ALTER TABLE `VEHICULOS` DISABLE KEYS */;
INSERT INTO `VEHICULOS` VALUES (1,'Alfa Romeo','Brera','2011-10-20',NULL),(2,'Seat','Panda','2009-12-01','2008-12-01'),(3,'BMW','X3','2010-07-18',NULL),(4,'Citroën','C2','2010-08-24','2009-08-24'),(5,'Ford','Fiesta','2011-04-22',NULL);
/*!40000 ALTER TABLE `VEHICULOS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18  9:53:38
