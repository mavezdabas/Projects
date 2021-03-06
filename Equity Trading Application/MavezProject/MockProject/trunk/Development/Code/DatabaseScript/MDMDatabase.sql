USE [MasterDataManagement]
GO
/****** Object:  Table [dbo].[User]    Script Date: 02/26/2014 11:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[LoginId] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
	[DateOfJoining] [datetime] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SourceSystem]    Script Date: 02/26/2014 11:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SourceSystem](
	[SystemId] [int] IDENTITY(1,1) NOT NULL,
	[SystemName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SourceSystem] PRIMARY KEY CLUSTERED 
(
	[SystemId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 02/26/2014 11:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 02/26/2014 11:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[CurrencyId] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[CurrencyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommodityType]    Script Date: 02/26/2014 11:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommodityType](
	[CommodityTypeId] [int] NOT NULL,
	[CommodityTypeName] [nvarchar](100) NOT NULL,
	[CommodityClass] [nvarchar](100) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Version] [int] NOT NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK_CommodityType] PRIMARY KEY CLUSTERED 
(
	[CommodityTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessMapping]    Script Date: 02/26/2014 11:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusinessMapping](
	[EntityType] [char](10) NOT NULL,
	[EntityId] [int] NOT NULL,
	[MappingID] [int] IDENTITY(1,1) NOT NULL,
	[MappingString] [nvarchar](100) NOT NULL,
	[MappingDescription] [nvarchar](max) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[SourceSystemID] [int] NOT NULL,
	[IsEnabledFlag] [bit] NOT NULL,
	[IsDefaultMapping] [bit] NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Business_] PRIMARY KEY CLUSTERED 
(
	[MappingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Market]    Script Date: 02/26/2014 11:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Market](
	[MarketId] [int] IDENTITY(1,1) NOT NULL,
	[MarketName] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Version] [int] NOT NULL,
	[LastUpdatedBy] [int] NOT NULL,
	[LastUpdatedDate] [datetime] NULL,
	[IsCurrentVersion] [bit] NOT NULL,
	[LocationId] [int] NOT NULL,
	[CurrencyId] [int] NOT NULL,
 CONSTRAINT [PK_Market] PRIMARY KEY CLUSTERED 
(
	[MarketId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarketCommodityMap]    Script Date: 02/26/2014 11:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarketCommodityMap](
	[MarketCommodityMapId] [int] IDENTITY(1,1) NOT NULL,
	[MarketId] [int] NOT NULL,
	[CommodityTypeId] [int] NOT NULL,
 CONSTRAINT [PK_MarketCommodityRelationship] PRIMARY KEY CLUSTERED 
(
	[MarketCommodityMapId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_BusinessMapping_LastUpdatedDate]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[BusinessMapping] ADD  CONSTRAINT [DF_BusinessMapping_LastUpdatedDate]  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  Default [DF_CommodityType_StartDate]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[CommodityType] ADD  CONSTRAINT [DF_CommodityType_StartDate]  DEFAULT (((1)-(1))-(2004)) FOR [StartDate]
GO
/****** Object:  Default [DF_CommodityType_LastUpdatedDate]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[CommodityType] ADD  CONSTRAINT [DF_CommodityType_LastUpdatedDate]  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  Default [DF_Currency_LastUpdatedDate]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[Currency] ADD  CONSTRAINT [DF_Currency_LastUpdatedDate]  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  Default [DF_Location_LastUpdatedDate]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[Location] ADD  CONSTRAINT [DF_Location_LastUpdatedDate]  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  Default [DF_Market_StartDate]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[Market] ADD  CONSTRAINT [DF_Market_StartDate]  DEFAULT (((1)-(1))-(2004)) FOR [StartDate]
GO
/****** Object:  Default [DF_Market_LastUpdatedDate]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[Market] ADD  CONSTRAINT [DF_Market_LastUpdatedDate]  DEFAULT (getdate()) FOR [LastUpdatedDate]
GO
/****** Object:  ForeignKey [FK_Business_SourceSystem]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[BusinessMapping]  WITH CHECK ADD  CONSTRAINT [FK_Business_SourceSystem] FOREIGN KEY([SourceSystemID])
REFERENCES [dbo].[SourceSystem] ([SystemId])
GO
ALTER TABLE [dbo].[BusinessMapping] CHECK CONSTRAINT [FK_Business_SourceSystem]
GO
/****** Object:  ForeignKey [FK_Business_User]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[BusinessMapping]  WITH CHECK ADD  CONSTRAINT [FK_Business_User] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[BusinessMapping] CHECK CONSTRAINT [FK_Business_User]
GO
/****** Object:  ForeignKey [FK_CommodityType_User]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[CommodityType]  WITH CHECK ADD  CONSTRAINT [FK_CommodityType_User] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[CommodityType] CHECK CONSTRAINT [FK_CommodityType_User]
GO
/****** Object:  ForeignKey [FK_Currency_User]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[Currency]  WITH CHECK ADD  CONSTRAINT [FK_Currency_User] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Currency] CHECK CONSTRAINT [FK_Currency_User]
GO
/****** Object:  ForeignKey [FK_Location_User]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_User] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_User]
GO
/****** Object:  ForeignKey [FK_Market_Currency]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[Market]  WITH CHECK ADD  CONSTRAINT [FK_Market_Currency] FOREIGN KEY([CurrencyId])
REFERENCES [dbo].[Currency] ([CurrencyId])
GO
ALTER TABLE [dbo].[Market] CHECK CONSTRAINT [FK_Market_Currency]
GO
/****** Object:  ForeignKey [FK_Market_Location]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[Market]  WITH CHECK ADD  CONSTRAINT [FK_Market_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[Market] CHECK CONSTRAINT [FK_Market_Location]
GO
/****** Object:  ForeignKey [FK_Market_User]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[Market]  WITH CHECK ADD  CONSTRAINT [FK_Market_User] FOREIGN KEY([LastUpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Market] CHECK CONSTRAINT [FK_Market_User]
GO
/****** Object:  ForeignKey [FK_MarketCommodityMap_CommodityType]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[MarketCommodityMap]  WITH CHECK ADD  CONSTRAINT [FK_MarketCommodityMap_CommodityType] FOREIGN KEY([CommodityTypeId])
REFERENCES [dbo].[CommodityType] ([CommodityTypeId])
GO
ALTER TABLE [dbo].[MarketCommodityMap] CHECK CONSTRAINT [FK_MarketCommodityMap_CommodityType]
GO
/****** Object:  ForeignKey [FK_MarketCommodityMap_Market]    Script Date: 02/26/2014 11:40:23 ******/
ALTER TABLE [dbo].[MarketCommodityMap]  WITH CHECK ADD  CONSTRAINT [FK_MarketCommodityMap_Market] FOREIGN KEY([MarketId])
REFERENCES [dbo].[Market] ([MarketId])
GO
ALTER TABLE [dbo].[MarketCommodityMap] CHECK CONSTRAINT [FK_MarketCommodityMap_Market]
GO
