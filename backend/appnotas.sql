-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2022 a las 13:17:04
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appnotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `parcial1` decimal(10,0) NOT NULL,
  `parcial2` decimal(10,0) NOT NULL,
  `parcial3` decimal(10,0) NOT NULL,
  `final` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `usuario`, `parcial1`, `parcial2`, `parcial3`, `final`) VALUES
(1, 'Juan', '4', '1', '5', '10'),
(2, '', '0', '0', '0', NULL),
(3, '', '13', '23', '10', NULL),
(4, '', '0', '0', '0', NULL),
(5, '', '123', '2345', '235', NULL),
(6, '', '0', '0', '0', NULL),
(7, '', '123', '234', '23', NULL),
(8, '', '0', '0', '0', NULL),
(9, 'prueba', '23', '343', '234', NULL),
(10, '', '0', '0', '0', NULL),
(11, 'prueba2', '10', '90', '50', NULL),
(12, '', '0', '0', '0', NULL),
(13, 'prueba3', '3', '1', '4', NULL),
(14, '', '0', '0', '0', NULL),
(15, 'prueba4', '34', '12', '35', NULL),
(16, '', '0', '0', '0', NULL),
(17, 'prueba5', '34', '2', '435', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
