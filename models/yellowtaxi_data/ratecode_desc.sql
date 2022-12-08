{{ config(materialized='view') }}

SELECT
    {{ get_ratecode_desc('RateCodeID') }} as ratecode_desc
FROM {{ source('taxi_tripdata','yellow_tripdata') }}
WHERE VendorID is not null