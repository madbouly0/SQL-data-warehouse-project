USE MASTER ;
GO



  
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO 


  
CREATE DATABASE data_warehouse ;
GO


USE data_warehouse;
GO

CREATE SCHEMA bronze ;
GO
CREATE SCHEMA silver ;
GO
CREATE SCHEMA gold ;
GO
