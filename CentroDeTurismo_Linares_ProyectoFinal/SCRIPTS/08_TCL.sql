USE dbproyectofinal; 

-- Agrego 3 nuevos instructores 
INSERT INTO instructor (id_instructor, nombre, apellido, legajo, fecha_nac, email, telefono) VALUES
(16, 'Marta', 'López', 'LJ4567', '1985-03-22', 'marta.lopez@example.com', '123-456-7894'),
(17, 'Carlos', 'González', 'CG8901', '1990-07-15', 'carlos.gonzalez@example.com', '123-456-7895'),
(18, 'Lucía', 'Pérez', 'LP2345', '1987-11-05', 'lucia.perez@example.com', '123-456-7896');

START TRANSACTION; -- Inicio la transacción
DELETE FROM instructor WHERE id_instructor=16; -- Elimino los 3 registros creados 
DELETE FROM instructor WHERE id_instructor=17;
DELETE FROM instructor WHERE id_instructor=18;
SELECT * FROM instructor WHERE id_instructor =16; -- Utilizo el registro de id = 16 para probar que funcione
-- ROLLBACK; -- Puedo revertir los instructores que eliminé
-- COMMIT;  -- Guardo los cambios definitivamente

START TRANSACTION; -- Inicio la transacción
INSERT INTO cliente (id_cliente, nombre, apellido, dni, fecha_nac, email, telefono, direccion) VALUES -- Agrego los primero 4 clientes nuevos
(16, 'Sofía', 'Ramírez', '12345678A', '1992-08-14', 'sofia.ramirez@example.com', '555-1234', 'Calle Falsa 123, Ciudad A'),
(17, 'Miguel', 'Santos', '23456789B', '1988-04-22', 'miguel.santos@example.com', '555-5678', 'Av. Siempre Viva 742, Ciudad B'),
(18, 'Valentina', 'Pérez', '34567890C', '1995-12-01', 'valentina.perez@example.com', '555-8765', 'Calle de las Flores 23, Ciudad C'),
(19, 'Alejandro', 'Gómez', '45678901D', '1990-02-15', 'alejandro.gomez@example.com', '555-4321', 'Plaza Mayor 1, Ciudad D');
SAVEPOINT primerosCuatro; -- Agrego un punto de guardado para los primeros 4 
INSERT INTO cliente (id_cliente, nombre, apellido, dni, fecha_nac, email, telefono, direccion) VALUES -- Agrego los otros 4 clientes nuevos
(20, 'Camila', 'Martínez', '56789012E', '1985-06-18', 'camila.martinez@example.com', '555-8765', 'Calle del Sol 5, Ciudad E')
(21, 'Lucas', 'Fernández', '67890123F', '1993-09-30', 'lucas.fernandez@example.com', '555-9876', 'Avenida de la Luna 45, Ciudad F'),
(22, 'Daniela', 'Rodríguez', '78901234G', '1987-11-21', 'daniela.rodriguez@example.com', '555-5432', 'Calle de la Estrella 67, Ciudad G'),
(23, 'Gabriel', 'Hernández', '89012345H', '1991-05-03', 'gabriel.hernandez@example.com', '555-6543', 'Boulevard del Mar 89, Ciudad H');
SAVEPOINT segundosCuatro; -- Agrego un segundo punto de guardado
-- RELEASE SAVEPOINT primerosCuatro; -- Elimina el primer punto de guardado
