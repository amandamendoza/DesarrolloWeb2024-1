-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2024 a las 06:27:19
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `artista`
--

INSERT INTO `artista` (`id`, `nombre`, `descripcion`) VALUES
(1, 'tomorrow x together\r\n', 'tomorrow x together, abreviado frecuentemente como txt, ​​ es una boy band surcoreana de K-pop formada por big hit music en 2019. '),
(2, 'stray kids', 'stray kids es un grupo masculino surcoreano formado en 2017 por jyp entertainment a través del reality show homónimo.'),
(3, 'chalino sánchez\r\n', 'rosalino sánchez félix​, conocido como chalino sánchez, o el rey del corrido, fue un cantante y compositor mexicano.​ '),
(4, ' jenni rivera', 'dolores janney rivera saavedra, conocida como jenni rivera, fue una cantante estadounidense.'),
(5, 'kiss', 'Kiss fue una banda estadounidense de rock formada en Nueva York en enero de 1973 '),
(6, 'queen', 'queen es una banda británica de rock formada en 1970 en Londres'),
(7, 'j balvin', 'José Álvaro Osorio Balvín, más conocido como J Balvin, es un cantante y productor colombiano'),
(8, 'Karol G.', 'Karol G, es una cantante, compositora, empresaria y productora musical colombiana. '),
(9, 'Coldplay', 'Coldplay es una banda británica, formada en Londres en 1997.'),
(10, 'Lana Del Rey', 'Lana Del Rey, es una cantante, compositora, modelo, actriz, escritora, productora y poetisa estadounidense.'),
(11, 'Selena Quintanilla', 'fue una cantante mexicano-estadounidense de música tejana, ranchera, balada, pop y cumbia.'),
(12, 'los angeles azules', 'Los Ángeles Azules es un grupo musical mexicano del género de cumbia, originaria de la Ciudad de México.​ '),
(13, 'Marshmello', 'Marshmello, es un DJ y productor discográfico estadounidense de future bass, electrónica y electrohouse.'),
(14, 'Alan Walker', 'Alan Olav Walker es un DJ, remezclador y productor discográfico noruego.'),
(15, 'Reik', 'Reik es una banda musical originaria de Mexicali, Baja California, México y formada en 2003. '),
(16, 'Elvis Presley', 'Elvis, fue un cantante y actor estadounidense. Apodado como «el rey del rock and roll»'),
(17, 'fall out boy', 'Fall Out Boy es una banda estadounidense');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_canciones`
--

CREATE TABLE `artista_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, '0X1=LOVESONG (I Know I Love You) feat. Seori', 1, '03:35:00', '2021-05-31', 1, ''),
(2, 'Run Away', 1, '05:16:00', '2019-10-21', 0, ''),
(3, 'Devil by the Window', 1, '03:26:00', '2023-02-21', 0, ''),
(4, 'Deja Vu', 1, '04:00:00', '2024-04-01', 0, ''),
(7, 'Crown', 1, '03:46:00', '2019-03-04', 0, ''),
(8, 'Cat & Dog', 1, '03:41:00', '2019-04-24', 0, ''),
(9, 'Can\'t You See Me?', 1, '03:50:00', '2020-05-18', 0, ''),
(10, 'Blue Hour\r\n', 1, '03:42:00', '2020-10-26', 0, ''),
(11, 'La Gran Señora', 9, '03:22:00', '2009-08-28', 0, ''),
(12, 'Inolvidable', 9, '03:29:00', '2011-08-27', 0, ''),
(13, 'Por Que No Le Calas', 9, '02:59:00', '2003-01-01', 0, ''),
(14, 'Mariposa de Barrio', 9, '03:25:00', '2017-06-02', 0, ''),
(15, 'Resulta', 9, '03:26:00', '2009-10-20', 0, ''),
(16, 'Dama Divina', 9, '03:14:00', '2012-07-03', 0, ''),
(17, 'Detrás de Mi Ventana', 9, '03:40:00', '2009-10-20', 0, ''),
(18, 'Besos y Copas', 9, '03:39:00', '2009-10-20', 0, ''),
(19, 'Culpable o Inocente', 9, '03:01:00', '2009-07-14', 0, ''),
(20, 'Por Un Amor', 9, '02:50:00', '2006-03-21', 0, ''),
(21, 'Sugar, We\'re Goin Down', 10, '03:49:00', '2005-04-20', 0, ''),
(22, 'Thnks fr th Mmrs', 10, '03:23:00', '2007-04-09', 0, ''),
(23, 'Centuries', 10, '03:48:00', '2014-09-09', 0, ''),
(24, 'Dance, Dance', 10, '03:00:00', '2005-09-15', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritas`
--

CREATE TABLE `favoritas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'kpop\r\n'),
(2, 'reggaeton'),
(3, 'rock'),
(4, 'pop\r\n'),
(5, 'cumbia'),
(6, 'electronica'),
(7, 'baladas romanticas'),
(8, ' rock and roll'),
(9, 'ragional mexicana\r\n'),
(10, 'Alternativa/independiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresia`
--

CREATE TABLE `membresia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `membresia`
--

INSERT INTO `membresia` (`id`, `descripcion`, `precio`) VALUES
(1, 'premium', 129),
(2, 'free', 0),
(3, 'Premium Duo ', 169),
(4, ' Premium Familiar', 199),
(5, 'Premium para Estudiantes', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paylist`
--

CREATE TABLE `paylist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publica` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membrecia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `correo`, `membrecia_id`) VALUES
(1, 'nancy millan', 'elpepe129@gmail.com', 1),
(2, 'pedro', 'pedro.morales@cetis107.edu.mx', 5),
(3, 'juan', 'juan.lopez@gmail.com', 3),
(4, 'pablo', 'pablo.agirre@gmail.com', 3),
(5, 'sara', 'sara.juarez@gmail.com', 4),
(6, 'sofia', 'sofia.juarez@gmail.com', 4),
(7, 'karla', 'karla@gmail.com', 2),
(8, 'jorge', 'jorge@gmail.com', 1),
(9, 'ivanna', 'ivanna.flores@gmail.com', 2),
(10, 'maria', 'maria.Rodríguez@cetis107.edu.mx', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresia`
--
ALTER TABLE `membresia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paylist`
--
ALTER TABLE `paylist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membrecia_id` (`membrecia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `favoritas`
--
ALTER TABLE `favoritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `membresia`
--
ALTER TABLE `membresia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `paylist`
--
ALTER TABLE `paylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD CONSTRAINT `artista_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `artista_canciones_ibfk_2` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritas`
--
ALTER TABLE `favoritas`
  ADD CONSTRAINT `favoritas_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritas_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `paylist`
--
ALTER TABLE `paylist`
  ADD CONSTRAINT `paylist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `paylist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`membrecia_id`) REFERENCES `membresia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
