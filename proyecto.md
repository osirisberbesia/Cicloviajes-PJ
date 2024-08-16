# Reto Técnico: Análisis Descriptivo de Datos

¡Hola! Felicitaciones por haber llegado a esta etapa del proceso de selección de nuestro/a próximo/a Analista de Datos. En esta etapa evaluaremos tu capacidad de realizar un análisis descriptivo de datos. Queremos conocer un poco más sobre tu forma de analizar datos y resolver problemas.

Al final del reto deberás  tener un reporte/dashboard con las visualizaciones y el resumen de tu análisis, el cuál presentarás ante tu mentor/a en la sesión de práctica.

____

# Proyecto Cicloviajes

## Introducción
============

En este proyecto realizarás un análisis exploratorio de datos a partir de un conjunto de datos (dataset) sobre el uso de un programa de bicicletas compartidas. Para responder las preguntas de negocio que se plantean, deberás entender la estructura de los datos, analizarlos y construir visualizaciones que permitan comunicar tus hallazgos. 

## La situación
============

Eres un/a analista de datos que trabaja en el equipo de datos de una empresa que brinda el servicio de bicicletas compartidas. La empresa ha contratado una nueva CEO y como parte de su proceso de onboarding tiene agendada una sesión con el equipo de datos.

Como equipo, han determinado que lo mejor sería presentar un reporte que presente la siguiente información:

1.  Métricas de uso de un día promedio 

-   Número de viajes que se realizan en promedio 

-   Max, min, promedio, desviación estándar (opcional) de la duración de un viaje

1.  Métricas históricas 

-   Total de viajes

-   Crecimiento del número de viajes diarios a lo largo del tiempo (opcional)

-   Total de viajes por usuarios, según género, edad y/o tipo de subscripción

Con las métricas calculadas y en base a los resultados de tu análisis, ¿qué conclusiones generales puedes sacar? ¿Qué patrones o ideas descubriste? ¿Alguna recomendación para el nuevo CEO?

## El conjunto de datos
====================

Te han asignado a ti la tarea de construir este informe. Puedes utilizar cualquier herramienta de visualización que desees, pero tu equipo ha establecido que para consultar los datos debes utilizar: [Google BigQuery](https://www.youtube.com/watch?v=CFw4peH2UwU&t).

Para construir el reporte utilizarás la información pública del programa [Citi Bike New York City](https://www.citibikenyc.com/homepage), el programa de bicicletas compartidas más grande de los Estados Unidos. Este conjunto de datos público está alojado en Google BigQuery y puedes acceder a él por medio del siguiente enlace: [NYC Citi Bike Trips](https://console.cloud.google.com/marketplace/product/city-of-new-york/nyc-citi-bike?project=data-sandbox-319716&folder=&organizationId=).

Si tienes problemas para acceder a estos datos, puedes importarlos y realizar el análisis desde este [archivo .CSV,](https://drive.google.com/file/d/11mNSb16cXyjuSu4j0Ro-66Ezm1nXb6zo/view?usp=sharing) que contiene una muestra de cincuenta mil registros.

### Tips:

En un reto real no habrá una sección de consejos/tips, pero como nuestro objetivo aquí es que aprendas y adquieras experiencia en cómo son los procesos de selección en el área de tecnología y análisis de datos, te dejamos algunos consejos sobre la base de datos:

-   La variable tripduration está en segundos, puede ser interesante transformarla a otra unidad de medida, por ejemplo, en minutos.

-   Intenta utilizar el comando DATE para simplificar la variable starttime y facilitar la creación de gráficos.