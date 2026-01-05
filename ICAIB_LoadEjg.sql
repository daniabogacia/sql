CREATE TABLE expedientesjg (
	anioejg INT NOT NULL,
	numeroejg INT NOT NULL,
	fechaapertura DATETIME NOT NULL,
	nombresolicitante varchar(100) NOT NULL,
	apellidossolicitante varchar(250) NULL,
	paissolicitante varchar(100) NULL,
	juzgado varchar(150) NULL,
	fechadictamen DATETIME NULL,
	tipodictamen INT NULL,
	fecharesolucion DATETIME NULL,
	idresolucion INT NULL,
	delito varchar(150) NULL,
	codigodelito INT NULL,
	procedimiento varchar(150) NULL,
	idfundamentocalificacion INT NULL,
	observaciondictamen varchar(250) NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_spanish_ci;




CREATE TABLE ejg_tipodictamen (
	idtipodictamen INT NOT NULL,
	dictamen varchar(250) NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_spanish_ci;

CREATE TABLE juzgados (
	idjuzgado INT NOT NULL,
	nombrejuzgado varchar(250) NOT NULL,
	emailjuzgado varchar(250) NULL,
	observaciones varchar(250) NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_spanish_ci;

select * from expedientesjg order by anioejg, numeroejg, idtipoejg

# truncate table expedientesjg


delete from expedientesjg where anioejg = 2025 and  numeroejg = 27934 and  idtipoejg = 1

select * from juzgados




