WITH TRIPS AS (

    select
    RIDE_ID,
    RIDEABLE_TYPE,
    DATE(TO_TIMESTAMP(STARTED_AT)) AS TRIP_DATE,
    START_STATIO_ID AS START_STATION_ID,
    END_STATION_ID,
    MEMBER_CSUAL AS MEMBER_CASUAL,
    TIMESTAMPDIFF(SECOND ,STARTED_AT, ENDED_AT) AS TRIP_DURATION_SECONDS

    from {{ source('demo', 'bike') }}

    where RIDE_ID != 'ride_id'



)

select
*
from TRIPS