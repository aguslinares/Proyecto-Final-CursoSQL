-- Vistas 
-- Vista (1)
create view vw_datos_instructor_a_cargo as
select distinct i.nombre, i.apellido, i.legajo, i.email
from instructor i inner join actividad a on 
i.id_instructor = a.id_instructor 
where id_actividad in (select id_actividad from plan);
-- Vista (2) 
create view vw_descuentos_a_clientes as 
select distinct c.nombre, c.apellido, c.dni, c.email
from cliente c inner join reserva r on 
c.id_cliente = r.id_cliente 
where id_cabana in (select id_cabana from cabana where precio > 200);
-- Vista (3)
create view vw_itinerario_mas_pedido as
select i.id_itinerario, i.nombre, COUNT(*) as frecuencia
from itinerario i inner join compra c on 
i.id_itinerario = c.id_itinerario
group by i.id_itinerario, i.nombre order by frecuencia desc
LIMIT 1;
-- Vista (4)
create view vw_clientes_cumpleanos as
select c.nombre, c.apellido, c.dni, c.email
from cliente c
where month(fecha_nac) = month(current_date());
-- Vista (5)
create view vw_temporada_alta as
select monthname(fecha_incio) as nombreFecha, count(fecha_incio) as frecuencia
from reserva 
group by nombreFecha order by frecuencia desc
limit 2;