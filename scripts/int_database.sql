/*

===========================================================
Create Database and Schema
===========================================================

Script Purpose:
  This script creates new database named 'Datawarehouse' after checking if it already exists 
  if the database exists, it is dropped and recreated. Additionallay, the script sets up three schemas
  within the database : 'brownze', 'silver', and 'gold'.

Warning:
  Running this script will drop the entire 'Datawarehouse' database if it exists.
  All data in the database will be permanently deleted, Proceed with caution
  and ensure you have proper backups before running this script.

*/



-- Create database 'Datawarehourse;

USE master;
GO

--Drop and recreate the datawarehouse database

IF EXISTS  (select 1 from sys.databases Where name ='Datawarehouse')
Begin 
	Alter Database Datawarehouse Set single_user with Rollback immediate;
	Drop Database DataWarehouse;
End;
Go

--Create the 'datawareouse' database

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

-- Create Schema
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
