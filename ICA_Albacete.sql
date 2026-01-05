select * from guardias g order by timeregistro desc
select * from controlguardias order by timeregistro desc

select max(fechainicio) from guardias g
select IDGUARDIA, max(fechainicio) FROM guardias group by idguardia order by 1 

select * from censo c order by timeregistro DESC 

