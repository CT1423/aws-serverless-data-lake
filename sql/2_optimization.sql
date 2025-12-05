-- Query 2: Optimization (CTAS to Parquet)
-- This converts the CSV data into columnar Parquet format.
-- Compression: SNAPPY

CREATE TABLE "taxi_db"."optimized_parquet"
WITH (
  format = 'PARQUET',
  external_location = 's3://my-portfolio-taxidata-nov2025/optimized_parquet/',
  write_compression = 'SNAPPY'
) AS
SELECT *
FROM "taxi_db"."my_portfolio_taxidata_nov2025";
