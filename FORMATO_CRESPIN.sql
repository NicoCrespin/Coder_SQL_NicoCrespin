DELIMITER $$
CREATE FUNCTION actualizar_rendimiento(vendedor_id INT, nuevo_rendimiento VARCHAR(45)) RETURNS INT
DETERMINISTIC
BEGIN
    UPDATE vendedor
    SET rendimiento = nuevo_rendimiento
    WHERE id_vendedor = vendedor_id;

    RETURN ROW_COUNT();
END;
$$
DELIMITER ;

select actualizar_rendimiento( 3 , '93%' );
-- RECIBE 2 PARAMETROS DE ENTRADA

DELIMITER $$
CREATE FUNCTION facturas_vendedor(id_vendedor INT) RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total_venta INT;
    SELECT COUNT(*) INTO total_venta FROM compra WHERE vendedor_factura = id_vendedor;
    RETURN COALESCE(total_venta, 0);
END;
$$
DELIMITER ;

SELECT facturas_vendedor(2);
-- RECIBE 1 PARAMETRO DE ENTRADA


DELIMITER $$
CREATE FUNCTION promedio_precio_productos() RETURNS DECIMAL(10, 2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE avg_price DECIMAL(10, 2);
    SELECT AVG(precio) INTO avg_price FROM producto;
    RETURN COALESCE(avg_price, 0);
END;
$$
DELIMITER ;

select promedio_precio_productos();
-- NO RECIBE PARAMETROS DE ENTRADA

select * from vendedor;