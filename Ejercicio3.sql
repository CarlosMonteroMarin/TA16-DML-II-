SELECT * FROM almacenes;
SELECT * FROM cajas WHERE valor>150;
SELECT contenido FROM cajas group by CONTENIDO;
SELECT AVG(valor) FROM cajas;
SELECT almacen, AVG(valor) FROM cajas group by ALMACEN;
SELECT almacen FROM cajas GROUP BY almacen HAVING AVG(valor)>150;
SELECT cajas.numreferencia, almacenes.LUGAR FROM cajas INNER JOIN almacenes ON cajas.ALMACEN=almacenes.codigo;
SELECT almacen, count(ALMACEN) as paquetes FROM cajas group by ALMACEN;
SELECT codigo FROM almacenes WHERE capacidad < (SELECT count(NUMREFERENCIA) FROM cajas WHERE almacen = codigo);
SELECT numreferencia FROM  cajas WHERE almacen = (SELECT codigo FROM almacenes WHERE lugar = "Bilbao"); 
INSERT INTO almacenes (codigo, LUGAR, CAPACIDAD) VALUES (566,"Barcelona",3);
INSERT INTO cajas (numreferencia, contenido, valor, almacen) VALUES ("H5RT","Papel",200,2);
UPDATE cajas SET valor=valor*0.85; 
UPDATE cajas SET valor=valor*0.80 WHERE valor> (SELECT * FROM (SELECT AVG(valor) FROM cajas) as a);
DELETE cajas FROM cajas WHERE valor<100;
DELETE FROM  cajas WHERE almacen = (SELECT * FROM (SELECT CODIGO FROM almacenes WHERE capacidad < (SELECT count(NUMREFERENCIA) FROM cajas WHERE almacen = CODIGO)) AS z);

