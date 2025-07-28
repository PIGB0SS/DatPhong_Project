USE [master]
GO
/****** Object:  Database [DatPhongKhachSan]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE DATABASE [DatPhongKhachSan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DatPhongKhachSan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DatPhongKhachSan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DatPhongKhachSan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DatPhongKhachSan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DatPhongKhachSan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DatPhongKhachSan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DatPhongKhachSan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET ARITHABORT OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DatPhongKhachSan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DatPhongKhachSan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DatPhongKhachSan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DatPhongKhachSan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DatPhongKhachSan] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DatPhongKhachSan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DatPhongKhachSan] SET  MULTI_USER 
GO
ALTER DATABASE [DatPhongKhachSan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DatPhongKhachSan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DatPhongKhachSan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DatPhongKhachSan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DatPhongKhachSan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DatPhongKhachSan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DatPhongKhachSan] SET QUERY_STORE = OFF
GO
USE [DatPhongKhachSan]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19/7/2025 7:04:57 PM ******/
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
/****** Object:  Table [dbo].[Amenities]    Script Date: 19/7/2025 7:04:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amenities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[HotelId] [int] NOT NULL,
 CONSTRAINT [PK_Amenities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 19/7/2025 7:04:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19/7/2025 7:04:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19/7/2025 7:04:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19/7/2025 7:04:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19/7/2025 7:04:57 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19/7/2025 7:04:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
	[CreatedDate] [datetime2](7) NULL,
	[Discriminator] [nvarchar](21) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 19/7/2025 7:04:57 PM ******/
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
/****** Object:  Table [dbo].[Bookings]    Script Date: 19/7/2025 7:04:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[HotelId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[Nights] [int] NOT NULL,
	[Status] [nvarchar](max) NULL,
	[TotalCost] [float] NOT NULL,
	[BookingDate] [datetime2](7) NOT NULL,
	[CheckInDate] [date] NOT NULL,
	[CheckOutDate] [date] NOT NULL,
	[IsPaymentSuccessful] [bit] NOT NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[StripeSessionId] [nvarchar](max) NULL,
	[StripePaymentIntentId] [nvarchar](max) NULL,
	[ActualCheckInDate] [datetime2](7) NOT NULL,
	[ActualCheckOutDate] [datetime2](7) NOT NULL,
	[HotelNumber] [int] NOT NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelNumbers]    Script Date: 19/7/2025 7:04:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelNumbers](
	[Hotel_Number] [int] NOT NULL,
	[HotelId] [int] NOT NULL,
	[SpecialDetails] [nvarchar](max) NULL,
 CONSTRAINT [PK_HotelNumbers] PRIMARY KEY CLUSTERED 
(
	[Hotel_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 19/7/2025 7:04:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[SquareMeter] [int] NOT NULL,
	[Occupancy] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NULL,
	[UpdatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250709194802_initial', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250709195931_init2', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250709201427_addData', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250711220149_thaydoirange', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250714010613_themsophong', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250716185510_ThemBangBookingVaUser', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250717201656_ThemAmentity', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250718195344_addIdentity', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250718201529_SuaLaiUser', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250719005348_ThemBooking', N'8.0.18')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250719012730_fixEntities', N'8.0.18')
GO
SET IDENTITY_INSERT [dbo].[Amenities] ON 
GO
INSERT [dbo].[Amenities] ([Id], [Name], [Description], [HotelId]) VALUES (1, N'Vip 5 sao 1', NULL, 1)
GO
INSERT [dbo].[Amenities] ([Id], [Name], [Description], [HotelId]) VALUES (2, N'Vip 5 sao 2', NULL, 1)
GO
INSERT [dbo].[Amenities] ([Id], [Name], [Description], [HotelId]) VALUES (3, N'Vip 5 sao 3', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Amenities] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8dab78cd-4fb3-471c-93b2-d4039c887a95', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ef282efe-d40e-47dc-8df8-ca839af16d44', N'Customer', N'CUSTOMER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'162aa066-f35d-42a0-83d2-4010cc654a34', N'8dab78cd-4fb3-471c-93b2-d4039c887a95')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3e61b68e-d926-4278-835b-40ebc65c8f44', N'ef282efe-d40e-47dc-8df8-ca839af16d44')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate], [Discriminator], [Name]) VALUES (N'162aa066-f35d-42a0-83d2-4010cc654a34', N'doanvietvuong2807@gmail.com', N'DOANVIETVUONG2807@GMAIL.COM', N'doanvietvuong2807@gmail.com', N'DOANVIETVUONG2807@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAENHxNSK5It/x3xWcA5E/5lmf2jBHPc+ZplfD1FOMaHYV5u0QJ5IWSw8rntzNPEvmHg==', N'PTNOVSN4ZWLPCKCCEFJ6Q3VIBSCUO5MC', N'6388f188-f520-4bd3-844f-3b51b5e7c0b6', N'doanvietvuong2807@gmail.com', 0, 0, NULL, 1, 0, CAST(N'2025-07-19T08:28:39.8138360' AS DateTime2), N'ApplicationUser', N'Doan Viet Vuong')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [CreatedDate], [Discriminator], [Name]) VALUES (N'3e61b68e-d926-4278-835b-40ebc65c8f44', N'doanvietvuong2807@gmail.com2', N'DOANVIETVUONG2807@GMAIL.COM2', N'doanvietvuong2807@gmail.com2', N'DOANVIETVUONG2807@GMAIL.COM2', 1, N'AQAAAAIAAYagAAAAENHxNSK5It/x3xWcA5E/5lmf2jBHPc+ZplfD1FOMaHYV5u0QJ5IWSw8rntzNPEvmHg==', N'WIIICACBY6HSB32X7UEWQZDM5V7H77JJ', N'79af2f33-0b31-48b5-b56f-1f00f9c92fd3', N'Doanvietvuong2807@gmail.com', 0, 0, NULL, 1, 0, CAST(N'2025-07-19T08:29:10.5199625' AS DateTime2), N'ApplicationUser', N'doanvietvuong2807@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 
GO
INSERT [dbo].[Bookings] ([Id], [UserId], [HotelId], [Name], [Email], [Phone], [Nights], [Status], [TotalCost], [BookingDate], [CheckInDate], [CheckOutDate], [IsPaymentSuccessful], [PaymentDate], [StripeSessionId], [StripePaymentIntentId], [ActualCheckInDate], [ActualCheckOutDate], [HotelNumber]) VALUES (1, N'3e61b68e-d926-4278-835b-40ebc65c8f44', 1, N'doanvietvuong2807@gmail.com', N'doanvietvuong2807@gmail.com2', N'Doanvietvuong2807@gmail.com', 1, N'Pending', 1000, CAST(N'2025-07-19T08:29:23.2203267' AS DateTime2), CAST(N'2025-07-19' AS Date), CAST(N'0001-01-02' AS Date), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1mTe5s0A0nJsm9PMqlksbrNY781zm6QxrmjsnqCTIhE8Tblo0scur0QJn', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
GO
INSERT [dbo].[Bookings] ([Id], [UserId], [HotelId], [Name], [Email], [Phone], [Nights], [Status], [TotalCost], [BookingDate], [CheckInDate], [CheckOutDate], [IsPaymentSuccessful], [PaymentDate], [StripeSessionId], [StripePaymentIntentId], [ActualCheckInDate], [ActualCheckOutDate], [HotelNumber]) VALUES (2, N'3e61b68e-d926-4278-835b-40ebc65c8f44', 1, N'doanvietvuong2807@gmail.com', N'doanvietvuong2807@gmail.com2', N'Doanvietvuong2807@gmail.com', 1, N'Pending', 1000, CAST(N'2025-07-19T08:40:45.8240272' AS DateTime2), CAST(N'2025-07-19' AS Date), CAST(N'0001-01-02' AS Date), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1xCgtoXdMpgV7lrjercZBJqFHsoSzBcjFN5Wd0e73bIIlQKy2623OeXzq', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
GO
INSERT [dbo].[Bookings] ([Id], [UserId], [HotelId], [Name], [Email], [Phone], [Nights], [Status], [TotalCost], [BookingDate], [CheckInDate], [CheckOutDate], [IsPaymentSuccessful], [PaymentDate], [StripeSessionId], [StripePaymentIntentId], [ActualCheckInDate], [ActualCheckOutDate], [HotelNumber]) VALUES (3, N'3e61b68e-d926-4278-835b-40ebc65c8f44', 1, N'doanvietvuong2807@gmail.com', N'doanvietvuong2807@gmail.com2', N'Doanvietvuong2807@gmail.com', 1, N'Pending', 1000, CAST(N'2025-07-19T08:41:57.9658293' AS DateTime2), CAST(N'2025-07-19' AS Date), CAST(N'0001-01-02' AS Date), 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1fr5GiIo9IKcglGasiaU1LQBoHyPkl6sUcTMcKOGQ0E4gxQ3uCOnyN115', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
GO
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
INSERT [dbo].[HotelNumbers] ([Hotel_Number], [HotelId], [SpecialDetails]) VALUES (201, 1, NULL)
GO
INSERT [dbo].[HotelNumbers] ([Hotel_Number], [HotelId], [SpecialDetails]) VALUES (202, 1, NULL)
GO
INSERT [dbo].[HotelNumbers] ([Hotel_Number], [HotelId], [SpecialDetails]) VALUES (203, 1, NULL)
GO
INSERT [dbo].[HotelNumbers] ([Hotel_Number], [HotelId], [SpecialDetails]) VALUES (204, 1, NULL)
GO
INSERT [dbo].[HotelNumbers] ([Hotel_Number], [HotelId], [SpecialDetails]) VALUES (205, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[Hotels] ON 
GO
INSERT [dbo].[Hotels] ([Id], [Name], [Description], [Price], [SquareMeter], [Occupancy], [ImageUrl], [CreatedDate], [UpdatedDate]) VALUES (1, N'Khach San 5 Sao 1', N'vip pro', 1000, 1000, 20, N'https://pix8.agoda.net/hotelImages/72310894/0/2c34aeec3a30d5f027989bde8ee3ccc0.jpg', NULL, NULL)
GO
INSERT [dbo].[Hotels] ([Id], [Name], [Description], [Price], [SquareMeter], [Occupancy], [ImageUrl], [CreatedDate], [UpdatedDate]) VALUES (2, N'Khach San 5 Sao 2', N'vip pro', 1000, 1000, 20, N'https://pix8.agoda.net/hotelImages/72310894/0/2c34aeec3a30d5f027989bde8ee3ccc0.jpg', NULL, NULL)
GO
INSERT [dbo].[Hotels] ([Id], [Name], [Description], [Price], [SquareMeter], [Occupancy], [ImageUrl], [CreatedDate], [UpdatedDate]) VALUES (3, N'Khach San 5 Sao 3', N'vip pro', 1000, 1000, 20, N'https://pix8.agoda.net/hotelImages/72310894/0/2c34aeec3a30d5f027989bde8ee3ccc0.jpg', NULL, NULL)
GO
INSERT [dbo].[Hotels] ([Id], [Name], [Description], [Price], [SquareMeter], [Occupancy], [ImageUrl], [CreatedDate], [UpdatedDate]) VALUES (4, N'Khach San 5 Sao 4', N'vip pro', 1000, 1000, 20, N'https://pix8.agoda.net/hotelImages/72310894/0/2c34aeec3a30d5f027989bde8ee3ccc0.jpg', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Hotels] OFF
GO
/****** Object:  Index [IX_Amenities_HotelId]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Amenities_HotelId] ON [dbo].[Amenities]
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Bookings_HotelId]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_HotelId] ON [dbo].[Bookings]
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bookings_UserId]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_Bookings_UserId] ON [dbo].[Bookings]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HotelNumbers_HotelId]    Script Date: 19/7/2025 7:04:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_HotelNumbers_HotelId] ON [dbo].[HotelNumbers]
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Amenities]  WITH CHECK ADD  CONSTRAINT [FK_Amenities_Hotels_HotelId] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Amenities] CHECK CONSTRAINT [FK_Amenities_Hotels_HotelId]
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
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [FK_Bookings_Hotels_HotelId] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [FK_Bookings_Hotels_HotelId]
GO
ALTER TABLE [dbo].[HotelNumbers]  WITH CHECK ADD  CONSTRAINT [FK_HotelNumbers_Hotels_HotelId] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HotelNumbers] CHECK CONSTRAINT [FK_HotelNumbers_Hotels_HotelId]
GO
USE [master]
GO
ALTER DATABASE [DatPhongKhachSan] SET  READ_WRITE 
GO
