--Nombre Tabla: M8_P_SKATERS
DROP TABLE IF EXISTS SKATERS;
DROP TABLE IF EXISTS ROLES;

CREATE TABLE ROLES(
    ID_R SERIAL PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL UNIQUE CHECK(NAME IN('ADMINISTRADOR', 'SKATER'))
);
INSERT INTO ROLES (NAME) VALUES 
('ADMINISTRADOR'),
('SKATER');


CREATE TABLE skaters (
	id SERIAL,
	email VARCHAR(50) NOT NULL,
	nombre VARCHAR(25) NOT NULL,	
	anios_experiencia INT NOT NULL,
	especialidad VARCHAR(50) NOT NULL,
	foto VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	ROL_ID INT NOT NULL DEFAULT 2,
    FOREIGN KEY (ROL_ID) REFERENCES ROLES(ID_R)

);
SELECT * FROM SKATERS;

UPDATE USUARIOS
SET ROL_ID = 1
WHERE EMAIL ='administrador@skater.com';
