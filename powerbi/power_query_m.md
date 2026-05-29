# Preparacion de datos en Power Query

Esta guia describe los pasos recomendados para limpiar y preparar el archivo `data/ventas.csv` antes de construir el dashboard en Power BI.

## 1. Importar el CSV

En Power BI Desktop:

1. Ir a `Obtener datos`.
2. Seleccionar `Texto/CSV`.
3. Elegir el archivo `data/ventas.csv`.
4. Hacer clic en `Transformar datos` para abrir Power Query.

## 2. Verificar tipos de datos

Revisar que Power Query detecte correctamente los tipos:

- `id_venta`: numero entero.
- `fecha`: fecha.
- `cliente`: texto.
- `zona`: texto.
- `producto`: texto.
- `categoria`: texto.
- `cantidad`: numero entero.
- `precio_unitario`: numero decimal.
- `total_venta`: numero decimal.
- `metodo_pago`: texto.
- `vendedor`: texto.

Ejemplo de codigo M:

```powerquery
#"Tipo cambiado" = Table.TransformColumnTypes(
    Source,
    {
        {"id_venta", Int64.Type},
        {"fecha", type date},
        {"cliente", type text},
        {"zona", type text},
        {"producto", type text},
        {"categoria", type text},
        {"cantidad", Int64.Type},
        {"precio_unitario", type number},
        {"total_venta", type number},
        {"metodo_pago", type text},
        {"vendedor", type text}
    }
)
```

## 3. Convertir fecha a tipo fecha

Si la columna `fecha` se importa como texto, cambiarla manualmente a tipo `Fecha` desde el encabezado de la columna.

```powerquery
#"Fecha convertida" = Table.TransformColumnTypes(#"Tipo cambiado", {{"fecha", type date}})
```

## 4. Validar columnas numericas

Confirmar que `cantidad`, `precio_unitario` y `total_venta` no tengan errores de conversion.

```powerquery
#"Validacion total" = Table.AddColumn(
    #"Fecha convertida",
    "total_validado",
    each [cantidad] * [precio_unitario],
    type number
)
```

Luego comparar `total_validado` con `total_venta`.

## 5. Revisar valores nulos

Usar los filtros de cada columna para revisar si existen valores `null` o vacios. En este dataset no deberian existir, pero es una practica importante.

## 6. Quitar duplicados si existieran

Seleccionar la columna `id_venta` y usar `Quitar duplicados`.

```powerquery
#"Duplicados quitados" = Table.Distinct(#"Fecha convertida", {"id_venta"})
```

## 7. Crear columna de anio

```powerquery
#"Anio agregado" = Table.AddColumn(#"Duplicados quitados", "anio", each Date.Year([fecha]), Int64.Type)
```

## 8. Crear columna de mes

```powerquery
#"Mes agregado" = Table.AddColumn(#"Anio agregado", "mes", each Date.Month([fecha]), Int64.Type)
```

## 9. Crear columna nombre_mes

```powerquery
#"Nombre mes agregado" = Table.AddColumn(#"Mes agregado", "nombre_mes", each Date.MonthName([fecha], "es-ES"), type text)
```

## 10. Crear columna anio_mes

```powerquery
#"Anio mes agregado" = Table.AddColumn(
    #"Nombre mes agregado",
    "anio_mes",
    each Date.ToText([fecha], "yyyy-MM"),
    type text
)
```

## 11. Aplicar cambios

Cuando los datos esten listos, hacer clic en `Cerrar y aplicar` para cargar el modelo en Power BI.
