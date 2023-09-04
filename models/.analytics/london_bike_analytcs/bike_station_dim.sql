WITH  bike_station_dim AS (
    SELECT 
    row_number()over() as id
    ,station_name
    ,lat
    ,lon
   FROM  {{ ref('unique_stations_name_inter') }}  as unqst
   LEFT JOIN {{ ref('bike_station_stg') }} bkst
    ON unqst.station_name = bkst.name
)
SELECT * FROM bike_station_dim