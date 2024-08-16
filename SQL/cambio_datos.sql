SELECT  
  bikeid,
  start_station_id,
  start_station_name,
  end_station_id,
  end_station_name,
  tripduration,
  FORMAT('%.2d:%.2d', 
    DIV(tripduration, 60),  -- Minutos
    MOD(tripduration, 60)   -- Segundos
  ) AS trip_minutes,
  starttime,
  FORMAT_TIMESTAMP('%d-%m-%Y', TIMESTAMP(starttime)) AS start_date_formatted,
  FORMAT_TIMESTAMP('%A', TIMESTAMP(starttime)) AS day_start,
  CASE
    WHEN EXTRACT(HOUR FROM TIMESTAMP(starttime)) BETWEEN 4 AND 10 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM TIMESTAMP(starttime)) BETWEEN 11 AND 17 THEN 'Afternoon'
    WHEN EXTRACT(HOUR FROM TIMESTAMP(starttime)) BETWEEN 18 AND 22 THEN 'Night'
    ELSE 'Late night'
  END AS start_moment,
  stoptime,
  FORMAT_TIMESTAMP('%d-%m-%Y', TIMESTAMP(stoptime)) AS stop_date_formatted,
  FORMAT_TIMESTAMP('%A', TIMESTAMP(stoptime)) AS day_stop,
  CASE
    WHEN EXTRACT(HOUR FROM TIMESTAMP(stoptime)) BETWEEN 4 AND 10 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM TIMESTAMP(stoptime)) BETWEEN 11 AND 17 THEN 'Afternoon'
    WHEN EXTRACT(HOUR FROM TIMESTAMP(stoptime)) BETWEEN 18 AND 22 THEN 'Night'
    ELSE 'Late night'
  END AS stop_moment,
  birth_year,
  EXTRACT(YEAR FROM CURRENT_DATE()) - CAST(birth_year AS INT64) AS edad_actual,
  gender,
  usertype

FROM 
  `cicloviajes-tecnica.datosciclo.bike_dates_before` LIMIT 260000;
