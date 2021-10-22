USE [master]
GO
/****** Object:  Database [EscapeMath]    Script Date: 22/10/2021 10:35:23 a. m. ******/
CREATE DATABASE [EscapeMath]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EscapeMath', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EscapeMath.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EscapeMath_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EscapeMath_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EscapeMath] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EscapeMath].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EscapeMath] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EscapeMath] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EscapeMath] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EscapeMath] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EscapeMath] SET ARITHABORT OFF 
GO
ALTER DATABASE [EscapeMath] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EscapeMath] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EscapeMath] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EscapeMath] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EscapeMath] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EscapeMath] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EscapeMath] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EscapeMath] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EscapeMath] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EscapeMath] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EscapeMath] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EscapeMath] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EscapeMath] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EscapeMath] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EscapeMath] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EscapeMath] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EscapeMath] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EscapeMath] SET RECOVERY FULL 
GO
ALTER DATABASE [EscapeMath] SET  MULTI_USER 
GO
ALTER DATABASE [EscapeMath] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EscapeMath] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EscapeMath] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EscapeMath] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EscapeMath] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EscapeMath', N'ON'
GO
ALTER DATABASE [EscapeMath] SET QUERY_STORE = OFF
GO
USE [EscapeMath]
GO
/****** Object:  Table [dbo].[tCategoria]    Script Date: 22/10/2021 10:35:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCategoria](
	[idCategoria] [int] NOT NULL,
	[Nombre_Categoria] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_idCategoria] PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDetalleVenta]    Script Date: 22/10/2021 10:35:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDetalleVenta](
	[idDetalleVenta] [bigint] NOT NULL,
	[idventa] [bigint] NOT NULL,
	[idrangos] [int] NOT NULL,
	[catidad] [bigint] NOT NULL,
 CONSTRAINT [PK_idDetalleVenta] PRIMARY KEY CLUSTERED 
(
	[idDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tPost]    Script Date: 22/10/2021 10:35:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPost](
	[idPost] [int] NOT NULL,
	[Nombre_post] [nvarchar](50) NOT NULL,
	[Contenido_post] [nvarchar](200) NOT NULL,
	[idCategoria] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
 CONSTRAINT [PK_idpost] PRIMARY KEY CLUSTERED 
(
	[idPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tRangos]    Script Date: 22/10/2021 10:35:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tRangos](
	[idRangos] [int] NOT NULL,
	[Nombre_rangos] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_idRangos] PRIMARY KEY CLUSTERED 
(
	[idRangos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tTarjeta]    Script Date: 22/10/2021 10:35:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tTarjeta](
	[idTarjeta] [bigint] NOT NULL,
	[Ccv_tarjeta] [int] NOT NULL,
	[fecha_vencimiento] [date] NOT NULL,
	[idCliente] [int] NOT NULL,
 CONSTRAINT [PK_idTarjeta] PRIMARY KEY CLUSTERED 
(
	[idTarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUsuarios]    Script Date: 22/10/2021 10:35:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUsuarios](
	[idCliente] [int] NOT NULL,
	[Nombre_cliente] [nvarchar](50) NOT NULL,
	[apellidos_cliente] [nvarchar](50) NOT NULL,
	[Telefono] [bigint] NOT NULL,
	[correo] [nvarchar](50) NOT NULL,
	[idRangos] [int] NOT NULL,
 CONSTRAINT [PK_idCliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tVenta]    Script Date: 22/10/2021 10:35:23 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tVenta](
	[idVenta] [bigint] NOT NULL,
	[Fecha_venta] [date] NOT NULL,
	[Total] [bigint] NOT NULL,
 CONSTRAINT [PK_idVenta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tCategoria] ([idCategoria], [Nombre_Categoria]) VALUES (501, N'asertijos')
INSERT [dbo].[tCategoria] ([idCategoria], [Nombre_Categoria]) VALUES (502, N'preguntas')
INSERT [dbo].[tCategoria] ([idCategoria], [Nombre_Categoria]) VALUES (503, N'dinamico')
INSERT [dbo].[tCategoria] ([idCategoria], [Nombre_Categoria]) VALUES (504, N'dibujo ')
INSERT [dbo].[tCategoria] ([idCategoria], [Nombre_Categoria]) VALUES (505, N'imajinacion')
INSERT [dbo].[tDetalleVenta] ([idDetalleVenta], [idventa], [idrangos], [catidad]) VALUES (701, 601, 301, 10)
INSERT [dbo].[tDetalleVenta] ([idDetalleVenta], [idventa], [idrangos], [catidad]) VALUES (702, 602, 302, 20)
INSERT [dbo].[tDetalleVenta] ([idDetalleVenta], [idventa], [idrangos], [catidad]) VALUES (703, 603, 303, 20)
INSERT [dbo].[tDetalleVenta] ([idDetalleVenta], [idventa], [idrangos], [catidad]) VALUES (704, 604, 304, 15)
INSERT [dbo].[tDetalleVenta] ([idDetalleVenta], [idventa], [idrangos], [catidad]) VALUES (705, 605, 305, 15)
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente]) VALUES (401, N'español', N'preguntas', 501, 101)
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente]) VALUES (402, N'ingles', N'preguntas', 502, 102)
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente]) VALUES (403, N'español', N'preguntas', 503, 103)
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente]) VALUES (404, N'ingles', N'preguntas', 504, 104)
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente]) VALUES (405, N'francel', N'preguntas', 505, 105)
INSERT [dbo].[tRangos] ([idRangos], [Nombre_rangos]) VALUES (301, N'oro')
INSERT [dbo].[tRangos] ([idRangos], [Nombre_rangos]) VALUES (302, N'bronce')
INSERT [dbo].[tRangos] ([idRangos], [Nombre_rangos]) VALUES (303, N'diamante')
INSERT [dbo].[tRangos] ([idRangos], [Nombre_rangos]) VALUES (304, N'oro')
INSERT [dbo].[tRangos] ([idRangos], [Nombre_rangos]) VALUES (305, N'oro')
INSERT [dbo].[tTarjeta] ([idTarjeta], [Ccv_tarjeta], [fecha_vencimiento], [idCliente]) VALUES (4927846574857253, 123, CAST(N'2021-10-02' AS Date), 101)
INSERT [dbo].[tTarjeta] ([idTarjeta], [Ccv_tarjeta], [fecha_vencimiento], [idCliente]) VALUES (4927846574857254, 456, CAST(N'2021-12-02' AS Date), 102)
INSERT [dbo].[tTarjeta] ([idTarjeta], [Ccv_tarjeta], [fecha_vencimiento], [idCliente]) VALUES (4927846574857255, 789, CAST(N'2021-01-02' AS Date), 103)
INSERT [dbo].[tTarjeta] ([idTarjeta], [Ccv_tarjeta], [fecha_vencimiento], [idCliente]) VALUES (4927846574857256, 159, CAST(N'2021-02-02' AS Date), 104)
INSERT [dbo].[tTarjeta] ([idTarjeta], [Ccv_tarjeta], [fecha_vencimiento], [idCliente]) VALUES (4927846574857257, 357, CAST(N'2021-09-02' AS Date), 105)
INSERT [dbo].[tUsuarios] ([idCliente], [Nombre_cliente], [apellidos_cliente], [Telefono], [correo], [idRangos]) VALUES (101, N'jose', N'fernandez', 3134727962, N'jose@gmail.com', 301)
INSERT [dbo].[tUsuarios] ([idCliente], [Nombre_cliente], [apellidos_cliente], [Telefono], [correo], [idRangos]) VALUES (102, N'maria', N'rosa', 31365627962, N'maria@gmail.com', 302)
INSERT [dbo].[tUsuarios] ([idCliente], [Nombre_cliente], [apellidos_cliente], [Telefono], [correo], [idRangos]) VALUES (103, N'duvan', N'filipo', 313631327962, N'duvan@gmail.com', 303)
INSERT [dbo].[tUsuarios] ([idCliente], [Nombre_cliente], [apellidos_cliente], [Telefono], [correo], [idRangos]) VALUES (104, N'olga', N'hernandez', 313333212127962, N'olga@gmail.com', 304)
INSERT [dbo].[tUsuarios] ([idCliente], [Nombre_cliente], [apellidos_cliente], [Telefono], [correo], [idRangos]) VALUES (105, N'dario', N'lucero', 313622222262, N'dario@gmail.com', 305)
INSERT [dbo].[tVenta] ([idVenta], [Fecha_venta], [Total]) VALUES (601, CAST(N'2020-09-21' AS Date), 150000)
INSERT [dbo].[tVenta] ([idVenta], [Fecha_venta], [Total]) VALUES (602, CAST(N'2018-02-21' AS Date), 200000)
INSERT [dbo].[tVenta] ([idVenta], [Fecha_venta], [Total]) VALUES (603, CAST(N'2019-08-21' AS Date), 250000)
INSERT [dbo].[tVenta] ([idVenta], [Fecha_venta], [Total]) VALUES (604, CAST(N'2015-04-21' AS Date), 100000)
INSERT [dbo].[tVenta] ([idVenta], [Fecha_venta], [Total]) VALUES (605, CAST(N'2018-06-21' AS Date), 105000)
ALTER TABLE [dbo].[tDetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta] FOREIGN KEY([idventa])
REFERENCES [dbo].[tVenta] ([idVenta])
GO
ALTER TABLE [dbo].[tDetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta]
GO
ALTER TABLE [dbo].[tDetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta2] FOREIGN KEY([idrangos])
REFERENCES [dbo].[tRangos] ([idRangos])
GO
ALTER TABLE [dbo].[tDetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta2]
GO
ALTER TABLE [dbo].[tPost]  WITH CHECK ADD  CONSTRAINT [FK_tPost] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[tCategoria] ([idCategoria])
GO
ALTER TABLE [dbo].[tPost] CHECK CONSTRAINT [FK_tPost]
GO
ALTER TABLE [dbo].[tPost]  WITH CHECK ADD  CONSTRAINT [FK_tPost2] FOREIGN KEY([idCliente])
REFERENCES [dbo].[tUsuarios] ([idCliente])
GO
ALTER TABLE [dbo].[tPost] CHECK CONSTRAINT [FK_tPost2]
GO
ALTER TABLE [dbo].[tTarjeta]  WITH CHECK ADD  CONSTRAINT [FK_tTarjeta] FOREIGN KEY([idCliente])
REFERENCES [dbo].[tUsuarios] ([idCliente])
GO
ALTER TABLE [dbo].[tTarjeta] CHECK CONSTRAINT [FK_tTarjeta]
GO
ALTER TABLE [dbo].[tUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tUsuarios] FOREIGN KEY([idRangos])
REFERENCES [dbo].[tRangos] ([idRangos])
GO
ALTER TABLE [dbo].[tUsuarios] CHECK CONSTRAINT [FK_tUsuarios]
GO
USE [master]
GO
ALTER DATABASE [EscapeMath] SET  READ_WRITE 
GO
