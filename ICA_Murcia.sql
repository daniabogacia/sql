select * from guardias g where fechainicio > '2025-01-01' order by timeregistro desc

select * from controlguardias c  order by timeregistro desc
select * from censo c order by timeregistro desc
select * from guardias g order by timeregistro desc 
select * from turnoscolegiado  order by timeregistro desc 
select * from justificaciones order by fecharegistro desc 


----- CONSULTA PARA SIGA
select IDGUARDIA, to_char(max(fechainicio),'DD/MM/YYYY') FROM SCS_CABECERAGUARDIAS WHERE idinstitucion = 2050 AND to_char(FECHAINICIO,'YYYY') > '2024' group by idguardia order by 1
----- CONSULTA PARA MySQL
select IDGUARDIA, DATE(max(fechainicio)) FROM guardias where fechainicio > '2024-12-31' group by idguardia order by 1;

where fechainicio > '2022-12-31'

select  * from public.guardias where  fechainicio > '2023-12-31' order by fechainicio 

delete from guardias where idturno = 4615 and idguardia = 3107 and fechainicio > '2023-07-28'

select * from guardias g where fechainicio > '2023-12-31' order by ofertada  desc
delete from guardias g where fechainicio > '2023-12-31'

SELECT DATE('2017-06-15 09:34:21');

select DATE(max(fechainicio)) as fechahora FROM guardias where fechainicio > '2023-12-31'



-- db_cgae.justificaciones definition

CREATE TABLE `justificaciones` (
  `idcolegio` int(11) NOT NULL,
  `idactuacion` int(11) NOT NULL,
  `turno` varchar(100) NOT NULL,
  `idturno` int(11) NOT NULL,
  `aniodesigna` int(11) NOT NULL,
  `codigodesigna` varchar(45) NOT NULL,
  `ncol` varchar(45) DEFAULT NULL,
  `nifcol` varchar(45) DEFAULT NULL,
  `modulo` varchar(100) DEFAULT NULL,
  `idacreditacion` varchar(45) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `fechajustificacion` date DEFAULT NULL,
  `nifdefendido` varchar(45) DEFAULT '0',
  `nombredefendido` varchar(145) DEFAULT NULL,
  `juzgado` varchar(145) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT NULL,
  `validado` tinyint(4) DEFAULT 0,
  `nifusumod` varchar(100) DEFAULT NULL,
  `insertado` datetime DEFAULT curtime(),
  `numejg` varchar(25) DEFAULT NULL,
  `idresolucion` int(11) DEFAULT NULL,
  `numeroprocedimiento` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idcolegio`,`idturno`,`idactuacion`,`aniodesigna`,`codigodesigna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE public.maestro_turnos (
	idturno int NOT NULL,
	nombre varchar NOT NULL,
	abreviatura varchar NOT NULL,
	fechacarga date NOT NULL,
	CONSTRAINT maestro_turnos_unique UNIQUE (idturno)
);



-- db_cgae.turnoscolegiado definition

CREATE TABLE `turnoscolegiado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idinstitucion` int(11) NOT NULL,
  `nif` varchar(15) NOT NULL,
  `turno` varchar(100) NOT NULL,
  `materia` varchar(100) NOT NULL,
  `timeregistro` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8586 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


select * from turnoscolegiado
truncate table turnoscolegiado

select * from maestro_turnos




