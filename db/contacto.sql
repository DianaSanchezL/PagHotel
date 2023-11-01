-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-11-2023 a las 21:17:52
-- Versión del servidor: 8.0.33
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulariocontacto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `asunto` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mensaje` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `telefono`, `asunto`, `mensaje`) VALUES
(2, 'Maria Perez', 'mariaperez@hotmail.com', '5555555', 'consulta', 'Hola, cuánto cuesta el viaje a París?'),
(3, 'Pablo Marmol', 'pablomarmol@gmail.com', '123456789', 'viaje', 'Quiero conocer Japón, ¿es muy caro?'),
(4, 'Betty Lopez', 'betty213@hotmail.com', '8859645', 'londres', 'Me gustaría un viaje a Londres'),
(5, 'Ruth Díaz', 'ruthsita@gmail.com', '7775263', 'viajar', 'Buenos días, deseo viajar a Japón'),
(6, 'Camilo Torres', 'camilot@hotmail.com', '4567896', 'pregunta', 'Pueden agendarme un viaje de 15 días a Aruba'),
(7, 'Mauricio Nuñez', 'marito@hotmail.com', '300520145', 'aruba', 'Hola, quiero ir a Aruba de luna de miel'),
(8, 'Luz Sanchez', 'amapola@yahoo.com', '3201542', 'tokio', 'debo tener visa para ir a Japón?'),
(9, 'Andrea Romero', 'andreita123@hotmail.com', '4561298', 'duda', 'Hola, para cuantas personas mínimo es el tour?'),
(10, 'Nelson Piña', 'nelson@hotmail.com', '300528987', 'consulta', 'cuánto cuesta un viaje para 4 personas a Aruba?');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
