use Testdemo
go
-- tìm record có tuổi nằm trong khoảng giữa 
SELECT * from dbo.students where age between 20 and 30
-- tìm record có tên trái cây nằm trong khoảng giữa
select * from dbo.fruits where nameFruit between 'Apple' and 'Mango'
-- tìm record có tên không nằm trong khoảng giữa
select * from dbo.students where nameStudent not between 'Chanh' and 'Hung'
-- tìm record có giá nằm trong khoảng giữa và có unit là 10, 20
select * from dbo.fruits where price between 10 and 20 and unit in (10, 20)