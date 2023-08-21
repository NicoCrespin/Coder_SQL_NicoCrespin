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

-- Este sp sirve para borrar registros en la tabla clientes.

DELIMITER $$
CREATE PROCEDURE borrar_cliente(
    IN id_cliente INT
)
BEGIN
    DELETE FROM clientes WHERE id_cliente = cliente_id;
END;
$$ DELIMITER ;

-- para utilizarlo colocar el id del cliente a eliminar dentro de los parentesis. 

call borrar_cliente()

