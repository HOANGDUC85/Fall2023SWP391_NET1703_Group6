USE [master]
GO
/****** Object:  Database [CageShop]    Script Date: 08/10/2023 12:08:56 SA ******/
CREATE DATABASE [CageShop]
GO
USE [CageShop]
GO
/****** Object:  Table [dbo].[tblCage]    Script Date: 08/10/2023 12:08:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCage](
	[CageID] [nvarchar](255) NOT NULL,
	[CategoryID] [nvarchar](255) NOT NULL,
	[CageName] [nvarchar](255) NOT NULL,
	[CageDetails] [nvarchar](255) NULL,
	[PriceNew] [money] NOT NULL,
	[PriceOld] [money] NULL,
	[Image] [nvarchar](255) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
	INSERT [dbo].[tblCage] ([CageID], [CategoryID], [CageName], [CageDetails], [PriceNew], [PriceOld], [Image], [Quantity], [Status]) VALUES (N'CM001', N'1', N'Lồng Chào Mào', N'Lồng có thiết kế đáy tròn cầu rễ, tạo nên một diện mạo độc đáo và thu hút. Điều này mang lại sự khác biệt và độc đáo cho lồng chum chào mào.', N'1000000', N'2000000', N'https://longchim.vn/wp-content/uploads/2023/06/long-chum.jpg', N'50', N'1')																									
	INSERT [dbo].[tblCage] ([CageID], [CategoryID], [CageName], [CageDetails], [PriceNew], [PriceOld], [Image], [Quantity], [Status]) VALUES (N'VK002', N'2', N'Lồng Vành Khuyên', N'Lồng có thiết kế đáy tròn cầu rễ, tạo nên một diện mạo độc đáo và thu hút. Điều này mang lại sự khác biệt và độc đáo cho lồng chum Vành Khuyên.', N'1000000', N'2000000', N'https://longchim.vn/wp-content/uploads/2023/05/long-la-de-1.jpg', N'50', N'1')																									
	INSERT [dbo].[tblCage] ([CageID], [CategoryID], [CageName], [CageDetails], [PriceNew], [PriceOld], [Image], [Quantity], [Status]) VALUES (N'HM003', N'3', N'Lồng Họa Mi', N'Lồng có thiết kế đáy tròn cầu rễ, tạo nên một diện mạo độc đáo và thu hút. Điều này mang lại sự khác biệt và độc đáo cho lồng chum Họa Mi.', N'2000000', N'3000000', N'https://bizweb.dktcdn.net/thumb/grande/100/356/441/products/40-005f0fc1-2db2-4c79-8663-64a2f0fcecbe.jpg', N'50', N'1')																									
	INSERT [dbo].[tblCage] ([CageID], [CategoryID], [CageName], [CageDetails], [PriceNew], [PriceOld], [Image], [Quantity], [Status]) VALUES (N'CC004', N'4', N'Lồng Chích Chòe', N'Lồng có thiết kế đáy tròn cầu rễ, tạo nên một diện mạo độc đáo và thu hút. Điều này mang lại sự khác biệt và độc đáo cho lồng chum Chích Chòe.', N'2000000', N'3000000', N'https://longchimvac.net/app/webroot/uploads/images/long-choe-dat-yen-khuyen-phong-dep_667x1000.jpg', N'50', N'1')																									
	INSERT [dbo].[tblCage] ([CageID], [CategoryID], [CageName], [CageDetails], [PriceNew], [PriceOld], [Image], [Quantity], [Status]) VALUES (N'CG005', N'5', N'Lồng Cu Gáy', N'Lồng có thiết kế đáy tròn cầu rễ, tạo nên một diện mạo độc đáo và thu hút. Điều này mang lại sự khác biệt và độc đáo cho lồng chum Cu Gáy.', N'3000000', N'4000000', N'https://longchim.vn/wp-content/uploads/2023/05/long-cu-gay-luc-lang-go-mun-1.jpg', N'50', N'1')
	INSERT [dbo].[tblCage] ([CageID], [CategoryID], [CageName], [CageDetails], [PriceNew], [PriceOld], [Image], [Quantity], [Status]) VALUES (N'CK006', N'6', N'Lồng Chim Khướu', N'Lồng có thiết kế đáy tròn cầu rễ, tạo nên một diện mạo độc đáo và thu hút. Điều này mang lại sự khác biệt và độc đáo cho lồng chum Chim Khướu.', N'3000000', N'4000000', N'https://minhocmit.com/wp-content/uploads/2023/01/z4027312782649_5d37baea7acd2a3068e8a90474b5f7f5.jpg', N'50', N'1')																									
	INSERT [dbo].[tblCage] ([CageID], [CategoryID], [CageName], [CageDetails], [PriceNew], [PriceOld], [Image], [Quantity], [Status]) VALUES (N'SC007', N'6', N'Lồng Sơn Ca', N'Lồng có thiết kế đáy tròn cầu rễ, tạo nên một diện mạo độc đáo và thu hút. Điều này mang lại sự khác biệt và độc đáo cho lồng chum Sơn Ca.', N'4000000', N'5000000', N'https://bizweb.dktcdn.net/thumb/grande/100/356/441/products/img-1588.jpg', N'50', N'1')																									
	INSERT [dbo].[tblCage] ([CageID], [CategoryID], [CageName], [CageDetails], [PriceNew], [PriceOld], [Image], [Quantity], [Status]) VALUES (N'CV008', N'6', N'Lồng Chim Vẹt', N'Lồng có thiết kế đáy tròn cầu rễ, tạo nên một diện mạo độc đáo và thu hút. Điều này mang lại sự khác biệt và độc đáo cho lồng chum Chim Vẹt.', N'5000000', N'6000000', N'https://sg-live-01.slatic.net/p/d376fb25e8662be382af565dd5267b98.jpg', N'50', N'1')																									
	INSERT [dbo].[tblCage] ([CageID], [CategoryID], [CageName], [CageDetails], [PriceNew], [PriceOld], [Image], [Quantity], [Status]) VALUES (N'CS009', N'6', N'Lồng Chim Sáo', N'Lồng có thiết kế đáy tròn cầu rễ, tạo nên một diện mạo độc đáo và thu hút. Điều này mang lại sự khác biệt và độc đáo cho lồng chum Chim Sáo.', N'6000000', N'7000000', N'https://longchim.vn/wp-content/uploads/2023/05/long-chim-68-nan-chan-la-de-1.jpg', N'50', N'1')
GO
/****** Object:  Table [dbo].[tblCageMaterial]    Script Date: 08/10/2023 12:08:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCageMaterial](
	[CageID] [nvarchar](255) NOT NULL,
	[MaterialID] [nvarchar](255) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
) ON [PRIMARY]
GO
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CM001', N'4', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CM001', N'5', N'5', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CM001', N'6', N'40', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CM001', N'7', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CM001', N'8', N'3', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CM001', N'9', N'3', N'a')

	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'VK002', N'4', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'VK002', N'5', N'4', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'VK002', N'6', N'36', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'VK002', N'7', N'1', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'VK002', N'8', N'1', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'VK002', N'9', N'2', N'a')

	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'HM003', N'4', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'HM003', N'5', N'6', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'HM003', N'6', N'32', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'HM003', N'7', N'3', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'HM003', N'8', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'HM003', N'9', N'2', N'a')

	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CC004', N'4', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CC004', N'5', N'4', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CC004', N'6', N'34', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CC004', N'7', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CC004', N'8', N'1', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CC004', N'9', N'2', N'a')

	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CG005', N'4', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CG005', N'5', N'5', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CG005', N'6', N'38', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CG005', N'7', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CG005', N'8', N'3', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CG005', N'9', N'3', N'a')

	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CK006', N'4', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CK006', N'5', N'4', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CK006', N'6', N'42', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CK006', N'7', N'1', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CK006', N'8', N'1', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CK006', N'9', N'2', N'a')

	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'SC007', N'4', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'SC007', N'5', N'6', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'SC007', N'6', N'40', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'SC007', N'7', N'3', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'SC007', N'8', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'SC007', N'9', N'2', N'a')

	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CV008', N'4', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CV008', N'5', N'4', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CV008', N'6', N'35', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CV008', N'7', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CV008', N'8', N'1', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CV008', N'9', N'2', N'a')

	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CS009', N'4', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CS009', N'5', N'4', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CS009', N'6', N'30', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CS009', N'7', N'2', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CS009', N'8', N'1', N'a')
	INSERT [dbo].[tblCageMaterial] ([CageID], [MaterialID], [Quantity], [Description]) VALUES (N'CS009', N'9', N'2', N'a')
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 08/10/2023 12:08:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[CategoryID] [nvarchar](255) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (N'1', N'Lồng Chào Mào')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (N'2', N'Lồng Vành Khuyên')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (N'3', N'Lồng Họa Mi')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (N'4', N'Lồng Chích Chòe')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (N'5', N'Lồng Cu Gáy')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (N'6', N'Các loại lồng khác')
INSERT [dbo].[tblCategory] ([CategoryID], [CategoryName]) VALUES (N'7', N'Lồng Yêu Cầu')

GO
/****** Object:  Table [dbo].[tblFeedback]    Script Date: 08/10/2023 12:08:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFeedback](
	[UserID] [nvarchar](255) NOT NULL,
	[OrderID] [nvarchar](255) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Rating] [nvarchar](255) NOT NULL,
	[Comment] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[FullName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMaterial]    Script Date: 08/10/2023 12:08:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMaterial](
	[MaterialID] [nvarchar](255) NOT NULL,
	[MaterialName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_tblMaterial] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[tblMaterial] ([MaterialID], [MaterialName], [Description], [Image], [Price]) VALUES (N'4', N'trụ', N'1', N'https://minhocmit.com/wp-content/uploads/2023/01/z4027312782649_5d37baea7acd2a3068e8a90474b5f7f5.jpg', N'160000')
INSERT [dbo].[tblMaterial] ([MaterialID], [MaterialName], [Description], [Image], [Price]) VALUES (N'5', N'móc', N'1', N'https://minhocmit.com/wp-content/uploads/2023/01/z4027312782649_5d37baea7acd2a3068e8a90474b5f7f5.jpg', N'120000')
INSERT [dbo].[tblMaterial] ([MaterialID], [MaterialName], [Description], [Image], [Price]) VALUES (N'6', N'nan', N'1', N'https://minhocmit.com/wp-content/uploads/2023/01/z4027312782649_5d37baea7acd2a3068e8a90474b5f7f5.jpg', N'100000')
INSERT [dbo].[tblMaterial] ([MaterialID], [MaterialName], [Description], [Image], [Price]) VALUES (N'7', N'đáy', N'1', N'https://minhocmit.com/wp-content/uploads/2023/01/z4027312782649_5d37baea7acd2a3068e8a90474b5f7f5.jpg', N'240000')
INSERT [dbo].[tblMaterial] ([MaterialID], [MaterialName], [Description], [Image], [Price]) VALUES (N'8', N'cửa', N'1', N'https://minhocmit.com/wp-content/uploads/2023/01/z4027312782649_5d37baea7acd2a3068e8a90474b5f7f5.jpg', N'150000')
INSERT [dbo].[tblMaterial] ([MaterialID], [MaterialName], [Description], [Image], [Price]) VALUES (N'9', N'cốc', N'1', N'https://minhocmit.com/wp-content/uploads/2023/01/z4027312782649_5d37baea7acd2a3068e8a90474b5f7f5.jpg', N'30000')
GO
/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 08/10/2023 12:08:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetails](
	[OrderID] [nvarchar](255) NOT NULL,
	[CageID] [nvarchar](255) NOT NULL,
	[CageName] [nvarchar](255) NULL,
	[Price] [money] NOT NULL,
	[Quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 08/10/2023 12:08:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[OrderID] [nvarchar](255) NOT NULL,
	[UserID] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[OrderStatus] [bit] NULL,
	[Discount] [money] NULL,
	[ShippingCod] [money] NULL,
	[Total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 08/10/2023 12:08:57 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[UserID] [nvarchar](255) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[RoleID] [nvarchar](50) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'lehuy', N'Le Huy', N'1', N'0812432431', N'lehuy@gmail.com', N'HCMC', 'Admin', '1')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'minhmanh', N'Minh Manh', N'1', N'0814333431', N'minhmanh@gmail.com', N'Hanoi', 'Admin', '1')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'dinhduc', N'Dinh Duc', N'1', N'0811231331', N'dinhduc@gmail.com', N'Da Nang', 'Admin', '1')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'trongdoanh', N'Trong Doanh', N'1', N'0812343241', N'trongdoanh@gmail.com', N'Can Tho', 'Admin', '1')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'hongquan', N'Hong Quan', N'1', N'0823434351', N'hongquan@gmail.com', N'Hue', 'Admin', '1')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'nguoidung1', N'Duc Manh', N'1', N'0823123233', N'nguoidung1@gmail.com', N'Vinh', 'User', '1')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'nguoidung2', N'Quan Manh', N'1', N'082123133', N'nguoidung2@gmail.com', N'Quang Tri', 'User', '1')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'nguoidung3', N'Huy Doanh', N'1', N'082123133', N'nguoidung3@gmail.com', N'Bac Ninh', 'User', '1')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'nguoidung4', N'Duc Doanh', N'1', N'082123133', N'nguoidung4@gmail.com', N'Dong Thap', 'User', '1')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID], [Status]) VALUES (N'nguoidung5', N'Quan Huy', N'1', N'082123133', N'nguoidung5@gmail.com', N'Ca Mau', 'User', '1')

ALTER TABLE [dbo].[tblCage]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[tblFeedback]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrders] ([OrderID])
GO
ALTER TABLE [dbo].[tblFeedback]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrders] ([OrderID])
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD FOREIGN KEY([CageID])
REFERENCES [dbo].[tblCage] ([CageID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblCageMaterial]  WITH CHECK ADD FOREIGN KEY([CageID])
REFERENCES [dbo].[tblCage] ([CageID])
GO
ALTER TABLE [dbo].[tblCageMaterial]  WITH CHECK ADD FOREIGN KEY([MaterialID])
REFERENCES [dbo].[tblMaterial] ([MaterialID])
GO
USE [master]
GO
ALTER DATABASE [CageShop] SET  READ_WRITE 
GO
