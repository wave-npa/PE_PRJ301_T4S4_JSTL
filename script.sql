USE [master]
GO
drop database UserManagement
go

CREATE DATABASE [UserManagement] 

USE [UserManagement]
GO

delete tblUsers  where 1=1
go


CREATE TABLE [dbo].[tblUsers](
	[userID] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'admin', N'Toi la admin', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'Hoadnt', N'Hoa Doan', N'1', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE130363', N'Ngo Ha Tri Bao', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140103', N'Phuoc Ha', N'1', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140119', N'Trai Nguyen', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140130', N'Tam Tran', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140201', N'PHAM HOANG TU', N'1', N'AD', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE140969', N'Nguyen Gia Tin', N'123', N'US', 1)
INSERT [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [status]) VALUES (N'SE150443', N'LE MINH KHOA', N'1', N'US', 1)
GO

CREATE TABLE [dbo].[tblProducts] (
  [ProductID] VARCHAR(4) PRIMARY KEY,
  [Name] VARCHAR(255),
  [Price] DECIMAL(10,2),
  [Quantity] INT
);
GO

CREATE TABLE [dbo].[tblOrders] (
  [OrderID] INT PRIMARY KEY IDENTITY(1,1),
  [UserID] [nvarchar](50) FOREIGN KEY REFERENCES tblUsers(UserID),
  [Date] [nvarchar](50),
  [ProductID] VARCHAR(4) FOREIGN KEY REFERENCES [tblProducts](ProductID),  
  [Price] DECIMAL(10,2),
  [Quantity] INT,
  [Total] DECIMAL(10,2)
);
GO

INSERT [dbo].[tblProducts] ([ProductID], [Name], [Price], [Quantity]) VALUES ('F01', 'Coin Flower', 20.00, 100000)
INSERT [dbo].[tblProducts] ([ProductID], [Name], [Price], [Quantity]) VALUES ('F02', 'Sun Flower', 30.00, 100000)
INSERT [dbo].[tblProducts] ([ProductID], [Name], [Price], [Quantity]) VALUES ('F03', 'Daisy Flower', 15.00, 100000)
INSERT [dbo].[tblProducts] ([ProductID], [Name], [Price], [Quantity]) VALUES ('F04', 'Rose Flower', 50.00, 100000)

drop TABLE [dbo].[tblOrders]
drop TABLE [dbo].[tblProducts]