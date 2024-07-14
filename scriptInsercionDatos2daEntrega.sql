-- Insercion de datos en la tabla de Cabana 
INSERT INTO `cabana` (id_cabana, nombre, descripcion, precio) VALUES
(1, 'Cabana Luna', 'Cabana con vista al lago', 150),
(2, 'Cabana Sol', 'Cabana en la montaña', 200),
(3, 'Cabana Estrella', 'Cabana cerca del bosque', 180),
(4, 'Cabana Nube', 'Cabana en la playa', 220),
(5, 'Cabana Mar', 'Cabana con piscina privada', 250),
(6, 'Cabana Río', 'Cabana junto al río', 170),
(7, 'Cabana Bosque', 'Cabana en medio del bosque', 160),
(8, 'Cabana Montaña', 'Cabana con vista a la montaña', 190),
(9, 'Cabana Valle', 'Cabana en el valle', 140),
(10, 'Cabana Jardín', 'Cabana con jardín privado', 210),
(11, 'Cabana Lago', 'Cabana con acceso al lago', 230),
(12, 'Cabana Cielo', 'Cabana en las alturas', 240),
(13, 'Cabana Arena', 'Cabana en la duna de arena', 260),
(14, 'Cabana Brisa', 'Cabana con terraza', 200),
(15, 'Cabana Horizonte', 'Cabana con vista panorámica', 270);
-- Insercion de datos en la tabla de Cliente 
INSERT INTO `cliente` (id_cliente, nombre, apellido, dni, fecha_nac, email, telefono) VALUES
(1, 'Carlos', 'Pérez', '12345678', '1990-01-01', 'carlos.perez@gmail.com', '123456789'),
(2, 'María', 'García', '87654321', '1985-02-14', 'maria.garcia@gmail.com', '987654321'),
(3, 'Juan', 'Martínez', '56789012', '1995-03-25', 'juan.martinez@gmail.com', '234567890'),
(4, 'Ana', 'López', '10987654', '1980-04-10', 'ana.lopez@gmail.com', '345678901'),
(5, 'Luis', 'Hernández', '43210987', '1992-05-30', 'luis.hernandez@gmail.com', '456789012'),
(6, 'Lucía', 'González', '67890123', '1988-06-15', 'lucia.gonzalez@gmail.com', '567890123'),
(7, 'Miguel', 'Rodríguez', '34567890', '1978-07-20', 'miguel.rodriguez@gmail.com', '678901234'),
(8, 'Carmen', 'Fernández', '21098765', '1993-08-05', 'carmen.fernandez@gmail.com', '789012345'),
(9, 'José', 'Sánchez', '65432109', '1987-09-17', 'jose.sanchez@gmail.com', '890123456'),
(10, 'Elena', 'Ramírez', '78901234', '1991-10-22', 'elena.ramirez@gmail.com', '901234567'),
(11, 'Pablo', 'Torres', '89012345', '1983-11-11', 'pablo.torres@gmail.com', '012345678'),
(12, 'Laura', 'Flores', '12349876', '1994-12-24', 'laura.flores@gmail.com', '123456780'),
(13, 'David', 'Moreno', '56780987', '1989-01-18', 'david.moreno@gmail.com', '234567891'),
(14, 'Sara', 'Jiménez', '23456789', '1986-02-02', 'sara.jimenez@gmail.com', '345678902'),
(15, 'Jorge', 'Ruiz', '89034567', '1996-03-30', 'jorge.ruiz@gmail.com', '456789013');
-- Insercion de datos en la tabla de Reserva
INSERT INTO `reserva` (id_cliente, id_cabana, fecha_incio, fecha_fin, montoTotal) VALUES
(1, 5, '2023-07-01', '2023-07-02', 150),
(2, 8, '2023-07-03', '2023-07-05', 400),
(3, 15, '2023-07-06', '2023-07-07', 180),
(4, 10, '2023-07-08', '2023-07-10', 440),
(5, 7, '2023-07-11', '2023-07-14', 750),
(6, 6, '2023-07-15', '2023-07-17', 340),
(7, 4, '2023-07-18', '2023-07-20', 320),
(8, 2, '2023-07-21', '2023-07-24', 570),
(9, 1, '2023-07-25', '2023-07-27', 280),
(10, 11, '2023-07-28', '2023-07-31', 630),
(11, 11, '2023-08-01', '2023-08-04', 690),
(12, 14, '2023-08-05', '2023-08-08', 720),
(13, 3, '2023-08-09', '2023-08-12', 780),
(14, 2, '2023-08-13', '2023-08-15', 600),
(15, 15, '2023-08-16', '2023-08-18', 810);
-- Insercion de datos en la tabla Itinerario
INSERT INTO `itinerario` (id_itinerario, nombre, descripcion, duracion, fechaHora_inicio, fechaHora_fin, precio) VALUES
(1, 'Tour de la Montaña', 'Excursión a la montaña', 120, '2023-07-01 08:00:00', '2023-07-01 10:00:00', 150),
(2, 'Ruta del Bosque', 'Caminata por el bosque', 180, '2023-07-02 09:00:00', '2023-07-02 12:00:00', 200),
(3, 'Paseo por el Lago', 'Tour en bote por el lago', 90, '2023-07-03 10:00:00', '2023-07-03 11:30:00', 180),
(4, 'Aventura en la Playa', 'Día de playa y deportes acuáticos', 240, '2023-07-04 11:00:00', '2023-07-04 15:00:00', 220),
(5, 'Exploración Submarina', 'Buceo en arrecifes', 150, '2023-07-05 12:00:00', '2023-07-05 14:30:00', 250),
(6, 'Escalada en Roca', 'Escalada en montañas rocosas', 180, '2023-07-06 13:00:00', '2023-07-06 16:00:00', 170),
(7, 'Safari Fotográfico', 'Tour de fotografía de fauna', 210, '2023-07-07 14:00:00', '2023-07-07 17:30:00', 160),
(8, 'Caminata Nocturna', 'Caminata bajo las estrellas', 120, '2023-07-08 15:00:00', '2023-07-08 17:00:00', 190),
(9, 'Tour Histórico', 'Visita a sitios históricos', 240, '2023-07-09 16:00:00', '2023-07-09 20:00:00', 140),
(10, 'Ruta del Vino', 'Visita a viñedos y cata de vinos', 180, '2023-07-10 17:00:00', '2023-07-10 20:00:00', 210),
(11, 'Exploración de Cuevas', 'Tour por cuevas subterráneas', 120, '2023-07-11 18:00:00', '2023-07-11 20:00:00', 230),
(12, 'Aventura en el Río', 'Rafting y kayak en el río', 180, '2023-07-12 19:00:00', '2023-07-12 22:00:00', 240),
(13, 'Tour de la Ciudad', 'Recorrido por la ciudad', 90, '2023-07-13 20:00:00', '2023-07-13 21:30:00', 260),
(14, 'Aventura en el Desierto', 'Safari en el desierto', 210, '2023-07-14 21:00:00', '2023-07-15 00:30:00', 200),
(15, 'Viaje a la Cascada', 'Excursión a la cascada', 180, '2023-07-15 22:00:00', '2023-07-16 01:00:00', 270);
-- Insercion de datos en la tabla Compra 
INSERT INTO `compra` (id_cliente, id_itinerario, fechaHora_Ini, fechaHora_Fin, montoTotal) VALUES
(1, 4, '2023-07-01 08:00:00', '2023-07-01 10:00:00', 150),
(2, 1, '2023-07-02 09:00:00', '2023-07-02 11:00:00', 200),
(3, 4, '2023-07-03 10:00:00', '2023-07-03 12:00:00', 180),
(4, 2, '2023-07-04 11:00:00', '2023-07-04 13:00:00', 220),
(5, 3, '2023-07-05 12:00:00', '2023-07-05 14:00:00', 250),
(6, 9, '2023-07-06 13:00:00', '2023-07-06 15:00:00', 170),
(7, 10, '2023-07-07 14:00:00', '2023-07-07 16:00:00', 160),
(8, 8, '2023-07-08 15:00:00', '2023-07-08 17:00:00', 190),
(9, 5, '2023-07-09 16:00:00', '2023-07-09 18:00:00', 140),
(10, 6, '2023-07-10 17:00:00', '2023-07-10 19:00:00', 210),
(11, 11, '2023-07-11 18:00:00', '2023-07-11 20:00:00', 230),
(12, 12, '2023-07-12 19:00:00', '2023-07-12 21:00:00', 240),
(13, 13, '2023-07-13 20:00:00', '2023-07-13 22:00:00', 260),
(14, 12, '2023-07-14 21:00:00', '2023-07-14 23:00:00', 200),
(15, 7, '2023-07-15 22:00:00', '2023-07-16 00:00:00', 270);
-- Insercion de datos en la tabla Instructor 
INSERT INTO `instructor` (id_instructor, nombre, apellido, legajo, fecha_nac, email, telefono) VALUES
(1, 'Pedro', 'Domínguez', 'A001', '1980-01-01', 'pedro.dominguez@gmail.com', '123456789'),
(2, 'Luis', 'Gómez', 'A002', '1975-02-14', 'luis.gomez@gmail.com', '987654321'),
(3, 'Ana', 'Martínez', 'A003', '1985-03-25', 'ana.martinez@gmail.com', '234567890'),
(4, 'María', 'López', 'A004', '1990-04-10', 'maria.lopez@gmail.com', '345678901'),
(5, 'Carlos', 'García', 'A005', '1982-05-30', 'carlos.garcia@gmail.com', '456789012'),
(6, 'Lucía', 'Fernández', 'A006', '1988-06-15', 'lucia.fernandez@gmail.com', '567890123'),
(7, 'Miguel', 'Rodríguez', 'A007', '1978-07-20', 'miguel.rodriguez@gmail.com', '678901234'),
(8, 'Elena', 'Hernández', 'A008', '1987-08-05', 'elena.hernandez@gmail.com', '789012345'),
(9, 'José', 'Pérez', 'A009', '1989-09-17', 'jose.perez@gmail.com', '890123456'),
(10, 'Laura', 'Sánchez', 'A010', '1981-10-22', 'laura.sanchez@gmail.com', '901234567'),
(11, 'Pablo', 'Ramírez', 'A011', '1983-11-11', 'pablo.ramirez@gmail.com', '012345678'),
(12, 'David', 'Flores', 'A012', '1994-12-24', 'david.flores@gmail.com', '123456780'),
(13, 'Sara', 'Moreno', 'A013', '1986-01-18', 'sara.moreno@gmail.com', '234567891'),
(14, 'Jorge', 'Jiménez', 'A014', '1984-02-02', 'jorge.jimenez@gmail.com', '345678902'),
(15, 'Carmen', 'Ruiz', 'A015', '1992-03-30', 'carmen.ruiz@gmail.com', '456789013');
-- Insercion de datos en la tabla Actividad
INSERT INTO `actividad` (id_actividad, nombre, descripcion, duracion, min_edad, id_instructor) VALUES
(1, 'Yoga', 'Clase de yoga matutina', 60, 18, 1),
(2, 'Ciclismo', 'Ruta de ciclismo en montaña', 120, 18, 2),
(3, 'Natación', 'Entrenamiento de natación', 90, 12, 3),
(4, 'Escalada', 'Escalada en roca', 180, 15, 4),
(5, 'Senderismo', 'Caminata por el bosque', 240, 10, 5),
(6, 'Zumba', 'Clase de Zumba', 60, 16, 6),
(7, 'Pilates', 'Sesión de Pilates', 75, 18, 1),
(8, 'Tiro con arco', 'Práctica de tiro con arco', 90, 12, 2),
(9, 'Kayak', 'Aventura en kayak', 180, 15, 3),
(10, 'Pesca', 'Jornada de pesca', 240, 10, 4),
(11, 'Buceo', 'Exploración submarina', 120, 18, 5),
(12, 'Boxeo', 'Entrenamiento de boxeo', 90, 16, 6),
(13, 'Correr', 'Carrera de resistencia', 60, 18, 1),
(14, 'Escalada', 'Escalada en roca', 120, 15, 2),
(15, 'Surf', 'Clase de surf', 90, 12, 3);
-- Insercion de datos en la tabla Plan
INSERT INTO `plan` (id_actividad, id_itinerario, fechaDesde, fechaHasta) VALUES
(1, 1, '2023-07-01', '2023-07-01'),
(2, 2, '2023-07-02', '2023-07-02'),
(3, 3, '2023-07-03', '2023-07-03'),
(4, 4, '2023-07-04', '2023-07-04'),
(5, 5, '2023-07-05', '2023-07-05'),
(6, 6, '2023-07-06', '2023-07-06'),
(7, 7, '2023-07-07', '2023-07-07'),
(8, 8, '2023-07-08', '2023-07-08'),
(9, 9, '2023-07-09', '2023-07-09'),
(10, 10, '2023-07-10', '2023-07-10'),
(11, 11, '2023-07-11', '2023-07-11'),
(12, 12, '2023-07-12', '2023-07-12'),
(13, 13, '2023-07-13', '2023-07-13'),
(14, 14, '2023-07-14', '2023-07-14'),
(15, 15, '2023-07-15', '2023-07-15');




