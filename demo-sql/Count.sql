use Testdemo
go

select count(*) from dbo.students
select count(age) as age_count from  dbo.students where age > 20
select count(distinct age) from dbo.students