use Testdemo
go
--trả về những record có giá trị khớp từ 2 bảng và những record kohoong khớp trả về null
select * from dbo.agestudent full outer join dbo.Persons on dbo.agestudent.nameStudent = dbo.Persons.LastName
--trả về những record có giá trị khớp từ 2 bảng và những record kohoong khớp trả về null có điều kiện là tuổi ở bảng agestudent lớn hơn 20
select * from dbo.agestudent full outer join dbo.Persons on dbo.agestudent.nameStudent = dbo.Persons.LastName where dbo.agestudent.age >20 
select * from dbo.agestudent
select * from dbo.Persons