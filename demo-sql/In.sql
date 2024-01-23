use Testdemo
go

select * from dbo.students where age in (20, 25)
select * from dbo.students where email in ('cursor@gmail.com')
select * from dbo.students where age in (select age from dbo.agestudent)

select * from dbo.students where age not in (20, 25)
select * from dbo.students where age not in (select age from dbo.agestudent)