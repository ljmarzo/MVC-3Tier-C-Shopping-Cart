USE [master]
GO
/****** Object:  Database [CDMarzoAutoShop]    Script Date: 12/09/2017 04:53:00 ******/
CREATE DATABASE [CDMarzoAutoShop] ON  PRIMARY 
( NAME = N'CDMarzoAutoShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLEXPRESS\MSSQL\DATA\CDMarzoAutoShop.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CDMarzoAutoShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLEXPRESS\MSSQL\DATA\CDMarzoAutoShop_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CDMarzoAutoShop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CDMarzoAutoShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CDMarzoAutoShop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ARITHABORT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_CLOSE ON
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [CDMarzoAutoShop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [CDMarzoAutoShop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET  ENABLE_BROKER
GO
ALTER DATABASE [CDMarzoAutoShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [CDMarzoAutoShop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [CDMarzoAutoShop] SET  READ_WRITE
GO
ALTER DATABASE [CDMarzoAutoShop] SET RECOVERY SIMPLE
GO
ALTER DATABASE [CDMarzoAutoShop] SET  MULTI_USER
GO
ALTER DATABASE [CDMarzoAutoShop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [CDMarzoAutoShop] SET DB_CHAINING OFF
GO
USE [CDMarzoAutoShop]
GO
/****** Object:  Table [dbo].[Total]    Script Date: 12/09/2017 04:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Total](
	[tId] [int] IDENTITY(1,1) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Total] ON
INSERT [dbo].[Total] ([tId], [Total]) VALUES (1, CAST(1550.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Total] OFF
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 12/09/2017 04:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[cID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](150) NOT NULL,
	[ContactNo] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DelivOption] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[tTotal] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CustomerInfo] ON
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [tTotal]) VALUES (2, N'Aries', N'Marzo', N'Sabang', N'09061248644', N'aries@gmail.com', N'Pick-Up', N'Delivered', CAST(3540.00 AS Decimal(18, 2)))
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [tTotal]) VALUES (3, N'Nina', N'Remigio', N'Riverside', N'0912345678', N'nina@gmail.com', N'Pick-Up', N'Delivered', CAST(550.00 AS Decimal(18, 2)))
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [tTotal]) VALUES (4, N'Buboy', N'Rodriguez', N'Brgy 1, Lipa City', N'09753355618', N'rey@yahoo.com', N'Cash-On-Delivery', N'Cancelled', CAST(45825.00 AS Decimal(18, 2)))
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [tTotal]) VALUES (5, N'Jewel', N'Cuevas', N'Pangao', N'0912345678', N'jewel@gmail.com', N'Pick-Up', N'Pending', CAST(1100.00 AS Decimal(18, 2)))
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [tTotal]) VALUES (6, N'asd', N'as', N'as', N'77', N'a@b.c', N'Cash-On-Delivery', N'Pending', CAST(1100.00 AS Decimal(18, 2)))
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [tTotal]) VALUES (7, N'as', N'as', N'as', N'123', N'a@b.c', N'Pick-Up', N'Pending', CAST(2200.00 AS Decimal(18, 2)))
INSERT [dbo].[CustomerInfo] ([cID], [FirstName], [LastName], [Address], [ContactNo], [Email], [DelivOption], [Status], [tTotal]) VALUES (8, N'a', N'a', N'a', N'1', N'a@b.c', N'Pick-Up', N'Pending', CAST(540.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[CustomerInfo] OFF
/****** Object:  Table [dbo].[Sales]    Script Date: 12/09/2017 04:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[sId] [int] IDENTITY(1,1) NOT NULL,
	[GrossSales] [decimal](18, 2) NULL,
	[NetSales] [decimal](18, 2) NULL,
	[EngineOilGSales] [decimal](18, 2) NULL,
	[OilFilterGSales] [decimal](18, 2) NULL,
	[BatteryGSales] [decimal](18, 2) NULL,
	[EngineOilNSales] [decimal](18, 2) NULL,
	[OilFilterNSales] [decimal](18, 2) NULL,
	[BatteryNSales] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sales] ON
INSERT [dbo].[Sales] ([sId], [GrossSales], [NetSales], [EngineOilGSales], [OilFilterGSales], [BatteryGSales], [EngineOilNSales], [OilFilterNSales], [BatteryNSales]) VALUES (1, CAST(56405.00 AS Decimal(18, 2)), CAST(11577.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Sales] OFF
/****** Object:  Table [dbo].[OrderInfo]    Script Date: 12/09/2017 04:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderInfo](
	[oID] [int] IDENTITY(1,1) NOT NULL,
	[DatePurchased] [datetime] NOT NULL,
	[Qty] [int] NOT NULL,
	[Subtotal] [float] NOT NULL,
	[NetTotal] [float] NOT NULL,
	[cID] [int] NULL,
	[iID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[oID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderInfo] ON
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (1, CAST(0x0000A84300C99D05 AS DateTime), 2, 500, 400, 2, 3)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (2, CAST(0x0000A84300D9857A AS DateTime), 4, 2200, 1952, 2, 2)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (3, CAST(0x0000A84300DB0C00 AS DateTime), 2, 500, 400, 2, 3)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (4, CAST(0x0000A84300DB1738 AS DateTime), 2, 340, 252, 2, 1)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (5, CAST(0x0000A84300DB536D AS DateTime), 1, 550, 488, 3, 2)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (6, CAST(0x0000A843012E24A2 AS DateTime), 6, 1020, 252, 4, 1)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (7, CAST(0x0000A843013D3993 AS DateTime), 6, 4320, 668, 4, 8)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (8, CAST(0x0000A8430176ADA8 AS DateTime), 1, 4680, 3863, 4, 18)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (12, CAST(0x0000A844002FDA35 AS DateTime), 3, 510, 378, 4, 1)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (13, CAST(0x0000A84400303E76 AS DateTime), 2, 520, 480, 4, 17)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (14, CAST(0x0000A844003061CA AS DateTime), 1, 170, 126, 4, 1)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (15, CAST(0x0000A8440030672F AS DateTime), 1, 550, 488, 4, 2)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (16, CAST(0x0000A84400306ED6 AS DateTime), 1, 250, 200, 4, 3)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (17, CAST(0x0000A844003075B1 AS DateTime), 2, 1600, 1512, 4, 4)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (18, CAST(0x0000A84400307CBF AS DateTime), 3, 480, 333, 4, 5)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (19, CAST(0x0000A844003082B3 AS DateTime), 4, 720, 528, 4, 6)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (20, CAST(0x0000A8440030894F AS DateTime), 4, 760, 700, 4, 11)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (21, CAST(0x0000A84400309088 AS DateTime), 5, 1875, 1625, 4, 16)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (22, CAST(0x0000A8440030997E AS DateTime), 5, 1050, 875, 4, 15)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (23, CAST(0x0000A8440030A32B AS DateTime), 6, 22380, 18528, 4, 19)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (24, CAST(0x0000A844003142FB AS DateTime), 1, 3730, 3088, 4, 19)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (25, CAST(0x0000A844003148A9 AS DateTime), 1, 300, 260, 4, 12)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (26, CAST(0x0000A84400315066 AS DateTime), 2, 910, 844, 4, 14)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (27, CAST(0x0000A844003776C4 AS DateTime), 2, 1100, 976, 5, 2)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (28, CAST(0x0000A8440039EC2C AS DateTime), 2, 1100, 976, 6, 2)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (29, CAST(0x0000A844003AA11F AS DateTime), 4, 2200, 1952, 7, 2)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (30, CAST(0x0000A844003BDB27 AS DateTime), 3, 540, 396, 8, 6)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (31, CAST(0x0000A844003C4336 AS DateTime), 1, 550, 488, 9, 2)
INSERT [dbo].[OrderInfo] ([oID], [DatePurchased], [Qty], [Subtotal], [NetTotal], [cID], [iID]) VALUES (32, CAST(0x0000A844003C715F AS DateTime), 4, 1000, 800, 9, 3)
SET IDENTITY_INSERT [dbo].[OrderInfo] OFF
/****** Object:  Table [dbo].[NewItem]    Script Date: 12/09/2017 04:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewItem](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[iName] [nvarchar](150) NOT NULL,
	[iDescription] [nvarchar](500) NULL,
	[iSRP] [float] NOT NULL,
	[iNetPrice] [float] NOT NULL,
	[iAQty] [int] NOT NULL,
	[iSQty] [int] NULL,
	[iCategory] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 12/09/2017 04:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[iID] [int] IDENTITY(1,1) NOT NULL,
	[iName] [nvarchar](150) NOT NULL,
	[iDescription] [nvarchar](500) NULL,
	[iSRP] [float] NOT NULL,
	[iNetPrice] [float] NOT NULL,
	[iAQty] [int] NOT NULL,
	[iSQty] [int] NULL,
	[iCategory] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Item] ON
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (1, N'Quartz 2500 SAE 40 API-SF (1L)', N'1 Liter. Monograde oil for gasoline engine.
', 170, 126, 34, 19, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (2, N'Quartz 2500 SAE 40 API-SF (G)', N'Gallon. Monograde oil for gasoline engine.', 550, 488, 23, 27, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (3, N'Quartz 5000 20W50 API-SN (1L)', N'1 Liter. Gasoline/diesel engine(Ford GM, PSA, BMW, VW, Audio, Mercedes-Benz) Premium high performance multigrade oil for passenger car engine.', 250, 200, 34, 16, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (4, N'Quartz 5000 20W50 API-SN (G)', N'Gallon. Gasoline/diesel engine(Ford GM, PSA, BMW, VW, Audio, Mercedes-Benz) Premium high performance multigrade oil for passenger car engine.', 800, 756, 40, 10, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (5, N'Rubia C 40 API-CD (1L)', N'1 Liter. Monograde oil for Diesel Engines/All Diesel turbocharged or normally aspiratid engines', 160, 111, 46, 4, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (6, N'Rubia C 40 API-CD (G)', N'Gallon. Monograde oil for Diesel Engines/All Diesel turbocharged or normally aspiratid engines', 180, 132, 23, 27, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (7, N'Rubia XT 40 15W40 CF-4/SJ (1L)', N'1 Liter. Multi-grade oil for  diesel engine,turbochanged or not, in severe service conditions in all seasons Suited for exended drain intervals(up to 30,000 km according to manufactures).', 220, 170, 46, 4, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (8, N'Rubia XT 40 15W40 CF-4/SJ (G)', N'Gallon. Multi-grade oil for  diesel engine,turbochanged or not, in severe service conditions in all seasons Suited for exended drain intervals(up to 30,000 km according to manufactures).', 720, 668, 48, 2, N'Engine Oil')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (9, N'Bosch OF-101 (0 986 AF1 044 - 4P1)', N'Application: Toyota Revo (Diesel), Toyota 4-Runner (Diesel), Toyota Hi-Ace (Diesel), Toyotal Hi-Lux (Diesel), Ford Everest (Diesel), Ford Ranger Trekker (Diesel).', 175, 162, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (10, N'Bosch OF-110 (0 986 AF1 041 - 4P1)', N'Application: Toyota Corolla / Corolla Altis, Toyota Vios, Toyota Echo / Yaris, Toyota Corona, Toyota Carmy, Toyota RAV4.', 150, 130, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (11, N'Bosch OF-209 (0 986 AF1 067 - 4P1)', N'Application: Nissan Patrol 4.2 (Diesel), Nissan Urvan (Diesel), Nissan Frontier Pick-Up (Diesel)', 190, 175, 46, 4, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (12, N'Bosch OF-204 (0 986 AF1 052 - 4P1)', N'Nissan Patrol 3.2 (Safari Series, SD33 Engine), Nissan Pick-Up 2.5 (SD25 Engine).', 300, 260, 47, 3, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (13, N'Bosch OF-306 (0 986 AF1 036 - 4P1)', N'Application: Mitsubishi Pajero (Deisel), Mitsubishi L200 (Deisel),Mitsubishi L300 (Deisel)Mitsubishi Adventure(Deisel).', 370, 338, 50, 0, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (14, N'Bosch OF-313 (0 986 AF1 084 - 4P1)', N'Application: Mitsubishi Pajero FieldMaster.', 455, 422, 48, 2, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (15, N'Bosch OF-305 (0 986 AF1 040 - 4P1)', N'Secondary Filter, Mitsubishi Canter (4D30 Engine).', 210, 175, 40, 10, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (16, N'Bosch OF-412 (0 986 AF1 074 - 4P1)', N'Application: Isuzu Trooper (4JH1 Engine), Isuzu Trooper (4JH1-T Engine).', 375, 325, 45, 5, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (17, N'Bosch OF-512 (0 986 AF1 055 - 4P1)', N'Application: Isuzu Fuego,Isuzu Hi-lander(old),Isuzu (4JB1/4JA1Engine).', 260, 240, 48, 2, N'Oil Filter')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (18, N'MOTOLITE Enduro 15 DIN44', N'DIN44', 4680, 3863, 47, 3, N'Battery')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (19, N'MOTOLITE Enduro 15 NS40', N'NS40', 3730, 3088, 41, 9, N'Battery')
INSERT [dbo].[Item] ([iID], [iName], [iDescription], [iSRP], [iNetPrice], [iAQty], [iSQty], [iCategory]) VALUES (20, N'MOTOLITE Enduro 15 NS60', N'ALS/ARS', 4260, 3518, 50, 0, N'Battery')
SET IDENTITY_INSERT [dbo].[Item] OFF
/****** Object:  StoredProcedure [dbo].[DeleteOrderInfo]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteOrderInfo] 
	
	@oID AS INT
	
AS
BEGIN
DELETE FROM [dbo].[OrderInfo] WHERE oID = @oID	
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomerInfo]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCustomerInfo] 
	
	@cID AS INT
	
AS
BEGIN
DELETE FROM [dbo].[CustomerInfo] WHERE cID = @cID	
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveOrderInfoByCID]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveOrderInfoByCID] 
	
	
AS
BEGIN
UPDATE dbo.ToTal set Total = ((Select SUM(Subtotal) from OrderInfo where cID =(Select MAX (cID) FROM CustomerInfo) + 1)) where tID = 1

SELECT  o.oID, o.iID, i.iName, o.Qty, o.Subtotal, t.Total
FROM OrderInfo o
JOIN Total t
ON t.tID = 1
JOIN Item i
ON o.iID = i.iID
WHERE o.cID = (Select MAX (cID) FROM CustomerInfo) + 1
ORDER BY o.cID;
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveItemByName]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveItemByName] 
	
	@NAME AS NVARCHAR(150)	
	
AS
BEGIN
SELECT * FROM [dbo].[Item] WHERE iNAME like '%'+@NAME+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveItemByCategory]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveItemByCategory] 
	
	@ICATEGORY AS NVARCHAR(50)	
	
AS
BEGIN
SELECT * FROM [dbo].[Item] where iCategory like '%'+@ICATEGORY+'%'
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveAllOrderInfo]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveAllOrderInfo] 
	
AS
BEGIN
SELECT o.oID, o.DatePurchased, c.FirstName,c.LastName,o.iID, i.iName, i.iCategory,o.Qty, o.Subtotal, o.NetTotal
FROM [dbo].[OrderInfo] o
JOIN CustomerInfo c
ON o.cID = c.cID
JOIN Item i
ON o.iID = i.iID
ORDER BY o.cID;
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveAllItem]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveAllItem] 
	
AS
BEGIN
SELECT * FROM [dbo].[Item];
END
GO
/****** Object:  StoredProcedure [dbo].[RetrieveAllCustomerInfo]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetrieveAllCustomerInfo] 
AS
BEGIN
SELECT * FROM [dbo].[CustomerInfo]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateNetSales]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateNetSales]
 as begin
 UPDATE dbo.Sales 
 SET NetSales = GrossSales - (SELECT SUM(NetTotal) FROM OrderInfo )
 --,EngineOilNSales = EngineOilGSales - (SELECT SUM(NetTotal) FROM OrderInfo where (Select iCategory from Item) = 'Engine Oil')
 --OilFilterNSales = OilFilterGSales - (SELECT SUM(NetTotal) FROM OrderInfo where (Select iCategory from Item) = 'Oil Filter'),
 --BatteryNSales = BatteryGSales - (SELECT SUM(NetTotal) FROM OrderInfo where (Select iCategory from Item) = 'Battery')
 
 WHERE [sId]=1
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateiSQty2]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateiSQty2]
 @sp_oID int
 as begin
 UPDATE Item SET iSQty -= (SELECT Qty from OrderInfo WHERE iID = (Select iID from OrderInfo where oID = @sp_oID))
WHERE iID = (Select iID from OrderInfo where oID = @sp_oID)
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateiSQty1]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateiSQty1]
 @sp_iID int,
 @sp_Qty int
 as begin
 UPDATE dbo.Item SET iSQty += @sp_Qty WHERE iID = @sp_iID
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateiAQty2]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateiAQty2]
@sp_oID int
as begin
UPDATE Item SET iAQty += (SELECT Qty from OrderInfo WHERE iID = (Select TOP 1 iID from OrderInfo where oID = @sp_oID))
WHERE iID in (Select iID from OrderInfo where oID = @sp_oID)

end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateiAQty1]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateiAQty1]
@sp_iID int,
@sp_Qty int
as begin
UPDATE Item SET iAQty = (iAQty - @sp_Qty) where iID = @sp_iID
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateGrossSales]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_UpdateGrossSales]
 as begin
 UPDATE dbo.Sales 
 SET GrossSales = (SELECT SUM(SubTotal) FROM OrderInfo )
 --,
 --EngineOilGSales = (SELECT SUM(SubTotal) FROM OrderInfo where (Select iCategory from Item) = 'Engine Oil'),
 --OilFilterGSales = (SELECT SUM(SubTotal) FROM OrderInfo where (Select iCategory from Item) = 'Oil Filter'),
 --BatteryGSales = (SELECT SUM(SubTotal) FROM OrderInfo where (Select iCategory from Item) = 'Battery')
 
 
 where [sId] = 1
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_NetTotal]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_NetTotal]
 @sp_iID int,
 @sp_Qty int
 as begin
 UPDATE OrderInfo SET NetTotal = ((Select Subtotal from OrderInfo where iID = @sp_iID) -((Select iNetPrice from dbo.Item where iID = @sp_iID)*@sp_Qty)) where iID = @sp_iID
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateTotal]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CreateTotal]
 as begin UPDATE dbo.ToTal set Total = ((Select SUM(Subtotal) from OrderInfo where cID =(Select MAX (cID) FROM CustomerInfo) + 1)) where tID = 1

 end
GO
/****** Object:  StoredProcedure [dbo].[ShowOrderInfoByOID]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ShowOrderInfoByOID]
(
@oID INT
)
as begin
SELECT o.oID, o.DatePurchased, c.FirstName,c.LastName,o.iID, i.iName, o.Qty, o.Subtotal, o.NetTotal
FROM [dbo].[OrderInfo] o
JOIN CustomerInfo c
ON o.cID = c.cID
JOIN Item i
ON o.iID = i.iID
ORDER BY o.cID;
--(select iName from item where iID =(select iID from orderinfo where oID = @oID)),Qty,Subtotal from orderinfo where oID = @oID
end
GO
/****** Object:  StoredProcedure [dbo].[ShowOrderInfoByCID]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ShowOrderInfoByCID]
(
@cID INT
)
as begin


SELECT o.oID, o.iID, i.iName, o.Qty, o.Subtotal
FROM OrderInfo o
--JOIN CustomerInfo c
--ON o.CID = c.cID
JOIN Item i
ON o.iID = i.iID
WHERE o.cID = @cID
ORDER BY o.cID;
end
GO
/****** Object:  StoredProcedure [dbo].[ShowCustomerInfoByCID]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShowCustomerInfoByCID]
(
@CID int
)
AS BEGIN
SELECT * FROM dbo.CustomerInfo WHERE cID = @CID
end
GO
/****** Object:  StoredProcedure [dbo].[ShowAllSales]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShowAllSales] 
	
AS
--BEGIN
--INSERT INTO [dbo].[Sales] (GrossSales, NetSales) 
--VALUES ((SELECT SUM(Subtotal) FROM OrderInfo),(SELECT SUM(NetTotal) FROM OrderInfo))
--END

BEGIN
SELECT i.iName,  o.Qty, i.iSRP,o.Subtotal, i.iNetPrice,o.NetTotal, o.DatePurchased, s.[sId], s.GrossSales, s.NetSales
FROM OrderInfo o
JOIN Item i
ON o.iID = i.iID
JOIN Sales s
ON s.[sId] = 1
END
GO
/****** Object:  StoredProcedure [dbo].[CreateItem]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateItem] 
	@NAME NVARCHAR(150),
	@DESCRIPTION NVARCHAR(500),
	@SRP FLOAT,
	@NETPRICE FLOAT,
	@AQty INT,
	@CATEGORY NVARCHAR(50)

AS
BEGIN
	INSERT INTO [dbo].[Item] ([iName], [iDescription], [iSRP],[iNetPrice], [iAQty],[iCategory])
	VALUES (@NAME,@DESCRIPTION,@SRP,@NETPRICE,@AQty,@CATEGORY);
END
GO
/****** Object:  StoredProcedure [dbo].[CreateCustomerInfo]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateCustomerInfo] 
	
	@FIRSTNAME NVARCHAR(50),
	@LASTNAME NVARCHAR(50),
	@ADDRESS NVARCHAR(150),
	@CONTACTNO NVARCHAR(50),
	@EMAIL NVARCHAR(50),
	@DELIVOPTION NVARCHAR(50)
	
AS
BEGIN
INSERT INTO [dbo].[CustomerInfo] (FirstName,LastName,[Address],ContactNo,Email,DelivOption,[Status],[tTotal]) VALUES(@FIRSTNAME, @LASTNAME, @ADDRESS, @CONTACTNO, @EMAIL, @DELIVOPTION, 'Pending',(Select Total from dbo.Total));
END
GO
/****** Object:  StoredProcedure [dbo].[CategoryGrossSales]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CategoryGrossSales]

as begin

update Sales 
set
EngineOilGSales = (SELECT SUM(SubTotal) FROM OrderInfo where (Select iCategory from Item) = 'Engine Oil')
--,
--OilFilterGSales = (SELECT SUM(SubTotal) FROM OrderInfo where (Select iCategory from Item) = 'Oil Filter'),
-- BatteryGSales = (SELECT SUM(SubTotal) FROM OrderInfo where (Select iCategory from Item) = 'Battery')
 
 where [sId] = 1
 end
GO
/****** Object:  StoredProcedure [dbo].[CancelOrder]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CancelOrder] 
	
	@oID AS INT
	
AS
BEGIN
UPDATE Item SET iAQty = iAQty + (SELECT Qty FROM OrderInfo WHERE oID = @oID) WHERE iID = (SELECT iID FROM OrderInfo WHERE oID = @oID)
END
BEGIN
UPDATE Item SET iSQty = iSQty - (SELECT Qty FROM OrderInfo WHERE oID = @oID) WHERE iID = (SELECT iID FROM OrderInfo WHERE oID = @oID)
END
BEGIN
UPDATE CustomerInfo SET [Status] = 'Cancelled' WHERE (Select cID FROM OrderInfo WHERE oID = @oID) = @oID
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateItem]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateItem] 
	@IID INT,
	@NAME NVARCHAR(150),
	@DESCRIPTION NVARCHAR(500),
	@SRP FLOAT,
	@NETPRICE FLOAT,
	@AQty INT,
	@CATEGORY NVARCHAR(50)

AS
BEGIN
UPDATE [dbo].[Item] 
SET

	iName = @NAME,
	iDescription = @DESCRIPTION,
	iSRP = @SRP,
	iNetPrice = @NETPRICE,
	iAQty = @AQty,
	iCategory = @CATEGORY

WHERE
	iID = @iID;
END
GO
/****** Object:  StoredProcedure [dbo].[updateallaqty]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[updateallaqty]
@Aqty int
as
begin 
update Item set iAQty = @Aqty 
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateStatus]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateStatus] (
@CID INT,
@STATUS NVARCHAR(50)
)

AS BEGIN
UPDATE dbo.CustomerInfo SET[Status] = @STATUS  WHERE cID = @CID
ENd
GO
/****** Object:  StoredProcedure [dbo].[UpdateOrderInfo]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateOrderInfo] 
	
	@oID INT,
	@Qty INT
	
AS

--EXEC dbo.sp_UpdateiAQty2
--@sp_oID = @oID
--EXEC dbo.sp_UpdateiSQty2
--@sp_oID = @oID
----BEGIN
--UPDATE Item SET iAQty = (iAQty + (SELECT Qty from OrderInfo WHERE iID = (Select TOP 1 iID from OrderInfo where oID = @oID)))
--	WHERE iID in (Select iID from OrderInfo where oID = @oID)
--END
--BEGIN
--UPDATE Item SET iSQty = (iSQty - (SELECT Qty from OrderInfo WHERE iID = (Select TOP 1 iID from OrderInfo where oID = @oID))) 
--	WHERE iID = (Select iID from OrderInfo where oID = @oID)
--END
BEGIN
UPDATE OrderInfo SET Qty = @Qty WHERE oID = @oID
UPDATE OrderInfo SET Subtotal = ((Select iSRP from Item where iID =(Select iID from OrderInfo where oID = @oID))*@Qty) WHERE oID = @oID

EXEC dbo.sp_CreateTotal

END
--BEGIN
--UPDATE Item SET iAQty = (iAQty - @Qty) where iID = (Select iID from OrderInfo where oID = @oID)
----END
--BEGIN
--UPDATE OrderInfo SET Subtotal = ((Select iSRP from Item where iID =(Select iID from OrderInfo where oID = @oID))*@Qty) WHERE oID = @oID
--END
--BEGIN
--UPDATE OrderInfo SET NetTotal = ((Select Subtotal from OrderInfo where iID = (Select iID from OrderInfo where oID = @oID)) -((Select iNetPrice from dbo.Item where iID = (Select iID from OrderInfo where oID = @oID))*@Qty)) WHERE iID = (Select iID from OrderInfo where oID = @oID)
--END
--BEGIN
--UPDATE dbo.Item SET iSQty += @Qty WHERE iID =(Select iID from OrderInfo where oID = @oID)
----END
--BEGIN
--UPDATE dbo.CustomerInfo SET Total = (SELECT SUM(Subtotal) FROM OrderInfo WHERE cID =(Select MAX(cID)+1 from dbo.CustomerInfo))
--END
GO
/****** Object:  StoredProcedure [dbo].[ShowTotalSales]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShowTotalSales]
AS BEGIN

 
 
 EXEC sp_UpdateGrossSales
 EXEC sp_UpdateNetSales
 
SELECT * FROM Sales
END
GO
/****** Object:  StoredProcedure [dbo].[ShowSales]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[ShowSales]
As
Begin

 EXEC sp_UpdateNetSales
 
 EXEC sp_UpdateGrossSales
 
SELECT * FROM Sales
End
GO
/****** Object:  StoredProcedure [dbo].[CreateOrderInfo]    Script Date: 12/09/2017 04:53:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateOrderInfo] 
	
	@iID INT,
	@Qty INT
	
AS
BEGIN
SET NOCOUNT ON;
INSERT INTO [dbo].[OrderInfo] (DatePurchased, Qty, cID, iID, Subtotal, NetTotal)
VALUES(getdate(),@Qty,((Select MAX(cID) from dbo.CustomerInfo)+1), (Select TOP 1 iID from dbo.Item where iID = @iID),
 ((Select iSRP from Item where iID = @iID)*@Qty),(Select iNetPrice from dbo.Item where iID = @iID)*@Qty)
 

 EXEC dbo.sp_UpdateiAQty1
 @sp_iID = @iID,
 @sp_Qty = @Qty
 
 EXEC sp_UpdateiSQty1
 @sp_iID = @iID,
 @sp_Qty = @Qty
 
 --EXEC sp_NetTotal
 --@sp_iID = @iID,
 --@sp_Qty = @Qty
 
 EXEC sp_CreateTotal

 EXEC sp_UpdateNetSales
 
 EXEC sp_UpdateGrossSales
 
 
END

--BEGIN
--UPDATE Item SET iAQty = (iAQty - @Qty) where iID = @iID
--END
--BEGIN
--UPDATE OrderInfo SET NetTotal = ((Select Subtotal from OrderInfo where iID = @iID) -((Select iNetPrice from dbo.Item where iID = @iID)*@Qty)) where iID = @iID
--END
--BEGIN
--UPDATE dbo.Item SET iSQty += @Qty WHERE iID = @iID
--END
--BEGIN
--UPDATE dbo.CustomerInfo SET Total = (SELECT SUM(Subtotal) FROM OrderInfo WHERE cID =(Select MAX(cID) from dbo.CustomerInfo)+1)
--END
--BEGIN
--INSERT INTO [dbo].[Sales] (GrossSales, NetSales) 
--VALUES ((SELECT SUM(Subtotal) FROM OrderInfo),'0')
--END
--BEGIN
--UPDATE dbo.Sales SET NetSales = GrossSales - (SELECT SUM(NetTotal) FROM OrderInfo )
--END
GO
