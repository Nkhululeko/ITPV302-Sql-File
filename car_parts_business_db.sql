USE [master]
GO
/****** Object:  Database [car_parts_business_db]    Script Date: 2024/08/31 14:22:23 ******/
CREATE DATABASE [car_parts_business_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'car_parts_business_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\car_parts_business_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'car_parts_business_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\car_parts_business_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [car_parts_business_db] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [car_parts_business_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [car_parts_business_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [car_parts_business_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [car_parts_business_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [car_parts_business_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [car_parts_business_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [car_parts_business_db] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [car_parts_business_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [car_parts_business_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [car_parts_business_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [car_parts_business_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [car_parts_business_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [car_parts_business_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [car_parts_business_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [car_parts_business_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [car_parts_business_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [car_parts_business_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [car_parts_business_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [car_parts_business_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [car_parts_business_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [car_parts_business_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [car_parts_business_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [car_parts_business_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [car_parts_business_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [car_parts_business_db] SET  MULTI_USER 
GO
ALTER DATABASE [car_parts_business_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [car_parts_business_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [car_parts_business_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [car_parts_business_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [car_parts_business_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [car_parts_business_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [car_parts_business_db] SET QUERY_STORE = ON
GO
ALTER DATABASE [car_parts_business_db] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [car_parts_business_db]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2024/08/31 14:22:23 ******/
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
/****** Object:  Table [dbo].[categories]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[description] [varchar](50) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](20) NULL,
	[address] [varchar](50) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventory]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[part_name] [varchar](100) NOT NULL,
	[part_number] [varchar](50) NULL,
	[quantity] [int] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[supplier] [varchar](100) NULL,
	[created_at] [datetime] NULL,
	[supplier_id] [int] NULL,
	[category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logs]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action] [varchar](255) NOT NULL,
	[user_id] [int] NULL,
	[timestamp] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[inventory_id] [int] NULL,
	[quantity] [int] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[order_date] [date] NULL,
	[status] [varchar](20) NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promotions]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promotions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NULL,
	[description] [varchar](50) NULL,
	[discount_percentage] [decimal](5, 2) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stock_movements]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stock_movements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[inventory_id] [int] NULL,
	[movement_type] [varchar](20) NOT NULL,
	[quantity] [int] NOT NULL,
	[movement_date] [datetime] NULL,
	[reason] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suppliers]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suppliers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[contact_person] [varchar](100) NULL,
	[phone] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[address] [varchar](50) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2024/08/31 14:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[role] [varchar](20) NOT NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[customers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[inventory] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[logs] ADD  DEFAULT (CONVERT([time],getdate())) FOR [timestamp]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT (getdate()) FOR [order_date]
GO
ALTER TABLE [dbo].[promotions] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[stock_movements] ADD  DEFAULT (getdate()) FOR [movement_date]
GO
ALTER TABLE [dbo].[suppliers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[inventory]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[inventory]  WITH CHECK ADD FOREIGN KEY([supplier_id])
REFERENCES [dbo].[suppliers] ([id])
GO
ALTER TABLE [dbo].[logs]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([inventory_id])
REFERENCES [dbo].[inventory] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([id])
GO
ALTER TABLE [dbo].[stock_movements]  WITH CHECK ADD FOREIGN KEY([inventory_id])
REFERENCES [dbo].[inventory] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD CHECK  (([status]='canceled' OR [status]='completed' OR [status]='pending'))
GO
ALTER TABLE [dbo].[stock_movements]  WITH CHECK ADD CHECK  (([movement_type]='removal' OR [movement_type]='addition'))
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD CHECK  (([role]='user' OR [role]='admin'))
GO
USE [master]
GO
ALTER DATABASE [car_parts_business_db] SET  READ_WRITE 
GO
