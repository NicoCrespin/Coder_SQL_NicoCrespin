CREATE TABLE _clientes2 (
    id_aud INT PRIMARY KEY AUTO_INCREMENT,
    accion VARCHAR(20),
    usuario VARCHAR(45),
    fecha DATE,
    hora TIME,
    id_cliente INT,
    nombre_cliente VARCHAR(45),
    dni_cliente INT,
    direccion VARCHAR(45),
    email VARCHAR(45)
);

--Se ejecuta ANTES de insertar un nuevo registro en la tabla clientes. Registra la acción como 'INSERT', captura el nombre de usuario que realiza la operación, la fecha y la hora, así como los datos del cliente que se está insertando en la tabla _clientes2.

DELIMITER $$
CREATE TRIGGER antes_insert_cl
BEFORE INSERT ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO _clientes2 (accion, usuario, fecha, hora, id_cliente, nombre_cliente, dni_cliente, direccion, email)
    VALUES ('INSERT', USER(), CURDATE(), CURTIME(), NEW.id_cliente, NEW.nombre_cliente, NEW.dni_cliente, NEW.direccion, NEW.email);
END;
$$ DELIMITER ;

-- DESPUES de actualizar un registro en la tabla clientes la acción se registra como 'UPDATE', captura el nombre de usuario que realiza la operación, la fecha y la hora, así como los nuevos datos del cliente después de la actualización.

DELIMITER $$
CREATE TRIGGER despues_update_cl
AFTER UPDATE ON clientes
FOR EACH ROW
BEGIN
    INSERT INTO _clientes2 (accion, usuario, fecha, hora, id_cliente, nombre_cliente, dni_cliente, direccion, email)
    VALUES ('UPDATE', USER(), CURDATE(), CURTIME(), NEW.id_cliente, NEW.nombre_cliente, NEW.dni_cliente, NEW.direccion, NEW.email);
END;
$$ DELIMITER ;

-- AQUI SIMPLEMENTE VERIFICO EL FUNCIONAMIENTO DE LOS TRIGGERS DE LA TABLA CLIENTES.

INSERT INTO clientes VALUES 
(NULL,"ileana Contreras", 32555888 , "Santiso y moscoso 12", 'ili22@dato.com'),
(NULL,"Nico Crespini", 39300333 , "Lavalleja 1225", 'Niacc@dato.com');
select * from clientes order by id_cliente desc;
select * from _clientes2;

UPDATE clientes
SET nombre_cliente = "Jose Luis"
WHERE id_cliente = 1;
select * from _clientes2;

DROP TRIGGER IF EXISTS despues_delete_cl;

CREATE TABLE _producto2 (
    id_aud INT PRIMARY KEY AUTO_INCREMENT,
    accion VARCHAR(20),
    usuario VARCHAR(45),
    fecha DATE,
    hora TIME,
    id_producto INT,
    nombre_producto VARCHAR(45),
    proveedor_producto INT,
    precio INT,
    categoria INT,
    stock INT
);

--  Se ejecuta ANTES de eliminar un registro en la tabla producto. Registra la acción como 'DELETE', captura el nombre de usuario que realiza la operación, la fecha, la hora y tambien los datos del producto que se está eliminando.

DELIMITER $$
CREATE TRIGGER antes_delete_pr
BEFORE DELETE ON producto
FOR EACH ROW
BEGIN
    INSERT INTO _producto2 (accion, usuario, fecha, hora, id_producto, nombre_producto, proveedor_producto, precio, categoria, stock)
    VALUES ('DELETE', USER(), CURDATE(), CURTIME(), OLD.id_producto, OLD.nombre_producto, OLD.proveedor_producto, OLD.precio, OLD.categoria, OLD.stock);
END;
$$ DELIMITER ;

-- Después de insertar un nuevo registro registra la acción como 'INSERT', captura el nombre de usuario que realiza la operación, la fecha y la hora, así como los datos del producto que se ha insertado.

DELIMITER $$
CREATE TRIGGER despues_insert_pr
AFTER INSERT ON producto
FOR EACH ROW
BEGIN
    INSERT INTO _producto2 (accion, usuario, fecha, hora, id_producto, nombre_producto, proveedor_producto, precio, categoria, stock)
    VALUES ('INSERT', USER(), CURDATE(), CURTIME(), NEW.id_producto, NEW.nombre_producto, NEW.proveedor_producto, NEW.precio, NEW.categoria, NEW.stock);
END;
$$ DELIMITER ;

-- AQUI TAMBIEN VERIFICO EL FUNCIONAMIENTO

INSERT INTO producto (nombre_producto, proveedor_producto, precio, categoria, stock)
VALUES ('Zapatos Deportivos fuxia', 1, 5100, 1, 10);
select * from producto order by id_producto desc;
select * from _producto2;

delete from producto where id_producto = 23;
select * from producto order by id_producto desc;
select * from _producto2;