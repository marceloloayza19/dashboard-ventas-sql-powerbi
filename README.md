# Dashboard de Ventas con SQL y Power BI

Proyecto de portafolio orientado a practicas de Data Analytics, Business Intelligence y Sistemas. El objetivo es analizar ventas ficticias de una empresa comercial utilizando SQL para la exploracion de datos y Power BI para la construccion posterior de un dashboard ejecutivo.

## Descripcion

El repositorio contiene un dataset de ventas en formato CSV, scripts SQL compatibles con MySQL, medidas DAX y guias detalladas para preparar los datos y construir un dashboard en Power BI Desktop.

El archivo `.pbix` no esta incluido porque debe ser creado manualmente en Power BI Desktop como parte del desarrollo practico del proyecto.

## Objetivo

Analizar el comportamiento comercial de una empresa ficticia para identificar tendencias, productos destacados, categorias con mayor participacion, zonas con mejores resultados y desempeno de vendedores.

## Herramientas utilizadas

- MySQL para creacion de base de datos, carga y analisis SQL.
- Power BI Desktop para modelado, medidas DAX y visualizacion.
- Power Query para limpieza y preparacion de datos.
- CSV como fuente de datos.
- GitHub para documentacion y presentacion del proyecto.

## Estructura del repositorio

```text
dashboard-ventas-sql-powerbi/
├── README.md
├── conclusiones.md
├── data/
│   └── ventas.csv
├── sql/
│   ├── crear_tabla_ventas.sql
│   └── consultas_ventas.sql
├── powerbi/
│   ├── instrucciones_powerbi.md
│   ├── medidas_dax.md
│   ├── power_query_m.md
│   └── layout_dashboard.md
└── images/
    └── README.md
```

## Descripcion del dataset

El archivo `data/ventas.csv` contiene 120 registros ficticios de ventas realizadas durante el anio 2025.

Columnas principales:

- `id_venta`: identificador unico de la venta.
- `fecha`: fecha de la transaccion.
- `cliente`: cliente que realizo la compra.
- `zona`: region comercial.
- `producto`: producto vendido.
- `categoria`: categoria del producto.
- `cantidad`: unidades vendidas.
- `precio_unitario`: precio por unidad.
- `total_venta`: resultado de cantidad por precio unitario.
- `metodo_pago`: forma de pago utilizada.
- `vendedor`: responsable comercial de la venta.

## Analisis SQL

La carpeta `sql/` incluye:

- `crear_tabla_ventas.sql`: crea la base de datos `db_ventas_portafolio`, define la tabla `ventas` e incluye comentarios para importar el CSV desde MySQL Workbench.
- `consultas_ventas.sql`: contiene consultas comentadas para analizar ventas totales, cantidad vendida, ticket promedio, ventas por mes, categoria, producto, zona, vendedor, metodo de pago y resumen ejecutivo.

## Dashboard en Power BI

La carpeta `powerbi/` deja preparada la parte analitica para construir el dashboard manualmente:

- `instrucciones_powerbi.md`: guia paso a paso para crear el archivo `.pbix`.
- `medidas_dax.md`: medidas DAX listas para copiar y pegar.
- `power_query_m.md`: pasos de limpieza y transformacion en Power Query.
- `layout_dashboard.md`: diseno recomendado del dashboard.

## Principales indicadores

El dashboard propuesto incluye los siguientes KPIs:

- Ventas Totales.
- Cantidad Vendida.
- Numero de Ventas.
- Ticket Promedio.
- Precio Promedio.
- Total Clientes.
- Total Productos.
- Variacion de Ventas mensual.

## Visualizaciones propuestas

- Tarjetas KPI principales.
- Grafico de lineas con ventas por mes.
- Grafico de barras por categoria.
- Grafico de barras horizontal con top 5 productos.
- Grafico de ventas por zona.
- Tabla o matriz por vendedor.
- Segmentadores por fecha, categoria y zona.

## Aprendizajes del proyecto

Este proyecto permite practicar:

- Creacion de datasets estructurados para analisis.
- Diseno de tablas en MySQL.
- Consultas SQL para analisis comercial.
- Limpieza de datos con Power Query.
- Creacion de medidas DAX.
- Planificacion de dashboards ejecutivos en Power BI.
- Documentacion profesional de proyectos para GitHub.

## Como revisar el proyecto

1. Descargar o clonar este repositorio.
2. Revisar el dataset en `data/ventas.csv`.
3. Ejecutar `sql/crear_tabla_ventas.sql` en MySQL Workbench.
4. Importar el CSV a la tabla `ventas`.
5. Ejecutar las consultas de `sql/consultas_ventas.sql`.
6. Abrir Power BI Desktop e importar el CSV.
7. Seguir la guia de `powerbi/instrucciones_powerbi.md` para construir el dashboard.
8. Guardar el archivo `.pbix` en `powerbi/` cuando sea creado manualmente.
9. Agregar capturas reales del dashboard en `images/`.

## Estado del proyecto

Proyecto preparado para analisis y construccion manual del dashboard. Incluye dataset, scripts SQL, medidas DAX, guia de Power Query, propuesta de layout y documentacion completa.

Pendiente:

- Construir el archivo `.pbix` en Power BI Desktop.
- Agregar capturas reales del dashboard en la carpeta `images/`.

## Autor

Marcelo Loayza  
GitHub: [marceloloayza19](https://github.com/marceloloayza19)
