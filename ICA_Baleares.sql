select * from justificaciones j order by fecharegistro desc
select * from censo where ncol = 5014 order by timeregistro desc
select * from guardias g order by timeregistro desc
select * from controlguardias c order by timeregistro desc
select * from asistencias a order by timeregistro desc
select * from turnoscolegiado order by timeregistro desc
select * from exp_honorarios order by timeregistro desc
select * FROM exp_ejg order by exp_ejg.timeregistro  desc

select * FROM db_cgae.guardias WHERE idinstitucion = 2011 and YEAR(fechainicio) = 2022 and MONTH (fechainicio) = 12

select idturno, idguardia , ncol, fechainicio , fechafin, permuta, count(id) as total  from guardias WHERE date(timeregistro) > '2023-04-30'
group by idturno, idguardia , ncol, fechainicio , fechafin, permuta
having total >1
order by total desc

select * FROM db_cgae.guardias where date(created_at ) = CURDATE()  

select CURRENT_TIMESTAMP()  from dual

select * FROM db_cgae.guardias where ncol_a= 5014 and year(fecha_guardia_a) = 2024  order by fecha_guardia_a DESC 
Delete from db_cgae.guardias where FECHA = '2025-05-11' 

select IDGUARDIA, max(fecha_guardia_a) FROM guardias WHERE YEAR(fecha_guardia_a)>=2024 group by idguardia order by 1 ASC 


----- CONSULTA PARA SIGA
select IDGUARDIA, to_char(max(fechainicio),'DD/MM/YYYY') FROM SCS_CABECERAGUARDIAS WHERE idinstitucion = 2011 AND to_char(FECHAINICIO,'YYYY') > '2025' group by idguardia order by 1
----- CONSULTA PARA MySQL
select guardia, DATE(max(FECHA)) FROM guardias where  year(FECHA) = 2025 group by guardia order by 1;

select * from guardias where FECHA = '2025-05-10' 



-- recuperacion.ejg_fundamentocalificacion definition

CREATE TABLE `ejg_fundamentocalificacion` (
  `idcolegio` int(11) NOT NULL,
  `idfundamento` int(11) NOT NULL,
  `fundamento` varchar(500) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idcolegio`,`idfundamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


-- recuperacion.ejg_resolucion definition

CREATE TABLE `ejg_resolucion` (
  `idresolucion` int(11) NOT NULL,
  `resolucion` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`idresolucion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;



-- recuperacion.ejg_tipodictamen definition

CREATE TABLE `ejg_tipodictamen` (
  `idtipodictamen` int(11) NOT NULL,
  `dictamen` varchar(250) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`idtipodictamen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;




