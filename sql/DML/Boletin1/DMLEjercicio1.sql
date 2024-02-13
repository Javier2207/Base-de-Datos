CREATE TABLE PROFESORES 
(
NOMBRE VARCHAR2(15),
APELLIDO1 VARCHAR2(15),
APELLIDO2 VARCHAR2(15),
DNI VARCHAR2(10),
DIRECCION VARCHAR2(20),
TITULO VARCHAR2(25),
GANA NUMBER,
CONSTRAINT PK_PROFESORES PRIMARY KEY(DNI)
);

CREATE TABLE CURSOS 
(
NOMBRE_CURSO VARCHAR2(25),
COD_CURSO NUMBER,
DNI_PROFESOR VARCHAR2(10),
MAXIMO_ALUMNOS NUMBER,
FECHA_INICIO VARCHAR2(15),
FECHA_FIN VARCHAR2(15),
NUM_HORAS NUMBER,
CONSTRAINT PK_CURSOS PRIMARY KEY(COD_CURSO),
CONSTRAINT FK_CURSOS FOREIGN KEY(DNI_PROFESOR) REFERENCES PROFESORES(DNI)
);

CREATE TABLE ALUMNOS 
(
NOMBRE VARCHAR2(15),
APELLIDO1 VARCHAR2(15),
APELLIDO2 VARCHAR2(15),
DNI VARCHAR2(10),
DIRECCION VARCHAR2(15),
SEXO VARCHAR2(5),
FECHA_NACIMIENTO VARCHAR2(15),
CURSO NUMBER,
CONSTRAINT PK_ALUMNOS PRIMARY KEY(DNI),
CONSTRAINT FK_ALUMNOS FOREIGN KEY(CURSO) REFERENCES CURSOS(COD_CURSO) 
);


INSERT INTO PROFESORES
VALUES ('JUAN','ARCH','LOPEZ',32432455,'PUERTA NEGRA,4','ING.INFORMATICA',7500);

INSERT INTO PROFESORES
VALUES ('MARIA','OLIVIA','RUBIO',43215643,'JUAN ALFONSO,32','LDA.FIL.INGLESA',5400);

INSERT INTO CURSOS 
VALUES ('INGLES BASICO',1,43215643,15,'01/11/00','22-DIC-00',120)

INSERT INTO CURSOS(NOMBRE_CURSO,COD_CURSO,DNI_PROFESOR,FECHA_INICIO,NUM_HORAS)
VALUES ('ADMINISTRACION LINUX',2,32432455,'01-SEP-00',80);

INSERT INTO ALUMNOS 
VALUES ('LUCAS','MANILVA','LOPEZ',123523,'ALHAMAR,3','V','01/11/00',1);

INSERT INTO ALUMNOS 
VALUES ('ANTONIA','LOPEZ','ALCANTARA',2567567,'MANIQUI,21','M',2);

INSERT INTO ALUMNOS (NOMBRE,APELLIDO1,APELLIDO2,DNI,DIRECCION,SEXO,CURSO)
VALUES ('MANUEL','ALCANTARA','PEDROS',3123689,'JULIAN,2','V',1);

INSERT INTO ALUMNOS
VALUES('JOSE','PEREZ','CABALLAR',489689,'P',1)

INSERT INTO ALUMNOS (NOMBRE,APELLIDO1,APELLIDO2,DNI,SEXO,CURSO)
VALUES ('SERGIO','NAVAS','RETAL',123523,'P',1);









