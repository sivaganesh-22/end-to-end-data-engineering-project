# End-to-End Azure Data Engineering Project

## Overview

An end-to-end Azure Data Engineering project implementing a modern data pipeline using Azure Data Factory, Azure Data Lake Storage Gen2, Azure Databricks, Azure Synapse Serverless SQL, and Power BI.

## Architecture

GitHub → ADLS Gen2 → Azure Data Factory → Bronze → Databricks/PySpark → Silver → Synapse Serverless → Gold → Power BI

## Technologies

- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure Databricks
- PySpark
- Azure Synapse Serverless SQL
- Power BI
- GitHub

## Pipeline

1. Source CSV files were obtained from GitHub.
2. Files were stored in the landing layer of Azure Data Lake Storage Gen2.
3. Azure Data Factory was used to ingest and orchestrate the data into the Bronze layer.
4. Azure Databricks and PySpark were used to clean and transform the Bronze data.
5. Transformed data was stored in the Silver layer.
6. Azure Synapse Serverless SQL was used to create external tables over the data.
7. Gold-layer data was prepared for analytics.
8. Power BI was connected to the Gold layer to create an interactive dashboard.

## Data Layers

### Bronze
Raw ingested data.

### Silver
Cleaned and transformed data.

### Gold
Business-ready data exposed through Synapse Serverless SQL.

## Transformations

## Dashboard

Power BI was used to create an interactive dashboard for business analysis.

## Project Status

Completed end-to-end pipeline from data ingestion to business visualization.
