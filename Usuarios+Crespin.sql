-- Me dispongo a crear el usuario 1 al que vamos a llamar Lecthor
CREATE USER "lecthor"@"localhost";
-- En la siguiente sentencia incluimos en sus atributos la opcion de lectura.
GRANT SELECT ON Prueba3.* TO "lecthor"@"localhost";

-- Creamos el segundo usuario
CREATE USER "inserthor"@"localhost";
-- Ademas de lectura incluimos la insercion y la modificacion dentro de las acciones que puede realizar
GRANT SELECT, INSERT, UPDATE ON Prueba3.* TO "inserthor"@"localhost";