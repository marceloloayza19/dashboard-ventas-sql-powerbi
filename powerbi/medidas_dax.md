# Medidas DAX para Power BI

Estas medidas estan preparadas para copiarse en Power BI Desktop. Se asume que la tabla importada se llama `ventas`.

## Ventas Totales

```DAX
Ventas Totales = SUM(ventas[total_venta])
```

Calcula el importe total vendido en el periodo seleccionado.

## Cantidad Vendida

```DAX
Cantidad Vendida = SUM(ventas[cantidad])
```

Mide el total de unidades vendidas.

## Numero de Ventas

```DAX
Numero de Ventas = COUNTROWS(ventas)
```

Cuenta la cantidad de transacciones registradas.

## Ticket Promedio

```DAX
Ticket Promedio = AVERAGE(ventas[total_venta])
```

Indica el valor promedio de cada venta.

## Precio Promedio

```DAX
Precio Promedio = AVERAGE(ventas[precio_unitario])
```

Calcula el precio unitario promedio de los productos vendidos.

## Total Clientes

```DAX
Total Clientes = DISTINCTCOUNT(ventas[cliente])
```

Cuenta cuantos clientes distintos realizaron compras.

## Total Productos

```DAX
Total Productos = DISTINCTCOUNT(ventas[producto])
```

Cuenta cuantos productos distintos se vendieron.

## Ventas Promedio por Cliente

```DAX
Ventas Promedio por Cliente = DIVIDE([Ventas Totales], [Total Clientes])
```

Mide el promedio de ventas acumuladas por cliente.

## Porcentaje de Ventas por Categoria

```DAX
Porcentaje de Ventas por Categoria =
DIVIDE(
    [Ventas Totales],
    CALCULATE([Ventas Totales], ALL(ventas[categoria]))
)
```

Calcula la participacion porcentual de cada categoria sobre el total de ventas visible.

## Ventas Mes Anterior

```DAX
Ventas Mes Anterior =
CALCULATE(
    [Ventas Totales],
    DATEADD(ventas[fecha], -1, MONTH)
)
```

Permite comparar las ventas del mes actual contra el mes anterior.

## Variacion de Ventas

```DAX
Variacion de Ventas = [Ventas Totales] - [Ventas Mes Anterior]
```

Muestra la diferencia absoluta de ventas frente al mes anterior.

## Variacion % de Ventas

```DAX
Variacion % de Ventas = DIVIDE([Variacion de Ventas], [Ventas Mes Anterior])
```

Muestra el crecimiento o disminucion porcentual de las ventas frente al mes anterior.

## Formato recomendado

- Ventas Totales: moneda.
- Ticket Promedio: moneda.
- Precio Promedio: moneda.
- Porcentaje de Ventas por Categoria: porcentaje.
- Variacion % de Ventas: porcentaje.
- Cantidad Vendida y Numero de Ventas: numero entero.
