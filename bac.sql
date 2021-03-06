USE [master]
GO
/****** Object:  Database [BAC Alcohol]    Script Date: 10/5/2020 6:09:27 PM ******/
CREATE DATABASE [BAC Alcohol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BAC Alcohol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BAC Alcohol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BAC Alcohol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BAC Alcohol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BAC Alcohol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BAC Alcohol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BAC Alcohol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BAC Alcohol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BAC Alcohol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BAC Alcohol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BAC Alcohol] SET ARITHABORT OFF 
GO
ALTER DATABASE [BAC Alcohol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BAC Alcohol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BAC Alcohol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BAC Alcohol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BAC Alcohol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BAC Alcohol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BAC Alcohol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BAC Alcohol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BAC Alcohol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BAC Alcohol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BAC Alcohol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BAC Alcohol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BAC Alcohol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BAC Alcohol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BAC Alcohol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BAC Alcohol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BAC Alcohol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BAC Alcohol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BAC Alcohol] SET  MULTI_USER 
GO
ALTER DATABASE [BAC Alcohol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BAC Alcohol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BAC Alcohol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BAC Alcohol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BAC Alcohol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BAC Alcohol] SET QUERY_STORE = OFF
GO
USE [BAC Alcohol]
GO
/****** Object:  Table [dbo].[BACTable]    Script Date: 10/5/2020 6:09:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BACTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Alcohol Type] [nchar](10) NULL,
	[Alcohol Name] [nchar](20) NULL,
	[Fluid Ounces] [decimal](4, 2) NULL,
	[Alcohol Percentage] [decimal](4, 2) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BACTable] ON 

INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (2, N'Seltzer   ', N'White Claw          ', CAST(12.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (3, N'Beer      ', N'Bud Light           ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (4, N'Beer      ', N'Natural Light       ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (5, N'Beer      ', N'Miller Light        ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (6, N'Beer      ', N'Genesee Light       ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (7, N'Beer      ', N'Blue Moon           ', CAST(12.00 AS Decimal(4, 2)), CAST(5.70 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (8, N'Seltzer   ', N'Truly               ', CAST(12.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (9, N'Beer      ', N'Budweiser           ', CAST(12.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (10, N'Beer      ', N'Coors Light         ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (11, N'Beer      ', N'Michelob Ultra      ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (12, N'Beer      ', N'Corona Light        ', CAST(12.00 AS Decimal(4, 2)), CAST(4.10 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (13, N'Beer      ', N'Modelo              ', CAST(12.00 AS Decimal(4, 2)), CAST(4.40 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (14, N'Beer      ', N'Busch Light         ', CAST(12.00 AS Decimal(4, 2)), CAST(4.10 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (15, N'Beer      ', N'Heineken Light      ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (16, N'Beer      ', N'Keystone Light      ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (17, N'Beer      ', N'Bud Light Lime      ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (18, N'Beer      ', N'Guinness Draught    ', CAST(12.00 AS Decimal(4, 2)), CAST(4.27 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (19, N'Beer      ', N'Rolling Rock        ', CAST(12.00 AS Decimal(4, 2)), CAST(4.50 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (20, N'Beer      ', N'Coors Banquet       ', CAST(12.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (21, N'Beer      ', N'Stella Artois       ', CAST(12.00 AS Decimal(4, 2)), CAST(5.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (22, N'Beer      ', N'Sam Adams Summer Ale', CAST(12.00 AS Decimal(4, 2)), CAST(5.30 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (23, N'Beer      ', N'PBR                 ', CAST(12.00 AS Decimal(4, 2)), CAST(4.74 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (24, N'Beer      ', N'Yuengling Lager     ', CAST(12.00 AS Decimal(4, 2)), CAST(4.50 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (25, N'Beer      ', N'Corona Extra        ', CAST(12.00 AS Decimal(4, 2)), CAST(4.60 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (26, N'Beer      ', N'Sam Adams Boston Ale', CAST(12.00 AS Decimal(4, 2)), CAST(5.40 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (29, N'Beer      ', N'Bass Ale            ', CAST(12.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (30, N'Beer      ', N'Miller High Life    ', CAST(12.00 AS Decimal(4, 2)), CAST(4.60 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (31, N'Seltzer   ', N'Bud Light Seltzer   ', CAST(12.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (32, N'Seltzer   ', N'Bon & Viv           ', CAST(12.00 AS Decimal(4, 2)), CAST(4.50 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (33, N'Seltzer   ', N'Smirnoff Seltzer    ', CAST(12.00 AS Decimal(4, 2)), CAST(4.50 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (34, N'Seltzer   ', N'Henrys              ', CAST(12.00 AS Decimal(4, 2)), CAST(4.20 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (35, N'Seltzer   ', N'Corona Seltzer      ', CAST(12.00 AS Decimal(4, 2)), CAST(4.50 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (36, N'Seltzer   ', N'Vizzy               ', CAST(12.00 AS Decimal(4, 2)), CAST(5.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (37, N'Seltzer   ', N'Press               ', CAST(12.00 AS Decimal(4, 2)), CAST(4.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (38, N'Seltzer   ', N'Barefoot            ', CAST(12.00 AS Decimal(4, 2)), CAST(4.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (39, N'Wine      ', N'White Zinfandel     ', CAST(5.00 AS Decimal(4, 2)), CAST(12.50 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (40, N'Wine      ', N'Moscato             ', CAST(5.00 AS Decimal(4, 2)), CAST(6.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (41, N'Wine      ', N'Merlot              ', CAST(5.00 AS Decimal(4, 2)), CAST(13.50 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (42, N'Wine      ', N'Cabernet Sauvignon  ', CAST(5.00 AS Decimal(4, 2)), CAST(13.50 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (43, N'Wine      ', N'Chardonnay          ', CAST(5.00 AS Decimal(4, 2)), CAST(14.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (44, N'Wine      ', N'Pinot Noir          ', CAST(5.00 AS Decimal(4, 2)), CAST(13.50 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (45, N'Wine      ', N'Sauvignon Blanc     ', CAST(5.00 AS Decimal(4, 2)), CAST(14.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (46, N'Liquor    ', N'Jack Daniels        ', CAST(1.50 AS Decimal(4, 2)), CAST(47.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (47, N'Liquor    ', N'Bacardi 121         ', CAST(1.50 AS Decimal(4, 2)), CAST(61.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (48, N'Liquor    ', N'Bacardi 151         ', CAST(1.50 AS Decimal(4, 2)), CAST(75.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (49, N'Liquor    ', N'Bacardi 8           ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (50, N'Liquor    ', N'Bacardi Carta Blanca', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (51, N'Liquor    ', N'Baileys             ', CAST(1.50 AS Decimal(4, 2)), CAST(17.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (52, N'Liquor    ', N'Smirnoff            ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (53, N'Liquor    ', N'Captain Morgan      ', CAST(1.50 AS Decimal(4, 2)), CAST(35.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (54, N'Liquor    ', N'Kahlua              ', CAST(1.50 AS Decimal(4, 2)), CAST(20.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (55, N'Liquor    ', N'Crown Royal         ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (56, N'Liquor    ', N'Jim Beam            ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (57, N'Liquor    ', N'Grey Goose          ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (58, N'Liquor    ', N'Jose Cuervo         ', CAST(1.50 AS Decimal(4, 2)), CAST(38.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (59, N'Liquor    ', N'Svedka              ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (60, N'Liquor    ', N'Vladimir            ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (61, N'Liquor    ', N'Absolut             ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (62, N'Liquor    ', N'Hennesey            ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (63, N'Liquor    ', N'Jameson             ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (64, N'Liquor    ', N'Titos               ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (65, N'Liquor    ', N'Jagermeister        ', CAST(1.50 AS Decimal(4, 2)), CAST(35.00 AS Decimal(4, 2)))
INSERT [dbo].[BACTable] ([Id], [Alcohol Type], [Alcohol Name], [Fluid Ounces], [Alcohol Percentage]) VALUES (66, N'Liquor    ', N'Don Julio           ', CAST(1.50 AS Decimal(4, 2)), CAST(40.00 AS Decimal(4, 2)))
SET IDENTITY_INSERT [dbo].[BACTable] OFF
USE [master]
GO
ALTER DATABASE [BAC Alcohol] SET  READ_WRITE 
GO
