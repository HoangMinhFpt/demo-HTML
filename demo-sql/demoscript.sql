USE [master]
GO
/****** Object:  Database [Testdemo]    Script Date: 1/30/2024 12:03:24 ******/
CREATE DATABASE [Testdemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Testdemo', FILENAME = N'D:\sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\Testdemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Testdemo_log', FILENAME = N'D:\sql\MSSQL15.MSSQLSERVER\MSSQL\DATA\Testdemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Testdemo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Testdemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Testdemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Testdemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Testdemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Testdemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Testdemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Testdemo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Testdemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Testdemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Testdemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Testdemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Testdemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Testdemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Testdemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Testdemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Testdemo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Testdemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Testdemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Testdemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Testdemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Testdemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Testdemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Testdemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Testdemo] SET RECOVERY FULL 
GO
ALTER DATABASE [Testdemo] SET  MULTI_USER 
GO
ALTER DATABASE [Testdemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Testdemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Testdemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Testdemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Testdemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Testdemo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Testdemo', N'ON'
GO
ALTER DATABASE [Testdemo] SET QUERY_STORE = OFF
GO
USE [Testdemo]
GO
/****** Object:  Table [dbo].[students]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[id] [nchar](10) NOT NULL,
	[nameStudent] [varchar](50) NULL,
	[age] [int] NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[TestView]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TestView] AS
SELECT * FROM dbo.students
GO
/****** Object:  Table [dbo].[agestudent]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agestudent](
	[nameStudent] [varchar](50) NULL,
	[age] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cars]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cars](
	[nameCar] [varchar](10) NOT NULL,
	[brand] [varchar](20) NOT NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NULL,
	[dateOfManufacture] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[nameCar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[dateOfManufacture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CloneStudent]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CloneStudent](
	[id] [nchar](10) NOT NULL,
	[nameStudent] [varchar](50) NULL,
	[age] [int] NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fruits]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fruits](
	[nameFruit] [nchar](10) NULL,
	[unit] [int] NULL,
	[price] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,2) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[ID] [int] NOT NULL,
	[LastName] [varchar](255) NOT NULL,
	[FirstName] [varchar](255) NULL,
	[Age] [int] NULL,
	[addressName] [varchar](50) NULL,
	[email] [varchar](50) NULL,
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableInto]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableInto](
	[id] [nchar](10) NOT NULL,
	[nameStudent] [varchar](50) NULL,
	[age] [int] NULL,
	[email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableIntoA]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableIntoA](
	[nameStudent] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableIntoB]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableIntoB](
	[nameStudent] [varchar](50) NULL,
	[age] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TableIntos]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableIntos](
	[id] [nchar](10) NOT NULL,
	[nameStudent] [varchar](50) NULL,
	[age] [int] NULL,
	[email] [varchar](50) NULL,
	[nameFruit] [nchar](10) NULL,
	[unit] [int] NULL,
	[price] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IndexDemo]    Script Date: 1/30/2024 12:03:24 ******/
CREATE NONCLUSTERED INDEX [IndexDemo] ON [dbo].[students]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cars] ADD  DEFAULT ((50)) FOR [quantity]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT ((500)) FOR [price]
GO
/****** Object:  StoredProcedure [dbo].[abc]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[abc]
as
begin
SELECT * from students where age =25
end
GO
/****** Object:  StoredProcedure [dbo].[studentname]    Script Date: 1/30/2024 12:03:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[studentname]
as
begin
select name from students 
where age = 25
end
GO
USE [master]
GO
ALTER DATABASE [Testdemo] SET  READ_WRITE 
GO
