-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2022 a las 23:56:12
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `professionalmeeting`
--
CREATE SCHEMA IF NOT EXISTS `professionalmeeting` DEFAULT CHARACTER SET utf8 ;
USE `professionalmeeting`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo_remitente`
--

CREATE TABLE `correo_remitente` (
  `idUsuario` int(11) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contra` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_usuarios`
--

CREATE TABLE `cuentas_usuarios` (
  `idUsuario` int(11) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Contra` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cuentas_usuarios`
--

INSERT INTO `cuentas_usuarios` (`idUsuario`, `Usuario`, `Contra`) VALUES
(1, 'Administrador', '8cb2237d0679ca88db6464eac60da96345513964'),
(2, 'Usuario', '00000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mostrar_cita`
--

CREATE TABLE `mostrar_cita` (
  `idCita` int(11) NOT NULL,
  `NombreEspecialista` varchar(100) NOT NULL,
  `NombreEspecialidad` varchar(80) NOT NULL,
  `Calendario` varchar(60) NOT NULL,
  `Hora` varchar(60) NOT NULL,
  `Reservado` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mostrar_cita`
--

INSERT INTO `mostrar_cita` (`idCita`, `NombreEspecialista`, `NombreEspecialidad`, `Calendario`, `Hora`, `Reservado`) VALUES
(1, 'Grasiela Ruiz', 'Uñas', '2022-10-28', '18', 'Si'),
(2, 'María Mariela Ramírez Pérez', 'Pelo', '2022-10-26', '12', 'Si'),
(3, 'Manuel ', 'Pintado', '2022-10-10', '15', 'Si'),
(4, 'Mario Perez Sanchez', 'Maquillaje', '2023-01-03', '13', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes_reservados`
--

CREATE TABLE `pacientes_reservados` (
  `idUsuarios` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Curp` varchar(60) NOT NULL,
  `NombreEspecialista` varchar(100) NOT NULL,
  `NombreEspecialidad` varchar(80) NOT NULL,
  `Calendario` varchar(100) NOT NULL,
  `Hora` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pacientes_reservados`
--

INSERT INTO `pacientes_reservados` (`idUsuarios`, `Nombre`, `Apellido`, `Curp`, `NombreEspecialista`, `NombreEspecialidad`, `Calendario`, `Hora`) VALUES
(5, 'PEDRO', 'SANCHEZ', 'CAVA001111HJCRRRA5', 'Manuel ', 'Pintado', '2022-10-10', '15'),
(6, 'PEDRO', 'SANCHEZ', 'CAVA001111HJCRRRA5', 'Grasiela Ruiz', 'Uñas', '2022-10-28', '18'),
(8, 'AARON YAEL', 'CARRANZA VERA', 'CAVA001111HJCRRRA3', 'María Mariela Ramírez Pérez', 'Pelo', '2022-10-26', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idUsuarios` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Curp` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idUsuarios`, `Nombre`, `Apellido`, `Curp`) VALUES
(1, 'AARON YAEL', 'CARRANZA VERA', 'CAVA001111HJCRRRA3'),
(3, 'PEDRO', 'SANCHEZ', 'CAVA001111HJCRRRA5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrar_cita`
--

CREATE TABLE `registrar_cita` (
  `idCita` int(11) NOT NULL,
  `NombreEspecialista` varchar(100) NOT NULL,
  `NombreEspecialidad` varchar(80) NOT NULL,
  `Calendario` varchar(60) NOT NULL,
  `Hora` varchar(60) NOT NULL,
  `Reservado` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registrar_cita`
--

INSERT INTO `registrar_cita` (`idCita`, `NombreEspecialista`, `NombreEspecialidad`, `Calendario`, `Hora`, `Reservado`) VALUES
(1, 'Grasiela Ruiz', 'Uñas', '2022-10-28', '18', 'No'),
(2, 'Maria Mariela Ramirez Perez', 'Pelo', '2022-10-26', '12', 'No'),
(3, 'Manuel ', 'Pintado', '2022-10-10', '15', 'No'),
(4, 'Mario Perez Sanchez', 'Maquillaje', '2023-01-03', '13', 'No');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `correo_remitente`
--
ALTER TABLE `correo_remitente`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `cuentas_usuarios`
--
ALTER TABLE `cuentas_usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `mostrar_cita`
--
ALTER TABLE `mostrar_cita`
  ADD PRIMARY KEY (`idCita`);

--
-- Indices de la tabla `pacientes_reservados`
--
ALTER TABLE `pacientes_reservados`
  ADD PRIMARY KEY (`idUsuarios`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idUsuarios`);

--
-- Indices de la tabla `registrar_cita`
--
ALTER TABLE `registrar_cita`
  ADD PRIMARY KEY (`idCita`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `correo_remitente`
--
ALTER TABLE `correo_remitente`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuentas_usuarios`
--
ALTER TABLE `cuentas_usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mostrar_cita`
--
ALTER TABLE `mostrar_cita`
  MODIFY `idCita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pacientes_reservados`
--
ALTER TABLE `pacientes_reservados`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `registrar_cita`
--
ALTER TABLE `registrar_cita`
  MODIFY `idCita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
