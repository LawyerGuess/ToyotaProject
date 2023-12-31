USE [TOYOTA]
GO
/****** Object:  Table [dbo].[AdminPanelUsers]    Script Date: 25.08.2023 06:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminPanelUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_AdminPanelUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25.08.2023 06:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] NULL,
	[CategoryName] [nvarchar](20) NULL,
	[Pack] [nvarchar](20) NULL,
	[Description] [nvarchar](max) NULL,
	[Picture] [image] NULL,
	[VehicleId] [int] NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[VehicleEngine] [float] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 25.08.2023 06:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] NOT NULL,
	[FirstName] [nvarchar](25) NULL,
	[LastName] [nvarchar](25) NULL,
	[City] [nvarchar](15) NULL,
	[PhoneNumber] [nchar](15) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 25.08.2023 06:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [nvarchar](25) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[BirthDate] [datetime] NULL,
	[AnnualLeave] [smallint] NULL,
	[Salary] [int] NULL,
	[Photo] [image] NULL,
	[PhotoPath] [nvarchar](255) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 25.08.2023 06:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[EmployeeId] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
	[ShipAdress] [nvarchar](700) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpareParts]    Script Date: 25.08.2023 06:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpareParts](
	[SparePartId] [int] NULL,
	[Name] [nvarchar](25) NULL,
	[Category] [nvarchar](25) NULL,
	[Stock] [smallint] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 25.08.2023 06:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[Adress] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Phone] [int] NULL,
	[Fax] [int] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 25.08.2023 06:04:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleName] [nvarchar](30) NOT NULL,
	[Year] [int] NULL,
	[Color] [nvarchar](10) NULL,
	[UnitsInStock] [smallint] NULL,
	[SupplierId] [int] NULL,
	[CategoryId] [int] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminPanelUsers] ON 

INSERT [dbo].[AdminPanelUsers] ([Id], [FullName], [Email], [UserName], [Password], [IsActive]) VALUES (1, N'Volkan Esen', N'volkan@volkan.com', N'Volkan', N'Esen', 1)
INSERT [dbo].[AdminPanelUsers] ([Id], [FullName], [Email], [UserName], [Password], [IsActive]) VALUES (2, N'Engin Ceylan', N'engin@engin.com', N'Engin', N'Ceylan', 1)
INSERT [dbo].[AdminPanelUsers] ([Id], [FullName], [Email], [UserName], [Password], [IsActive]) VALUES (3, N'Şemsettin Cankurtaran', N'sems@sems.com', N'Semsettin', N'Can', 1)
SET IDENTITY_INSERT [dbo].[AdminPanelUsers] OFF
GO
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (1, N'Toyota Corolla', N'GLİ', N'Temiz', NULL, 9, CAST(180000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (2, N'Toyota Corolla', N'XEİ', N'Temiz', NULL, 1, CAST(175000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (3, N'Toyota Corolla', N'XE', N'Temiz', NULL, 5, CAST(184000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (4, N'Toyota Corolla', N'XL', N'Temiz', NULL, 1, CAST(202000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (5, N'Toyota Corolla', N'Active', N'Temiz', NULL, 6, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (6, N'Toyota Corolla', N'Advance', N'Orta', NULL, 1, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (7, N'Toyota Corolla', N'Class', N'Kötü', NULL, 2, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (8, N'Toyota Corolla', N'Comfort', N'Temiz', NULL, 3, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (9, N'Toyota Corolla', N'Comfort Extra', N'Temiz', NULL, 1, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (10, N'Toyota Corolla', N'Comfort Verso', N'Temiz', NULL, 5, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (11, N'Toyota Corolla', N'Dream', N'Temiz', NULL, 1, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (12, N'Toyota Corolla', N'Elegant', N'Temiz', NULL, 6, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (13, N'Toyota Corolla', N'Elegant Verso', N'Temiz', NULL, 1, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (14, N'Toyota Corolla', N'Flame', N'Temiz', NULL, 3, CAST(195000 AS Decimal(18, 0)), 1.5, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (15, N'Toyota Corolla', N'Flame X-Pack', N'Temiz', NULL, 1, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (16, N'Toyota Corolla', N'GLİ Liftback', N'Orta', NULL, 2, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (17, N'Toyota Corolla', N'GLİ Special', N'Orta', NULL, 1, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (18, N'Toyota Corolla', N'GTİ', N'Temiz', NULL, 2, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (19, N'Toyota Corolla', N'Life', N'Orta', NULL, 9, CAST(245000 AS Decimal(18, 0)), 1.5, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (20, N'Toyota Corolla', N'Linea', N'Temiz', NULL, 1, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (21, N'Toyota Corolla', N'Linea Luna', N'Orta', NULL, 5, CAST(245000 AS Decimal(18, 0)), 1.3, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (22, N'Toyota Corolla', N'Linea Sol', N'Temiz', NULL, 1, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (23, N'Toyota Corolla', N'Linea Terra', N'Temiz', NULL, 8, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (24, N'Toyota Corolla', N'Luna', N'Temiz', NULL, 1, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (25, N'Toyota Corolla', N'LunaSpecial', N'Kötü', NULL, 7, CAST(200000 AS Decimal(18, 0)), 1.3, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (26, N'Toyota Corolla', N'LunaVerso', N'Temiz', NULL, 9, CAST(245000 AS Decimal(18, 0)), 13, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (27, N'Toyota Corolla', N'Passion X-Pack', N'Orta', NULL, 1, CAST(245000 AS Decimal(18, 0)), 15, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (28, N'Toyota Corolla', N'Plısline', N'Temiz', NULL, 9, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (29, N'Toyota Corolla', N'Premium', N'Temiz', NULL, 1, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (30, N'Toyota Corolla', N'Premium Verso', N'Orta', NULL, 7, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (31, N'Toyota Corolla', N'Si', N'Orta', NULL, 1, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (32, N'Toyota Corolla', N'Sol', N'Temiz', NULL, 7, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (33, N'Toyota Corolla', N'Sol Special', N'Temiz', NULL, 1, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (34, N'Toyota Corolla', N'Sport', N'Temiz', NULL, 2, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (35, N'Toyota Corolla', N'Terra', N'Orta', NULL, 1, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (36, N'Toyota Corolla', N'Terra Special', N'Orta', NULL, 6, CAST(245000 AS Decimal(18, 0)), 1.3, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (37, N'Toyota Corolla', N'Touch', N'Orta', NULL, 1, CAST(245000 AS Decimal(18, 0)), 15, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (38, N'Toyota Corolla', N'Verso', N'Kötü', NULL, 3, CAST(195000 AS Decimal(18, 0)), 13, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (39, N'Toyota Corolla', N'Vision', N'Temiz', NULL, 1, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (40, N'Toyota Corolla', N'VVT-İ Plusline', N'Temiz', NULL, 9, CAST(195000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (41, N'Toyota Corolla', N'VVT-İ Sol', N'Orta', NULL, 10, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (42, N'Toyota Corolla', N'VVT-İ Sport', N'Orta', NULL, 1, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (43, N'Toyota Corolla', N'VVT-İ Terra', N'Orta', NULL, 2, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (44, N'Toyota Corolla', N'XE', N'Orta', NULL, 5, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (45, N'Toyota Corolla', N'XEİ Family', N'Orta', NULL, 4, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (46, N'Toyota Corolla', N'XEİ', N'Orta', NULL, 1, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (47, N'Toyota Corolla', N'XEİ Special', N'Temiz', NULL, 5, CAST(200000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (48, N'Toyota Corolla', N'XEİ Specil Limited', N'Temiz', NULL, 5, CAST(245000 AS Decimal(18, 0)), 1.6, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (49, N'Toyota Auris', N'Active', N'Temiz', NULL, 11, CAST(450000 AS Decimal(18, 0)), 1.4, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (50, N'Toyota Auris', N'Elegant', N'Orta', NULL, 12, CAST(455000 AS Decimal(18, 0)), 1.4, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (51, N'Toyota Avensis', N'Base', N'Temiz', NULL, 3, CAST(500000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (52, N'Toyota Avensis', N'Sol Extra', N'Orta', NULL, 3, CAST(492000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (53, N'Toyota Avensis', N'Executive', N'Kötü', NULL, 3, CAST(440000 AS Decimal(18, 0)), 2, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (54, N'Toyota Yaris', N'Active', N'Temiz', NULL, 4, CAST(520000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (55, N'Toyota Yaris', N'Vision', N'Temiz', NULL, 4, CAST(554000 AS Decimal(18, 0)), 1, 1)
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [Pack], [Description], [Picture], [VehicleId], [UnitPrice], [VehicleEngine], [IsActive]) VALUES (56, N'Toyota Yaris', N'ECO', N'Orta', NULL, 4, CAST(485000 AS Decimal(18, 0)), 1, 1)
GO
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [City], [PhoneNumber], [IsActive]) VALUES (1, N'Ali', N'Geldi', N'Mersin', N'123456789      ', 1)
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [City], [PhoneNumber], [IsActive]) VALUES (2, N'Veli', N'Nerde', N'Ankara', N'123852789      ', 1)
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [City], [PhoneNumber], [IsActive]) VALUES (3, N'Celil', N'Orda', N'Çorum', N'855269789      ', 1)
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [City], [PhoneNumber], [IsActive]) VALUES (4, N'Volkan', N'Ege', N'Adana', N'693852147      ', 1)
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [City], [PhoneNumber], [IsActive]) VALUES (5, N'Kiraz', N'Hele', N'Kars', N'789369456      ', 1)
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [City], [PhoneNumber], [IsActive]) VALUES (6, N'Şeker', N'Cınık', N'Mardin', N'478896456      ', 1)
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [City], [PhoneNumber], [IsActive]) VALUES (7, N'Helin', N'Koska', N'İzmir', N'123963456      ', 1)
INSERT [dbo].[Customers] ([CustomerId], [FirstName], [LastName], [City], [PhoneNumber], [IsActive]) VALUES (8, N'Serkan', N'Tarkan', N'Manisa', N'789741741      ', 1)
GO
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [BirthDate], [AnnualLeave], [Salary], [Photo], [PhotoPath], [IsActive]) VALUES (1, N'Özkan', N'Demir', CAST(N'1990-10-11T00:00:00.000' AS DateTime), 20, 20500, NULL, N'\adminPanel\employeeImages/birinci.png', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [BirthDate], [AnnualLeave], [Salary], [Photo], [PhotoPath], [IsActive]) VALUES (2, N'Volkan', N'Konuk', CAST(N'1986-01-20T00:00:00.000' AS DateTime), 15, 24100, NULL, N'\adminPanel\employeeImages/ikinci.png', 1)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [BirthDate], [AnnualLeave], [Salary], [Photo], [PhotoPath], [IsActive]) VALUES (3, N'Handan', N'Has', CAST(N'1991-12-12T00:00:00.000' AS DateTime), 10, 14000, NULL, N'\adminPanel\employeeImages/ucuncu.png', 1)
GO
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDate], [ShipDate], [ShipAdress], [IsActive]) VALUES (1, 1, 1, CAST(N'2012-12-12T00:00:00.000' AS DateTime), CAST(N'2013-01-01T00:00:00.000' AS DateTime), N'Ulukavak Mah.', 1)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDate], [ShipDate], [ShipAdress], [IsActive]) VALUES (2, 2, 1, CAST(N'2010-09-21T00:00:00.000' AS DateTime), CAST(N'2010-09-22T00:00:00.000' AS DateTime), N'Mimar Sinan Mah.', 1)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [EmployeeId], [OrderDate], [ShipDate], [ShipAdress], [IsActive]) VALUES (3, 3, 2, CAST(N'2020-10-12T00:00:00.000' AS DateTime), CAST(N'2020-10-20T00:00:00.000' AS DateTime), N'Buhara Evler Mah.', 1)
GO
INSERT [dbo].[SpareParts] ([SparePartId], [Name], [Category], [Stock], [IsActive]) VALUES (1, N'Dikiz Ayna', N'Toyota Corolla', 12, 1)
INSERT [dbo].[SpareParts] ([SparePartId], [Name], [Category], [Stock], [IsActive]) VALUES (2, N'Buji', N'Toyota Auris', 8, 1)
INSERT [dbo].[SpareParts] ([SparePartId], [Name], [Category], [Stock], [IsActive]) VALUES (3, N'Toyota Engine', N'Toyota Corolla', 2, 1)
INSERT [dbo].[SpareParts] ([SparePartId], [Name], [Category], [Stock], [IsActive]) VALUES (4, N'Toyota Gearbox', N'Toyota Corolla', 56, 1)
INSERT [dbo].[SpareParts] ([SparePartId], [Name], [Category], [Stock], [IsActive]) VALUES (5, N'Toyota Brake Lining', N'Toyota Corolla', 156, 1)
GO
INSERT [dbo].[Suppliers] ([SupplierId], [CompanyName], [ContactPerson], [Adress], [City], [Country], [Phone], [Fax], [IsActive]) VALUES (1, N'MadridToyota', N'Elvis', N'Madrid Plaza', N'Madrid', N'Spain', 123456789, 789456123, 1)
INSERT [dbo].[Suppliers] ([SupplierId], [CompanyName], [ContactPerson], [Adress], [City], [Country], [Phone], [Fax], [IsActive]) VALUES (2, N'TokyoPlaza', N'Hiroşi', N'Tokyo Plaza', N'Tokyo', N'Japan', 456789123, 456123789, 1)
INSERT [dbo].[Suppliers] ([SupplierId], [CompanyName], [ContactPerson], [Adress], [City], [Country], [Phone], [Fax], [IsActive]) VALUES (3, N'İstanbulTower', N'Engin', N' İstanbul Beşiktaş', N'İstanbul', N'Turkey', 963456789, 528789639, 1)
GO
SET IDENTITY_INSERT [dbo].[Vehicles] ON 

INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (1, N'Toyota Auto', 1996, N'White', 6, 1, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (2, N'Toyota Auto', 2012, N'Red', 4, 1, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (3, N'Toyota Auto', 2002, N'Blue', 3, 1, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (4, N'Toyota Auto', 2005, N'White', 5, 2, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (5, N'Toyota Auto', 2020, N'Red', 1, 2, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (6, N'Toyota Auto', 2021, N'Blue', 1, 2, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (7, N'Toyota Auto', 2004, N'White', 4, 2, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (8, N'Toyota Auto', 1999, N'Red', 2, 1, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (9, N'Toyota Auto', 2009, N'Blue', 2, 2, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (10, N'Toyota Auto', 2010, N'Black', 1, 3, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (11, N'Toyota Auto', 2014, N'White', 14, 1, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (12, N'Toyota Auto', 2010, N'Red', 4, 4, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (13, N'Toyota Auto', 2008, N'Gray', 3, 2, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (14, N'Toyota Auto', 2010, N'Gray', 1, 2, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (15, N'Toyota Auto', 2010, N'White', 12, 3, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (16, N'Toyota Auto', 2015, N'Red', 5, 2, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (1016, N'Toyota Engine', 2012, N'Black', 2, 1, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (1017, N'Toyota Gearbox', 2010, N'Black', 56, 2, NULL, 1)
INSERT [dbo].[Vehicles] ([VehicleId], [VehicleName], [Year], [Color], [UnitsInStock], [SupplierId], [CategoryId], [IsActive]) VALUES (1018, N'Toyota Brake Lining', 2019, N'Gray', 156, 2, NULL, 1)
SET IDENTITY_INSERT [dbo].[Vehicles] OFF
GO
