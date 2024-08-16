WITH datos_sinnulos AS (
  SELECT 
    *
  FROM 
    `cicloviajes-tecnica.datosciclo.citibike_trips`
  WHERE 
    tripduration IS NOT NULL AND
    stoptime IS NOT NULL AND
    start_station_id IS NOT NULL AND
    start_station_name IS NOT NULL AND
    start_station_latitude IS NOT NULL AND
    start_station_longitude IS NOT NULL AND
    end_station_id IS NOT NULL AND
    end_station_name IS NOT NULL AND
    end_station_latitude IS NOT NULL AND
    end_station_longitude IS NOT NULL AND
    bikeid IS NOT NULL AND
    usertype IS NOT NULL AND
    birth_year IS NOT NULL AND
    gender IS NOT NULL AND
    customer_plan IS NOT NULL
),
RankedTrips AS (
  SELECT
    *,
    ROW_NUMBER() OVER (
      PARTITION BY bikeid, starttime, stoptime
      ORDER BY starttime
    ) AS row_num
  FROM
    datos_sinnulos
)

SELECT
  *
FROM
  RankedTrips
WHERE
  row_num = 1;
