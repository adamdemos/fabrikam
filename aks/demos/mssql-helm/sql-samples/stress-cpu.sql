DECLARE @t DATETIME, @F BIGINT;

-- hit CPU for 30 seconds
SET @T = GETDATE();
WHILE DATEADD(SECOND,30,@T)>GETDATE()
BEGIN
	SET @F=POWER(2,30);
END