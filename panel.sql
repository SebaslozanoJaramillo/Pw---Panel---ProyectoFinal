-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2018 a las 15:57:03
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `panel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginadministrador`
--

CREATE TABLE `loginadministrador` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `loginadministrador`
--

INSERT INTO `loginadministrador` (`id`, `email`, `password`) VALUES
(1, 'sebastian@gmail.com', 'sebas123'),
(2, 'juan@gmail.com', 'juan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginestudiante`
--

CREATE TABLE `loginestudiante` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `loginestudiante`
--

INSERT INTO `loginestudiante` (`id`, `email`, `password`) VALUES
(1, 'gaviria@gmail.com', 'gavi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntaaspirante`
--

CREATE TABLE `preguntaaspirante` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `respuesta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntaaspirante`
--

INSERT INTO `preguntaaspirante` (`id`, `pregunta`, `respuesta`) VALUES
(1, '¿Cuando son las fechas de las matriculas en la corporación?', 'https://www.cotecnova.edu.co/index.php/aspirante/'),
(3, 'hola', 'adios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntadocente`
--

CREATE TABLE `preguntadocente` (
  `idDocente` int(11) NOT NULL,
  `preguntaDocente` varchar(255) NOT NULL,
  `respuestaDocente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntadocente`
--

INSERT INTO `preguntadocente` (`idDocente`, `preguntaDocente`, `respuestaDocente`) VALUES
(1, '¿Cuales son las fechas de los parciales?', 'https://www.cotecnova.edu.co/index.php/docente/#tab-id-3'),
(5, 'Docentee', 'docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntaestudiante`
--

CREATE TABLE `preguntaestudiante` (
  `idEstudiante` int(11) NOT NULL,
  `preguntaEstudiante` varchar(255) NOT NULL,
  `respuestaEstudiante` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntaestudiante`
--

INSERT INTO `preguntaestudiante` (`idEstudiante`, `preguntaEstudiante`, `respuestaEstudiante`) VALUES
(1, '¿Cuando finalizan las clases?', 'FINALIZACIÓN CALENDARIO ACADÉMICO 02-2018\r\nPROGRAMAS PRESENCIALES\r\n\r\nFINALIZACIÓN DE CLASES: Noviembre 09 de 2018.'),
(15, 'Los docente son buena onda?', 'Claro que si'),
(17, 'Como puedo ver las notas finales?', 'En la pagina de la corproracion la puede ver.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contrasena` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `contrasena`) VALUES
(1, 'juans0999.sl@gmail.com', 'sebas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `loginadministrador`
--
ALTER TABLE `loginadministrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `loginestudiante`
--
ALTER TABLE `loginestudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntaaspirante`
--
ALTER TABLE `preguntaaspirante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntadocente`
--
ALTER TABLE `preguntadocente`
  ADD PRIMARY KEY (`idDocente`);

--
-- Indices de la tabla `preguntaestudiante`
--
ALTER TABLE `preguntaestudiante`
  ADD PRIMARY KEY (`idEstudiante`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `loginadministrador`
--
ALTER TABLE `loginadministrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `loginestudiante`
--
ALTER TABLE `loginestudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `preguntaaspirante`
--
ALTER TABLE `preguntaaspirante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `preguntadocente`
--
ALTER TABLE `preguntadocente`
  MODIFY `idDocente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `preguntaestudiante`
--
ALTER TABLE `preguntaestudiante`
  MODIFY `idEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
