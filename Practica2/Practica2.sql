USE [LBDPractica]
GO
/****** Object:  Index [INDX_Empleado_TipoEmpleado]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP INDEX IF EXISTS [INDX_Empleado_TipoEmpleado] ON [dbo].[Empleados]
GO
/****** Object:  Index [INDX_Empleado_NombreCompleto]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP INDEX IF EXISTS [INDX_Empleado_NombreCompleto] ON [dbo].[Empleados]
GO
/****** Object:  Index [INDX_Cliente_TipoCliente]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP INDEX IF EXISTS [INDX_Cliente_TipoCliente] ON [dbo].[Clientes]
GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP INDEX IF EXISTS [INDX_Cliente_NombreCompleto] ON [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Ubicacion]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Proveedores]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Clientes]
GO
USE [master]
GO
/****** Object:  Database [LBDPractica]    Script Date: 28/09/2019 01:57:41 p. m. ******/
DROP DATABASE IF EXISTS [LBDPractica]
GO
/****** Object:  Database [LBDPractica]    Script Date: 28/09/2019 01:57:41 p. m. ******/
CREATE DATABASE [LBDPractica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBDPractica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBDPractica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBDPractica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LBDPractica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LBDPractica] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBDPractica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBDPractica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBDPractica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBDPractica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBDPractica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBDPractica] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBDPractica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LBDPractica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBDPractica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBDPractica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBDPractica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBDPractica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBDPractica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBDPractica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBDPractica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBDPractica] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LBDPractica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBDPractica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBDPractica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBDPractica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBDPractica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBDPractica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBDPractica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBDPractica] SET RECOVERY FULL 
GO
ALTER DATABASE [LBDPractica] SET  MULTI_USER 
GO
ALTER DATABASE [LBDPractica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBDPractica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBDPractica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBDPractica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LBDPractica] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LBDPractica', N'ON'
GO
ALTER DATABASE [LBDPractica] SET QUERY_STORE = OFF
GO
USE [LBDPractica]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 28/09/2019 01:57:42 p. m. ******/
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
/****** Object:  Table [dbo].[Empleados]    Script Date: 28/09/2019 01:57:42 p. m. ******/
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
/****** Object:  Table [dbo].[Proveedores]    Script Date: 28/09/2019 01:57:42 p. m. ******/
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
/****** Object:  Table [dbo].[Servicios]    Script Date: 28/09/2019 01:57:42 p. m. ******/
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
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 28/09/2019 01:57:42 p. m. ******/
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
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 28/09/2019 01:57:42 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Cliente_NombreCompleto] ON [dbo].[Clientes]
(
	[NombreCompletoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [INDX_Cliente_TipoCliente]    Script Date: 28/09/2019 01:57:42 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Cliente_TipoCliente] ON [dbo].[Clientes]
(
	[TipoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [INDX_Empleado_NombreCompleto]    Script Date: 28/09/2019 01:57:42 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Empleado_NombreCompleto] ON [dbo].[Empleados]
(
	[NombreCompletoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [INDX_Empleado_TipoEmpleado]    Script Date: 28/09/2019 01:57:42 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Empleado_TipoEmpleado] ON [dbo].[Empleados]
(
	[TipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LBDPractica] SET  READ_WRITE 
GO
