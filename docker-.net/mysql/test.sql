/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.7.17-0ubuntu0.16.04.1 : Database - cg_apiserver
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mydb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mydb`;

/*Table structure for table `addons` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `solicitudes` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `nombre`, `correo`) VALUES
(1, 'John Smith', 'johnsmith@dao.com'),
(2, 'Dayana Rodriguez De Villa', 'Lorenarodriquez@outlook.es'),
(3, 'Samuel', 'Lorenarodriquez@outlook.es'),
(4, 'juan ', 'juanjose@gmail.com'),
(5, 'Pablo', 'pablomoto1000Q'),
(6, 'Pablo', 'pablomoto1000@gmail.com'),
(7, 'mafe', 'mafe12@jsh.com'),
(8, 'jorge', 'jorge@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
