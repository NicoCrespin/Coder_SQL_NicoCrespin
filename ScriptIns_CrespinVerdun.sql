CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cliente VARCHAR(45),
    dni_cliente INT UNIQUE,
    direccion VARCHAR(45),
    email VARCHAR(45) UNIQUE
);


CREATE TABLE vendedor (
    id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_vendedor VARCHAR(45),
    dni_vendedor INT UNIQUE,
    direccion VARCHAR(45),
    comision VARCHAR(45),
    rendimiento VARCHAR(45)
);


CREATE TABLE proveedor (
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_proveedor VARCHAR(45),
    direccion VARCHAR(45),
    email VARCHAR(45) UNIQUE,
    numero_cuenta INT UNIQUE
);


CREATE TABLE categoria_producto (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    tipo_producto VARCHAR(45),
    id_proveedor_categoria INT,
    stock INT,
    FOREIGN KEY (id_proveedor_categoria) REFERENCES proveedor (id_proveedor)
);


CREATE TABLE producto (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre_producto VARCHAR(45),
    proveedor_producto INT,
    precio INT,
    categoria INT,
    stock INT,
    FOREIGN KEY (proveedor_producto) REFERENCES proveedor (id_proveedor),
    FOREIGN KEY (categoria) REFERENCES categoria_producto (id_categoria)
);


CREATE TABLE compra (
    num_factura INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATETIME,
    vendedor_factura INT,
    cliente_factura INT,
    total INT,
    FOREIGN KEY (vendedor_factura) REFERENCES vendedor (id_vendedor),
    FOREIGN KEY (cliente_factura) REFERENCES clientes (id_cliente)
);


CREATE TABLE detalles_compra (
    id_detalle INT PRIMARY KEY AUTO_INCREMENT,
    id_compra INT,
    producto INT,
    cantidad INT,
    FOREIGN KEY (id_compra) REFERENCES compra (num_factura),
    FOREIGN KEY (producto) REFERENCES producto (id_producto)
);


CREATE TABLE pagos (
    id_pago INT PRIMARY KEY AUTO_INCREMENT,
    nombre_pago VARCHAR(45) NOT NULL,
    factura INT NOT NULL,
    FOREIGN KEY (factura) REFERENCES compra (num_factura)
);

-- insercion

INSERT INTO clientes VALUES 
(NULL,"Pepe Luis", 22722777 , "Jacinto rios 222", 'pepe_lios@dato.com'),
(NULL,"Nina Goitea", 9444555 , "Arturo Orgaz 132", 'ninita22@dato.com'),
(NULL,"Nelson Crespo", 12589664 , "Los Aromos 15 1° A", 'nelsito_laT@dato.com'),
(NULL,"Paolo Chancalay", 24569874 , "Mendoza 3030", 'PaoloChan@dato.com'),
(NULL,"Roolando Bruno Crespin", 45889321 , "Gongora 1000", 'Rollo_zumaran@dato.com'),
(NULL,"Juan Perez", 12345678, 'Calle 123, Ciudad A', 'juan@example.com'),
(NULL,"Maria Lopez", 23456789, 'Avenida X, Ciudad B', 'maria@example.com'),
(NULL,"Carlos Ramirez", 34567890, 'Calle Y, Ciudad C', 'carlos@example.com'),
(NULL,"Laura Martinez", 45678901, 'Calle Z, Ciudad D', 'laura@example.com'),
(NULL,"Pedro Fernandez", 56789012, 'Calle 456, Ciudad E', 'pedro@example.com'),
(NULL,"Ana Rodriguez", 67890123, 'Avenida ABC, Ciudad F', 'ana@example.com'),
(NULL,"Luisa Gonzalez", 78901234, 'Calle DEF, Ciudad G', 'luisa@example.com'),
(NULL,"Javier Herrera", 89012345, 'Calle GHI, Ciudad H', 'javier@example.com'),
(NULL,"Elena Torres", 90123456, 'Avenida JKL, Ciudad I', 'elena@example.com'),
(NULL,"Miguel Castro", 12345679, 'Calle MNO, Ciudad J', 'miguel@example.com'),
(NULL,"Paula Smith", 23456780, 'Calle PQR, Ciudad K', 'paula@example.com'),
(NULL,"David Johnson", 34567891, 'Avenida STU, Ciudad L', 'david@example.com'),
(NULL,"Sofia Brown", 45678902, 'Calle VWX, Ciudad M', 'sofia@example.com'),
(NULL,"Alejandro Lee", 56789013, 'Calle YZA, Ciudad N', 'alejandro@example.com'),
(NULL,"Carolina Taylor", 67890124, 'Avenida BCD, Ciudad O', 'carolina@example.com'),
(NULL,"Fernando Martin", 78901235, 'Calle EFG, Ciudad P', 'fernando@example.com'),
(NULL,"Isabel Clark", 89012346, 'Calle HIJ, Ciudad Q', 'isabel@example.com'),
(NULL,"Roberto White", 90123457, 'Avenida KLM, Ciudad R', 'roberto@example.com'),
(NULL,"Carmen Lewis", 12345670, 'Calle NOP, Ciudad S', 'carmen@example.com'),
(NULL,"Gabriel Hill", 23456781, 'Calle QRS, Ciudad T', 'gabriel@example.com');
#SELECT * FROM clientes;

INSERT INTO vendedor VALUES 
(NULL, "Lauro Acosta", 21546879 , "Carcano 78", '3%', '100%'),
(NULL, "Lucas Moyano", 4588778 , "Rosario 42", '3%', '90%'),
(NULL, "Liliana Corbalan", 36548912 , "Maracaibo 132", '3%', '75%'),
(NULL, "Nahuel Rivera", 39302587 , "Dean Funes 12", '3%', '85%'),
(NULL, "Natali Verdun", 40587963 , "Mendoza 2058", '3%', '100%');
#SELECT * FROM vendedor;

UPDATE clientes
SET nombre_cliente = 'Rolando Crespín'
WHERE dni_cliente = 45889321;
#Select * from clientes;
#Select * from proveedor;
 
 
INSERT INTO proveedor (nombre_proveedor, direccion, email, numero_cuenta)
VALUES
  ('Calzados del Sur', 'Buenos Aires, Capital', 'calzadossur@example.com', 12345678),
  ('Nina Shoes', 'Córdoba, Ciudad', 'ninashoes@example.com', 23456789),
  ('Leather Arg', 'Rosario, Santa Fe', 'leatherarg@example.com', 34567890),
  ('France Style', 'Mendoza, Ciudad', 'francestyle@example.com', 45678901),
  ('Carefa', 'San Miguel de Tucumán, Tucumán', 'carefa@example.com', 56789012),
  ('Patistella', 'La Plata, Buenos Aires', 'patistella@example.com', 67890123),
  ('Classic and Co', 'Mar del Plata, Buenos Aires', 'classic@example.com', 78901234),
  ('Calzados Express', 'Salta, Ciudad', 'expresscalzados@example.com', 89012345),
  ('Nice Company', 'Santa Fe, Ciudad', 'nice.ventas@example.com', 90123456),
  ('Vero Cuoio', 'San Juan, Ciudad', 'verocuoio@example.com', 12345670);
#select * from proveedor;
  
INSERT INTO categoria_producto (tipo_producto, id_proveedor_categoria, stock)
VALUES
  ('Zapatos deportivos', 1, 100),
  ('Zapatillas casuales', 2, 150),
  ('Botas de cuero', 3, 80),
  ('Sandalia de verano', 4, 120),
  ('Zapatos formales', 5, 90),
  ('Mocasines de cuero', 6, 110),
  ('Botines de moda', 7, 70),
  ('Carteras de cuero', 9, 200),
  ('Billeteras elegantes', 9, 180),
  ('Cinturones de moda', 9, 160),
  ('Productos de limpieza para cuero', 10, 250),
  ('Crema para calzado', 10, 300),
  ('Acondicionador de cuero', 10, 270),
  ('Zapatos de caballero', 8, 220),
  ('Stiletos', 4, 190),
  ('Zapatos de fiesta', 1, 110),
  ('Sandalias de cuero', 2, 130),
  ('Botas de moda', 3, 95),
  ('Mochilas de cuero', 9, 240),
  ('Zapatoas niño', 5, 220);
#select * from categoria_producto;
  
INSERT INTO producto (nombre_producto, proveedor_producto, precio, categoria, stock)
VALUES 
('Zapatos Deportivos Rojos', 1, 5000, 1, 10),
('Zapatillas Negras Clásicas', 1, 4500, 1, 8),
('Botas de Cuero Marrones', 2, 8000, 2, 6),
('Sandalia de Verano Azul', 1, 3000, 2, 12),
('Zapatos Formales Negros', 1, 6000, 5, 10),
('Mocasines de Cuero Marrón', 1, 5500, 6, 8),
('Botines de Moda Grises', 7, 7000, 7, 6),
('Cartera Elegante de Cuero', 9, 7500, 8, 10),
('Billetera de Lujo Negra', 9, 3000, 9, 8),
('Cinturón Moderno de Cuero', 9, 2000, 10, 12),
('Neceser', 9, 1500, 9, 10),
('Crema para Calzado de Cuero', 10, 800, 12, 8),
('Bolsa de Mano Elegante', 9, 6500, 8, 10),
('Cartera de Cuero con Diseño', 9, 7000, 8, 8),
('Bolso de Cuero Negro', 9, 9000, 8, 12),
('Mochila de Cuero Marrón', 9, 8500, 19, 10),
('Billetera Clásica de Cuero', 9, 3500, 9, 8),
('Cinturón de Cuero con Hebilla', 9, 1800, 10, 12),
('Riñonera', 9, 1200, 9, 10),
('Cepillo de Cuero Suave', 10, 600, 11, 8),
('Minibag', 9, 1000, 8, 12),
('Plantillas para Zapatos Cómodas', 10, 400, 13, 10),
('Zapatos para Niños con Diseño', 5, 2500, 20, 8),
('Bolsa Cruzada de Cuero Pequeña', 9, 2800, 8, 12),
('Zapatos Deportivos de Running', 1, 5500, 1, 10),
('Zapatillas de Moda Colorx', 8, 4800, 14, 36),
('Botas de Montaña Resistentes', 3, 8500, 3, 6),
('Sandalia Elegante con Tacón', 2, 3200, 17, 12),
('Zapatos Formales de Cuero', 5, 6200, 16, 10),
('Mocasines de Cuero Clásicos', 6, 5700, 6, 8),
('Botines de Cuero Marrones', 7, 7200, 2, 6),
('Sandalia Multiculor', 4, 7800, 4, 10),
('Bota taco Acrilico', 3, 3200, 18, 8),
('Stiletto strass', 4, 2200, 15, 12),
('Stiletto', 4, 1700, 15, 10),
('Superconfort hombre', 8, 900, 14, 8),
('Bolsa de Cuero de Mano', 9, 6800, 19, 10),
('Cartera de Cuero Moderna', 9, 7200, 9, 8),
('Bolso de Hombro de Cuero', 8, 9500, 14, 12),
('Mochila de Cuero para Viaje', 9, 8800, 8, 10),
('Bota urbana', 3, 3800, 3, 8),
('Franciscana', 4, 2000, 4, 12),
('Zapato uniforme', 6, 1300, 5, 10),
('Zapato prusiano', 7, 500, 16, 8),
('Sandalias de fiesta con strass', 2, 900, 4, 12),
('Plantillas de Cuero Transpirables', 10, 300, 11, 10),
('Zapatos Infantiles de Cuero', 7, 2300, 20, 8),
('Botin 7cm', 7, 2600, 7, 24),
('Zapatilla Platafoma', 2, 2600, 2, 24);
#select * from producto;

INSERT INTO compra (fecha, vendedor_factura, cliente_factura, total)
VALUES
    (NOW(), 1, 2, 7800),
    (NOW(), 2, 5, 2400),
    (NOW(), 3, 7, 3000),
    (NOW(), 4, 14, 15000),
    (NOW(), 5, 6, 5500),
    (NOW(), 1, 8, 9500),
    (NOW(), 2, 22, 15600),
	(NOW(), 3, 10, 4200),
    (NOW(), 1, 3, 6200),
    (NOW(), 5, 12, 1800),
    (NOW(), 2, 1, 3500),
    (NOW(), 4, 9, 8000),
    (NOW(), 3, 11, 2800),
    (NOW(), 2, 4, 5400),
    (NOW(), 1, 2, 9500),
    (NOW(), 5, 7, 11000),
    (NOW(), 4, 6, 3200),
    (NOW(), 2, 8, 7600),
    (NOW(), 3, 5, 4200),
    (NOW(), 1, 15, 6300),
    (NOW(), 5, 13, 2100),
    (NOW(), 4, 16, 9800);
#select * from compra;

INSERT INTO detalles_compra (id_detalle, id_compra, producto, cantidad)
VALUES
    (null, 1, 32, 1),
    (null, 2, 12, 3),
    (null, 3, 4, 1),
    (null, 4, 8, 2),
    (null, 5, 25, 1),
    (null, 6, 39, 1),
    (null, 7, 32, 2),
	(null, 8, 28, 2),
    (null, 9, 10, 1),
    (null, 10, 24, 3),
    (null, 11, 19, 2),
    (null, 12, 6, 1),
    (null, 13, 17, 4),
    (null, 14, 22, 2),
    (null, 15, 31, 1),
    (null, 16, 2, 3),
    (null, 17, 14, 2),
    (null, 18, 21, 1),
    (null, 19, 36, 2),
    (null, 20, 27, 1),
    (null, 21, 3, 3),
    (null, 22, 5, 2);
#select * from detalles_compra;

INSERT INTO pagos (nombre_pago, factura)
VALUES
    ('EFECTIVO', 1),
    ('DEBITO MASTEERCARD', 2),
    ('DEBITO VISA', 3),
    ('MAESTRO', 4),
    ('MERCADO PAGO', 5),
    ('GO CUOTAS', 6),
    ('NARANJA', 7),
	('EFECTIVO', 8),
    ('DEBITO MASTEERCARD', 9),
    ('DEBITO VISA', 10),
    ('MAESTRO', 11),
    ('MERCADO PAGO', 12),
    ('NARANJA', 13),
    ('NARANJA', 14),
    ('EFECTIVO', 15),
    ('DEBITO MASTEERCARD', 16),
    ('DEBITO VISA', 17),
    ('EFECTIVO', 18),
    ('MERCADO PAGO', 19),
    ('GO CUOTAS', 20),
    ('NARANJA', 21),
    ('EFECTIVO', 22);
#select * FROM PAGOS; 

-- final de insecion
