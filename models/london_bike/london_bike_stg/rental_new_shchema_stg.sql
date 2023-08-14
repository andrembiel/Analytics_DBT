with rental_new_shchema_stg as  (
    SELECT 
     CAST(Number  as INT ) as rental_id    
    ,CAST(total_duration__ms_  as  FLOAT64 )/1000 as duration_seg
    ,CAST(Bike_number  as INT ) as bike_id
    ,Bike_model  as bike_model
    ,CAST(Start_station_number  as INT ) as start_station_id
    ,Start_station as start_station_name
    ,EXTRACT(DATE FROM Start_Date) as start_date
    ,Start_Date as start_ts
    ,CAST(End_station_number  as INT ) as end_station_id
    ,End_station as end_station_name
    ,EXTRACT(DATE FROM End_Date ) as end_date
    ,End_Date as end_ts
    
    
 FROM  {{ source('dev', 'rental_new_schema_source') }}
)
SELECT * FROM rental_new_shchema_stg
