-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-10-2015 a las 02:16:38
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `lab4`
--
CREATE DATABASE IF NOT EXISTS `lab4` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lab4`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `BorrarUsuario`(IN `paramId` INT)
    NO SQL
DELETE FROM usuario WHERE id=paramId$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarUsuario`(IN `paramNombre` VARCHAR(50), IN `paramMail` VARCHAR(50), IN `paramClave` VARCHAR(50))
INSERT INTO usuario(nombre,mail,clave) VALUES (paramNombre,paramMail,paramClave)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ModificarUsuario`(IN `paramNombre` VARCHAR(50), IN `paramMail` VARCHAR(50), IN `paramClave` VARCHAR(50))
    MODIFIES SQL DATA
UPDATE usuario SET nombre=paramNombre WHERE mail=paramMail AND clave=paramClave$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `TraerTodosLosUsuarios`()
    NO SQL
SELECT * FROM usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `TraerUsuarioPorMailYClave`(IN `paramMail` VARCHAR(50), IN `paramClave` VARCHAR(50))
    NO SQL
SELECT * FROM usuario WHERE mail=paramMail AND clave=paramClave$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `mail`, `clave`, `tipo`) VALUES
(2, 'admin cambiado', 'admin@admin.com.ar', 'admin', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
