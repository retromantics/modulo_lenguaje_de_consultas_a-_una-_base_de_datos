create database SistemaInscripcion;
use SistemaInscripcion;

create table categoria(
idCategoria int auto_increment,
nombre varchar(30),
estado smallint,
primary key (idCategoria)
);

insert into categoria values(1,'Preparatoria',1);
insert into categoria values(2,'Infantil',1);
insert into categoria values(3,'Intermedia',1);


create table prueba(
idPrueba int auto_increment,
nombre varchar(30),
estado smallint,
idCategoria int,
primary key (idPrueba),
foreign key (idCategoria) references categoria(idCategoria)
);

insert into prueba values(1,'100 mts planos',1,3);
insert into prueba values(2,'Lanzamiento Pelotita',1,1);
insert into prueba values(3,'Lanzamiento Jabalina',1,3);
insert into prueba values(4,'Posta 5x80',1,1);
insert into prueba values(5,'60 mts planos',1,2);
insert into prueba values(6,'60 mts vallas',1,2);

create table campeonato(
idCampeonato int auto_increment,
nombre varchar (100),
fechaInicio datetime,
fechaTermina datetime,
estado smallint,
primary key (idCampeonato)                     
);

insert into campeonato values(202101151,'Interescolar Damas Viña del Mar', '2021-01-15', '2021-01-17',0);
insert into campeonato values(202101152,'Interescolar Varones Viña del Mar', '2021-01-15', '2021-01-17',0);
insert into campeonato values(202103151,'Interescolar Damas Osorno ','2021-01-15', '2021-01-17',0);
insert into campeonato values(202103152,'Interescolar Varones Osorno ','2021-03-15', '2021-03-17',0);
insert into campeonato values(202106151,'Interescolar Damas Santiago ',CURDATE() , '2021-01-17',0);
insert into campeonato values(202106152,'Interescolar Varones Santiago ',CURDATE() + INTERVAL 2 DAY, '2021-03-17',0);


create table programaHorario(
idHorario int auto_increment,
idCampeonato  int,
idPrueba int,
fecha datetime,
primary key (idHorario),
foreign key (idCampeonato) references campeonato(idCampeonato),
foreign key (idPrueba) references prueba (idPrueba)
);


insert into programaHorario values(1, 202101151,1,'2021-01-15 12:00');
insert into programaHorario values(2, 202101152,1,'2021-01-15 12:30');
insert into programaHorario values(3, 202106151,1,CURDATE());
insert into programaHorario values(4, 202106152,1,CURDATE() + interval 1 day);


create table institucion(
idInstitucion int auto_increment,
identificador varchar(30),
nombre varchar(50),
estado smallint,
primary key (idInstitucion)
);

insert into institucion values(101, 'ABC-34', 'Liceo Simon Bolivar', 1);
insert into institucion values(102, 'a44', 'Liceo Carmela Carvajal de Prat', 1);
insert into institucion values(103, 'A-432', 'Colegio Pablo Neruda', 1);
insert into institucion values(104, '344-1', 'Colegio Guardamarina Riquelme', 1);

create table atleta(
idAtleta int auto_increment,
rut varchar(20),
nombres varchar (50),
apellidos varchar (50),
fechaNacimiento datetime,
nacionalidad varchar(30),
estado smallint,
idInstitucion int,
primary key(idAtleta),
foreign key (idInstitucion) references institucion (idInstitucion));

insert into atleta values (1,'23640324-6','Juan', 'Perez', '2010-01-01','Chileno', 1, 101);
insert into atleta values (2,'23924996-5','Emilio', 'Bobadilla', '2012-03-16','Chileno', 1, 104);
insert into atleta values (3,'16456231-k','Camila', 'Campos', '1987-02-14','Chileno', 1, 102);

create table inscripcion(
idInscripcion int auto_increment,
idAtleta int,
idCampeonato int,
idPrueba int,
idInstitucion int,
primary key (idInscripcion),
foreign key (idAtleta) references atleta(idAtleta),
foreign key (idPrueba) references prueba (idPrueba),
foreign key(idCampeonato) references campeonato(idCampeonato),
foreign key (idInstitucion) references institucion (idInstitucion)
);

insert into inscripcion values (1,1,202101151,1, 101);
insert into inscripcion values (2,2,202101151,1, 104);
