USE [test]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 03/02/2024 8:31:14 CH ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contacts]') AND type in (N'U'))
DROP TABLE [dbo].[Contacts]
GO
USE [master]
GO
/****** Object:  Database [test]    Script Date: 03/02/2024 8:31:14 CH ******/
DROP DATABASE [test]
GO
/****** Object:  Database [test]    Script Date: 03/02/2024 8:31:14 CH ******/
CREATE DATABASE [test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NAMPHAN\MSSQL\DATA\test.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.NAMPHAN\MSSQL\DATA\test_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [test] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test] SET ARITHABORT OFF 
GO
ALTER DATABASE [test] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test] SET  ENABLE_BROKER 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [test] SET  MULTI_USER 
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [test] SET QUERY_STORE = ON
GO
ALTER DATABASE [test] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [test]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 03/02/2024 8:31:14 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[name] [varchar](40) NULL,
	[date] [varchar](40) NULL,
	[location] [varchar](40) NULL,
	[sim] [varchar](40) NULL,
	[homenetwork] [varchar](40) NULL,
	[phone] [varchar](40) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Contacts] ([name], [date], [location], [sim], [homenetwork], [phone]) VALUES (N'a', N'4/8/2003', N'BN', N'S1', N'N1', N'0528438686')
INSERT [dbo].[Contacts] ([name], [date], [location], [sim], [homenetwork], [phone]) VALUES (N'b', N'4/9/2003', N'QN', N'S2', N'N2', N'0941852666')
INSERT [dbo].[Contacts] ([name], [date], [location], [sim], [homenetwork], [phone]) VALUES (N'c', N'5/9/2003', N'BD', N'S3', N'N3', N'0583752345')
INSERT [dbo].[Contacts] ([name], [date], [location], [sim], [homenetwork], [phone]) VALUES (N'd', N'5/8/2003', N'BT', N'S4', N'N4', N'0925387788')
INSERT [dbo].[Contacts] ([name], [date], [location], [sim], [homenetwork], [phone]) VALUES (N'e', N'5/7/2000', N'DN', N'S5', N'N5', N'0848004444')
INSERT [dbo].[Contacts] ([name], [date], [location], [sim], [homenetwork], [phone]) VALUES (N'f', N'6/7/2006', N'TQ', N'S6', N'N6', N'0911484466')
INSERT [dbo].[Contacts] ([name], [date], [location], [sim], [homenetwork], [phone]) VALUES (N'g', N'5/12/2006', N'HN', N'S7', N'N7', N'0923173388')
INSERT [dbo].[Contacts] ([name], [date], [location], [sim], [homenetwork], [phone]) VALUES (N'h', N'23/11/2006', N'KH', N'S8', N'N8', N'0921313137')
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
