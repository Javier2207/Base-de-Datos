CREATE TABLE EMPLEADO 
(
COD_EMP VARCHAR2(10),
NIF VARCHAR2(15) UNIQUE,
NOMBRE VARCHAR2(25),
APELLIDOS VARCHAR2(25),
DIRECCION VARCHAR2(15),
TELEFONO VARCHAR2(10),
FECHA_NAC VARCHAR2(10),
SALARIO VARCHAR2(5)
);

CREATE TABLE EMP_CAPACITADO 
(
COD_EMP VARCHAR2(10)
);

CREATE TABLE EMP_NO_CAPACITADO 
(
COD_EMP VARCHAR2(10)
);

CREATE TABLE CURSO
(
COD_CURSO VARCHAR2(10),
NOMBRE VARCHAR2(25),
DURACION VARCHAR2(10),
COSTE VARCHAR2(10)
);

CREATE TABLE PRERREQUISITO 
(
CURSO_SOLICITADO VARCHAR2(10),
CURSO_PREVIO VARCHAR2(10),
OBLIGATORIO VARCHAR2(5)
);

CREATE TABLE EDICION 
(
COD_CURSO VARCHAR2(10),
FECHA_INICIO VARCHAR2(15),
LUGAR VARCHAR2(10),
HORARIO VARCHAR2(5),
PROFESOR VARCHAR2(25)
);

CREATE TABLE RECIBE 
(
COD_EMPLEADO VARCHAR2(10),
COD_CURSO VARCHAR2(10),
FECHA_INICIO VARCHAR2(15)
);

ALTER TABLE EMPLEADO ADD CONSTRAINT PK_EMPLEADO PRIMARY KEY(COD_EMP);

ALTER TABLE EMP_CAPACITADO ADD CONSTRAINT PK_EMP_CAPACITADO PRIMARY KEY(COD_EMP);
ALTER TABLE EMP_CAPACITADO ADD CONSTRAINT FK1_EMP_CAPACITADO FOREIGN KEY(COD_EMP) REFERENCES EMPLEADO(COD_EMP);

ALTER TABLE EMP_NO_CAPACITADO ADD CONSTRAINT PK_EMP_NO_CAPACITADO PRIMARY KEY(COD_EMP);
ALTER TABLE EMP_NO_CAPACITADO ADD CONSTRAINT FK1_EMP_NO_CAPACITADO FOREIGN KEY(COD_EMP) REFERENCES EMPLEADO(COD_EMP);

ALTER TABLE CURSO ADD CONSTRAINT PK_CURSO PRIMARY KEY(COD_CURSO);

ALTER TABLE PRERREQUISITO ADD CONSTRAINT PK_PRERREQUISITO PRIMARY KEY(CURSO_SOLICITADO,CURSO_PREVIO);
ALTER TABLE PRERREQUISITO ADD CONSTRAINT FK1_PRERREQUISITO FOREIGN KEY(CURSO_SOLICITADO) REFERENCES CURSO(COD_CURSO);
ALTER TABLE PRERREQUISITO ADD CONSTRAINT FK2_PRERREQUISITO FOREIGN KEY(CURSO_PREVIO) REFERENCES CURSO(COD_CURSO);

ALTER TABLE EDICION ADD CONSTRAINT PK_EDICION PRIMARY KEY(COD_CURSO,FECHA_INICIO);
ALTER TABLE EDICION ADD CONSTRAINT FK1_EDICION FOREIGN KEY(COD_CURSO) REFERENCES CURSO(COD_CURSO);

ALTER TABLE RECIBE ADD CONSTRAINT PK_RECIBE PRIMARY KEY(COD_EMPLEADO,COD_CURSO,FECHA_INICIO);
ALTER TABLE RECIBE ADD CONSTRAINT FK1_RECIBE FOREIGN KEY(COD_EMPLEADO) REFERENCES EMPLEADO(COD_EMP);
ALTER TABLE RECIBE ADD CONSTRAINT FK2_RECIBE FOREIGN KEY(COD_CURSO,FECHA_INICIO) REFERENCES EDICION(COD_CURSO,FECHA_INICIO);





























