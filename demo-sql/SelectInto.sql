USE Testdemo
GO
--Lấy hết dữ liệu của bảng students đưa vào bảng mới tên TableInto
	SELECT * INTO TableInto
	FROM dbo.students
-- Tạo ra 1 bảng mới tên TableIntoA, có 1 cột nameStudent tương ứng với table students
	select nameStudent INTO TableIntoA
	FROM dbo.students
	select * from TableIntoA

-- Tạo ra 1 bảng mới tên TableIntoB, có 1 cột nameStudent tương ứng với table students 
--Với điều kiện age lớn hoặc bằng 20
	select nameStudent, age INTO TableIntoB
	FROM dbo.students where age >=20
	select * from TableIntoB
--Tạo ra 1 bảng mới từ nhiều bảng
	select * into TableIntos
	from dbo.students, dbo.fruits
	where fruits.unit = students.age

	select* from dbo.TableIntos