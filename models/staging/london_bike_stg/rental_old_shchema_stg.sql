with rental_old_shchema_stg as  (
    SELECT 
     Rental_id as rental_id
    ,CAST(Duration  as FLOAT64) as duration_seg     
    ,Bike_id as bike_id
    ,'Null'as bike_model
    ,StartStation_id as start_station_id
    ,StartStation_name as start_station_name
    ,EXTRACT(DATE FROM Start_Date) as start_date
    ,EXTRACT(HOUR FROM Start_Date) as start_hour
    ,Start_Date as start_ts
    ,EndStation_id as end_station_id
    ,EndStation_name  as end_station_name
    ,EXTRACT(DATE FROM End_Date) as end_date
    ,EXTRACT(HOUR FROM End_Date) as end_hour
    ,End_Date as end_ts
    
    
 FROM  {{ source('dev', 'rental_old_schema_source') }}
)
SELECT * FROM rental_old_shchema_stg
