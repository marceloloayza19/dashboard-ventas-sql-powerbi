-- Script de creacion de base de datos y tabla
-- Proyecto: Dashboard de Ventas con SQL y Power BI
-- Motor recomendado: MySQL 8.0 o superior

CREATE DATABASE IF NOT EXISTS db_ventas_portafolio
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_spanish_ci;

USE db_ventas_portafolio;

DROP TABLE IF EXISTS ventas;

CREATE TABLE ventas (
    id_venta INT NOT NULL,
    fecha DATE NOT NULL,
    cliente VARCHAR(120) NOT NULL,
    zona VARCHAR(50) NOT NULL,
    producto VARCHAR(120) NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    total_venta DECIMAL(12, 2) NOT NULL,
    metodo_pago VARCHAR(80) NOT NULL,
    vendedor VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_venta)
);

-- Como importar el CSV desde MySQL Workbench:
-- 1. Ejecutar este script para crear la base de datos y la tabla.
-- 2. En el panel de esquemas, seleccionar db_ventas_portafolio.
-- 3. Clic derecho sobre la tabla ventas.
-- 4. Seleccionar "Table Data Import Wizard".
-- 5. Elegir el archivo data/ventas.csv.
-- 6. Confirmar que la primera fila contiene encabezados.
-- 7. Mapear las columnas del CSV con las columnas de la tabla.
-- 8. Ejecutar la importacion.

-- Validaciones recomendadas despues de importar:
SELECT COUNT(*) AS registros_importados
FROM ventas;

SELECT *
FROM ventas
LIMIT 10;

-- Esta consulta debe devolver cero filas si total_venta fue importado correctamente.
SELECT
    id_venta,
    cantidad,
    precio_unitario,
    total_venta,
    cantidad * precio_unitario AS total_calculado
FROM ventas
WHERE total_venta <> cantidad * precio_unitario;
