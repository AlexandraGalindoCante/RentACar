USE [master]
GO
/****** Object:  Database [Rent a car]    Script Date: 19/05/2017 15:51:58 ******/
CREATE DATABASE [Rent a car]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rent a car', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Rent a car.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Rent a car_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Rent a car_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Rent a car] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rent a car].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rent a car] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rent a car] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rent a car] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rent a car] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rent a car] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rent a car] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rent a car] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rent a car] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rent a car] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rent a car] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rent a car] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rent a car] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rent a car] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rent a car] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rent a car] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Rent a car] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rent a car] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rent a car] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rent a car] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rent a car] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rent a car] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rent a car] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rent a car] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Rent a car] SET  MULTI_USER 
GO
ALTER DATABASE [Rent a car] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rent a car] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rent a car] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rent a car] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Rent a car] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Rent a car]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 19/05/2017 15:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precio_Hora] [float] NOT NULL,
	[precio_dia] [float] NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clasificacion_vehiculos]    Script Date: 19/05/2017 15:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clasificacion_vehiculos](
	[idcategoria] [int] NOT NULL,
	[idvehiculo] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 19/05/2017 15:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[documento] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gerente]    Script Date: 19/05/2017 15:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[gerente](
	[idGerente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[correo_electronico] [varchar](50) NOT NULL,
 CONSTRAINT [PK_gerente] PRIMARY KEY CLUSTERED 
(
	[idGerente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Poliza]    Script Date: 19/05/2017 15:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Poliza](
	[idPoliza] [int] IDENTITY(1,1) NOT NULL,
	[idVehiculo] [int] NOT NULL,
	[compañia_aseguradora] [varchar](50) NOT NULL,
	[vigencia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Poliza] PRIMARY KEY CLUSTERED 
(
	[idPoliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servicio]    Script Date: 19/05/2017 15:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Servicio](
	[idCliente] [int] NOT NULL,
	[idSucursal] [int] NULL,
	[idVehiculo] [int] NOT NULL,
	[fecha_hora_salida] [datetime] NOT NULL,
	[observaciones] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 19/05/2017 15:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Sucursal](
	[idSucursal] [int] IDENTITY(1,1) NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[correo_electronico] [varchar](50) NOT NULL,
	[pagina_web] [varchar](50) NOT NULL,
	[id_gerente] [int] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[idSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 19/05/2017 15:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Vehiculo](
	[idVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[placa] [varchar](50) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[linea] [varchar](50) NOT NULL,
	[modelo] [varchar](50) NOT NULL,
	[cilindraje_cc] [float] NOT NULL,
	[color] [varchar](50) NOT NULL,
	[servicio] [varchar](50) NOT NULL,
	[clase_vehiculo] [varchar](50) NOT NULL,
	[tipo_carroceria] [varchar](50) NOT NULL,
	[combustible] [varchar](50) NOT NULL,
	[capacidad] [varchar](50) NOT NULL,
	[num_motor] [varchar](50) NOT NULL,
	[vin] [varchar](50) NOT NULL,
	[num_serie] [varchar](50) NOT NULL,
	[num_chasis] [varchar](50) NOT NULL,
	[propietario] [varchar](50) NOT NULL,
	[doc_propietario] [varchar](50) NOT NULL,
	[precio_compra] [float] NOT NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[idVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [IX_Clasificacion_vehiculos]    Script Date: 19/05/2017 15:51:59 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Clasificacion_vehiculos] ON [dbo].[Clasificacion_vehiculos]
(
	[idvehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Poliza]    Script Date: 19/05/2017 15:51:59 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Poliza] ON [dbo].[Poliza]
(
	[idVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Sucursal]    Script Date: 19/05/2017 15:51:59 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Sucursal] ON [dbo].[Sucursal]
(
	[id_gerente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clasificacion_vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Clasificacion_vehiculos_Categoria] FOREIGN KEY([idcategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Clasificacion_vehiculos] CHECK CONSTRAINT [FK_Clasificacion_vehiculos_Categoria]
GO
ALTER TABLE [dbo].[Clasificacion_vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_Clasificacion_vehiculos_Vehiculo] FOREIGN KEY([idvehiculo])
REFERENCES [dbo].[Vehiculo] ([idVehiculo])
GO
ALTER TABLE [dbo].[Clasificacion_vehiculos] CHECK CONSTRAINT [FK_Clasificacion_vehiculos_Vehiculo]
GO
ALTER TABLE [dbo].[Poliza]  WITH CHECK ADD  CONSTRAINT [FK_Poliza_Vehiculo] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[Vehiculo] ([idVehiculo])
GO
ALTER TABLE [dbo].[Poliza] CHECK CONSTRAINT [FK_Poliza_Vehiculo]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Cliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Cliente] ([idcliente])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Cliente]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Sucursal] FOREIGN KEY([idSucursal])
REFERENCES [dbo].[Sucursal] ([idSucursal])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Sucursal]
GO
ALTER TABLE [dbo].[Servicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio_Vehiculo] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[Vehiculo] ([idVehiculo])
GO
ALTER TABLE [dbo].[Servicio] CHECK CONSTRAINT [FK_Servicio_Vehiculo]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_gerente] FOREIGN KEY([id_gerente])
REFERENCES [dbo].[gerente] ([idGerente])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_gerente]
GO
/****** Object:  StoredProcedure [dbo].[registrarAprendiz]    Script Date: 19/05/2017 15:51:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[registrarAprendiz]( @placa varchar(40),@marca varchar(40),@linea varchar(40),@modelo varchar(40),@cilindraje_cc float,
@color varchar(40),@servicio varchar(40),@clase_vehiculo varchar(40),@tipo_carroceria varchar(40),@combustible varchar(40),
@capacidad varchar(40),@num_motor varchar(40),@vin varchar(40),@num_serie varchar(40),@num_chasis varchar(40),
@propietario varchar(40),@doc_propietario varchar(40),@precio_compra float)
AS
BEGIN
INSERT INTO Vehiculo values (@placa,@marca,@linea,@modelo,@cilindraje_cc,@color,@servicio,@clase_vehiculo,@tipo_carroceria,@combustible,
@capacidad,@num_motor,@vin,@num_serie,@num_chasis,@propietario,@doc_propietario,@precio_compra)
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'id unico de la categoria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categoria'
GO
USE [master]
GO
ALTER DATABASE [Rent a car] SET  READ_WRITE 
GO


