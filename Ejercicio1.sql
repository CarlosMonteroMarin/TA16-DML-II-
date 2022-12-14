SELECT nombre FROM articulos;
SELECT nombre,precio FROM articulos;
SELECT nombre,precio FROM articulos WHERE precio <= 200;
SELECT nombre,precio FROM articulos WHERE precio BETWEEN 60 AND 120;
SELECT nombre,precio*166.386 FROM articulos;
SELECT avg(precio) FROM articulos;
SELECT avg(precio) FROM articulos WHERE fabricante = 2;
SELECT count(nombre) FROM articulos WHERE precio >=180;
SELECT nombre,precio FROM articulos WHERE precio >=180 ORDER BY nombre ASC, precio DESC;
SELECT articulos.*, fabricantes.NOMBRE FROM articulos INNER JOIN fabricantes ON articulos.FABRICANTE=fabricantes.codigo;
SELECT articulos.nombre, articulos.precio, fabricantes.NOMBRE FROM articulos INNER JOIN fabricantes ON articulos.FABRICANTE=fabricantes.codigo;
SELECT fabricantes.codigo, AVG(articulos.PRECIO) from articulos, fabricantes WHERE articulos.FABRICANTE = fabricantes.CODIGO  GROUP BY fabricantes.CODIGO;
SELECT fabricantes.nombre, AVG(articulos.PRECIO) from articulos, fabricantes WHERE articulos.FABRICANTE = fabricantes.CODIGO  GROUP BY fabricantes.CODIGO;
SELECT DISTINCT fabricantes.nombre from articulos, fabricantes WHERE articulos.FABRICANTE = fabricantes.CODIGO  AND (SELECT avg(articulos.PRECIO)>=150 GROUP BY fabricantes.NOMBRE) ;
SELECT nombre, precio FROM articulos WHERE precio = (select min(PRECIO) from articulos);
SELECT articulos.nombre, articulos.precio, fabricantes.nombre FROM articulos INNER JOIN fabricantes ON articulos.FABRICANTE=fabricantes.codigo WHERE precio = (select max(precio) from articulos WHERE articulos.fabricante = fabricantes.CODIGO);
INSERT INTO articulos (codigo,nombre, precio, fabricante) values (11,"Altavoces", 70, 2);
UPDATE articulos SET nombre="Impresora Laser" WHERE codigo=8;
UPDATE articulos SET precio=precio*0.9;
UPDATE articulos SET precio=precio-10 WHERE precio>=120;