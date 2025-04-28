---------------------
--CREATE VIEW CALENDAR
-----------------------
CREATE VIEW gold.calendar
AS
SELECT
   * 
FROM
  OPENROWSET(

    BULK 'https://awstorageaccount2.dfs.core.windows.net/silver/Calendar/',
    FORMAT ='PARQUET'
) as Calendar

------------------------
-- CREATE VIEW CUSTOMERS
------------------------
CREATE VIEW gold.customers
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
             BULK 'https://awstorageaccount2.dfs.core.windows.net/silver/Customers/',
            FORMAT = 'PARQUET'
        ) as Customers


------------------------
-- CREATE VIEW PRODUCTS
------------------------
CREATE VIEW gold.products
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
             BULK 'https://awstorageaccount2.dfs.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as Products


------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
             BULK 'https://awstorageaccount2.dfs.core.windows.net/silver/Returns/',
            FORMAT = 'PARQUET'
        ) as Returns
        


------------------------
-- CREATE VIEW SALES
------------------------
CREATE VIEW gold.sales
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
             BULK 'https://awstorageaccount2.dfs.core.windows.net/silver/Sales/',
            FORMAT = 'PARQUET'
        ) as Sales


------------------------
-- CREATE VIEW SUBCAT
------------------------
CREATE VIEW gold.subcat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
             BULK 'https://awstorageaccount2.dfs.core.windows.net/silver/Product_Subcategories/',
            FORMAT = 'PARQUET'
        ) as Subcat

------------------------
-- CREATE VIEW Category
------------------------
CREATE VIEW gold.cat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
             BULK 'https://awstorageaccount2.dfs.core.windows.net/silver/Product_Categories/',
            FORMAT = 'PARQUET'
        ) as Cat



------------------------
-- CREATE VIEW TERRITORIES
------------------------
CREATE VIEW gold.territories
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
             BULK 'https://awstorageaccount2.dfs.core.windows.net/silver/Territories/',
            FORMAT = 'PARQUET'
        ) as Territories