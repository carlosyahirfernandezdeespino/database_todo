CREATE DATABASE punto_venta_carlitos;
SHOW DATABASES;
USE punto_venta_carlitos;

CREATE TABLE usuarios(
    no_control INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    calle VARCHAR(100) NOT NULL,
    no_casa INT NOT NULL,
    colonia VARCHAR(100) NOT NULL,
    municipio VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    codigo_postal INT NOT NULL,
    telefono INT NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    status BOOLEAN DEFAULT TRUE,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE empleados(
    no_Control INT PRIMARY KEY,
    salario DECIMAL(10, 2) NOT NULL,
    puesto VARCHAR(100) NOT NULL,
    hora_entrada TIME NOT NULL,
    hora_salida TIME NOT NULL,
    FOREIGN KEY (no_control) REFERENCES usuarios(no_control) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO usuarios(nombre, apellido_paterno, apellido_materno, edad, calle, no_casa, colonia, municipio, estado, codigo_postal, telefono, correo, tipo) VALUES ('Juan', 'Medina', 'Montes', 25, 'Estrellas', 123, 'Centro', 'Tecamac', 'Estado de Mexico', 55750, 5551234563, 'juan_medina@goes.com', 'Administrador' );
