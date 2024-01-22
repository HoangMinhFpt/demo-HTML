use Testdemo
go

-- tìm giá trị min , max của cột 
select  min(age) from dbo.students
select max(age) from dbo.students

select min(age) as min_age, max(age) as max_age from dbo.students
select min(nameStudent) as min_name, max(nameStudent) as max_name from dbo.students where age = 25