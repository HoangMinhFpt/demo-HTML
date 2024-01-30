use Testdemo
go
-- tạo 1 bảng với các cột nameCar có đk ko null-primary key, brand ko null, price ko null, quantity data mặc định 50, dateOfManufacture ko trùng
create table cars (
nameCar varchar(10) NOT NULL PRIMARY KEY ,
brand varchar(20) NOT NULL,
price int NOT NULL ,
quantity int DEFAULT (50),
dateOfManufacture date UNIQUE );

SELECT * FROM dbo.cars
-- thêm data vào bảng cars
insert into dbo.cars (nameCar, brand, price, dateOfManufacture)
values ('Camry','Toyota', 5000, '2024-01-25') 
insert into dbo.cars (nameCar, brand, price, dateOfManufacture)
values ('Civic','Honda', 5000, '2024-01-21') 
insert into dbo.cars (nameCar, brand, price, dateOfManufacture)
values ('Raptor','Chevrolet', 5000, '2024-01-20') 
insert into dbo.cars (nameCar, brand, price, dateOfManufacture)
values ('911','Porsche', 5000, '2024-01-24') 