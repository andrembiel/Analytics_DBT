WITH  rental_new_schema as (
    SELECT * 
    FROM {{ ref('rental_new_shchema_stg') }}

),
rental_old_schema as (
    SELECT * 
    FROM {{ ref('rental_old_shchema_stg') }}

)

SELECT * FROM rental_old_schema
UNION ALL
SELECT * FROM rental_new_schema