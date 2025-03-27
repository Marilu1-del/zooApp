-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-03-2025 a las 07:46:43
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
-- Base de datos: `zoologico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animales`
--

CREATE TABLE `animales` (
  `AnimalID` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `especie` varchar(100) NOT NULL,
  `clase` varchar(50) DEFAULT NULL,
  `orden` varchar(30) DEFAULT NULL,
  `familia` varchar(30) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `alimentacion` varchar(30) DEFAULT NULL,
  `distribucion` varchar(100) DEFAULT NULL,
  `peso` int(4) DEFAULT NULL,
  `talla` int(4) DEFAULT NULL,
  `gestacion` int(4) DEFAULT NULL,
  `crias` int(3) DEFAULT NULL,
  `imagen` varchar(255) NOT NULL,
  `TratamientoID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `animales`
--

INSERT INTO `animales` (`AnimalID`, `nombre`, `especie`, `clase`, `orden`, `familia`, `descripcion`, `alimentacion`, `distribucion`, `peso`, `talla`, `gestacion`, `crias`, `imagen`, `TratamientoID`) VALUES
(4, 'Hipopotamo', 'Hippopotamus amphibus', 'Mamifero', 'Herviboro', 'Osos', 'Su piel es de color cafe oscuroso grisaseo, casi no teine pelo y es muy deliacada', 'Pasto en la orilla del rio ', 'Rios en todas las regiones de Africa, excepto el norte', 2500, 4, 227, 1, 'hipopotamo.jpg', NULL),
(5, 'Pecarí de los labios blancos', 'Tayassu pecari', 'Mamiferos', 'Artiodactilos', 'Tayasuidos', 'Parece un pequeño puerco salvaje de cuerpo delgado cabeza grande y piernas cortas', 'Omnivoro', 'Bosques, selvas y desiertos del sureste de México y Argentina', 25, 129, 141, 2, 'pecari.jfif', NULL),
(6, 'Chimpance', 'Pantraglodytes', 'Mamiferos', 'Primates', 'Hominidae', 'Esta especie posee brazos largos y partas cortas, tienen orejas prominentes la cara de los adultos es de color negra o marrón', 'Frutas', 'Bosques tropicales de África central. Se encuentran desde Gambia en el Oreste hasta Uganda', 70, 64, 250, 2, 'chimpance.jfif', NULL),
(7, 'León Africano', 'Panthera leo ', 'Mamiferos', 'Carnivoros', 'Felidos', 'Pelaje amarillento rojizo, blanco en la panza y en el interior de las patas, Tiene la cabeza grande y ancha y en los machos adultos existe una melena grande.', 'Cabras, antilopes', 'Las sabanas del continente Africano ', 120, 110, 116, 4, 'Leon.jpg', NULL),
(8, 'Bufalo cafre', 'Syncerus caffer', 'Mamiferos', 'Artiodactyla', 'Bovidae', 'Es un bouvino de corpulento, ambos sexos presentan cuernos, los cuales son gruesos y muy desarrollados curveandose hacia arriba', 'Patos, hojas y hierbas', 'Sabanas de África se distribuyen sobre todo en el este como en el centro del continente', 700, 2, 330, 1, 'Bufalo.jfif', NULL),
(9, 'Lobo marino patagónico ', 'Otaria flavescens', 'Mamiferos', 'Carnivora', 'Mamiferos', 'Posee un pelaje color castaño a amarillo con algunas marcas pálidas al rededor de la cabeza los lados dorsales las cuales presentan una coloración amarilla', 'Peces, cefalopodos', 'Costas australes de Sudamérica', 200, 2, 357, 1, 'LoboMarino.jfif', NULL),
(10, 'Mapache', 'Procyon lotar', ' Mamiferos', 'Carnivoros', 'Procyonidae', 'es un mamífero omnívoro, nocturno, originario de América. Se caracteriza por su máscara facial, su cola anillada y sus patas delanteras con cinco dedos. ', 'frutas, nueces', 'Bosques y campos cerca del agua desde Canadá hasta Panamá', 2, 60, 70, 4, 'mapache.jpg', NULL),
(11, 'Borrego cimarrón', 'Ovis canadensis', 'Mammalia', 'Artiodactyla', 'Bovidae', ' El borrego cimarrón es conocido por sus grandes cuernos curvados, que son más prominentes en los machos. Tienen un pelaje marrón claro que les ayuda a camuflarse en su entorno rocoso.', 'herbívoros , hierbas y arbusto', ' Originalmente se encuentran en las regiones montañosas de América del Norte, desde Canadá hasta Méx', 89, 2, 6, 2, 'Borrego_Cimarron.jfif', NULL),
(12, 'Aguililla cola roja', ' Buteo jamaicensis', 'Aves', 'Accipitriformes', 'Accipitridae', 'Es una rapaz de tamaño mediano a grande, conocida por su cola rojiza característica en los adultos. Tiene un plumaje variado, generalmente marrón oscuro en la parte superior y más claro en la inferior', 'aves, reptiles', 'Se encuentra en una amplia variedad de hábitats en América del Norte, Central y del Sur, desde bosqu', 1, 50, 0, 3, 'aguillila.jfif', NULL),
(13, 'Caracara quebrantahuesos', 'Caracara plancus', 'Aves', 'Falconiformes', 'Falconidae', 'Es un ave rapaz de tamaño mediano, con un plumaje principalmente marrón oscuro y blanco en la cabeza y el cuello. Tiene un pico fuerte y patas robustas.', ' animales, insectos y frutas.', 'Desde el sur de los Estados Unidos hasta América del Sur, en hábitats abiertos como sabanas y desier', 1, 60, 0, 4, 'caraca.jfif', NULL),
(14, 'Pecarí de collar', 'Pecari tajacu', 'Mammalia', 'Artiodactyla', 'Tayassuidae', 'El pecarí de collar es un mamífero similar a un cerdo, pero no está estrechamente relacionado con los cerdos verdaderos.', ' frutas, raíces', 'Se encuentran desde el suroeste de los Estados Unidos hasta América del Sur, en hábitats como bosque', 30, 100, 145, 3, 'pecaricollar.jfif', NULL),
(15, 'Jaguar', 'Panthera onca', 'Mammalia', 'Carnivoros', 'Felidae', 'El jaguar es el felino más grande de América y el tercero en el mundo, después del tigre y el león. Tiene un pelaje amarillo dorado con manchas negras en forma de rosetas. Es conocido por su fuerza y ', 'ciervos, pecaríes', 'Se encuentra desde el sur de los Estados Unidos hasta el norte de Argentina, en hábitats como selvas', 70, 2, 110, 4, 'JAGUAR.jfif', NULL),
(16, 'Coyote', 'Canis latrans\r\n\r\n', 'Mammalia', 'Carnivoros', 'Canidae', ' El coyote es un mamífero carnívoro de tamaño mediano, similar a un perro pequeño. Tiene un pelaje grisáceo o marrón claro, con un hocico delgado y orejas puntiagudas. Es conocido por su adaptabilidad', 's omnívoro y se alimenta de un', 'Se encuentra en una amplia gama de hábitats en América del Norte y Central, desde desiertos hasta bo', 20, 1, 60, 2, 'Coyote.jfif', NULL),
(17, 'Jirafa reticulada', 'Giraffa reticulata', 'Mamifero', 'Artiodactyla', 'Giraffidae', 'Subespecie de jirafa con patrón de manchas poligonales blancas. Es el animal terrestre más alto.', 'Hojas de acacia y otras planta', 'Norte y noreste de Kenia, sur de Somalia y Etiopía.', 1200, 550, 450, 1, 'jirafa.webp', NULL),
(18, 'Elefante africano', 'Loxodonta africana', 'Mamifero', 'Proboscidea', 'Elephantidae', 'El animal terrestre más grande. Orejas enormes, colmillos y trompa poderosa.', 'Hierbas, frutas, corteza y hoj', 'África subsahariana.', 6000, 400, 660, 1, 'elefante.jfif', NULL),
(19, 'Tigre de Bengala', 'Panthera tigris tigris', 'Mamifero', 'Carnivora', 'Felidae', 'Felino grande de pelaje anaranjado con rayas negras. Excelente nadador.', 'Ciervos, jabalíes, búfalos.', 'India, Bangladesh, Nepal y Bután.', 220, 300, 105, 3, 'tigre.jfif', NULL),
(20, 'Cebra de llanura', 'Equus quagga', 'Mamifero', 'Perissodactyla', 'Equidae', 'Equino africano con rayas negras y blancas. Muy social.', 'Hierbas y pasto.', 'África oriental y meridional.', 300, 150, 390, 1, 'zebra.jfif', NULL),
(21, 'Mono araña', 'Ateles geoffroyi', 'Mamifero', 'Primates', 'Atelidae', 'Primates con brazos largos y cola prensil. Ágiles y sociales.', 'Frutas, hojas y semillas.', 'Bosques tropicales de América Central.', 9, 50, 225, 1, 'monoaraña.jfif', NULL),
(22, 'Saraguato', 'Alouatta palliata', 'Mamifero', 'Primates', 'Atelidae', 'Mono aullador de gran tamaño, conocido por su potente voz.', 'Hojas, frutos y flores.', 'Selvas tropicales de América.', 7, 55, 190, 1, 'saraguat.jfif', NULL),
(23, 'Nutria de río', 'Lontra longicaudis', 'Mamifero', 'Carnivora', 'Mustelidae', 'Mamífero acuático ágil y juguetón, pelaje espeso.', 'Peces, crustáceos y ranas.', 'Ríos de América Central y del Sur.', 12, 100, 60, 2, 'nutria.jfif', NULL),
(24, 'Perrito de las praderas', 'Cynomys mexicanus', 'Mamifero', 'Rodentia', 'Sciuridae', 'Roedor social que vive en madrigueras comunales.', 'Hierbas y raíces.', 'Praderas del norte de México.', 1, 35, 35, 4, 'perrito de la pradera.jfif', NULL),
(25, 'Lobo marino de California', 'Zalophus californianus', 'Mamifero', 'Carnivora', 'Otariidae', 'Mamífero marino inteligente y ágil, entrenable.', 'Peces, calamares.', 'Costas del Pacífico de América del Norte.', 300, 250, 350, 1, 'lobomarinoCalifornio.jfif', NULL),
(26, 'Águila real', 'Aquila chrysaetos', 'Ave', 'Accipitriformes', 'Accipitridae', 'Ave rapaz de gran tamaño, símbolo nacional.', 'Mamíferos pequeños, aves y rep', 'Montañas de América del Norte y Eurasia.', 6, 95, 45, 2, 'Aguilareal.jfif', NULL),
(27, 'Guacamaya roja', 'Ara macao', 'Ave', 'Psittaciformes', 'Psittacidae', 'Ave colorida con plumaje rojo, azul y amarillo.', 'Frutas, semillas y nueces.', 'Selvas tropicales de América Central y del Sur.', 1, 85, 28, 2, 'guacamaya rojs.jfif', NULL),
(28, 'Tucán', 'Ramphastos sulfuratus', 'Ave', 'Piciformes', 'Ramphastidae', 'Ave con gran pico de colores, frugívora y vistosa.', 'Frutas principalmente, también', 'Selvas tropicales de América.', 1, 55, 18, 2, 'tucan.jfif', NULL),
(29, 'Gallina de Guinea', 'Numida meleagris', 'Ave', 'Galliformes', 'Numididae', 'Ave terrestre africana, plumaje moteado, domesticada.', 'Insectos, semillas y pequeños ', 'África subsahariana.', 1, 50, 28, 8, 'gallinadeguinea.jfif', NULL),
(30, 'Ganso egipcio', 'Alopochen aegyptiaca', 'Ave', 'Anseriformes', 'Anatidae', 'Ave acuática de colores marrón y beige, agresiva.', 'Hierbas, raíces y semillas.', 'África y zonas urbanas con lagos.', 3, 70, 28, 6, 'ganzoegipcio.jfif', NULL),
(31, 'Grulla coronada', 'Balearica regulorum', 'Ave', 'Gruiformes', 'Gruidae', 'Ave alta y elegante con penacho dorado en la cabeza.', 'Insectos, hierbas y semillas.', 'Humedales de África oriental.', 4, 100, 30, 2, 'grullacoronoda.jfif', NULL),
(32, 'Avestruz', 'Struthio camelus', 'Ave', 'Struthioniformes', 'Struthionidae', 'Ave más grande del mundo, no vuela, pero corre velozmente.', 'Plantas, semillas e insectos.', 'Sabana africana.', 120, 270, 42, 10, 'aveztruz.jfif', NULL),
(33, 'Boa constrictor', 'Boa constrictor', 'Reptil', 'Squamata', 'Boidae', 'Serpiente no venenosa que mata por constricción.', 'Mamíferos pequeños, aves, rept', 'Selvas húmedas de América.', 15, 300, 120, 50, 'boa.jfif', NULL),
(34, 'Cocodrilo americano', 'Crocodylus acutus', 'Reptil', 'Crocodylia', 'Crocodylidae', 'Gran reptil con mandíbula fuerte y hábitos acuáticos.', 'Peces, aves, mamíferos.', 'Zonas costeras de América.', 500, 500, 80, 30, 'cocodrilo.jfif', NULL),
(35, 'Iguana verde', 'Iguana iguana', 'Reptil', 'Squamata', 'Iguanidae', 'Reptil arborícola de color verde, común en climas tropicales.', 'Frutas, hojas y flores.', 'Selvas tropicales de América.', 4, 180, 90, 20, 'iguanaverde.jfif', NULL),
(36, 'Tortuga terrestre', 'Testudo graeca', 'Reptil', 'Testudines', 'Testudinidae', 'Reptil con caparazón duro, movimientos lentos.', 'Vegetación baja, frutas.', 'Zonas áridas del Mediterráneo.', 2, 30, 90, 5, 'tortugaterrestre.jfif', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `EventoID` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Responsable` varchar(100) NOT NULL,
  `Inscripciones` text DEFAULT NULL,
  `Detalles` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes`
--

CREATE TABLE `paquetes` (
  `PaqueteID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paquetes`
--

INSERT INTO `paquetes` (`PaqueteID`, `Nombre`, `Descripcion`) VALUES
(1, 'Combo Herpetario', 'Herpetario, Tren y Dinopark'),
(2, 'Combo Herpetario', 'Herpetario, Tren y Dinopark'),
(3, 'Combo Herpetario', 'Herpetario, Tren y Dinopark'),
(4, 'Combo aves', 'Herpetario y plática de aves'),
(5, 'Combo aves', 'Herpetario, Tren y Dinoparks'),
(6, 'Combo aves', 'Herpetario y plática de aves');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paqueteservicios`
--

CREATE TABLE `paqueteservicios` (
  `PaqueteID` int(11) NOT NULL,
  `ServicioID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `PersonalID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Rol` varchar(100) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telefono` int(10) DEFAULT NULL,
  `EventoID` int(11) DEFAULT NULL,
  `Acciones` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`PersonalID`, `Nombre`, `Rol`, `Email`, `Telefono`, `EventoID`, `Acciones`) VALUES
(1, 'Carmen Lopez', 'Veterinario', 'carmenr@gmail.com', 55181380, NULL, NULL),
(2, 'Eugenia Hernandez', 'Intendente', 'eugenia@gmail.com', 56704182, NULL, NULL),
(3, 'Eduardo Villanueva', 'Veterinario', 'eduardo@gmail.com', 55342421, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `ServicioID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

CREATE TABLE `tratamientos` (
  `TratamientoID` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `TipoTratamiento` varchar(100) NOT NULL,
  `Medicamentos` text DEFAULT NULL,
  `VeterinarioResponsable` varchar(150) NOT NULL,
  `Seguimiento` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tren`
--

CREATE TABLE `tren` (
  `TrenID` int(11) NOT NULL,
  `Disponibilidad` char(1) DEFAULT NULL,
  `Horario` date DEFAULT NULL,
  `EventoID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo_elect` varchar(100) NOT NULL,
  `ap_paterno` varchar(100) NOT NULL,
  `ap_materno` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo_elect`, `ap_paterno`, `ap_materno`, `telefono`) VALUES
(1, 'Edgar ', 'edd76828@gmail.com', 'Gomez', 'Cruz', '5536527775');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE `zonas` (
  `ZonaID` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text DEFAULT NULL,
  `Disponibilidad` char(1) DEFAULT NULL,
  `Imagen` varchar(255) NOT NULL,
  `AnimalID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`ZonaID`, `Nombre`, `Descripcion`, `Disponibilidad`, `Imagen`, `AnimalID`) VALUES
(2, 'Aviario', 'Lugar en el cual podrán encontrar todas las aves que tenemos en el zoológico', 'S', '67d88ea14f332_Aviario.jpg', NULL),
(3, 'Zona de Mamíferos', 'Área que alberga grandes felinos, herbívoros y otros mamíferos emblemáticos.', 'S', '67e4ee364bb29_fondo1.jpg', NULL),
(4, 'Zona de Aves', 'Espacio dedicado a la exhibición de aves exóticas y locales, con aviarios especializados.', 'S', '67e4ee720d0fc_animal5.jpg', NULL),
(5, 'Herpetario', 'Recinto especial para reptiles y anfibios, con ambientes controlados.', 'S', '67e4eea13bc5a_herpetario.jpg', NULL),
(6, 'Granja Didáctica', 'Zona interactiva con animales de granja, ideal para la educación infantil.', 'S', '67e4eee7c50d0_areaeducativa.jpg', NULL),
(7, 'Zona de Primates', 'Exhibición de distintas especies de monos y otros primates.', 'N', '67e4ef33b6bb5_animal13.jpg', NULL),
(8, 'Zona de Pequeños Mamíferos', 'Área para pequeños mamíferos como conejos, mapaches y otros similares.', 'S', '67e4ef54228d9_animal2.jpg', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animales`
--
ALTER TABLE `animales`
  ADD PRIMARY KEY (`AnimalID`),
  ADD KEY `TratamientoID` (`TratamientoID`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`EventoID`);

--
-- Indices de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`PaqueteID`);

--
-- Indices de la tabla `paqueteservicios`
--
ALTER TABLE `paqueteservicios`
  ADD PRIMARY KEY (`PaqueteID`,`ServicioID`),
  ADD KEY `ServicioID` (`ServicioID`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`PersonalID`),
  ADD KEY `EventoID` (`EventoID`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`ServicioID`);

--
-- Indices de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD PRIMARY KEY (`TratamientoID`);

--
-- Indices de la tabla `tren`
--
ALTER TABLE `tren`
  ADD PRIMARY KEY (`TrenID`),
  ADD KEY `EventoID` (`EventoID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD PRIMARY KEY (`ZonaID`),
  ADD KEY `AnimalID` (`AnimalID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animales`
--
ALTER TABLE `animales`
  MODIFY `AnimalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `EventoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paquetes`
--
ALTER TABLE `paquetes`
  MODIFY `PaqueteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `PersonalID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `ServicioID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  MODIFY `TratamientoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tren`
--
ALTER TABLE `tren`
  MODIFY `TrenID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
  MODIFY `ZonaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animales`
--
ALTER TABLE `animales`
  ADD CONSTRAINT `animales_ibfk_1` FOREIGN KEY (`TratamientoID`) REFERENCES `tratamientos` (`TratamientoID`);

--
-- Filtros para la tabla `paqueteservicios`
--
ALTER TABLE `paqueteservicios`
  ADD CONSTRAINT `paqueteservicios_ibfk_1` FOREIGN KEY (`PaqueteID`) REFERENCES `paquetes` (`PaqueteID`),
  ADD CONSTRAINT `paqueteservicios_ibfk_2` FOREIGN KEY (`ServicioID`) REFERENCES `servicios` (`ServicioID`);

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`EventoID`) REFERENCES `eventos` (`EventoID`);

--
-- Filtros para la tabla `tren`
--
ALTER TABLE `tren`
  ADD CONSTRAINT `tren_ibfk_1` FOREIGN KEY (`EventoID`) REFERENCES `eventos` (`EventoID`);

--
-- Filtros para la tabla `zonas`
--
ALTER TABLE `zonas`
  ADD CONSTRAINT `zonas_ibfk_1` FOREIGN KEY (`AnimalID`) REFERENCES `animales` (`AnimalID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
