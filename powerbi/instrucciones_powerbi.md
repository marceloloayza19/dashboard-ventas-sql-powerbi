# Instrucciones para construir el dashboard en Power BI Desktop

Esta guia explica como crear manualmente el archivo `.pbix` usando el dataset del proyecto. El archivo final no se incluye en este repositorio porque debe construirse desde Power BI Desktop.

## 1. Importar el archivo CSV

1. Abrir Power BI Desktop.
2. Seleccionar `Obtener datos`.
3. Elegir `Texto/CSV`.
4. Buscar el archivo `data/ventas.csv`.
5. Revisar la vista previa.
6. Seleccionar `Transformar datos`.

## 2. Revisar Power Query

En Power Query:

1. Confirmar que cada columna tenga el tipo de dato correcto.
2. Convertir `fecha` a tipo fecha si fuera necesario.
3. Validar que `cantidad`, `precio_unitario` y `total_venta` sean numericas.
4. Revisar si existen valores nulos.
5. Quitar duplicados usando `id_venta` si fuera necesario.
6. Crear columnas auxiliares: `anio`, `mes`, `nombre_mes` y `anio_mes`.
7. Hacer clic en `Cerrar y aplicar`.

Puedes usar como referencia el archivo `powerbi/power_query_m.md`.

## 3. Crear medidas DAX

En la vista de datos o modelo:

1. Seleccionar la tabla `ventas`.
2. Crear una nueva medida.
3. Copiar las medidas del archivo `powerbi/medidas_dax.md`.
4. Aplicar formato de moneda, numero entero o porcentaje segun corresponda.

Medidas principales:

- Ventas Totales.
- Cantidad Vendida.
- Numero de Ventas.
- Ticket Promedio.
- Variacion de Ventas.
- Variacion % de Ventas.

## 4. Crear las tarjetas KPI

Insertar 4 visualizaciones tipo tarjeta:

1. Ventas Totales.
2. Cantidad Vendida.
3. Numero de Ventas.
4. Ticket Promedio.

Ubicarlas en la parte superior del dashboard.

## 5. Crear grafico de lineas: ventas por mes

1. Insertar grafico de lineas.
2. Eje X: `anio_mes` o `fecha` agrupada por mes.
3. Valores: `Ventas Totales`.
4. Ordenar cronologicamente.
5. Agregar tooltip con `Cantidad Vendida` y `Ticket Promedio`.

## 6. Crear grafico de barras: ventas por categoria

1. Insertar grafico de barras o columnas.
2. Eje: `categoria`.
3. Valores: `Ventas Totales`.
4. Ordenar de mayor a menor.

## 7. Crear top 5 productos

1. Insertar grafico de barras horizontal.
2. Eje: `producto`.
3. Valores: `Cantidad Vendida` o `Ventas Totales`.
4. En filtros del visual, aplicar `Top N`.
5. Configurar Top = 5 por `Cantidad Vendida`.

## 8. Crear grafico por zona

1. Insertar grafico de columnas o barras.
2. Eje: `zona`.
3. Valores: `Ventas Totales`.
4. Ordenar de mayor a menor.

## 9. Crear tabla o matriz por vendedor

1. Insertar tabla o matriz.
2. Agregar `vendedor`.
3. Agregar `Ventas Totales`, `Cantidad Vendida`, `Numero de Ventas` y `Ticket Promedio`.
4. Ordenar por `Ventas Totales` de mayor a menor.

## 10. Agregar segmentadores

Insertar segmentadores para:

- `fecha`.
- `categoria`.
- `zona`.

Verificar que los filtros afecten a todas las visualizaciones del dashboard.

## 11. Aplicar formato visual

1. Usar una paleta profesional y consistente.
2. Mantener fondo claro.
3. Alinear tarjetas y graficos.
4. Agregar titulos simples a cada visualizacion.
5. Evitar elementos decorativos innecesarios.

Puedes seguir el diseno propuesto en `powerbi/layout_dashboard.md`.

## 12. Guardar el archivo .pbix

Guardar el archivo como:

`powerbi/dashboard_ventas_sql_powerbi.pbix`

No se incluye un archivo `.pbix` en este repositorio hasta que sea creado manualmente en Power BI Desktop.

## 13. Exportar capturas

Cuando el dashboard este terminado:

1. Tomar captura del dashboard general.
2. Tomar capturas de los principales graficos.
3. Guardarlas en la carpeta `images/`.
4. Usar nombres claros, por ejemplo:
   - `dashboard_general.png`.
   - `kpis_principales.png`.
   - `ventas_por_mes.png`.
   - `ventas_por_categoria.png`.
