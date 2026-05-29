-- Consultas de analisis de ventas para MySQL
-- Dataset base: data/ventas.csv

-- Tabla sugerida para importar el CSV
CREATE TABLE IF NOT EXISTS ventas (
    fecha DATE,
    producto VARCHAR(100),
    categoria VARCHAR(100),
    cliente VARCHAR(100),
    zona VARCHAR(100),
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    total_venta DECIMAL(12, 2)
);

-- 1. Ventas totales
SELECT
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS unidades_vendidas,
    COUNT(*) AS numero_transacciones,
    ROUND(AVG(total_venta), 2) AS ticket_promedio
FROM ventas;

-- 2. Ventas por mes
SELECT
    DATE_FORMAT(fecha, '%Y-%m') AS mes,
    SUM(total_venta) AS ventas_mensuales,
    SUM(cantidad) AS unidades_vendidas
FROM ventas
GROUP BY DATE_FORMAT(fecha, '%Y-%m')
ORDER BY mes;

-- 3. Productos mas vendidos por cantidad
SELECT
    producto,
    categoria,
    SUM(cantidad) AS unidades_vendidas,
    SUM(total_venta) AS ventas_totales
FROM ventas
GROUP BY producto, categoria
ORDER BY unidades_vendidas DESC;

-- 4. Ventas por categoria
SELECT
    categoria,
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS unidades_vendidas,
    ROUND(AVG(total_venta), 2) AS ticket_promedio
FROM ventas
GROUP BY categoria
ORDER BY ventas_totales DESC;

-- 5. Ventas por zona
SELECT
    zona,
    SUM(total_venta) AS ventas_totales,
    SUM(cantidad) AS unidades_vendidas,
    COUNT(*) AS numero_transacciones
FROM ventas
GROUP BY zona
ORDER BY ventas_totales DESC;

-- 6. Producto con mayor facturacion
SELECT
    producto,
    SUM(total_venta) AS ventas_totales
FROM ventas
GROUP BY producto
ORDER BY ventas_totales DESC
LIMIT 1;

-- 7. Categoria con mayor facturacion por zona
SELECT
    zona,
    categoria,
    SUM(total_venta) AS ventas_totales
FROM ventas
GROUP BY zona, categoria
ORDER BY zona, ventas_totales DESC;
