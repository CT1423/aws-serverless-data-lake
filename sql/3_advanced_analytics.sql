-- Query 3: Advanced Analytics
-- Demonstrating Window Functions and Aggregations on optimized data.

-- A. Moving Average (Window Function)
SELECT
    tpep_pickup_datetime,
    fare_amount,
    AVG(fare_amount) OVER (
        ORDER BY tpep_pickup_datetime
        ROWS BETWEEN 3 PRECEDING AND CURRENT ROW
    ) as moving_avg_fare
FROM "taxi_db"."optimized_parquet"
ORDER BY tpep_pickup_datetime DESC
LIMIT 100;

-- B. Top Tipping Locations (Aggregation)
SELECT
    PULocationID,
    AVG(tip_amount) as avg_tip,
    COUNT(*) as total_trips
FROM "taxi_db"."optimized_parquet"
GROUP BY PULocationID
HAVING COUNT(*) > 50
ORDER BY avg_tip DESC
LIMIT 10;
