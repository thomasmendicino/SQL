declare @MyTable table (rowNameOcu string nvarchar(200))
insert @MyTable (rowNameOcu)
select 'Bob Barker - The Game Show Host' UNION
select 'Bill Gates - A Programmer' UNION
select 'Steve Jobs - The Apple Guy' 
SELECT  
SUBSTRING(rowNameOcu,CHARINDEX(' ',rowNameOcu),CHARINDEX(' ',right(rowNameOcu,len(rowNameOcu) - CHARINDEX(' ',rowNameOcu)))) + ', ' + left(rowNameOcu,CHARINDEX(' ',rowNameOcu)) + RIGHT(rowNameOcu, CHARINDEX('-',reverse(rowNameOcu))) As LastNameOrdered
FROM @MyTable
