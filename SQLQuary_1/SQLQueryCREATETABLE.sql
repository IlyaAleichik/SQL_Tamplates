DECLARE @HousesData VARCHAR(MAX)

SELECT @HousesData = 

BulkColumn

FROM OPENROWSET(BULK 'C:\Users\Ilyaa\OneDrive\ ÓÎÎÂ‰Ê\KœËﬂœ\H—S Software\TKP\TKP\bin\Debug\HousesData.json',SINGLE_BLOB) JSON

IF (ISJSON(@HousesData) = 1)

   BEGIN
	PRINT 'JSON FILE IS VALID';
	INSERT INTO HousesData

	SELECT * 
	FROM OPENJSON(HousesData,'$.HousesData')
	WITH(
	 FirstName    VARCHAR(100 )		'$.FirstName',
      LastName  VARCHAR(100 ) 	 '$.LastName',
      Patronymic VARCHAR(100 ) 		'$.Patronymic',
      City VARCHAR(100 ) '$.City',
      PublishData VARCHAR(100 )		'$.PublishData',
      PublishDataFormat VARCHAR(100 )	'$.PublishDataFormat',
      Num VARCHAR(100 )		'$.Num',
      Korp VARCHAR(100 )	'$.Korp',
      AddressFull VARCHAR(100 )	'$.AddressFull',
      Address VARCHAR(100 )		'$.Address',
      Owner VARCHAR(100 )	'$.Owner',
      ExpOrg  VARCHAR(100 )		'$.ExpOrg',
      Yeacr VARCHAR(100 )	'$.Yeacr',
      MatWalls VARCHAR(100 )	 '$.MatWalls',
      CountFloor VARCHAR(100 )	 '$.CountFloor',
      Basement VARCHAR(100 )	'$.Basement',
      ReadyWinter VARCHAR(100 )		'$.ReadyWinter',
      Predsedateli  VARCHAR(100 )	 '$.Predsedateli',
      Predstoviteli VARCHAR(100 )	 '$.Predstoviteli',
      KeyWords VARCHAR(100 )	'$.KeyWords',
      Description VARCHAR(100 ) '$.Description'
	
	)

END

ELSE 

BEGIN
 PRINT 'JSON FILE IS INVALID';
 END