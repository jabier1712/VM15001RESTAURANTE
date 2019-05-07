USE [master]
GO
/****** Object:  Database [Restaurante]    Script Date: 07/05/2019 11:21:25 ******/
CREATE DATABASE [Restaurante1]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restaurante1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restaurante1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restaurante1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restaurante1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restaurante1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restaurante1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restaurante1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Restaurante1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Restaurante1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restaurante1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restaurante1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restaurante1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restaurante1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restaurante1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restaurante1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restaurante1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restaurante1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Restaurante1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restaurante1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restaurante1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restaurante1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restaurante1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restaurante1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restaurante1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restaurante1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Restaurante1] SET  MULTI_USER 
GO
ALTER DATABASE [Restaurante1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restaurante1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restaurante1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restaurante1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Restaurante1]
GO
/****** Object:  Table [dbo].[Comanda]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comanda](
	[comandaId] [int] NULL,
	[comandaNumRef] [nchar](10) NULL,
	[comandaFecha] [datetime] NULL,
	[comandaClienteApe] [nchar](25) NULL,
	[comandaEstdo] [nchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ComandaDetalle]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComandaDetalle](
	[comandaDetId] [int] NULL,
	[comandaId] [int] NULL,
	[menuId] [int] NULL,
	[comandaDetCantidad] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GananciaPerdida]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GananciaPerdida](
	[gpID] [int] NULL,
	[gpFecha] [date] NULL,
	[gpTransacciones] [int] NULL,
	[gpMontoTotal] [decimal](12, 2) NULL,
	[gpIva] [decimal](12, 2) NULL,
	[gpDebito] [decimal](12, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[invId] [int] NULL,
	[invProdcutoNombre] [nchar](45) NULL,
	[invEstado] [nchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menuId] [int] NULL,
	[menuNombre] [nchar](45) NULL,
	[menuEstado] [nchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuDetalle]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuDetalle](
	[MenuDetId] [int] NULL,
	[menuId] [int] NULL,
	[invId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrecioMenu]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrecioMenu](
	[precioMenuId] [int] NULL,
	[menuId] [int] NULL,
	[precioMenuPrecio] [decimal](12, 2) NULL,
	[precioMenuEstado] [nchar](1) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Restaurante]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurante](
	[restId] [int] NULL,
	[restNombre] [nchar](25) NULL,
	[restDireccion] [nchar](85) NULL,
	[restContacto] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VentaProducto]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaProducto](
	[ventaPId] [int] NULL,
	[ventaId] [int] NULL,
	[ventaPCantidad] [int] NULL,
	[ventaPFecha] [date] NULL,
	[ventaPCostoTotal] [decimal](12, 2) NULL,
	[ventaPTotal] [decimal](12, 2) NULL,
	[ventaPDiferencia] [decimal](12, 2) NULL,
	[menuId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 07/05/2019 11:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[ventaId] [int] NULL,
	[ventaFecha] [date] NULL,
	[ventaNumero] [int] NULL,
	[ventaSerie] [nchar](10) NULL,
	[ventaClienteApe] [nchar](25) NULL,
	[ventaMonto] [decimal](12, 2) NULL,
	[ventaCatidad] [int] NULL,
	[ventaTotal] [decimal](12, 2) NULL,
	[comandaId] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (1, N'0001      ', CAST(0x0000A8BE00000000 AS DateTime), N'Vasquez                  ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (2, N'0002      ', CAST(0x0000A8B900000000 AS DateTime), N'Valdez                   ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (3, N'0003      ', CAST(0x0000A8BA00000000 AS DateTime), N'Rivera                   ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (4, N'0004      ', CAST(0x0000A8BB00000000 AS DateTime), N'Cerna                    ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (5, N'0005      ', CAST(0x0000A8BC00000000 AS DateTime), N'Martinez                 ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (6, N'0006      ', CAST(0x0000A8BD00000000 AS DateTime), N'Guevara                  ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (7, N'0007      ', CAST(0x0000A8BE00000000 AS DateTime), N'Molina                   ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (8, N'0008      ', CAST(0x0000A8BF00000000 AS DateTime), N'Rivera                   ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (9, N'0009      ', CAST(0x0000A8C000000000 AS DateTime), N'Vasquez                  ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (10, N'0010      ', CAST(0x0000A8C100000000 AS DateTime), N'Lopez                    ', N'1')
INSERT [dbo].[Comanda] ([comandaId], [comandaNumRef], [comandaFecha], [comandaClienteApe], [comandaEstdo]) VALUES (11, N'0011      ', CAST(0x0000A8C200000000 AS DateTime), N'Mejia                    ', N'1')
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (1, 1, 1, 1)
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (2, 1, 2, 1)
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (3, 2, 5, 1)
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (4, 2, 4, 1)
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (5, 2, 11, 2)
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (6, 3, 13, 1)
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (7, 4, 1, 1)
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (8, 4, 2, 1)
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (9, 5, 13, 1)
INSERT [dbo].[ComandaDetalle] ([comandaDetId], [comandaId], [menuId], [comandaDetCantidad]) VALUES (10, 5, 9, 2)
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (1, N'Hamburguesa con queso                        ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (2, N'Hamburguesa de Libra                         ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (3, N'Pizza Jamon                                  ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (4, N'Pizza con piña                               ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (5, N'Ensalada                                     ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (6, N'Ensalada con coditos                         ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (7, N'Ensalada con Queso                           ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (8, N'Burrito de carne de res                      ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (9, N'Burrito de pollo                             ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (10, N'Burrito Misxmo                               ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (11, N'Soda                                         ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (12, N'Te                                           ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (13, N'Jugo                                         ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (14, N'Café                                         ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (15, N'Agua                                         ', N'1')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (16, N'papas fritas                                 ', N'|')
INSERT [dbo].[Inventario] ([invId], [invProdcutoNombre], [invEstado]) VALUES (17, N'Pie de fruta                                 ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (1, N'Doble Pizza                                  ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (2, N'Pizza de Jamon                               ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (3, N'Pizza con Piña                               ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (4, N'Pizza de Jamon Con Soda                      ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (5, N'Pizza de Piña con Soda                       ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (6, N'Hamburguesa con queso                        ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (7, N'Hamburguesa de libra                         ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (8, N'Hamburguesa con queso Y papas con Soda       ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (9, N'Hamburguesa de Libra con papas y Soda        ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (10, N'Ensalada con coditos y soda                  ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (11, N'Papas                                        ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (12, N'Burrito con Carne de res                     ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (13, N'Burrito con carne de res y Soda              ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (14, N'Doble Burrito con soda                       ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (15, N'Triple Burrito con soda                      ', N'1')
INSERT [dbo].[Menu] ([menuId], [menuNombre], [menuEstado]) VALUES (16, N'Soda                                         ', N'1')
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (1, 1, 4)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (2, 1, 5)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (3, 2, 3)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (4, 3, 4)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (5, 4, 3)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (6, 4, 11)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (7, 5, 4)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (8, 5, 11)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (9, 6, 1)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (10, 7, 2)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (11, 8, 1)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (12, 8, 11)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (13, 8, 16)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (14, 9, 2)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (15, 9, 11)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (16, 9, 16)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (17, 10, 6)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (18, 10, 11)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (19, 11, 16)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (20, 12, 8)
INSERT [dbo].[MenuDetalle] ([MenuDetId], [menuId], [invId]) VALUES (21, 16, 11)
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (1, 1, CAST(9.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (2, 2, CAST(5.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (3, 3, CAST(5.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (4, 4, CAST(6.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (5, 5, CAST(6.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (6, 6, CAST(2.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (7, 7, CAST(4.50 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (8, 8, CAST(4.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (9, 9, CAST(7.50 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (10, 10, CAST(8.50 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (11, 11, CAST(1.50 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (12, 12, CAST(3.50 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (13, 13, CAST(4.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (14, 14, CAST(9.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (15, 15, CAST(12.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[PrecioMenu] ([precioMenuId], [menuId], [precioMenuPrecio], [precioMenuEstado]) VALUES (16, 16, CAST(0.99 AS Decimal(12, 2)), N'1')
INSERT [dbo].[VentaProducto] ([ventaPId], [ventaId], [ventaPCantidad], [ventaPFecha], [ventaPCostoTotal], [ventaPTotal], [ventaPDiferencia], [menuId]) VALUES (1, 1, 2, CAST(0x193E0B00 AS Date), CAST(10.00 AS Decimal(12, 2)), CAST(18.98 AS Decimal(12, 2)), CAST(8.98 AS Decimal(12, 2)), 1)
INSERT [dbo].[VentaProducto] ([ventaPId], [ventaId], [ventaPCantidad], [ventaPFecha], [ventaPCostoTotal], [ventaPTotal], [ventaPDiferencia], [menuId]) VALUES (2, 2, 2, CAST(0x143E0B00 AS Date), CAST(4.20 AS Decimal(12, 2)), CAST(11.98 AS Decimal(12, 2)), CAST(7.78 AS Decimal(12, 2)), 2)
INSERT [dbo].[VentaProducto] ([ventaPId], [ventaId], [ventaPCantidad], [ventaPFecha], [ventaPCostoTotal], [ventaPTotal], [ventaPDiferencia], [menuId]) VALUES (3, 3, 1, CAST(0x143E0B00 AS Date), CAST(2.10 AS Decimal(12, 2)), CAST(4.99 AS Decimal(12, 2)), CAST(2.99 AS Decimal(12, 2)), 4)
INSERT [dbo].[VentaProducto] ([ventaPId], [ventaId], [ventaPCantidad], [ventaPFecha], [ventaPCostoTotal], [ventaPTotal], [ventaPDiferencia], [menuId]) VALUES (4, 4, 1, CAST(0x143E0B00 AS Date), CAST(3.10 AS Decimal(12, 2)), CAST(5.99 AS Decimal(12, 2)), CAST(2.89 AS Decimal(12, 2)), 5)
INSERT [dbo].[VentaProducto] ([ventaPId], [ventaId], [ventaPCantidad], [ventaPFecha], [ventaPCostoTotal], [ventaPTotal], [ventaPDiferencia], [menuId]) VALUES (5, 5, 1, CAST(0x143E0B00 AS Date), CAST(4.00 AS Decimal(12, 2)), CAST(6.99 AS Decimal(12, 2)), CAST(2.99 AS Decimal(12, 2)), 11)
INSERT [dbo].[VentaProducto] ([ventaPId], [ventaId], [ventaPCantidad], [ventaPFecha], [ventaPCostoTotal], [ventaPTotal], [ventaPDiferencia], [menuId]) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Ventas] ([ventaId], [ventaFecha], [ventaNumero], [ventaSerie], [ventaClienteApe], [ventaMonto], [ventaCatidad], [ventaTotal], [comandaId]) VALUES (1, CAST(0x193E0B00 AS Date), 1, N'SD012F    ', N'Valdez                   ', CAST(15.98 AS Decimal(12, 2)), 2, CAST(15.98 AS Decimal(12, 2)), 2)
INSERT [dbo].[Ventas] ([ventaId], [ventaFecha], [ventaNumero], [ventaSerie], [ventaClienteApe], [ventaMonto], [ventaCatidad], [ventaTotal], [comandaId]) VALUES (2, CAST(0x143E0B00 AS Date), 2, N'SD012F    ', N'Vasquez                  ', CAST(16.98 AS Decimal(12, 2)), 3, CAST(16.98 AS Decimal(12, 2)), 1)
INSERT [dbo].[Ventas] ([ventaId], [ventaFecha], [ventaNumero], [ventaSerie], [ventaClienteApe], [ventaMonto], [ventaCatidad], [ventaTotal], [comandaId]) VALUES (3, CAST(0x153E0B00 AS Date), 3, N'SD012F    ', N'Rivvera                  ', CAST(4.99 AS Decimal(12, 2)), 1, CAST(4.99 AS Decimal(12, 2)), 3)
INSERT [dbo].[Ventas] ([ventaId], [ventaFecha], [ventaNumero], [ventaSerie], [ventaClienteApe], [ventaMonto], [ventaCatidad], [ventaTotal], [comandaId]) VALUES (4, CAST(0x163E0B00 AS Date), 4, N'SD012F    ', N'Cerna                    ', CAST(15.98 AS Decimal(12, 2)), 2, CAST(15.98 AS Decimal(12, 2)), 4)