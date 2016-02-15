USE [master]
GO
/****** Object:  Database [Inmobiliaria]    Script Date: 15/02/2016 22:04:36 ******/
CREATE DATABASE [Inmobiliaria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Inmobiliaria', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Inmobiliaria.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Inmobiliaria_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Inmobiliaria_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Inmobiliaria] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Inmobiliaria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Inmobiliaria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Inmobiliaria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Inmobiliaria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Inmobiliaria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Inmobiliaria] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Inmobiliaria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Inmobiliaria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Inmobiliaria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Inmobiliaria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Inmobiliaria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Inmobiliaria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Inmobiliaria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Inmobiliaria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Inmobiliaria] SET  MULTI_USER 
GO
ALTER DATABASE [Inmobiliaria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Inmobiliaria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Inmobiliaria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Inmobiliaria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Inmobiliaria]
GO
/****** Object:  Table [dbo].[Edificios]    Script Date: 15/02/2016 22:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Edificios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo_via] [nvarchar](20) NOT NULL,
	[nombre_via] [nvarchar](50) NOT NULL,
	[numero_via] [int] NOT NULL,
	[piso] [int] NOT NULL,
	[letra_piso] [char](5) NOT NULL,
	[cp] [int] NOT NULL,
	[pais] [nvarchar](30) NOT NULL,
	[ciudad] [nvarchar](30) NOT NULL,
	[localidad] [nvarchar](30) NOT NULL,
	[precio] [money] NOT NULL,
	[n_habs] [int] NOT NULL,
	[n_banios] [int] NOT NULL,
	[superficie] [nvarchar](15) NOT NULL,
	[ascensor] [bit] NOT NULL,
	[parking] [bit] NOT NULL,
	[amueblado] [bit] NOT NULL,
	[terraza] [bit] NOT NULL,
	[calefaccion] [bit] NOT NULL,
	[piscina] [bit] NOT NULL,
	[jardin] [bit] NOT NULL,
	[trastero] [bit] NOT NULL,
	[estado] [nvarchar](20) NOT NULL,
	[tipo] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Edificios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Favoritos]    Script Date: 15/02/2016 22:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favoritos](
	[id_edificio] [int] NOT NULL,
	[nombre_usuario] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Favoritos] PRIMARY KEY CLUSTERED 
(
	[id_edificio] ASC,
	[nombre_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fotos]    Script Date: 15/02/2016 22:04:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fotos](
	[uri] [int] NOT NULL,
	[id_edificio] [int] NOT NULL,
 CONSTRAINT [PK_Fotos] PRIMARY KEY CLUSTERED 
(
	[uri] ASC,
	[id_edificio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Edificios] ON 

INSERT [dbo].[Edificios] ([id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo]) VALUES (5, N'Calle               ', N'Pasquín                                           ', 18, 2, N'D    ', 11002, N'España                        ', N'Cádiz                         ', N'Cádiz                         ', 1210000.0000, 4, 1, N'7000           ', 0, 0, 1, 1, 1, 1, 0, 0, N'A reformar          ', N'Apartamento         ')
INSERT [dbo].[Edificios] ([id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo]) VALUES (6, N'Plaza               ', N'Sagasta                                           ', 22, 4, N'F    ', 10012, N'España                        ', N'Madrid                        ', N'Madrid                        ', 120.0000, 6, 2, N'10000          ', 1, 1, 1, 1, 1, 0, 0, 1, N'Reformado           ', N'Piso                ')
INSERT [dbo].[Edificios] ([id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo]) VALUES (7, N'Avenida             ', N'Sacramento                                        ', 12, 1, N'R    ', 12189, N'España                        ', N'Segovia                       ', N'Segovia                       ', 500.0000, 3, 2, N'12000          ', 0, 1, 1, 0, 0, 0, 0, 0, N'Reformado           ', N'Dúplex              ')
INSERT [dbo].[Edificios] ([id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo]) VALUES (8, N'Bulevar             ', N'Mina                                              ', 13, 78, N'N    ', 13479, N'España                        ', N'Salamanca                     ', N'Salamanca                     ', 300.0000, 6, 3, N'20000          ', 1, 1, 1, 1, 1, 1, 1, 1, N'Reformado           ', N'Chalet              ')
INSERT [dbo].[Edificios] ([id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo]) VALUES (9, N'Avenida             ', N'Reyes Católicos                                   ', 22, 99, N'A    ', 10023, N'España                        ', N'Barcelona                     ', N'Barcelona                     ', 658.0000, 7, 4, N'50000          ', 1, 1, 1, 1, 1, 1, 1, 1, N'Reformado           ', N'Apartamento         ')
INSERT [dbo].[Edificios] ([id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo]) VALUES (10, N'Paseo               ', N'Candelaria                                        ', 54, 85, N'U    ', 13841, N'España                        ', N'Lugo                          ', N'Lugo                          ', 237.0000, 4, 2, N'24351          ', 1, 1, 0, 1, 0, 1, 0, 1, N'Reformado           ', N'Estudio             ')
INSERT [dbo].[Edificios] ([id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo]) VALUES (11, N'Calle               ', N'Pelota                                            ', 64, 2, N'B    ', 31479, N'España                        ', N'Sevilla                       ', N'Sevilla                       ', 239.0000, 2, 5, N'78241          ', 1, 0, 1, 0, 1, 0, 0, 1, N'Reformado           ', N'Planta baja         ')
INSERT [dbo].[Edificios] ([id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo]) VALUES (12, N'Bulevar             ', N'San Antonio                                       ', 27, 6, N'C    ', 34275, N'España                        ', N'Granada                       ', N'Granada                       ', 372.0000, 5, 2, N'24245          ', 1, 1, 1, 1, 0, 0, 0, 0, N'Reformado           ', N'Dúplex              ')
INSERT [dbo].[Edificios] ([id], [tipo_via], [nombre_via], [numero_via], [piso], [letra_piso], [cp], [pais], [ciudad], [localidad], [precio], [n_habs], [n_banios], [superficie], [ascensor], [parking], [amueblado], [terraza], [calefaccion], [piscina], [jardin], [trastero], [estado], [tipo]) VALUES (14, N'Paseo Marítimo      ', N'Lubet                                             ', 34, 82, N'H    ', 23741, N'España                        ', N'Jaén                          ', N'Jaén                          ', 326.0000, 6, 4, N'34148          ', 1, 1, 1, 1, 0, 0, 0, 0, N'Reformado           ', N'Ático               ')
SET IDENTITY_INSERT [dbo].[Edificios] OFF
ALTER TABLE [dbo].[Favoritos]  WITH CHECK ADD  CONSTRAINT [FK_Favoritos_Edificios] FOREIGN KEY([id_edificio])
REFERENCES [dbo].[Edificios] ([id])
GO
ALTER TABLE [dbo].[Favoritos] CHECK CONSTRAINT [FK_Favoritos_Edificios]
GO
ALTER TABLE [dbo].[Fotos]  WITH CHECK ADD  CONSTRAINT [FK_Fotos_Edificios] FOREIGN KEY([id_edificio])
REFERENCES [dbo].[Edificios] ([id])
GO
ALTER TABLE [dbo].[Fotos] CHECK CONSTRAINT [FK_Fotos_Edificios]
GO
USE [master]
GO
ALTER DATABASE [Inmobiliaria] SET  READ_WRITE 
GO
