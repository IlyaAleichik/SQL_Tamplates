USE HCSDataBase 
GO


IF OBJECT_ID('HousesData','U') IS NOT NULL
DROP TABLE HousesData 
GO
CREATE TABLE HousesData(

      FirstName    VARCHAR(100 ) NULL,
      LastName  VARCHAR(100 ) NULL,
      Patronymic VARCHAR(100 ) NULL,
      City VARCHAR(100 ) NULL,
      PublishData VARCHAR(100 ) NULL,
      PublishDataFormat VARCHAR(100 ) NULL,
      Num VARCHAR(100 ) NULL,
      Korp VARCHAR(100 ) NULL,
      AddressFull VARCHAR(100 ) NULL,
      Address VARCHAR(100 ) NULL,
      Owner VARCHAR(100 ) NULL,
      ExpOrg  VARCHAR(100 ) NULL,
      Yeacr VARCHAR(100 ) NULL,
      MatWalls VARCHAR(100 ) NULL,
      CountFloor VARCHAR(100 ) NULL,
      Basement VARCHAR(100 ) NULL,
      ReadyWinter VARCHAR(100 ) NULL,
      Predsedateli  VARCHAR(100 ) NULL,
      Predstoviteli VARCHAR(100 ) NULL,
      KeyWords VARCHAR(100 ) NULL,
      Description VARCHAR(100 ) NULL
)