Select  id,nombre, apellidoP, apellidoM ,cargo, departamento,sueldo
from empleado 
order by sueldo desc 
limit 10;

Select  max(sueldo) ,id,nombre, apellidoP, apellidoM ,cargo, departamento
from empleado # no funciona

select * from empleado

Select  nombre, apellidoP, apellidoM ,cargo, departamento,sueldo
from empleado 
order by sueldo asc 
limit 1;

select count(id) , departamento 
from empleado
group by departamento;

select sum(sueldo) from empleado;

select count(idLibro ) , editorial 
from libro 
group by editorial


####
# Me ha servido para repasar algunos script que tenia en el olvido