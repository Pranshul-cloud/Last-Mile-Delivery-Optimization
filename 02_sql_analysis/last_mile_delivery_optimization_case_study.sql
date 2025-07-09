==================================================
🛠️  Project: Last Mile Delivery Optimization
📅  Analyst: Pranshul
📂  File:  last_mile_delivery_optimization_case_study.sql
🧠  Purpose: Answer business-critical questions using SQL
==================================================


==================================================
Q1: Which combinations of traffic and weather result in the longest delivery durations?
==================================================
SELECT
    Traffic,
    Weather,
    ROUND(AVG(Delivery_Duration_mins), 2) AS avg_delivery_time
FROM delivery_data
GROUP BY Traffic, Weather
ORDER BY avg_delivery_time DESC;

=================================================
Q2: Is there a relationship between agent rating and average speed or idle time?
==================================================
select 
       agent_rating ,
        avg(speed)as avg_speed ,
        avg(idle_time_before_pickup)as avg_idle_time
from  delivery_data
group by agent_rating
order by   avg(speed)desc , avg(idle_time_before_pickup)asc ;

==================================================
Q3: Which areas/zones consistently show lower delivery speeds, regardless of distance?
==================================================
select area , 
       avg(speed)as avg_speed
from delivery_data
group by area
order by avg_speed asc ;       

==================================================
Q4: How does traffic condition impact delivery speed for each type of vehicle?
==================================================
select traffic,
	    vehicle,
	    AVG(SPEED)AS avg_speed
from delivery_data
group by traffic , vehicle
order by avg_speed asc;

==================================================
Q5: How does idle time before pickup vary across different hours of the day?
==================================================
SELECT 
    EXTRACT(HOUR FROM order_time) AS order_hour,
    AVG(idle_time_before_pickup) AS avg_idle_time
FROM delivery_data
GROUP BY order_hour
ORDER BY order_hour;

==================================================
Q6: How does delivery performance (speed and duration) vary by agent age group?
==================================================
select agent_age , 
       avg(speed)as avg_speed ,
       avg(delivery_duration_mins)as  avg_delivery_duration
from delivery_data 
group  by agent_age
order by avg_speed desc , avg_delivery_duration asc ;

==================================================
Q7: Which store locations have the highest average delivery durations,
and what factors (e.g., traffic, distance, agent behavior) contribute?
==================================================
WITH traffic_mode_per_store AS (
    SELECT 
        store_latitude,
        store_longitude,
        traffic,
        COUNT(*) AS traffic_count,
        ROW_NUMBER() OVER (
            PARTITION BY store_latitude, store_longitude 
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM delivery_data
    GROUP BY store_latitude, store_longitude, traffic
)

SELECT 
    d.store_latitude,
    d.store_longitude,
    AVG(d.delivery_duration_mins) AS avg_delivery_duration,
    AVG(d.distance) AS avg_distance,
    AVG(d.idle_time_before_pickup) AS avg_idle_time,
    AVG(d.speed) AS avg_speed,
    AVG(d.agent_rating) AS avg_agent_rating,
    t.traffic AS most_common_traffic
FROM delivery_data d
LEFT JOIN traffic_mode_per_store t
    ON d.store_latitude = t.store_latitude 
    AND d.store_longitude = t.store_longitude
    AND t.rn = 1
GROUP BY d.store_latitude, d.store_longitude, t.traffic
ORDER BY avg_delivery_duration DESC;

Note on Query Design:
To identify the most frequent traffic condition per store, we used a subquery with ROW_NUMBER()
 to extract mode-like behavior, joining it with the main performance metrics. This helps 
 reveal whether environmental factors correlate with high delivery durations
 
-- ==================================================
Q8: How does delivery duration vary across different order categories
 (e.g., food, groceries, medicine)?
-- ==================================================
select category ,
	round(avg(delivery_duration_mins),2)as avg_delivery_duration
from delivery_data
group by category
order by avg_delivery_duration desc;
