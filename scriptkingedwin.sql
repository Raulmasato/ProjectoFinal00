USE [ChestersMills]
GO
/****** Object:  Table [dbo].[Administradores]    Script Date: 1/12/2023 14:38:43 ******/
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
/****** Object:  Table [dbo].[Solicitud]    Script Date: 1/12/2023 14:38:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitud](
	[IDSolicitud] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Estado] [varchar](50) NULL,
	[IDUSUARIO] [int] NOT NULL,
	[Respuesta] [varchar](50) NULL,
 CONSTRAINT [PK_Solicitud] PRIMARY KEY CLUSTERED 
(
	[IDSolicitud] ASC
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
SET IDENTITY_INSERT [dbo].[Solicitud] ON 

INSERT [dbo].[Solicitud] ([IDSolicitud], [Titulo], [Descripcion], [Estado], [IDUSUARIO], [Respuesta]) VALUES (2, N'Prueba', N'Descripcion Larga de Prueba para ver si funciona ', N'Aceptado', 2, N'a ver si funciona')
INSERT [dbo].[Solicitud] ([IDSolicitud], [Titulo], [Descripcion], [Estado], [IDUSUARIO], [Respuesta]) VALUES (3, N'Prueba', N'Descripcion Larga de Prueba para ver si funciona ', N'En Revision', 2, NULL)
INSERT [dbo].[Solicitud] ([IDSolicitud], [Titulo], [Descripcion], [Estado], [IDUSUARIO], [Respuesta]) VALUES (4, N'Prueba', N'Descripcion Larga de Prueba para ver si funciona ', N'En Revision', 2, NULL)
INSERT [dbo].[Solicitud] ([IDSolicitud], [Titulo], [Descripcion], [Estado], [IDUSUARIO], [Respuesta]) VALUES (5, N'agustina', N'gakjgajjsafjagsfaf', N'Rechazado', 1, N'xdddddasda')
INSERT [dbo].[Solicitud] ([IDSolicitud], [Titulo], [Descripcion], [Estado], [IDUSUARIO], [Respuesta]) VALUES (6, N'fsfafs', N'sfafasfasfas', N'En Revision', 2, NULL)
SET IDENTITY_INSERT [dbo].[Solicitud] OFF
GO
ALTER TABLE [dbo].[Solicitud]  WITH CHECK ADD  CONSTRAINT [FK_Solicitud_Administradores] FOREIGN KEY([IDSolicitud])
REFERENCES [dbo].[Administradores] ([idAdmin])
GO
ALTER TABLE [dbo].[Solicitud] CHECK CONSTRAINT [FK_Solicitud_Administradores]
GO
