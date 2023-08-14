with bike_station_stg as (
    SELECT 
       SUBSTR(id ,12 ) as id
      ,commonName as name
      ,lat
      ,lon
    FROM {{ source('dev', 'bike_station_source') }} 
 )

SELECT * from bike_station_stg
