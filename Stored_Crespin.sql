-- stored procedure's

-- Este SP ordena de manera ascendiente o decendiente la tabla Producto teniendo en cuenta la columna por la cual se desea ordenar.

DELIMITER $$
CREATE PROCEDURE ordenar_por_columna(IN nombreColumna VARCHAR(45), IN orden_por VARCHAR(10))
BEGIN
    SET @consulta = CONCAT('SELECT * FROM producto ORDER BY ', nombreColumna, ' ', orden_por);
    PREPARE orden FROM @consulta;
    EXECUTE orden;
    DEALLOCATE PREPARE orden;
END 
$$ DELIMITER ;

-- Para utilizarlo cambiar 'nombre_producto' por la culumna elegida y modificar 'ASC' por 'DESC' en caso de querer un orden decendiente, por defecto el SP ordena la tabla de manera ascendente. 

CALL ordenar_por_columna('nombre_producto', 'ASC');

-- Este sp sirve para la insercion de registros en la tabla clientes.

DELIMITER $$
CREATE PROCEDURE Insert_clientes(
    IN nombre VARCHAR(45),
    IN dni INT,
    IN direccion VARCHAR(45),
    IN email VARCHAR(45)
)
BEGIN
    INSERT INTO clientes (nombre_cliente, dni_cliente, direccion, email)
    VALUES (nombre, dni, direccion, email);
END;
$$ DELIMITER ;

-- para utilizarlo simplemente debemos remplazar los datos del parentesis por los nuevos registros. 

CALL Insert_clientes('Pepito Flores', 24877888, 'Juan B Justo 4066', 'ppflores@live.com');

select * from clientes order by id_cliente desc;

-- este SP se encarga de la insercion dentro de la tabla proveedores
DELIMITER $$
CREATE PROCEDURE Agrega_Proveedor(
    IN nombre_proveedor VARCHAR(45),
    IN direccion VARCHAR(45),
    IN email VARCHAR(45),
    IN numero_cuenta INT
)
BEGIN
    INSERT INTO proveedor (nombre_proveedor, direccion, email, numero_cuenta)
    VALUES (nombre_proveedor, direccion, email, numero_cuenta);
END;
$$
DELIMITER ;

-- para utilicarlo remplazaremos los datos dentro del parentesis por los nuevos registros
#CALL Agrega_Proveedor('Grupo Soul', 'Camino Interfabrica 456', 'Ventas@gruposoul.com', 99949998);
#select * FROM PROVEEDOR ORDER BY id_proveedor desc;

-- este SP se encarga de la actualizacion de los datos dentro de la tabla proveedores.
DELIMITER $$
CREATE PROCEDURE Actualiza_Proveedor(
    IN proveedor_id INT,
    IN nombre_proveedor VARCHAR(45),
    IN direccion VARCHAR(45),
    IN email VARCHAR(45),
    IN numero_cuenta INT
)
BEGIN
    UPDATE proveedor
    SET nombre_proveedor = nombre_proveedor,
        direccion = direccion,
        email = email,
        numero_cuenta = numero_cuenta
    WHERE id_proveedor = proveedor_id;
END;
$$
DELIMITER ;

--para utilizarlo remplazamoas en primera instacia el ID del proveedor que deseamos actualizar y paso seguido cada uno de los nuevos datos.
#CALL Actualiza_Proveedor(11, 'Grupo Actualizado', 'Actual', 'Actualizado_correo@proveedor.com', 99999999);
#select * from proveedor order by id_proveedor desc;


-- Stored procedure que se encarga de la Eliminacion de registros de la tabla proveedores.
DELIMITER $$
CREATE PROCEDURE Elimina_Proveedor(
    IN proveedor_id INT
)
BEGIN
    DELETE FROM proveedor
    WHERE id_proveedor = proveedor_id;
END;
$$
DELIMITER ;

-- Para utilizarlo colocamos entre el parentesis el ID del proveedor a eliminar
#CALL Elimina_Proveedor(11);
#select * from proveedor order by id_proveedor desc;



