create database control;
use control;

create table usuario(
	id int auto_increment,
    nombre varchar (30),
    apellido varchar (30),
    direccion varchar (100),
    primary key (id)
);

create table libro(
	id int auto_increment,
    isbn int,
    nombre varchar (100),
    primary key (id)
);

alter table usuario add column comuna varchar(30);
alter table libro add column autor varchar (50);

alter table libro modify column isbn varchar(20);

alter table usuario drop column direccion;
alter table libro drop column nombre;