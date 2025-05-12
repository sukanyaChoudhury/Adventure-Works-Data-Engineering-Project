Create DATABASE SCOPED CREDENTIAL cred_sukanya
WITH
   IDENTITY='Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION= 'https://awstorageaccount2.dfs.core.windows.net/silver',
    CREDENTIAL= cred_sukanya
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION= 'https://awstorageaccount2.dfs.core.windows.net/gold',
    CREDENTIAL= cred_sukanya
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION= 'org.apache.hadoop.io.compress.SnappyCodec'
)

-------------------------------------
---CREATE EXTERNAL TABLE EXTSALES
------------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION='exsales',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT * from gold.sales

select * from gold.extsales;

-------------------------------------
---CREATE EXTERNAL TABLE EXTCUSTOMERS
------------------------------------

CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION='excustomers',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT * from gold.customers

select * from gold.extcustomers;


-------------------------------------
---CREATE EXTERNAL TABLE EXTCALENDAR
------------------------------------

CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION='excalendar',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT * from gold.calendar

select * from gold.extcalendar;

-------------------------------------
---CREATE EXTERNAL TABLE EXTPRODUCTS
------------------------------------

CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION='exproducts',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT * from gold.products

select * from gold.extproducts;


-------------------------------------
---CREATE EXTERNAL TABLE EXTRETURNS
------------------------------------

CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION='exreturns',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT * from gold.returns

select * from gold.extreturns;


-------------------------------------
---CREATE EXTERNAL TABLE EXTCATEGORY
------------------------------------

CREATE EXTERNAL TABLE gold.extcategory
WITH
(
    LOCATION='excat',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT * from gold.cat

select * from gold.extcategory;


-------------------------------------
---CREATE EXTERNAL TABLE EXTSUBCAT
------------------------------------

CREATE EXTERNAL TABLE gold.extsubcat
WITH
(
    LOCATION='exsubcat',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT * from gold.subcat

select * from gold.extsubcat;


-------------------------------------
---CREATE EXTERNAL TABLE EXTTERRITORRY
------------------------------------

CREATE EXTERNAL TABLE gold.extterritory
WITH
(
    LOCATION='exterritory',
    DATA_SOURCE=source_gold,
    FILE_FORMAT=format_parquet
)
AS
SELECT * from gold.territories

select * from gold.extterritory;