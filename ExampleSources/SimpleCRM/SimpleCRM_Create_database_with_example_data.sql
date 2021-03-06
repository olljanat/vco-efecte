CREATE DATABASE [SimpleCRM]
GO
USE [SimpleCRM]
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[City] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[GivenName] [varchar](20) NOT NULL,
	[Surname] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[UserInCompany](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE VIEW [dbo].[v_UserInCompany]
AS
SELECT        UIC.Id, U.Email, C.CompanyName
FROM            dbo.UserInCompany AS UIC INNER JOIN
                         dbo.[User] AS U ON U.UserId = UIC.CompanyId INNER JOIN
                         dbo.Company AS C ON C.CompanyId = UIC.CompanyId

GO
SET IDENTITY_INSERT [dbo].[Company] ON 
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (1, N'AM/PM Camp', N'Washington', N'United States')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (2, N'Angel''s', N'Hollywood', N'United States')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (3, N'Foreman & Clark', N'Los Angeles', N'United States')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (4, N'Gantos', N'Hugo', N'United States')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (5, N'Golden Joy', N'Gainesville', N'United States')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (6, N'Jitney Jungle', N'Huntington', N'United States')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (7, N'Landskip Yard Care', N'Oakland', N'United States')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (8, N'Rainbow Records', N'La Place', N'United States')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (9, N'Rogers Food Stores', N'Marlboro', N'United States')
GO
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [City], [Country]) VALUES (10, N'Town and Country Convenience Stores', N'Richwood', N'United States')
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO

SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (1, N'Clement', N'Fenstermacher', N'ClementDFenstermacher@superrito.com')
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (2, N'Carrie', N'Durham', N'CarrieBDurham@dayrep.com')
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (3, N'Jessica', N'Fernandes', N'JessicaEFernandes@dayrep.com')
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (4, N'Justin', N'Lewis', N'JustinMLewis@fleckens.hu')
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (5, N'Thelma', N'Davison', N'ThelmaDDavison@jourrapide.com')
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (6, N'Arthur', N'Jones', N'ArthurAJones@einrot.com')
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (7, N'Benjamin', N'Watson', N'BenjaminSWatson@teleworm.us')
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (8, N'Thomas', N'Wiley', N'ThomasCWiley@armyspy.com')
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (9, N'Jean', N'Pulliam', N'JeanEPulliam@teleworm.us')
GO
INSERT [dbo].[User] ([UserId], [GivenName], [Surname], [Email]) VALUES (10, N'Marion', N'Scales', N'MarionWScales@jourrapide.com')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO

SET IDENTITY_INSERT [dbo].[UserInCompany] ON 
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (2, 2, 2)
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (3, 3, 3)
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (4, 4, 4)
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (5, 5, 5)
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (6, 6, 6)
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (7, 7, 7)
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (8, 8, 8)
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (9, 9, 9)
GO
INSERT [dbo].[UserInCompany] ([Id], [UserId], [CompanyId]) VALUES (10, 10, 10)
GO
SET IDENTITY_INSERT [dbo].[UserInCompany] OFF
GO
ALTER TABLE [dbo].[UserInCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserInCompany_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[UserInCompany] CHECK CONSTRAINT [FK_UserInCompany_Company]
GO
ALTER TABLE [dbo].[UserInCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserInCompany_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserInCompany] CHECK CONSTRAINT [FK_UserInCompany_User]
GO
