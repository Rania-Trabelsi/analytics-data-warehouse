/*
===============================================================================
Database and Schema Initialization
===============================================================================
Purpose:
    This script initializes the 'DataWarehouse' database.
    If the database already exists, it will be dropped and recreated.
    The script also creates the following schemas:
        - bronze
        - silver
        - gold

WARNING:
    Executing this script will permanently delete the existing 'DataWarehouse'
    database and all of its contents.
    Ensure that appropriate backups are in place before proceeding.
===============================================================================
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
