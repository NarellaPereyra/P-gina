-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-10-2024 a las 19:57:37
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wisteriaclothing`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitulo` text COLLATE utf8mb4_general_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'PRIMERA NOVEDAD', 'subtitulo de la novedad\r\nLorem ipsum dolor sit amet consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eveniet reiciendis aliquid dolore aliquam mollitia, labore ipsum. Sapiente suscipit esse, fugit distinctio, commodi earum atque nemo voluptatum culpa itaque libero error?'),
(6, 'Wisteria', 'Wisteria, llamado popularmente glicina o glicinia, es un género con nueve especies de plantas trepadoras. Son nativas del este de Australia y de países del Este de Asia tales como China, Corea y Japón.', 'Son arbustos leñosos de hábito trepador. Las plantas de este género usan sus ramas para trepar sobre otras plantas, enrollándolas sobre su soporte en sentido igual o contrario a las manecillas de reloj. Pueden escalar hasta 20 metros sobre el suelo y unos 10 metros lateralmente.\r\nSe cultivan como plantas de decoración debido a sus racimos de flores primaverales y a su espeso follaje. Según las variedades, las flores son violetas, azules o blancas. La largura de las inflorescencias varía, de 10 cm a un metro en Wisteria floribunda \'Macrobotryes\'.\r\n\r\nAlgunas variedades son perfumadas, y entre estas, las variedades son \'Rosea\' o \'Jacko\'. Los granos son tóxicos. La especie más conocida es Wisteria sinensis, la glicinia de China, ampliamente cultivada en Europa occidental. Otra especie frecuente es la Wisteria floribunda, (Willd) DC., la glicinia de Japón.'),
(8, 'prueba novedad desde form', 'prueba de novedades', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea nemo possimus saepe architecto a tenetur, eveniet in id, necessitatibus vel rem consequuntur nesciunt asperiores eius recusandae deleniti ut totam consectetur?'),
(7, 'Modificar ', 'modf', 'prueba 2 de modificar again');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Narella', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Leila', '674f3c2c1a8a6f90461e8a66fb5550ba'),
(3, 'Clara', '912e79cd13c64069d91da65d62fbb78c');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
