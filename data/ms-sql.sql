CREATE TABLE [dbo].[Factory](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](max) NULL,
    [Description] [nvarchar](max) NULL,
    CONSTRAINT [PK_Statuses] PRIMARY KEY CLUSTERED ([Id] ASC)
)

CREATE TABLE [dbo].[Unit](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](max) NULL,
    [FactoryId] [int] NULL,
    CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED ([Id] ASC)
)
ALTER TABLE [dbo].[Unit] WITH CHECK ADD CONSTRAINT [FK_Unit_Factory_FactoryId] FOREIGN KEY([FactoryId])
    REFERENCES [dbo].[Factory] ([Id])

CREATE TABLE [dbo].[Tank](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Name] [nvarchar](max) NULL,
    [Volume] [int] NOT NULL,
    [MaxVolume] [int] NOT NULL,
    [UnitId] [int] NULL,
    CONSTRAINT [PK_Tank] PRIMARY KEY CLUSTERED ([Id] ASC)
)
ALTER TABLE [dbo].[Tank] WITH CHECK ADD CONSTRAINT [FK_Tank_Unit_UnitId] FOREIGN KEY([UnitId])
    REFERENCES [dbo].[Unit] ([Id])

INSERT [dbo].[Factory] ([Name], [Description]) VALUES (N'МНПЗ', N'Московский нефтеперерабатывающий завод')
INSERT [dbo].[Factory] ([Name], [Description]) VALUES (N'ОНПЗ', N'Омский нефтеперерабатывающий завод')

INSERT [dbo].[Unit] ([Name], [FactoryId]) VALUES (N'ГФУ-1', 1)
INSERT [dbo].[Unit] ([Name], [FactoryId]) VALUES (N'ГФУ-2', 1)
INSERT [dbo].[Unit] ([Name], [FactoryId]) VALUES (N'Установка АВТ-6', 2)

INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 1', 1500, 2000, 1)
INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 2', 2500, 3000, 1)
INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Доп. резервуар 24', 3000, 3000, 2)
INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 35', 3000, 3000, 2)
INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 47', 4000, 5000, 2)
INSERT [dbo].[Tank] ([Name], [Volume], [MaxVolume], [UnitId]) VALUES (N'Резервуар 256', 500, 500, 3)
