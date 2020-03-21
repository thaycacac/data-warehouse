/*
Author: Thaycacac
*/

INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (2, N'Phạm Ngọc', N'Hòa', CAST(N'1998-03-20' AS Date), N'0968038714   ', 1)
INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (3, N'Đỗ Quang', N'Hiệp', CAST(N'1997-02-10' AS Date), N'0963125474   ', 0)
INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (4, N'Trần Quang', N'Nhật', CAST(N'1998-12-12' AS Date), N'0125479754   ', 1)
INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (5, N'Phan Văn', N'Đức', CAST(N'1998-10-12' AS Date), N'0547896147   ', 0)
INSERT [dbo].[Customers] ([id], [first_name], [last_name], [date_of_birdth], [phone], [gender]) VALUES (6, N'Nguyễn Hải', N'Nam', CAST(N'1998-01-05' AS Date), N'0984481349   ', 1)
SET IDENTITY_INSERT [dbo].[Customers] OFF
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (1, 1, 2)
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (1, 2, 1)
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (1, 3, 4)
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (2, 1, 2)
INSERT [dbo].[MachineMove] ([move_id], [machine_id], [quantity]) VALUES (2, 2, 3)
SET IDENTITY_INSERT [dbo].[Machines] ON 

INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (1, N'49 Hàng Bè - Hàng Bạc', N'Hà Nội', N'Hoàn Kiếm', N'Việt Nam')
INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (2, N'186 Thái Thịnh - Láng Hạ', N'Hà Nội', N'Đống Đa', N'Việt Nam')
INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (3, N'35 Lương Ngọc Quyên - Hàng Buồm', N'Hà Nội', N'Hoàn Kiếm', N'Việt Nam')
INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (4, N'67 Hàng Trống - Hàng Buồm', N'Hà Nội', N'Hoàn Kiếm', N'Việt Nam')
INSERT [dbo].[Machines] ([id], [address], [city], [state], [country]) VALUES (5, N'27 Đinh Tiên Hoàng - Hàng Bạc', N'Hà Nội', N'Hoàn Kiếm', N'Việt Nam')
SET IDENTITY_INSERT [dbo].[Machines] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (1, N'Tam sinh tam thế - chẩm thượng thư', 100000, N'Cổ trang                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (2, N'Tam sinh tam thế - thập lý đào hoa', 150000, N'Cổ trang                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (3, N'Vô cùng thích anh', 50000, N'Tình cảm                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (4, N'Đại dịch cúm', 200000, N'Hành động                                                                                                                                                                                                                                                      ')
INSERT [dbo].[Movies] ([id], [title], [bill], [category]) VALUES (5, N'Diệp vấn ', 75000, N'Hành động                                                                                                                                                                                                                                                      ')
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-20' AS Date), 1, 2, 1)
INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-21' AS Date), 2, 3, 2)
INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-21' AS Date), 1, 2, 3)
INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-22' AS Date), 2, 2, 9)
INSERT [dbo].[Receipt] ([return_date], [machine_id], [customer_id], [id]) VALUES (CAST(N'2020-03-22' AS Date), 1, 3, 10)
SET IDENTITY_INSERT [dbo].[Receipt] OFF
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (1, 1, 1, 100000)
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (1, 2, 1, 150000)
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (2, 1, 1, 300000)
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (2, 2, 2, 75000)
INSERT [dbo].[ReceiptDetail] ([receipt_id], [rental_id], [move_id], [amount]) VALUES (2, 1, 2, 300000)
SET IDENTITY_INSERT [dbo].[Rental] ON 

INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (2, 1, CAST(N'2020-02-18' AS Date), 1)
INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (2, 2, CAST(N'2020-02-19' AS Date), 2)
INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (3, 2, CAST(N'2020-02-19' AS Date), 5)
INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (3, 1, CAST(N'2020-02-19' AS Date), 6)
INSERT [dbo].[Rental] ([customer_id], [machine_id], [rental_date], [id]) VALUES (3, 2, CAST(N'2020-02-20' AS Date), 7)
SET IDENTITY_INSERT [dbo].[Rental] OFF
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (1, 1, 2, 200000)
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (1, 2, 1, 100000)
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (2, 1, 1, 150000)
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (2, 2, 2, 300000)
INSERT [dbo].[RentalMovies] ([rental_id], [move_id], [quantity], [price]) VALUES (2, 3, 1, 75000)