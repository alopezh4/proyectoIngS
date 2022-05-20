USE [master]
GO
/****** Object:  Database [BDISJOBS]    Script Date: 20/05/2022 12:27:07 ******/
CREATE DATABASE [BDISJOBS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDISJOBS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BDISJOBS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDISJOBS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BDISJOBS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BDISJOBS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDISJOBS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDISJOBS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDISJOBS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDISJOBS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDISJOBS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDISJOBS] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDISJOBS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDISJOBS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDISJOBS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDISJOBS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDISJOBS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDISJOBS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDISJOBS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDISJOBS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDISJOBS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDISJOBS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDISJOBS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDISJOBS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDISJOBS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDISJOBS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDISJOBS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDISJOBS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDISJOBS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDISJOBS] SET RECOVERY FULL 
GO
ALTER DATABASE [BDISJOBS] SET  MULTI_USER 
GO
ALTER DATABASE [BDISJOBS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDISJOBS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDISJOBS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDISJOBS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDISJOBS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDISJOBS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDISJOBS', N'ON'
GO
ALTER DATABASE [BDISJOBS] SET QUERY_STORE = OFF
GO
USE [BDISJOBS]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[Id_Candidato] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[Telefono] [nvarchar](13) NOT NULL,
	[Direccion] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](500) NOT NULL,
	[Curriculum] [nvarchar](50) NULL,
	[Id_Educacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Candidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuestionario]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuestionario](
	[Id_Cuestionario] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](200) NOT NULL,
	[Id_Pregunta] [int] NOT NULL,
	[Id_Plaza] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Cuestionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[Id_Departamento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Educacion]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Educacion](
	[Id_Educacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Educacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[Id_Empresa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Correo] [nvarchar](100) NOT NULL,
	[Telefono] [nvarchar](13) NOT NULL,
	[Direccion] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[Id_Equipo] [int] IDENTITY(1,1) NOT NULL,
	[Id_Candidato] [int] NOT NULL,
	[Id_Plaza] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[Id_Estado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluaciones]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluaciones](
	[Id_Evaluacion] [int] IDENTITY(1,1) NOT NULL,
	[Id_Cuestionario] [int] NOT NULL,
	[Id_Postulado] [int] NOT NULL,
	[Nota] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Evaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Experiencia]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiencia](
	[Id_Experiencia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Experiencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jornada]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jornada](
	[Id_Jornada] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Jornada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Id_Pais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pipelines]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pipelines](
	[Id_Pipeline] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Id_Empresa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Pipeline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plazas]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plazas](
	[Id_Plaza] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](200) NOT NULL,
	[Descripcion] [nvarchar](200) NOT NULL,
	[Id_Empresa] [int] NOT NULL,
	[Id_Departamento] [int] NOT NULL,
	[Id_Pais] [int] NOT NULL,
	[Id_Categoria] [int] NOT NULL,
	[Id_Jornada] [int] NOT NULL,
	[Id_Educacion] [int] NOT NULL,
	[Id_Experiencia] [int] NOT NULL,
	[Salario] [int] NOT NULL,
	[Id_Estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Plaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postulados]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulados](
	[Id_Postulado] [int] IDENTITY(1,1) NOT NULL,
	[Id_Candidato] [int] NOT NULL,
	[Id_Plaza] [int] NOT NULL,
	[Fecha] [datetime] NULL,
	[Id_Pipeline] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Postulado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[Id_Pregunta] [int] IDENTITY(1,1) NOT NULL,
	[Pregunta] [nvarchar](200) NOT NULL,
	[Id_Respuesta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Pregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[Id_Respuesta] [int] IDENTITY(1,1) NOT NULL,
	[Respuesta] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Respuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesUS]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesUS](
	[Id_Rol] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](20) NOT NULL,
	[Contraseña] [nvarchar](10) NOT NULL,
	[Id_Rol] [int] NOT NULL,
	[Id_Empresa] [int] NOT NULL,
	[Descripcion] [nvarchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Candidato] ON 
GO
INSERT [dbo].[Candidato] ([Id_Candidato], [Nombre], [Correo], [Telefono], [Direccion], [Descripcion], [Curriculum], [Id_Educacion]) VALUES (1, N'Ana Garcia', N'ag12@gmail.com', N'45620187', N'zona 5', N'tengo experiencia en compras', NULL, 1)
GO
INSERT [dbo].[Candidato] ([Id_Candidato], [Nombre], [Correo], [Telefono], [Direccion], [Descripcion], [Curriculum], [Id_Educacion]) VALUES (2, N'Luis Fuentes', N'lf17@gmail.com', N'63214875', N'zona 4', N'tengo experiencia en compras', N'cv', 1)
GO
INSERT [dbo].[Candidato] ([Id_Candidato], [Nombre], [Correo], [Telefono], [Direccion], [Descripcion], [Curriculum], [Id_Educacion]) VALUES (3, N'Marielos Palacios', N'mp11@gmail.com', N'48759630', N'zona 6', N'tengo experiencia', N'cv', 1)
GO
INSERT [dbo].[Candidato] ([Id_Candidato], [Nombre], [Correo], [Telefono], [Direccion], [Descripcion], [Curriculum], [Id_Educacion]) VALUES (4, N'David Cabrera', N'dc77@gmail.com', N'56320147', N'zona 12', N'tengo experiencia', N'cv', 1)
GO
INSERT [dbo].[Candidato] ([Id_Candidato], [Nombre], [Correo], [Telefono], [Direccion], [Descripcion], [Curriculum], [Id_Educacion]) VALUES (5, N'Sofia Torres', N'storres@gmail.com', N'35876014', N'zona 5', N'tengo experiencia', N'cv', 1)
GO
SET IDENTITY_INSERT [dbo].[Candidato] OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 
GO
INSERT [dbo].[Categoria] ([Id_Categoria], [Nombre]) VALUES (1, N'Economia')
GO
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Cuestionario] ON 
GO
INSERT [dbo].[Cuestionario] ([Id_Cuestionario], [Titulo], [Id_Pregunta], [Id_Plaza]) VALUES (1, N'Plaza Compras ABC', 1, 1)
GO
INSERT [dbo].[Cuestionario] ([Id_Cuestionario], [Titulo], [Id_Pregunta], [Id_Plaza]) VALUES (2, N'Plaza Compras ABC', 2, 1)
GO
INSERT [dbo].[Cuestionario] ([Id_Cuestionario], [Titulo], [Id_Pregunta], [Id_Plaza]) VALUES (6, N'Plaza compras KWK', 3, 1)
GO
SET IDENTITY_INSERT [dbo].[Cuestionario] OFF
GO
SET IDENTITY_INSERT [dbo].[Departamento] ON 
GO
INSERT [dbo].[Departamento] ([Id_Departamento], [Nombre]) VALUES (1, N'Compras')
GO
SET IDENTITY_INSERT [dbo].[Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Educacion] ON 
GO
INSERT [dbo].[Educacion] ([Id_Educacion], [Nombre]) VALUES (1, N'Universitaria')
GO
SET IDENTITY_INSERT [dbo].[Educacion] OFF
GO
SET IDENTITY_INSERT [dbo].[Empresa] ON 
GO
INSERT [dbo].[Empresa] ([Id_Empresa], [Nombre], [Correo], [Telefono], [Direccion], [Descripcion]) VALUES (1, N'ABC', N'abc@gmail.com', N'22558899', N'zona 2', N'abc')
GO
SET IDENTITY_INSERT [dbo].[Empresa] OFF
GO
SET IDENTITY_INSERT [dbo].[Estado] ON 
GO
INSERT [dbo].[Estado] ([Id_Estado], [Nombre]) VALUES (1, N'Vacante')
GO
SET IDENTITY_INSERT [dbo].[Estado] OFF
GO
SET IDENTITY_INSERT [dbo].[Experiencia] ON 
GO
INSERT [dbo].[Experiencia] ([Id_Experiencia], [Nombre]) VALUES (1, N'Si')
GO
SET IDENTITY_INSERT [dbo].[Experiencia] OFF
GO
SET IDENTITY_INSERT [dbo].[Jornada] ON 
GO
INSERT [dbo].[Jornada] ([Id_Jornada], [Nombre]) VALUES (1, N'Completa')
GO
SET IDENTITY_INSERT [dbo].[Jornada] OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 
GO
INSERT [dbo].[Pais] ([Id_Pais], [Nombre]) VALUES (1, N'Guatemala')
GO
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
SET IDENTITY_INSERT [dbo].[Pipelines] ON 
GO
INSERT [dbo].[Pipelines] ([Id_Pipeline], [Nombre], [Id_Empresa]) VALUES (1, N'Applied', 1)
GO
INSERT [dbo].[Pipelines] ([Id_Pipeline], [Nombre], [Id_Empresa]) VALUES (2, N'Disqualified', 1)
GO
INSERT [dbo].[Pipelines] ([Id_Pipeline], [Nombre], [Id_Empresa]) VALUES (3, N'Hired', 1)
GO
SET IDENTITY_INSERT [dbo].[Pipelines] OFF
GO
SET IDENTITY_INSERT [dbo].[Plazas] ON 
GO
INSERT [dbo].[Plazas] ([Id_Plaza], [Nombre], [Descripcion], [Id_Empresa], [Id_Departamento], [Id_Pais], [Id_Categoria], [Id_Jornada], [Id_Educacion], [Id_Experiencia], [Salario], [Id_Estado]) VALUES (1, N'Comprador', N'Encargado de compras', 1, 1, 1, 1, 1, 1, 1, 3500, 1)
GO
INSERT [dbo].[Plazas] ([Id_Plaza], [Nombre], [Descripcion], [Id_Empresa], [Id_Departamento], [Id_Pais], [Id_Categoria], [Id_Jornada], [Id_Educacion], [Id_Experiencia], [Salario], [Id_Estado]) VALUES (2, N'Axiliar Comprador', N'Axuliar de compras', 1, 1, 1, 1, 1, 1, 1, 2500, 1)
GO
SET IDENTITY_INSERT [dbo].[Plazas] OFF
GO
SET IDENTITY_INSERT [dbo].[Postulados] ON 
GO
INSERT [dbo].[Postulados] ([Id_Postulado], [Id_Candidato], [Id_Plaza], [Fecha], [Id_Pipeline]) VALUES (1, 1, 1, CAST(N'2022-05-04T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Postulados] ([Id_Postulado], [Id_Candidato], [Id_Plaza], [Fecha], [Id_Pipeline]) VALUES (2, 2, 2, CAST(N'2022-05-03T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Postulados] ([Id_Postulado], [Id_Candidato], [Id_Plaza], [Fecha], [Id_Pipeline]) VALUES (6, 1, 2, CAST(N'2022-05-12T16:10:38.177' AS DateTime), 1)
GO
INSERT [dbo].[Postulados] ([Id_Postulado], [Id_Candidato], [Id_Plaza], [Fecha], [Id_Pipeline]) VALUES (7, 3, 1, CAST(N'2022-05-12T16:13:42.153' AS DateTime), 3)
GO
INSERT [dbo].[Postulados] ([Id_Postulado], [Id_Candidato], [Id_Plaza], [Fecha], [Id_Pipeline]) VALUES (8, 5, 1, CAST(N'2022-05-18T18:36:43.563' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Postulados] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 
GO
INSERT [dbo].[Preguntas] ([Id_Pregunta], [Pregunta], [Id_Respuesta]) VALUES (1, N'¿Tienes disponibilidad?', 1)
GO
INSERT [dbo].[Preguntas] ([Id_Pregunta], [Pregunta], [Id_Respuesta]) VALUES (2, N'¿Tienes carro propio?', 2)
GO
INSERT [dbo].[Preguntas] ([Id_Pregunta], [Pregunta], [Id_Respuesta]) VALUES (3, N'¿Tiene experiencia?', 3)
GO
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 
GO
INSERT [dbo].[Respuestas] ([Id_Respuesta], [Respuesta]) VALUES (1, N'si, tengo disponibilidad')
GO
INSERT [dbo].[Respuestas] ([Id_Respuesta], [Respuesta]) VALUES (2, N'si, cuento con carro')
GO
INSERT [dbo].[Respuestas] ([Id_Respuesta], [Respuesta]) VALUES (3, N'si, tengo experiencia')
GO
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
GO
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD FOREIGN KEY([Id_Educacion])
REFERENCES [dbo].[Educacion] ([Id_Educacion])
GO
ALTER TABLE [dbo].[Cuestionario]  WITH CHECK ADD FOREIGN KEY([Id_Plaza])
REFERENCES [dbo].[Plazas] ([Id_Plaza])
GO
ALTER TABLE [dbo].[Cuestionario]  WITH CHECK ADD FOREIGN KEY([Id_Pregunta])
REFERENCES [dbo].[Preguntas] ([Id_Pregunta])
GO
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD FOREIGN KEY([Id_Candidato])
REFERENCES [dbo].[Candidato] ([Id_Candidato])
GO
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD FOREIGN KEY([Id_Plaza])
REFERENCES [dbo].[Plazas] ([Id_Plaza])
GO
ALTER TABLE [dbo].[Evaluaciones]  WITH CHECK ADD FOREIGN KEY([Id_Cuestionario])
REFERENCES [dbo].[Cuestionario] ([Id_Cuestionario])
GO
ALTER TABLE [dbo].[Evaluaciones]  WITH CHECK ADD FOREIGN KEY([Id_Postulado])
REFERENCES [dbo].[Postulados] ([Id_Postulado])
GO
ALTER TABLE [dbo].[Pipelines]  WITH CHECK ADD FOREIGN KEY([Id_Empresa])
REFERENCES [dbo].[Empresa] ([Id_Empresa])
GO
ALTER TABLE [dbo].[Plazas]  WITH CHECK ADD FOREIGN KEY([Id_Categoria])
REFERENCES [dbo].[Categoria] ([Id_Categoria])
GO
ALTER TABLE [dbo].[Plazas]  WITH CHECK ADD FOREIGN KEY([Id_Departamento])
REFERENCES [dbo].[Departamento] ([Id_Departamento])
GO
ALTER TABLE [dbo].[Plazas]  WITH CHECK ADD FOREIGN KEY([Id_Educacion])
REFERENCES [dbo].[Educacion] ([Id_Educacion])
GO
ALTER TABLE [dbo].[Plazas]  WITH CHECK ADD FOREIGN KEY([Id_Empresa])
REFERENCES [dbo].[Empresa] ([Id_Empresa])
GO
ALTER TABLE [dbo].[Plazas]  WITH CHECK ADD FOREIGN KEY([Id_Estado])
REFERENCES [dbo].[Estado] ([Id_Estado])
GO
ALTER TABLE [dbo].[Plazas]  WITH CHECK ADD FOREIGN KEY([Id_Experiencia])
REFERENCES [dbo].[Experiencia] ([Id_Experiencia])
GO
ALTER TABLE [dbo].[Plazas]  WITH CHECK ADD FOREIGN KEY([Id_Jornada])
REFERENCES [dbo].[Jornada] ([Id_Jornada])
GO
ALTER TABLE [dbo].[Plazas]  WITH CHECK ADD FOREIGN KEY([Id_Pais])
REFERENCES [dbo].[Pais] ([Id_Pais])
GO
ALTER TABLE [dbo].[Postulados]  WITH CHECK ADD FOREIGN KEY([Id_Candidato])
REFERENCES [dbo].[Candidato] ([Id_Candidato])
GO
ALTER TABLE [dbo].[Postulados]  WITH CHECK ADD FOREIGN KEY([Id_Pipeline])
REFERENCES [dbo].[Pipelines] ([Id_Pipeline])
GO
ALTER TABLE [dbo].[Postulados]  WITH CHECK ADD FOREIGN KEY([Id_Plaza])
REFERENCES [dbo].[Plazas] ([Id_Plaza])
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD FOREIGN KEY([Id_Respuesta])
REFERENCES [dbo].[Respuestas] ([Id_Respuesta])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([Id_Empresa])
REFERENCES [dbo].[Empresa] ([Id_Empresa])
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[RolesUS] ([Id_Rol])
GO
/****** Object:  StoredProcedure [dbo].[usp_addpostulado]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_addpostulado](
@idcandidato int,
@idplaza int,
@idpipeline int
)
as
begin

insert into Postulados(Id_Candidato,Id_Plaza,Fecha,Id_Pipeline)
values
(
@idcandidato,
@idplaza,
CURRENT_TIMESTAMP,
@idpipeline
)

end


GO
/****** Object:  StoredProcedure [dbo].[usp_crearcuestionario]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
create procedure [dbo].[usp_crearcuestionario](
@titulo varchar(200),
@idpregunta int,
@idplaza int
)
as
begin

insert into Cuestionario(Titulo,Id_Pregunta,Id_Plaza)
values
(
@titulo,
@idpregunta,
@idplaza
)

end


GO
/****** Object:  StoredProcedure [dbo].[usp_cuestionariosc]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
create procedure [dbo].[usp_cuestionariosc] 
as
begin

select B.Nombre, D.Pregunta, E.Respuesta 
from Postulados A, Candidato B, Cuestionario C, Preguntas D, Respuestas E
where A.Id_Plaza = C.Id_Plaza
and A.Id_Candidato = B.Id_Candidato
and C.Id_Pregunta = D.Id_Pregunta
and D.Id_Respuesta = E.Id_Respuesta;

end 
GO
/****** Object:  StoredProcedure [dbo].[usp_movestados]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_movestados](
@idpostulado int,
@idpipeline int
)
as
begin

update Postulados set
Id_Pipeline = @idpipeline
where Id_Postulado = @idpostulado

end

GO
/****** Object:  StoredProcedure [dbo].[usp_movpuesto]    Script Date: 20/05/2022 12:27:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_movpuesto](
@idcandidato int,
@idplaza int
)
as
begin

update Postulados set
Id_Plaza = @idplaza
where Id_Candidato = @idcandidato

end

GO
USE [master]
GO
ALTER DATABASE [BDISJOBS] SET  READ_WRITE 
GO
