USE [master]
GO
/****** Object:  Database [IKOS]    Script Date: 27.05.2022 13:51:42 ******/
CREATE DATABASE [IKOS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IKOS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\IKOS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IKOS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\IKOS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [IKOS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IKOS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IKOS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IKOS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IKOS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IKOS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IKOS] SET ARITHABORT OFF 
GO
ALTER DATABASE [IKOS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [IKOS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IKOS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IKOS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IKOS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IKOS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IKOS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IKOS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IKOS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IKOS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [IKOS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IKOS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IKOS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IKOS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IKOS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IKOS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IKOS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IKOS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IKOS] SET  MULTI_USER 
GO
ALTER DATABASE [IKOS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IKOS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IKOS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IKOS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IKOS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IKOS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [IKOS] SET QUERY_STORE = OFF
GO
USE [IKOS]
GO
/****** Object:  Table [dbo].[materials]    Script Date: 27.05.2022 13:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials](
	[id_materials] [nchar](10) NOT NULL,
	[name] [nchar](10) NULL,
	[kolichestvo] [nchar](10) NULL,
	[data_prib] [nchar](10) NULL,
	[SkladID] [nchar](10) NULL,
 CONSTRAINT [PK_materials] PRIMARY KEY CLUSTERED 
(
	[id_materials] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 27.05.2022 13:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id_product] [nchar](10) NOT NULL,
	[name] [nchar](10) NULL,
	[data_prib] [nchar](10) NULL,
	[kolichestvo] [nchar](10) NULL,
	[SkladID] [nchar](10) NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sklad]    Script Date: 27.05.2022 13:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sklad](
	[id_sklada] [nchar](10) NOT NULL,
	[numer_sklada] [nchar](10) NULL,
 CONSTRAINT [PK_Sklad] PRIMARY KEY CLUSTERED 
(
	[id_sklada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 27.05.2022 13:51:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id_user] [nchar](10) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Family] [nchar](10) NOT NULL,
	[login] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[materials] ([id_materials], [name], [kolichestvo], [data_prib], [SkladID]) VALUES (N'1         ', N'Гвозди    ', N'3000      ', N'18.05.22  ', N'1         ')
INSERT [dbo].[materials] ([id_materials], [name], [kolichestvo], [data_prib], [SkladID]) VALUES (N'2         ', N'Винты     ', N'3000      ', N'19.04.20  ', N'1         ')
GO
INSERT [dbo].[product] ([id_product], [name], [data_prib], [kolichestvo], [SkladID]) VALUES (N'1         ', N'Диван     ', N'18.01.22  ', N'10        ', N'1         ')
INSERT [dbo].[product] ([id_product], [name], [data_prib], [kolichestvo], [SkladID]) VALUES (N'2         ', N'Кровать   ', N'22.11.20  ', N'15        ', N'1         ')
INSERT [dbo].[product] ([id_product], [name], [data_prib], [kolichestvo], [SkladID]) VALUES (N'3         ', N'Кресло    ', N'31.05.21  ', N'40        ', N'1         ')
GO
INSERT [dbo].[Sklad] ([id_sklada], [numer_sklada]) VALUES (N'1         ', N'1         ')
GO
INSERT [dbo].[user] ([id_user], [Name], [Family], [login], [password]) VALUES (N'1         ', N'Vladislav ', N'Sobolev   ', N'menedjer  ', N'1234      ')
INSERT [dbo].[user] ([id_user], [Name], [Family], [login], [password]) VALUES (N'2         ', N'Anton     ', N'Vanko     ', N'admin     ', N'1234      ')
GO
ALTER TABLE [dbo].[materials]  WITH CHECK ADD  CONSTRAINT [FK_materials_Sklad] FOREIGN KEY([SkladID])
REFERENCES [dbo].[Sklad] ([id_sklada])
GO
ALTER TABLE [dbo].[materials] CHECK CONSTRAINT [FK_materials_Sklad]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_Sklad] FOREIGN KEY([SkladID])
REFERENCES [dbo].[Sklad] ([id_sklada])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_Sklad]
GO
USE [master]
GO
ALTER DATABASE [IKOS] SET  READ_WRITE 
GO
