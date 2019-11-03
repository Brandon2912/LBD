USE [UltimateAvanceHotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StockMobiliario]') AND type in (N'U'))
ALTER TABLE [dbo].[StockMobiliario] DROP CONSTRAINT IF EXISTS [FK__StockMobi__Mobil__5BE2A6F2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT IF EXISTS [FK__Reservaci__Huesp__5EBF139D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT IF EXISTS [FK__Reservaci__Habit__5FB337D6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Planta]') AND type in (N'U'))
ALTER TABLE [dbo].[Planta] DROP CONSTRAINT IF EXISTS [FK__Planta__Habitaci__5AEE82B9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Municipio]') AND type in (N'U'))
ALTER TABLE [dbo].[Municipio] DROP CONSTRAINT IF EXISTS [FK__Municipio__Pais___60A75C0F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Municipio]') AND type in (N'U'))
ALTER TABLE [dbo].[Municipio] DROP CONSTRAINT IF EXISTS [FK__Municipio__Estad__619B8048]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND type in (N'U'))
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT IF EXISTS [FK__Huesped__Pais_id__5535A963]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND type in (N'U'))
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT IF EXISTS [FK__Huesped__Municip__571DF1D5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND type in (N'U'))
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT IF EXISTS [FK__Huesped__Estado___5629CD9C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__Servicios__4E88ABD4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__Reservaci__4F7CD00D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__Planta_id__534D60F1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__Pais_id__5070F446]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__Municipio__52593CB8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__Mobiliari__5441852A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__Estado_id__5165187F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__Empleado___628FA481]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT IF EXISTS [FK__Empleado__Pais_i__5812160E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT IF EXISTS [FK__Empleado__Munici__59FA5E80]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT IF EXISTS [FK__Empleado__Estado__59063A47]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CargosXHabitacion]') AND type in (N'U'))
ALTER TABLE [dbo].[CargosXHabitacion] DROP CONSTRAINT IF EXISTS [FK__CargosXHa__Servi__5DCAEF64]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CargosXHabitacion]') AND type in (N'U'))
ALTER TABLE [dbo].[CargosXHabitacion] DROP CONSTRAINT IF EXISTS [FK__CargosXHa__Habit__5CD6CB2B]
GO
/****** Object:  Table [dbo].[StockMobiliario]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[StockMobiliario]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Planta]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Planta]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Municipio]
GO
/****** Object:  Table [dbo].[Mobiliario]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Mobiliario]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Huesped]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[CargosXHabitacion]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP TABLE IF EXISTS [dbo].[CargosXHabitacion]
GO
USE [master]
GO
/****** Object:  Database [UltimateAvanceHotel]    Script Date: 02/11/2019 08:05:23 p. m. ******/
DROP DATABASE IF EXISTS [UltimateAvanceHotel]
GO
/****** Object:  Database [UltimateAvanceHotel]    Script Date: 02/11/2019 08:05:23 p. m. ******/
CREATE DATABASE [UltimateAvanceHotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UltimateAvanceHotel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\UltimateAvanceHotel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UltimateAvanceHotel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\UltimateAvanceHotel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [UltimateAvanceHotel] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UltimateAvanceHotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UltimateAvanceHotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UltimateAvanceHotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UltimateAvanceHotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [UltimateAvanceHotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UltimateAvanceHotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET RECOVERY FULL 
GO
ALTER DATABASE [UltimateAvanceHotel] SET  MULTI_USER 
GO
ALTER DATABASE [UltimateAvanceHotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UltimateAvanceHotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UltimateAvanceHotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UltimateAvanceHotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UltimateAvanceHotel] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'UltimateAvanceHotel', N'ON'
GO
ALTER DATABASE [UltimateAvanceHotel] SET QUERY_STORE = OFF
GO
USE [UltimateAvanceHotel]
GO
/****** Object:  Table [dbo].[CargosXHabitacion]    Script Date: 02/11/2019 08:05:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargosXHabitacion](
	[CargosXHabitacion_id] [int] NOT NULL,
	[Habitacion_id] [int] NOT NULL,
	[Servicios_id] [int] NOT NULL,
	[CargoXServicio] [int] NOT NULL,
	[CostoTotal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CargosXHabitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Empleado_id] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Pais_id] [int] NOT NULL,
	[Estado_id] [int] NOT NULL,
	[Municipio_id] [int] NOT NULL,
	[Edad] [int] NOT NULL,
	[Puesto] [varchar](30) NOT NULL,
	[Turno] [varchar](10) NOT NULL,
	[Calle] [varchar](30) NOT NULL,
	[Sueldo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[Estado_id] [int] NOT NULL,
	[NombreEstado] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Estado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[Habitacion_id] [int] NOT NULL,
	[EstadoDeHabitacion] [varchar](13) NOT NULL,
	[Tipo] [char](7) NOT NULL,
	[CostoDeHabitacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Habitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[Hotel_id] [int] NOT NULL,
	[Servicios_id] [int] NOT NULL,
	[Reservacion_id] [int] NOT NULL,
	[Pais_id] [int] NOT NULL,
	[Estado_id] [int] NOT NULL,
	[Municipio_id] [int] NOT NULL,
	[Planta_id] [int] NOT NULL,
	[Mobiliario_id] [int] NOT NULL,
	[Empleado_id] [int] NOT NULL,
	[Nombre] [char](30) NOT NULL,
	[RFC] [varchar](15) NOT NULL,
	[CodigoPostal] [varchar](5) NOT NULL,
	[Calle] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Hotel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Huesped](
	[Huesped_id] [int] NOT NULL,
	[Pais_id] [int] NOT NULL,
	[Estado_id] [int] NOT NULL,
	[Municipio_id] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Edad] [int] NOT NULL,
	[Calle] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Huesped_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mobiliario]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mobiliario](
	[Mobiliario_id] [int] NOT NULL,
	[NombreMobiliario] [varchar](20) NOT NULL,
	[#XMobiliario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mobiliario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[Municipio_id] [int] NOT NULL,
	[Estado_id] [int] NOT NULL,
	[Pais_id] [int] NOT NULL,
	[NombreMunicipio] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Municipio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Pais_id] [int] NOT NULL,
	[NombrePais] [varchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Pais_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Planta]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planta](
	[Planta_id] [int] NOT NULL,
	[Habitacion_id] [int] NOT NULL,
	[#Planta] [int] NOT NULL,
	[#HabitacionesGrandes] [int] NOT NULL,
	[#HabitacionesMedianas] [int] NOT NULL,
	[#HabitacionesChicas] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Planta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion](
	[Reservacion_id] [int] NOT NULL,
	[Huesped_id] [int] NOT NULL,
	[Habitacion_id] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Reservacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicios_id] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Servicios_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockMobiliario]    Script Date: 02/11/2019 08:05:26 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockMobiliario](
	[StockMobiliario_id] [int] NOT NULL,
	[Mobiliario_id] [int] NOT NULL,
	[#Muebles] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StockMobiliario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (1, N'Luis', 1, 1, 1, 25, N'Contador', N'1', N'Munich', 10000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (2, N'Pedro', 1, 1, 2, 32, N'Director Del Hotel', N'1', N'Munich', 30000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (3, N'Jesus', 1, 1, 2, 23, N'Asistente', N'1', N'Munich', 4000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (4, N'Ana', 1, 13, 157, 22, N'Asistente', N'1', N'Munich', 5000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (5, N'Adriana', 1, 12, 156, 23, N'Asistente', N'1', N'Munich', 6000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (6, N'Brandon', 1, 19, 163, 18, N'CEO', N'1', N'san adress', 70000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (7, N'Diego', 1, 12, 156, 21, N'Recursos Humanos', N'1', N'san adress', 20000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (8, N'Aaron', 1, 12, 156, 25, N'Asistente', N'1', N'san adress', 2000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (9, N'Jose', 1, 12, 156, 27, N'Asistente', N'1', N'san adress', 3000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (10, N'Adan', 1, 12, 156, 45, N'Asistente', N'1', N'san mateo', 4000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (11, N'Raul', 1, 23, 167, 38, N'DBA', N'1', N'san mateo', 64000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (12, N'Abraham', 1, 23, 167, 23, N'DB', N'1', N'venustiano', 23000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (13, N'Victor', 1, 23, 167, 23, N'DB', N'1', N'venustiano', 34000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (14, N'Luisa', 1, 23, 167, 29, N'DB', N'1', N'venustiano', 23000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (15, N'Karen', 1, 19, 163, 39, N'Chef', N'1', N'Pino', 20000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (16, N'Gabriela', 1, 19, 163, 18, N'Chef', N'1', N'Pino', 20000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (17, N'laura', 1, 19, 163, 23, N'Chef', N'2', N'Pino', 20000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (18, N'Olivia', 1, 19, 163, 19, N'Asistente', N'2', N'Pino', 1000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (19, N'Elena', 1, 19, 163, 28, N'Camarero', N'2', N'Bosques', 12000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (20, N'Renata', 1, 19, 163, 22, N'Lavaplatos', N'2', N'Bosques', 1200)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (21, N'Lautaro', 1, 19, 163, 23, N'Gerente', N'2', N'Bosques', 22300)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (22, N'Leonel', 1, 19, 163, 25, N'Limpieza', N'2', N'Alamo', 23400)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (23, N'Suarez', 1, 17, 161, 28, N'Limpieza', N'2', N'Alamo', 23200)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (24, N'Luis', 1, 26, 170, 29, N'Seguridad', N'2', N'Alamo', 12000)
GO
INSERT [dbo].[Empleado] ([Empleado_id], [Nombre], [Pais_id], [Estado_id], [Municipio_id], [Edad], [Puesto], [Turno], [Calle], [Sueldo]) VALUES (25, N'Jesus', 1, 21, 165, 25, N'Liimpieza', N'2', N'Alamo', 21000)
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (1, N'Aguas Calientes')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (2, N'Baja California')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (3, N'Baja California Sur ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (4, N'Campeche')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (5, N'Chiapas')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (6, N'Chihuahua')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (7, N'Cuidad de Mexico ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (8, N'Coahuila ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (9, N'Colima ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (10, N'Durango ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (11, N'Guanajuato ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (12, N'Guerrero')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (13, N'Hidalgo ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (14, N'Jalisco ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (15, N'México ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (16, N'Michoacan ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (17, N'Morelos ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (18, N'Nayarit ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (19, N'Nuevo Leon ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (20, N'Oaxaca ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (21, N'Puelba ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (22, N'Queretaro ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (23, N'San Luis ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (24, N'Sinaloa ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (25, N'Sonora ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (26, N'Tabasco ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (27, N'Tamaulipas ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (28, N'Tlaxcala ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (29, N'Veracruz ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (30, N'Yucatan ')
GO
INSERT [dbo].[Estado] ([Estado_id], [NombreEstado]) VALUES (31, N'Zacatecas ')
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (1, N'Dspoible', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (2, N'Dspoible', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (3, N'Dspoible', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (4, N'Dspoible', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (5, N'Ocupada', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (6, N'Dspoible', N'M      ', 300)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (7, N'Dspoible', N'M      ', 300)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (8, N'Ocupada', N'G      ', 400)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (9, N'Dspoible', N'G      ', 400)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (10, N'Ocupada', N'G      ', 400)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (11, N'Dspoible', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (12, N'Dspoible', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (13, N'Dspoible', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (14, N'Dspoible', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (15, N'Ocupada', N'C      ', 200)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (16, N'Dspoible', N'M      ', 300)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (17, N'Dspoible', N'M      ', 300)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (18, N'Ocupada', N'G      ', 400)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (19, N'Dspoible', N'G      ', 400)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (20, N'Ocupada', N'G      ', 400)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (21, N'Dspoible', N'M      ', 300)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (22, N'Dspoible', N'M      ', 300)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (23, N'Ocupada', N'G      ', 400)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (24, N'Dspoible', N'G      ', 400)
GO
INSERT [dbo].[Habitacion] ([Habitacion_id], [EstadoDeHabitacion], [Tipo], [CostoDeHabitacion]) VALUES (25, N'Ocupada', N'G      ', 400)
GO
INSERT [dbo].[Hotel] ([Hotel_id], [Servicios_id], [Reservacion_id], [Pais_id], [Estado_id], [Municipio_id], [Planta_id], [Mobiliario_id], [Empleado_id], [Nombre], [RFC], [CodigoPostal], [Calle]) VALUES (1, 1, 2, 1, 1, 3, 15, 1, 4, N'A                             ', N'3e3', N'232', N'San andres')
GO
INSERT [dbo].[Hotel] ([Hotel_id], [Servicios_id], [Reservacion_id], [Pais_id], [Estado_id], [Municipio_id], [Planta_id], [Mobiliario_id], [Empleado_id], [Nombre], [RFC], [CodigoPostal], [Calle]) VALUES (2, 1, 1, 1, 1, 2, 3, 1, 4, N'A                             ', N'3r3', N'2422', N'Munich')
GO
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad], [Calle]) VALUES (1, 1, 1, 1, N'Paco', 32, N'Mnich')
GO
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad], [Calle]) VALUES (2, 1, 3, 1, N'Pedro', 34, N'San andres')
GO
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad], [Calle]) VALUES (3, 1, 3, 1, N'Ana', 32, N'San andres')
GO
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad], [Calle]) VALUES (4, 1, 3, 1, N'Jesus', 24, N'San andres')
GO
INSERT [dbo].[Huesped] ([Huesped_id], [Pais_id], [Estado_id], [Municipio_id], [Nombre], [Edad], [Calle]) VALUES (5, 1, 3, 1, N'Katia', 26, N'San andres')
GO
INSERT [dbo].[Mobiliario] ([Mobiliario_id], [NombreMobiliario], [#XMobiliario]) VALUES (1, N'Cama', 20)
GO
INSERT [dbo].[Mobiliario] ([Mobiliario_id], [NombreMobiliario], [#XMobiliario]) VALUES (2, N'Estantes', 25)
GO
INSERT [dbo].[Mobiliario] ([Mobiliario_id], [NombreMobiliario], [#XMobiliario]) VALUES (3, N'Sillas', 36)
GO
INSERT [dbo].[Mobiliario] ([Mobiliario_id], [NombreMobiliario], [#XMobiliario]) VALUES (4, N'Mesas', 8)
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (1, 1, 1, N'Aguascalientes')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (2, 1, 1, N'Asientos')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (3, 1, 1, N'Calvillo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (4, 1, 1, N'Cosio')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (5, 1, 1, N'El llano')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (6, 1, 1, N'Jesus Maria')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (7, 1, 1, N'Pabellon de artera')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (8, 1, 1, N'Rincon de romos')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (9, 1, 1, N'San francisco de los romos')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (10, 1, 1, N'San jose de garcia')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (11, 2, 1, N'Tepezala')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (12, 2, 1, N'Ensenada')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (13, 2, 1, N'Mexicali')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (14, 2, 1, N'Playas rosario')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (15, 2, 1, N'Tecate')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (16, 2, 1, N'Tijuana')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (17, 3, 1, N'Comondu')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (18, 3, 1, N'La paz')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (19, 3, 1, N'Loreto')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (20, 3, 1, N'Los cabos')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (21, 3, 1, N'Mulege')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (22, 4, 1, N'Calacmu')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (23, 4, 1, N'Calkini')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (24, 4, 1, N'Campeche')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (25, 4, 1, N'Candelaria')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (26, 4, 1, N'Carmen')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (27, 4, 1, N'Champoton')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (28, 4, 1, N'Escarcega')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (29, 4, 1, N'Hecelchakan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (30, 4, 1, N'Hopelchen')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (31, 4, 1, N'Palizada')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (32, 4, 1, N'Tenabo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (33, 5, 1, N'Acacoyagua')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (34, 5, 1, N'Acala')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (35, 5, 1, N'Acapetahua')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (36, 5, 1, N'Aldama')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (37, 5, 1, N'Altarimano')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (38, 5, 1, N'Amatan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (39, 5, 1, N'Amatemango de la frontera')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (40, 5, 1, N'Amatenango del valle')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (41, 5, 1, N'Angel albino corzo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (42, 5, 1, N'Arriaga')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (43, 5, 1, N'Bejucal de ocampo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (44, 5, 1, N'Bella vista')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (45, 5, 1, N'Benemerito de las americas')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (46, 5, 1, N'Berriozobal')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (47, 5, 1, N'Bochil')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (48, 5, 1, N'Cacahoatan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (49, 5, 1, N'Catazaja')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (50, 5, 1, N'Chalchihutan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (51, 5, 1, N'Chamula')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (52, 5, 1, N'Chanal')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (53, 5, 1, N'Chapultenango')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (54, 5, 1, N'Chenalho')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (55, 5, 1, N'Chiapa de corzo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (56, 5, 1, N'Chiapilla')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (57, 5, 1, N'Chicoasen')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (58, 5, 1, N'Chicomuselo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (59, 5, 1, N'Chilon')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (60, 5, 1, N'Cintalapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (61, 5, 1, N'Coapilla')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (62, 5, 1, N'Comitan de dominguez')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (63, 5, 1, N'Copainala')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (64, 5, 1, N'El bosque')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (65, 5, 1, N'El provenir')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (66, 5, 1, N'Escintla')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (67, 5, 1, N'Francisco Leon')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (68, 5, 1, N'Frontera Comalapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (69, 5, 1, N'Frontera Hidalgo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (70, 5, 1, N'Huehuetan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (71, 5, 1, N'Huitiupan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (72, 5, 1, N'Huixtan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (73, 5, 1, N'Huixtla')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (74, 5, 1, N'Ixhuatan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (75, 5, 1, N'Ixtacomitan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (76, 5, 1, N'Ixtapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (77, 5, 1, N'Ixtapangajoya')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (78, 5, 1, N'Jiquipilas')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (79, 5, 1, N'Jitol')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (80, 5, 1, N'Juarez')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (81, 5, 1, N'La concordia')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (82, 5, 1, N'La grandeza')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (83, 5, 1, N'La indepedencia')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (84, 5, 1, N'La libertad')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (85, 5, 1, N'La Trinitaria')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (86, 5, 1, N'Larrainzar')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (87, 5, 1, N'Las margaritas')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (88, 5, 1, N'Las rosas')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (89, 5, 1, N'Mastepec')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (90, 5, 1, N'Maravilla Tenejapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (91, 5, 1, N'Marques de comillas')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (92, 5, 1, N'Mazapa de medero')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (93, 5, 1, N'Mazatan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (94, 5, 1, N'Metapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (95, 5, 1, N'Mitontic')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (96, 5, 1, N'Montecristo de guerro')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (97, 5, 1, N'Motozintla')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (98, 5, 1, N'Nicolas Ruiz')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (99, 5, 1, N'Ocosingo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (100, 5, 1, N'Ocotepec')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (101, 5, 1, N'Ocozocoautla de Espinosa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (102, 5, 1, N'Ostuacan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (103, 5, 1, N'Osumancita')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (104, 5, 1, N'Oxchc')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (105, 5, 1, N'Palenque')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (106, 5, 1, N'Pantelho')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (107, 5, 1, N'Pantepec')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (108, 5, 1, N'Pichucalco')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (109, 5, 1, N'Pijijiapan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (110, 5, 1, N'Pueblo nuevo Solistahucan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (111, 5, 1, N'Rayon')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (112, 5, 1, N'Reforma')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (113, 5, 1, N'Sabanilla')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (114, 5, 1, N'Salto de agua')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (115, 5, 1, N'San andres duraznal')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (116, 5, 1, N'San cristobal de las casas')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (117, 5, 1, N'San fernando')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (118, 5, 1, N'San Juan cancuc')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (119, 5, 1, N'San lucas')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (120, 5, 1, N'Santiago el pinar')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (121, 5, 1, N'Sitepec')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (122, 5, 1, N'Simojovel')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (123, 5, 1, N'Sitala')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (124, 5, 1, N'Socoltenango')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (125, 5, 1, N'Solosuchiapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (126, 5, 1, N'Soyalo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (127, 5, 1, N'Suchiapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (128, 5, 1, N'Suchiate')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (129, 5, 1, N'Sunuapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (130, 5, 1, N'Tapachula')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (131, 5, 1, N'Tapalapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (132, 5, 1, N'Tapilula')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (133, 5, 1, N'Tecpatan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (134, 5, 1, N'Tenejapa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (135, 5, 1, N'Teopisca')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (136, 5, 1, N'Tila')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (137, 5, 1, N'Tonala')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (138, 5, 1, N'Totolopa')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (139, 5, 1, N'Tumbala')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (140, 5, 1, N'Tuxtla gutierrez')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (141, 5, 1, N'Tuzantan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (142, 5, 1, N'Tzimol')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (143, 5, 1, N'Union Juarez')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (144, 5, 1, N'Venstiano Carranza')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (145, 5, 1, N'Villa Comaltitlan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (146, 5, 1, N'Villa Corzo')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (147, 5, 1, N'Villaflores')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (148, 5, 1, N'Yajalon')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (149, 5, 1, N'Zinacantan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (150, 6, 1, N'Nonoava')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (151, 7, 1, N'Colima')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (152, 8, 1, N'Xochimilco')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (153, 9, 1, N'Canelas')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (154, 10, 1, N'Atarjea')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (155, 11, 1, N'Arcelia')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (156, 12, 1, N'Apan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (157, 13, 1, N'Huejucar')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (158, 14, 1, N'Guadalajara')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (159, 15, 1, N'Ario')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (160, 16, 1, N'Ayala')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (161, 17, 1, N'Apaxco')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (162, 18, 1, N'San blas')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (163, 19, 1, N'Monterrey')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (164, 20, 1, N'Oaxaca')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (165, 21, 1, N'Acajeto')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (166, 22, 1, N'Queretaro')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (167, 23, 1, N'Bacalar')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (168, 24, 1, N'Cedral')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (169, 25, 1, N'Mazatlan')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (170, 26, 1, N'Atil')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (171, 27, 1, N'Jonuta')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (172, 28, 1, N'Burgos')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (173, 29, 1, N'Apizaco')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (174, 30, 1, N'Veracruz')
GO
INSERT [dbo].[Municipio] ([Municipio_id], [Estado_id], [Pais_id], [NombreMunicipio]) VALUES (175, 31, 1, N'Merida')
GO
INSERT [dbo].[Pais] ([Pais_id], [NombrePais]) VALUES (1, N'Mexico ')
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (1, 1, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (2, 2, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (3, 3, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (4, 4, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (5, 5, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (6, 6, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (7, 7, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (8, 8, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (9, 9, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (10, 10, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (11, 11, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (12, 12, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (13, 13, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (14, 14, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (15, 15, 1, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (16, 16, 2, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (17, 17, 2, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (18, 18, 2, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (19, 19, 2, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (20, 20, 2, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (21, 21, 3, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (22, 22, 3, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (23, 23, 3, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (24, 24, 3, 5, 5, 5)
GO
INSERT [dbo].[Planta] ([Planta_id], [Habitacion_id], [#Planta], [#HabitacionesGrandes], [#HabitacionesMedianas], [#HabitacionesChicas]) VALUES (25, 25, 3, 5, 5, 5)
GO
INSERT [dbo].[Reservacion] ([Reservacion_id], [Huesped_id], [Habitacion_id], [Fecha]) VALUES (1, 1, 1, CAST(N'2019-10-01' AS Date))
GO
INSERT [dbo].[Reservacion] ([Reservacion_id], [Huesped_id], [Habitacion_id], [Fecha]) VALUES (2, 2, 3, CAST(N'2019-10-02' AS Date))
GO
INSERT [dbo].[Reservacion] ([Reservacion_id], [Huesped_id], [Habitacion_id], [Fecha]) VALUES (3, 3, 13, CAST(N'2019-10-03' AS Date))
GO
INSERT [dbo].[Servicios] ([Servicios_id], [Nombre]) VALUES (1, N'Spa')
GO
INSERT [dbo].[Servicios] ([Servicios_id], [Nombre]) VALUES (2, N'Restaurant')
GO
INSERT [dbo].[Servicios] ([Servicios_id], [Nombre]) VALUES (3, N'Minibar')
GO
INSERT [dbo].[Servicios] ([Servicios_id], [Nombre]) VALUES (4, N'billar')
GO
INSERT [dbo].[Servicios] ([Servicios_id], [Nombre]) VALUES (5, N'Piscina')
GO
INSERT [dbo].[StockMobiliario] ([StockMobiliario_id], [Mobiliario_id], [#Muebles]) VALUES (1, 1, 20)
GO
ALTER TABLE [dbo].[CargosXHabitacion]  WITH CHECK ADD FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[CargosXHabitacion]  WITH CHECK ADD FOREIGN KEY([Servicios_id])
REFERENCES [dbo].[Servicios] ([Servicios_id])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([Estado_id])
REFERENCES [dbo].[Estado] ([Estado_id])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([Municipio_id])
REFERENCES [dbo].[Municipio] ([Municipio_id])
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Empleado_id])
REFERENCES [dbo].[Empleado] ([Empleado_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Estado_id])
REFERENCES [dbo].[Estado] ([Estado_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Mobiliario_id])
REFERENCES [dbo].[Mobiliario] ([Mobiliario_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Municipio_id])
REFERENCES [dbo].[Municipio] ([Municipio_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Planta_id])
REFERENCES [dbo].[Planta] ([Planta_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Reservacion_id])
REFERENCES [dbo].[Reservacion] ([Reservacion_id])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([Servicios_id])
REFERENCES [dbo].[Servicios] ([Servicios_id])
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD FOREIGN KEY([Estado_id])
REFERENCES [dbo].[Estado] ([Estado_id])
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD FOREIGN KEY([Municipio_id])
REFERENCES [dbo].[Municipio] ([Municipio_id])
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([Estado_id])
REFERENCES [dbo].[Estado] ([Estado_id])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([Pais_id])
GO
ALTER TABLE [dbo].[Planta]  WITH CHECK ADD FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD FOREIGN KEY([Huesped_id])
REFERENCES [dbo].[Huesped] ([Huesped_id])
GO
ALTER TABLE [dbo].[StockMobiliario]  WITH CHECK ADD FOREIGN KEY([Mobiliario_id])
REFERENCES [dbo].[Mobiliario] ([Mobiliario_id])
GO
USE [master]
GO
ALTER DATABASE [UltimateAvanceHotel] SET  READ_WRITE 
GO
