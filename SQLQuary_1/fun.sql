
USE MyTestDataBase
create table DataFunct
(
    Id tinyint IDENTITY PRIMARY KEY,
    Otvet NVARCHAR(30) NOT NULL
);
select * from DataFunct

declare @X float
set @X=1
if (@X<=1)
print  3 * @X + 5 
else if (1<=@X)
print  Sqrt(7 * @X - 6.35);



USE MyTestDataBase
GO
CREATE PROCEDURE ComputeForm @X float
 AS
BEGIN
	declare @Y float
	if (@X<=1)
	set @Y = 3 * @X + 5 
	else if (1<=@X)
	set @Y = Sqrt(7 * @X - 6.35);
	Select @Y as 'Ответ';
END;

	exec ComputeForm 14

	drop procedure ComputeForm

	



USE MyTestDataBase
go
create procedure search @in nvarchar = 'Даниил'
as
begin

 Select * from Student where  fname = 'Даниил'

end


	drop procedure search

exec search 