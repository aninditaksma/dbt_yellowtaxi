{{ config(materialized='view') }}

SELECT
    {{ get_payment_type_desc('payment_type') }} as payment_type_desc
FROM {{ source('taxi_tripdata','yellow_tripdata') }}
WHERE VendorID is not null