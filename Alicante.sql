# truncate table censo
# truncate table guardias
# truncate table controlguardias

select * from censo
select * from direcciones

select * from maestroturno
select * from maestroguardias 
select * from turnoscolegiado 
select * from guardias order by timeregistro desc

select * from controlguardias order by timeregistro desc



----- CONSULTA PARA SIGA
select IDGUARDIA, to_char(max(fechainicio),'DD/MM/YYYY') FROM SCS_CABECERAGUARDIAS WHERE idinstitucion = 2005 AND to_char(FECHAINICIO,'YYYY') > '2025' group by idguardia order by 1
----- CONSULTA PARA MySQL
select IDGUARDIA, DATE(max(fechainicio)) FROM guardias where fechainicio > '2025-12-31' group by idguardia order by 1;

select * from zona


select * from cen_etiquetas

