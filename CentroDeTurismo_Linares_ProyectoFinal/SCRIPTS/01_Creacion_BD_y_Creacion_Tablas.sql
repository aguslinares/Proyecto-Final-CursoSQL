DROP SCHEMA IF EXISTS dbproyectofina;
CREATE SCHEMA IF NOT EXISTS dbproyectofinal;
USE dbproyectofinal;

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `dni` varchar(15) NOT NULL,
  `fecha_nac` date NOT NULL,
  `email` varchar(30) NOT NULL, 
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL,
   PRIMARY KEY AUTO_INCREMENT (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `cabana` (
  `id_cabana` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` decimal NOT NULL,
  PRIMARY KEY AUTO_INCREMENT(`id_cabana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `reserva` (
  `id_cliente` int NOT NULL,
  `id_cabana` int NOT NULL,	
  `fecha_incio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `montoTotal` decimal NOT NULL,
  CONSTRAINT `id_reserva` PRIMARY KEY AUTO_INCREMENT(`id_cliente`, `id_cabana`),
  CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_id_cabana` FOREIGN KEY (`id_cabana`) REFERENCES `cabana` (`id_cabana`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `itinerario` (
    `id_itinerario` int NOT NULL,
    `nombre` varchar(25) NOT NULL,
    `descripcion` varchar(50) NOT NULL,
    `duracion` int NOT NULL,
    `fechaHora_inicio` datetime NOT NULL,
    `fechaHora_fin` datetime NOT NULL,
    `precio` decimal NOT NULL,
	PRIMARY KEY AUTO_INCREMENT(`id_itinerario`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `instructor` (
  `id_instructor` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `legajo` varchar(15) NOT NULL,
  `fecha_nac` date NOT NULL,
  `email` varchar(30) NOT NULL, 
  `telefono` varchar(15) NOT NULL,
   PRIMARY KEY AUTO_INCREMENT (`id_instructor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `actividad` (
    `id_actividad` int NOT NULL,
    `nombre` varchar(25) NOT NULL,
	`descripcion` varchar(50) NOT NULL,
    `duracion` int NOT NULL,
    `min_edad` int NOT NULL,
    `id_instructor` int NOT NULL,
	PRIMARY KEY AUTO_INCREMENT(`id_actividad`),
	CONSTRAINT `fk_id_instructor` FOREIGN KEY (`id_instructor`) REFERENCES `instructor` (`id_instructor`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `compra` (
  `id_cliente` int NOT NULL,
  `id_itinerario` int NOT NULL,	
  `fechaHora_Ini` datetime NOT NULL,
  `fechaHora_Fin` datetime NOT NULL,
  `montoTotal` decimal NOT NULL,
  CONSTRAINT `id_compra` PRIMARY KEY AUTO_INCREMENT(`id_cliente`, `id_itinerario`),
  FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  FOREIGN KEY (`id_itinerario`) REFERENCES `itinerario` (`id_itinerario`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `plan` (
  `id_actividad` int NOT NULL,
  `id_itinerario` int NOT NULL,	
  `fechaDesde` date NOT NULL,
  `fechaHasta` date NOT NULL,
  CONSTRAINT `id_plan` PRIMARY KEY AUTO_INCREMENT(`id_actividad`, `id_itinerario`),
  CONSTRAINT `fk_id_actividad` FOREIGN KEY (`id_actividad`) REFERENCES `actividad` (`id_actividad`),
  CONSTRAINT `fk_id_itinerario` FOREIGN KEY (`id_itinerario`) REFERENCES `itinerario` (`id_itinerario`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;