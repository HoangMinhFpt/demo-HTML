use Testdemo
go

select * from dbo.students
-- lấy ra danh sách id,tuổi vào con trỏ studentCursor
declare studentsCursor cursor for select id, age from dbo.students

open studentsCursor

declare @id nchar(10)
declare @age int

fetch next from studentsCursor into @id, @age

while @@FETCH_STATUS=0
	begin
		if @age > 20
		begin 
			update dbo.students set email='cursor@gmail.com' where id=@id
		end
	else
		if @age = 15
		begin
			update dbo.students set email='cursor1@gmail.com' where id=@id 
		end
	else 
		begin
		update dbo.students set email='cursor2@gmail.com' where id=@id
		end
		fetch next from studentsCursor into @id, @age;
	end

close studentsCursor
deallocate studentsCursor