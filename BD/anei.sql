-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2022 a las 07:14:04
-- Versión del servidor: 8.0.26
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `anei`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisisfisico`
--

CREATE TABLE `analisisfisico` (
  `codigo_analisisfisico` varchar(40) NOT NULL,
  `fecha_analisisfisico` date NOT NULL,
  `almendra_total` float(10,1) NOT NULL,
  `almendra_sana` float(10,1) NOT NULL,
  `broca` float(10,1) NOT NULL,
  `broca_punto` float(10,1) NOT NULL,
  `negro` float(10,1) NOT NULL,
  `vinagre` float(10,1) NOT NULL,
  `humedad` float(10,1) NOT NULL,
  `factor` float(10,1) NOT NULL,
  `observaciones_analisisfisico` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `analisisfisico`
--

INSERT INTO `analisisfisico` (`codigo_analisisfisico`, `fecha_analisisfisico`, `almendra_total`, `almendra_sana`, `broca`, `broca_punto`, `negro`, `vinagre`, `humedad`, `factor`, `observaciones_analisisfisico`) VALUES
('34324', '2022-07-20', 4343.0, 434.0, 1.0, 1.0, 1.0, 1.0, 0.0, 434.0, 'ewew'),
('34324', '2022-07-20', 0.0, 0.0, 1.0, 1.0, 2.0, 1.0, 0.0, 0.0, ''),
('', '2022-07-20', 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, ''),
('34324', '2022-07-21', 200.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 87.5, ''),
('45', '2022-07-21', 200.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 87.5, ''),
('50', '2022-07-21', 220.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 79.5, ''),
('34324', '2022-07-22', 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, ''),
('34324', '2022-07-22', 3.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, ''),
('50', '2022-07-22', 4.0, 5.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, ''),
('45', '2022-07-22', 2.0, 2.0, 2.0, 2.0, 0.0, 0.0, 0.0, 0.0, ''),
('50', '2022-07-22', 3.0, 4.0, 4.0, 4.0, 4.0, 3.0, 0.0, 0.0, ''),
('9', '2022-07-22', 200.0, 3.0, 3.0, 3.0, 3.0, 3.0, 0.0, 87.5, ''),
('34324', '2022-07-22', 90.0, 9.0, 10.0, 11.0, 14.0, 12.0, 0.0, 194.4, 'xd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisissensorial`
--

CREATE TABLE `analisissensorial` (
  `codigo_sensorial` varchar(40) NOT NULL,
  `fecha_sensorial` date NOT NULL,
  `puntaje_scaa` float(10,1) NOT NULL,
  `acidez` varchar(40) NOT NULL,
  `notas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `analisissensorial`
--

INSERT INTO `analisissensorial` (`codigo_sensorial`, `fecha_sensorial`, `puntaje_scaa`, `acidez`, `notas`) VALUES
('4343', '2022-07-20', 4.0, '4234', '324d'),
('', '2022-07-20', 0.0, '', ''),
('', '2022-07-21', 0.0, '', ''),
('23', '2022-07-21', 2.0, '232', 'fgfj'),
('65', '2022-07-21', 1.0, 'cx', 'cxc'),
('2', '2022-07-21', 2.0, '2', '2'),
('3', '2022-07-21', 3.0, '3', '3'),
('4', '2022-07-21', 4.0, '4', '4'),
('9', '2022-07-22', 16.0, '2', 'xd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asociados`
--

CREATE TABLE `asociados` (
  `nombre_usuario` varchar(40) NOT NULL,
  `municipio` varchar(40) NOT NULL,
  `vereda` varchar(40) NOT NULL,
  `finca` varchar(40) NOT NULL,
  `fecha_registro` date NOT NULL,
  `cedula_usuario` bigint NOT NULL,
  `numero_up` bigint NOT NULL,
  `codigo_up` varchar(40) NOT NULL,
  `estatus` varchar(40) NOT NULL,
  `contacto` bigint NOT NULL,
  `cupo_bcs` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `asociados`
--

INSERT INTO `asociados` (`nombre_usuario`, `municipio`, `vereda`, `finca`, `fecha_registro`, `cedula_usuario`, `numero_up`, `codigo_up`, `estatus`, `contacto`, `cupo_bcs`) VALUES
('juan', '', '', '', '0000-00-00', 0, 0, '', '', 0, 0),
('juan', '', '', '', '0000-00-00', 0, 0, '', '', 0, 0),
('juan', 'valledupar', 'ceiva', 'el paraiso', '0000-00-00', 0, 0, '', '', 0, 0),
('', '', '', '', '0000-00-00', 0, 0, '', '', 0, 0),
('juan', 'valledupar', 'ceiva', 'el paraiso', '0000-00-00', 0, 0, '', '', 0, 0),
('', '', '', '', '0000-00-00', 0, 0, '', '', 0, 0),
('juan', 'valledupar', 'ceiva', 'el paraiso', '0000-00-00', 0, 0, '', '', 0, 0),
('', '', '', '', '2022-07-19', 0, 0, '', '', 0, 0),
('', '', '', '', '2022-07-19', 77, 0, '', '', 0, 0),
('juan', '', '', '', '2022-07-19', 3, 3, '', '', 0, 0),
('', '', '', '', '2022-07-19', 6567, 1, '', '', 0, 0),
('juan', '232', '23', '123', '2022-07-19', 232, 232, '3213', '', 0, 0),
('juan', '5345', '545', '454', '2022-07-19', 4543, 5345, '43543', '5435', 0, 0),
('juan', '3243', '343', '4234', '2022-07-19', 2434, 434, '343', '324', 434, 0),
('juan', '34', '343', '234', '2022-07-19', 43, 42343, '234', '324', 343, 0),
('34234', '343', '324', '43243', '2022-07-19', 434, 4324, '343', '43243', 4343, 0),
('juan', '34', '324', '4324', '2022-07-19', 434, 4324, '434', '4324', 434, 4324),
('juan', '34', '324', '234', '2022-07-19', 343, 4324, '324', '4234', 43, 23432),
('carlos', '232', 'ceiva', '123', '2022-07-22', 1, 1, 'xv5g', 'mejor', 1, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `cedula` bigint NOT NULL,
  `producto` varchar(40) NOT NULL,
  `unidad` varchar(10) NOT NULL,
  `marca` varchar(10) NOT NULL,
  `numero_estopas` bigint NOT NULL,
  `estado_estopas` varchar(40) NOT NULL,
  `numero_sacos` bigint NOT NULL,
  `estado_sacos` varchar(40) NOT NULL,
  `observaciones` varchar(40) NOT NULL,
  `fecha_compra` date NOT NULL,
  `kilos_brutos` float(10,1) NOT NULL,
  `kilos_netos` float(10,1) NOT NULL,
  `municipio_compra` varchar(40) NOT NULL,
  `tipo_grano` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`cedula`, `producto`, `unidad`, `marca`, `numero_estopas`, `estado_estopas`, `numero_sacos`, `estado_sacos`, `observaciones`, `fecha_compra`, `kilos_brutos`, `kilos_netos`, `municipio_compra`, `tipo_grano`) VALUES
(1111, '', '', '', 0, '', 0, '', '', '0000-00-00', 0.0, 0.0, '', ''),
(222, 'lata', '', '', 0, '', 0, '', '', '0000-00-00', 0.0, 0.0, '', ''),
(1, 'cafe', '', '', 0, '', 0, '', '', '0000-00-00', 0.0, 0.0, '', ''),
(2, 'cafe', '', '', 0, '', 0, '', '', '0000-00-00', 0.0, 0.0, '', ''),
(3, 'cacao', 'kilo', '', 0, '', 0, '', '', '0000-00-00', 0.0, 0.0, '', ''),
(8930847, 'cacao', 'lata', '4', 0, '', 0, '', '', '0000-00-00', 0.0, 0.0, '', ''),
(1111, 'cafe', 'kilo', '100005', 3, 'Cesar', 0, '', '', '0000-00-00', 0.0, 0.0, '', ''),
(222, 'cafe', 'kilo', '200001', 2, 'CESAR', 3, 'buenos', 'bien', '2022-07-16', 0.0, 0.0, '', ''),
(1111, 'cafe', 'kilo', '100005', 1, 'Cesar', 1, 'Cesar', 'hjkh875', '2022-07-16', 234.0, 65674.0, '', ''),
(1111, 'cafe', 'kilo', '100005', 0, 'Cesar', 0, '', '', '2022-07-16', 0.0, 0.0, '', ''),
(1111, 'cafe', 'kilo', '100005', 2, 'Cesar', 2, 'Cesar', 'gggg', '2022-07-17', 234.0, 65674.0, '', ''),
(583, 'cacao', 'lata', 'xf7', 4, 'bi', 3, 'bi', 'nkj', '2022-07-17', 8374.0, 564.0, '', ''),
(923843745658, 'cafe', 'kilo', '', 0, '', 0, '', '', '2022-07-17', 0.0, 0.0, '', ''),
(8, 'cafe', 'kilo', '45', 2, 'ggg', 2, 'bvb', '787', '2022-07-21', 200.0, 195.0, '', ''),
(1111, 'cafe', 'kilo', '658', 2, '8768', 2, '768', '6787', '2022-07-21', 234.0, 564.0, '', ''),
(222, 'cafe', 'kilo', '', 0, '', 0, '', '', '2022-07-21', 0.0, 0.0, '', ''),
(1111, 'cafe', 'kilo', '', 0, '', 0, '', '', '2022-07-21', 0.0, 0.0, '', ''),
(1111, 'cafe', 'kilo', '', 0, '', 0, '', '', '2022-07-21', 0.0, 0.0, '', ''),
(1111, 'cafe', 'kilo', '100005', 0, 'Cesar', 2, 'Cesar', 'gkgfk', '2022-07-21', 234.0, 65674.0, '', ''),
(1111, 'cacao', 'lata', '100005', 3, 'Cesar', 3, 'Cesar', 'fdgfg', '2022-07-21', 234.0, 65674.0, '', ''),
(1111, 'cafe', 'kilo', '', 0, '', 0, '', '', '2022-07-21', 0.0, 0.0, '', ''),
(1111, 'cafe', 'kilo', '100005', 2, 'Cesar', 1, 'Cesar', 'ghf', '2022-07-21', 1.0, 3.0, 'Pueblo Bello', ''),
(1111, 'cafe', 'kilo', '', 0, '', 0, '', '', '2022-07-21', 0.0, 0.0, 'codazzi', ''),
(8, 'cafe', 'kilo', '45', 3, 'bn', 3, 'bn', 'bn', '2022-07-21', 3.0, 12.0, 'Valledupar', ''),
(55, 'cafe', 'kilo', '50', 2, 'bn', 2, 'bn', 'bn', '2022-07-22', 30.0, 28.0, 'Pueblo Bello', ''),
(2, 'cafe', 'kilo', '', 0, '', 0, '', '', '2022-07-22', 0.0, 0.0, 'codazzi', ''),
(2, 'cafe', 'kilo', '', 0, '', 0, '', '', '2022-07-22', 0.0, 0.0, 'codazzi', ''),
(222, 'cafe', 'kilo', '', 0, '', 0, '', '', '2022-07-22', 0.0, 0.0, 'codazzi', ''),
(0, '', '', '', 0, '', 0, '', '', '0000-00-00', 0.0, 0.0, 'codazzi', ''),
(0, '', '', '', 0, '', 0, '', '', '0000-00-00', 0.0, 0.0, '', 'Pueblo Bello'),
(1, 'Cafe pergamino seco', 'kilo', '9', 0, '', 0, '', '', '2022-07-22', 0.0, 3.0, 'codazzi', 'organico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liquidacion`
--

CREATE TABLE `liquidacion` (
  `codigo_liquidacion` varchar(40) NOT NULL,
  `precio_dia` float(10,1) NOT NULL,
  `valor_calidad` float(10,1) NOT NULL,
  `bonificacion` float(10,1) NOT NULL,
  `prima` float(10,1) NOT NULL,
  `precio_final` float(10,1) NOT NULL,
  `total_liquidacion` float(10,1) NOT NULL,
  `fecha_liquidacion` date NOT NULL,
  `hora_liquidacion` time NOT NULL,
  `politica` varchar(40) NOT NULL,
  `observaciones_liquidacion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `liquidacion`
--

INSERT INTO `liquidacion` (`codigo_liquidacion`, `precio_dia`, `valor_calidad`, `bonificacion`, `prima`, `precio_final`, `total_liquidacion`, `fecha_liquidacion`, `hora_liquidacion`, `politica`, `observaciones_liquidacion`) VALUES
('45', 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '2022-07-21', '17:01:00', '', ''),
('50', 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '2022-07-21', '17:01:00', '', ''),
('45', 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, '2022-07-21', '18:01:00', '', ''),
('45', 20000.0, 0.0, 0.0, 0.0, 0.0, 0.0, '2022-07-21', '18:01:00', '', ''),
('45', 20000.0, 21211.4, 0.0, 0.0, 0.0, 0.0, '2022-07-21', '18:01:00', '', ''),
('45', 20000.0, 21211.4, 1000.0, 0.0, 0.0, 0.0, '2022-07-21', '18:01:00', '', ''),
('45', 20000.0, 21211.4, 345.0, 1500.0, 0.0, 0.0, '2022-07-21', '18:01:00', '', ''),
('45', 20000.0, 21211.4, 345.0, 1500.0, 23056.4, 0.0, '2022-07-21', '18:01:00', '', ''),
('45', 20000.0, 21211.4, 220.0, 1500.0, 22931.4, 4179128.5, '2022-07-21', '20:01:00', '', ''),
('45', 20000.0, 21211.4, 200.0, 1500.0, 22911.4, 4467728.5, '2022-07-21', '20:01:00', '', ''),
('50', 20000.0, 23345.9, 200.0, 1500.0, 25045.9, 701285.5, '2022-07-22', '14:01:00', '', ''),
('50', 20000.0, 23345.9, 200.0, 1500.0, 25045.9, 701285.5, '2022-07-22', '14:01:00', '', ''),
('50', 20000.0, 23345.9, 200.0, 1500.0, 25045.9, 701285.5, '2022-07-22', '14:01:00', '', ''),
('50', 20000.0, 23345.9, 200.0, 1500.0, 25045.9, 701285.5, '2022-07-22', '15:01:00', '', ''),
('50', 20000.0, 23345.9, 300.0, 1500.0, 25145.9, 704085.5, '2022-07-22', '15:01:00', 'politica 1', ''),
('50', 20000.0, 23345.9, 150.0, 1500.0, 24995.9, 699885.5, '2022-07-22', '15:01:00', 'politica 1', ''),
('50', 20000.0, 23345.9, 100.0, 1500.0, 24945.9, 698485.5, '2022-07-22', '16:01:00', 'politica1', ''),
('50', 20000.0, 23345.9, 2.0, 1500.0, 24847.9, 695741.5, '2022-07-22', '16:01:00', 'politica1', ''),
('50', 20000.0, 23345.9, 3.0, 1500.0, 24848.9, 695769.5, '2022-07-22', '16:01:00', 'politica1', ''),
('50', 20000.0, 23345.9, 2.0, 1500.0, 24847.9, 695741.5, '2022-07-22', '16:01:00', 'politica1', ''),
('50', 20000.0, 23345.9, 5.0, 1500.0, 24850.9, 695825.5, '2022-07-22', '16:01:00', 'politica1', ''),
('50', 20000.0, 0.0, 1.0, 1500.0, 20001.0, 560028.0, '2022-07-22', '16:01:00', 'politica2', ''),
('50', 20000.0, 0.0, 3.0, 1500.0, 20003.0, 560084.0, '2022-07-22', '06:01:36', 'politica2', ''),
('50', 20000.0, 0.0, 2.0, 1500.0, 20002.0, 560056.0, '2022-07-22', '06:10:39', 'politica2', ''),
('50', 20000.0, 23345.9, 2.0, 1500.0, 24847.9, 695741.5, '2022-07-22', '12:27:42', 'politica1', ''),
('50', 20000.0, 0.0, 3.0, 1500.0, 20003.0, 560084.0, '2022-07-22', '07:34:19', 'politica2', 'xs'),
('50', 20000.0, 0.0, 3.0, 1500.0, 20003.0, 560084.0, '2022-07-22', '07:40:40', 'politica2', 'xd'),
('50', 20000.0, 23345.9, 2.0, 1500.0, 24847.9, 695741.5, '2022-07-22', '12:41:13', 'politica1', 'xd'),
('50', 20000.0, 23345.9, 1.0, 1500.0, 24846.9, 695713.5, '2022-07-22', '12:50:07', 'politica1', ''),
('50', 20000.0, 23345.9, 3.0, 1500.0, 24848.9, 695769.5, '2022-07-22', '12:50:32', 'politica1', ''),
('50', 20000.0, 0.0, 3.0, 1500.0, 20003.0, 560084.0, '2022-07-22', '07:52:50', 'politica2', ''),
('50', 20000.0, 0.0, 2.0, 1500.0, 20002.0, 560056.0, '2022-07-22', '07:56:09', 'politica2', ''),
('50', 20000.0, 23345.9, 3.0, 1500.0, 24848.9, 695769.5, '2022-07-22', '12:59:49', 'politica1', ''),
('50', 20000.0, 0.0, 2.0, 1500.0, 20002.0, 560056.0, '2022-07-22', '01:02:36', 'politica2', ''),
('50', 20000.0, 23345.9, 3.0, 1500.0, 24848.9, 695769.5, '2022-07-22', '01:03:13', 'politica1', ''),
('50', 20000.0, 23345.9, 3.0, 1500.0, 24848.9, 695769.5, '2022-07-22', '01:06:20', '', ''),
('50', 20000.0, 0.0, 5.0, 1500.0, 20005.0, 560140.0, '2022-07-22', '01:11:32', 'politica2', 'xd'),
('50', 20000.0, 23345.9, 6.0, 1500.0, 24851.9, 695853.5, '2022-07-22', '01:12:00', 'politica1', 'hj'),
('50', 20000.0, 23345.9, 3.0, 1500.0, 24848.9, 695769.5, '2022-07-22', '01:38:11', 'politica1', 'hg'),
('50', 20000.0, 0.0, 3.0, 1500.0, 20003.0, 560084.0, '2022-07-22', '01:39:08', 'politica2', 'bv'),
('9', 20000.0, 21211.4, 200.0, 1500.0, 22911.4, 183291.4, '2022-07-22', '08:30:05', 'politica1', 'dx'),
('9', 20000.0, 0.0, 150.0, 1500.0, 20150.0, 161200.0, '2022-07-22', '08:30:56', 'politica2', 'xs'),
('9', 20000.0, 21211.4, 8.0, 1500.0, 22719.4, 0.0, '2022-07-22', '10:58:44', 'politica1', 'f'),
('9', 20000.0, 21211.4, 10.0, 1500.0, 22721.4, 68164.3, '2022-07-22', '11:08:03', 'politica1', 'dd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noasociados`
--

CREATE TABLE `noasociados` (
  `cedula_noasociados` bigint NOT NULL,
  `centro_acopio` varchar(40) NOT NULL,
  `fecha_noasociado` date NOT NULL,
  `nombres_completos` varchar(60) NOT NULL,
  `contacto_noasociado` bigint NOT NULL,
  `tipo_cliente` varchar(40) NOT NULL,
  `municipio_noasociado` varchar(40) NOT NULL,
  `vereda_noasociado` varchar(40) NOT NULL,
  `finca_noasociado` varchar(40) NOT NULL,
  `producion_noasociado` float(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `noasociados`
--

INSERT INTO `noasociados` (`cedula_noasociados`, `centro_acopio`, `fecha_noasociado`, `nombres_completos`, `contacto_noasociado`, `tipo_cliente`, `municipio_noasociado`, `vereda_noasociado`, `finca_noasociado`, `producion_noasociado`) VALUES
(0, '', '0000-00-00', 'sara', 0, '', 'san diego', 'media luna', 'alaska', 0.0),
(0, '', '0000-00-00', 'sara', 0, '', 'san diego', 'media luna', 'alaska', 0.0),
(1, '', '0000-00-00', 'sara', 0, 'estandar', 'san diego', 'media luna', 'alaska', 0.0),
(2, '', '2022-07-19', 'sara', 2, 'organico', 'san diego', 'media luna', 'alaska', 2.0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo` varchar(40) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `tipo` varchar(40) NOT NULL,
  `precio` float(10,1) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `prima_producto` float(10,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombre`, `tipo`, `precio`, `descripcion`, `prima_producto`) VALUES
('1', 'cafe', 'seco', 20000.0, 'el mejor', 1500.0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultadosecado`
--

CREATE TABLE `resultadosecado` (
  `codigo_resultado` varchar(40) NOT NULL,
  `fecha_resultado` date NOT NULL,
  `cantidad_resultado` bigint NOT NULL,
  `costo_resultado` float(10,1) NOT NULL,
  `costo_total_resultado` float(10,1) NOT NULL,
  `tiposecado_resultado` varchar(40) NOT NULL,
  `observaciones` varchar(40) NOT NULL,
  `tipo_pago` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `resultadosecado`
--

INSERT INTO `resultadosecado` (`codigo_resultado`, `fecha_resultado`, `cantidad_resultado`, `costo_resultado`, `costo_total_resultado`, `tiposecado_resultado`, `observaciones`, `tipo_pago`) VALUES
('436', '2022-07-20', 0, 0.0, 0.0, '', '', ''),
('436', '2022-07-20', 343, 434.0, 0.0, 'socio', '34324', ''),
('78987', '2022-07-20', 3, 3.0, 9.0, 'no socio', '987hjkg', ''),
('436', '2022-07-20', 5, 6000.0, 30000.0, 'socio', '8768', ''),
('436', '2022-07-20', 3, 8.0, 24.0, 'socio', '436', 'efectivo'),
('436', '2022-07-20', 2, 2.0, 4.0, 'seleccione', '', 'seleccione');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secado`
--

CREATE TABLE `secado` (
  `producto_secado` varchar(40) NOT NULL,
  `numero_latas` float(10,1) NOT NULL,
  `fecha_secado` date NOT NULL,
  `asociado` varchar(40) NOT NULL,
  `observaciones` varchar(40) NOT NULL,
  `humedad` int NOT NULL,
  `codigo_entrada` varchar(40) NOT NULL,
  `cedula_secado` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `secado`
--

INSERT INTO `secado` (`producto_secado`, `numero_latas`, `fecha_secado`, `asociado`, `observaciones`, `humedad`, `codigo_entrada`, `cedula_secado`) VALUES
('', 2.0, '0000-00-00', '', '', 0, '', 0),
('cacao', 4.0, '2022-07-17', 'socio', 'fsfh', 2, 'dg5', 0),
('cafe', 343.0, '2022-07-19', 'socio', '23434', 324, 'dg5', 434);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `cedula_turno` bigint NOT NULL,
  `municipio_turno` varchar(40) NOT NULL,
  `fecha_turno` date NOT NULL,
  `hora_turno` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`cedula_turno`, `municipio_turno`, `fecha_turno`, `hora_turno`) VALUES
(1, 'P. Bello', '2022-07-22', '02:08:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
