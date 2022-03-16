USE [pubs]
GO
DECLARE @count INT;
SET @count = 1;
    
WHILE @count<= 100000
BEGIN
   SELECT count(*) FROM titleview
   SET @count = @count + 1;
END;
GO
