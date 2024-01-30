use Testdemo
go
-- thêm 1 cột có tên addressName vào bảng Persons
ALTER TABLE dbo.Persons ADD addressName varchar(50), addressName1 varchar(50);
-- xoá 1 cột có tên addressName ở bảng Persons
alter table dbo.Persons drop column addressName;
-- đổi tên cột tên addressName1 thành email
sp_rename 'dbo.Persons.addressName1', 'email', 'COLUMN'  
select * from dbo.Persons