{#

This macro calculates the trip duration in minutes.

Args:
    started_at: The start time of the ride
    ended_at: The end time of the ride

Returns:
    The trip duration in minutes

#}

{% macro get_trip_duration(started_at, ended_at) %}
    {{ dbt.datediff(ended_at, started_at, 'minute') }}
{% endmacro %}