USE [master]
GO
/****** Object:  Database [HousingDb]    Script Date: 03/29/2016 08:51:27 ******/
CREATE DATABASE [HousingDb] ON  PRIMARY 
( NAME = N'HousingDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HousingDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HousingDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HousingDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HousingDb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HousingDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HousingDb] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HousingDb] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HousingDb] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HousingDb] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HousingDb] SET ARITHABORT OFF
GO
ALTER DATABASE [HousingDb] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HousingDb] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HousingDb] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HousingDb] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HousingDb] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HousingDb] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HousingDb] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HousingDb] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HousingDb] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HousingDb] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HousingDb] SET  DISABLE_BROKER
GO
ALTER DATABASE [HousingDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HousingDb] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HousingDb] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HousingDb] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HousingDb] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HousingDb] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HousingDb] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HousingDb] SET  READ_WRITE
GO
ALTER DATABASE [HousingDb] SET RECOVERY FULL
GO
ALTER DATABASE [HousingDb] SET  MULTI_USER
GO
ALTER DATABASE [HousingDb] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HousingDb] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'HousingDb', N'ON'
GO
USE [HousingDb]
GO
/****** Object:  Table [dbo].[tbl_Tenant]    Script Date: 03/29/2016 08:51:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Tenant](
	[TENANT_ID] [int] NOT NULL,
	[TENANT_DATE] [date] NULL,
	[TENANT_NAME] [varchar](50) NULL,
	[OWNER_ID] [int] NULL,
	[FLAT_WING] [varchar](50) NULL,
	[FLAT_NO] [varchar](50) NULL,
	[OWNER_NAME] [varchar](50) NULL,
	[FLAT_SIZE] [varchar](50) NULL,
	[FLAT_SQFT] [numeric](18, 0) NULL,
	[FLAT_MAINT] [numeric](18, 0) NULL,
	[PARKING] [varchar](50) NULL,
	[OWNERSHIP_DATE] [date] NULL,
 CONSTRAINT [PK_tbl_Tenant] PRIMARY KEY CLUSTERED 
(
	[TENANT_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_OwnerLogin]    Script Date: 03/29/2016 08:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_OwnerLogin](
	[Owner_ID] [int] NULL,
	[Owner_Password] [varchar](50) NULL,
	[Owner_Question] [varchar](50) NULL,
	[Owner_Answer] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_NewOwner]    Script Date: 03/29/2016 08:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_NewOwner](
	[OWNER_ID] [int] NOT NULL,
	[FLAT_WING] [varchar](50) NULL,
	[FLAT_NO] [varchar](50) NULL,
	[OWNER_NAME] [varchar](50) NULL,
	[FLAT_SIZE] [varchar](50) NULL,
	[FLAT_SQFT] [numeric](18, 0) NULL,
	[FLAT_MAINT] [numeric](18, 0) NULL,
	[PARKING] [varchar](50) NULL,
	[OWNERSHIP_DATE] [date] NULL,
 CONSTRAINT [PK_tbl_NewOwner] PRIMARY KEY CLUSTERED 
(
	[OWNER_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Maint]    Script Date: 03/29/2016 08:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Maint](
	[MAINT_YEAR] [numeric](18, 0) NULL,
	[MAINT_MONTH] [varchar](50) NULL,
	[OWNER_ID] [int] NULL,
	[FLAT_WING] [varchar](50) NULL,
	[FLAT_NO] [varchar](50) NULL,
	[OWNER_NAME] [varchar](50) NULL,
	[FLAT_SIZE] [varchar](50) NULL,
	[FLAT_SQFT] [numeric](18, 0) NULL,
	[FLAT_MAINT] [numeric](18, 0) NULL,
	[PARKING] [varchar](50) NULL,
	[OWNERSHIP_DATE] [date] NULL,
	[OTHER_EXP] [numeric](18, 0) NULL,
	[TOTAL] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Flats]    Script Date: 03/29/2016 08:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Flats](
	[Flat_Wing] [varchar](50) NULL,
	[Flat_No] [numeric](18, 0) NULL,
	[Flat_Size] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Employee]    Script Date: 03/29/2016 08:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Employee](
	[emp_id] [int] NOT NULL,
	[emp_name] [varchar](50) NULL,
	[emp_desgn] [varchar](50) NULL,
	[emp_salary] [numeric](18, 0) NULL,
	[emp_mob] [numeric](18, 0) NULL,
	[emp_email] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Garage_Employee] PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Admin]    Script Date: 03/29/2016 08:51:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Admin](
	[Admin_Email] [varchar](50) NULL,
	[Admin_Password] [varchar](50) NULL,
	[Admin_Question] [varchar](80) NULL,
	[Admin_Answer] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
