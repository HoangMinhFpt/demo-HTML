use Testdemo
go
--trả về những record từ bảng bên trái và những record phù hợp từ bảng phải.
select * from dbo.agestudent left join dbo.Persons on dbo.agestudent.nameStudent = dbo.Persons.LastName
select * from dbo.agestudent
select * from dbo.Persons