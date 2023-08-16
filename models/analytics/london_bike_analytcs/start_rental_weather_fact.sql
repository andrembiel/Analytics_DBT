with weather (
    SELECT * FROM {{ ref('hourly_london_weather_dim') }}

),

SELECT * from {{ ref('bike_re') }} 

