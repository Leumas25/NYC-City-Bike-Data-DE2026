{#

This macro calculates the distance between two points in kilometers.

Args:
    start_lat: The latitude of the start point
    start_lng: The longitude of the start point
    end_lat: The latitude of the end point
    end_lng: The longitude of the end point

Returns:
    The ride distance in kilometers

#}

{% macro get_distance(start_lat, start_lng, end_lat, end_lng) %}
    ST_DISTANCE(
        ST_GEOGPOINT({{ start_lng }}, {{ start_lat }}),
        ST_GEOGPOINT({{ end_lng }}, {{ end_lat }})
    ) / 1000
{% endmacro %}