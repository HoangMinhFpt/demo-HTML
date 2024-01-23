use Testdemo
go

select Persons.ID, Persons.LastName, Persons.Age from dbo.Persons inner join dbo.agestudent on Persons.LastName = agestudent.nameStudent
select * from dbo.Persons
select * from dbo.agestudent