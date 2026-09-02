-- 1. Create database scoped credential
CREATE DATABASE SCOPED CREDENTIAL cred_shivu
WITH IDENTITY = 'Managed Identity';


-- 2. Create external data source for Silver
CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awstoragedatalakeshivu.dfs.core.windows.net/silver',
    CREDENTIAL = cred_shivu
);


-- 3. Create external data source for Gold
CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awstoragedatalakeshivu.dfs.core.windows.net/gold',
    CREDENTIAL = cred_shivu
);


-- 4. Create Parquet file format
CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);


-- 5. Create external table in Gold
CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT *
FROM gold.Sales;