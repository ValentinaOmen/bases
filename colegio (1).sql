-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2024 a las 05:10:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` int(11) NOT NULL,
  `tipo_identifivacion` enum('RC','TI','CC','CE') DEFAULT NULL,
  `identificacion` bigint(20) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `genero` enum('Femenino','Masculino') DEFAULT NULL,
  `fecha_nac` date NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `tipo_identifivacion`, `identificacion`, `nombre`, `direccion`, `genero`, `fecha_nac`, `telefono`) VALUES
(1, 'RC', 34254, 'felipe triana garces', 'carrera 4 no. 32-12', 'Masculino', '0000-00-00', '3243565456'),
(2, 'RC', 34563, 'juan escarpeta', 'carrera 4 no. 2-12', 'Masculino', '0000-00-00', '3243565454'),
(3, 'RC', 34135, 'escarpeta', 'carrera 4 no. 2-12', 'Masculino', '0000-00-00', '3243565734'),
(4, 'RC', 13546, 'juan ', 'carrera 5 no. 3-12', 'Masculino', '0000-00-00', '3003565454'),
(5, 'CC', 23546, 'Martin ', 'carrera 7 no. 5-1', 'Masculino', '0000-00-00', '3103565454'),
(6, 'TI', 23546, 'Perta ', 'carrera 7 no. 5-1', 'Masculino', '2001-01-20', '3103565454'),
(22, 'TI', 123854956, 'claudia', '', 'Femenino', '0000-00-00', ''),
(23, 'CE', 6789574, 'cosita', 'carrera 806 no. 52-195', 'Femenino', '0000-00-00', '3222222806'),
(24, 'CE', 3789574, 'tata correa', 'carrera 806 no. 52-195', 'Femenino', '0000-00-00', '37222222806'),
(25, 'CC', 37895746, 'tali correa', 'carrera 806 no. 52-195', 'Femenino', '0000-00-00', '322222806'),
(26, 'CC', 37895746, 'tato correa', 'carrera 806 no. 52-195', 'Masculino', '0000-00-00', '322222806'),
(27, 'CC', 37895746, 'correa', 'carrera 806 no. 52-195', 'Masculino', '0000-00-00', '3222252806');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id_grado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id_grado`, `nombre`) VALUES
(1, 'quinto'),
(2, 'cuarto'),
(3, 'tercero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `grado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `nombre`, `grado`) VALUES
(2, 'sociales', 1),
(3, 'espa?ol', 1),
(4, 'matematicas', 1),
(5, 'religion', 1),
(6, 'dibujo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculas`
--

CREATE TABLE `matriculas` (
  `id_materia` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `estudiante` int(11) DEFAULT NULL,
  `materia` int(11) DEFAULT NULL,
  `nota_1` float DEFAULT NULL,
  `nota_2` float DEFAULT NULL,
  `nota_3` float DEFAULT NULL,
  `nota_4` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `matriculas`
--

INSERT INTO `matriculas` (`id_materia`, `fecha`, `estudiante`, `materia`, `nota_1`, `nota_2`, `nota_3`, `nota_4`) VALUES
(1, '2024-08-21', 1, 3, 3.2, 4.5, 2, NULL),
(2, '2024-08-21', 1, 3, 1.1, 4.5, 2.5, NULL),
(3, '2024-08-21', 1, 3, 2.3, 3.5, 2.9, NULL),
(4, '2024-08-21', 1, 3, 2.3, 3.5, 2.9, NULL),
(5, '2024-08-21', 1, 3, 3.3, 4.1, 3.8, NULL),
(6, '2024-08-21', 1, 3, 2.3, 4.1, 4.8, NULL),
(7, '2024-08-21', 1, 4, 2.2, 1.5, 2, NULL),
(8, '2024-08-21', 2, 4, 3.4, 1.9, 2.2, NULL),
(9, '2024-08-21', 2, 4, 3.4, 1.9, 2.2, NULL),
(10, '2024-08-21', 3, 4, 4.4, 1, 1, NULL),
(11, '2024-08-21', 4, 4, 1, 1, 1, NULL),
(12, '2024-08-21', 5, 4, 4, 5, 3, NULL),
(13, '2024-08-21', 6, 4, 4, 5, 3.9, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `grados_materias` (`grado`);

--
-- Indices de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `materias_matriculas` (`materia`),
  ADD KEY `matriculas_estudiante` (`estudiante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `grados_materias` FOREIGN KEY (`grado`) REFERENCES `grados` (`id_grado`);

--
-- Filtros para la tabla `matriculas`
--
ALTER TABLE `matriculas`
  ADD CONSTRAINT `materias_matriculas` FOREIGN KEY (`materia`) REFERENCES `materias` (`id_materia`),
  ADD CONSTRAINT `matriculas_estudiante` FOREIGN KEY (`estudiante`) REFERENCES `estudiantes` (`id_estudiante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
