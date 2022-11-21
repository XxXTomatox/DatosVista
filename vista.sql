-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 21-11-2022 a las 23:46:19
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vista`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_asignaciones`
--

CREATE TABLE `t_asignaciones` (
  `id_ asignacion` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_hardware` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_asignaciones`
--

INSERT INTO `t_asignaciones` (`id_ asignacion`, `id_usuario`, `id_hardware`) VALUES
(1, 1, 8),
(2, 3, 9),
(3, 2, 9),
(4, 4, 6),
(5, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_hardware`
--

CREATE TABLE `t_hardware` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `modelo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_hardware`
--

INSERT INTO `t_hardware` (`id`, `nombre`, `modelo`) VALUES
(1, 'Logitech G213', '920-008084'),
(2, 'HyperX Alloy Core RGB', 'HX-KB5ME2-LA'),
(3, 'Razer Ornata V3 X', 'RZ03-04470200-R3U1'),
(4, 'CORN', 'keycap'),
(5, 'Logitech G502', '910-005550'),
(6, 'Razer Basilisk X HyperSpeed', 'RZ01-03150100-R3U1'),
(7, 'Razer Basilisk Ultimate', 'RZ01-03170100-R3U1'),
(8, 'ASTRO Gaming A10', '939-002046'),
(9, 'Razer Opus X', 'RZ04-03760400-R3U1'),
(10, 'LONEASY Auriculares para Juegos', 'B082X4RM2V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuario`
--

CREATE TABLE `t_usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `paterno` varchar(200) NOT NULL,
  `materno` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_usuario`
--

INSERT INTO `t_usuario` (`id_usuario`, `nombre`, `paterno`, `materno`) VALUES
(1, 'Axel', 'Martinez', 'Vertiz'),
(2, '\r\nRoldan', 'Aquino', 'Segura'),
(3, 'Angel', 'Cerezo', 'Texocotitla'),
(4, 'Marlon', 'Torres', 'Flores');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_asignaciones`
--
ALTER TABLE `t_asignaciones`
  ADD PRIMARY KEY (`id_ asignacion`),
  ADD KEY `id_hardware` (`id_hardware`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `t_hardware`
--
ALTER TABLE `t_hardware`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_usuario`
--
ALTER TABLE `t_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_asignaciones`
--
ALTER TABLE `t_asignaciones`
  MODIFY `id_ asignacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `t_hardware`
--
ALTER TABLE `t_hardware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `t_usuario`
--
ALTER TABLE `t_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_asignaciones`
--
ALTER TABLE `t_asignaciones`
  ADD CONSTRAINT `t_asignaciones_ibfk_1` FOREIGN KEY (`id_hardware`) REFERENCES `t_hardware` (`id`),
  ADD CONSTRAINT `t_asignaciones_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
