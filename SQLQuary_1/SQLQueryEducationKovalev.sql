select Class.Name as [Назввание класса], (select SUM(Learning.Result) from Learning, Student
	where Learning.IDst = Student.ID) / (select COUNT(*) from Learning, Student where Learning.ID = Student.ID)
	from Class