-- Funciones 
-- Funcion (1)
delimiter //
create function fn_cargar_nuevo_cliente (nom_nuevo varchar(25), ape_nuevo varchar(25), d_nuevo varchar(15), f_nac_nuevo date,
										e_nuevo varchar(30), tel_nuevo varchar(15)) 
returns varchar(50)
reads sql data
begin 
	insert into cliente (nombre, apellido, dni, fecha_nac, email, telefono)
    values (nom_nuevo, ape_nuevo, d_nuevo, f_nac_nuevo, e_nuevo, tel_nuevo);
    return null;
end //
delimiter ;
-- Funcion (2)
delimiter //
create function fn_intinerario_desc_dura (nom_iti varchar(25)) returns varchar(100) 
reads sql data
begin
	declare v_descripcion varchar(50);
    declare v_duracion int;
    declare v_precio decimal(10, 0);
    declare resultado varchar(255);
	if nom_iti <> '' then 
		select descripcion, duracion, precio 
        into v_descripcion, v_duracion, v_precio
        from itinerario i
        where i.nombre = nom_iti;
        set resultado = concat('Descripcion: ',v_descripcion,' Duracion: ',v_duracion, ' Precio: ', v_precio);
        return resultado;
	else
		return 'Debe ingresar un nombre de itinerario';
	end if;
end //
delimiter ;