# Proyecto Ciclo Viajes

>[ Detalles del proyecto](proyecto.md)

## Datos esperados:
1 - Métricas de uso de un día promedio
* Número de viajes que se realizan en promedio
* Max, min, promedio, desviación estándar (opcional) de la duración de un viaje

2 - Métricas históricas
* Total de viajes
* Crecimiento del número de viajes diarios a lo largo del tiempo (opcional)
* Total de viajes por usuarios, según género, edad y/o tipo de suscripción

## Preguntas planteadas:
* ¿Qué conclusiones generales puedes sacar? 
* ¿Qué patrones o ideas descubriste? 
* ¿Alguna recomendación para el nuevo CEO?

---

> Variables del [dataset](https://console.cloud.google.com/marketplace/product/city-of-new-york/nyc-citi-bike?project=data-sandbox-319716).

| Conteo | Nombre del campo           | Tipo      | Nullable |
|--------|----------------------------|-----------|----------|
| 0      | tripduration   (Segundos)            | INTEGER   | SI       |
| 1      | starttime                  | TIMESTAMP | SI       |
| 2      | stoptime                    | TIMESTAMP | SI       |
| 3      | start_station_id            | INTEGER   | SI       |
| 4      | start_station_name          | STRING    | SI       |
| 5      | start_station_latitude      | FLOAT     | SI       |
| 6      | start_station_longitude     | FLOAT     | SI       |
| 7      | end_station_id              | INTEGER   | SI       |
| 8      | end_station_name            | STRING    | SI       |
| 9      | end_station_latitude        | FLOAT     | SI       |
| 10     | end_station_longitude       | FLOAT     | SI       |
| 11     | bikeid                      | INTEGER   | SI       |
| 12     | usertype                    | STRING    | SI       |
| 13     | birth_year                  | INTEGER   | SI       |
| 14     | gender                      | STRING    | SI       |
| 15     | customer_plan               | STRING    | SI       |
| | | | 

<br>

## Detalle de tareas y consultas SQL
<br>


| Tarea | Resultados           | Query      | 
|--------|----------------------------|-----------|
| Identificación de Nulos | Existen de 5.828.994 hasta 11.403.385, donde se decide dejar todos los nulos por fuera del estudio. | [Identificación](SQL\conteo_nulos.sql) de nulos y [exclusión](SQL\exclusion_nulos.sql) de nulos|
| Identificación de duplicados| Posterior a la limpieza de nulos, los datos totales fueron: 47.534.330, se exploró la eliminación de duplicados donde la unión de bikeid, starttime y stoptime no coincidiera. Dando como resultado 47.534.325 datos (solo 5 duplicados con las condiciones dadas) | [Exploración](SQL\exploracion_duplicados.sql) duplicados |
| Analizar las variables con las que se va a trabajar y cambiar los datos según sea necesario| Se decide dejar por duera del estudio las siguientes variables: start_station_latitude, start_station_longitude, end_station_latitude, end_station_longitude, customer_plan      | [Consulta](SQL\cambio_datos.sql) de cambios de datos |
| Clausulas Where | Por el peso y las limitaciones propias del uso gratuito se decide dejar por fuera, datos como: viajes mayores a 24 horas, personas con género desconocido y edad mayores a 90 años, obteniendo 46.949.571 resultados | [Query](SQL\clausulas_where.sql) |
| Limite de datos | Debido a las limitaciones propias de la versión gratuita y la publicación en Tableau Public, se limitaron las filas a 12.000.000 de datos. |![alt text](image.png) |
| | | |


<br>

## Creación de tablero

[Link](https://public.tableau.com/app/profile/osiris.berbesia/viz/dashboard_17238310552130/Dashboard?publish=yes)
<br>

<br>

## Enlaces relevantes

[City Bike](https://citibikenyc.com/homepage)
<br>

## Respuestas



