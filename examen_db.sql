-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-06-2024 a las 19:51:49
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
CREATE TABLE IF NOT EXISTS `preguntas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(255) NOT NULL,
  `opcion_a` varchar(255) NOT NULL,
  `opcion_b` varchar(255) NOT NULL,
  `opcion_c` varchar(255) NOT NULL,
  `opcion_d` varchar(255) NOT NULL,
  `respuesta_correcta` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `opcion_a`, `opcion_b`, `opcion_c`, `opcion_d`, `respuesta_correcta`) VALUES
(1, '¿Cuál es la capital de Francia?', 'Berlín', 'Madrid', 'París', 'Lisboa', 'C'),
(2, '¿Cuál es el resultado de 2 + 2?', '3', '4', '5', '6', 'B'),
(3, '¿Cuál es el idioma oficial de Brasil?', 'Español', 'Portugués', 'Inglés', 'Francés', 'B'),
(4, '¿Qué planeta es conocido como el planeta rojo?', 'Venus', 'Marte', 'Júpiter', 'Saturno', 'B'),
(5, '¿Quién escribió \"Cien años de soledad\"?', 'Gabriel García Márquez', 'Mario Vargas Llosa', 'Pablo Neruda', 'Isabel Allende', 'A'),
(6, '¿En qué año llegó el hombre a la luna?', '1965', '1969', '1972', '1980', 'B'),
(7, '¿Cuál es el océano más grande del mundo?', 'Atlántico', 'Índico', 'Pacífico', 'Ártico', 'C'),
(8, '¿Quién pintó la Mona Lisa?', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Claude Monet', 'C'),
(9, '¿Cuál es el río más largo del mundo?', 'Nilo', 'Amazonas', 'Yangtsé', 'Misisipi', 'B'),
(10, '¿Cuál es el metal más abundante en la corteza terrestre?', 'Hierro', 'Aluminio', 'Cobre', 'Oro', 'B'),
(11, '¿Cuál es el país más grande del mundo por área?', 'Canadá', 'China', 'Estados Unidos', 'Rusia', 'D'),
(12, '¿Cuál es el animal terrestre más rápido?', 'León', 'Tigre', 'Guepardo', 'Elefante', 'C'),
(13, '¿Cuál es la moneda de Japón?', 'Yuan', 'Won', 'Yen', 'Dólar', 'C'),
(14, '¿Cuál es la ciudad más poblada del mundo?', 'Nueva York', 'Tokio', 'Shanghái', 'Delhi', 'B'),
(15, '¿Qué gas es necesario para la respiración?', 'Dióxido de carbono', 'Hidrógeno', 'Oxígeno', 'Nitrógeno', 'C'),
(16, '¿Cuál es el continente más pequeño en tamaño?', 'Europa', 'Australia', 'Antártida', 'América del Sur', 'B'),
(17, '¿Quién desarrolló la teoría de la relatividad?', 'Isaac Newton', 'Albert Einstein', 'Nikola Tesla', 'Galileo Galilei', 'B'),
(18, '¿Qué instrumento mide la presión atmosférica?', 'Termómetro', 'Barómetro', 'Higrómetro', 'Anemómetro', 'B'),
(19, '¿Cuál es la unidad básica de la vida?', 'Célula', 'Átomo', 'Molécula', 'Organo', 'A'),
(20, '¿Cuál es el país con más medallas olímpicas de todos los tiempos?', 'Rusia', 'China', 'Estados Unidos', 'Reino Unido', 'C'),
(21, '¿Quién fue el primer presidente de Estados Unidos?', 'Abraham Lincoln', 'George Washington', 'Thomas Jefferson', 'John Adams', 'B'),
(22, '¿Cuál es el elemento químico con el símbolo H?', 'Helio', 'Hidrógeno', 'Mercurio', 'Hierro', 'B'),
(23, '¿En qué continente se encuentra el desierto del Sahara?', 'Asia', 'África', 'América del Sur', 'Australia', 'B'),
(24, '¿Quién es el autor de \"Don Quijote de la Mancha\"?', 'Miguel de Cervantes', 'Federico García Lorca', 'Jorge Luis Borges', 'Gabriel García Márquez', 'A'),
(25, '¿Cuál es la principal fuente de energía para la Tierra?', 'La Luna', 'El Sol', 'El Viento', 'El Agua', 'B'),
(26, '¿Cuál es el órgano más grande del cuerpo humano?', 'Corazón', 'Pulmón', 'Piel', 'Hígado', 'C'),
(27, '¿Cuál es el idioma más hablado en el mundo?', 'Inglés', 'Chino Mandarín', 'Español', 'Hindú', 'B'),
(28, '¿Qué país es famoso por su torre inclinada?', 'Francia', 'Italia', 'España', 'Alemania', 'B'),
(29, '¿Cuál es la fórmula química del agua?', 'H2O', 'CO2', 'O2', 'N2', 'A'),
(30, '¿Quién pintó \"La última cena\"?', 'Leonardo da Vinci', 'Michelangelo', 'Raphael', 'Donatello', 'A');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
