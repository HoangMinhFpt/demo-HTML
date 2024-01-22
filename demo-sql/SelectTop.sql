use Testdemo
go
-- lấy 5 record đầu tiên của bảng student
select top 5 * from dbo.students
-- lấy 50% record đầu tiên của bảng student
select top 50 percent * from dbo.students