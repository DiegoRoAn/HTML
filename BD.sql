USE [master]
GO
/****** Object:  Database [EscapeMath]    Script Date: 3/11/2021 10:48:59 p. m. ******/
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
/****** Object:  Table [dbo].[tCategoria]    Script Date: 3/11/2021 10:48:59 p. m. ******/
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
/****** Object:  Table [dbo].[tDetalleVenta]    Script Date: 3/11/2021 10:48:59 p. m. ******/
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
/****** Object:  Table [dbo].[tPost]    Script Date: 3/11/2021 10:48:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tPost](
	[idPost] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_post] [nvarchar](50) NOT NULL,
	[Contenido_post] [nvarchar](200) NOT NULL,
	[idCategoria] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [PK_tPost] PRIMARY KEY CLUSTERED 
(
	[idPost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tRangos]    Script Date: 3/11/2021 10:48:59 p. m. ******/
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
/****** Object:  Table [dbo].[tTarjeta]    Script Date: 3/11/2021 10:48:59 p. m. ******/
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
/****** Object:  Table [dbo].[tUsuarios]    Script Date: 3/11/2021 10:48:59 p. m. ******/
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
/****** Object:  Table [dbo].[tVenta]    Script Date: 3/11/2021 10:48:59 p. m. ******/
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
SET IDENTITY_INSERT [dbo].[tPost] ON 

INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (1, N'El juego es increible', N'Me gusta que el juego me permite poder avanzar segun mis conocimientos, me gustan la interfaz y los personajes tan unicos ', 501, 101, CAST(N'2021-11-02' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (2, N'no me gusta', N'no me gusta puesto a la hora de comprar un pase se demora en activarce', 502, 102, CAST(N'2021-02-21' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (3, N'es pasable', N'me gusta pero a la ves no me gusta le flata mas desarrollo ', 503, 103, CAST(N'2021-05-15' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (4, N'El juego es increible', N'me gusta es muy interactivo y muy dinamico ', 504, 104, CAST(N'2021-08-14' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (5, N'El juego es increible', N'me gusta mucho la manerea de comprar los pases de batalla es muy facil y rapido  ', 505, 105, CAST(N'2021-04-04' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (6, N'falta informacion ', N'me gutsa el juego pero siento qeu falta historia y modos de juegos ', 502, 102, CAST(N'2021-10-21' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (7, N'pases de batalla', N'falta informacion sobre que adquiri ', 502, 102, CAST(N'2021-03-21' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (8, N'El juego es increible', N'me gusta mucho todo del juego no tengo quejas ', 502, 102, CAST(N'2021-09-29' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (9, N'hay mejores', N'es una copia de otro juego ', 502, 102, CAST(N'2021-03-30' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (10, N'divino', N'me gusto mucho no tego quejas mas que agradecer por el gran trabajo de los programadores', 502, 102, CAST(N'2021-02-21' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (11, N'Es divertido', N'Me encanta ver como mi hijo se divierte tanto jugando esto, definitivamente es lo mejor!', 502, 102, CAST(N'2021-06-18' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (12, N'BUG!', N'Cuando estas en el nivel 12 se traba y te cierra el juego', 502, 102, CAST(N'2021-06-18' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (13, N'Hay un HACKER', N'Sin necesidad de resolver los acertijos el jugador KillerBean564 navegaba por todos los niveles', 502, 102, CAST(N'2021-06-18' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (14, N'Desarrollo de juego', N'Hay partes que le falta el desarrollo, se nota que aun hay muchas fallas', 502, 102, CAST(N'2021-06-18' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (15, N'Post de prueba', N'Quiero ver si agrega mi post y salgo en la seccion de foro :D', 502, 102, CAST(N'2021-06-18' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (16, N'Yupi', N'Llegue super lejos en el nivel 21', 502, 102, CAST(N'2021-06-18' AS Date))
INSERT [dbo].[tPost] ([idPost], [Nombre_post], [Contenido_post], [idCategoria], [idCliente], [fecha]) VALUES (17, N'Mi primer Post bt: Firulaais564', N'Me gustaria conocer amigos y que me ayuden a jugar mejor', 502, 102, CAST(N'2021-06-18' AS Date))
SET IDENTITY_INSERT [dbo].[tPost] OFF
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_POST]    Script Date: 3/11/2021 10:48:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_INSERTAR_POST]
	@Nombre_post nvarchar (50),
	@Contenido_post nvarchar (200)
AS
BEGIN

	SET NOCOUNT ON;
	declare @ID NVARCHAR(128)
	declare @TB_resultado Table (
	Codigo NVARCHAR (1) null,
	resultado varchar (250) null
	)
	INSERT INTO tPost (Nombre_post, Contenido_post,idCategoria,idCliente,fecha) values (@Nombre_post, @Contenido_post, 502, 102, '2021/06/18')
	set @ID = @@IDENTITY

	if (@ID>0)
		begin 
			insert into @TB_resultado values ('1','Se ha ingresado la informacion')
		end
	else 
		begin
			insert into @TB_resultado values ('-1@','NO SE HA INGRESADO EL REGISTRO')
		end
	select Codigo, resultado FROm @TB_resultado
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTAR_POST]    Script Date: 3/11/2021 10:48:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_LISTAR_POST]

AS
BEGIN

	SET NOCOUNT ON;
	SELECT idPost, Nombre_post, Contenido_post, fecha from tPost order by idPost desc
END
GO
USE [master]
GO
ALTER DATABASE [EscapeMath] SET  READ_WRITE 
GO
