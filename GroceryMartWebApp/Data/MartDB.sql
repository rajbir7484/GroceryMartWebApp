GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (1, N'FV001', N'Fruits & Vegetables')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (2, N'BV002', N'Beverages')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (3, N'ST003', N'Staples')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (4, N'HC004', N'Home Care')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryCode], [CategoryName]) VALUES (5, N'PC005', N'Personal Care')
GO

SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName]) VALUES (1, N'Reliance Retail')
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName]) VALUES (2, N'Nescafe')
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName]) VALUES (3, N'Good Life')
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName]) VALUES (4, N'Harpic')
GO
INSERT [dbo].[Company] ([CompanyID], [CompanyName]) VALUES (5, N'Dove')
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (1, N'Pineapple Queen 1 pc', 10, 1, 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (2, N'Kiwi Imported 6 Pcs (Approx 400 g - 550 g)', 5, 1, 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (3, N'Green Capsicum 500 g', 1, 1, 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (4, N'Strawberry (Pack) (Approx 170 g - 250 g)', 3, 1, 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (5, N'Onion-1 kg', 1, 1, 1)
GO

INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (6, N'Nescafe Classic Instant Coffee 100 g (Jar)', 7, 2, 2)
GO

INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (7, N'Maida 500 g', 1, 3, 1)
GO

INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (8, N'Besan 500 g', 1, 3, 1)
GO

INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (9, N'Good Life Refined Sunflower Oil 1 L', 3, 3, 3)
GO

INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (10, N'Good Life Moong Dal 500 g', 1, 3, 3)
GO

INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (11, N'Harpic Floral Disinfectant Bathroom Cleaner 500 ml', 1, 4, 4)

INSERT [dbo].[Product] ([ProductID], [ProductName], [Price], [CategoryID], [CompanyID]) VALUES (12, N'Dove Hair Therapy Daily Shine Shampoo 650 ml', 4, 5, 5)
GO


SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (1, 1, 2, N'Alex ', N'8596888856', CAST(N'2021-1-17T00:11:00.0000000' AS DateTime2))
GO

INSERT [dbo].[Order] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (2, 2, 2, N'Alex ', N'9999369156', CAST(N'2021-1-17T00:11:00.0000000' AS DateTime2))
GO

INSERT [dbo].[Order] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (3, 9, 1, N'Rajbir ', N'8899632116', CAST(N'2021-2-22T00:18:00.0000000' AS DateTime2))
GO

INSERT [dbo].[Order] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (4, 12, 2, N'Rajbir ', N'6414140121', CAST(N'2021-2-22T00:18:00.0000000' AS DateTime2))
GO

INSERT [dbo].[Order] ([OrderID], [ProductID], [Quantity], [CustomerName], [ContactNo], [OrderDate]) VALUES (5, 6, 1, N'Rajbir ', N'7845441102', CAST(N'2021-2-22T00:18:00.0000000' AS DateTime2))
GO

SET IDENTITY_INSERT [dbo].[Order] OFF
GO