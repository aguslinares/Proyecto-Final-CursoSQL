-- Triggers 
-- Trigger (1) 
create table log_audit_upd_plan (
id_log int auto_increment primary key,
fecha_upd date,
usuario varchar(50),
id_actividad int,
id_itinerario int,
f_d_vieja date,
f_h_vieja date,
f_d_nueva date,
f_h_nueva date );
delimiter //
create trigger `trg_before_upd_plan` 
before update on plan 
for each row 
begin
	insert into dbproyectofinal.log_audit_upd_plan(fecha_upd, usuario, id_actividad, id_itinerario, 
													f_d_vieja, f_h_vieja, f_d_nueva, f_h_nueva)
    values(now(), current_user(), old.id_actividad, old.id_itinerario, old.fechaDesde, old.fechaHasta, 
			new.fechaDesde, new.fechaHasta);
end //
delimiter ;
-- Trigger (2)
create table log_audit_delete_cabana (
id_log int auto_increment primary key,
fecha_delete date,
usuario varchar(50),
id_cabana int,
nombre_cabana varchar(50));
delimiter //
create trigger `trg_after_delete_cabana` 
after delete on cabana 
for each row 
begin
	insert into dbproyectofinal.log_audit_delete_cabana(fecha_delete, usuario, id_cabana, nombre_cabana)
    values(now(), current_user(), old.id_cabana, old.nombre);
end //
delimiter ;
