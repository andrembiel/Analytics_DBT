WITH hourly_london_weather_dim as (
    SELECT
         EXTRACT(DATE from ts ) as date_
        ,EXTRACT(HOUR from ts ) as hour_
        ,CASE 
            WHEN temperature_celsius <=9 THEN 'cold'
            WHEN temperature_celsius >=10 AND temperature_celsius <= 19 THEN 'cool'
            WHEN temperature_celsius >=20 AND temperature_celsius <= 29 THEN 'warm'
            ELSE 'hot' 
        END as temperature_grouped
        ,CASE WHEN rain_mm = 0  AND  snowfall_cm = 0 THEN FALSE
            ELSE TRUE 
        END as precipitaion
    FROM {{ ref('hourly_london_weather_stg') }}

)

SELECT *
FROM hourly_london_weather_dim

