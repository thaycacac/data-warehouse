USE [master]
GO
/****** Object:  Database [DBW301]    Script Date: 2/18/2020 5:48:46 PM ******/
CREATE DATABASE [DBW301]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBW301', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBW301.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBW301_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBW301_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBW301] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBW301].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBW301] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBW301] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBW301] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBW301] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBW301] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBW301] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBW301] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBW301] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBW301] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBW301] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBW301] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBW301] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBW301] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBW301] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBW301] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBW301] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBW301] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBW301] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBW301] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBW301] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBW301] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBW301] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBW301] SET RECOVERY FULL 
GO
ALTER DATABASE [DBW301] SET  MULTI_USER 
GO
ALTER DATABASE [DBW301] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBW301] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBW301] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBW301] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBW301] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBW301', N'ON'
GO
ALTER DATABASE [DBW301] SET QUERY_STORE = OFF
GO
USE [DBW301]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/18/2020 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](255) NOT NULL,
	[last_name] [nvarchar](255) NOT NULL,
	[date_of_birdth] [date] NOT NULL,
	[phone] [nchar](13) NOT NULL,
	[gender] [bit] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MachineMove]    Script Date: 2/18/2020 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MachineMove](
	[move_id] [int] NOT NULL,
	[machine_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_MachineMove] PRIMARY KEY CLUSTERED 
(
	[move_id] ASC,
	[machine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Machines]    Script Date: 2/18/2020 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[city] [nvarchar](max) NOT NULL,
	[state] [nvarchar](max) NOT NULL,
	[country] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Machines] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 2/18/2020 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[bill] [float] NOT NULL,
	[category] [nchar](255) NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 2/18/2020 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[return_date] [date] NOT NULL,
	[machine_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptDetail]    Script Date: 2/18/2020 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptDetail](
	[receipt_id] [int] NOT NULL,
	[rental_id] [int] NOT NULL,
	[move_id] [int] NOT NULL,
	[amount] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rental]    Script Date: 2/18/2020 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental](
	[customer_id] [int] NOT NULL,
	[machine_id] [int] NOT NULL,
	[rental_date] [date] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Rental] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalMovies]    Script Date: 2/18/2020 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalMovies](
	[rental_id] [int] NOT NULL,
	[move_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
 CONSTRAINT [PK_RentalMovies] PRIMARY KEY CLUSTERED 
(
	[rental_id] ASC,
	[move_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (2, N'Phạm Ngọc', N'Hòa', CAST(N'1998-03-20' AS Date), N'0968038714   ', 1)
INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (3, N'Đỗ Quang', N'Hiệp', CAST(N'1997-02-10' AS Date), N'0963125474   ', 0)
INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (4, N'Trần Quang', N'Nhật', CAST(N'1998-12-12' AS Date), N'0125479754   ', 1)
INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (5, N'Phan Văn', N'Đức', CAST(N'1998-10-12' AS Date), N'0547896147   ', 0)
INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (6, N'Nguyễn Hải', N'Nam', CAST(N'1998-01-05' AS Date), N'0984481349   ', 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (1, 1, 2)
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (1, 2, 1)
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (1, 3, 4)
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (2, 1, 2)
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (2, 2, 3)
SET IDENTITY_INSERT [dbo].[Machines] ON 

INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (1, N'49 Hàng Bè - Hàng Bạc', N'Hà Nội', N'Hoàn Kiếm', N'Việt Nam')
INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (2, N'186 Thái Thịnh - Láng Hạ', N'Hà Nội', N'Đống Đa', N'Việt Nam')
INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (3, N'35 Lương Ngọc Quyên - Hàng Buồm', N'Hà Nội', N'Hoàn Kiếm', N'Việt Nam')
INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (4, N'67 Hàng Trống - Hàng Buồm', N'Hà Nội', N'Hoàn Kiếm', N'Việt Nam')
INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (5, N'27 Đinh Tiên Hoàng - Hàng Bạc', N'Hà Nội', N'Hoàn Kiếm', N'Việt Nam')
SET IDENTITY_INSERT [dbo].[Machines] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (1, N'Tam sinh tam thế - chẩm thượng thư', 100000, N'Cổ trang                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (2, N'Tam sinh tam thế - thập lý đào hoa', 150000, N'Cổ trang                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (3, N'Vô cùng thích anh', 50000, N'Tình cảm                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (4, N'Đại dịch cúm', 200000, N'Hành động                                                                                                                                                                                                                                                      ')
INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (5, N'Diệp vấn ', 75000, N'Hành động                                                                                                                                                                                                                                                      ')
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-20' AS Date), 1, 2, 1)
INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-21' AS Date), 2, 3, 2)
INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-21' AS Date), 1, 2, 3)
INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-22' AS Date), 2, 2, 9)
INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-22' AS Date), 1, 3, 10)
SET IDENTITY_INSERT [dbo].[Receipt] OFF
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (1, 1, 1, 100000)
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (1, 2, 1, 150000)
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (2, 1, 1, 300000)
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (2, 2, 2, 75000)
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (2, 1, 2, 300000)
SET IDENTITY_INSERT [dbo].[Rental] ON 

INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (2, 1, CAST(N'2020-02-18' AS Date), 1)
INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (2, 2, CAST(N'2020-02-19' AS Date), 2)
INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (3, 2, CAST(N'2020-02-19' AS Date), 5)
INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (3, 1, CAST(N'2020-02-19' AS Date), 6)
INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (3, 2, CAST(N'2020-02-20' AS Date), 7)
SET IDENTITY_INSERT [dbo].[Rental] OFF
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (1, 1, 2, 200000)
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (1, 2, 1, 100000)
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (2, 1, 1, 150000)
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (2, 2, 2, 300000)
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (2, 3, 1, 75000)
ALTER TABLE [dbo].[MachineMove]  WITH CHECK ADD  CONSTRAINT [FK_MachineMove_Machines] FOREIGN KEY([machine_id])
REFERENCES [dbo].[Machines] ([id])
GO
ALTER TABLE [dbo].[MachineMove] CHECK CONSTRAINT [FK_MachineMove_Machines]
GO
ALTER TABLE [dbo].[MachineMove]  WITH CHECK ADD  CONSTRAINT [FK_MachineMove_Movies] FOREIGN KEY([move_id])
REFERENCES [dbo].[Movies] ([id])
GO
ALTER TABLE [dbo].[MachineMove] CHECK CONSTRAINT [FK_MachineMove_Movies]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Customers]
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Machines] FOREIGN KEY([machine_id])
REFERENCES [dbo].[Machines] ([id])
GO
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Machines]
GO
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetail_Receipt] FOREIGN KEY([receipt_id])
REFERENCES [dbo].[Receipt] ([id])
GO
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [FK_ReceiptDetail_Receipt]
GO
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetail_RentalMovies] FOREIGN KEY([rental_id], [move_id])
REFERENCES [dbo].[RentalMovies] ([rental_id], [move_id])
GO
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [FK_ReceiptDetail_RentalMovies]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customers] ([id])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Customers]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_Machines] FOREIGN KEY([machine_id])
REFERENCES [dbo].[Machines] ([id])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_Machines]
GO
ALTER TABLE [dbo].[RentalMovies]  WITH CHECK ADD  CONSTRAINT [FK_RentalMovies_Movies] FOREIGN KEY([move_id])
REFERENCES [dbo].[Movies] ([id])
GO
ALTER TABLE [dbo].[RentalMovies] CHECK CONSTRAINT [FK_RentalMovies_Movies]
GO
ALTER TABLE [dbo].[RentalMovies]  WITH CHECK ADD  CONSTRAINT [FK_RentalMovies_Rental] FOREIGN KEY([rental_id])
REFERENCES [dbo].[Rental] ([id])
GO
ALTER TABLE [dbo].[RentalMovies] CHECK CONSTRAINT [FK_RentalMovies_Rental]
GO
USE [master]
GO
ALTER DATABASE [DBW301] SET  READ_WRITE 
GO
