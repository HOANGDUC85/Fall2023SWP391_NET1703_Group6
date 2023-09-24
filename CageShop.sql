USE [master]
GO
CREATE DATABASE [CageShop]
GO
USE [CageShop]
GO
/****** Object:  Table [dbo].[tblFeedback]    Script Date: 24/09/2023 11:23:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFeedback](
	[UserID] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Rating] [nvarchar](255) NULL,
	[Comment] [nvarchar](255) NULL,
	[ProductID] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[FullName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInvoice]    Script Date: 24/09/2023 11:23:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInvoice](
	[InvoiceID] [nvarchar](255) NOT NULL,
	[InvoiceStatus] [nvarchar](255) NULL,
	[OrderBy] [nvarchar](255) NULL,
	[ProductID] [nvarchar](255) NOT NULL,
	[CreatedDate] [date] NULL,
	[Discount] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetails]    Script Date: 24/09/2023 11:23:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetails](
	[OrderID] [nvarchar](255) NOT NULL,
	[ProductID] [nvarchar](255) NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[Price] [money] NULL,
	[Image] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 24/09/2023 11:23:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[OrderID] [nvarchar](255) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[Delivery] [nvarchar](255) NULL,
	[DeliveryDate] [date] NULL,
	[OrderStatus] [bit] NULL,
	[OrderBy] [nvarchar](255) NULL,
	[Discount] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 24/09/2023 11:23:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[ProductID] [nvarchar](255) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[ProductDetails] [nvarchar](255) NULL,
	[ProductPriceNew] [money] NULL,
	[ProductImage] [nvarchar](255) NULL,
	[Quantity] [int] NULL,
	[ProductStatus] [bit] NULL,
	[ProductType] [bit] NULL,
	[ProductMaterial] [varchar](255) NULL,
	[OtherRequest] [varchar](255) NULL,
	[ProductPriceOld] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 24/09/2023 11:23:49 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[UserID] [nvarchar](255) NOT NULL,
	[FullName] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Phone] [int] NULL,
	[Email] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[RoleID] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID]) VALUES (N'lehuy', N'Le Quang Huy', N'1', N'0812432431', N'lehuy@gmail.com', N'HCMC', 'Admin')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID]) VALUES (N'minhmanh', N'Minh Manh', N'1', N'0814333431', N'minhmanh@gmail.com', N'Hanoi', 'Admin')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID]) VALUES (N'dinhduc', N'Dinh Duc', N'1', N'0811231331', N'dinhduc@gmail.com', N'Da Nang', 'Admin')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID]) VALUES (N'trongdoanh', N'Trong Doanh', N'1', N'0812343241', N'trongdoanh@gmail.com', N'Can Tho', 'Admin')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID]) VALUES (N'hongquan', N'Hong Quan', N'1', N'0823434351', N'hongquan@gmail.com', N'Hue', 'Admin')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID]) VALUES (N'nguoidung1', N'Duc Manh', N'1', N'0823123233', N'nguoidung1@gmail.com', N'Vinh', 'User')
INSERT [dbo].[tblUsers] ([UserID], [FullName], [Password], [Phone], [Email], [Address], [roleID]) VALUES (N'nguoidung2', N'Quan Manh', N'1', N'082123133', N'nguoidung2@gmail.com', N'HCMC', 'User')

ALTER TABLE [dbo].[tblFeedback]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProducts] ([ProductID])
GO
ALTER TABLE [dbo].[tblFeedback]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblInvoice]  WITH CHECK ADD FOREIGN KEY([OrderBy])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblInvoice]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProducts] ([ProductID])
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrders] ([OrderID])
GO
ALTER TABLE [dbo].[tblOrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProducts] ([ProductID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([OrderBy])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
