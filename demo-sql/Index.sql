use Testdemo
go
-- cho phép các trường trùng nhau
create index IndexDemo on dbo.students(id)
-- không cho phép các trường trùng nhau
create unique index IndexDemoUnique on dbo.students(age)

select * from dbo.students
WHERE id = '15';