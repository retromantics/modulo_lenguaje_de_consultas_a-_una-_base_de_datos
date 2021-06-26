create database PruebaModulo2 ;
use PruebaModulo2;

create table Producto (
idProducto int auto_increment,
NombreProducto varchar (30),
Descripcion int,
Precio int,
Stock int,
primary key (idProducto)
);

alter table Producto modify Descripcion varchar (100);

insert into Producto (NombreProducto, Descripcion, Precio, Stock) values
('Camiseta',' Camiseta negra simple de talla única', 10, 16), 
('Pantalón' ,'Pantalón largo azul tipo chino' ,20 ,24 ),
('Gorra', 'Gorra azul con el logo de los Yankees', 15, 32), 
('Zapatillas ','Zapatillas de running de color blanco y verde ',35, 13);

-- 1.- Recuperar TODOS los datos de la tabla Productos (sin condición)
select * from Producto;

-- 2.- Recuperar los datos de la fila donde  el nombre del producto sea “Camiseta”.
select * from Producto where nombre ='Camiseta';

-- 3.- Recuperar los datos de las filas donde Stock sea menor que 20
select * from Producto where stock <20;

-- 4.- Recuperar los datos de la fila con ProductoID 3
select  * from Producto where idProducto =3;

-- 5.- Eliminar las filas de productos donde el stock sea mayor o igual a 20
 delete  from Producto where stock  >=20;