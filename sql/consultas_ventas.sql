-- Consultas de analisis de ventas
-- Base de datos: db_ventas_portafolio
-- Tabla: ventas

USE db_ventas_portafolio;

-- 1. Ventas totales
SELECT
    SUM(total_venta) AS ventas_totales
FROM ventas;

-- 2. Cantidad total vendida
SELECT
    SUM(cantidad) AS cantidad_total_vendida
FROM ventas;

-- 3. Numero total de ventas
SELECT
    COUNT(*) AS numero_total_ventas
FROM ventas;

-- 4. Ticket promedio
SELECT
    ROUND(AVG(total_venta), 2) AS ticket_promedio
FROM ventas;

-- 5. Ventas por mes
SELECT
    DATE_FORMAT(fecha, '%Y-%m') AS anio_mes,
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS cantidad_vendida,
    COUNT(*) AS numero_ventas
FROM ventas
GROUP BY DATE_FORMAT(fecha, '%Y-%m')
ORDER BY anio_mes;

-- 6. Ventas por categoria
SELECT
    categoria,
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS cantidad_vendida,
    COUNT(*) AS numero_ventas
FROM ventas
GROUP BY categoria
ORDER BY ventas_totales DESC;

-- 7. Ventas por producto
SELECT
    producto,
    categoria,
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS cantidad_vendida,
    COUNT(*) AS numero_ventas
FROM ventas
GROUP BY producto, categoria
ORDER BY ventas_totales DESC;

-- 8. Top 5 productos mas vendidos
SELECT
    producto,
    categoria,
    SUM(cantidad) AS cantidad_vendida,
    SUM(total_venta) AS ventas_totales
FROM ventas
GROUP BY producto, categoria
ORDER BY cantidad_vendida DESC
LIMIT 5;

-- 9. Ventas por zona
SELECT
    zona,
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS cantidad_vendida,
    COUNT(*) AS numero_ventas
FROM ventas
GROUP BY zona
ORDER BY ventas_totales DESC;

-- 10. Ventas por vendedor
SELECT
    vendedor,
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS cantidad_vendida,
    COUNT(*) AS numero_ventas,
    ROUND(AVG(total_venta), 2) AS ticket_promedio
FROM ventas
GROUP BY vendedor
ORDER BY ventas_totales DESC;

-- 11. Ventas por metodo de pago
SELECT
    metodo_pago,
    SUM(total_venta) AS ventas_totales,
    COUNT(*) AS numero_ventas,
    ROUND(SUM(total_venta) / (SELECT SUM(total_venta) FROM ventas) * 100, 2) AS participacion_porcentual
FROM ventas
GROUP BY metodo_pago
ORDER BY ventas_totales DESC;

-- 12. Cliente con mayor compra acumulada
SELECT
    cliente,
    SUM(total_venta) AS compra_acumulada,
    COUNT(*) AS numero_compras
FROM ventas
GROUP BY cliente
ORDER BY compra_acumulada DESC
LIMIT 1;

-- 13. Categoria con mayor participacion en ventas
SELECT
    categoria,
    SUM(total_venta) AS ventas_totales,
    ROUND(SUM(total_venta) / (SELECT SUM(total_venta) FROM ventas) * 100, 2) AS participacion_porcentual
FROM ventas
GROUP BY categoria
ORDER BY participacion_porcentual DESC
LIMIT 1;

-- 14. Comparacion de ventas por mes y categoria
SELECT
    DATE_FORMAT(fecha, '%Y-%m') AS anio_mes,
    categoria,
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS cantidad_vendida
FROM ventas
GROUP BY DATE_FORMAT(fecha, '%Y-%m'), categoria
ORDER BY anio_mes, categoria;

-- 15. Resumen ejecutivo
SELECT
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS cantidad_total_vendida,
    COUNT(*) AS numero_total_ventas,
    ROUND(AVG(total_venta), 2) AS ticket_promedio,
    COUNT(DISTINCT cliente) AS total_clientes,
    COUNT(DISTINCT producto) AS total_productos,
    COUNT(DISTINCT vendedor) AS total_vendedores
FROM ventas;
