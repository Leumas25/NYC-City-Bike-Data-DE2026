{{config(
    materialized='table'
)}}

select 
    -- ids
    ride_id,
    --ride_type
    rideable_type,
    --timestamps
    started_at,
    ended_at,
    {{ get_trip_duration('started_at', 'ended_at') }} as ride_duration,
    --distance
    {{ get_distance('start_lat', 'start_lng', 'end_lat', 'end_lng') }} as distance,
    --station ids
    start_station_id,
    start_station_name,
    end_station_id,
    end_station_name,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    --member type
    member_casual
from {{ ref('stg_rides') }}