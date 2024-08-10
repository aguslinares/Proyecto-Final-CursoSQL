CREATE DATABASE  IF NOT EXISTS `dbproyectofinal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbproyectofinal`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbproyectofinal
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Yoga','Clase de yoga matutina',60,18,1),(2,'Ciclismo','Ruta de ciclismo en montaña',120,18,2),(3,'Natación','Entrenamiento de natación',90,12,3),(4,'Escalada','Escalada en roca',180,15,4),(5,'Senderismo','Caminata por el bosque',240,10,5),(6,'Zumba','Clase de Zumba',60,16,6),(7,'Pilates','Sesión de Pilates',75,18,1),(8,'Tiro con arco','Práctica de tiro con arco',90,12,2),(9,'Kayak','Aventura en kayak',180,15,3),(10,'Pesca','Jornada de pesca',240,10,4),(11,'Buceo','Exploración submarina',120,18,5),(12,'Boxeo','Entrenamiento de boxeo',90,16,6),(13,'Correr','Carrera de resistencia',60,18,1),(14,'Escalada','Escalada en roca',120,15,2),(15,'Surf','Clase de surf',90,12,3);
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cabana`
--

LOCK TABLES `cabana` WRITE;
/*!40000 ALTER TABLE `cabana` DISABLE KEYS */;
INSERT INTO `cabana` VALUES (1,'Cabana Luna','Cabana con vista al lago',150),(2,'Cabana Sol','Cabana en la montaña',200),(3,'Cabana Estrella','Cabana cerca del bosque',180),(4,'Cabana Nube','Cabana en la playa',220),(5,'Cabana Mar','Cabana con piscina privada',250),(6,'Cabana Río','Cabana junto al río',170),(7,'Cabana Bosque','Cabana en medio del bosque',160),(8,'Cabana Montaña','Cabana con vista a la montaña',190),(9,'Cabana Valle','Cabana en el valle',140),(10,'Cabana Jardín','Cabana con jardín privado',210),(11,'Cabana Lago','Cabana con acceso al lago',230),(12,'Cabana Cielo','Cabana en las alturas',240),(13,'Cabana Arena','Cabana en la duna de arena',260),(14,'Cabana Brisa','Cabana con terraza',200),(15,'Cabana Horizonte','Cabana con vista panoramica',270);
/*!40000 ALTER TABLE `cabana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Carlos','Pérez','12345678','1990-01-01','carlos.perez@gmail.com','123456789','Calle del Prado 123, Ciudad X'),(2,'María','García','87654321','1985-02-14','maria.garcia@gmail.com','987654321','Avenida de la Paz 456, Ciudad Y'),(3,'Juan','Martínez','56789012','1995-03-25','juan.martinez@gmail.com','234567890','Calle Las Flores 789, Ciudad Z'),(4,'Ana','López','10987654','1980-04-10','ana.lopez@gmail.com','345678901','Calle Falsa 123, Ciudad A'),(5,'Luis','Hernández','43210987','1992-05-30','luis.hernandez@gmail.com','456789012','Av. Siempre Viva 742, Ciudad B'),(6,'Lucía','González','67890123','1988-06-15','lucia.gonzalez@gmail.com','567890123','Calle de las Flores 23, Ciudad C'),(7,'Miguel','Rodríguez','34567890','1978-07-20','miguel.rodriguez@gmail.com','678901234','Plaza Mayor 1, Ciudad D'),(8,'Carmen','Fernández','21098765','1993-08-05','carmen.fernandez@gmail.com','789012345','Calle del Sol 5, Ciudad E'),(9,'José','Sánchez','65432109','1987-09-17','jose.sanchez@gmail.com','890123456','Avenida de la Luna 45, Ciudad F'),(10,'Elena','Ramírez','78901234','1991-10-22','elena.ramirez@gmail.com','901234567','Calle de la Estrella 67, Ciudad G'),(11,'Pablo','Torres','89012345','1983-11-11','pablo.torres@gmail.com','012345678','Boulevard del Mar 89, Ciudad H'),(12,'Laura','Flores','12349876','1994-12-24','laura.flores@gmail.com','123456780','Calle del Río 11, Ciudad I'),(13,'David','Moreno','56780987','1989-01-18','david.moreno@gmail.com','234567891','Avenida Central 22, Ciudad J'),(14,'Sara','Jiménez','23456789','1986-02-02','sara.jimenez@gmail.com','345678902','Plaza del Sol 33, Ciudad K'),(15,'Jorge','Ruiz','89034567','1996-03-30','jorge.ruiz@gmail.com','456789013','Calle Luna 44, Ciudad L');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,4,'2023-07-01 08:00:00','2023-07-01 10:00:00',150),(2,1,'2023-07-02 09:00:00','2023-07-02 11:00:00',200),(3,4,'2023-07-03 10:00:00','2023-07-03 12:00:00',180),(4,2,'2023-07-04 11:00:00','2023-07-04 13:00:00',220),(5,3,'2023-07-05 12:00:00','2023-07-05 14:00:00',250),(6,9,'2023-07-06 13:00:00','2023-07-06 15:00:00',170),(7,10,'2023-07-07 14:00:00','2023-07-07 16:00:00',160),(8,8,'2023-07-08 15:00:00','2023-07-08 17:00:00',190),(9,5,'2023-07-09 16:00:00','2023-07-09 18:00:00',140),(10,6,'2023-07-10 17:00:00','2023-07-10 19:00:00',210),(11,11,'2023-07-11 18:00:00','2023-07-11 20:00:00',230),(12,12,'2023-07-12 19:00:00','2023-07-12 21:00:00',240),(13,13,'2023-07-13 20:00:00','2023-07-13 22:00:00',260),(14,12,'2023-07-14 21:00:00','2023-07-14 23:00:00',200),(15,7,'2023-07-15 22:00:00','2023-07-16 00:00:00',270);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Pedro','Domínguez','A001','1980-01-01','pedro.dominguez@gmail.com','123456789'),(2,'Luis','Gómez','A002','1975-02-14','luis.gomez@gmail.com','987654321'),(3,'Ana','Martínez','A003','1985-03-25','ana.martinez@gmail.com','234567890'),(4,'María','López','A004','1990-04-10','maria.lopez@gmail.com','345678901'),(5,'Carlos','García','A005','1982-05-30','carlos.garcia@gmail.com','456789012'),(6,'Lucía','Fernández','A006','1988-06-15','lucia.fernandez@gmail.com','567890123'),(7,'Miguel','Rodríguez','A007','1978-07-20','miguel.rodriguez@gmail.com','678901234'),(8,'Elena','Hernández','A008','1987-08-05','elena.hernandez@gmail.com','789012345'),(9,'José','Pérez','A009','1989-09-17','jose.perez@gmail.com','890123456'),(10,'Laura','Sánchez','A010','1981-10-22','laura.sanchez@gmail.com','901234567'),(11,'Pablo','Ramírez','A011','1983-11-11','pablo.ramirez@gmail.com','012345678'),(12,'David','Flores','A012','1994-12-24','david.flores@gmail.com','123456780'),(13,'Sara','Moreno','A013','1986-01-18','sara.moreno@gmail.com','234567891'),(14,'Jorge','Jiménez','A014','1984-02-02','jorge.jimenez@gmail.com','345678902'),(15,'Carmen','Ruiz','A015','1992-03-30','carmen.ruiz@gmail.com','456789013'),(16,'Marta','López','LJ4567','1985-03-22','marta.lopez@example.com','123-456-7894'),(17,'Carlos','González','CG8901','1990-07-15','carlos.gonzalez@example.com','123-456-7895'),(18,'Lucía','Pérez','LP2345','1987-11-05','lucia.perez@example.com','123-456-7896');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `itinerario`
--

LOCK TABLES `itinerario` WRITE;
/*!40000 ALTER TABLE `itinerario` DISABLE KEYS */;
INSERT INTO `itinerario` VALUES (1,'Tour de la Montaña','Excursión a la montaña',120,'2023-07-01 08:00:00','2023-07-01 10:00:00',150),(2,'Ruta del Bosque','Caminata por el bosque',180,'2023-07-02 09:00:00','2023-07-02 12:00:00',200),(3,'Paseo por el Lago','Tour en bote por el lago',90,'2023-07-03 10:00:00','2023-07-03 11:30:00',180),(4,'Aventura en la Playa','Día de playa y deportes acuáticos',240,'2023-07-04 11:00:00','2023-07-04 15:00:00',220),(5,'Exploración Submarina','Buceo en arrecifes',150,'2023-07-05 12:00:00','2023-07-05 14:30:00',250),(6,'Escalada en Roca','Escalada en montañas rocosas',180,'2023-07-06 13:00:00','2023-07-06 16:00:00',170),(7,'Safari Fotográfico','Tour de fotografía de fauna',210,'2023-07-07 14:00:00','2023-07-07 17:30:00',160),(8,'Caminata Nocturna','Caminata bajo las estrellas',120,'2023-07-08 15:00:00','2023-07-08 17:00:00',190),(9,'Tour Histórico','Visita a sitios históricos',240,'2023-07-09 16:00:00','2023-07-09 20:00:00',140),(10,'Ruta del Vino','Visita a viñedos y cata de vinos',180,'2023-07-10 17:00:00','2023-07-10 20:00:00',210),(11,'Exploración de Cuevas','Tour por cuevas subterráneas',120,'2023-07-11 18:00:00','2023-07-11 20:00:00',230),(12,'Aventura en el Río','Rafting y kayak en el río',180,'2023-07-12 19:00:00','2023-07-12 22:00:00',240),(13,'Tour de la Ciudad','Recorrido por la ciudad',90,'2023-07-13 20:00:00','2023-07-13 21:30:00',260),(14,'Aventura en el Desierto','Safari en el desierto',210,'2023-07-14 21:00:00','2023-07-15 00:30:00',200),(15,'Viaje a la Cascada','Excursión a la cascada',180,'2023-07-15 22:00:00','2023-07-16 01:00:00',270);
/*!40000 ALTER TABLE `itinerario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` VALUES (1,1,'2023-07-01','2023-07-01'),(2,2,'2023-07-02','2023-07-02'),(3,3,'2023-07-03','2023-07-03'),(4,4,'2023-07-04','2023-07-04'),(5,5,'2023-07-05','2023-07-05'),(6,6,'2023-07-06','2023-07-06'),(7,7,'2023-07-07','2023-07-07'),(8,8,'2023-07-08','2023-07-08'),(9,9,'2023-07-09','2023-07-09'),(10,10,'2023-07-10','2023-07-10'),(11,11,'2023-07-11','2023-07-11'),(12,12,'2023-07-12','2023-07-12'),(13,13,'2023-07-13','2023-07-13'),(14,14,'2023-07-14','2023-07-14'),(15,15,'2023-07-15','2023-07-15');
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,5,'2023-07-01','2023-07-02',150),(2,8,'2023-07-03','2023-07-05',400),(3,15,'2023-07-06','2023-07-07',180),(4,10,'2023-07-08','2023-07-10',440),(5,7,'2023-07-11','2023-07-14',750),(6,6,'2023-07-15','2023-07-17',340),(7,4,'2023-07-18','2023-07-20',320),(8,2,'2023-07-21','2023-07-24',570),(9,1,'2023-07-25','2023-07-27',280),(10,11,'2023-07-28','2023-07-31',630),(11,11,'2023-08-01','2023-08-04',690),(12,14,'2023-08-05','2023-08-08',720),(13,3,'2023-08-09','2023-08-12',780),(14,2,'2023-08-13','2023-08-15',600),(15,15,'2023-08-16','2023-08-18',810);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-10 19:18:24
