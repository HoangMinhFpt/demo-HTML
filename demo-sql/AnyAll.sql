use Testdemo
go

select * from dbo.Persons
-- Tìm những record ở bảng student có age bằng với age ở bảng Person là 25
SELECT *
FROM dbo.students
WHERE age = ANY
  (SELECT Age
  FROM dbo.Persons
  WHERE Age='25');

-- Tìm những record ở bảng student có age lớn với age ở bảng Person
SELECT *
FROM dbo.students
WHERE age > ALL
  (SELECT Age
  FROM dbo.Persons);