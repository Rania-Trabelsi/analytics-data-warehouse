/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source CSVs → Bronze)
===============================================================================
Script Purpose:
    This script orchestrates the ETL process by executing stored procedures
    to load data into the Bronze and Silver layers of the data warehouse.

    Actions Performed:
        - Executes the 'bronze.load_bronze' stored procedure to load raw data
          from external CSV files into the Bronze schema.
        - Executes the 'silver.load_silver' stored procedure to transform and
          load data from the Bronze schema into the Silver schema.
Parameters:
    None.   
    This script does not accept any parameters
    and does not return any values.
Usage:
    Run this script in the context of the 'Datawarehouse' database to
    execute the ETL process for loading data into the Bronze, Silver, and Gold layers.
*/



USE Datawarehouse
GO
-- Execute Bronze Layer Load Procedure
EXEC bronze.load_bronze;
GO
-- Execute Silver Layer Load Procedure
EXEC silver.load_silver;
GO
-- Execute Gold Layer Load Procedure
EXEC gold.load_gold;
GO
