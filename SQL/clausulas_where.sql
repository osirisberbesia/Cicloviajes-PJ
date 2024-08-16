select 
bikeid,
start_station_id,
start_station_name,
end_station_id,
end_station_name,
tripduration,
trip_time,
start_date_formatted,
day_start,
start_moment,
stop_date_formatted,
day_stop,
stop_moment,
birth_year,
edad_actual,
gender,
usertype
 FROM 
  `cicloviajes-tecnica.datosciclo.bike_clean`
  WHERE
 (edad_actual < 90 
  OR gender != "unknown" 
  OR tripduration < 86400)
  AND tripduration <= 86400
  AND edad_actual < 90;
