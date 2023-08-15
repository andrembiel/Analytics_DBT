with hourly_london_weather_stg as (
    SELECT 
     time as ts
    ,temperature_2m____C_ as temperature_celsius
    ,rain__mm_ as rain__mm
    ,snowfall__cm_ as snowfall_cm

    FROM {{ source('dev', 'hourly_london_weather_source') }} 

)
SELECT * from hourly_london_weather_stg