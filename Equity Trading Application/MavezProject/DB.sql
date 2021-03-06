USE [EquityTradingDB]
GO
/****** Object:  Table [dbo].[AllocationMethod]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllocationMethod](
	[MethodID] [int] NOT NULL,
	[MethodName] [nchar](100) NOT NULL,
 CONSTRAINT [PK_AllocationMethod] PRIMARY KEY CLUSTERED 
(
	[MethodID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Securities]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Securities](
	[SecurityID] [int] IDENTITY(1,1) NOT NULL,
	[SecurityName] [nvarchar](100) NOT NULL,
	[SecuritySymbol] [nvarchar](50) NOT NULL,
	[LastTradedPrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Securities] PRIMARY KEY CLUSTERED 
(
	[SecurityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlocksForExecution]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlocksForExecution](
	[BlockID] [int] NOT NULL,
	[TraderID] [int] NOT NULL,
	[SecurityID] [int] NOT NULL,
	[BlockSide] [nvarchar](50) NOT NULL,
	[BlockStatus] [int] NOT NULL,
	[LimitPrice] [decimal](18, 2) NOT NULL,
	[StopPrice] [decimal](18, 2) NOT NULL,
	[TotalQuantity] [int] NOT NULL,
	[ExecutedQuantity] [int] NOT NULL,
	[OpenQuantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blocks]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blocks](
	[BlockID] [int] IDENTITY(1,1) NOT NULL,
	[TraderID] [int] NOT NULL,
	[SecurityID] [int] NOT NULL,
	[BlockSide] [nvarchar](50) NOT NULL,
	[BlockStatus] [int] NOT NULL,
	[LimitPrice] [decimal](18, 2) NOT NULL,
	[StopPrice] [decimal](18, 2) NOT NULL,
	[TotalQuantity] [int] NOT NULL,
	[ExecutedQuantity] [int] NOT NULL,
	[OpenQuantity] [int] NOT NULL,
 CONSTRAINT [PK_Blocks] PRIMARY KEY CLUSTERED 
(
	[BlockID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProposedBlocks]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProposedBlocks](
	[ProposedBlockID] [int] IDENTITY(1,1) NOT NULL,
	[SecurityID] [int] NOT NULL,
	[BlockSide] [nvarchar](50) NOT NULL,
	[LimitPrice] [decimal](18, 2) NOT NULL,
	[StopPrice] [decimal](18, 2) NOT NULL,
	[TotalQuantity] [int] NOT NULL,
 CONSTRAINT [PK_ProposedBlocks] PRIMARY KEY CLUSTERED 
(
	[ProposedBlockID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Portfolio]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portfolio](
	[PortfolioID] [int] IDENTITY(1,1) NOT NULL,
	[PortfolioName] [nvarchar](50) NOT NULL,
	[ClientID] [int] NULL,
 CONSTRAINT [PK_Portfolio] PRIMARY KEY CLUSTERED 
(
	[PortfolioID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityConfigurationDetails]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityConfigurationDetails](
	[MaxPriceSpread] [int] NOT NULL,
	[MaxExecutionNumber] [int] NOT NULL,
	[MaxExecutionInterval] [timestamp] NOT NULL,
	[FullyExecutedOrderProbability] [int] NOT NULL,
	[SecurityID] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SecurityConfigurationDetails] ON [dbo].[SecurityConfigurationDetails] 
(
	[MaxPriceSpread] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExecutedBlocks]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExecutedBlocks](
	[ExecutedBlockID] [int] IDENTITY(1,1) NOT NULL,
	[BlockID] [int] NOT NULL,
	[ExecutedQuantity] [int] NOT NULL,
	[TransactionPrice] [decimal](18, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[TransactionTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ExecutedBlocks] PRIMARY KEY CLUSTERED 
(
	[ExecutedBlockID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[SecurityID] [int] NOT NULL,
	[Side] [nvarchar](50) NOT NULL,
	[OrderType] [nvarchar](50) NOT NULL,
	[OrderQualifier] [nvarchar](50) NOT NULL,
	[TraderID] [int] NULL,
	[ManagerID] [int] NOT NULL,
	[TotalQuantity] [int] NOT NULL,
	[OpenQuantity] [int] NOT NULL,
	[AllocatedQuantity] [int] NOT NULL,
	[StopPrice] [decimal](18, 2) NULL,
	[LimitPrice] [decimal](18, 2) NULL,
	[Notes] [nvarchar](500) NULL,
	[Notify] [bit] NULL,
	[ClientID] [int] NOT NULL,
	[PortfolioID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
	[BlockID] [int] NULL,
	[BookTime] [timestamp] NULL,
	[TransactionPrice] [decimal](18, 2) NULL,
	[TransactionTime] [datetime] NULL,
	[AccountType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderAllocations]    Script Date: 03/27/2014 17:05:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderAllocations](
	[AllocationID] [int] IDENTITY(1,1) NOT NULL,
	[ExecutionID] [int] NOT NULL,
	[BlockID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[AllocatedQuantity] [int] NOT NULL,
	[TransactionFee] [decimal](18, 2) NOT NULL,
	[TransactionPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_OrderAllocations] PRIMARY KEY CLUSTERED 
(
	[AllocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Blocks_TotalQuatity]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Blocks] ADD  CONSTRAINT [DF_Blocks_TotalQuatity]  DEFAULT ((0)) FOR [TotalQuantity]
GO
/****** Object:  Default [DF_Blocks_ExecutedQuantity]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Blocks] ADD  CONSTRAINT [DF_Blocks_ExecutedQuantity]  DEFAULT ((0)) FOR [ExecutedQuantity]
GO
/****** Object:  Default [DF_Blocks_OpenQuantity]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Blocks] ADD  CONSTRAINT [DF_Blocks_OpenQuantity]  DEFAULT ((0)) FOR [OpenQuantity]
GO
/****** Object:  Default [DF_ProposedBlocks_TotalQuantity]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[ProposedBlocks] ADD  CONSTRAINT [DF_ProposedBlocks_TotalQuantity]  DEFAULT ((0)) FOR [TotalQuantity]
GO
/****** Object:  Default [DF_ExecutedBlocks_ExecutedQuantity]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[ExecutedBlocks] ADD  CONSTRAINT [DF_ExecutedBlocks_ExecutedQuantity]  DEFAULT ((0)) FOR [ExecutedQuantity]
GO
/****** Object:  Default [DF_Orders_TotalQuantity]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_TotalQuantity]  DEFAULT ((0)) FOR [TotalQuantity]
GO
/****** Object:  Default [DF_Orders_OpenQuantity]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OpenQuantity]  DEFAULT ((0)) FOR [OpenQuantity]
GO
/****** Object:  Default [DF_Orders_AllocatedQuantity]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_AllocatedQuantity]  DEFAULT ((0)) FOR [AllocatedQuantity]
GO
/****** Object:  Default [DF_OrderAllocations_AllocatedQuantity]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[OrderAllocations] ADD  CONSTRAINT [DF_OrderAllocations_AllocatedQuantity]  DEFAULT ((0)) FOR [AllocatedQuantity]
GO
/****** Object:  ForeignKey [FK_Blocks_Securities]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Blocks]  WITH CHECK ADD  CONSTRAINT [FK_Blocks_Securities] FOREIGN KEY([SecurityID])
REFERENCES [dbo].[Securities] ([SecurityID])
GO
ALTER TABLE [dbo].[Blocks] CHECK CONSTRAINT [FK_Blocks_Securities]
GO
/****** Object:  ForeignKey [FK_ProposedBlocks_Securities]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[ProposedBlocks]  WITH CHECK ADD  CONSTRAINT [FK_ProposedBlocks_Securities] FOREIGN KEY([SecurityID])
REFERENCES [dbo].[Securities] ([SecurityID])
GO
ALTER TABLE [dbo].[ProposedBlocks] CHECK CONSTRAINT [FK_ProposedBlocks_Securities]
GO
/****** Object:  ForeignKey [FK_Portfolio_Client]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Portfolio]  WITH CHECK ADD  CONSTRAINT [FK_Portfolio_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Portfolio] CHECK CONSTRAINT [FK_Portfolio_Client]
GO
/****** Object:  ForeignKey [FK_User_UserRole]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([RoleID])
REFERENCES [dbo].[UserRole] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO
/****** Object:  ForeignKey [FK_SecurityConfigurationDetails_Securities]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[SecurityConfigurationDetails]  WITH CHECK ADD  CONSTRAINT [FK_SecurityConfigurationDetails_Securities] FOREIGN KEY([SecurityID])
REFERENCES [dbo].[Securities] ([SecurityID])
GO
ALTER TABLE [dbo].[SecurityConfigurationDetails] CHECK CONSTRAINT [FK_SecurityConfigurationDetails_Securities]
GO
/****** Object:  ForeignKey [FK_ExecutedBlocks_Blocks]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[ExecutedBlocks]  WITH CHECK ADD  CONSTRAINT [FK_ExecutedBlocks_Blocks] FOREIGN KEY([BlockID])
REFERENCES [dbo].[Blocks] ([BlockID])
GO
ALTER TABLE [dbo].[ExecutedBlocks] CHECK CONSTRAINT [FK_ExecutedBlocks_Blocks]
GO
/****** Object:  ForeignKey [FK_Orders_Blocks]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Blocks] FOREIGN KEY([BlockID])
REFERENCES [dbo].[Blocks] ([BlockID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Blocks]
GO
/****** Object:  ForeignKey [FK_Orders_Client]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Client]
GO
/****** Object:  ForeignKey [FK_Orders_Portfolio]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Portfolio] FOREIGN KEY([PortfolioID])
REFERENCES [dbo].[Portfolio] ([PortfolioID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Portfolio]
GO
/****** Object:  ForeignKey [FK_Orders_Securities]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Securities] FOREIGN KEY([SecurityID])
REFERENCES [dbo].[Securities] ([SecurityID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Securities]
GO
/****** Object:  ForeignKey [FK_Orders_Status]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
/****** Object:  ForeignKey [FK_Orders_User]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User] FOREIGN KEY([ManagerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User]
GO
/****** Object:  ForeignKey [FK_Orders_User1]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_User1] FOREIGN KEY([TraderID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_User1]
GO
/****** Object:  ForeignKey [FK_OrderAllocations_Blocks]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[OrderAllocations]  WITH CHECK ADD  CONSTRAINT [FK_OrderAllocations_Blocks] FOREIGN KEY([BlockID])
REFERENCES [dbo].[Blocks] ([BlockID])
GO
ALTER TABLE [dbo].[OrderAllocations] CHECK CONSTRAINT [FK_OrderAllocations_Blocks]
GO
/****** Object:  ForeignKey [FK_OrderAllocations_ExecutedBlocks]    Script Date: 03/27/2014 17:05:22 ******/
ALTER TABLE [dbo].[OrderAllocations]  WITH CHECK ADD  CONSTRAINT [FK_OrderAllocations_ExecutedBlocks] FOREIGN KEY([ExecutionID])
REFERENCES [dbo].[ExecutedBlocks] ([ExecutedBlockID])
GO
ALTER TABLE [dbo].[OrderAllocations] CHECK CONSTRAINT [FK_OrderAllocations_ExecutedBlocks]
GO
