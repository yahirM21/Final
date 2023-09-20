-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2023 a las 06:03:42
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(10, 'Desayunos'),
(11, 'Postres'),
(12, 'Cenas'),
(13, 'Snacks'),
(14, 'Platillo Fuerte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(9, 'Licuado', 'Lucado de frutas  con leche de almendras', '0.00', '0.00', 0, '20230528022852.jpg', 10),
(10, 'Hot Cake de frutas', 'Lo más importante en esta receta es que cuando tengas la mezcla, incluyas moras azules, fresas o moras. Verás cómo la mezcla se va compactando en la sartén y el resultado es delicioso. Lo puedes acompañar de maple y frutas a tu elección.  ', '0.00', '0.00', 0, '20230528024854.jpg', 10),
(11, 'Tortilla de Papa (Sin huevo)', 'Debemos de sustituir el huevo por harina de garbanzos y agua. De esta forma, lograremos darle un color muy similar y un sabor muy rico. ', '0.00', '0.00', 0, '20230528025335.jpg', 10),
(12, 'Brownie de Calabacin', 'El calabacín se oculta totalmente en la masa y no deja ningún sabor extraño, pero ayuda a mantener la miga húmeda y jugosa, tal y como yo espero que sea un buen brownie. Esta receta no es excesivamente dulce pero sí muy sabrosa, con el inconfundible sabor a chocolate.', '0.00', '0.00', 0, '20230528044821.jpg', 11),
(13, 'Pudin de Aguacate y Tahini', 'Gracias al tahini y el aguacate es un plato cargado de grasas saludables y con un potente sabor a cacao, que podemos potenciar aún más si reducimos la cantidad de dátiles que le añadimos para endulzar.', '0.00', '0.00', 0, '20230528044921.jpg', 11),
(14, 'Nieve de Platano', '. Este helado de solo dos ingredientes (platano y mantequilla de maní) es cremoso y está buenísimo. Además lo puedes preparar en un minuto si tienes congelado el plátano maduro de antemano.', '0.00', '0.00', 0, '20230528045618.jpg', 11),
(15, 'Batido Verde', 'La combinación básica es una taza de agua o de algún otro líquido, 1-2 piezas de fruta, un puñado de hojas verdes y 1-2 cucharadas de algún alimento rico en proteína como frutos secos.', '0.00', '0.00', 0, '20230528050641.jpg', 13),
(16, 'Yogur natural con frutos secos', 'Buscaremos en el supermercado yogur que sea del mas natural posible añadiendole frutos secos', '0.00', '0.00', 0, '20230528051152.jpg', 13),
(17, 'Paté de Alubias', 'Un paté vegetal es una merienda clásica si queremos sustituir el típico embutido. Necesitaremos 2 cucharadas de alubias blancas cocidas con 1 cucharada de pesto y ya está.', '0.00', '0.00', 0, '20230528051609.jpg', 13),
(18, 'Tofu Agridulce sobre arroz', 'El tofu general Tso es salado, dulce, picante y tan delicioso que probablemente irá directamente a su rotación regular de la cena. ¿Cómo servirlo? Con verduras (ajíes, cebollas, zanahoria, coles), hidratos (fideos y arroces) y semillas de sésamo.   ', '0.00', '0.00', 0, '20230528051759.jpg', 12),
(19, 'Chili Vegano', 'Chili vegano es una de las cenas veganas fáciles, más deliciosas y nutritivas que encontrarás. Aquí, también sumamos una excelente variedad de colores y sabores.', '0.00', '0.00', 0, '20230528051859.jpg', 12),
(20, 'Burritos de Veganos', 'Prepara la lista de ingredientes para hacer tu compra vegana y disfrutar de estos burritos con guacamole, vegetales variados, benditas coles, toda la proteína de las lentejas y el sabor de las especias.', '0.00', '0.00', 0, '20230528052208.jpg', 12),
(21, 'Croquetas Veganas', 'Ligeras, horneadas, crocantes por fuera y tiernas por dentro. Son ideales para preparar en tandas con diferentes vegetales. ', '0.00', '0.00', 0, '20230528052944.jpg', 14),
(22, 'Pasta Zucchini', 'Esta pasta vegana se cocina con pocos ingredientes y en poco tiempo. Admite todas las variantes que gustes. Si no es temporada de zucchini, sustitúyelo por otros vegetales.', '0.00', '0.00', 0, '20230528053046.jpg', 14),
(23, 'Pizza Vegana', 'Con esta base de masa integral, haz tus propias variantes pizzeras. La harina integral tiene más fibra que la harina común, para estupendas combinaciones llenas de tus veggies favoritos', '0.00', '0.00', 0, '20230528053157.jpg', 14),
(24, 'Risotto de Calabaza', 'Cremosa, dulce y súper original, esta receta sal estilo italiano es un éxito. A su vez, es un plato balanceado ya que incluye granos, vegetales y levadura nutricional con la que puedes preparar un delicioso parmesano en base a semillas.   ', '0.00', '0.00', 0, '20230528053234.jpg', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'yahir', 'Yahir Montes', '21232f297a57a5a743894a0e4a801fc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
