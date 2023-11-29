USE [master]
GO
/****** Object:  Database [ChestersMills]    Script Date: 29/11/2023 15:13:53 ******/
CREATE DATABASE [ChestersMills]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChestersMills', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ChestersMills.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChestersMills_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ChestersMills_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ChestersMills] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChestersMills].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChestersMills] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChestersMills] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChestersMills] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChestersMills] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChestersMills] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChestersMills] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChestersMills] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChestersMills] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChestersMills] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChestersMills] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChestersMills] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChestersMills] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChestersMills] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChestersMills] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChestersMills] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChestersMills] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChestersMills] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChestersMills] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChestersMills] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChestersMills] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChestersMills] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChestersMills] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChestersMills] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChestersMills] SET  MULTI_USER 
GO
ALTER DATABASE [ChestersMills] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChestersMills] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChestersMills] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChestersMills] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChestersMills] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChestersMills] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ChestersMills] SET QUERY_STORE = ON
GO
ALTER DATABASE [ChestersMills] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ChestersMills]
GO
/****** Object:  Table [dbo].[Administradores]    Script Date: 29/11/2023 15:13:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administradores](
	[idAdmin] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[Clave] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Administradores] PRIMARY KEY CLUSTERED 
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Administradores] ON 

INSERT [dbo].[Administradores] ([idAdmin], [Nombre], [Apellido], [Correo], [Usuario], [Clave]) VALUES (1, N'Agustina', N'Corbalan', N'chestersmills.rrhh@gmail.com', N'corbalana', N'2023')
INSERT [dbo].[Administradores] ([idAdmin], [Nombre], [Apellido], [Correo], [Usuario], [Clave]) VALUES (2, N'Edwin', N'King', N'chestersmills.serviciosgenerales@gmail.com', N'kinge', N'2023')
INSERT [dbo].[Administradores] ([idAdmin], [Nombre], [Apellido], [Correo], [Usuario], [Clave]) VALUES (3, N'Maria', N'Fernandez', N'chestersmills.marketing@gmail.com', N'fernandezm', N'2023')
INSERT [dbo].[Administradores] ([idAdmin], [Nombre], [Apellido], [Correo], [Usuario], [Clave]) VALUES (4, N'Pilar', N'Gomez', N'chestersmills.ventas@gmail.com', N'gomezp', N'2023')
INSERT [dbo].[Administradores] ([idAdmin], [Nombre], [Apellido], [Correo], [Usuario], [Clave]) VALUES (5, N'Franco', N'Suarez', N'chestersmills.operaciones@gmail.com', N'suarezg', N'2023')
INSERT [dbo].[Administradores] ([idAdmin], [Nombre], [Apellido], [Correo], [Usuario], [Clave]) VALUES (6, N'Maximo', N'Jaimez', N'chestersmills.finanzas@gmail.com', N'jaimezm', N'2023')
SET IDENTITY_INSERT [dbo].[Administradores] OFF
GO
USE [master]
GO
ALTER DATABASE [ChestersMills] SET  READ_WRITE 
GO
