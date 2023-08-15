with rental_old_shchema_stg as  (
    SELECT 
     CAST(Rental_id  as INT) as rental_id
    ,CAST(Duration  as FLOAT64) as duration_seg     
    ,CAST(Bike_id  as INT) as bike_id
    ,'Null' as bike_model
    ,CAST(StartStation_id as INT) as start_station_id
    ,StartStation_name as start_station_name
    ,EXTRACT(DATE FROM Start_Date) as start_date
    ,Start_Date as start_ts
    ,CAST(EndStation_id  as INT) as end_station_id
    ,EndStation_name  as end_station_name
    ,EXTRACT(DATE FROM End_Date) as end_date
    ,End_Date as end_ts
    
    
 FROM  {{ source('dev', 'rental_old_schema_source') }}
)
SELECT * FROM rental_old_shchema_stg
