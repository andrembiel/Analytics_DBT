WITH start_station_fact as (
    SELECT 
        rental_id
        ,start_station_name as start_station_name 
        ,start_date as dt
        ,start_hour as hour_
        ,lat 
        ,lon
    FROM {{ ref('bike_rental_inter') }} as rnt
    LEFT JOIN {{ ref('bike_station_dim') }} as bs  
      on lower(rnt.start_station_name) = lower(bs.station_name)
    
)

SELECT  *
FROM start_station_fact 


