use Testdemo
go
-- tạo 1 bảng tên menu có id tự tăng bắt đầu 1 và tăng 2 sau mỗi record
create table menu (
id int NOT NULL PRIMARY KEY IDENTITY (1,2),
name varchar(50) not null,
price int not null default(500))

select * from dbo.menu

insert into dbo.menu ( name) values ('Hot pot')
insert into dbo.menu ( name) values ('Omelet')
insert into dbo.menu ( name) values ('Soup')
insert into dbo.menu ( name) values ('Noodle')
insert into dbo.menu ( name) values ('Bread')