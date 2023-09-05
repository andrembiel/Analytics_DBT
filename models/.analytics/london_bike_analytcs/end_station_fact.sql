WITH end_station_fact as (
    SELECT 
        rental_id
        ,end_station_name as end_station_name 
        ,end_date as dt
        ,end_hour as hour_
        ,lat 
        ,lon
    FROM {{ ref('bike_rental_inter') }} as rnt
    LEFT JOIN {{ ref('bike_station_dim') }} as bs
    on lower(rnt.end_station_name) = lower(bs.station_name)
    
)

SELECT  *
FROM end_station_fact 

