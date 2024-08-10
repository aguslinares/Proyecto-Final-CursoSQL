-- Creacion de usuarios
use dbproyectofinal;
CREATE USER IF NOT EXISTS operador1 IDENTIFIED BY 'operador1'; -- Cree un nuevo usuario con una contraseña.
GRANT SELECT ON *.* TO 'operador1'; -- Al usuario operador1 le di permiso de lectura de todas las tablas de mis base de datos.
CREATE USER IF NOT EXISTS operador2 IDENTIFIED BY 'operador2'; -- Cree otro usuario con otra constraseña.
GRANT SELECT, INSERT, UPDATE ON dbproyectofinal.cliente TO 'operador2'; -- Al usuario operador2 le di permiso de lectura, inserción y modificación de la tabla cliente
GRANT SELECT, INSERT, UPDATE ON dbproyectofinal.cabana	TO 'operador2'; -- Al usuario operador2 le di permiso de lectura, inserción y modificación de la tabla cabana



