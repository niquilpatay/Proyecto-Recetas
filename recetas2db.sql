USE [recetas_db2]
GO
/****** Object:  User [nachuchi]    Script Date: 29/03/2023 18:50:43 ******/
CREATE USER [nachuchi] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Detalles_Receta]    Script Date: 29/03/2023 18:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles_Receta](
	[id_detalle] [int] IDENTITY(1,1) NOT NULL,
	[id_receta] [int] NOT NULL,
	[id_ingrediente] [int] NOT NULL,
	[cantidad] [numeric](5, 2) NOT NULL,
 CONSTRAINT [PK_Detalles_Receta] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredientes]    Script Date: 29/03/2023 18:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredientes](
	[id_ingrediente] [int] NOT NULL,
	[n_ingrediente] [varchar](50) NOT NULL,
	[unidad_medida] [varchar](50) NULL,
 CONSTRAINT [PK_Ingredientes] PRIMARY KEY CLUSTERED 
(
	[id_ingrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recetas]    Script Date: 29/03/2023 18:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recetas](
	[id_receta] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[cheff] [varchar](100) NULL,
	[tipo_receta] [int] NOT NULL,
 CONSTRAINT [PK_Recetas] PRIMARY KEY CLUSTERED 
(
	[id_receta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Detalles_Receta] ON 

INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (1, 1, 2, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (2, 1, 3, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (3, 1, 5, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (4, 2, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (5, 2, 1, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (6, 2, 7, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (7, 3, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (8, 3, 1, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (9, 3, 7, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (10, 3, 7, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (11, 3, 6, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (12, 3, 3, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (13, 4, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (14, 4, 5, CAST(9.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (15, 4, 2, CAST(6.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (16, 4, 1, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (17, 5, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (18, 5, 5, CAST(9.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (19, 5, 2, CAST(6.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (20, 5, 1, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (21, 5, 1, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (22, 5, 3, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (23, 5, 4, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (24, 6, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (25, 6, 6, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (26, 6, 5, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (27, 6, 2, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (28, 7, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (29, 7, 6, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (30, 7, 5, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (31, 7, 2, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (32, 7, 2, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (33, 7, 3, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (34, 7, 6, CAST(4.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (35, 8, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (36, 8, 6, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (37, 8, 5, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (38, 8, 2, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (39, 8, 2, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (40, 8, 3, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (41, 8, 6, CAST(4.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (42, 8, 3, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (43, 8, 7, CAST(4.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (44, 8, 6, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (45, 9, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (46, 9, 6, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (47, 9, 5, CAST(10.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (48, 9, 2, CAST(8.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (49, 9, 1, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (50, 10, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (51, 10, 6, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (52, 10, 5, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (53, 10, 2, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (54, 10, 1, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (55, 11, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (56, 11, 6, CAST(6.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (57, 11, 5, CAST(10.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (58, 11, 1, CAST(7.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (59, 12, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (60, 12, 3, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (61, 12, 7, CAST(40.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (65, 16, 3, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (66, 16, 5, CAST(6.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (67, 16, 1, CAST(8.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (68, 17, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (69, 17, 5, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (70, 17, 2, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (71, 18, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (72, 18, 7, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (73, 18, 2, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (74, 18, 1, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (75, 19, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (76, 19, 6, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (77, 19, 5, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (78, 19, 2, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (79, 19, 1, CAST(5.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (80, 20, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (81, 20, 6, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (82, 20, 5, CAST(10.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (83, 21, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (84, 21, 3, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (85, 21, 6, CAST(11.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (86, 22, 7, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (87, 22, 1, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (88, 22, 5, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (89, 23, 3, CAST(4.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (90, 23, 6, CAST(8.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (91, 23, 1, CAST(4.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (92, 24, 4, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (93, 24, 3, CAST(1.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (94, 24, 5, CAST(3.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (95, 24, 2, CAST(2.00 AS Numeric(5, 2)))
INSERT [dbo].[Detalles_Receta] ([id_detalle], [id_receta], [id_ingrediente], [cantidad]) VALUES (96, 24, 1, CAST(2.00 AS Numeric(5, 2)))
SET IDENTITY_INSERT [dbo].[Detalles_Receta] OFF
GO
INSERT [dbo].[Ingredientes] ([id_ingrediente], [n_ingrediente], [unidad_medida]) VALUES (1, N'Sal', N'gramos')
INSERT [dbo].[Ingredientes] ([id_ingrediente], [n_ingrediente], [unidad_medida]) VALUES (2, N'Pimienta', N'gramos')
INSERT [dbo].[Ingredientes] ([id_ingrediente], [n_ingrediente], [unidad_medida]) VALUES (3, N'Agua', N'cm3')
INSERT [dbo].[Ingredientes] ([id_ingrediente], [n_ingrediente], [unidad_medida]) VALUES (4, N'Aceite', N'cm3')
INSERT [dbo].[Ingredientes] ([id_ingrediente], [n_ingrediente], [unidad_medida]) VALUES (5, N'Carne', N'gramos')
INSERT [dbo].[Ingredientes] ([id_ingrediente], [n_ingrediente], [unidad_medida]) VALUES (6, N'Caldo', N'cm3')
INSERT [dbo].[Ingredientes] ([id_ingrediente], [n_ingrediente], [unidad_medida]) VALUES (7, N'Azucar', N'gramos')
GO
SET IDENTITY_INSERT [dbo].[Recetas] ON 

INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (1, N'Primera', N'Primer Chef', 1)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (2, N'Polenta', N'Lingüini', 3)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (3, N'Tarta', N'Hugo', 2)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (4, N'Asado', N'Román', 4)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (5, N'Fideos', N'Vito', 3)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (6, N'Atún', N'Dory', 5)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (7, N'Arroz', N'Zorra', 6)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (8, N'Vitina', N'Moma', 3)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (9, N'Alien', N'Depredador', 2)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (10, N'Hamburguesa', N'Vikctor', 2)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (11, N'Pollo al Disco', N'Martín Fierro', 3)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (12, N'Alfajor', N'Lobizón', 2)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (16, N'Risoto', N'Ronaldo', 3)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (17, N'Ekis', N'Tenta', 2)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (18, N'Puré', N'Pa', 3)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (19, N'Guiso', N'Mario', 3)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (20, N'Osobuco', N'Oso', 2)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (21, N'Sopa', N'Orasio', 2)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (22, N'Poyo', N'Poya', 1)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (23, N'Pastafrola', N'Tuabuela', 2)
INSERT [dbo].[Recetas] ([id_receta], [nombre], [cheff], [tipo_receta]) VALUES (24, N'Milanesa', N'Milanuso', 1)
SET IDENTITY_INSERT [dbo].[Recetas] OFF
GO
ALTER TABLE [dbo].[Detalles_Receta]  WITH CHECK ADD  CONSTRAINT [FK_DetallesReceta_Ingredientes] FOREIGN KEY([id_ingrediente])
REFERENCES [dbo].[Ingredientes] ([id_ingrediente])
GO
ALTER TABLE [dbo].[Detalles_Receta] CHECK CONSTRAINT [FK_DetallesReceta_Ingredientes]
GO
ALTER TABLE [dbo].[Detalles_Receta]  WITH CHECK ADD  CONSTRAINT [FK_DetallesReceta_Receta] FOREIGN KEY([id_receta])
REFERENCES [dbo].[Recetas] ([id_receta])
GO
ALTER TABLE [dbo].[Detalles_Receta] CHECK CONSTRAINT [FK_DetallesReceta_Receta]
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_INGREDIENTES]    Script Date: 29/03/2023 18:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CONSULTAR_INGREDIENTES]
AS
BEGIN
	
	SELECT * from Ingredientes ORDER BY 2;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DETALLES]    Script Date: 29/03/2023 18:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_DETALLES] 
	@id_receta int,
	@id_ingrediente int, 
	@cantidad int
AS
BEGIN
	INSERT INTO Detalles_Receta (id_receta,id_ingrediente,cantidad)
    VALUES (@id_receta, @id_ingrediente, @cantidad);
  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_RECETA]    Script Date: 29/03/2023 18:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTAR_RECETA] 
	@tipo_receta int,
	@nombre varchar(50),
	@cheff varchar(100)
AS
BEGIN
	INSERT INTO Recetas (nombre, cheff , tipo_receta)
    VALUES (@nombre, @cheff, @tipo_receta );
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PROXIMA_RECETA]    Script Date: 29/03/2023 18:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_PROXIMA_RECETA]
@prox int output
as
begin
SET @prox = (SELECT MAX(id_receta)+1  FROM Recetas);
end
GO
