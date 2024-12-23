USE [master]
GO
/****** Object:  Database [Wedbanhang]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE DATABASE [Wedbanhang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wedbanhang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MYSQL\MSSQL\DATA\Wedbanhang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Wedbanhang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MYSQL\MSSQL\DATA\Wedbanhang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Wedbanhang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wedbanhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wedbanhang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wedbanhang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wedbanhang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wedbanhang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wedbanhang] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wedbanhang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Wedbanhang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wedbanhang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wedbanhang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wedbanhang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wedbanhang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wedbanhang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wedbanhang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wedbanhang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wedbanhang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Wedbanhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wedbanhang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wedbanhang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wedbanhang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wedbanhang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wedbanhang] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Wedbanhang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wedbanhang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wedbanhang] SET  MULTI_USER 
GO
ALTER DATABASE [Wedbanhang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wedbanhang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wedbanhang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wedbanhang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Wedbanhang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Wedbanhang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Wedbanhang] SET QUERY_STORE = ON
GO
ALTER DATABASE [Wedbanhang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Wedbanhang]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Occupation] [nvarchar](max) NULL,
	[RoleId] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[OrderCode] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductModelId] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderModels]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderModels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_OrderModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/21/2024 3:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Slug] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[BrandID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241217205319_CreateMigration1', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241217210445_InitialCreate', N'8.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'01054fb6-1d0f-4e7b-96bc-66bd462524bf', N'nguoimua', N'NGUOIMUA', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cb5ed7e5-a42b-410e-ab61-a8af81cae953', N'Admin', N'ADMIN', N'c6601604-9a50-4e5d-8d54-4664ac61b1a9')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'003390b2-447f-4c7b-afaa-68f550dbf82a', N'cb5ed7e5-a42b-410e-ab61-a8af81cae953')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Occupation], [RoleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'003390b2-447f-4c7b-afaa-68f550dbf82a', NULL, NULL, N'Vuachua', N'VUACHUA', N'Vuachua@gmail.com', N'VUACHUA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMq+v/PUBlDkHZuxaui3/jvxWLu37VIAcoVRzFOWeGsIxzdoD1X/qj22T8pZduJBeA==', N'GKCFNADOFOANPFQJXUXEE2BEWZ6I2TIP', N'42cd5137-6738-4a4c-b540-b59fa840f81c', N'0353530902', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Occupation], [RoleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'af3bae7a-80b7-4523-b12b-82f0a2b585cf', NULL, NULL, N'nguoimua', N'NGUOIMUA', N'nguoimua@gmail.com', N'NGUOIMUA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEMdWKSdy1F94D2H71MBFXQ38JcR45sa1E6jL3wdb02Oe3ezGzn4PrOFxqFvw82yC6A==', N'V3CJ4W4YIX2XRDPSGEURSLEACDS7SX4U', N'4ed70fc6-7ac2-47c5-b521-36b102e426e3', N'0353530902', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Occupation], [RoleId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ef845789-c104-453f-ad43-024d08f055f1', NULL, NULL, N'muahang', N'MUAHANG', N'muahang@gmail.com', N'MUAHANG@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEGgJceuy1/tdP/VvXe3v+BsPHvgmL0Icb+3VDffOFUg5qyYO9Fwr51lnS2wyLKadjw==', N'VUUOM6VGAMGGOP6FL5YBI2US3ERNVT4K', N'84aa39f3-4d3f-4ca6-88fb-2ce61e8ee994', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (25, N'APPLE', N'APPLE is big large Brand int the word ', N'APPLE', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (26, N'ASUS TUF', N'ASUS TUF  is big large Brand int the word ', N'ASUS TUF', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (27, N'ACER', N'ACER is big large Brand int the word', N'ACER', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (28, N'LENOVO', N'LENOVO is big large Brand int the word', N'LENOVO', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (29, N'MSI', N'MSI is big large Brand int the word', N'MSI', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (30, N'DELL', N'DELL is big large Brand int the word', N'DELL', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (31, N'HP', N'HP is big large Brand int the word', N'HP', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (32, N'SAMSUM', N'SAMSUM is big large Brand int the word ', N'SAMSUM', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (33, N'Màn Hình Máy Tính', N'Màn Hình Máy Tính', N'Màn-Hình-Máy-Tính', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (34, N'Phím, Chuột, Tai Nghe', N'Phím, Chuột, Tai Nghe', N'Phím,-Chuột,-Tai-Nghe', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (35, N'Thiết Bị Âm Thanh', N'Thiết Bị Âm Thanh', N'Thiết-Bị-Âm-Thanh', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (36, N'Case, Tản, Nguồn', N'Case, Tản, Nguồn', N'Case,-Tản,-Nguồn', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (37, N'PC Gaming - Đồ họa - AI', N'PC Gaming - Đồ họa - AI', N'PC-Gaming---Đồ-họa---AI', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (38, N'PC Văn Phòng - Doanh Nghiệp', N'PC Văn Phòng - Doanh Nghiệp', N'PC-Văn-Phòng---Doanh-Nghiệp', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (39, N'Thiết Bị Mạng', N'Thiết Bị Mạng', N'Thiết-Bị-Mạng', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (40, N'Camera, Wedcam, Máy in', N'Camera, Wedcam, Máy in', N'Camera,-Wedcam,-Máy-in', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Description], [Slug], [status]) VALUES (41, N'RAM LAPTOP, RAM PC', N'RAM LAPTOP, RAM PC', N'RAM-LAPTOP,-RAM-PC', 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [status]) VALUES (16, N'MACBOOK', N'MACBOOK is big large Brand int the word ', N'MACBOOK', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [status]) VALUES (17, N'Laptop', N'Laptop is big large Brand int the word ', N'Laptop', 1)
INSERT [dbo].[Categories] ([Id], [Name], [Description], [Slug], [status]) VALUES (18, N'Linh Kiện Máy Tính', N'Linh Kiện Máy Tính ', N'Linh-Kiện-Máy-Tính', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (1, N'AdminMinhHe@gmail.com', N'b9851248-6357-4ad7-b9ce-f8b25895e266', 1, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (2, N'AdminMinhHe@gmail.com', N'b9851248-6357-4ad7-b9ce-f8b25895e266', 2, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (3, N'AdminMinhHe@gmail.com', N'808541bb-fed5-4a18-8e51-18ad8afac2c4', 1, CAST(1233.00 AS Decimal(18, 2)), 2, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (4, N'AdminMinhHe@gmail.com', N'808541bb-fed5-4a18-8e51-18ad8afac2c4', 2, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (5, N'AdminMinhHe@gmail.com', N'808541bb-fed5-4a18-8e51-18ad8afac2c4', 3, CAST(123123.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (6, N'AdminMinhHe@gmail.com', N'02e1aca9-a3f8-4a61-be44-1974ed9deb27', 1, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (7, N'AdminMinhHe@gmail.com', N'02e1aca9-a3f8-4a61-be44-1974ed9deb27', 2, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (8, N'AdminMinhHe@gmail.com', N'f6db3e27-a9f9-4c13-b02e-cebb527a7916', 2, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (9, N'AdminMinhHe@gmail.com', N'f6db3e27-a9f9-4c13-b02e-cebb527a7916', 1, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (10, N'AdminMinhHe@gmail.com', N'5ed02f19-a393-47fd-bba0-a3fb838eec8a', 1, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (11, N'AdminMinhHe@gmail.com', N'5ed02f19-a393-47fd-bba0-a3fb838eec8a', 2, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (12, N'AdminMinhHe@gmail.com', N'2a7fadbe-7612-4436-93dc-cdeab9ff2e14', 1, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (13, N'AdminMinhHe@gmail.com', N'2a7fadbe-7612-4436-93dc-cdeab9ff2e14', 2, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (14, N'AdminMinhHe@gmail.com', N'e71d5798-ee37-43c9-8b3a-4d84f3968873', 1, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (15, N'AdminMinhHe@gmail.com', N'e71d5798-ee37-43c9-8b3a-4d84f3968873', 2, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (16, N'muahang@gmail.com', N'edbce280-33ab-41f3-8147-386b0fa46c85', 17, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (17, N'muahang@gmail.com', N'edbce280-33ab-41f3-8147-386b0fa46c85', 18, CAST(1233.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (18, N'muahang@gmail.com', N'edbce280-33ab-41f3-8147-386b0fa46c85', 19, CAST(22.00 AS Decimal(18, 2)), 1, NULL)
INSERT [dbo].[OrderDetails] ([Id], [UserName], [OrderCode], [ProductId], [Price], [Quantity], [ProductModelId]) VALUES (19, N'muahang@gmail.com', N'5a9fb261-4d76-4946-9334-9c1afb5d3522', 17, CAST(33.00 AS Decimal(18, 2)), 3, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderModels] ON 

INSERT [dbo].[OrderModels] ([Id], [OrderCode], [UserName], [Status]) VALUES (18, N'5a9fb261-4d76-4946-9334-9c1afb5d3522', N'muahang@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[OrderModels] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandID], [CategoryID], [Image]) VALUES (17, N'Macbook', N'Macbook', N'Macbook is Best', CAST(33.00 AS Decimal(8, 2)), 25, 16, N'1.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandID], [CategoryID], [Image]) VALUES (18, N'LAPTOP ASUS TUF', N'LAPTOP-ASUS-TUF', N'<p>Laptop is Best</p>
', CAST(23.00 AS Decimal(8, 2)), 26, 17, N'8342dde7-4c99-4081-8ce4-4777ca100e73_laptop-choi-game-ASUS-TUF-dinh-cao-cong-nghe hinh 1.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandID], [CategoryID], [Image]) VALUES (26, N'Laptop Dell Vostro 3400 i5', N'Laptop-Dell-Vostro-3400-i5', N'<p><strong>Laptop Dell Vostro 3400 i5</strong></p>
', CAST(17.99 AS Decimal(8, 2)), 30, 17, N'58d69d96-b0cf-4495-842a-68ab22beb0f6_dell-latitude-3520-i7-70261780-091221-022033-600x600.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandID], [CategoryID], [Image]) VALUES (27, N'Laptop Samsung Galaxy Book Pro ', N'Laptop-Samsung-Galaxy-Book-Pro-', N'<h2>Laptop Samsung Galaxy Book Pro&nbsp;</h2>
', CAST(15.99 AS Decimal(8, 2)), 32, 17, N'395fe391-9a7b-4d20-bbac-e70a12f8157e_7052_6976_samsung_galaxy_book_pro_2021_h2_jpeg.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandID], [CategoryID], [Image]) VALUES (28, N'Laptop MSI Gaming Katana', N'Laptop-MSI-Gaming-Katana', N'<p>Laptop MSI Gaming Katana</p>
', CAST(23.99 AS Decimal(8, 2)), 29, 17, N'0fc7481c-be3c-4e73-9c49-6307ad88f2ef_msi-katana-15-b13udxk-i7-2077vn-glr-2-638618372665746991-750x500.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandID], [CategoryID], [Image]) VALUES (29, N'Laptop Lenovo Gaming Legion 5', N'Laptop-Lenovo-Gaming-Legion-5', NULL, CAST(42.99 AS Decimal(8, 2)), 31, 17, N'8518765b-da9b-4901-9ebf-e27b2d0b5e85_2022_10_20_638018713259338198_lenovo-gaming-legion-5-15arh7-xam-dam-2.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandID], [CategoryID], [Image]) VALUES (30, N'Tenda TX2 Pro AX1500 WiFi 6 Dual-Band Gigabit Ethernet Wireless Router   ', N'Tenda-TX2-Pro-AX1500-WiFi-6-Dual-Band-Gigabit-Ethernet-Wireless-Router---', N'<p>Tenda TX2 Pro AX1500 WiFi 6 Dual-Band Gigabit Ethernet Wireless Router ...</p>
', CAST(0.90 AS Decimal(8, 2)), 39, 18, N'18ea1329-db33-47d1-8d1b-8460e27e38ef_download.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Slug], [Description], [Price], [BrandID], [CategoryID], [Image]) VALUES (31, N'RAM Laptop Kingston Sodimm 1.2V 16GB 3200MHz CL22', N'RAM-Laptop-Kingston-Sodimm-1.2V-16GB-3200MHz-CL22', N'<p>RAM Laptop Kingston Sodimm 1.2V 16GB 3200MHz CL22</p>
', CAST(0.65 AS Decimal(8, 2)), 41, 18, N'58c24977-3dee-42bf-ad41-1504f933f2e0_OIP.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductModelId]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductModelId] ON [dbo].[OrderDetails]
(
	[ProductModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_BrandID]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_BrandID] ON [dbo].[Products]
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryID]    Script Date: 12/21/2024 3:38:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryID] ON [dbo].[Products]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductModelId] FOREIGN KEY([ProductModelId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductModelId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands_BrandID] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands_BrandID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
USE [master]
GO
ALTER DATABASE [Wedbanhang] SET  READ_WRITE 
GO
