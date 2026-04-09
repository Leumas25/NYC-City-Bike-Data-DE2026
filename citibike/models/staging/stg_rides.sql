with

source as (

    select * from {{ source('citibike', 'citibike_tripdata') }}

),

renamed as (

    select

        ----------  ids
        ride_id as ride_id,

        ---------- text
        rideable_type as rideable_type,
        started_at as started_at,
        ended_at as ended_at,
        start_station_id as start_station_id,
        start_station_name as start_station_name,
        end_station_id as end_station_id,
        end_station_name as end_station_name,
        start_lat as start_lat,
        start_lng as start_lng,
        end_lat as end_lat,
        end_lng as end_lng,
        member_casual as member_casual

    from source

)

select * from renamed
