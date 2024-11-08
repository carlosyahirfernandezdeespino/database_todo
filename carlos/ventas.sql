--Tabla de ventas

CREATE TABLE ventas(
    no_venta VARCHAR(10) PRIMARY KEY,
    fecha_inicio DATE,
    fecha_termino DATE,
    total DECIMAL(10, 2) NOT NULL,
    cantidad INT NOT NULL,
    no_control INT,
    FOREIGN KEY (no_control) REFERENCES usuarios(no_control) 
    ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO ventas(
    no_venta,
    fecha_inicio,
    total,
    cantidad,
    no_Control
)
VALUES
('v001', '2022-01-01', 15000.00, 10, 1),
('v002', '2022-02-01', 20000.00, 15, 2),
('v003', '2022-03-01', 25000.00, 20, 1),
('v004', '2022-04-01', 18000.00, 12, 3),
('v005', '2022-05-01', 22000.00, 18, 2);
--Modificar los valores de acuerdo con sus registros anteriores de PK en la tabla usuario

