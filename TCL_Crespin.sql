-- Inicio de transaccion
START TRANSACTION;
DELETE FROM clientes WHERE id_cliente = 15;
SELECT * FROM clientes;

-- ROLLBACK; Comentado para no deshacer los cambios
-- COMMIT; Comentado para no confirmarlos

-- Inicio una nueva transacción
START TRANSACTION;
INSERT INTO producto (nombre_producto, proveedor_producto, precio, categoria, stock)
VALUES 
    ('Zapatos Deportivos negro/blanco', 1, 7800, 1, 10),
    ('Zapatillas Marron Clásicas', 1, 4000, 1, 8),
    ('Botas de Cuero Marrones/negro', 2, 8200, 2, 6),
    ('Sandalia de Verano verde', 1, 4000, 2, 12);
SAVEPOINT a1;

INSERT INTO producto (nombre_producto, proveedor_producto, precio, categoria, stock)
VALUES 
    ('Zapatos Formales Negros/charol', 1, 12000, 5, 10),
    ('Mocasines de Cuero Caoba', 1, 5500, 6, 8),
    ('Botines de Moda Taupe', 7, 7000, 7, 6),
    ('Cartera Elegante de Cuero/reptil', 9, 7900, 8, 10);
SAVEPOINT a2;

-- Verifico la insercion
SELECT * FROM producto ORDER BY id_producto DESC;

-- RELEASE SAVEPOINT a1; comentando esta linea no se libera el savepoint A1. 
-- De No estar comentada, SI se liberaria y no se podria realizar un rollback posteriormente.

-- Rollback a a1, deshago inserciones realizadas después de a1
ROLLBACK TO a1;

SELECT * FROM producto ORDER BY id_producto DESC;