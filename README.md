# Dashboard de Ventas con SQL y Power BI

Proyecto de practica orientado a Data Analytics y Business Intelligence. El objetivo es analizar un dataset ficticio de ventas usando consultas SQL en MySQL y, posteriormente, construir un dashboard interactivo en Power BI.

## Objetivo del proyecto

Analizar el comportamiento de ventas de una empresa ficticia para identificar:

- Ventas totales del periodo.
- Evolucion mensual de las ventas.
- Productos mas vendidos.
- Categorias con mayor facturacion.
- Zonas con mejor desempeno comercial.

## Estructura del proyecto

```text
dashboard-ventas-sql-powerbi/
├── data/
│   └── ventas.csv
├── sql/
│   └── consultas_analisis_ventas.sql
├── powerbi/
│   └── .gitkeep
├── images/
│   └── .gitkeep
├── README.md
└── conclusiones.md
```

## Dataset

El archivo `data/ventas.csv` contiene datos ficticios de ventas con las siguientes columnas:

- `fecha`: fecha de la venta.
- `producto`: producto vendido.
- `categoria`: categoria del producto.
- `cliente`: cliente ficticio.
- `zona`: zona geografica de la venta.
- `cantidad`: unidades vendidas.
- `precio_unitario`: precio por unidad.
- `total_venta`: importe total de la venta.

## Analisis SQL

El archivo `sql/consultas_analisis_ventas.sql` incluye consultas para MySQL que permiten analizar:

- Ventas totales.
- Ventas por mes.
- Productos mas vendidos.
- Ventas por categoria.
- Ventas por zona.

Estas consultas sirven como base para explorar los datos antes de crear visualizaciones.

## Dashboard en Power BI

El dashboard se construira posteriormente en Power BI usando el dataset `ventas.csv` y los resultados del analisis SQL como referencia.

Cuando el dashboard este listo, se agregaran:

- El archivo `.pbix` en la carpeta `powerbi/`.
- Capturas del dashboard en la carpeta `images/`.

## Herramientas utilizadas

- MySQL para analisis mediante consultas SQL.
- Power BI para la construccion del dashboard.
- CSV como fuente de datos inicial.
- GitHub para documentar y compartir el proyecto.

## Posibles visualizaciones del dashboard

- Tarjeta con ventas totales.
- Grafico de lineas con ventas mensuales.
- Grafico de barras con productos mas vendidos.
- Grafico de columnas por categoria.
- Mapa o grafico de barras por zona.
- Segmentadores por fecha, categoria y zona.

## Estado del proyecto

Proyecto en etapa inicial. Ya incluye estructura base, dataset ficticio, consultas SQL y documentacion principal.
