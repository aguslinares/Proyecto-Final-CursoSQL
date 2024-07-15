-- Procedimientos
-- Procedimiento (1)
delimiter //
create procedure sp_cabanas_disponibles (in presupuesto decimal(10,0)) 
begin 
if presupuesto is not null then
    select nombre, descripcion, precio
    from cabana c
    where c.precio <= presupuesto;
else 
	select 'Debe ingresar un presupuesto' as mensaje;
end if; 
end //
delimiter ;
-- Procedimiento (2)
drop procedure sp_actividades_por_instructor;
delimiter //
create procedure sp_actividades_por_instructor (in legajo_instructor varchar(15))
begin
    select a.id_actividad, a.nombre, a.descripcion, a.duracion, a.min_edad
    from actividad a inner join instructor i on a.id_instructor = i.id_instructor
    where legajo_instructor = i.legajo;
end //
delimiter ;