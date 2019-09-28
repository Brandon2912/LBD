USE [LBDPractica2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT IF EXISTS [FK_Ubicacion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT IF EXISTS [FK_Habitacion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT IF EXISTS [FK_Cliente]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recibo]') AND type in (N'U'))
ALTER TABLE [dbo].[Recibo] DROP CONSTRAINT IF EXISTS [FK_Servicio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recibo]') AND type in (N'U'))
ALTER TABLE [dbo].[Recibo] DROP CONSTRAINT IF EXISTS [FK_Recervacion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK_UbicacionHotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK_ServicioHotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK_ProveedorHotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK_HabitacionHotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK_EmpleadoHotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT IF EXISTS [FK_TipoHabitacion]
GO
/****** Object:  Index [unique_UbicacionId]    Script Date: 28/09/2019 01:54:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ubicacion]') AND type in (N'U'))
ALTER TABLE [dbo].[Ubicacion] DROP CONSTRAINT IF EXISTS [unique_UbicacionId]
GO
/****** Object:  Index [unique_TipoHabitacionId]    Script Date: 28/09/2019 01:54:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoHabitacion]') AND type in (N'U'))
ALTER TABLE [dbo].[TipoHabitacion] DROP CONSTRAINT IF EXISTS [unique_TipoHabitacionId]
GO
/****** Object:  Index [unique_ServicioId]    Script Date: 28/09/2019 01:54:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicios]') AND type in (N'U'))
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT IF EXISTS [unique_ServicioId]
GO
/****** Object:  Index [unique_ReservacionId]    Script Date: 28/09/2019 01:54:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservacion]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservacion] DROP CONSTRAINT IF EXISTS [unique_ReservacionId]
GO
/****** Object:  Index [unique_ReciboId]    Script Date: 28/09/2019 01:54:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Recibo]') AND type in (N'U'))
ALTER TABLE [dbo].[Recibo] DROP CONSTRAINT IF EXISTS [unique_ReciboId]
GO
/****** Object:  Index [unique_ProveedorId]    Script Date: 28/09/2019 01:54:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proveedores]') AND type in (N'U'))
ALTER TABLE [dbo].[Proveedores] DROP CONSTRAINT IF EXISTS [unique_ProveedorId]
GO
/****** Object:  Index [unique_HabitacionId]    Script Date: 28/09/2019 01:54:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitacion]') AND type in (N'U'))
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT IF EXISTS [unique_HabitacionId]
GO
/****** Object:  Index [INDX_Empleado_TipoEmpleado]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP INDEX IF EXISTS [INDX_Empleado_TipoEmpleado] ON [dbo].[Empleados]
GO
/****** Object:  Index [INDX_Empleado_NombreCompleto]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP INDEX IF EXISTS [INDX_Empleado_NombreCompleto] ON [dbo].[Empleados]
GO
/****** Object:  Index [unique_EmpleadoId]    Script Date: 28/09/2019 01:54:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT IF EXISTS [unique_EmpleadoId]
GO
/****** Object:  Index [INDX_Cliente_TipoCliente]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP INDEX IF EXISTS [INDX_Cliente_TipoCliente] ON [dbo].[Clientes]
GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP INDEX IF EXISTS [INDX_Cliente_NombreCompleto] ON [dbo].[Clientes]
GO
/****** Object:  Index [unique_ClienteId]    Script Date: 28/09/2019 01:54:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT IF EXISTS [unique_ClienteId]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Ubicacion]
GO
/****** Object:  Table [dbo].[TipoHabitacion]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[TipoHabitacion]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Reservacion]
GO
/****** Object:  Table [dbo].[Recibo]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Recibo]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Clientes]
GO
USE [master]
GO
/****** Object:  Database [LBDPractica2]    Script Date: 28/09/2019 01:54:09 p. m. ******/
DROP DATABASE IF EXISTS [LBDPractica2]
GO
/****** Object:  Database [LBDPractica2]    Script Date: 28/09/2019 01:54:09 p. m. ******/
CREATE DATABASE [LBDPractica2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBDPractica2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBDPractica2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBDPractica2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBDPractica2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LBDPractica2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBDPractica2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBDPractica2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBDPractica2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBDPractica2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBDPractica2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBDPractica2] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBDPractica2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LBDPractica2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBDPractica2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBDPractica2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBDPractica2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBDPractica2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBDPractica2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBDPractica2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBDPractica2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBDPractica2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LBDPractica2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBDPractica2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBDPractica2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBDPractica2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBDPractica2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBDPractica2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBDPractica2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBDPractica2] SET RECOVERY FULL 
GO
ALTER DATABASE [LBDPractica2] SET  MULTI_USER 
GO
ALTER DATABASE [LBDPractica2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBDPractica2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBDPractica2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBDPractica2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LBDPractica2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LBDPractica2', N'ON'
GO
ALTER DATABASE [LBDPractica2] SET QUERY_STORE = OFF
GO
USE [LBDPractica2]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cliente_id] [int] NOT NULL,
	[NombreCliente] [varchar](255) NOT NULL,
	[ApellidoPaternoCliente] [varchar](50) NOT NULL,
	[ApellidoMaternoCliente] [varchar](50) NOT NULL,
	[NombreCompletoCliente]  AS (((([NombreCliente]+'')+[ApellidoPaternoCliente])+'')+[ApellidoMaternoCliente]),
	[TipoCliente] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Empleado_id] [int] NOT NULL,
	[NombreEmpleado] [varchar](255) NOT NULL,
	[ApellidoPaternoEmpleado] [varchar](50) NOT NULL,
	[ApellidoMaternoEmpleado] [varchar](50) NOT NULL,
	[NombreCompletoEmpleado]  AS (((([NombreEmpleado]+'')+[ApellidoPaternoEmpleado])+'')+[ApellidoMaternoEmpleado]),
	[TipoEmpleado] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[Habitacion_id] [int] NOT NULL,
	[TipoHabitacion_id] [int] NOT NULL,
	[PisoHabitacion] [int] NOT NULL,
	[EstatusHabitacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Habitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[Empleado_id] [int] NOT NULL,
	[Habitacion_id] [int] NOT NULL,
	[Servicio_id] [int] NOT NULL,
	[Ubicacion_id] [int] NOT NULL,
	[Proveedor_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Proveedor_id] [int] NOT NULL,
	[NombreProveedor] [nvarchar](60) NOT NULL,
	[Telefono] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Proveedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recibo]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recibo](
	[Recibo_id] [int] NOT NULL,
	[Servicio_id] [int] NOT NULL,
	[Reservacion_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Recibo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservacion]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservacion](
	[Reservacion_id] [int] NOT NULL,
	[Ubicacion_id] [int] NOT NULL,
	[Habitacion_id] [int] NOT NULL,
	[Cliente_id] [int] NOT NULL,
	[TiempoReservacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Reservacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicio_id] [int] NOT NULL,
	[NombreServicio] [nvarchar](50) NULL,
	[CostoServicio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Servicio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoHabitacion]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoHabitacion](
	[TipoHabitacion_id] [int] NOT NULL,
	[NombreTipo] [nvarchar](50) NOT NULL,
	[PrecioHabitacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoHabitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 28/09/2019 01:54:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[Ubicacion_id] [int] NOT NULL,
	[Pais] [nvarchar](50) NOT NULL,
	[Lugar] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Ubicacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [unique_ClienteId]    Script Date: 28/09/2019 01:54:10 p. m. ******/
ALTER TABLE [dbo].[Clientes] ADD  CONSTRAINT [unique_ClienteId] UNIQUE NONCLUSTERED 
(
	[Cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 28/09/2019 01:54:10 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Cliente_NombreCompleto] ON [dbo].[Clientes]
(
	[NombreCompletoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [INDX_Cliente_TipoCliente]    Script Date: 28/09/2019 01:54:10 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Cliente_TipoCliente] ON [dbo].[Clientes]
(
	[TipoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_EmpleadoId]    Script Date: 28/09/2019 01:54:10 p. m. ******/
ALTER TABLE [dbo].[Empleados] ADD  CONSTRAINT [unique_EmpleadoId] UNIQUE NONCLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [INDX_Empleado_NombreCompleto]    Script Date: 28/09/2019 01:54:10 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Empleado_NombreCompleto] ON [dbo].[Empleados]
(
	[NombreCompletoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [INDX_Empleado_TipoEmpleado]    Script Date: 28/09/2019 01:54:10 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Empleado_TipoEmpleado] ON [dbo].[Empleados]
(
	[TipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_HabitacionId]    Script Date: 28/09/2019 01:54:10 p. m. ******/
ALTER TABLE [dbo].[Habitacion] ADD  CONSTRAINT [unique_HabitacionId] UNIQUE NONCLUSTERED 
(
	[Habitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_ProveedorId]    Script Date: 28/09/2019 01:54:10 p. m. ******/
ALTER TABLE [dbo].[Proveedores] ADD  CONSTRAINT [unique_ProveedorId] UNIQUE NONCLUSTERED 
(
	[Proveedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_ReciboId]    Script Date: 28/09/2019 01:54:10 p. m. ******/
ALTER TABLE [dbo].[Recibo] ADD  CONSTRAINT [unique_ReciboId] UNIQUE NONCLUSTERED 
(
	[Recibo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_ReservacionId]    Script Date: 28/09/2019 01:54:10 p. m. ******/
ALTER TABLE [dbo].[Reservacion] ADD  CONSTRAINT [unique_ReservacionId] UNIQUE NONCLUSTERED 
(
	[Reservacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_ServicioId]    Script Date: 28/09/2019 01:54:10 p. m. ******/
ALTER TABLE [dbo].[Servicios] ADD  CONSTRAINT [unique_ServicioId] UNIQUE NONCLUSTERED 
(
	[Servicio_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_TipoHabitacionId]    Script Date: 28/09/2019 01:54:10 p. m. ******/
ALTER TABLE [dbo].[TipoHabitacion] ADD  CONSTRAINT [unique_TipoHabitacionId] UNIQUE NONCLUSTERED 
(
	[TipoHabitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [unique_UbicacionId]    Script Date: 28/09/2019 01:54:10 p. m. ******/
ALTER TABLE [dbo].[Ubicacion] ADD  CONSTRAINT [unique_UbicacionId] UNIQUE NONCLUSTERED 
(
	[Ubicacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_TipoHabitacion] FOREIGN KEY([TipoHabitacion_id])
REFERENCES [dbo].[TipoHabitacion] ([TipoHabitacion_id])
GO
ALTER TABLE [dbo].[Habitacion] CHECK CONSTRAINT [FK_TipoHabitacion]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_EmpleadoHotel] FOREIGN KEY([Empleado_id])
REFERENCES [dbo].[Empleados] ([Empleado_id])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_EmpleadoHotel]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_HabitacionHotel] FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_HabitacionHotel]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_ProveedorHotel] FOREIGN KEY([Proveedor_id])
REFERENCES [dbo].[Proveedores] ([Proveedor_id])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_ProveedorHotel]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_ServicioHotel] FOREIGN KEY([Servicio_id])
REFERENCES [dbo].[Servicios] ([Servicio_id])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_ServicioHotel]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_UbicacionHotel] FOREIGN KEY([Ubicacion_id])
REFERENCES [dbo].[Ubicacion] ([Ubicacion_id])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_UbicacionHotel]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [FK_Recervacion] FOREIGN KEY([Reservacion_id])
REFERENCES [dbo].[Reservacion] ([Reservacion_id])
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [FK_Recervacion]
GO
ALTER TABLE [dbo].[Recibo]  WITH CHECK ADD  CONSTRAINT [FK_Servicio] FOREIGN KEY([Servicio_id])
REFERENCES [dbo].[Servicios] ([Servicio_id])
GO
ALTER TABLE [dbo].[Recibo] CHECK CONSTRAINT [FK_Servicio]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_Cliente] FOREIGN KEY([Cliente_id])
REFERENCES [dbo].[Clientes] ([Cliente_id])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [FK_Cliente]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion] FOREIGN KEY([Habitacion_id])
REFERENCES [dbo].[Habitacion] ([Habitacion_id])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [FK_Habitacion]
GO
ALTER TABLE [dbo].[Reservacion]  WITH CHECK ADD  CONSTRAINT [FK_Ubicacion] FOREIGN KEY([Ubicacion_id])
REFERENCES [dbo].[Ubicacion] ([Ubicacion_id])
GO
ALTER TABLE [dbo].[Reservacion] CHECK CONSTRAINT [FK_Ubicacion]
GO
USE [master]
GO
ALTER DATABASE [LBDPractica2] SET  READ_WRITE 
GO
