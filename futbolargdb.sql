-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2023 a las 05:45:45
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `futbolargdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posteos`
--

CREATE TABLE `posteos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `url_imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `posteos`
--

INSERT INTO `posteos` (`id`, `titulo`, `descripcion`, `fecha`, `url_imagen`) VALUES
(1, 'Club Atlético Rosario Central', 'El Club Atlético Rosario Central, conocido como Rosario Central, o simplemente Central, es una entidad deportiva argentina de la ciudad de Rosario,​ en la provincia de Santa Fe, en el que participa de la Primera División de Argentina. También es propietario del Estadio Gigante de Arroyito.\nEn la institución también se practican otras disciplinas, como fútbol femenino —en la que disputa también el respectivo certamen de Primera División—, hockey sobre césped, baloncesto, patinaje, boxeo, taekwondo, fútsal, fútbol playa y voleibol, entre otros.', '1889-12-24', 'https://1.bp.blogspot.com/-P9eAnm-BJEY/XBhZUfgeevI/AAAAAAABTlU/irrtl33vtxQBFC8eDTWy-usBSK8ErImBgCLcBGAs/s1600/Club%2BAtletico%2BRosario%2BCentral.png'),
(2, 'Club Atlético Boca Juniors', 'El Club Atlético Boca Juniors es una entidad deportiva argentina, con sede en el barrio de La Boca, Buenos Aires. Fue fundado el 3 de abril de 1905 por seis vecinos adolescentes hijos de italianos. El fútbol masculino es su disciplina más destacada, aunque también compite a nivel profesional, nacional e internacionalmente, en baloncesto, voleibol, futsal, fútbol femenino y balonmano mientras que deportes como el boxeo, judo, karate, taekwondo, gimnasia rítmica y gimnasia artística se practican a nivel amateur. Actualmente se desempeña en la Liga Profesional de Fútbol Argentino. ', '1905-04-03', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/CABJ70.png/207px-CABJ70.png'),
(3, 'Club Atlético River Plate', 'El Club Atlético River Plate es una entidad polideportiva de Argentina.9​ Fue fundado el 25 de mayo de 1901 en el barrio de La Boca, tras la fusión de los clubes Santa Rosa y La Rosales, y su nombre proviene de la antigua denominación que se le daba en el inglés británico al Río de la Plata.10​11​ Su principal actividad es el fútbol masculino profesional, el cual participa en la Primera División de Argentina. Disputa sus partidos en el estadio Monumental, el de mayor capacidad en Sudamérica; y el segundo en el continente,​ con una capacidad para 83 214 espectadores.', '1901-05-25', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Escudo_del_C_A_River_Plate.svg/194px-Escudo_del_C_A_River_Plate.svg.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posteos`
--
ALTER TABLE `posteos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posteos`
--
ALTER TABLE `posteos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
