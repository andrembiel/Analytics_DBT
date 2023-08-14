with rental_old_shchema_stg as  (
    SELECT 
     CAST(Rental_id  as INT) as rental_id
    ,CAST(Duration  as INT) as duration_seg     
    ,CAST(Bike_id  as INT) as bike_id
    ,CAST(StartStation_id as INT) as start_station_id
    ,StartStation_name as start_station_name
    ,EXTRACT(DATE FROM Start_Date) as start_date
    ,Start_Date as start_ts
    ,CAST(StartStation_name as STRING) as start_station_name
    ,CAST(EndStation_id  as INT) as end_station_id
    ,EXTRACT(DATE FROM End_Date) as end_date
    ,End_Date as end_ts
    ,CAST(EndStation_name as STRING ) as end_station_name
    
 FROM  {{ source('dev', 'rental_old_schema_source') }}
)
SELECT * FROM rental_old_shchema_stg
