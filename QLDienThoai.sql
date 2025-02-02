USE [QLDienThoai]
GO
/****** Object:  Table [dbo].[category]    Script Date: 11/16/2016 23:05:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](100) NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (1, N'Điện thoại', 0)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (2, N'Laptop', 0)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (3, N'Nokia', 1)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (4, N'SamSung', 1)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (5, N'iPhone (Apple)', 1)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (9, N'SmartWatch', 0)
INSERT [dbo].[category] ([category_id], [category_name], [parent_id]) VALUES (10, N'Phụ kiện', 0)
SET IDENTITY_INSERT [dbo].[category] OFF
/****** Object:  Table [dbo].[tbluser]    Script Date: 11/16/2016 23:05:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbluser](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NULL,
	[passwd] [nvarchar](100) NULL,
	[name] [nvarchar](100) NULL,
	[phone] [int] NULL,
	[address] [nvarchar](200) NULL,
	[lv] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbluser] ON
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (1, N'nhintp@gmail.com', N'75435879', N'Nhi', 974095295, N'Tan Binh', 1)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (2, N'thoantk@gmail.com', N'123654', N'Thao', 892738293, N'Quan 1', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (4, N'tuanvh@gmail.com', N'134656', N'Tuan', 123456789, N'Binh Tan', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (5, N'vanntv@gmail.com', N'765434', N'Van', 968466345, N'Binh Chanh', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (6, N'trangnt@gmail.com', N'765435', N'Trang', 957245339, N'Go Vap', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (7, N'hahn@gmail.com', N'987675', N'Ha', 955665448, N'Quan 9', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (8, N'hoalmh@gmail.com', N'765432', N'Hoa', 953666777, N'Quan 6', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (9, N'huentk@gmail.com', N'755654', N'Hue', 987565432, N'Quan 3', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (10, N'hoattp@gmail.com', N'764556', N'Hoa', 945234566, N'Quan 2', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (11, N'tritq@gmail.com', N'123465', N'Trí', 908295362, N'Tân Phú', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (14, N'nguyennam2508@gmail.com', N'211295', N'Nguyễn Duy Hoài Nam', 1698281202, N'Gò Vấp', 1)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (17, N'bcd@gmail.com', N'987654', N'abc', 908357375, N'Quan 7', 0)
INSERT [dbo].[tbluser] ([user_id], [email], [passwd], [name], [phone], [address], [lv]) VALUES (19, N'thaonlp@gmail.com', N'12345678', N'Nguyễn Lê Phương Thảo', 123456789, N'Gò Vấp', 1)
SET IDENTITY_INSERT [dbo].[tbluser] OFF
/****** Object:  Table [dbo].[product_bills]    Script Date: 11/16/2016 23:05:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_bills](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[product_num] [int] NULL,
 CONSTRAINT [PK_product_bills] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product_bills] ON
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (13, 54, 4, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (14, 54, 7, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (15, 54, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (16, 55, 4, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (17, 55, 7, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (18, 55, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (19, 56, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (20, 57, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (21, 57, 22, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (22, 58, 4, 4)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (23, 59, 7, 5)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (24, 59, 5, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (25, 60, 7, 6)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (26, 61, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (27, 62, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (28, 63, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (29, 64, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (30, 64, 4, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (31, 65, 61, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (32, 66, 2, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (33, 66, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (34, 67, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (35, 68, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (36, 70, 3, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (37, 71, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (38, 72, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (39, 73, 2, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (40, 74, 3, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (41, 75, 3, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (42, 76, 4, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (43, 77, 3, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (44, 79, 5, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (45, 80, 7, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (46, 81, 6, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (47, 82, 1, 2)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (48, 83, 68, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (49, 83, 64, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (50, 84, 70, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (51, 85, 70, 4)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (52, 86, 70, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (53, 87, 1, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (54, 87, 2, 1)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (55, 88, 2, 3)
INSERT [dbo].[product_bills] ([id], [order_id], [product_id], [product_num]) VALUES (56, 88, 3, 1)
SET IDENTITY_INSERT [dbo].[product_bills] OFF
/****** Object:  Table [dbo].[product]    Script Date: 11/16/2016 23:05:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](100) NULL,
	[category_id] [int] NULL,
	[description] [nvarchar](500) NULL,
	[price] [int] NULL,
	[product_img] [nvarchar](100) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product] ON
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (1, N'iPhone 6 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 32909999, N'upload/iphone6.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (2, N'Nokia 1202', 3, N'Hãng sản xuất: Nokia - Kiểu dáng: Kiểu thẳng - Màn hình: Màn hình đơn sắc - Kích thước màn hình: 1.3 inch - Sổ địa chỉ: 200địa chỉ - Số sim : 1 Sim -  Camera: Không có - Thời gian đàm thoại: 8 giờ.', 229000, N'upload/no1202.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (3, N'Nokia 1280', 3, N'Hãng sản xuất: Nokia - Kiểu dáng: Kiểu thẳng - Màn hình: Màn hình đơn sắc - Kích thước màn hình: 1.36 inch - Sổ địa chỉ: 500địa chỉ - Số sim : 1 Sim - Camera: Không có - Thời gian đàm thoại: 8.5 giờ.', 199000, N'upload/no1080.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (4, N'Microsoft Lumia 530', 3, N'Hệ điều hành: Windows Phone 8.1 - Camera sau: 5 MP - Camera trước: Không - CPU: Qualcomm Snapdragon 200 4 nhân 32-bit, 1.2 GHz - Bộ nhớ trong: 4 GB - Hỗ trợ thẻ nhớ: MicroSD, 128 GB - Thẻ SIM: 2 SIM 2 sóng, Micro SIM - Dung lượng pin: 1430 mAh - Thiết kế: Pin rời', 900000, N'upload/lu530.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (5, N'iPhone 6 Plus 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 5.5", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 2915 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 17490000, N'upload/iphone6plus.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (6, N'Samsung Galaxy Note 3', 4, N'Màn hình: TFT, 4", FWVGA - Hãng sản xuất: Samsung - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-Super AMOLED Touchscreen (Cảm ứng) - Kích thước màn hình: 5.7inch - RAM: 3GB - Hệ điều hành: Android OS, v4.3 (Jelly Bean) - Bộ vi xử lý : ARM Cortex A15 (1.9 GHz Quad-core) & Cortex A7 (1.3 GHz Quad-core) - Số sim : 1 Sim - Số lượng Cores: Quad Core (4 nhân) - Camera: 13 Megapixel.', 3990000, N'upload/galaxynote3.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (60, N'Samsung Galaxy S7 Edge', 4, N'Hãng sản xuất: Samsung - Camera trước: 5Megapixel - Kiểu màn hình: 16M màu-Super AMOLED Touchscreen (Cảm ứng) - Kích thước màn hình: 5.5inch - RAM: 4GB - Hệ điều hành: Android OS, v6.0 (Marshmallow) - Chipset: Qualcomm MSM8996 Snapdragon 820 - Số sim : 1 Sim - Số core: Kryo (2.15 GHz Dual-core) & Kryo (1.6 GHz Dual-core) - Camera sau: 12Megapixel.', 18990000, N'upload/samsung-galaxy-s7-edge-1-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (61, N'Microsoft Lumia 950', 1, N'Hãng sản xuất: Microsoft - Kiểu màn hình: 16M màu-AMOLED Touchscreen (Cảm ứng) - Kích thước màn hình: 5.7inch - RAM: 3GB - Hệ điều hành: Microsoft Windows Phone 10 - Chipset: ARM Cortex-A53 (1.5 GHz Quad-core) & ARM Cortex-A57 (2.0 GHz Quad-core) - Số sim : 1 Sim - Số core: Octa Core (8 nhân) - Camera sau: 20Megapixel.', 9990000, N'upload/microsoft-lumia-950-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (62, N'iPhone SE 16GB', 5, N'Hãng sản xuất: Apple - Camera trước: 1.2Megapixel - Kiểu màn hình: 16M màu LED-backlit IPS LCD Touchscreen (Cảm ứng) - Kích thước màn hình: 4inch - RAM: 2GB - Hệ điều hành: iOS 9.3 - Chipset: Apple A9 - Số sim : 1 Sim - Số core: 1.84 GHz Dual-core - Camera sau: 12Megapixel.', 10499000, N'upload/apple-iphone-se-16gb-gold-ban-quoc-te.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (63, N'iPhone 5S 16GB', 5, N'Hãng sản xuất: Apple - Kiểu màn hình: 16M màu-TFT LED-backlit IPS Touchscreen (Cảm ứng) - Kích thước màn hình: 4inch - RAM: 1GB - Hệ điều hành: iOS 7 - Chipset: 1.3 GHz Dual-Core - Số sim : 1 Sim - Số core: Dual Core (2 nhân) - Camera sau: 8Megapixel.', 7990000, N'upload/apple-iphone-5s-16gb-gold-ban-quoc-te-anh-2.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (64, N'iPhone 6s 16GB', 5, N'Hãng sản xuất: Apple - Kiểu màn hình: 16M màu LED-backlit IPS LCD Touchscreen (Cảm ứng) - Kích thước màn hình: 4.7inch - RAM: 2GB - Hệ điều hành: iOS 9 - Chipset: Apple A9 (1.84 GHz Dual-core) - Số sim : 1 Sim - Số core: Dual Core (2 nhân) - Camera sau: 12Megapixel.', 18490000, N'upload/apple-iphone-6s-16gb-gold-ban-quoc-te-anh-2.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (65, N'Samsung Galaxy J7', 4, N'Hãng sản xuất: Samsung - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-TFT Touchscreen (Cảm ứng) - Kích thước màn hình: 5.5inch - RAM: 1.5GB - Hệ điều hành: Android OS, v5.1 (Lollipop) - Bộ vi xử lý : 1.2 GHz Octa-core - Số sim : 2 Sim - 2 Sóng - Số lượng Cores: Octa Core (8 nhân) - Camera: 13Megapixel.', 4990000, N'upload/samsung-galaxy-j7-sm-j700f-16gb-gold.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (67, N'Galaxy Grand Prime G531', 4, N'Hãng sản xuất: Samsung Galaxy - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-TFT Touchscreen (Cảm ứng) - Kích thước màn hình: 5inch - RAM: 1GB - Hệ điều hành: Android OS, v4.4.2 (KitKat) - Bộ vi xử lý : ARM Cortex-A53 (1.2 GHz Quad-Core) - Số sim : 2 Sim - 2 Sóng - Số lượng Cores: Quad Core (4 nhân) - Camera: 8Megapixel.', 3290000, N'upload/samsung-galaxy-grand-prime-g531-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (69, N'Nokia 6300', 3, N'Hãng sản xuất: Nokia - Kiểu dáng: Kiểu thẳng - Màn hình: 16M màu-TFT - Kích thước màn hình: 2inch - Số sim : 1 Sim - Camera: 2Megapixel - Thời gian đàm thoại: 3.5giờ.', 550000, N'upload/nokia-6300-silver.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (81, N'iPhone 7 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 20345000, N'upload/iphone6.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (82, N'iPhone 6 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 17090090, N'upload/iphone6.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (83, N'iPhone 8 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 18500000, N'upload/iphone6.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (84, N'iPhone 9 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 19999999, N'upload/iphone6.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (86, N'iPhone 6 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 190033000, N'upload/iphone-6-3-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (87, N'iPhone 10 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 23999999, N'upload/iphone6.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (91, N'iPhone 5 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 24990000, N'upload/iphone_5-_den_4f34e070-d767-4264-7331-14d23a0dff5a_master.jpg', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (92, N'Samsung Galaxy Note 7', 4, N'Hãng sản xuất: Samsung - Camera trước: 5Megapixel - Kiểu màn hình: 16M màu-Super AMOLED Touchscreen (Cảm ứng) - Kích thước màn hình: 5.5inch - RAM: 4GB - Hệ điều hành: Android OS, v6.0 (Marshmallow) - Chipset: Qualcomm MSM8996 Snapdragon 820 - Số sim : 1 Sim - Số core: Kryo (2.15 GHz Dual-core) & Kryo (1.6 GHz Dual-core) - Camera sau: 12Megapixel.', 18999000, N'upload/samsung-galaxy-note-7-2-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (93, N'Samsung Galaxy Note 8', 4, N'Hãng sản xuất: Samsung - Camera trước: 5Megapixel -  - Camera sau: 12Megapixel.', 18990000, N'upload/samsung-galaxy-s7-edge-1-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (94, N'Samsung Galaxy Note 9', 4, N'Hãng sản xuất: Samsung - Camera trước: 5Megapixel - Camera sau: 12Megapixel.', 19990000, N'upload/samsung-galaxy-s7-edge-1-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (95, N'Samsung Galaxy Note 10', 4, N'Hãng sản xuất: Samsung - Camera trước: 5Megapixel - Camera sau: 12Megapixel.', 20990000, N'upload/samsung-galaxy-s7-edge-1-400x460.png', 1)
INSERT [dbo].[product] ([product_id], [product_name], [category_id], [description], [price], [product_img], [user_id]) VALUES (100, N'iPhone 14 16GB', 5, N'Màn hình: LED-backlit IPS LCD, 4.7", Retina HD - Hệ điều hành: iOS 9 - Camera sau: 8 MP - Camera trước: 1.2 MP - CPU: Apple A8 2 nhân 64-bit, 1.4 GHz - RAM: 1 GB - Bộ nhớ trong: 16 GB - Hỗ trợ thẻ nhớ: Không - Thẻ SIM: 1 Sim, Nano SIM - Kết nối: WiFi, 3G, 4G LTE Cat 4 - Dung lượng pin: 1810 mAh - Thiết kế: Nguyên khối - Chức năng đặc biệt: Mở khóa bằng vân tay.', 32909999, N'upload/iphone-6-3-400x460.png', 1)
SET IDENTITY_INSERT [dbo].[product] OFF
/****** Object:  StoredProcedure [dbo].[use_SuaTTNQT]    Script Date: 11/16/2016 23:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[use_SuaTTNQT]
	@user_id int
,	@email nvarchar(100)
,	@passwd nvarchar(100)
,	@name nvarchar(100)
,	@phone int
,	@address nvarchar(200)
,	@lv int
AS
BEGIN
		IF(EXISTS(SELECT * FROM tbluser WHERE user_id = @user_id))
		BEGIN
				UPDATE tbluser SET email = @email
										,passwd = @passwd
										,name = @name
										,phone = @phone
										,address = @address
										,lv = @lv
					WHERE user_id = @user_id
					RETURN 1 -- Sửa thành công
		END
		ELSE 
			BEGIN
				RETURN 0 -- Chưa tồn tại
			END
		RETURN -1 --LOI HE THONG
END
GO
/****** Object:  StoredProcedure [dbo].[use_ThemNQT]    Script Date: 11/16/2016 23:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[use_ThemNQT]
	@email nvarchar(100)
,	@passwd nvarchar(100)
,	@name nvarchar(100)
,	@phone int
,	@address nvarchar(200)
,	@lv int
AS
BEGIN
		INSERT INTO tbluser(email, passwd, name, phone, address, lv) 
		VALUES (@email, @passwd, @name, @phone, @address, @lv)
		RETURN 1 -- Thêm thành công
		RETURN -1 -- Thêm không thành công
END
GO
/****** Object:  StoredProcedure [dbo].[use_XoaNQT]    Script Date: 11/16/2016 23:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[use_XoaNQT]
	@user_id int
AS
BEGIN
		IF(NOT EXISTS(SELECT * FROM tbluser WHERE user_id = @user_id))
		RETURN 0 -- Chưa tồn tại
		ELSE 
			BEGIN
					DELETE tbluser WHERE user_id = @user_id
					RETURN 1 -- Sửa thành công
			END
		RETURN -1 -- Sửa không thành công
END
GO
/****** Object:  StoredProcedure [dbo].[use_XoaDT]    Script Date: 11/16/2016 23:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[use_XoaDT]
	@product_id int
AS
BEGIN
		IF(NOT EXISTS(SELECT * FROM product WHERE product_id = @product_id))
		RETURN 0 -- Chưa tồn tại
		ELSE 
			BEGIN
					DELETE product WHERE product_id = @product_id
					RETURN 1 -- Sửa thành công
			END
		RETURN -1 -- Sửa không thành công
END
GO
/****** Object:  StoredProcedure [dbo].[use_ThemDT]    Script Date: 11/16/2016 23:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[use_ThemDT]
	@product_name nvarchar(100)
,	@category_id int
,	@description nvarchar(500)
,	@price int
,	@product_img nvarchar(100)
,	@user_id int
AS
BEGIN
		INSERT INTO product(product_name, category_id, description, price, product_img, user_id) 
		VALUES (@product_name, @category_id, @description, @price, @product_img, @user_id)
		RETURN 1 -- Thêm thành công
		RETURN -1 -- Thêm không thành công
END
GO
/****** Object:  StoredProcedure [dbo].[use_SuaTTDT]    Script Date: 11/16/2016 23:05:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[use_SuaTTDT]
	@product_id int
,	@product_name nvarchar(100)
,	@category_id int
,	@description nvarchar(500)
,	@price int
,	@product_img nvarchar(100)
,	@user_id int
AS
BEGIN
		IF(EXISTS(SELECT * FROM product WHERE product_id = @product_id))
		BEGIN
				UPDATE product SET product_name = @product_name
										,category_id = @category_id
										,description = @description
										,price = @price
										,product_img = @product_img
										,user_id = @user_id
					WHERE product_id = @product_id
					RETURN 1 -- Sửa thành công
		END
		ELSE 
			BEGIN
				RETURN 0 -- Chưa tồn tại
			END
		RETURN -1 --LOI HE THONG
END
GO
/****** Object:  Table [dbo].[product_img]    Script Date: 11/16/2016 23:05:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_img](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[product_img] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_product_img] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product_img] ON
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (1, 1, N'upload/iphone6.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (2, 1, N'upload/iphone6.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (3, 1, N'upload/iphone6.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (4, 1, N'upload/iphone6.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (5, 1, N'upload/iphone6.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (6, 2, N'upload/iphone6.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (7, 2, N'upload/iphone6.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (8, 2, N'upload/iphone6.jpg')
INSERT [dbo].[product_img] ([id], [product_id], [product_img]) VALUES (9, 2, N'upload/iphone6.jpg')
SET IDENTITY_INSERT [dbo].[product_img] OFF
/****** Object:  ForeignKey [FK_product_category]    Script Date: 11/16/2016 23:05:15 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
/****** Object:  ForeignKey [FK_product_img_product]    Script Date: 11/16/2016 23:05:15 ******/
ALTER TABLE [dbo].[product_img]  WITH CHECK ADD  CONSTRAINT [FK_product_img_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_img] CHECK CONSTRAINT [FK_product_img_product]
GO
