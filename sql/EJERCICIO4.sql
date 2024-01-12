CREATE TABLE CLIENTE
(
CODCLIENTE VARCHAR2(25),
DNI VARCHAR2(10) UNIQUE,
NOMBRE VARCHAR2(25) NOT NULL,
DIRECCION VARCHAR2(40),
TELEFENO VARCHAR2(10),
CONSTRAINT PK_CLIENTE PRIMARY KEY(CODCLIENTE)
);

CREATE TABLE AVALA 
(
AVALADO VARCHAR2(10),
AVALADOR VARCHAR2(10),
CONSTRAINT PK_AVALA PRIMARY KEY(AVALADO),
CONSTRAINT FK1_AVALA FOREIGN KEY(AVALADO) REFERENCES CLIENTE(CODCLIENTE),
CONSTRAINT FK2_AVALA FOREIGN KEY(AVALADO) REFERENCES CLIENTE(CODCLIENTE)
);

CREATE TABLE RESERVA 
(
NUMERO VARCHAR2(10),
FECHAINICIO DATE,
FECHAFIN DATE,
PRECIOTOTAL NUMBER()
CODCLIENTE VARCHAR2(25),
);