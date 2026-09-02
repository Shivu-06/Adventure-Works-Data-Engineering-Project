create view gold.calendar
as 
SELECT * FROM OPENROWSET (
    BULK 'https://awstoragedatalakeshivu.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
    )as quer1;


create view gold.customers
as 
SELECT * FROM OPENROWSET (
    BULK 'https://awstoragedatalakeshivu.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
    )as quer1;

create view gold.Product_Subcategories
as 
SELECT * FROM OPENROWSET (
    BULK 'https://awstoragedatalakeshivu.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
    )as quer1;

create view gold.Products
as 
SELECT * FROM OPENROWSET (
    BULK 'https://awstoragedatalakeshivu.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
    )as quer1;


create view gold.returns
as 
SELECT * FROM OPENROWSET (
    BULK 'https://awstoragedatalakeshivu.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
    )as quer1;


create view gold.Sales
as 
SELECT * FROM OPENROWSET (
    BULK 'https://awstoragedatalakeshivu.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
    )as quer1;


create view gold.Territories
as 
SELECT * FROM OPENROWSET (
    BULK 'https://awstoragedatalakeshivu.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
    )as quer1;







