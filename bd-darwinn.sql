-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2026 a las 21:27:08
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd-darwinn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion`
--

CREATE TABLE `accion` (
  `ID_ACCION` int(11) NOT NULL,
  `NOMBRE_ABREVIADO` varchar(50) DEFAULT NULL,
  `NOMBRE_ACCION` varchar(50) DEFAULT NULL,
  `CODIGO_A_E` varchar(50) DEFAULT NULL,
  `CODIGO_P_ACCION` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accion`
--

INSERT INTO `accion` (`ID_ACCION`, `NOMBRE_ABREVIADO`, `NOMBRE_ACCION`, `CODIGO_A_E`, `CODIGO_P_ACCION`) VALUES
(1, 'RM', 'Rama', '55522', 12200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion_especifica`
--

CREATE TABLE `accion_especifica` (
  `ID_AE` int(11) NOT NULL,
  `NOMBRE_ABREVIADO` varchar(50) NOT NULL DEFAULT '0',
  `ACCION_ESPECIFICA` varchar(50) NOT NULL DEFAULT '0',
  `CODIGO_A_E` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accion_especifica`
--

INSERT INTO `accion_especifica` (`ID_AE`, `NOMBRE_ABREVIADO`, `ACCION_ESPECIFICA`, `CODIGO_A_E`) VALUES
(1, 'Tares', 'Maqutea', '1122');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `ID_ACTIVIDAD` int(11) NOT NULL,
  `NOMBRE_ACTIVIDAD` varchar(50) NOT NULL DEFAULT '0',
  `CODIGO_ACTIVIDAD` varchar(50) NOT NULL DEFAULT '0',
  `ID_TA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_registro`
--

CREATE TABLE `detalle_registro` (
  `ID_REGISTRO` int(11) NOT NULL,
  `ID_ACCION` int(11) DEFAULT 0,
  `ID_AE` int(11) DEFAULT 0,
  `ID_SA` int(11) DEFAULT 0,
  `ID_TA` int(11) DEFAULT 0,
  `id_tt` int(11) DEFAULT 0,
  `id_zd` int(11) DEFAULT 0,
  `id_zp` int(11) DEFAULT 0,
  `ID_ACTIVIDAD` int(11) DEFAULT NULL,
  `NUM_SUPERVISORES` varchar(50) DEFAULT NULL,
  `EMPRESA_SUPERVISORA` varchar(50) DEFAULT NULL,
  `CALIDAD_ENTREGABLE` varchar(50) DEFAULT NULL,
  `NRO_EXPEDIENTE` varchar(50) DEFAULT NULL,
  `CARTA_LINEA` varchar(50) DEFAULT NULL,
  `OBSERVACIONES` varchar(50) DEFAULT NULL,
  `CONTRATO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_registro`
--

INSERT INTO `detalle_registro` (`ID_REGISTRO`, `ID_ACCION`, `ID_AE`, `ID_SA`, `ID_TA`, `id_tt`, `id_zd`, `id_zp`, `ID_ACTIVIDAD`, `NUM_SUPERVISORES`, `EMPRESA_SUPERVISORA`, `CALIDAD_ENTREGABLE`, `NRO_EXPEDIENTE`, `CARTA_LINEA`, `OBSERVACIONES`, `CONTRATO`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subaccion`
--

CREATE TABLE `subaccion` (
  `ID_SA` int(11) NOT NULL,
  `NOMBRE_ABREVIADO` varchar(50) NOT NULL DEFAULT '0',
  `SUB_ACCION_ESP` varchar(50) NOT NULL DEFAULT '0',
  `CONCAT` varchar(50) NOT NULL DEFAULT '0',
  `CODIGO_S_A_E` varchar(50) NOT NULL DEFAULT '0',
  `ID_AE` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_agente`
--

CREATE TABLE `tipo_agente` (
  `ID_TA` int(11) NOT NULL DEFAULT 0,
  `NOMBRE_TA` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_transporte`
--

CREATE TABLE `tipo_transporte` (
  `id_tt` int(11) NOT NULL,
  `NOMBRE_TRANSPORTE` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_transporte`
--

INSERT INTO `tipo_transporte` (`id_tt`, `NOMBRE_TRANSPORTE`) VALUES
(3, 'turismo'),
(5, 'Central'),
(7, 'San Luis');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre_completo` varchar(100) DEFAULT NULL,
  `rol` enum('admin','consultor') DEFAULT 'admin',
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `nombre_completo`, `rol`, `fecha_creacion`) VALUES
(1, 'admin', '$2b$10$Vjbh2UJBt2g1ZmMOSDBc7OKIJqMcKa80jwMuCu9eOo6/OToMNrYXC', 'Administrador Darwin', 'admin', '2026-05-04 16:13:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_distrito`
--

CREATE TABLE `zona_distrito` (
  `id_zd` int(11) NOT NULL,
  `NOMBRE_DISTRITO` varchar(50) DEFAULT NULL,
  `id_zp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zona_distrito`
--

INSERT INTO `zona_distrito` (`id_zd`, `NOMBRE_DISTRITO`, `id_zp`) VALUES
(1, 'Huanuco', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_provincia`
--

CREATE TABLE `zona_provincia` (
  `id_zp` int(11) NOT NULL,
  `NOMBRE_PROVINCIA` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zona_provincia`
--

INSERT INTO `zona_provincia` (`id_zp`, `NOMBRE_PROVINCIA`) VALUES
(1, 'Huanucp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accion`
--
ALTER TABLE `accion`
  ADD PRIMARY KEY (`ID_ACCION`);

--
-- Indices de la tabla `accion_especifica`
--
ALTER TABLE `accion_especifica`
  ADD PRIMARY KEY (`ID_AE`);

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`ID_ACTIVIDAD`);

--
-- Indices de la tabla `detalle_registro`
--
ALTER TABLE `detalle_registro`
  ADD PRIMARY KEY (`ID_REGISTRO`);

--
-- Indices de la tabla `subaccion`
--
ALTER TABLE `subaccion`
  ADD PRIMARY KEY (`ID_SA`);

--
-- Indices de la tabla `tipo_agente`
--
ALTER TABLE `tipo_agente`
  ADD PRIMARY KEY (`ID_TA`);

--
-- Indices de la tabla `tipo_transporte`
--
ALTER TABLE `tipo_transporte`
  ADD PRIMARY KEY (`id_tt`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `zona_distrito`
--
ALTER TABLE `zona_distrito`
  ADD PRIMARY KEY (`id_zd`);

--
-- Indices de la tabla `zona_provincia`
--
ALTER TABLE `zona_provincia`
  ADD PRIMARY KEY (`id_zp`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accion`
--
ALTER TABLE `accion`
  MODIFY `ID_ACCION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `accion_especifica`
--
ALTER TABLE `accion_especifica`
  MODIFY `ID_AE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `ID_ACTIVIDAD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_registro`
--
ALTER TABLE `detalle_registro`
  MODIFY `ID_REGISTRO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subaccion`
--
ALTER TABLE `subaccion`
  MODIFY `ID_SA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_transporte`
--
ALTER TABLE `tipo_transporte`
  MODIFY `id_tt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `zona_distrito`
--
ALTER TABLE `zona_distrito`
  MODIFY `id_zd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `zona_provincia`
--
ALTER TABLE `zona_provincia`
  MODIFY `id_zp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
