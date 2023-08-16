create schema VENTAS;
use VENTAS; 


CREATE TABLE clientes(
  id_cliente INT PRIMARY KEY AUTO_INCREMENT,
  nombre_cliente VARCHAR(45),
  dni_cliente int UNIQUE,
  direccion VARCHAR(45),
  email VARCHAR(45) UNIQUE
);


CREATE TABLE vendedor(
	id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_vendedor VARCHAR(45),
    dni_vendedor int unique,
    direccion VARCHAR(45),
	comision VARCHAR(45),
    rendimiento VARCHAR(45)
);


CREATE TABLE proveedor(
	id_proveedor INT PRIMARY KEY auto_increment,
    nombre_proveedor VARCHAR(45),
    direccion VARCHAR(45),
	email VARCHAR(45) UNIQUE,
    numero_cuenta int UNIQUE
);


CREATE TABLE categoria_producto(
    id_categoria INT PRIMARY KEY auto_increment,
    tipo_producto VARCHAR(45),
    id_proveedor_categoria INT,
    stock int,
    
FOREIGN KEY (id_proveedor_categoria) REFERENCES proveedor(id_proveedor)
);


CREATE TABLE producto(
	id_producto INT PRIMARY KEY auto_increment,
    nombre_producto VARCHAR(45),
    proveedor_producto int,
	precio int,
    categoria int,
    stock int,
    
FOREIGN KEY (proveedor_producto) REFERENCES proveedor(id_proveedor),
FOREIGN KEY (categoria) REFERENCES categoria_producto(id_categoria)
);


CREATE TABLE compra(
	num_factura INT PRIMARY KEY AUTO_INCREMENT auto_increment,
    fecha DATETIME,
    vendedor_factura int,
	cliente_factura int,
    productos_factura int,
    total int,
    
FOREIGN KEY (vendedor_factura) REFERENCES vendedor(id_vendedor),
FOREIGN KEY (cliente_factura) REFERENCES clientes(id_cliente),
FOREIGN KEY (productos_factura) REFERENCES producto(id_producto)
);


CREATE TABLE pagos(
  id_pago INT PRIMARY KEY AUTO_INCREMENT,
  nombre_pago varchar (45) not null,
  factura int not null,
  
FOREIGN KEY (factura) REFERENCES compra(num_factura)
);


INSERT INTO clientes VALUES 
(NULL, "Pepe Luis", 22722777 , "Jacinto rios 222", 'pepe_lios@dato.com'),
(NULL, "Nina Goitea", 9444555 , "Arturo Orgaz 132", 'ninita22@dato.com'),
(NULL, "Nelson Crespo", 12589664 , "Los Aromos 15 1° A", 'nelsito_laT@dato.com'),
(NULL, "Paolo Chancalay", 24569874 , "Mendoza 3030", 'PaoloChan@dato.com'),
(NULL, "Roolando Bruno Crespin", 45889321 , "Gongora 1000", 'Rollo_zumaran@dato.com');
SELECT * FROM clientes;

INSERT INTO vendedor VALUES 
(NULL, "Lauro Acosta", 21546879 , "Carcano 78", '3%', '100%'),
(NULL, "Lucas Moyano", 4588778 , "Rosario 42", '3%', '90%'),
(NULL, "Liliana Corbalan", 36548912 , "Maracaibo 132", '3%', '75%'),
(NULL, "Nahuel Rivera", 39302587 , "Dean Funes 12", '3%', '85%'),
(NULL, "Natali Verdun", 40587963 , "Mendoza 2058", '3%', '100%');
SELECT * FROM vendedor;

UPDATE clientes
SET nombre_cliente = 'Rolando Crespín'
WHERE dni_cliente = 45889321;
 Select * from clientes;
 
 Select * from proveedor;
 
 
INSERT INTO proveedor (nombre_proveedor, direccion, email, numero_cuenta)
VALUES
  ('Calzados del Sur', 'Buenos Aires, Capital', 'calzadossur@example.com', 12345678),
  ('Zapatería Caminando', 'Córdoba, Ciudad', 'caminando@example.com', 23456789),
  ('Calzados Argentinos', 'Rosario, Santa Fe', 'calzadosargentinos@example.com', 34567890),
  ('Zapatos Elegantes', 'Mendoza, Ciudad', 'elegantes@example.com', 45678901),
  ('Zapatería Moderna', 'San Miguel de Tucumán, Tucumán', 'modernazapatos@example.com', 56789012),
  ('Calzados Fashion', 'La Plata, Buenos Aires', 'fashioncalzados@example.com', 67890123),
  ('Zapatería Clásica', 'Mar del Plata, Buenos Aires', 'clasica@example.com', 78901234),
  ('Calzados Express', 'Salta, Ciudad', 'expresscalzados@example.com', 89012345),
  ('Zapatería Innovadora', 'Santa Fe, Ciudad', 'innovadorazapatos@example.com', 90123456),
  ('Calzados Comodos', 'San Juan, Ciudad', 'comodos@example.com', 12345670);
  select * from proveedor;
  
  INSERT INTO categoria_producto (tipo_producto, id_proveedor_categoria, stock)
VALUES
  ('Zapatos deportivos', 1, 100),
  ('Zapatillas casuales', 2, 150),
  ('Botas de cuero', 3, 80),
  ('Sandalia de verano', 4, 120),
  ('Zapatos formales', 5, 90),
  ('Mocasines de cuero', 6, 110),
  ('Botines de moda', 7, 70),
  ('Carteras de cuero', 8, 200),
  ('Billeteras elegantes', 9, 180),
  ('Cinturones de moda', 10, 160),
  ('Productos de limpieza para cuero', 10, 250),
  ('Crema para calzado', 10, 300),
  ('Acondicionador de cuero', 10, 270),
  ('Limpiador de cuero', 10, 220),
  ('Productos para teñir cuero', 10, 190),
  ('Zapatos de fiesta', 1, 110),
  ('Sandalias de cuero', 2, 130),
  ('Botas de moda', 3, 95),
  ('Mochilas de cuero', 4, 240),
  ('Bolsos de mano elegantes', 5, 220);
  select * from categoria_producto;
  
  INSERT INTO producto (nombre_producto, proveedor_producto, precio, categoria, stock)
VALUES 
('Zapatos Deportivos Rojos', 1, 5000, 1, 10),
('Zapatillas Negras Clásicas', 1, 4500, 1, 8),
('Botas de Cuero Marrones', 1, 8000, 1, 6),
('Sandalia de Verano Azul', 1, 3000, 1, 12),
('Zapatos Formales Negros', 1, 6000, 1, 10),
('Mocasines de Cuero Marrón', 1, 5500, 1, 8),
('Botines de Moda Grises', 1, 7000, 1, 6),
('Cartera Elegante de Cuero', 2, 7500, 2, 10),
('Billetera de Lujo Negra', 2, 3000, 2, 8),
('Cinturón Moderno de Cuero', 2, 2000, 2, 12),
('Neceser', 3, 1500, 3, 10),
('Crema para Calzado de Cuero', 3, 800, 10, 8),
('Bolsa de Mano Elegante', 2, 6500, 4, 10),
('Cartera de Cuero con Diseño', 2, 7000, 4, 8),
('Bolso de Cuero Negro', 2, 9000, 4, 12),
('Mochila de Cuero Marrón', 3, 8500, 4, 10),
('Billetera Clásica de Cuero', 3, 3500, 5, 8),
('Cinturón de Cuero con Hebilla', 3, 1800, 5, 12),
('Riñonera', 4, 1200, 6, 10),
('Cepillo de Cuero Suave', 4, 600, 10, 8),
('Minibag', 4, 1000, 6, 12),
('Plantillas para Zapatos Cómodas', 5, 400, 6, 10),
('Zapatos para Niños con Diseño', 5, 2500, 1, 8),
('Bolsa Cruzada de Cuero Pequeña', 5, 2800, 4, 12),
('Zapatos Deportivos de Running', 6, 5500, 1, 10),
('Zapatillas de Moda Grisáceas', 6, 4800, 1, 8),
('Botas de Montaña Resistentes', 6, 8500, 1, 6),
('Sandalia Elegante con Tacón', 6, 3200, 1, 12),
('Zapatos Formales de Cuero', 7, 6200, 1, 10),
('Mocasines de Cuero Clásicos', 7, 5700, 1, 8),
('Botines de Cuero Marrones', 7, 7200, 1, 6),
('Cartera de Cuero Sencilla', 8, 7800, 2, 10),
('Billetera de Cuero Elegante', 8, 3200, 2, 8),
('Cinturón de Moda en Cuero', 8, 2200, 2, 12),
('Stiletto', 9, 1700, 3, 10),
('Superconfort hombre', 9, 900, 3, 8),
('Bolsa de Cuero de Mano', 7, 6800, 4, 10),
('Cartera de Cuero Moderna', 7, 7200, 4, 8),
('Bolso de Hombro de Cuero', 8, 9500, 4, 12),
('Mochila de Cuero para Viaje', 9, 8800, 4, 10),
('Billetera Práctica de Cuero', 9, 3800, 5, 8),
('Cinturón de Cuero Ajustable', 9, 2000, 5, 12),
('Removedor de Manchas y Olores', 10, 1300, 6, 10),
('Cepillo para Limpieza de Cuero', 10, 500, 6, 8),
('Sandalias de fiesta con strass', 10, 900, 6, 12),
('Plantillas de Cuero Transpirables', 6, 300, 6, 10),
('Zapatos Infantiles de Cuero', 7, 2300, 1, 8),
('Bolso Cruzado de Cuero Compacto', 8, 2600, 4, 12);
select * from producto;

INSERT INTO compra (fecha, vendedor_factura, cliente_factura, productos_factura, total)
VALUES
    (NOW(), 1, 2, 32, 5000),
    (NOW(), 2, 5, 12, 4500),
    (NOW(), 3, 7, 4, 8000),
    (NOW(), 4, 14, 8, 3000),
    (NOW(), 5, 6, 25, 6000),
    (NOW(), 1, 8, 39, 5500),
    (NOW(), 2, 22, 32, 7000);
select * from compra;

INSERT INTO pagos (nombre_pago, factura)
VALUES
    ('EFECTIVO', 8),
    ('DEBITO MASTEERCARD', 10),
    ('DEBITO VISA', 12),
    ('MAESTRO', 14),
    ('MERCADO PAGO', 16),
    ('GO CUOTAS', 18),
    ('NARANJA', 20);
select * FROM PAGOS; 

