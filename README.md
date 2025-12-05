# aws-serverless-data-lake
A serverless ETL pipeline on AWS optimizing query costs by 97% using Glue, Athena, and Parquet conversion.

# Serverless Data Lake on AWS (Glue + Athena)

## 🚀 Project Overview
This project demonstrates a serverless ETL pipeline that optimizes query performance and costs for Big Data analytics.
I took raw NYC Taxi data (CSV), built a Data Catalog using **AWS Glue**, and optimized the storage format to **Parquet**.

## 📊 Key Results (The "Money" Slide)
By converting row-based CSV data to columnar Parquet format, I achieved:
* **97% Reduction** in data scanned (496MB → 15MB).
* **15x Faster** query performance.
* **Cost Savings** on Amazon Athena (Pay-per-TB scanned).

| Metric | Raw CSV (Baseline) | Parquet (Optimized) | Improvement |
| :--- | :--- | :--- | :--- |
| **Data Scanned** | 496.25 MB | 15.11 MB | **97% Less** |
| **Run Time** | 3.2s | 0.8s | **4x Faster** |

## 🛠️ Architecture
`S3 (Raw Data)` -> `AWS Glue Crawler` -> `Athena (SQL)` -> `Parquet Transformation` -> `Advanced Analytics`

## 🧠 Skills Demonstrated
* **Data Modeling:** Designed a schema optimized for read-heavy workloads (OLAP).
* **SQL Window Functions:** Calculated moving averages for financial trending.
* **Infrastructure as Code:** (Optional: If you used any Terraform/CloudFormation).
