
create database Ejercicios;
use Ejercicios;

CREATE TABLE `Empleado` (
  `id` int auto_increment,
  `nombre` varchar(255) ,
  `apellidoP` varchar(255) ,
  `apellidoM` varchar(255) ,
  `edad` int ,
  `cargo` varchar(255),
  `departamento` varchar(255),
  `sueldo` int,
  `fecIngreso` date,
  PRIMARY KEY (`id`)
) ;

INSERT INTO Empleado (id,nombre,apellidoP,apellidoM,edad,cargo,departamento,sueldo,fecIngreso) VALUES (1,"Xena","Green","Finch",60,"Ingeniero","Operadiones",1282858,"2020-08-25 09:32:04"),(2,"Tanya","Herman","Miller",64,"Ingeniero","Operawiones",2158454,"2022-02-09 09:35:49"),(3,"Raven","Howard","Kirby",81,"Ingeniero","Operaviones",601453,"2021-03-15 17:39:17"),(4,"Elton","Odonnell","Gomez",62,"Ingeniero","Operaviones",1243016,"2020-08-13 18:09:46"),(5,"Fitzgerald","Joyce","Leonard",31,"Ingeniero","Operagiones",861944,"2020-09-25 11:07:36"),(6,"Unity","Harris","Mcpherson",76,"Ingeniero","Operayiones",612624,"2022-01-31 13:21:13"),(7,"Leroy","Gardner","Kemp",22,"Ingeniero","Operasiones",467274,"2020-11-14 22:24:21"),(8,"Ulla","Williams","Watson",83,"Ingeniero","Operawiones",2100351,"2020-10-13 03:06:41"),(9,"Preston","Cruz","Hatfield",3,"Ingeniero","Operariones",449949,"2021-09-01 20:24:13"),(10,"Clark","Farmer","Gill",92,"Ingeniero","Operaliones",1735509,"2020-10-22 12:43:09");
INSERT INTO Empleado (id,nombre,apellidoP,apellidoM,edad,cargo,departamento,sueldo,fecIngreso) VALUES (11,"Lucius","Obrien","Hurley",69,"Ingeniero","Operakiones",2309946,"2021-11-29 20:28:23"),(12,"Uta","Macias","Osborn",94,"Ingeniero","Operabiones",2083290,"2022-03-15 15:44:20"),(13,"Fleur","Padilla","Woods",13,"Ingeniero","Operasiones",1688951,"2020-11-21 01:22:57"),(14,"Oren","Dale","Fisher",92,"Ingeniero","Operawiones",811233,"2022-04-07 23:19:13"),(15,"Maggy","Wall","Harding",12,"Ingeniero","Operapiones",2149929,"2021-11-19 19:43:38"),(16,"Molly","Durham","Dickson",75,"Ingeniero","Operakiones",2296763,"2020-06-11 14:47:51"),(17,"Dennis","Willis","Byers",48,"Ingeniero","Operajiones",1067666,"2021-04-12 01:54:31"),(18,"Francis","Skinner","Turner",7,"Ingeniero","Operationes",1506008,"2021-08-28 04:49:46"),(19,"Carlos","Wheeler","Hale",79,"Ingeniero","Operaniones",556105,"2021-08-22 07:39:02"),(20,"Selma","Perry","Wade",50,"Ingeniero","Operaniones",2060593,"2021-01-07 20:09:55");
INSERT INTO Empleado (id,nombre,apellidoP,apellidoM,edad,cargo,departamento,sueldo,fecIngreso) VALUES (21,"Kenneth","Dominguez","Small",94,"Ingeniero","Operasiones",1911951,"2020-07-27 02:20:57"),(22,"Aladdin","Peterson","Savage",49,"Ingeniero","Operakiones",1998344,"2020-07-31 17:46:57"),(23,"Lilah","Townsend","Carson",6,"Ingeniero","Operawiones",2381734,"2021-09-25 09:35:33"),(24,"Kirby","Stephens","Finley",63,"Ingeniero","Operaciones",2270680,"2021-07-22 17:16:04"),(25,"Avye","Baldwin","Ryan",46,"Ingeniero","Operasiones",1872691,"2021-03-10 01:32:09"),(26,"Bevis","Vargas","Cummings",33,"Ingeniero","Operasiones",978307,"2022-03-08 03:17:03"),(27,"Malik","Delaney","Ayers",90,"Ingeniero","Operahiones",566522,"2021-05-17 01:02:05"),(28,"Sylvester","Steele","Bruce",67,"Ingeniero","Operaqiones",1523731,"2020-09-21 20:21:47"),(29,"Helen","Witt","Small",82,"Ingeniero","Operaliones",1710326,"2020-07-22 17:35:58"),(30,"Jerome","Mcguire","Mooney",54,"Ingeniero","Operawiones",624586,"2021-06-25 12:30:08");

update Empleado set cargo ='Contador' , departamento = 'Contabilidad' where id >10 and id <21
update Empleado set cargo ='Diseñador' , departamento = 'Diseño' where id >20 and id <31

#----------------------------------------------

create table libro(
     Idlibro int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	 nombre varchar(30),
     autor varchar(50),
     editorial varchar(50),
     edicion varchar(50),
     anopublicacion int,
	 categoria varchar(50),
     ejemplares int
     );
     
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("hijo del consul","posteguillo","planeta","I",2017,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("traicion de roma","posteguillo","planeta","I",2018,"novelas","3");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("la legion maldita","posteguillo","planeta","I",2020,"novelas","4");    
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("asesinos del emperador","posteguillo","planeta","II",2020,"novelas","7");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("la legion perdida","posteguillo","planeta","II",2020,"novelas","6");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("circo maximo","posteguillo","planeta","II",2021,"novelas","8");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("barbarus","massimiliano","españa","III",2015,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("ultima roma","valdes","españo","I",2001,"novelas","3");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("centurion de la calavera","santiago","global","II",2013,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("mago de mesopotamia","santiago","global","II",2014,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("espada esmeralda","santiago","global","II",2015,"novelas","3");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("lobos del aguila","xxx","universal","I",2015,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("yo, julia","posteguillo","planeta","I",2012,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("angel d ela muerte","xxx","universal","I",2018,"novelas","3");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("roma victoriosa","xxx","planeta","I",2020,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("templarios","juan jesus","planeta","I",2001,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("una noche de invierno","xxx","universal","I",2010,"novelas","3");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("lo que el hielo atrapa","cone","planeta","I",2008,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("legion de los inmortales","manfredi","planeta","I",2014,"novelas","4");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("el secreto del dresden","no recuerdo","universo","I",2012,"novelas","3");
insert into libro(nombre,autor,editorial,edicion,anopublicacion,categoria,ejemplares) values ("dracula","coppola","planeta","I",1990,"novelas","4");





# tengo q practicar mi capacidad de inventar daos para llenar tablas ya que me falto creatividad
