CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'YOURWISH'

CREATE DATABASE SCOPED CREDENTIAL hi_bro
WITH IDENTITY = 'Managed Identity'
   
CREATE EXTERNAL DATA SOURCE source_silver
WITH(
    LOCATION = 'https://storaage.blob.core.windows.net/silver',
    CREDENTIAL = hi_bro
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH(
    LOCATION = 'https://storaage.blob.core.windows.net/gold',
    CREDENTIAL = hi_bro
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

--- CREATE EXTERNAL TABLE---

CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS 
SELECT * from gold.sales

SELECT * from gold.extsales


SELECT * from gold.Products


