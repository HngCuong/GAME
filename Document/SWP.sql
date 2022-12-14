USE [master]
GO
/****** Object:  Database [PRJShop]    Script Date: 10/29/2022 12:06:46 AM ******/
CREATE DATABASE [PRJShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CUONGSE150679\MSSQL\DATA\PRJShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.CUONGSE150679\MSSQL\DATA\PRJShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJShop] SET  MULTI_USER 
GO
ALTER DATABASE [PRJShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJShop] SET QUERY_STORE = OFF
GO
USE [PRJShop]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[ProductID] [int] NOT NULL,
	[CheckoutID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[CheckoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Checkout]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Checkout](
	[CheckoutID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](20) NULL,
	[Addresses] [varchar](100) NULL,
	[Total] [numeric](12, 0) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[DateOrder] [date] NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CheckoutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[UserId] [nvarchar](50) NOT NULL,
	[Cmt] [nvarchar](50) NOT NULL,
	[DateCmt] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consoles]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consoles](
	[ConsolesID] [int] NOT NULL,
	[ConsolesName] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ConsolesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[subject] [nvarchar](50) NULL,
	[message] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailUsers]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailUsers](
	[UserName] [varchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreID] [int] NOT NULL,
	[GenreName] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsId] [nvarchar](50) NULL,
	[Title] [nchar](10) NULL,
	[DatePost] [nchar](10) NULL,
	[Admin] [nchar](10) NULL,
	[Description] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductPrice] [numeric](12, 0) NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ProductQuantity] [int] NULL,
	[ProductDesc] [nvarchar](1000) NULL,
	[Rating] [float] NULL,
	[LinkIMG1] [nvarchar](255) NULL,
	[LinkIMG2] [nvarchar](255) NULL,
	[LinkIMG3] [nvarchar](255) NULL,
	[LinkIMG4] [nvarchar](255) NULL,
	[LinkIMG5] [nvarchar](255) NULL,
	[GenreID] [int] NULL,
	[ConsolesID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [nchar](10) NULL,
	[Name] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[FacebookID] [char](15) NULL,
	[FacebookLink] [nvarchar](80) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/29/2022 12:06:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Passwords] [varchar](max) NOT NULL,
	[Roles] [varchar](20) NOT NULL,
	[Email1] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([CheckoutID])
REFERENCES [dbo].[Checkout] ([CheckoutID])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Checkout]  WITH CHECK ADD  CONSTRAINT [FK__Checkout__UserID__4316F928] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Checkout] CHECK CONSTRAINT [FK__Checkout__UserID__4316F928]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ConsolesID])
REFERENCES [dbo].[Consoles] ([ConsolesID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genre] ([GenreID])
GO
USE [master]
GO
ALTER DATABASE [PRJShop] SET  READ_WRITE 
GO
