-- Query 1: Baseline Performance (CSV)
-- This query scans the raw CSV data.
-- Expected Scan: ~500MB
-- Expected Run Time: ~3-5 seconds

SELECT
    VendorID,
    SUM(total_amount) as total_revenue,
    AVG(trip_distance) as avg_distance
FROM "taxi_db"."my_portfolio_taxidata_nov2025" -- Replace with your actual table name
GROUP BY VendorID;
