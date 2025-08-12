## Eduard Martínez
## R version 4.5.0

####== 1. Configuración Inicial

## limpiar entorno
rm(list=ls())

## llamar librerías
require(dplyr)
require(skimr)
require(janitor)
require(rio)

## Leer base de datos
db <- import("https://raw.githubusercontent.com/eduard-martinez/datasets/main/week-04/output/empresas_cali.rds")

####== 2. Exploración inicial de datos

### 2.1. Inspección general

## glimpse()


## skim()


## head()


## tail()


### 2.2. Revisar nombres y tipos de variables

## names(), colnames()


## Buenas prácticas: Nombres claros

## as_tibble()


####== 3. Selección y filtrado de datos

### 3.1. Por nombre, rango o patrón 

## select() 


## starts_with(), ends_with(), contains()


### 3.2. Según condiciones (==, !=, <, >, %in%, between()).

## filter()


### 3.3. Combinar condiciones con `&` y `|`.

## dos variables


####== 4. Ordenamiento

## `arrange()` ascendente y descendente (`desc()`).


## Ordenar por múltiples columnas.


####== 5. Creación y modificación de variables

## `mutate()` para nuevas columnas o transformar existentes.


## Funciones útiles: `if_else()`, `case_when()`, `nchar()`, `as.numeric()`.


## `transmute()` para crear columnas y descartar las demás.

####== 6. Reestructuración de datos

## `distinct()` para eliminar duplicados.


## `rename()` y `rename_with()` para cambiar nombres de columnas.


## Formatos *wide* y *long* (`pivot_longer()`, `pivot_wider()`).
clientes <- import("https://raw.githubusercontent.com/eduard-martinez/datasets/main/week-04/output/clientes_cali.rds")

####== 7. Introducción al operador pipe

## Qué es y por qué mejora la legibilidad (`|>` y `%>%`).


## Ejemplos simples (sin `dplyr`) → comparación sin pipe / con pipe.


## Aplicar pipe en `dplyr` sobre ejemplos ya vistos (`filter()` + `select()` + `arrange()`).


####== 8. Resumen y agregación

## `summarise()` con estadísticos básicos (`mean()`, `median()`, `sd()`, `n()`).

## `group_by()` para agrupamientos.

## Varias agregaciones en un pipeline.


####== 9. Unión de bases de datos

### Tipos de *joins*.

## Claves primarias y foráneas.
sedes <- import("https://raw.githubusercontent.com/eduard-martinez/datasets/main/week-04/output/sedes_cali.rds")

####== 10. Encadenamiento de operaciones completo

### Flujo: importar → explorar → filtrar → transformar → resumir → exportar.

### Lectura vertical con pipe.



