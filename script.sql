use master 
go
CREATE DATABASE BD_VISITANTE
use BD_VISITANTE
go
CREATE TABLE [dbo].[DEPARTAMENTOS](
	[Cod_dep] [int] IDENTITY(1,10) NOT NULL,
	[Numero] [varchar](50) NULL,
	[Cod_edf] [int] NULL,
	[idprop] [int] NULL,
	[Area_total_dep] [char](30) NULL,
	[Piso] [int] NOT NULL,
	[N_Estacionamiento] [varchar](20) NULL,
	[estado] [nvarchar](40) NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_dep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDIFICIO]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDIFICIO](
	[Cod_edf] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](60) NULL,
	[Direccion] [nvarchar](100) NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cod_edf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INCIDENTE]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INCIDENTE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Cod_dep] [int] NULL,
	[id_tipo] [int] NULL,
	[descripcion] [varchar](40) NULL,
	[fechaRegistro] [datetime] NULL,
 CONSTRAINT [PK__INCIDENT__3213E83F6754599E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANTENIMIENTO]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MANTENIMIENTO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Id_tipoMantenimiento] [int] NULL,
	[Cod_dep] [int] NULL,
	[descripcion] [varchar](40) NULL,
	[monto] [int] NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MASCOTAS]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MASCOTAS](
	[Idmascota] [int] IDENTITY(1,1) NOT NULL,
	[idprop] [int] NULL,
	[Mascota] [nvarchar](50) NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Sexo] [nvarchar](30) NOT NULL,
	[Raza] [nvarchar](30) NOT NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Idmascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSONA](
	[cod_persona] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [int] NOT NULL,
	[Nombres] [varchar](30) NULL,
	[Apellidos] [varchar](40) NULL,
	[Telefono] [varchar](50) NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROPIETARIO]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROPIETARIO](
	[idprop] [int] IDENTITY(1,1) NOT NULL,
	[dni] [int] NOT NULL,
	[Nombres] [nvarchar](100) NOT NULL,
	[Apellidos] [nvarchar](60) NOT NULL,
	[Celular] [int] NULL,
	[fechaRegistro] [datetime] NULL,
 CONSTRAINT [PK__PROPIETA__D87608A649C3F6B7] PRIMARY KEY CLUSTERED 
(
	[idprop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TIPO_INCIDENTE]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPO_INCIDENTE](
	[ID_TIPO] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_TIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPO_MANTENIMIENTO]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPO_MANTENIMIENTO](
	[Id_tipoMantenimiento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_tipoMantenimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [nvarchar](100) NOT NULL,
	[contraseña] [nvarchar](30) NOT NULL,
	[cargo] [nvarchar](50) NOT NULL,
	[fechaReg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VISITAS]    Script Date: 30/05/2022 15:00:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VISITAS](
	[Nro_visita] [int] IDENTITY(1,1) NOT NULL,
	[Cod_dep] [int] NULL,
	[cod_persona] [int] NULL,
	[hora_entrada] [varchar](30) NULL,
	[hora_salida] [varchar](40) NULL,
	[Estado] [varchar](30) NULL,
	[Comentario] [varchar](50) NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Nro_visita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DEPARTAMENTOS] ON 

INSERT [dbo].[DEPARTAMENTOS] ([Cod_dep], [Numero], [Cod_edf], [idprop], [Area_total_dep], [Piso], [N_Estacionamiento], [estado], [fechaRegistro]) VALUES (1, N'1', 1, 1, N'200                           ', 1, N'5', N'Activo', CAST(N'2022-05-29 00:00:00.000' AS DateTime))
INSERT [dbo].[DEPARTAMENTOS] ([Cod_dep], [Numero], [Cod_edf], [idprop], [Area_total_dep], [Piso], [N_Estacionamiento], [estado], [fechaRegistro]) VALUES (11, N'2', 1, 2, N'200                           ', 1, N'4', N'Activo', CAST(N'2022-05-29 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DEPARTAMENTOS] OFF
SET IDENTITY_INSERT [dbo].[EDIFICIO] ON 

INSERT [dbo].[EDIFICIO] ([Cod_edf], [Nombre], [Direccion], [fechaRegistro]) VALUES (1, N'Sauces', N'av lince 147 breña', CAST(N'2022-05-29 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[EDIFICIO] OFF
SET IDENTITY_INSERT [dbo].[INCIDENTE] ON 

INSERT [dbo].[INCIDENTE] ([id], [Cod_dep], [id_tipo], [descripcion], [fechaRegistro]) VALUES (1, 11, 1, N'latop nueva', CAST(N'2022-05-30 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[INCIDENTE] OFF
SET IDENTITY_INSERT [dbo].[MANTENIMIENTO] ON 

INSERT [dbo].[MANTENIMIENTO] ([id], [Id_tipoMantenimiento], [Cod_dep], [descripcion], [monto], [fechaRegistro]) VALUES (1, 1, 1, N'cambio de repuesto', 200, CAST(N'2022-05-30 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[MANTENIMIENTO] OFF
SET IDENTITY_INSERT [dbo].[MASCOTAS] ON 

INSERT [dbo].[MASCOTAS] ([Idmascota], [idprop], [Mascota], [Nombre], [Sexo], [Raza], [fechaRegistro]) VALUES (1, 1, N'Gato', N'Michi', N'Masculino', N'Fuber', CAST(N'2022-05-28 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[MASCOTAS] OFF
SET IDENTITY_INSERT [dbo].[PERSONA] ON 

INSERT [dbo].[PERSONA] ([cod_persona], [Dni], [Nombres], [Apellidos], [Telefono], [fechaRegistro]) VALUES (1, 14112214, N'Luis', N'Torres Palmas', N'987478478', CAST(N'2022-05-27 00:00:00.000' AS DateTime))
INSERT [dbo].[PERSONA] ([cod_persona], [Dni], [Nombres], [Apellidos], [Telefono], [fechaRegistro]) VALUES (2, 12589888, N'Ana', N'Palmas Sotomayor', N'7767424', CAST(N'2022-05-27 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PERSONA] OFF
SET IDENTITY_INSERT [dbo].[PROPIETARIO] ON 

INSERT [dbo].[PROPIETARIO] ([idprop], [dni], [Nombres], [Apellidos], [Celular], [fechaRegistro]) VALUES (1, 12589880, N'Cesar', N'Flores Villareal', 987478400, CAST(N'2022-05-27 00:00:00.000' AS DateTime))
INSERT [dbo].[PROPIETARIO] ([idprop], [dni], [Nombres], [Apellidos], [Celular], [fechaRegistro]) VALUES (2, 15588877, N'Javier', N'Santos Roca', 985225544, CAST(N'2022-05-27 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[PROPIETARIO] OFF
SET IDENTITY_INSERT [dbo].[TIPO_INCIDENTE] ON 

INSERT [dbo].[TIPO_INCIDENTE] ([ID_TIPO], [NOMBRE]) VALUES (1, N'Perdida')
INSERT [dbo].[TIPO_INCIDENTE] ([ID_TIPO], [NOMBRE]) VALUES (2, N'Destroso')
SET IDENTITY_INSERT [dbo].[TIPO_INCIDENTE] OFF
SET IDENTITY_INSERT [dbo].[TIPO_MANTENIMIENTO] ON 

INSERT [dbo].[TIPO_MANTENIMIENTO] ([Id_tipoMantenimiento], [nombre]) VALUES (1, N'Reparar Acensor')
INSERT [dbo].[TIPO_MANTENIMIENTO] ([Id_tipoMantenimiento], [nombre]) VALUES (2, N'Reparar la Puerta')
SET IDENTITY_INSERT [dbo].[TIPO_MANTENIMIENTO] OFF
SET IDENTITY_INSERT [dbo].[USUARIOS] ON 

INSERT [dbo].[USUARIOS] ([id_usuario], [usuario], [contraseña], [cargo], [fechaReg]) VALUES (1, N'pepe', N'123', N'Administrador', CAST(N'2022-05-01 00:00:00.000' AS DateTime))
INSERT [dbo].[USUARIOS] ([id_usuario], [usuario], [contraseña], [cargo], [fechaReg]) VALUES (4, N'axe', N'12345', N'Supervisor', CAST(N'2022-05-30 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[USUARIOS] OFF
SET IDENTITY_INSERT [dbo].[VISITAS] ON 

INSERT [dbo].[VISITAS] ([Nro_visita], [Cod_dep], [cod_persona], [hora_entrada], [hora_salida], [Estado], [Comentario], [fechaRegistro]) VALUES (1, 1, 1, N'16:41:53', N'13:13:43', N'Salio', N'.', CAST(N'2022-05-30 00:00:00.000' AS DateTime))
INSERT [dbo].[VISITAS] ([Nro_visita], [Cod_dep], [cod_persona], [hora_entrada], [hora_salida], [Estado], [Comentario], [fechaRegistro]) VALUES (3, 1, 2, N'10:24:02', N'13:14:14', N'Salio', N'.', CAST(N'2022-05-30 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[VISITAS] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__TIPO_MAN__72AFBCC66EF57B66]    Script Date: 30/05/2022 15:00:34 ******/
ALTER TABLE [dbo].[TIPO_MANTENIMIENTO] ADD UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DEPARTAMENTOS]  WITH CHECK ADD FOREIGN KEY([Cod_edf])
REFERENCES [dbo].[EDIFICIO] ([Cod_edf])
GO
ALTER TABLE [dbo].[DEPARTAMENTOS]  WITH CHECK ADD  CONSTRAINT [FK_DEPARTAMENTOS_PROPIETARIO] FOREIGN KEY([idprop])
REFERENCES [dbo].[PROPIETARIO] ([idprop])
GO
ALTER TABLE [dbo].[DEPARTAMENTOS] CHECK CONSTRAINT [FK_DEPARTAMENTOS_PROPIETARIO]
GO
ALTER TABLE [dbo].[INCIDENTE]  WITH CHECK ADD  CONSTRAINT [FK__INCIDENTE__Cod_d__693CA210] FOREIGN KEY([Cod_dep])
REFERENCES [dbo].[DEPARTAMENTOS] ([Cod_dep])
GO
ALTER TABLE [dbo].[INCIDENTE] CHECK CONSTRAINT [FK__INCIDENTE__Cod_d__693CA210]
GO
ALTER TABLE [dbo].[INCIDENTE]  WITH CHECK ADD  CONSTRAINT [FK_INCIDENTE_TIPO_INCIDENTE] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[TIPO_INCIDENTE] ([ID_TIPO])
GO
ALTER TABLE [dbo].[INCIDENTE] CHECK CONSTRAINT [FK_INCIDENTE_TIPO_INCIDENTE]
GO
ALTER TABLE [dbo].[MANTENIMIENTO]  WITH CHECK ADD FOREIGN KEY([Cod_dep])
REFERENCES [dbo].[DEPARTAMENTOS] ([Cod_dep])
GO
ALTER TABLE [dbo].[MANTENIMIENTO]  WITH CHECK ADD FOREIGN KEY([Id_tipoMantenimiento])
REFERENCES [dbo].[TIPO_MANTENIMIENTO] ([Id_tipoMantenimiento])
GO
ALTER TABLE [dbo].[MASCOTAS]  WITH CHECK ADD  CONSTRAINT [FK_MASCOTAS_PROPIETARIO] FOREIGN KEY([idprop])
REFERENCES [dbo].[PROPIETARIO] ([idprop])
GO
ALTER TABLE [dbo].[MASCOTAS] CHECK CONSTRAINT [FK_MASCOTAS_PROPIETARIO]
GO
ALTER TABLE [dbo].[VISITAS]  WITH CHECK ADD FOREIGN KEY([Cod_dep])
REFERENCES [dbo].[DEPARTAMENTOS] ([Cod_dep])
GO
ALTER TABLE [dbo].[VISITAS]  WITH CHECK ADD FOREIGN KEY([cod_persona])
REFERENCES [dbo].[PERSONA] ([cod_persona])
GO
