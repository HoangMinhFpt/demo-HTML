use Testdemo
go
-- tạo bảng với unique cho cột id
CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
-- thêm data cho table
INSERT INTO [dbo].[Persons]
           ([ID]
           ,[LastName]
           ,[FirstName]
           ,[Age])
     VALUES
           (1
           ,'Minh'
           ,'Nguyen'
           ,'25')
		   INSERT INTO [dbo].[Persons]
           ([ID]
           ,[LastName]
           ,[FirstName]
           ,[Age])
     VALUES
           (2
           ,'Binh'
           ,'Nguyen'
           ,'30')
		   INSERT INTO [dbo].[Persons]
           ([ID]
           ,[LastName]
           ,[FirstName]
           ,[Age])
     VALUES
           (3
           ,'Min'
           ,'Nguyen'
           ,'25')
		   INSERT INTO [dbo].[Persons]
           ([ID]
           ,[LastName]
           ,[FirstName]
           ,[Age])
     VALUES
           (4
           ,'Chinh'
           ,'Nguyen'
           ,'25')
		   INSERT INTO [dbo].[Persons]
           ([ID]
           ,[LastName]
           ,[FirstName]
           ,[Age])
     VALUES
           (4
           ,'Tinh'
           ,'Tran'
           ,'35')
GO