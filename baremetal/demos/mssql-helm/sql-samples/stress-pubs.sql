USE [pubs]
GO
DECLARE @count INT, @t DATETIME, @F BIGINT;
SET @count = 1;
    
WHILE @count<= 6
BEGIN
   SELECT count(*)
	from TITLES t
	inner join titleauthor ta on t.title_id = ta.title_id
	inner join authors a on ta.au_id = a.au_id
	inner join publishers p on t.pub_id = p.pub_id
	inner join pub_info pi on p.pub_id = pi.pub_id
	inner join employee e on e.pub_id = p.pub_id
	inner join jobs j on e.job_id = j.job_id
	left outer join sales s on s.title_id = t.title_id
	left outer join stores st on s.stor_id = st.stor_id
	left outer join discounts d on d.stor_id = st.stor_id

	-- hit CPU for 10 seconds
	SET @T = GETDATE();
	WHILE DATEADD(SECOND,10,@T)>GETDATE()
	BEGIN
		SET @F=POWER(2,30);
	END

   SET @count = @count + 1;
END;
GO
