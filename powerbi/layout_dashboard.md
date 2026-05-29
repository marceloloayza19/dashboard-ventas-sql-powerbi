# Layout recomendado del dashboard en Power BI

## Tamano de pagina

- Formato recomendado: `16:9`.
- Resolucion sugerida: `1280 x 720 px`.
- Vista: una pagina principal tipo resumen ejecutivo.

## Titulo del dashboard

`Dashboard de Ventas - Analisis Comercial 2025`

Ubicar el titulo en la parte superior izquierda. Debe ser claro, visible y profesional.

## Paleta de colores recomendada

- Azul principal: `#1F4E79`.
- Verde para indicadores positivos: `#2E7D32`.
- Gris oscuro para texto: `#2F2F2F`.
- Gris claro para fondos: `#F3F6F8`.
- Naranja moderado para acentos: `#F28C28`.

Usar fondo claro, bordes discretos y colores consistentes por categoria.

## Orden visual del dashboard

1. Titulo y filtros principales.
2. Tarjetas KPI en la parte superior.
3. Tendencia mensual al centro.
4. Comparaciones por categoria, producto y zona.
5. Tabla o matriz de vendedores en la parte inferior.

## Segmentadores necesarios

Ubicar los segmentadores en la parte superior derecha o en una franja lateral:

- Fecha: campo `fecha`.
- Categoria: campo `categoria`.
- Zona: campo `zona`.

## KPIs principales

Crear 4 tarjetas KPI en la parte superior:

1. Ventas Totales: medida `Ventas Totales`.
2. Cantidad Vendida: medida `Cantidad Vendida`.
3. Numero de Ventas: medida `Numero de Ventas`.
4. Ticket Promedio: medida `Ticket Promedio`.

Formato recomendado:

- Tarjetas alineadas horizontalmente.
- Numeros grandes y etiquetas cortas.
- Fondo blanco o gris muy claro.
- Moneda en soles si se desea contextualizar el caso peruano.

## Grafico de lineas: Ventas por mes

Ubicacion: zona central del dashboard.

Campos:

- Eje X: `anio_mes` o `fecha` agrupada por mes.
- Valores: `Ventas Totales`.
- Tooltip: `Cantidad Vendida`, `Numero de Ventas`, `Ticket Promedio`.

Objetivo: visualizar la evolucion mensual de las ventas.

## Grafico de barras: Ventas por categoria

Ubicacion: parte media izquierda.

Campos:

- Eje: `categoria`.
- Valores: `Ventas Totales`.
- Tooltip: `Porcentaje de Ventas por Categoria`.

Objetivo: identificar las categorias con mayor facturacion.

## Grafico de barras horizontal: Top 5 productos

Ubicacion: parte media derecha.

Campos:

- Eje: `producto`.
- Valores: `Cantidad Vendida` o `Ventas Totales`.
- Filtro visual: Top N = 5 por `Cantidad Vendida`.

Objetivo: mostrar los productos con mayor demanda.

## Grafico por zona

Opcion recomendada: grafico de columnas o barras.

Campos:

- Eje: `zona`.
- Valores: `Ventas Totales`.
- Tooltip: `Cantidad Vendida` y `Numero de Ventas`.

Objetivo: comparar el desempeno comercial por region.

## Tabla o matriz por vendedor

Ubicacion: parte inferior del dashboard.

Campos sugeridos:

- `vendedor`.
- `Ventas Totales`.
- `Cantidad Vendida`.
- `Numero de Ventas`.
- `Ticket Promedio`.

Ordenar por `Ventas Totales` de mayor a menor.

## Recomendaciones de diseno

- Mantener una sola pagina para que sea facil de explicar en entrevistas.
- Evitar exceso de colores y usar titulos descriptivos.
- Alinear visualizaciones para que el dashboard se vea ordenado.
- Usar etiquetas de datos solo donde aporten claridad.
- Validar que los filtros afecten correctamente todos los graficos.
