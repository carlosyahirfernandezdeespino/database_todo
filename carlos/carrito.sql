CREATE TABLE carrito(
    idCar PRIMARY KEY AUTO_INCREMENT,
    total DECIMAL(10, 2) NOT NULL,
    cantidad INT NOT NULL,
    no_venta VARCHAR(10),
    FOREIGN KEY (no_venta) REFERENCES productos(codigo_pro)
    ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO carrito(
    total,
    cantidad,
    no_venta,
    codigo_pro
)
VALUES 
(1000.00, 2, 'V001', 101),
(500.00, 1, 'V002', 202),
(2000.00, 3, 'V001', 303),
(800.00, 2, 'V003', 404),
(1500.00, 1, 'V002', 505);

SELECT ventas.no_venta, ventas.fecha_inicio, usuarios.nombre,
usuarios.apellido_paterno
FROM ventas
INNER JOIN usuarios
ON ventas.no_Control = usuarios.no_Control;

SELECT carrito.idCar, productos.nombre, ventas.no_venta, carrito.total
FROM carrito
INNER JOIN productos
ON carrito.codigo_pro = productos.codigo_pro
INNER JOIN ventas
ON carrito.no_venta = ventas.no_venta;

SELECT empleados.no_empleado, usuarios.nombre, empleados.puesto
FROM empleados
INNER JOIN usuarios
ON empleados.no_empleado = usuarios.no_Control;

SELECT proveedores.no_prov, empleados.no_empleado, proveedores.nombre
FROM proveedores
INNER JOIN empleados
ON proveedores.no_Control = empleados.no_empleado;

SELECT productos.codigo_pro, proveedores.nombre, empleados.no_empleado
FROM productos
INNER JOIN proveedores
ON productos.no_prov = proveedores.no_prov
INNER JOIN empleados
ON proveedores
ON proveedores.no_Control = empleados.no_empleado;