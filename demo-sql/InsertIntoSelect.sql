use Testdemo
go
-- insert into select: copy dữ liệu vào bảng đã tồn tại
select * into CloneStudent
from dbo.students
where 1=0

insert into CloneStudent
select * from dbo.students