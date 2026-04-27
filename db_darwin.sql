-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.4.3 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_darwin
CREATE DATABASE IF NOT EXISTS `db_darwin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_darwin`;

-- Volcando estructura para tabla db_darwin.accion
CREATE TABLE IF NOT EXISTS `accion` (
  `ID_ACCION` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_ABREVIADO` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NOMBRE_ACCION` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CODIGO_A_E` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CODIGO_P_ACCION` int DEFAULT NULL,
  PRIMARY KEY (`ID_ACCION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_darwin.accion_especifica
CREATE TABLE IF NOT EXISTS `accion_especifica` (
  `ID_AE` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_ABREVIADO` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `ACCION_ESPECIFICA` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `CODIGO_A_E` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_AE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_darwin.actividad
CREATE TABLE IF NOT EXISTS `actividad` (
  `ID_ACTIVIDAD` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_ACTIVIDAD` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `CODIGO_ACTIVIDAD` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `ID_TA` int DEFAULT NULL,
  PRIMARY KEY (`ID_ACTIVIDAD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_darwin.detalle_registro
CREATE TABLE IF NOT EXISTS `detalle_registro` (
  `ID_REGISTRO` int NOT NULL AUTO_INCREMENT,
  `ID_ACCION` int DEFAULT '0',
  `ID_AE` int DEFAULT '0',
  `ID_SA` int DEFAULT '0',
  `ID_TA` int DEFAULT '0',
  `id_tt` int DEFAULT '0',
  `id_zd` int DEFAULT '0',
  `id_zp` int DEFAULT '0',
  `ID_ACTIVIDAD` int DEFAULT NULL,
  `NUM_SUPERVISORES` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `EMPRESA_SUPERVISORA` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CALIDAD_ENTREGABLE` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NRO_EXPEDIENTE` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CARTA_LINEA` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `OBSERVACIONES` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CONTRATO` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_REGISTRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_darwin.subaccion
CREATE TABLE IF NOT EXISTS `subaccion` (
  `ID_SA` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_ABREVIADO` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `SUB_ACCION_ESP` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `CONCAT` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `CODIGO_S_A_E` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `ID_AE` int NOT NULL DEFAULT (0),
  PRIMARY KEY (`ID_SA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_darwin.tipo_agente
CREATE TABLE IF NOT EXISTS `tipo_agente` (
  `ID_TA` int NOT NULL DEFAULT (0),
  `NOMBRE_TA` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_TA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_darwin.tipo_transporte
CREATE TABLE IF NOT EXISTS `tipo_transporte` (
  `id_tt` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_TRANSPORTE` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_darwin.zona_distrito
CREATE TABLE IF NOT EXISTS `zona_distrito` (
  `id_zd` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_DISTRITO` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_zp` int DEFAULT NULL,
  PRIMARY KEY (`id_zd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla db_darwin.zona_provincia
CREATE TABLE IF NOT EXISTS `zona_provincia` (
  `id_zp` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_PROVINCIA` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
