-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2023 at 11:05 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemaventa`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `dni` varchar(25) DEFAULT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`) VALUES
(1, '12345678', 'Juan Gomez', '912345678', 'Calle 123, Lima'),
(2, '23456789', 'Ana Martinez', '987654321', 'Avenida Principal, Lima'),
(3, '34567890', 'Pedro Rodriguez', '976543210', 'Calle 456, Lima'),
(4, '45678901', 'Maria Lopez', '911223344', 'Avenida Central, Lima'),
(5, '56789012', 'Luis Perez', '923456789', 'Calle 789, Lima'),
(6, '67890123', 'Laura Garcia', '944556677', 'Avenida Norte, Lima'),
(7, '78901234', 'Carlos Sanchez', '955667788', 'Calle 1011, Lima'),
(8, '89012345', 'Sofia Fernandez', '966778899', 'Avenida Sur, Lima'),
(9, '90123456', 'Javier Torres', '977889900', 'Calle 1213, Lima'),
(10, '01234567', 'Isabel Gutierrez', '988990011', 'Avenida Oeste, Lima'),
(11, '12345678', 'Diego Ramirez', '999001122', 'Calle 1415, Lima'),
(12, '23456789', 'Patricia Chavez', '910112233', 'Avenida Este, Lima'),
(13, '34567890', 'Daniel Hernandez', '921122334', 'Calle 1617, Lima'),
(14, '45678901', 'Natalia Diaz', '932233445', 'Avenida Central, Lima'),
(15, '56789012', 'Gabriel Moreno', '943344556', 'Calle 1819, Lima'),
(16, '67890123', 'Luisa Torres', '954455566', 'Avenida 2021, Lima'),
(17, '78901234', 'Eduardo Gonzalez', '966677788', 'Calle 2223, Lima'),
(18, '89012345', 'Monica Jimenez', '978888999', 'Avenida 2425, Lima'),
(19, '90123456', 'Ricardo Silva', '988899900', 'Calle 2627, Lima'),
(20, '01234567', 'Silvia Lopez', '911122233', 'Avenida 2829, Lima');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `ruc` varchar(25) DEFAULT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  `mensaje` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `ruc`, `nombre`, `telefono`, `direccion`, `mensaje`) VALUES
(1, '1234567890', 'FISISHOP S.A.', '908908908', 'Lima, Lima, Perú', 'Gracias por su compra');

-- --------------------------------------------------------

--
-- Table structure for table `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `id_pro` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detalle`
--

INSERT INTO `detalle` (`id`, `id_pro`, `cantidad`, `precio`, `id_venta`) VALUES
(9, 44, 3, '39.99', 0),
(10, 46, 2, '179.99', 1),
(11, 48, 1, '299.99', 2),
(12, 43, 2, '239.99', 2),
(13, 41, 4, '79.99', 3),
(14, 40, 2, '119.99', 3);

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(25) DEFAULT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `proveedor` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `proveedor`, `stock`, `precio`) VALUES
(1, '0100001000', 'Laptop Modelo 1', 1, 30, '899.99'),
(2, '0200002000', 'Impresora Modelo 1', 2, 40, '199.99'),
(3, '0300003000', 'Teléfono Inteligente Mode', 3, 25, '499.99'),
(4, '0400004000', 'Tablet Modelo 1', 4, 35, '349.99'),
(5, '0500005000', 'Cámara Digital Modelo 1', 5, 22, '299.99'),
(6, '0600006000', 'Smart TV Modelo 1', 6, 39, '799.99'),
(7, '0700007000', 'Reproductor de Blu-ray Mo', 7, 28, '149.99'),
(8, '0800008000', 'Altavoces Modelo 1', 8, 30, '79.99'),
(9, '0900009000', 'Auriculares Modelo 1', 9, 42, '59.99'),
(10, '1000010000', 'Monitor de Computadora Mo', 10, 50, '249.99'),
(11, '1100011000', 'Teclado Inalámbrico Model', 11, 48, '29.99'),
(12, '1200012000', 'Mouse Óptico Modelo 1', 12, 38, '19.99'),
(13, '1300013000', 'Impresora Multifunción Mo', 13, 23, '179.99'),
(14, '1400014000', 'Teléfono Inteligente Mode', 14, 42, '599.99'),
(15, '1500015000', 'Tablet Modelo 2', 15, 26, '299.99'),
(16, '1600016000', 'Cámara Digital Modelo 2', 16, 48, '249.99'),
(17, '1700017000', 'Smart TV Modelo 2', 17, 45, '899.99'),
(18, '1800018000', 'Reproductor de Blu-ray Mo', 18, 30, '129.99'),
(19, '1900019000', 'Altavoces Modelo 2', 19, 37, '69.99'),
(20, '2000020000', 'Auriculares Modelo 2', 20, 22, '49.99'),
(21, '2100021000', 'Monitor de Computadora Mo', 1, 44, '279.99'),
(22, '2200022000', 'Teclado Inalámbrico Model', 2, 47, '34.99'),
(23, '2300023000', 'Mouse Óptico Modelo 2', 3, 21, '24.99'),
(24, '2400024000', 'Impresora Multifunción Mo', 4, 35, '199.99'),
(25, '2500025000', 'Teléfono Inteligente Mode', 5, 27, '499.99'),
(26, '2600026000', 'Tablet Modelo 3', 6, 45, '349.99'),
(27, '2700027000', 'Cámara Digital Modelo 3', 7, 50, '299.99'),
(28, '2800028000', 'Smart TV Modelo 3', 8, 40, '749.99'),
(29, '2900029000', 'Reproductor de Blu-ray Mo', 9, 22, '139.99'),
(30, '3000030000', 'Altavoces Modelo 3', 10, 32, '89.99'),
(31, '3100031000', 'Auriculares Modelo 3', 11, 46, '69.99'),
(32, '3200032000', 'Monitor de Computadora Mo', 12, 38, '259.99'),
(33, '3300033000', 'Teclado Inalámbrico Model', 13, 29, '29.99'),
(34, '3400034000', 'Mouse Óptico Modelo 3', 14, 45, '19.99'),
(35, '3500035000', 'Impresora Multifunción Mo', 15, 40, '189.99'),
(36, '3600036000', 'Teléfono Inteligente Mode', 16, 37, '579.99'),
(37, '3700037000', 'Tablet Modelo 4', 17, 48, '319.99'),
(38, '3800038000', 'Cámara Digital Modelo 4', 18, 20, '269.99'),
(39, '3900039000', 'Smart TV Modelo 4', 19, 29, '699.99'),
(40, '4000040000', 'Reproductor de Blu-ray Mo', 20, 40, '119.99'),
(41, '4100041000', 'Altavoces Modelo 4', 1, 40, '79.99'),
(42, '4200042000', 'Auriculares Modelo 4', 2, 25, '54.99'),
(43, '4300043000', 'Monitor de Computadora Mo', 3, 20, '239.99'),
(44, '4400044000', 'Teclado Inalámbrico Model', 4, 35, '39.99'),
(45, '4500045000', 'Mouse Óptico Modelo 4', 5, 30, '29.99'),
(46, '4600046000', 'Impresora Multifunción Mo', 6, 40, '179.99'),
(47, '4700047000', 'Teléfono Inteligente Mode', 7, 30, '529.99'),
(48, '4800048000', 'Tablet Modelo 5', 1, 25, '299.99'),
(49, '4900049000', 'Cámara Digital Modelo 5', 9, 40, '239.99'),
(50, '5000050000', 'Smart TV Modelo 5', 10, 45, '799.99');

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `ruc` varchar(25) DEFAULT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id`, `ruc`, `nombre`, `telefono`, `direccion`) VALUES
(1, '20454721323', 'LAPTOPS PERU', '998877665', 'Los Olivos, Lima, Perú'),
(2, '20509163759', 'IMPRESORAS S.A.C', '012217021', 'Surquillo, Lima, Perú'),
(3, '20552487967', 'TABLET STORE', '013212140 ', 'La Victoria, Lima, Perú'),
(4, '12345678901', 'ELECTRO WORLD', '013456789', 'Miraflores, Lima, Perú'),
(5, '98765432109', 'GADGET KING', '919876543', 'San Isidro, Lima, Perú'),
(6, '45678901234', 'DIGITAL HAVEN', '014567890', 'Barranco, Lima, Perú'),
(7, '56789012345', 'TECHNO MART', '015678901', 'Lince, Lima, Perú'),
(8, '67890123456', 'ELECTRONIX', '016789012', 'Surco, Lima, Perú'),
(9, '78901234567', 'GIZMO GALORE', '017890123', 'San Borja, Lima, Perú'),
(10, '89012345678', 'ELECTRO ZONE', '018901234', 'Chorrillos, Lima, Perú'),
(11, '90123456789', 'TECH WORLD', '019012345', 'San Miguel, Lima, Perú'),
(12, '23456789012', 'GADGET STORE', '014567890', 'Callao, Lima, Perú'),
(13, '34567890123', 'ELECTRONIC HUB', '015678901', 'Jesús María, Lima, Perú'),
(14, '45678901234', 'TECH SPOT', '016789012', 'Pueblo Libre, Lima, Perú'),
(15, '56789012345', 'GIZMO MART', '917890123', 'Surquillo, Lima, Perú'),
(16, '67890123456', 'DIGITAL GALLERY', '916789012', 'Magdalena, Lima, Perú'),
(17, '78901234567', 'ELECTRO CITY', '914567890', 'Breña, Lima, Perú'),
(18, '89012345678', 'TECH HUB', '915678901', 'Surquillo, Lima, Perú'),
(19, '90123456789', 'GADGET ZONE', '916789012', 'San Juan de Miraflores, L'),
(20, '23456789012', 'ELECTRONIC MART', '014567890', 'Santa Anita, Lima, Perú');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `correo` varchar(25) DEFAULT NULL,
  `pass` varchar(25) DEFAULT NULL,
  `rol` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `pass`, `rol`) VALUES
(1, 'Juan Perez', 'JuanPerez@mail.com', 'abc', 'admin'),
(2, 'Alexander Caballero', 'frealcale@gmail.com', 'clave', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente` int(11) DEFAULT NULL,
  `vendedor` varchar(25) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ventas`
--

INSERT INTO `ventas` (`id`, `cliente`, `vendedor`, `total`, `fecha`) VALUES
(1, 3, 'Alexander Caballero', '359.98', '2023-09-16'),
(2, 10, 'Alexander Caballero', '779.97', '2023-09-16'),
(3, 9, 'Alexander Caballero', '559.94', '2023-09-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
