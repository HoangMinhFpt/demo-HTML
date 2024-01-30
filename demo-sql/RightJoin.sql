use Testdemo
go
--trả về những record từ bảng bên phải và những record phù hợp từ bảng trái.
select * from dbo.agestudent right join dbo.Persons on dbo.agestudent.nameStudent = dbo.Persons.LastName
select * from dbo.agestudent
select * from dbo.Persons