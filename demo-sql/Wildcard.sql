use Testdemo
go

select * from dbo.students where nameStudent like '%i%'
select * from dbo.students where nameStudent like '%nh'
select * from dbo.students where nameStudent like 'M%'

select * from dbo.students where age like '_5'

select * from dbo.students where nameStudent like '[a-e]%'