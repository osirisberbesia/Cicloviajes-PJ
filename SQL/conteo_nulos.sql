SELECT 
  COUNTIF(tripduration IS NULL) AS nulos_tripduration,
  COUNTIF(stoptime IS NULL) AS nulos_stoptime,
  COUNTIF(start_station_id IS NULL) AS nulos_start_station_id,
  COUNTIF(start_station_name IS NULL) AS nulos_start_station_name,
  COUNTIF(start_station_latitude IS NULL) AS nulos_start_station_latitude,
  COUNTIF(start_station_longitude IS NULL) AS nulos_start_station_longitude,
  COUNTIF(end_station_id IS NULL) AS nulos_end_station_id,
  COUNTIF(end_station_name IS NULL) AS nulos_end_station_name,
  COUNTIF(end_station_latitude IS NULL) AS nulos_end_station_latitude,
  COUNTIF(end_station_longitude IS NULL) AS nulos_end_station_longitude,
  COUNTIF(bikeid IS NULL) AS nulos_bikeid,
  COUNTIF(usertype IS NULL) AS nulos_usertype,
  COUNTIF(birth_year IS NULL) AS nulos_birth_year,
  COUNTIF(gender IS NULL) AS nulos_gender,
  COUNTIF(customer_plan IS NULL) AS nulos_customer_plan
FROM 
 `cicloviajes-tecnica.datosciclo.citibike_trips`
 
 -- datos totales  58.937.715
 -- datos nulos 5.828.994
 -- 11.403.385 


