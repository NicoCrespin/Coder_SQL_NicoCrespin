-- AHORA SI

-- LISTADO DE LAS TABLAS QUE INCLIYE EL ARCHIVO: CLIENTES, PROVEEDOR, PRODUCTO, CATEGORIA_PRODUCTO, VENDEDOR, COMPRA, DETALLE_COMPRA, PAGOS, _CLIENTE1 Y _PRODUCTO2.

-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ent2crespin
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `_clientes2`
--

LOCK TABLES `_clientes2` WRITE;
/*!40000 ALTER TABLE `_clientes2` DISABLE KEYS */;
INSERT INTO `_clientes2` VALUES (1,'INSERT','root@localhost','2023-08-30','22:36:37',0,'ileana Contreras',32555888,'Santiso y moscoso 12','ili22@dato.com'),(2,'INSERT','root@localhost','2023-08-30','22:36:37',0,'Nico Crespini',39300333,'Lavalleja 1225','Niacc@dato.com'),(3,'UPDATE','root@localhost','2023-08-30','22:36:37',1,'Jose Luis',22722777,'Jacinto rios 222','pepe_lios@dato.com');
/*!40000 ALTER TABLE `_clientes2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `_producto2`
--

LOCK TABLES `_producto2` WRITE;
/*!40000 ALTER TABLE `_producto2` DISABLE KEYS */;
INSERT INTO `_producto2` VALUES (1,'INSERT','root@localhost','2023-08-30','22:36:37',50,'Zapatos Deportivos fuxia',1,5100,1,10),(2,'DELETE','root@localhost','2023-08-30','22:36:37',23,'Zapatos para Niños con Diseño',5,2500,20,8);
/*!40000 ALTER TABLE `_producto2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
INSERT INTO `categoria_producto` VALUES (1,'Zapatos deportivos',1,100),(2,'Zapatillas casuales',2,150),(3,'Botas de cuero',3,80),(4,'Sandalia de verano',4,120),(5,'Zapatos formales',5,90),(6,'Mocasines de cuero',6,110),(7,'Botines de moda',7,70),(8,'Carteras de cuero',9,200),(9,'Billeteras elegantes',9,180),(10,'Cinturones de moda',9,160),(11,'Productos de limpieza para cuero',10,250),(12,'Crema para calzado',10,300),(13,'Acondicionador de cuero',10,270),(14,'Zapatos de caballero',8,220),(15,'Stiletos',4,190),(16,'Zapatos de fiesta',1,110),(17,'Sandalias de cuero',2,130),(18,'Botas de moda',3,95),(19,'Mochilas de cuero',9,240),(20,'Zapatoas niño',5,220);
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Jose Luis',22722777,'Jacinto rios 222','pepe_lios@dato.com'),(2,'Nina Goitea',9444555,'Arturo Orgaz 132','ninita22@dato.com'),(3,'Nelson Crespo',12589664,'Los Aromos 15 1° A','nelsito_laT@dato.com'),(4,'Paolo Chancalay',24569874,'Mendoza 3030','PaoloChan@dato.com'),(5,'Rolando Crespín',45889321,'Gongora 1000','Rollo_zumaran@dato.com'),(6,'Juan Perez',12345678,'Calle 123, Ciudad A','juan@example.com'),(7,'Maria Lopez',23456789,'Avenida X, Ciudad B','maria@example.com'),(8,'Carlos Ramirez',34567890,'Calle Y, Ciudad C','carlos@example.com'),(9,'Laura Martinez',45678901,'Calle Z, Ciudad D','laura@example.com'),(10,'Pedro Fernandez',56789012,'Calle 456, Ciudad E','pedro@example.com'),(11,'Ana Rodriguez',67890123,'Avenida ABC, Ciudad F','ana@example.com'),(12,'Luisa Gonzalez',78901234,'Calle DEF, Ciudad G','luisa@example.com'),(13,'Javier Herrera',89012345,'Calle GHI, Ciudad H','javier@example.com'),(14,'Elena Torres',90123456,'Avenida JKL, Ciudad I','elena@example.com'),(15,'Miguel Castro',12345679,'Calle MNO, Ciudad J','miguel@example.com'),(16,'Paula Smith',23456780,'Calle PQR, Ciudad K','paula@example.com'),(17,'David Johnson',34567891,'Avenida STU, Ciudad L','david@example.com'),(18,'Sofia Brown',45678902,'Calle VWX, Ciudad M','sofia@example.com'),(19,'Alejandro Lee',56789013,'Calle YZA, Ciudad N','alejandro@example.com'),(20,'Carolina Taylor',67890124,'Avenida BCD, Ciudad O','carolina@example.com'),(21,'Fernando Martin',78901235,'Calle EFG, Ciudad P','fernando@example.com'),(22,'Isabel Clark',89012346,'Calle HIJ, Ciudad Q','isabel@example.com'),(23,'Roberto White',90123457,'Avenida KLM, Ciudad R','roberto@example.com'),(24,'Carmen Lewis',12345670,'Calle NOP, Ciudad S','carmen@example.com'),(25,'Gabriel Hill',23456781,'Calle QRS, Ciudad T','gabriel@example.com'),(26,'Pepito Flores',24877888,'Juan B Justo 4066','ppflores@live.com'),(27,'ileana Contreras',32555888,'Santiso y moscoso 12','ili22@dato.com'),(28,'Nico Crespini',39300333,'Lavalleja 1225','Niacc@dato.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'2023-08-30 22:36:37',1,2,7800),(2,'2023-08-30 22:36:37',2,5,2400),(3,'2023-08-30 22:36:37',3,7,3000),(4,'2023-08-30 22:36:37',4,14,15000),(5,'2023-08-30 22:36:37',5,6,5500),(6,'2023-08-30 22:36:37',1,8,9500),(7,'2023-08-30 22:36:37',2,22,15600);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalles_compra`
--

LOCK TABLES `detalles_compra` WRITE;
/*!40000 ALTER TABLE `detalles_compra` DISABLE KEYS */;
INSERT INTO `detalles_compra` VALUES (1,1,32,1),(2,2,12,3),(3,3,4,1),(4,4,8,2),(5,5,25,1),(6,6,39,1),(7,7,32,2);
/*!40000 ALTER TABLE `detalles_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,'EFECTIVO',1),(2,'DEBITO MASTEERCARD',2),(3,'DEBITO VISA',3),(4,'MAESTRO',4),(5,'MERCADO PAGO',5),(6,'GO CUOTAS',6),(7,'NARANJA',7);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Zapatos Deportivos Rojos',1,5000,1,10),(2,'Zapatillas Negras Clásicas',1,4500,1,8),(3,'Botas de Cuero Marrones',2,8000,2,6),(4,'Sandalia de Verano Azul',1,3000,2,12),(5,'Zapatos Formales Negros',1,6000,5,10),(6,'Mocasines de Cuero Marrón',1,5500,6,8),(7,'Botines de Moda Grises',7,7000,7,6),(8,'Cartera Elegante de Cuero',9,7500,8,10),(9,'Billetera de Lujo Negra',9,3000,9,8),(10,'Cinturón Moderno de Cuero',9,2000,10,12),(11,'Neceser',9,1500,9,10),(12,'Crema para Calzado de Cuero',10,800,12,8),(13,'Bolsa de Mano Elegante',9,6500,8,10),(14,'Cartera de Cuero con Diseño',9,7000,8,8),(15,'Bolso de Cuero Negro',9,9000,8,12),(16,'Mochila de Cuero Marrón',9,8500,19,10),(17,'Billetera Clásica de Cuero',9,3500,9,8),(18,'Cinturón de Cuero con Hebilla',9,1800,10,12),(19,'Riñonera',9,1200,9,10),(20,'Cepillo de Cuero Suave',10,600,11,8),(21,'Minibag',9,1000,8,12),(22,'Plantillas para Zapatos Cómodas',10,400,13,10),(24,'Bolsa Cruzada de Cuero Pequeña',9,2800,8,12),(25,'Zapatos Deportivos de Running',1,5500,1,10),(26,'Zapatillas de Moda Colorx',8,4800,14,36),(27,'Botas de Montaña Resistentes',3,8500,3,6),(28,'Sandalia Elegante con Tacón',2,3200,17,12),(29,'Zapatos Formales de Cuero',5,6200,16,10),(30,'Mocasines de Cuero Clásicos',6,5700,6,8),(31,'Botines de Cuero Marrones',7,7200,2,6),(32,'Sandalia Multiculor',4,7800,4,10),(33,'Bota taco Acrilico',3,3200,18,8),(34,'Stiletto strass',4,2200,15,12),(35,'Stiletto',4,1700,15,10),(36,'Superconfort hombre',8,900,14,8),(37,'Bolsa de Cuero de Mano',9,6800,19,10),(38,'Cartera de Cuero Moderna',9,7200,9,8),(39,'Bolso de Hombro de Cuero',8,9500,14,12),(40,'Mochila de Cuero para Viaje',9,8800,8,10),(41,'Bota urbana',3,3800,3,8),(42,'Franciscana',4,2000,4,12),(43,'Zapato uniforme',6,1300,5,10),(44,'Zapato prusiano',7,500,16,8),(45,'Sandalias de fiesta con strass',2,900,4,12),(46,'Plantillas de Cuero Transpirables',10,300,11,10),(47,'Zapatos Infantiles de Cuero',7,2300,20,8),(48,'Botin 7cm',7,2600,7,24),(49,'Zapatilla Platafoma',2,2600,2,24),(50,'Zapatos Deportivos fuxia',1,5100,1,10);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Calzados del Sur','Buenos Aires, Capital','calzadossur@example.com',12345678),(2,'Nina Shoes','Córdoba, Ciudad','ninashoes@example.com',23456789),(3,'Leather Arg','Rosario, Santa Fe','leatherarg@example.com',34567890),(4,'France Style','Mendoza, Ciudad','francestyle@example.com',45678901),(5,'Carefa','San Miguel de Tucumán, Tucumán','carefa@example.com',56789012),(6,'Patistella','La Plata, Buenos Aires','patistella@example.com',67890123),(7,'Classic and Co','Mar del Plata, Buenos Aires','classic@example.com',78901234),(8,'Calzados Express','Salta, Ciudad','expresscalzados@example.com',89012345),(9,'Nice Company','Santa Fe, Ciudad','nice.ventas@example.com',90123456),(10,'Vero Cuoio','San Juan, Ciudad','verocuoio@example.com',12345670);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Lauro Acosta',21546879,'Carcano 78','3%','100%'),(2,'Lucas Moyano',4588778,'Rosario 42','3%','90%'),(3,'Liliana Corbalan',36548912,'Maracaibo 132','3%','93%'),(4,'Nahuel Rivera',39302587,'Dean Funes 12','3%','85%'),(5,'Natali Verdun',40587963,'Mendoza 2058','3%','100%');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-12  0:03:20
