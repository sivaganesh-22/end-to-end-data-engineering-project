
------ CREATE SCHEMA-----

CREATE SCHEMA gold;


-------- view table ----------

CREATE VIEW gold.calender
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storaage.blob.core.windows.net/silver/AdventureWorks_calender/',
    FORMAT = 'PARQUET'
    ) as QUERY1

CREATE VIEW gold.customer
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storaage.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
    ) as QUERY1

CREATE VIEW gold.Returns
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storaage.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
    ) as QUERY1


CREATE VIEW gold.Sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storaage.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
    ) as QUERY1


CREATE VIEW gold.SubCategories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storaage.blob.core.windows.net/silver/AdventureWorks_SubCategories/',
    FORMAT = 'PARQUET'
    ) as QUERY1


CREATE VIEW gold.Territories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storaage.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
    ) as QUERY1

CREATE VIEW gold.Products
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://storaage.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
    ) as QUERY1
