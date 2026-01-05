select max(fechainicio) from dbicacordoba.guardias
select max(fechafin) from dbicacordoba.guardias
select * from dbicacordoba.guardias
select * from censo c order by timeregistro desc
select * from turnoscolegiado order by timeregistro desc
select * from maestroguardias
select * from controlguardias order by timeregistro desc 

delete from turnoscolegiado where nif = '52360746G' and idturno in (1967,2001,2012,3153,3183) and idcolegio = 2021

select * from guardias g order by timeregistro desc

select * from justificaciones j order by fecharegistro  desc

select * from controlguardias c  order by timeregistro desc

select * from censo c order by timeregistro desc

select * from guardias  where fechainicio >='2024-11-01' order by fechainicio  asc

select idguardia, nif, date(fechainicio) from guardias where 
 year(fechainicio) = 2024 and month (fechainicio) = 8 order by idguardia, fechainicio, nif  desc


----- CONSULTA PARA SIGA
select IDGUARDIA, to_char(max(fechainicio),'DD/MM/YYYY') FROM SCS_CABECERAGUARDIAS WHERE idinstitucion = 2021 AND to_char(FECHAINICIO,'YYYY') > '2024' group by idguardia order by 1
----- CONSULTA PARA MySQL
select IDGUARDIA, DATE(max(fechainicio)) FROM guardias where fechainicio > '2025-12-31' group by idguardia order by 1;


delete from guardias where  timeregistro > '2025-09-02 14:01:00'
select * from guardias where year(timeregistro) = 2025 and month (timeregistro) = 1 and day (timeregistro) = 10
#truncate table turnoscolegiado;


select * from turnoscolegiado where fechabaja is not null  order by fechabaja desc nif = '30946446S' order by fechaalta desc

insert into turnoscolegiado (idcolegio,nif,idturno,fechaalta ,timeregistro) values 
(2021,'30963955K',3259,'2021-01-01',sysdate())

select * from turnoscolegiado where year(fechaalta) = 2024 and month (fechaalta) = 5 
select * from turnoscolegiado where year(fechabaja) = 2024 and month (fechabaja) = 5

INSERT INTO dbicacordoba.maestroguardias
(idcolegio, idturno, idguardia, nombre, fechamodificacion, timeregistro)
values
(2021, 1987, 3069, 'A. DET. Z 2 solo P.G. (L-J)', '2024-06-25', '2024-06-25'),
(2021, 1987, 3070, 'A.DET. Z 2 C. P y PG: (V-D)', '2024-06-25', '2024-06-25');

select * from maestroguardias order by idguardia 
INSERT INTO dbicacordoba.maestroguardias
(idcolegio, idturno, idguardia, nombre, fechamodificacion, timeregistro)
VALUES(0, 0, 0, '', '', '');


select * from dbicacordoba.maestroturno
delete from dbicacordoba.maestroturno where idcolegio = 2005
