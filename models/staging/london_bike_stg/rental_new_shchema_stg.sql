with rental_new_shchema_stg as  (
    SELECT 
     Number as rental_id    
    ,CAST(total_duration__ms_  as  FLOAT64 )/1000 as duration_seg
    ,Bike_number as bike_id
    ,Bike_model as bike_model
    ,SAFE_CAST(Start_station_number as INT64) as start_station_id
    ,Start_station as start_station_name
    ,EXTRACT(DATE FROM Start_Date) as start_date
    ,EXTRACT(HOUR FROM Start_Date) as start_hour
    ,Start_Date as start_ts
    ,SAFE_CAST(End_station_number AS INT64) as end_station_id
    ,End_station as end_station_name
    ,EXTRACT(DATE FROM End_Date ) as end_date
    ,EXTRACT(HOUR FROM End_Date ) as end_hour
    ,End_Date as end_ts
    
    
 FROM  {{ source('dev', 'rental_new_schema_source') }}
)
SELECT * FROM rental_new_shchema_stg 
