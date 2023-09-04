WITH start_station_name as (
    SELECT  distinct(start_station_name) AS station_name
    from {{ ref('bike_rental_inter') }}

),
end_station_name as (
      SELECT distinct(end_station_name) as station_name
    from {{ ref('bike_rental_inter') }}

), 

all_station_name as (
SELECT station_name FROM start_station_name
UNION ALL 
SELECT station_name FROM end_station_name
)

SELECT  distinct(station_name) FROM all_station_name
ORDER BY 1 ASC

