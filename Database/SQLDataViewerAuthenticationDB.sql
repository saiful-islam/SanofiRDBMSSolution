USE [master]
GO
/****** Object:  Database [SQLDataViewerAuthentication]    Script Date: 03/06/2015 14:55:54 ******/
CREATE DATABASE [SQLDataViewerAuthentication] ON  PRIMARY 
( NAME = N'SQLDataViewerAuthentication', FILENAME = N'D:\Data\SQLDataViewerAuthentication.mdf' , SIZE = 19456KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SQLDataViewerAuthentication_log', FILENAME = N'D:\Data\SQLDataViewerAuthentication.ldf' , SIZE = 57664KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SQLDataViewerAuthentication].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET ARITHABORT OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET  DISABLE_BROKER
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET  READ_WRITE
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET RECOVERY FULL
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET  MULTI_USER
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SQLDataViewerAuthentication] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'SQLDataViewerAuthentication', N'ON'
GO
USE [SQLDataViewerAuthentication]
GO
/****** Object:  User [SQLDataViewer]    Script Date: 03/06/2015 14:55:54 ******/
CREATE USER [SQLDataViewer] FOR LOGIN [SQLDataViewer] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [vc]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [vc] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 03/06/2015 14:55:54 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  UserDefinedFunction [vc].[GetXmlFromScript]    Script Date: 03/06/2015 14:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [vc].[GetXmlFromScript](@script nvarchar(max))
returns xml
begin

	set @script=replace(@script,'&','&amp;')
	set @script=replace(@script,'"','&quot;')
	set @script=replace(@script,'<','&lt;')
	set @script=replace(@script,'>','&gt;')
	
	
    return (CONVERT([xml],((('<script>'+char((10)))+@script)+char((10)))+'</script>',(0)))
	

end
GO
/****** Object:  UserDefinedFunction [vc].[GetRenamedScript]    Script Date: 03/06/2015 14:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [vc].[GetRenamedScript]
(
	@schema varchar(200),
	@oldName varchar(200),
	@newName varchar(200),
	@objectScript nvarchar(max)
)
returns nvarchar(max)
begin
	
	declare @newFullName varchar(500)=quotename(@schema)+'.'+quotename(@newName)


	declare @lastPatIndex int=charindex(@oldName,@objectScript)
	if @lastPatIndex=0
		set @lastPatIndex=charindex(quotename(@oldName),@objectScript)

	declare @oldFullNames table
	(
		Id int,
		OldFullName varchar(500)
	)

	insert into  @oldFullNames
	values
	(6,quotename(@schema)+'.'+quotename(@oldName)),
	(5,@schema+'.'+quotename(@oldName)),
	(4,@schema+'.'+@oldName),
	(3,quotename(@schema)+'.'+@oldName),
	(2,quotename(@oldName)),
	(1,@oldName)


	declare @max int
	select @max=max(id) from @oldFullNames

	while(@max>0)
	begin
		
		declare @oldFullName varchar(400)
		declare @index int

		select @oldFullName=OldFullName from @oldFullNames where Id=@max
		set @max=@max-1

		set @index=charindex(@oldFullName,@objectScript)
		
		if @index=0 or @index>@lastPatIndex
			continue
		else 
		begin 
			set @objectScript=stuff(@objectScript,@index,len(@oldFullName),@newFullName)
			break
		end

	end

	

	return @objectScript

end
GO
/****** Object:  Table [vc].[ObjectDropedPeriodRange]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [vc].[ObjectDropedPeriodRange](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ObjectId] [int] NOT NULL,
	[StartDatetime] [datetime] NOT NULL,
	[EndDatetime] [datetime] NULL,
 CONSTRAINT [PK__ObjectDr__3214EC0733AA9866] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [vc].[ObjectDropedPeriodRange] ON
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (1, 10028, CAST(0x0000A45000F9B0C2 AS DateTime), CAST(0x0000A45000FB4D83 AS DateTime))
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (2, 10027, CAST(0x0000A45000F9B682 AS DateTime), CAST(0x0000A45000FB4D4B AS DateTime))
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (3, 10030, CAST(0x0000A45000F9CF52 AS DateTime), CAST(0x0000A45000FB4D98 AS DateTime))
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (4, 10029, CAST(0x0000A45000F9D422 AS DateTime), CAST(0x0000A45000FB4D8C AS DateTime))
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (5, 10045, CAST(0x0000A4500101876D AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (6, 10088, CAST(0x0000A4500101876E AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (7, 10089, CAST(0x0000A4500101876F AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (8, 10063, CAST(0x0000A45001018770 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (9, 10035, CAST(0x0000A4500101877B AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (10, 10104, CAST(0x0000A45001018789 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (11, 10085, CAST(0x0000A45001018A33 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (12, 10042, CAST(0x0000A4500101B669 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (13, 10038, CAST(0x0000A4500101BAAA AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (14, 10037, CAST(0x0000A4500101BEE6 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (15, 10057, CAST(0x0000A4500101C4F0 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (16, 10046, CAST(0x0000A4500101C96E AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (17, 10061, CAST(0x0000A4500101CD12 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (18, 10060, CAST(0x0000A4500101D30E AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (19, 10058, CAST(0x0000A4500101D797 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (20, 10059, CAST(0x0000A4500101DBA9 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (21, 10052, CAST(0x0000A4500101E0AE AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (22, 10050, CAST(0x0000A4500101E4FA AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (23, 10049, CAST(0x0000A4500101E9B0 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (24, 10047, CAST(0x0000A4500101EEDB AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (25, 10048, CAST(0x0000A4500101F2B7 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (26, 10054, CAST(0x0000A4500101F6C2 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (27, 10053, CAST(0x0000A4500101FAF6 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (28, 10055, CAST(0x0000A4500101FF7D AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (29, 10056, CAST(0x0000A450010204CB AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (30, 10051, CAST(0x0000A4500102095D AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (31, 10087, CAST(0x0000A45001020DF4 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (32, 10086, CAST(0x0000A45001021285 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (33, 10096, CAST(0x0000A45001021C3E AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (34, 10099, CAST(0x0000A450010220C9 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (35, 10100, CAST(0x0000A450010224F2 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (36, 10097, CAST(0x0000A45001022902 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (37, 10098, CAST(0x0000A45001022DAA AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (38, 10090, CAST(0x0000A4500102327D AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (39, 10091, CAST(0x0000A45001023673 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (40, 10092, CAST(0x0000A45001023DC8 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (41, 10093, CAST(0x0000A450010242B1 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (42, 10094, CAST(0x0000A45001024699 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (43, 10095, CAST(0x0000A45001024A8A AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (44, 10067, CAST(0x0000A45001025154 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (45, 10066, CAST(0x0000A4500102556F AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (46, 10068, CAST(0x0000A45001025DC9 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (47, 10069, CAST(0x0000A4500102A9C6 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (48, 10064, CAST(0x0000A4500102A9C7 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (49, 10065, CAST(0x0000A4500102A9C7 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (50, 10036, CAST(0x0000A4500102A9C8 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (51, 10075, CAST(0x0000A4500102A9C8 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (52, 10076, CAST(0x0000A4500102A9C9 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (53, 10082, CAST(0x0000A4500102A9C9 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (54, 10077, CAST(0x0000A4500102A9CE AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (55, 10032, CAST(0x0000A4500102A9CF AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (56, 10031, CAST(0x0000A4500102A9D7 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (57, 10039, CAST(0x0000A4500102A9D8 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (58, 10041, CAST(0x0000A4500102A9DA AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (59, 10074, CAST(0x0000A4500102A9DB AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (60, 10073, CAST(0x0000A4500102A9DC AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (61, 10105, CAST(0x0000A4500102A9F6 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (62, 10040, CAST(0x0000A4500102C9C6 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (63, 10078, CAST(0x0000A4500102C9C7 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (64, 10081, CAST(0x0000A4500102C9C7 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (65, 10080, CAST(0x0000A4500102C9C8 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (66, 10079, CAST(0x0000A4500102C9C9 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (67, 10072, CAST(0x0000A4500102EDFD AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (68, 10034, CAST(0x0000A4500102F3DD AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (69, 10071, CAST(0x0000A4500102F8F2 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (70, 10033, CAST(0x0000A4500102FCD1 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (71, 10006, CAST(0x0000A45100A2CD35 AS DateTime), NULL)
INSERT [vc].[ObjectDropedPeriodRange] ([Id], [ObjectId], [StartDatetime], [EndDatetime]) VALUES (72, 10009, CAST(0x0000A45100DDF814 AS DateTime), NULL)
SET IDENTITY_INSERT [vc].[ObjectDropedPeriodRange] OFF
/****** Object:  Table [dbo].[UserProfile]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (1, N'admin')
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (2, N'user')
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (4, N'user_Fazil')
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (3, N'user2')
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
/****** Object:  Table [vc].[TrackedObjects]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [vc].[TrackedObjects](
	[ObjectId] [int] IDENTITY(10000,1) NOT NULL,
	[SchemaName] [varchar](100) NOT NULL,
	[ObjectName] [varchar](1000) NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK__TrackedO__9A61929157DD0BE4] PRIMARY KEY CLUSTERED 
(
	[ObjectId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [vc].[TrackedObjects] ON
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10000, N'dbo', N'MapUserConnection', CAST(0x0000A45100A2B280 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10001, N'dbo', N'tblConnection', CAST(0x0000A436012068CE AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10002, N'dbo', N'tblDBName', CAST(0x0000A436012068D3 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10003, N'dbo', N'tblDBSchema', CAST(0x0000A436012068D5 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10004, N'dbo', N'tblDBServer', CAST(0x0000A436012068D7 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10005, N'dbo', N'tblDBTable', CAST(0x0000A436012068DA AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10006, N'dbo', N'tblUserInfo', CAST(0x0000A45100A2CD35 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10007, N'dbo', N'tblUserSaveScript', CAST(0x0000A436012068DF AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10008, N'dbo', N'tblUserSaveStates', CAST(0x0000A436012068E1 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10009, N'dbo', N'tblUserSaveStates_old', CAST(0x0000A45100DDF814 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10010, N'dbo', N'View_1', CAST(0x0000A436012068E7 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10011, N'vc', N'GetRenamedScript', CAST(0x0000A436012068E7 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10012, N'vc', N'GetXmlFromScript', CAST(0x0000A436012068E8 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10013, N'vc', N'IsObjectDropped', CAST(0x0000A436012068E8 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10014, N'vc', N'ObjectDropedPeriodRange', CAST(0x0000A436012068E9 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10015, N'vc', N'ObjectVersions', CAST(0x0000A436012068EC AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10016, N'vc', N'procAddSnapshot', CAST(0x0000A436012068EF AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10017, N'vc', N'procChangeObjectDropedPeriodRange', CAST(0x0000A436012068F0 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10018, N'vc', N'procGetTrackedObject', CAST(0x0000A436012068F1 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10019, N'vc', N'procLoadAllObjectsToVc', CAST(0x0000A436012068F1 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10020, N'vc', N'procLoadNewVersion', CAST(0x0000A436012068F2 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10021, N'vc', N'procRenameObject', CAST(0x0000A436012068F3 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10022, N'vc', N'procRetriveObjects', CAST(0x0000A436012068F4 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10023, N'vc', N'procScriptTable', CAST(0x0000A436012068F4 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10024, N'vc', N'Snapshots', CAST(0x0000A436012068F5 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10025, N'vc', N'TrackedObjects', CAST(0x0000A436012068F8 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10026, N'dbo', N'UserProfile', CAST(0x0000A45000DEACEE AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10027, N'dbo', N'webpages_OAuthMembership', CAST(0x0000A45000FB4D4B AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10028, N'dbo', N'webpages_Membership', CAST(0x0000A45000FB4D83 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10029, N'dbo', N'webpages_Roles', CAST(0x0000A45000FB4D8C AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10030, N'dbo', N'webpages_UsersInRoles', CAST(0x0000A45000FB4D98 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10031, N'dbo', N'aspnet_Setup_RestorePermissions', CAST(0x0000A4500102A9D7 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10032, N'dbo', N'aspnet_Setup_RemoveAllRoleMembers', CAST(0x0000A4500102A9CF AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10033, N'dbo', N'aspnet_Applications', CAST(0x0000A4500102FCD1 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10034, N'dbo', N'aspnet_Users', CAST(0x0000A4500102F3DD AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10035, N'dbo', N'aspnet_SchemaVersions', CAST(0x0000A4500101877B AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10036, N'dbo', N'aspnet_RegisterSchemaVersion', CAST(0x0000A4500102A9C8 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10037, N'dbo', N'aspnet_CheckSchemaVersion', CAST(0x0000A4500101BEE6 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10038, N'dbo', N'aspnet_Applications_CreateApplication', CAST(0x0000A4500101BAAA AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10039, N'dbo', N'aspnet_UnRegisterSchemaVersion', CAST(0x0000A4500102A9D8 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10040, N'dbo', N'aspnet_Users_CreateUser', CAST(0x0000A4500102C9C6 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10041, N'dbo', N'aspnet_Users_DeleteUser', CAST(0x0000A4500102A9DA AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10042, N'dbo', N'aspnet_AnyDataInTables', CAST(0x0000A4500101B669 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10043, N'dbo', N'vw_aspnet_Applications', CAST(0x0000A45000FA1B32 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10044, N'dbo', N'vw_aspnet_Users', CAST(0x0000A45000FA1B3A AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10045, N'dbo', N'aspnet_Membership', CAST(0x0000A4500101876D AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10046, N'dbo', N'aspnet_Membership_CreateUser', CAST(0x0000A4500101C96E AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10047, N'dbo', N'aspnet_Membership_GetUserByName', CAST(0x0000A4500101EEDB AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10048, N'dbo', N'aspnet_Membership_GetUserByUserId', CAST(0x0000A4500101F2B7 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10049, N'dbo', N'aspnet_Membership_GetUserByEmail', CAST(0x0000A4500101E9B0 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10050, N'dbo', N'aspnet_Membership_GetPasswordWithFormat', CAST(0x0000A4500101E4FA AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10051, N'dbo', N'aspnet_Membership_UpdateUserInfo', CAST(0x0000A4500102095D AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10052, N'dbo', N'aspnet_Membership_GetPassword', CAST(0x0000A4500101E0AE AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10053, N'dbo', N'aspnet_Membership_SetPassword', CAST(0x0000A4500101FAF6 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10054, N'dbo', N'aspnet_Membership_ResetPassword', CAST(0x0000A4500101F6C2 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10055, N'dbo', N'aspnet_Membership_UnlockUser', CAST(0x0000A4500101FF7D AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10056, N'dbo', N'aspnet_Membership_UpdateUser', CAST(0x0000A450010204CB AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10057, N'dbo', N'aspnet_Membership_ChangePasswordQuestionAndAnswer', CAST(0x0000A4500101C4F0 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10058, N'dbo', N'aspnet_Membership_GetAllUsers', CAST(0x0000A4500101D797 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10059, N'dbo', N'aspnet_Membership_GetNumberOfUsersOnline', CAST(0x0000A4500101DBA9 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10060, N'dbo', N'aspnet_Membership_FindUsersByName', CAST(0x0000A4500101D30E AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10061, N'dbo', N'aspnet_Membership_FindUsersByEmail', CAST(0x0000A4500101CD12 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10062, N'dbo', N'vw_aspnet_MembershipUsers', CAST(0x0000A45000FA1DD3 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10063, N'dbo', N'aspnet_Profile', CAST(0x0000A45001018770 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10064, N'dbo', N'aspnet_Profile_GetProperties', CAST(0x0000A4500102A9C7 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10065, N'dbo', N'aspnet_Profile_SetProperties', CAST(0x0000A4500102A9C7 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10066, N'dbo', N'aspnet_Profile_DeleteProfiles', CAST(0x0000A4500102556F AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10067, N'dbo', N'aspnet_Profile_DeleteInactiveProfiles', CAST(0x0000A45001025154 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10068, N'dbo', N'aspnet_Profile_GetNumberOfInactiveProfiles', CAST(0x0000A45001025DC9 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10069, N'dbo', N'aspnet_Profile_GetProfiles', CAST(0x0000A4500102A9C6 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10070, N'dbo', N'vw_aspnet_Profiles', CAST(0x0000A45000FA1E97 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10071, N'dbo', N'aspnet_Roles', CAST(0x0000A4500102F8F2 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10072, N'dbo', N'aspnet_UsersInRoles', CAST(0x0000A4500102EDFD AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10073, N'dbo', N'aspnet_UsersInRoles_IsUserInRole', CAST(0x0000A4500102A9DC AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10074, N'dbo', N'aspnet_UsersInRoles_GetRolesForUser', CAST(0x0000A4500102A9DB AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10075, N'dbo', N'aspnet_Roles_CreateRole', CAST(0x0000A4500102A9C8 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10076, N'dbo', N'aspnet_Roles_DeleteRole', CAST(0x0000A4500102A9C9 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10077, N'dbo', N'aspnet_Roles_RoleExists', CAST(0x0000A4500102A9CE AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10078, N'dbo', N'aspnet_UsersInRoles_AddUsersToRoles', CAST(0x0000A4500102C9C7 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10079, N'dbo', N'aspnet_UsersInRoles_RemoveUsersFromRoles', CAST(0x0000A4500102C9C9 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10080, N'dbo', N'aspnet_UsersInRoles_GetUsersInRoles', CAST(0x0000A4500102C9C8 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10081, N'dbo', N'aspnet_UsersInRoles_FindUsersInRole', CAST(0x0000A4500102C9C7 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10082, N'dbo', N'aspnet_Roles_GetAllRoles', CAST(0x0000A4500102A9C9 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10083, N'dbo', N'vw_aspnet_Roles', CAST(0x0000A45000FA1FE3 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10084, N'dbo', N'vw_aspnet_UsersInRoles', CAST(0x0000A45000FA1FEA AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10085, N'dbo', N'aspnet_Paths', CAST(0x0000A45001018A33 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10086, N'dbo', N'aspnet_Personalization_GetApplicationId', CAST(0x0000A45001021285 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10087, N'dbo', N'aspnet_Paths_CreatePath', CAST(0x0000A45001020DF4 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10088, N'dbo', N'aspnet_PersonalizationAllUsers', CAST(0x0000A4500101876E AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10089, N'dbo', N'aspnet_PersonalizationPerUser', CAST(0x0000A4500101876F AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10090, N'dbo', N'aspnet_PersonalizationAllUsers_GetPageSettings', CAST(0x0000A4500102327D AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10091, N'dbo', N'aspnet_PersonalizationAllUsers_ResetPageSettings', CAST(0x0000A45001023673 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10092, N'dbo', N'aspnet_PersonalizationAllUsers_SetPageSettings', CAST(0x0000A45001023DC8 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10093, N'dbo', N'aspnet_PersonalizationPerUser_GetPageSettings', CAST(0x0000A450010242B1 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10094, N'dbo', N'aspnet_PersonalizationPerUser_ResetPageSettings', CAST(0x0000A45001024699 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10095, N'dbo', N'aspnet_PersonalizationPerUser_SetPageSettings', CAST(0x0000A45001024A8A AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10096, N'dbo', N'aspnet_PersonalizationAdministration_DeleteAllState', CAST(0x0000A45001021C3E AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10097, N'dbo', N'aspnet_PersonalizationAdministration_ResetSharedState', CAST(0x0000A45001022902 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10098, N'dbo', N'aspnet_PersonalizationAdministration_ResetUserState', CAST(0x0000A45001022DAA AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10099, N'dbo', N'aspnet_PersonalizationAdministration_FindState', CAST(0x0000A450010220C9 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10100, N'dbo', N'aspnet_PersonalizationAdministration_GetCountOfState', CAST(0x0000A450010224F2 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10101, N'dbo', N'vw_aspnet_WebPartState_Paths', CAST(0x0000A45000FA20E3 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10102, N'dbo', N'vw_aspnet_WebPartState_Shared', CAST(0x0000A45000FA20E5 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10103, N'dbo', N'vw_aspnet_WebPartState_User', CAST(0x0000A45000FA20ED AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10104, N'dbo', N'aspnet_WebEvent_Events', CAST(0x0000A45001018789 AS DateTime))
INSERT [vc].[TrackedObjects] ([ObjectId], [SchemaName], [ObjectName], [LastUpdateDate]) VALUES (10105, N'dbo', N'aspnet_WebEvent_LogEvent', CAST(0x0000A4500102A9F6 AS DateTime))
SET IDENTITY_INSERT [vc].[TrackedObjects] OFF
/****** Object:  Table [dbo].[tblUserSaveStates]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserSaveStates](
	[StateName] [nvarchar](50) NOT NULL,
	[ConnectionID] [int] NOT NULL,
	[HTMLDOC] [nvarchar](max) NOT NULL,
	[Attributes] [nvarchar](max) NOT NULL,
	[Columns] [nvarchar](max) NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblUserSaveStates_1] PRIMARY KEY CLUSTERED 
(
	[StateName] ASC,
	[ConnectionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblUserSaveStates] ([StateName], [ConnectionID], [HTMLDOC], [Attributes], [Columns], [TableName]) VALUES (N'Otsuka_First', 1, N'
        <h3>Please select Columns</h3>
        <br>
        <div id="chkboxlist">
            <span style="font-weight: bold;">
                <input name="All" id="chkboxlist_All" value="All" onclick="AllColSelection()" type="checkbox">[All]
            </span>
                <input name="COUNTRY" id="COUNTRY" value="COUNTRY" type="checkbox">COUNTRY                <input name="MOLECULE" id="MOLECULE" value="MOLECULE" type="checkbox">MOLECULE                <input name="NFC1" id="NFC1" value="NFC1" type="checkbox">NFC1                <input name="FORM" id="FORM" value="FORM" type="checkbox">FORM                <input name="INTPRD" id="INTPRD" value="INTPRD" type="checkbox">INTPRD                <input name="INTSTR" id="INTSTR" value="INTSTR" type="checkbox">INTSTR                <input name="INTPCK" id="INTPCK" value="INTPCK" type="checkbox">INTPCK                <input name="DDD" id="DDD" value="DDD" type="checkbox">DDD                <input name="INTSTR CALC" id="INTSTR CALC" value="INTSTR CALC" type="checkbox">INTSTR CALC                <input name="PCK SIZE" id="PCK SIZE" value="PCK SIZE" type="checkbox">PCK SIZE                <input name="DDD/Pack" id="DDD/Pack" value="DDD/Pack" type="checkbox">DDD/Pack
        </div>
        <br>
        <h3>Filters</h3>

        <div id="divFilter">
            <div class="HeadFilterDiv">
                Columns 
            <div class="HeadFilterSelectedRemoveDiv">Remove </div>
                <div class="HeadFilterSelectedValueDiv">Selected Values </div>
                <div class="HeadFilterValueDiv">Values </div>
            </div>

            <div id="Attribute1" class="FilterDiv">

                <div class="FilterSelectedRemoveDiv">
                </div>

                <div id="chkselectValue1" class="FilterSelectedValueDiv">
                    <textarea id="search_chkselectValue1" class="SearchTextArea" oninput="search(this.id)"></textarea>
                    <img id="img_chkselectValue1" src="/Images/RemoveAll.jpg" onclick="AddRemoveAllFilterSelect(this.id)">
                    <br>
                <span class="columns_Selected_selectValue1" title="span_selectValue1_AUSTRIA COMBINED" id="span_selectValue1_AUSTRIA COMBINED"><input value="AUSTRIA COMBINED" id="selectValue1_AUSTRIA COMBINED" name="AUSTRIA COMBINED" type="checkbox">AUSTRIA COMBINED<br></span><span class="columns_Selected_selectValue1" title="span_selectValue1_BULGARIA COMBINED" id="span_selectValue1_BULGARIA COMBINED"><input value="BULGARIA COMBINED" id="selectValue1_BULGARIA COMBINED" name="BULGARIA COMBINED" type="checkbox">BULGARIA COMBINED<br></span></div>

                <div id="selectValue1" class="FilterValueDiv">

                    <textarea id="search_selectValue1" class="SearchTextArea" oninput="search(this.id)"></textarea>
                    <img id="img_selectValue1" src="/Images/AddAll.jpg" onclick="AddRemoveAllFilterSelect(this.id)">
                    <br>
                        
                        <span id="span_selectValue1_BELGIUM COMBINED" class="columns_selectValue1" title="span_selectValue1_BELGIUM COMBINED">
                            <input name="BELGIUM COMBINED" id="selectValue1_BELGIUM COMBINED" onclick="chk_changed(this.id)" value="BELGIUM COMBINED" type="checkbox">BELGIUM COMBINED
                            <br>
                        </span>
                        
                        <span id="span_selectValue1_CROATIA COMBINED" class="columns_selectValue1" title="span_selectValue1_CROATIA COMBINED">
                            <input name="CROATIA COMBINED" id="selectValue1_CROATIA COMBINED" onclick="chk_changed(this.id)" value="CROATIA COMBINED" type="checkbox">CROATIA COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_CZECH COMBINED" class="columns_selectValue1" title="span_selectValue1_CZECH COMBINED">
                            <input name="CZECH COMBINED" id="selectValue1_CZECH COMBINED" onclick="chk_changed(this.id)" value="CZECH COMBINED" type="checkbox">CZECH COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_DENMARK COMBINED" class="columns_selectValue1" title="span_selectValue1_DENMARK COMBINED">
                            <input name="DENMARK COMBINED" id="selectValue1_DENMARK COMBINED" onclick="chk_changed(this.id)" value="DENMARK COMBINED" type="checkbox">DENMARK COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_ESTONIA RETAIL" class="columns_selectValue1" title="span_selectValue1_ESTONIA RETAIL">
                            <input name="ESTONIA RETAIL" id="selectValue1_ESTONIA RETAIL" onclick="chk_changed(this.id)" value="ESTONIA RETAIL" type="checkbox">ESTONIA RETAIL
                            <br>
                        </span>
                        <span id="span_selectValue1_FINLAND COMBINED" class="columns_selectValue1" title="span_selectValue1_FINLAND COMBINED">
                            <input name="FINLAND COMBINED" id="selectValue1_FINLAND COMBINED" onclick="chk_changed(this.id)" value="FINLAND COMBINED" type="checkbox">FINLAND COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_FRANCE COMBINED" class="columns_selectValue1" title="span_selectValue1_FRANCE COMBINED">
                            <input name="FRANCE COMBINED" id="selectValue1_FRANCE COMBINED" onclick="chk_changed(this.id)" value="FRANCE COMBINED" type="checkbox">FRANCE COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_GERMANY COMBINED" class="columns_selectValue1" title="span_selectValue1_GERMANY COMBINED">
                            <input name="GERMANY COMBINED" id="selectValue1_GERMANY COMBINED" onclick="chk_changed(this.id)" value="GERMANY COMBINED" type="checkbox">GERMANY COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_GREECE RETAIL" class="columns_selectValue1" title="span_selectValue1_GREECE RETAIL">
                            <input name="GREECE RETAIL" id="selectValue1_GREECE RETAIL" onclick="chk_changed(this.id)" value="GREECE RETAIL" type="checkbox">GREECE RETAIL
                            <br>
                        </span>
                        <span id="span_selectValue1_HUNGARY COMBINED" class="columns_selectValue1" title="span_selectValue1_HUNGARY COMBINED">
                            <input name="HUNGARY COMBINED" id="selectValue1_HUNGARY COMBINED" onclick="chk_changed(this.id)" value="HUNGARY COMBINED" type="checkbox">HUNGARY COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_IRELAND COMBINED" class="columns_selectValue1" title="span_selectValue1_IRELAND COMBINED">
                            <input name="IRELAND COMBINED" id="selectValue1_IRELAND COMBINED" onclick="chk_changed(this.id)" value="IRELAND COMBINED" type="checkbox">IRELAND COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_ITALY COMBINED" class="columns_selectValue1" title="span_selectValue1_ITALY COMBINED">
                            <input name="ITALY COMBINED" id="selectValue1_ITALY COMBINED" onclick="chk_changed(this.id)" value="ITALY COMBINED" type="checkbox">ITALY COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_LATVIA COMBINED" class="columns_selectValue1" title="span_selectValue1_LATVIA COMBINED">
                            <input name="LATVIA COMBINED" id="selectValue1_LATVIA COMBINED" onclick="chk_changed(this.id)" value="LATVIA COMBINED" type="checkbox">LATVIA COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_LITHUANIA COMBINED" class="columns_selectValue1" title="span_selectValue1_LITHUANIA COMBINED">
                            <input name="LITHUANIA COMBINED" id="selectValue1_LITHUANIA COMBINED" onclick="chk_changed(this.id)" value="LITHUANIA COMBINED" type="checkbox">LITHUANIA COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_LUXEMBOURG RETAIL" class="columns_selectValue1" title="span_selectValue1_LUXEMBOURG RETAIL">
                            <input name="LUXEMBOURG RETAIL" id="selectValue1_LUXEMBOURG RETAIL" onclick="chk_changed(this.id)" value="LUXEMBOURG RETAIL" type="checkbox">LUXEMBOURG RETAIL
                            <br>
                        </span>
                        <span id="span_selectValue1_NETHERLNDS XPONENT" class="columns_selectValue1" title="span_selectValue1_NETHERLNDS XPONENT">
                            <input name="NETHERLNDS XPONENT" id="selectValue1_NETHERLNDS XPONENT" onclick="chk_changed(this.id)" value="NETHERLNDS XPONENT" type="checkbox">NETHERLNDS XPONENT
                            <br>
                        </span>
                        <span id="span_selectValue1_NORWAY COMBINED" class="columns_selectValue1" title="span_selectValue1_NORWAY COMBINED">
                            <input name="NORWAY COMBINED" id="selectValue1_NORWAY COMBINED" onclick="chk_changed(this.id)" value="NORWAY COMBINED" type="checkbox">NORWAY COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_POLAND COMBINED" class="columns_selectValue1" title="span_selectValue1_POLAND COMBINED">
                            <input name="POLAND COMBINED" id="selectValue1_POLAND COMBINED" onclick="chk_changed(this.id)" value="POLAND COMBINED" type="checkbox">POLAND COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_PORTUGAL COMBINED" class="columns_selectValue1" title="span_selectValue1_PORTUGAL COMBINED">
                            <input name="PORTUGAL COMBINED" id="selectValue1_PORTUGAL COMBINED" onclick="chk_changed(this.id)" value="PORTUGAL COMBINED" type="checkbox">PORTUGAL COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_ROMANIA COMBINED" class="columns_selectValue1" title="span_selectValue1_ROMANIA COMBINED">
                            <input name="ROMANIA COMBINED" id="selectValue1_ROMANIA COMBINED" onclick="chk_changed(this.id)" value="ROMANIA COMBINED" type="checkbox">ROMANIA COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_SLOVAKIA COMBINED" class="columns_selectValue1" title="span_selectValue1_SLOVAKIA COMBINED">
                            <input name="SLOVAKIA COMBINED" id="selectValue1_SLOVAKIA COMBINED" onclick="chk_changed(this.id)" value="SLOVAKIA COMBINED" type="checkbox">SLOVAKIA COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_SLOVENIA COMBINED" class="columns_selectValue1" title="span_selectValue1_SLOVENIA COMBINED">
                            <input name="SLOVENIA COMBINED" id="selectValue1_SLOVENIA COMBINED" onclick="chk_changed(this.id)" value="SLOVENIA COMBINED" type="checkbox">SLOVENIA COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_SPAIN COMBINED" class="columns_selectValue1" title="span_selectValue1_SPAIN COMBINED">
                            <input name="SPAIN COMBINED" id="selectValue1_SPAIN COMBINED" onclick="chk_changed(this.id)" value="SPAIN COMBINED" type="checkbox">SPAIN COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_SWEDEN COMBINED" class="columns_selectValue1" title="span_selectValue1_SWEDEN COMBINED">
                            <input name="SWEDEN COMBINED" id="selectValue1_SWEDEN COMBINED" onclick="chk_changed(this.id)" value="SWEDEN COMBINED" type="checkbox">SWEDEN COMBINED
                            <br>
                        </span>
                        <span id="span_selectValue1_SWITZERLAND COMBIN" class="columns_selectValue1" title="span_selectValue1_SWITZERLAND COMBIN">
                            <input name="SWITZERLAND COMBIN" id="selectValue1_SWITZERLAND COMBIN" onclick="chk_changed(this.id)" value="SWITZERLAND COMBIN" type="checkbox">SWITZERLAND COMBIN
                            <br>
                        </span>
                        <span id="span_selectValue1_UK" class="columns_selectValue1" title="span_selectValue1_Last">
                            <input name="UK" id="selectValue1_UK" onclick="chk_changed(this.id)" value="UK" type="checkbox">UK
                            <br>
                        </span>

                </div>

                <div class="ColumnsDiv">
                    <span>Filter 1 : </span>
                    <select id="selectAttribute1" onchange="OnChange_FirstDropDown();">
                            <option value="COUNTRY" selected="selected">COUNTRY</option>
                            <option value="MOLECULE">MOLECULE</option>
                            <option value="NFC1">NFC1</option>
                            <option value="FORM">FORM</option>
                            <option value="INTPRD">INTPRD</option>
                            <option value="INTSTR">INTSTR</option>
                            <option value="INTPCK">INTPCK</option>
                            <option value="DDD">DDD</option>
                            <option value="INTSTR CALC">INTSTR CALC</option>
                            <option value="PCK SIZE">PCK SIZE</option>
                            <option value="DDD/Pack">DDD/Pack</option>
                    </select>
                    <br>
                    <span>Filtered as: </span>
                    <select id="inOrNotinselectAttribute1" onchange="Refresh(this.id);">
                        <option value="in">Include</option>
                        <option value="not in">Exclude</option>
                    </select>
                </div>

            </div>
        </div>
    ', N'selectAttribute1,COUNTRY,in,|', N'COUNTRY,MOLECULE,NFC1', N'dbo.Raw_DDD')
/****** Object:  Table [dbo].[tblUserSaveScript]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserSaveScript](
	[StateName] [nvarchar](50) NOT NULL,
	[ConnectionID] [int] NOT NULL,
	[Script] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_tblUserSaveScript] PRIMARY KEY CLUSTERED 
(
	[StateName] ASC,
	[ConnectionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblUserSaveScript] ([StateName], [ConnectionID], [Script], [IsActive]) VALUES (N'Otsuka_First_Script', 1, N'SELECT distinct  COUNTRY, MOLECULE, NFC1 from Raw_DDD  where  COUNTRY in (''AUSTRIA COMBINED'',''BULGARIA COMBINED'')  ', 1)
/****** Object:  Table [dbo].[tblDBTable]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDBTable](
	[Id] [int] NOT NULL,
	[DBTableOrView] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_tblDBTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDBTable] ([Id], [DBTableOrView]) VALUES (1, N'[ALL]')
/****** Object:  Table [dbo].[tblDBServer]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDBServer](
	[Id] [int] NOT NULL,
	[DBServer] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_tblServer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDBServer] ([Id], [DBServer]) VALUES (1, N'DACW0140\SQL2KR2')
/****** Object:  Table [dbo].[tblDBSchema]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDBSchema](
	[Id] [int] NOT NULL,
	[DBSchema] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblDBSchema] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDBSchema] ([Id], [DBSchema]) VALUES (1, N'[ALL]')
INSERT [dbo].[tblDBSchema] ([Id], [DBSchema]) VALUES (2, N'dbo')
/****** Object:  Table [dbo].[tblDBName]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDBName](
	[Id] [int] NOT NULL,
	[DBName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_tblDBName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDBName] ([Id], [DBName]) VALUES (1, N'OtsukaDwh')
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A45000A59A7C AS DateTime), NULL, 1, NULL, 0, N'AD+7JW4UWM9qmBFFtCdfygLHdlQjI6ooWxTXbt8w8Q5y0DjpYloBdkz73CBrwXb9Sw==', CAST(0x0000A45000A59A7C AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A45000A7860C AS DateTime), NULL, 1, CAST(0x0000A45100AD6168 AS DateTime), 0, N'APc5Qmx6v1inO9KE1DqkElfH5OQus4RoX9Nqnb7vUVk7JrD8vth/isUrFfCH2KQ+Sg==', CAST(0x0000A45000A7860C AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (3, CAST(0x0000A451006C4B87 AS DateTime), NULL, 1, CAST(0x0000A45100A9107C AS DateTime), 0, N'ADYx4mJyWfqDUYhOAyGze6qpm9+doN8C6/dunhC5rnXZAEV0qoy76w+Ohiq9YwSwYw==', CAST(0x0000A451006C4B87 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (4, CAST(0x0000A451006E010C AS DateTime), NULL, 1, NULL, 0, N'AGOlGWymohgoAys36yztDzqq4+7tneSk+1TcieKxntGbWawKSW01aTqI6uZEDRm/yA==', CAST(0x0000A451006E010C AS DateTime), N'', NULL, NULL)
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [vc].[Snapshots]    Script Date: 03/06/2015 14:55:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [vc].[Snapshots](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[Description] [varchar](400) NOT NULL,
	[SnapshotDatetime] [datetime] NOT NULL,
	[MaxVersionId] [int] NOT NULL,
 CONSTRAINT [PK__Snapshot__3214EC072F4FF79D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [vc].[procScriptTable]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [vc].[procScriptTable]
(
@TableName SYSNAME, 
@IncludeConstraints BIT = 1, 
@IncludeIndexes BIT = 1, 
@NewTableName SYSNAME = NULL, 
@UseSystemDataTypes BIT = 0,
@TableScript nvarchar(max) out
)
AS
BEGIN
set nocount on
/*this is sample comment*/
DECLARE @MainDefinition TABLE
(
FieldValue VARCHAR(200)
)

DECLARE @DBName SYSNAME
DECLARE @ClusteredPK BIT
DECLARE @TableSchema NVARCHAR(255)
SET @DBName = DB_NAME(DB_ID())

--//Make sure the dgdkl table name is the same case.
SELECT @TableName = name FROM sysobjects WHERE id = OBJECT_ID(@TableName)

DECLARE @ShowFields TABLE
(
	FieldID INT IDENTITY(1,1),
	DatabaseName VARCHAR(100),
	TableOwner VARCHAR(100),
	TableName VARCHAR(100),
	FieldName VARCHAR(100),
	ColumnPosition INT,
	ColumnDefaultValue VARCHAR(100),
	ColumnDefaultName VARCHAR(100),
	IsNullable BIT, 
	Datatype VARCHAR(100),
	ComputedColumnDefination nvarchar(max),
	MaxLength INT,
	NumericPrecision INT,
	NumericScale INT,
	DomainName VARCHAR(100), 
	FieldListingName VARCHAR(110), 
	FieldDefinition CHAR(1),
	IdentityColumn BIT, 
	IdentitySeed INT,
	IdentityIncrement INT, 
	IsCharColumn BIT,
	IsNumericColumn BIT
)

DECLARE @HoldingArea TABLE
(
	FldID SMALLINT IDENTITY(1,1),
	Flds VARCHAR(4000), 
	FldValue CHAR(1) DEFAULT(0)
)


DECLARE @PKObjectID TABLE
(
	ObjectID INT
)

DECLARE @Uniques TABLE
(
	ObjectID INT
)

DECLARE @HoldingAreaValues TABLE
(
	FldID SMALLINT IDENTITY(1,1),
	Flds VARCHAR(4000), 
	FldValue CHAR(1) DEFAULT(0)
)

DECLARE @Definition TABLE
(
	DefinitionID SMALLINT IDENTITY(1,1),
	FieldValue VARCHAR(200)
)

INSERT INTO @ShowFields
(	
	DatabaseName,
	TableOwner,
	TableName,
	FieldName,
	ColumnPosition,
	ColumnDefaultValue,
	ColumnDefaultName,
	IsNullable, 
	DataType,
	ComputedColumnDefination,
	MaxLength,
	NumericPrecision,
	NumericScale,
	DomainName,
	FieldListingName, 
	FieldDefinition, 
	IdentityColumn,
	IdentitySeed, 
	IdentityIncrement, 
	IsCharColumn,
	IsNumericColumn
)

SELECT 
DB_NAME(), 
TABLE_SCHEMA,
TABLE_NAME,
COLUMN_NAME,
CAST(ORDINAL_POSITION AS INT),
COLUMN_DEFAULT,
dobj.name AS ColumnDefaultName,
CASE WHEN c.IS_NULLABLE = 'YES' THEN 1 ELSE 0 END,
DATA_TYPE,
cc.definition,
CAST(CHARACTER_MAXIMUM_LENGTH AS INT),
CAST(NUMERIC_PRECISION AS INT),
CAST(NUMERIC_SCALE AS INT),
DOMAIN_NAME,
COLUMN_NAME + ',',
'' AS FieldDefinition,
CASE WHEN ic.object_id IS NULL THEN 0 ELSE 1 END AS IdentityColumn, 
CAST(ISNULL(ic.seed_value,0) AS INT) AS IdentitySeed, 
CAST(ISNULL(ic.increment_value,0) AS INT) AS IdentityIncrement, 
CASE WHEN st.collation_name IS NOT NULL THEN 1 ELSE 0 END AS IsCharColumn,
case when st.name in ('numeric','decimal') then 1 else 0 end as IsNumericColun
FROM 
INFORMATION_SCHEMA.COLUMNS c
JOIN sys.columns sc ON c.TABLE_NAME = OBJECT_NAME(sc.object_id) AND c.COLUMN_NAME = sc.Name
LEFT JOIN sys.identity_columns ic ON c.TABLE_NAME = OBJECT_NAME(ic.object_id) AND c.COLUMN_NAME = ic.Name
JOIN sys.types st ON COALESCE(c.DOMAIN_NAME,c.DATA_TYPE) = st.name
LEFT OUTER JOIN sys.objects dobj ON dobj.object_id = sc.default_object_id AND dobj.type = 'D'
LEFT JOIN sys.computed_columns cc
	on sc.object_id=cc.object_id
	and sc.name=cc.name
WHERE c.TABLE_NAME = @TableName
ORDER BY 
c.TABLE_NAME, c.ORDINAL_POSITION

SELECT TOP 1 @TableSchema = TableOwner
FROM @ShowFields

INSERT INTO @HoldingArea (Flds) VALUES('(')

INSERT INTO @Definition(FieldValue)
VALUES('CREATE TABLE ' + CASE WHEN @NewTableName IS NOT NULL THEN @NewTableName ELSE '['+@TableSchema + '].[' + @TableName+']'+CHAR(10) END)

INSERT INTO @Definition(FieldValue)
VALUES('(')

INSERT INTO @Definition(FieldValue)
SELECT 
CHAR(10) +'['+ FieldName + '] ' + 
case when ComputedColumnDefination is not null then ('as '+ComputedColumnDefination)
else 
	CASE 
	WHEN DomainName IS NOT NULL AND @UseSystemDataTypes = 0 THEN DomainName + CASE WHEN IsNullable = 1 THEN ' NULL ' ELSE ' NOT NULL ' END
	ELSE UPPER(DataType) + 
		CASE WHEN IsCharColumn = 1 THEN '(' + case MaxLength when -1 then 'MAX' else cast(MaxLength as varchar) end + ')' 
		WHEN IsNumericColumn =1 THEN '('+cast(NumericPrecision as varchar)+','+cast(NumericScale as varchar)+')'
		ELSE '' END 
	+
	CASE 
		WHEN IdentityColumn = 1 THEN ' IDENTITY(' + CAST(IdentitySeed AS VARCHAR(5))+ ',' + CAST(IdentityIncrement AS VARCHAR(5)) + ')' ELSE '' END +
	CASE 
		WHEN IsNullable = 1 THEN ' NULL ' ELSE ' NOT NULL ' END +
	CASE 
		WHEN ColumnDefaultName IS NOT NULL AND @IncludeConstraints = 1 THEN 'CONSTRAINT [' + ColumnDefaultName + '] DEFAULT' + UPPER(ColumnDefaultValue) ELSE '' END
	END 
end
+ 

CASE WHEN FieldID = (SELECT MAX(FieldID) FROM @ShowFields) THEN '' ELSE ',' END
FROM	@ShowFields 

IF @IncludeConstraints = 1
BEGIN
INSERT INTO @Definition(FieldValue)
SELECT 
',CONSTRAINT [' + name + '] FOREIGN KEY (' + ParentColumns + ') REFERENCES [' + ReferencedObject + '](' + ReferencedColumns + ')'
FROM
(
SELECT 
ReferencedObject = OBJECT_NAME(fk.referenced_object_id), ParentObject = OBJECT_NAME(parent_object_id),fk.name,
REVERSE(SUBSTRING(REVERSE((
SELECT '['+cp.name+']'+ ','
FROM
sys.foreign_key_columns fkc
JOIN sys.columns cp ON fkc.parent_object_id = cp.object_id AND fkc.parent_column_id = cp.column_id
WHERE fkc.constraint_object_id = fk.object_id
FOR XML PATH('')
)), 2, 8000)) ParentColumns, 
REVERSE(SUBSTRING(REVERSE((
SELECT '['+cr.name +']'+ ','
FROM
sys.foreign_key_columns fkc
JOIN sys.columns cr ON fkc.referenced_object_id = cr.object_id AND fkc.referenced_column_id = cr.column_id
WHERE fkc.constraint_object_id = fk.object_id
FOR XML PATH('')
)), 2, 8000)) ReferencedColumns
FROM sys.foreign_keys fk
) a
WHERE ParentObject = @TableName

INSERT INTO @Definition(FieldValue)
SELECT',CONSTRAINT [' + name + '] CHECK ' + definition FROM sys.check_constraints
WHERE OBJECT_NAME(parent_object_id) = @TableName

--------------------------------------------------------------------------------------------

INSERT INTO @PKObjectID(ObjectID)
SELECT DISTINCT 
PKObject = cco.object_id
FROM 
sys.key_constraints cco
JOIN sys.index_columns cc ON cco.parent_object_id = cc.object_id AND cco.unique_index_id = cc.index_id
JOIN sys.indexes i ON cc.object_id = i.object_id AND cc.index_id = i.index_id
WHERE 
OBJECT_NAME(parent_object_id) = @TableName	AND	
i.type = 1 AND 
is_primary_key = 1

INSERT INTO @Uniques(ObjectID)
SELECT DISTINCT 
PKObject = cco.object_id
FROM 
sys.key_constraints cco
JOIN sys.index_columns cc ON cco.parent_object_id = cc.object_id AND cco.unique_index_id = cc.index_id
JOIN sys.indexes i ON cc.object_id = i.object_id AND cc.index_id = i.index_id
WHERE 
OBJECT_NAME(parent_object_id) = @TableName AND	
i.type = 2 AND
is_primary_key = 0 AND
is_unique_constraint = 1 

SET @ClusteredPK = CASE WHEN @@ROWCOUNT>0 THEN 1 ELSE 0 END

INSERT INTO @Definition(FieldValue)
SELECT	',CONSTRAINT ' + name + CASE type WHEN 'PK' THEN ' PRIMARY KEY ' + CASE WHEN pk.ObjectID IS NULL THEN ' NONCLUSTERED ' ELSE ' CLUSTERED ' END 
WHEN 'UQ' THEN ' UNIQUE ' END + CASE WHEN u.ObjectID IS NOT NULL THEN ' NONCLUSTERED ' ELSE '' END + '(' +
REVERSE(SUBSTRING(REVERSE((
SELECT 
'['+c.name +']'+ CASE WHEN cc.is_descending_key = 1 THEN ' DESC' ELSE ' ASC' END + ','
FROM 
sys.key_constraints ccok
LEFT JOIN sys.index_columns cc ON ccok.parent_object_id = cc.object_id AND cco.unique_index_id = cc.index_id
LEFT JOIN sys.columns c ON cc.object_id = c.object_id AND cc.column_id = c.column_id
LEFT JOIN sys.indexes i ON cc.object_id = i.object_id AND cc.index_id = i.index_id
WHERE 
i.object_id = ccok.parent_object_id AND 
ccok.object_id = cco.object_id
FOR XML PATH('')
)), 2, 8000)) + ')'
FROM 
sys.key_constraints cco
LEFT JOIN @PKObjectID pk ON cco.object_id = pk.ObjectID
LEFT JOIN @Uniques u ON cco.object_id = u.objectID
WHERE 
OBJECT_NAME(cco.parent_object_id) = @TableName
END
----------------------------------------------------------------------------------------------
INSERT INTO @Definition(FieldValue)
VALUES(')')

IF @IncludeIndexes = 1
BEGIN
INSERT INTO @Definition(FieldValue)
SELECT 
'CREATE ' + type_desc + ' INDEX [' + [name] COLLATE SQL_Latin1_General_CP1_CI_AS + '] ON [' + OBJECT_NAME(object_id) + '] (' + 
REVERSE(SUBSTRING(REVERSE((
SELECT '['+name+']' + CASE WHEN sc.is_descending_key = 1 THEN ' DESC' ELSE ' ASC' END + ','
FROM 
sys.index_columns sc
JOIN sys.columns c ON sc.object_id = c.object_id AND sc.column_id = c.column_id
WHERE 
OBJECT_NAME(sc.object_id) = @TableName AND
sc.object_id = i.object_id AND 
sc.index_id = i.index_id
ORDER BY index_column_id ASC
FOR XML PATH('')
)), 2, 8000)) + ')'
FROM sys.indexes i
WHERE 
OBJECT_NAME(object_id) = @TableName
AND CASE WHEN @ClusteredPK = 1 AND is_primary_key = 1 AND type = 1 THEN 0 ELSE 1 END = 1
AND is_unique_constraint = 0
AND is_primary_key = 0
END
INSERT INTO @MainDefinition(FieldValue)
SELECT FieldValue FROM @Definition 
ORDER BY DefinitionID ASC

set @TableScript=''

SELECT @TableScript=@TableScript+isnull(FieldValue,'') 
FROM @MainDefinition

END
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (2, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (3, 2)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (4, 2)
/****** Object:  UserDefinedFunction [vc].[IsObjectDropped]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [vc].[IsObjectDropped](@objectId int,@datetime datetime)
returns int
begin
	if exists 
	(
		select 
		* 
		from 
		vc.ObjectDropedPeriodRange
		where ObjectId=@objectId
		and
		( 
			(
				@datetime is not null and
				@datetime>=StartDatetime and  
				(EndDatetime is null or @datetime<EndDatetime)
			)

			or 
			(
				@datetime is null and EndDatetime is null
			)
		)
	)
	return 1

	return 0

end
GO
/****** Object:  StoredProcedure [vc].[procGetTrackedObject]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [vc].[procGetTrackedObject]
@schemaName varchar(100),
@objectName varchar(1000),
@updateDatetime datetime,
@objectId int output
as
begin

select @objectId=ObjectId from vc.TrackedObjects
where SchemaName=@SchemaName
and ObjectName=@objectName


if(@objectId is null)
begin
	insert into vc.TrackedObjects
	(
		SchemaName,
		ObjectName,
		LastUpdateDate
	)
	values
	(@SchemaName,@ObjectName,@updateDatetime)
	
	set @objectId= SCOPE_IDENTITY()
end	
else 
	update vc.TrackedObjects
	set LastUpdateDate=@updateDatetime
	where ObjectId=@objectId

end
GO
/****** Object:  Table [dbo].[tblConnection]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConnection](
	[ConnId] [int] NOT NULL,
	[ConnectionName] [nvarchar](200) NULL,
	[DBServerId] [int] NOT NULL,
	[DBId] [int] NOT NULL,
	[DBSchemaId] [int] NOT NULL,
	[DBTableId] [int] NOT NULL,
 CONSTRAINT [PK_tblAuthentication] PRIMARY KEY CLUSTERED 
(
	[ConnId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblConnection] ([ConnId], [ConnectionName], [DBServerId], [DBId], [DBSchemaId], [DBTableId]) VALUES (1, N'Otsuka_Conn', 1, 1, 2, 1)
/****** Object:  Table [vc].[ObjectVersions]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [vc].[ObjectVersions](
	[VersionId] [int] IDENTITY(1,1) NOT NULL,
	[FirstVersionId] [int] NULL,
	[PrevVersionId] [int] NULL,
	[NextVersionId] [int] NULL,
	[VersionDatetime] [datetime] NOT NULL,
	[RevisionNo] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[ObjectId] [int] NOT NULL,
	[ObjectType] [varchar](200) NOT NULL,
	[SchemaName] [varchar](100) NOT NULL,
	[ObjectName] [varchar](1000) NOT NULL,
	[ObjectScript] [nvarchar](max) NOT NULL,
	[ObjectScriptXml]  AS ([vc].[GetXmlFromScript]([ObjectScript])),
	[HostName] [nvarchar](128) NOT NULL,
	[LoginName] [nvarchar](128) NOT NULL,
	[ProgramName] [nvarchar](1000) NOT NULL,
	[NetAddress] [nchar](12) NOT NULL,
	[NetLibrary] [nchar](12) NOT NULL,
	[SpId] [smallint] NOT NULL,
 CONSTRAINT [PK__ObjectVe__16C6400F5BAD9CC8] PRIMARY KEY CLUSTERED 
(
	[VersionId] ASC,
	[ObjectId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [vc].[ObjectVersions] ON
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (1, 1, NULL, 113, CAST(0x0000A4360120685B AS DateTime), 1, NULL, 10000, N'TABLE', N'dbo', N'MapUserConnection', N'CREATE TABLE [dbo].[MapUserConnection]
(
[Id] INT NOT NULL ,
[ConnID] INT NOT NULL ,
[UserID] INT NOT NULL ,CONSTRAINT [FK_MapUserConnection_MapConnection] FOREIGN KEY ([ConnID]) REFERENCES [tblConnection]([ConnId]),CONSTRAINT [FK_MapUserConnection_tblUserInfo] FOREIGN KEY ([UserID]) REFERENCES [tblUserInfo]([Id]),CONSTRAINT PK_MapUserConnection PRIMARY KEY  CLUSTERED ([Id] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (2, 2, NULL, NULL, CAST(0x0000A436012068CE AS DateTime), 1, NULL, 10001, N'TABLE', N'dbo', N'tblConnection', N'CREATE TABLE [dbo].[tblConnection]
(
[ConnId] INT NOT NULL ,
[ConnectionName] NVARCHAR(200) NULL ,
[DBServerId] INT NOT NULL ,
[DBId] INT NOT NULL ,
[DBSchemaId] INT NOT NULL ,
[DBTableId] INT NOT NULL ,CONSTRAINT [FK_tblAuthentication_tblDBName] FOREIGN KEY ([DBId]) REFERENCES [tblDBName]([Id]),CONSTRAINT [FK_tblAuthentication_tblDBSchema] FOREIGN KEY ([DBSchemaId]) REFERENCES [tblDBSchema]([Id]),CONSTRAINT [FK_tblAuthentication_tblDBServer] FOREIGN KEY ([DBServerId]) REFERENCES [tblDBServer]([Id]),CONSTRAINT [FK_tblAuthentication_tblDBTable] FOREIGN KEY ([DBTableId]) REFERENCES [tblDBTable]([Id]),CONSTRAINT PK_tblAuthentication PRIMARY KEY  CLUSTERED ([ConnId] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (3, 3, NULL, NULL, CAST(0x0000A436012068D3 AS DateTime), 1, NULL, 10002, N'TABLE', N'dbo', N'tblDBName', N'CREATE TABLE [dbo].[tblDBName]
(
[Id] INT NOT NULL ,
[DBName] NVARCHAR(200) NOT NULL ,CONSTRAINT PK_tblDBName PRIMARY KEY  CLUSTERED ([Id] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (4, 4, NULL, NULL, CAST(0x0000A436012068D5 AS DateTime), 1, NULL, 10003, N'TABLE', N'dbo', N'tblDBSchema', N'CREATE TABLE [dbo].[tblDBSchema]
(
[Id] INT NOT NULL ,
[DBSchema] NVARCHAR(50) NOT NULL ,CONSTRAINT PK_tblDBSchema PRIMARY KEY  CLUSTERED ([Id] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (5, 5, NULL, NULL, CAST(0x0000A436012068D7 AS DateTime), 1, NULL, 10004, N'TABLE', N'dbo', N'tblDBServer', N'CREATE TABLE [dbo].[tblDBServer]
(
[Id] INT NOT NULL ,
[DBServer] NVARCHAR(200) NOT NULL ,CONSTRAINT PK_tblServer PRIMARY KEY  CLUSTERED ([Id] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (6, 6, NULL, NULL, CAST(0x0000A436012068DA AS DateTime), 1, NULL, 10005, N'TABLE', N'dbo', N'tblDBTable', N'CREATE TABLE [dbo].[tblDBTable]
(
[Id] INT NOT NULL ,
[DBTableOrView] NVARCHAR(200) NOT NULL ,CONSTRAINT PK_tblDBTable PRIMARY KEY  CLUSTERED ([Id] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (7, 7, NULL, NULL, CAST(0x0000A436012068DC AS DateTime), 1, NULL, 10006, N'TABLE', N'dbo', N'tblUserInfo', N'CREATE TABLE [dbo].[tblUserInfo]
(
[Id] INT NOT NULL ,
[UserName] NVARCHAR(200) NOT NULL ,
[isAdmin] BIT NOT NULL ,
[isActive] BIT NOT NULL ,CONSTRAINT PK_tblUserInfo PRIMARY KEY  CLUSTERED ([Id] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (8, 8, NULL, NULL, CAST(0x0000A436012068DF AS DateTime), 1, NULL, 10007, N'TABLE', N'dbo', N'tblUserSaveScript', N'CREATE TABLE [dbo].[tblUserSaveScript]
(
[StateName] NVARCHAR(50) NOT NULL ,
[ConnectionID] INT NOT NULL ,
[Script] NVARCHAR(MAX) NULL ,
[IsActive] BIT NULL ,CONSTRAINT PK_tblUserSaveScript PRIMARY KEY  CLUSTERED ([StateName] ASC,[ConnectionID] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (9, 9, NULL, NULL, CAST(0x0000A436012068E1 AS DateTime), 1, NULL, 10008, N'TABLE', N'dbo', N'tblUserSaveStates', N'CREATE TABLE [dbo].[tblUserSaveStates]
(
[StateName] NVARCHAR(50) NOT NULL ,
[ConnectionID] INT NOT NULL ,
[HTMLDOC] NVARCHAR(MAX) NOT NULL ,
[Attributes] NVARCHAR(MAX) NOT NULL ,
[Columns] NVARCHAR(MAX) NOT NULL ,
[TableName] NVARCHAR(50) NOT NULL ,CONSTRAINT PK_tblUserSaveStates_1 PRIMARY KEY  CLUSTERED ([StateName] ASC,[ConnectionID] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (10, 10, NULL, NULL, CAST(0x0000A436012068E4 AS DateTime), 1, NULL, 10009, N'TABLE', N'dbo', N'tblUserSaveStates_old', N'CREATE TABLE [dbo].[tblUserSaveStates_old]
(
[StateName] NVARCHAR(50) NOT NULL ,
[UserID] INT NOT NULL ,
[ConnectionID] INT NOT NULL ,
[HTMLDOC] NVARCHAR(MAX) NOT NULL ,
[Attributes] NVARCHAR(MAX) NOT NULL ,
[Columns] NVARCHAR(MAX) NOT NULL ,
[TableName] NVARCHAR(50) NOT NULL )', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (11, 11, NULL, NULL, CAST(0x0000A436012068E7 AS DateTime), 1, NULL, 10010, N'VIEW', N'dbo', N'View_1', N'CREATE VIEW [dbo].[View_1]
AS
SELECT     dbo.MapUserConnection.*
FROM         dbo.MapUserConnection
', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (12, 12, NULL, NULL, CAST(0x0000A436012068E7 AS DateTime), 1, NULL, 10011, N'FUNCTION', N'vc', N'GetRenamedScript', N'


create function [vc].[GetRenamedScript]
(
	@schema varchar(200),
	@oldName varchar(200),
	@newName varchar(200),
	@objectScript nvarchar(max)
)
returns nvarchar(max)
begin
	
	declare @newFullName varchar(500)=quotename(@schema)+''.''+quotename(@newName)


	declare @lastPatIndex int=charindex(@oldName,@objectScript)
	if @lastPatIndex=0
		set @lastPatIndex=charindex(quotename(@oldName),@objectScript)

	declare @oldFullNames table
	(
		Id int,
		OldFullName varchar(500)
	)

	insert into  @oldFullNames
	values
	(6,quotename(@schema)+''.''+quotename(@oldName)),
	(5,@schema+''.''+quotename(@oldName)),
	(4,@schema+''.''+@oldName),
	(3,quotename(@schema)+''.''+@oldName),
	(2,quotename(@oldName)),
	(1,@oldName)


	declare @max int
	select @max=max(id) from @oldFullNames

	while(@max>0)
	begin
		
		declare @oldFullName varchar(400)
		declare @index int

		select @oldFullName=OldFullName from @oldFullNames where Id=@max
		set @max=@max-1

		set @index=charindex(@oldFullName,@objectScript)
		
		if @index=0 or @index>@lastPatIndex
			continue
		else 
		begin 
			set @objectScript=stuff(@objectScript,@index,len(@oldFullName),@newFullName)
			break
		end

	end

	

	return @objectScript

end
', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (13, 13, NULL, NULL, CAST(0x0000A436012068E8 AS DateTime), 1, NULL, 10012, N'FUNCTION', N'vc', N'GetXmlFromScript', N'

CREATE function [vc].[GetXmlFromScript](@script nvarchar(max))
returns xml
begin

	set @script=replace(@script,''&'',''&amp;'')
	set @script=replace(@script,''"'',''&quot;'')
	set @script=replace(@script,''<'',''&lt;'')
	set @script=replace(@script,''>'',''&gt;'')
	
	
    return (CONVERT([xml],(((''<script>''+char((10)))+@script)+char((10)))+''</script>'',(0)))
	

end


', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (14, 14, NULL, NULL, CAST(0x0000A436012068E8 AS DateTime), 1, NULL, 10013, N'FUNCTION', N'vc', N'IsObjectDropped', N'



CREATE function [vc].[IsObjectDropped](@objectId int,@datetime datetime)
returns int
begin
	if exists 
	(
		select 
		* 
		from 
		vc.ObjectDropedPeriodRange
		where ObjectId=@objectId
		and
		( 
			(
				@datetime is not null and
				@datetime>=StartDatetime and  
				(EndDatetime is null or @datetime<EndDatetime)
			)

			or 
			(
				@datetime is null and EndDatetime is null
			)
		)
	)
	return 1

	return 0

end

', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (15, 15, NULL, NULL, CAST(0x0000A436012068E9 AS DateTime), 1, NULL, 10014, N'TABLE', N'vc', N'ObjectDropedPeriodRange', N'CREATE TABLE [vc].[ObjectDropedPeriodRange]
(
[Id] INT IDENTITY(1,1) NOT NULL ,
[ObjectId] INT NOT NULL ,
[StartDatetime] DATETIME NOT NULL ,
[EndDatetime] DATETIME NULL ,CONSTRAINT PK__ObjectDr__3214EC0733AA9866 PRIMARY KEY  CLUSTERED ([Id] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (16, 16, NULL, NULL, CAST(0x0000A436012068EC AS DateTime), 1, NULL, 10015, N'TABLE', N'vc', N'ObjectVersions', N'CREATE TABLE [vc].[ObjectVersions]
(
[VersionId] INT IDENTITY(1,1) NOT NULL ,
[FirstVersionId] INT NULL ,
[PrevVersionId] INT NULL ,
[NextVersionId] INT NULL ,
[VersionDatetime] DATETIME NOT NULL ,
[RevisionNo] INT NOT NULL CONSTRAINT [DF_ObjectVersions_RevisionNo] DEFAULT((1)),
[Comment] NVARCHAR(MAX) NULL ,
[ObjectId] INT NOT NULL ,
[ObjectType] VARCHAR(200) NOT NULL ,
[SchemaName] VARCHAR(100) NOT NULL ,
[ObjectName] VARCHAR(1000) NOT NULL ,
[ObjectScript] NVARCHAR(MAX) NOT NULL ,
[ObjectScriptXml] as ([vc].[GetXmlFromScript]([ObjectScript])),
[HostName] NVARCHAR(128) NOT NULL ,
[LoginName] NVARCHAR(128) NOT NULL ,
[ProgramName] NVARCHAR(1000) NOT NULL ,
[NetAddress] NCHAR(12) NOT NULL ,
[NetLibrary] NCHAR(12) NOT NULL ,
[SpId] SMALLINT NOT NULL ,CONSTRAINT PK__ObjectVe__16C6400F5BAD9CC8 PRIMARY KEY  CLUSTERED ([VersionId] ASC,[ObjectId] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (17, 17, NULL, NULL, CAST(0x0000A436012068EF AS DateTime), 1, NULL, 10016, N'PROCEDURE', N'vc', N'procAddSnapshot', N'



CREATE procedure [vc].[procAddSnapshot]
@name varchar(200),
@description varchar(4000)
as
begin 

	declare @maxVersionId int 
	select @maxVersionId=max(versionId) 
	from vc.ObjectVersions

	insert into vc.Snapshots
	(
		Name,
		Description,
		SnapshotDatetime,
		MaxVersionId
	)
	values(@name,@description,GETDATE(),@maxVersionId)

end 
', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (18, 18, NULL, NULL, CAST(0x0000A436012068F0 AS DateTime), 1, NULL, 10017, N'PROCEDURE', N'vc', N'procChangeObjectDropedPeriodRange', N'



CREATE procedure [vc].[procChangeObjectDropedPeriodRange]
	@schemaName varchar(200),
	@objectName varchar(200),
	@eventType varchar(10)
as
begin 

	if @objectName=''ObjectDropedPeriodRange'' and @schemaName=''vc''
		return

	if @eventType not in (''DROP'',''CREATE'')
	begin
		declare @errorMessage varchar(500)=@eventType+'' is not valid. Allowed eventType is DROP and CREATE''
		raiserror(@errorMessage,13,1)
		return
	end

	declare @datetimeNow datetime=getdate()
	declare @objectId int 
	declare @lastEventId int
	
	exec [vc].[procGetTrackedObject] @schemaName,@objectName,@datetimeNow,@objectId out
	
	select @lastEventId=Id
	from vc.ObjectDropedPeriodRange
	where ObjectId=@objectId
	and EndDatetime is null

	if @lastEventId is not null and @eventType=''CREATE''
		update vc.ObjectDropedPeriodRange
		set EndDatetime=@datetimeNow
		where Id=@lastEventId
	
	if @eventType=''DROP''
		insert into vc.ObjectDropedPeriodRange
		(
			[ObjectId],
			[StartDatetime]
		)
		values(@objectId,@datetimeNow)


end

', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (19, 19, NULL, NULL, CAST(0x0000A436012068F1 AS DateTime), 1, NULL, 10018, N'PROCEDURE', N'vc', N'procGetTrackedObject', N'


CREATE procedure [vc].[procGetTrackedObject]
@schemaName varchar(100),
@objectName varchar(1000),
@updateDatetime datetime,
@objectId int output
as
begin

select @objectId=ObjectId from vc.TrackedObjects
where SchemaName=@SchemaName
and ObjectName=@objectName


if(@objectId is null)
begin
	insert into vc.TrackedObjects
	(
		SchemaName,
		ObjectName,
		LastUpdateDate
	)
	values
	(@SchemaName,@ObjectName,@updateDatetime)
	
	set @objectId= SCOPE_IDENTITY()
end	
else 
	update vc.TrackedObjects
	set LastUpdateDate=@updateDatetime
	where ObjectId=@objectId

end

', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (20, 20, NULL, NULL, CAST(0x0000A436012068F1 AS DateTime), 1, NULL, 10019, N'PROCEDURE', N'vc', N'procLoadAllObjectsToVc', N'


CREATE procedure [vc].[procLoadAllObjectsToVc]
as
begin
	
	declare @schemaName varchar(200)
	declare @objectName varchar(200)
	declare @objectType varchar(200)

	declare curObjects cursor for
	select 
		SPECIFIC_SCHEMA as SchemaName,
		SPECIFIC_NAME as ObjectName,
		ROUTINE_TYPE as ObjectType
	from INFORMATION_SCHEMA.ROUTINES

	union 

	select 
		TABLE_SCHEMA as SchemaName,
		TABLE_NAME as ObjectName,
		case TABLE_TYPE when ''BASE TABLE'' then ''TABLE'' else ''VIEW'' end as ObjectType
	from 
	INFORMATION_SCHEMA.TABLES 

	open curObjects

	declare @datetimeNow datetime
	declare @objectId int
	declare @objectScript nvarchar(max)
	declare @objectFullName varchar(500)
	declare @oldObjectName varchar(200)

	fetch next from curObjects into 
		@schemaName,
		@objectName,
		@objectType



	while(@@FETCH_STATUS=0)
	begin
		
		set @objectFullName=quoteName(@schemaName)+''.''+quotename(@objectName)
		set @objectScript=null
		set @oldObjectName=null
		set @objectId=null
		set @datetimeNow=getdate()



		if @objectType=''TABLE''
		begin
			
			exec [vc].[procScriptTable] 
				@TableName=@objectFullName,
				@TableScript=@objectScript out

		end
		else 
		begin 
			select @objectScript=definition
			from sys.all_sql_modules
			where object_id=OBJECT_ID(@objectFullName)
		end

		if @objectScript is null
			goto fetchNext


		select @objectId=ObjectId 
		from vc.TrackedObjects
		where SchemaName=@schemaName
		and ObjectName=@objectName
		
		


		if @objectId is null
		begin 
			insert into vc.TrackedObjects
			(
				[SchemaName],
				ObjectName,
				LastUpdateDate
			)
			values
			(
				@schemaName,
				@objectName,
				@datetimeNow
			)
			set @objectId=SCOPE_IDENTITY()
		end


		select @oldObjectName=ObjectName 
		from vc.ObjectVersions 
		where ObjectId=@objectId
		and NextVersionId is null

		if @oldObjectName is not null and @oldObjectName<>@objectName
		begin 
			set @objectScript=vc.GetRenamedScript(@schemaName,@oldObjectName,@objectName,@objectScript)
		end

		exec [vc].[procLoadNewVersion]
			@objectId,
			@objectType,
			@objectScript,
			@@spid,
			@datetimeNow 
			
		
		fetchNext:
		fetch next from curObjects 
		into @schemaName,@objectName,@objectType
	
	end


	close curObjects
	deallocate curObjects

end
', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (21, 21, NULL, NULL, CAST(0x0000A436012068F2 AS DateTime), 1, N' loading new version ', 10020, N'PROCEDURE', N'vc', N'procLoadNewVersion', N'



CREATE procedure [vc].[procLoadNewVersion]
@objectId int,
@objectType varchar(100),
@objectScript nvarchar(max),
@spid smallint,
@updateDatetime datetime
as
begin
	/* loading new version */
	declare @objectName varchar(1000)
	declare @schemaName varchar(100)
	declare @firstVersionId int
	declare @hostName nvarchar(128)
	declare @loginName nvarchar(128)
	declare @programName nvarchar(128)
	declare @netAddress nchar(12)
	declare @netLibrary nchar(12)
	declare @comment nvarchar(max)
	declare @prevObjectScript nvarchar(max)
	declare @versionId int
	declare @revisionNo int

	select 
		@objectName=ObjectName,
		@schemaName=SchemaName	
	from vc.TrackedObjects
	where ObjectId=@objectId	

	select @versionId=MAX(VersionId) from 
	vc.ObjectVersions 
	where ObjectId=@objectId 
	
	
	select
		@revisionNo=RevisionNo,
		@firstVersionId=FirstVersionId,
		@prevObjectScript=ObjectScript from vc.ObjectVersions
	where VersionId=@versionId

	if(@prevObjectScript=@objectScript COLLATE SQL_Latin1_General_CP1_CS_AS)
		goto printLabel
	
	set @revisionNo=isnull(@revisionNo,0)+1

	
	select 
		@hostName=hostname,
		@loginName=loginame,
		@programName=program_name,
		@netAddress=net_address,
		@netLibrary=net_library
	from sys.sysprocesses
	where spid=@spId


	---------extracting the comment----------

	declare @startIndex int=charindex(''/*'',@objectScript)
	declare @endIndex int
	if(@startIndex>0)
		set @endIndex=charindex(''*/'',@objectScript,@startIndex)
	
	if(@startIndex>0 and @endIndex>@startIndex)
		set @comment=SUBSTRING(@objectScript,@startIndex+2,@endIndex-@startIndex-2)
	

	------------------------------------------


insert into vc.ObjectVersions
(
	FirstVersionId,
	PrevVersionId, 
	VersionDatetime, 
	RevisionNo,
	Comment, 
	ObjectId, 
	SchemaName, 
	ObjectName, 
	ObjectType, 
	ObjectScript, 
	HostName, 
	LoginName, 
	ProgramName, 
	NetAddress, 
	NetLibrary, 
	SpId
)
values
(
	@firstVersionId,
	@versionId,
	@updateDatetime,
	@revisionNo,
	@comment,
	@objectId,
	@SchemaName,
	@objectName,
	@ObjectType,
	@objectScript,
	@hostName,
	@loginName,
	@programName,
	@netAddress,
	@netLibrary,
	@spId
)

declare @newVersionId int=scope_identity()

if(@versionId is null)
	update vc.ObjectVersions
	set FirstVersionId=@newVersionId
	where VersionId=@newVersionId
else 
	update vc.ObjectVersions
	set NextVersionId=@newVersionId
	where VersionId=@versionId
	
	
set @versionId=@newVersionId

printLabel:
print ''Command completed successfully
From VersionControl: Saved as a version successfully. 
Object name: ''+quotename(@schemaName)+''.''+quotename(@objectName)+''
VersionId: ''+cast(@versionId as varchar)+''
Revision No: ''+cast(@revisionNo as varchar)


	
end

', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (22, 22, NULL, NULL, CAST(0x0000A436012068F3 AS DateTime), 1, NULL, 10021, N'PROCEDURE', N'vc', N'procRenameObject', N'


CREATE procedure [vc].[procRenameObject]
@objectId int,
@newObjectName varchar(100),
@updateDateTime datetime,
@objectScript nvarchar(max) out
as
begin
	
	declare @def nvarchar(max)
	declare @schema varchar(200)
	declare @oldName varchar(200)
	declare @versionId int

	select 
		@versionId=[VersionId],
		@def=ltrim([ObjectScript]),
		@oldName=ObjectName,
		@schema=SchemaName 
	from vc.ObjectVersions
	where ObjectId=@objectId
	and NextVersionId is null
	set @objectScript=vc.GetRenamedScript(@schema,@oldName,@newObjectName,@def)
	
	update vc.TrackedObjects
	set ObjectName=@newObjectName,
	LastUpdateDate=@updateDateTime
	where ObjectId=@objectId


end
', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (23, 23, NULL, NULL, CAST(0x0000A436012068F4 AS DateTime), 1, NULL, 10022, N'PROCEDURE', N'vc', N'procRetriveObjects', N'

CREATE procedure [vc].[procRetriveObjects]
@snapshotId int=null,
@datetime datetime=null
as
begin
	

	if @snapshotId is not null
	begin
		declare @maxVersionId int
		declare @snapShotDatetime datetime 
		select 
			@maxVersionId=MaxVersionId, 
			@snapShotDatetime=SnapshotDatetime
		from vc.Snapshots
		where Id=@snapshotId

		select 
			a.*
		from 
		vc.objectVersions a,
		(
			select 
				ObjectId,
				max(VersionId) versionId
			from 
			ObjectVersions a
			where a.VersionId<=@maxVersionId
			group by ObjectId
		) b
		where a.ObjectId=b.ObjectId
		and a.VersionId=b.versionId
		and vc.IsObjectDropped(a.ObjectId,@snapShotDatetime)=0
		order by a.ObjectType,a.SchemaName,a.ObjectName
	
	end


	
	else if @datetime is not null
	begin 
		select 
			a.*
		from 
		vc.objectVersions a,
		(
			select 
				ObjectId,
				max(VersionId) versionId
			from 
			ObjectVersions a
			where a.VersionDatetime<=@datetime
			group by ObjectId
		) b
		where a.ObjectId=b.ObjectId
		and a.VersionId=b.versionId
		and vc.IsObjectDropped(a.ObjectId,@datetime)=0
		order by a.ObjectType,a.SchemaName,a.ObjectName
		return
	end

	else 
		select 
		*
		from 
		vc.ObjectVersions a
		where NextVersionId is null
		and vc.IsObjectDropped(a.ObjectId,null)=0
		order by a.ObjectType,a.SchemaName,a.ObjectName


end
', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (24, 24, NULL, NULL, CAST(0x0000A436012068F4 AS DateTime), 1, N'this is sample comment', 10023, N'PROCEDURE', N'vc', N'procScriptTable', N'



CREATE PROCEDURE [vc].[procScriptTable]
(
@TableName SYSNAME, 
@IncludeConstraints BIT = 1, 
@IncludeIndexes BIT = 1, 
@NewTableName SYSNAME = NULL, 
@UseSystemDataTypes BIT = 0,
@TableScript nvarchar(max) out
)
AS
BEGIN
set nocount on
/*this is sample comment*/
DECLARE @MainDefinition TABLE
(
FieldValue VARCHAR(200)
)

DECLARE @DBName SYSNAME
DECLARE @ClusteredPK BIT
DECLARE @TableSchema NVARCHAR(255)
SET @DBName = DB_NAME(DB_ID())

--//Make sure the dgdkl table name is the same case.
SELECT @TableName = name FROM sysobjects WHERE id = OBJECT_ID(@TableName)

DECLARE @ShowFields TABLE
(
	FieldID INT IDENTITY(1,1),
	DatabaseName VARCHAR(100),
	TableOwner VARCHAR(100),
	TableName VARCHAR(100),
	FieldName VARCHAR(100),
	ColumnPosition INT,
	ColumnDefaultValue VARCHAR(100),
	ColumnDefaultName VARCHAR(100),
	IsNullable BIT, 
	Datatype VARCHAR(100),
	ComputedColumnDefination nvarchar(max),
	MaxLength INT,
	NumericPrecision INT,
	NumericScale INT,
	DomainName VARCHAR(100), 
	FieldListingName VARCHAR(110), 
	FieldDefinition CHAR(1),
	IdentityColumn BIT, 
	IdentitySeed INT,
	IdentityIncrement INT, 
	IsCharColumn BIT,
	IsNumericColumn BIT
)

DECLARE @HoldingArea TABLE
(
	FldID SMALLINT IDENTITY(1,1),
	Flds VARCHAR(4000), 
	FldValue CHAR(1) DEFAULT(0)
)


DECLARE @PKObjectID TABLE
(
	ObjectID INT
)

DECLARE @Uniques TABLE
(
	ObjectID INT
)

DECLARE @HoldingAreaValues TABLE
(
	FldID SMALLINT IDENTITY(1,1),
	Flds VARCHAR(4000), 
	FldValue CHAR(1) DEFAULT(0)
)

DECLARE @Definition TABLE
(
	DefinitionID SMALLINT IDENTITY(1,1),
	FieldValue VARCHAR(200)
)

INSERT INTO @ShowFields
(	
	DatabaseName,
	TableOwner,
	TableName,
	FieldName,
	ColumnPosition,
	ColumnDefaultValue,
	ColumnDefaultName,
	IsNullable, 
	DataType,
	ComputedColumnDefination,
	MaxLength,
	NumericPrecision,
	NumericScale,
	DomainName,
	FieldListingName, 
	FieldDefinition, 
	IdentityColumn,
	IdentitySeed, 
	IdentityIncrement, 
	IsCharColumn,
	IsNumericColumn
)

SELECT 
DB_NAME(), 
TABLE_SCHEMA,
TABLE_NAME,
COLUMN_NAME,
CAST(ORDINAL_POSITION AS INT),
COLUMN_DEFAULT,
dobj.name AS ColumnDefaultName,
CASE WHEN c.IS_NULLABLE = ''YES'' THEN 1 ELSE 0 END,
DATA_TYPE,
cc.definition,
CAST(CHARACTER_MAXIMUM_LENGTH AS INT),
CAST(NUMERIC_PRECISION AS INT),
CAST(NUMERIC_SCALE AS INT),
DOMAIN_NAME,
COLUMN_NAME + '','',
'''' AS FieldDefinition,
CASE WHEN ic.object_id IS NULL THEN 0 ELSE 1 END AS IdentityColumn, 
CAST(ISNULL(ic.seed_value,0) AS INT) AS IdentitySeed, 
CAST(ISNULL(ic.increment_value,0) AS INT) AS IdentityIncrement, 
CASE WHEN st.collation_name IS NOT NULL THEN 1 ELSE 0 END AS IsCharColumn,
case when st.name in (''numeric'',''decimal'') then 1 else 0 end as IsNumericColun
FROM 
INFORMATION_SCHEMA.COLUMNS c
JOIN sys.columns sc ON c.TABLE_NAME = OBJECT_NAME(sc.object_id) AND c.COLUMN_NAME = sc.Name
LEFT JOIN sys.identity_columns ic ON c.TABLE_NAME = OBJECT_NAME(ic.object_id) AND c.COLUMN_NAME = ic.Name
JOIN sys.types st ON COALESCE(c.DOMAIN_NAME,c.DATA_TYPE) = st.name
LEFT OUTER JOIN sys.objects dobj ON dobj.object_id = sc.default_object_id AND dobj.type = ''D''
LEFT JOIN sys.computed_columns cc
	on sc.object_id=cc.object_id
	and sc.name=cc.name
WHERE c.TABLE_NAME = @TableName
ORDER BY 
c.TABLE_NAME, c.ORDINAL_POSITION

SELECT TOP 1 @TableSchema = TableOwner
FROM @ShowFields

INSERT INTO @HoldingArea (Flds) VALUES(''('')

INSERT INTO @Definition(FieldValue)
VALUES(''CREATE TABLE '' + CASE WHEN @NewTableName IS NOT NULL THEN @NewTableName ELSE ''[''+@TableSchema + ''].['' + @TableName+'']''+CHAR(10) END)

INSERT INTO @Definition(FieldValue)
VALUES(''('')

INSERT INTO @Definition(FieldValue)
SELECT 
CHAR(10) +''[''+ FieldName + ''] '' + 
case when ComputedColumnDefination is not null then (''as ''+ComputedColumnDefination)
else 
	CASE 
	WHEN DomainName IS NOT NULL AND @UseSystemDataTypes = 0 THEN DomainName + CASE WHEN IsNullable = 1 THEN '' NULL '' ELSE '' NOT NULL '' END
	ELSE UPPER(DataType) + 
		CASE WHEN IsCharColumn = 1 THEN ''('' + case MaxLength when -1 then ''MAX'' else cast(MaxLength as varchar) end + '')'' 
		WHEN IsNumericColumn =1 THEN ''(''+cast(NumericPrecision as varchar)+'',''+cast(NumericScale as varchar)+'')''
		ELSE '''' END 
	+
	CASE 
		WHEN IdentityColumn = 1 THEN '' IDENTITY('' + CAST(IdentitySeed AS VARCHAR(5))+ '','' + CAST(IdentityIncrement AS VARCHAR(5)) + '')'' ELSE '''' END +
	CASE 
		WHEN IsNullable = 1 THEN '' NULL '' ELSE '' NOT NULL '' END +
	CASE 
		WHEN ColumnDefaultName IS NOT NULL AND @IncludeConstraints = 1 THEN ''CONSTRAINT ['' + ColumnDefaultName + ''] DEFAULT'' + UPPER(ColumnDefaultValue) ELSE '''' END
	END 
end
+ 

CASE WHEN FieldID = (SELECT MAX(FieldID) FROM @ShowFields) THEN '''' ELSE '','' END
FROM	@ShowFields 

IF @IncludeConstraints = 1
BEGIN
INSERT INTO @Definition(FieldValue)
SELECT 
'',CONSTRAINT ['' + name + ''] FOREIGN KEY ('' + ParentColumns + '') REFERENCES ['' + ReferencedObject + '']('' + ReferencedColumns + '')''
FROM
(
SELECT 
ReferencedObject = OBJECT_NAME(fk.referenced_object_id), ParentObject = OBJECT_NAME(parent_object_id),fk.name,
REVERSE(SUBSTRING(REVERSE((
SELECT ''[''+cp.name+'']''+ '',''
FROM
sys.foreign_key_columns fkc
JOIN sys.columns cp ON fkc.parent_object_id = cp.object_id AND fkc.parent_column_id = cp.column_id
WHERE fkc.constraint_object_id = fk.object_id
FOR XML PATH('''')
)), 2, 8000)) ParentColumns, 
REVERSE(SUBSTRING(REVERSE((
SELECT ''[''+cr.name +'']''+ '',''
FROM
sys.foreign_key_columns fkc
JOIN sys.columns cr ON fkc.referenced_object_id = cr.object_id AND fkc.referenced_column_id = cr.column_id
WHERE fkc.constraint_object_id = fk.object_id
FOR XML PATH('''')
)), 2, 8000)) ReferencedColumns
FROM sys.foreign_keys fk
) a
WHERE ParentObject = @TableName

INSERT INTO @Definition(FieldValue)
SELECT'',CONSTRAINT ['' + name + ''] CHECK '' + definition FROM sys.check_constraints
WHERE OBJECT_NAME(parent_object_id) = @TableName

--------------------------------------------------------------------------------------------

INSERT INTO @PKObjectID(ObjectID)
SELECT DISTINCT 
PKObject = cco.object_id
FROM 
sys.key_constraints cco
JOIN sys.index_columns cc ON cco.parent_object_id = cc.object_id AND cco.unique_index_id = cc.index_id
JOIN sys.indexes i ON cc.object_id = i.object_id AND cc.index_id = i.index_id
WHERE 
OBJECT_NAME(parent_object_id) = @TableName	AND	
i.type = 1 AND 
is_primary_key = 1

INSERT INTO @Uniques(ObjectID)
SELECT DISTINCT 
PKObject = cco.object_id
FROM 
sys.key_constraints cco
JOIN sys.index_columns cc ON cco.parent_object_id = cc.object_id AND cco.unique_index_id = cc.index_id
JOIN sys.indexes i ON cc.object_id = i.object_id AND cc.index_id = i.index_id
WHERE 
OBJECT_NAME(parent_object_id) = @TableName AND	
i.type = 2 AND
is_primary_key = 0 AND
is_unique_constraint = 1 

SET @ClusteredPK = CASE WHEN @@ROWCOUNT>0 THEN 1 ELSE 0 END

INSERT INTO @Definition(FieldValue)
SELECT	'',CONSTRAINT '' + name + CASE type WHEN ''PK'' THEN '' PRIMARY KEY '' + CASE WHEN pk.ObjectID IS NULL THEN '' NONCLUSTERED '' ELSE '' CLUSTERED '' END 
WHEN ''UQ'' THEN '' UNIQUE '' END + CASE WHEN u.ObjectID IS NOT NULL THEN '' NONCLUSTERED '' ELSE '''' END + ''('' +
REVERSE(SUBSTRING(REVERSE((
SELECT 
''[''+c.name +'']''+ CASE WHEN cc.is_descending_key = 1 THEN '' DESC'' ELSE '' ASC'' END + '',''
FROM 
sys.key_constraints ccok
LEFT JOIN sys.index_columns cc ON ccok.parent_object_id = cc.object_id AND cco.unique_index_id = cc.index_id
LEFT JOIN sys.columns c ON cc.object_id = c.object_id AND cc.column_id = c.column_id
LEFT JOIN sys.indexes i ON cc.object_id = i.object_id AND cc.index_id = i.index_id
WHERE 
i.object_id = ccok.parent_object_id AND 
ccok.object_id = cco.object_id
FOR XML PATH('''')
)), 2, 8000)) + '')''
FROM 
sys.key_constraints cco
LEFT JOIN @PKObjectID pk ON cco.object_id = pk.ObjectID
LEFT JOIN @Uniques u ON cco.object_id = u.objectID
WHERE 
OBJECT_NAME(cco.parent_object_id) = @TableName
END
----------------------------------------------------------------------------------------------
INSERT INTO @Definition(FieldValue)
VALUES('')'')

IF @IncludeIndexes = 1
BEGIN
INSERT INTO @Definition(FieldValue)
SELECT 
''CREATE '' + type_desc + '' INDEX ['' + [name] COLLATE SQL_Latin1_General_CP1_CI_AS + ''] ON ['' + OBJECT_NAME(object_id) + ''] ('' + 
REVERSE(SUBSTRING(REVERSE((
SELECT ''[''+name+'']'' + CASE WHEN sc.is_descending_key = 1 THEN '' DESC'' ELSE '' ASC'' END + '',''
FROM 
sys.index_columns sc
JOIN sys.columns c ON sc.object_id = c.object_id AND sc.column_id = c.column_id
WHERE 
OBJECT_NAME(sc.object_id) = @TableName AND
sc.object_id = i.object_id AND 
sc.index_id = i.index_id
ORDER BY index_column_id ASC
FOR XML PATH('''')
)), 2, 8000)) + '')''
FROM sys.indexes i
WHERE 
OBJECT_NAME(object_id) = @TableName
AND CASE WHEN @ClusteredPK = 1 AND is_primary_key = 1 AND type = 1 THEN 0 ELSE 1 END = 1
AND is_unique_constraint = 0
AND is_primary_key = 0
END
INSERT INTO @MainDefinition(FieldValue)
SELECT FieldValue FROM @Definition 
ORDER BY DefinitionID ASC

set @TableScript=''''

SELECT @TableScript=@TableScript+isnull(FieldValue,'''') 
FROM @MainDefinition

END


', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (25, 25, NULL, NULL, CAST(0x0000A436012068F5 AS DateTime), 1, NULL, 10024, N'TABLE', N'vc', N'Snapshots', N'CREATE TABLE [vc].[Snapshots]
(
[Id] INT IDENTITY(1,1) NOT NULL ,
[Name] VARCHAR(200) NOT NULL ,
[Description] VARCHAR(400) NOT NULL ,
[SnapshotDatetime] DATETIME NOT NULL ,
[MaxVersionId] INT NOT NULL ,CONSTRAINT PK__Snapshot__3214EC072F4FF79D PRIMARY KEY  CLUSTERED ([Id] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (26, 26, NULL, NULL, CAST(0x0000A436012068F8 AS DateTime), 1, NULL, 10025, N'TABLE', N'vc', N'TrackedObjects', N'CREATE TABLE [vc].[TrackedObjects]
(
[ObjectId] INT IDENTITY(10000,1) NOT NULL ,
[SchemaName] VARCHAR(100) NOT NULL ,
[ObjectName] VARCHAR(1000) NOT NULL ,
[LastUpdateDate] DATETIME NOT NULL ,CONSTRAINT PK__TrackedO__9A61929157DD0BE4 PRIMARY KEY  CLUSTERED ([ObjectId] ASC))', N'                                                                                                                                ', N'sa                                                                                                                              ', N'                                                                                                                                ', N'            ', N'            ', 28)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (27, 27, NULL, NULL, CAST(0x0000A45000DEACEE AS DateTime), 1, NULL, 10026, N'TABLE', N'dbo', N'UserProfile', N'CREATE TABLE [dbo].[UserProfile]
(
[UserId] INT IDENTITY(1,1) NOT NULL ,
[UserName] NVARCHAR(56) NOT NULL ,CONSTRAINT PK__UserProf__1788CC4C2C3393D0 PRIMARY KEY  CLUSTERED ([UserId] ASC),CONSTRAINT UQ__UserProf__C9F284562F10007B UNIQUE  NONCLUSTERED ([UserName] ASC))', N'DACW0140                                                                                                                        ', N'SQLDataViewer                                                                                                                   ', N'.Net SqlClient Data Provider                                                                                                    ', N'9F8AA26C8B39', N'LPC         ', 57)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (28, 28, NULL, 109, CAST(0x0000A45000DEAFBB AS DateTime), 1, NULL, 10027, N'TABLE', N'dbo', N'webpages_OAuthMembership', N'CREATE TABLE [dbo].[webpages_OAuthMembership]
(
[Provider] NVARCHAR(30) NOT NULL ,
[ProviderUserId] NVARCHAR(100) NOT NULL ,
[UserId] INT NOT NULL ,CONSTRAINT PK__webpages__F53FC0ED32E0915F PRIMARY KEY  CLUSTERED ([Provider] ASC,[ProviderUserId] ASC))', N'DACW0140                                                                                                                        ', N'SQLDataViewer                                                                                                                   ', N'.Net SqlClient Data Provider                                                                                                    ', N'9F8AA26C8B39', N'LPC         ', 57)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (29, 29, NULL, 110, CAST(0x0000A45000DEAFDC AS DateTime), 1, NULL, 10028, N'TABLE', N'dbo', N'webpages_Membership', N'CREATE TABLE [dbo].[webpages_Membership]
(
[UserId] INT NOT NULL ,
[CreateDate] DATETIME NULL ,
[ConfirmationToken] NVARCHAR(128) NULL ,
[IsConfirmed] BIT NULL CONSTRAINT [DF__webpages___IsCon__38996AB5] DEFAULT((0)),
[LastPasswordFailureDate] DATETIME NULL ,
[PasswordFailuresSinceLastSuccess] INT NOT NULL CONSTRAINT [DF__webpages___Passw__398D8EEE] DEFAULT((0)),
[Password] NVARCHAR(128) NOT NULL ,
[PasswordChangedDate] DATETIME NULL ,
[PasswordSalt] NVARCHAR(128) NOT NULL ,
[PasswordVerificationToken] NVARCHAR(128) NULL ,
[PasswordVerificationTokenExpirationDate] DATETIME NULL ,CONSTRAINT PK__webpages__1788CC4C36B12243 PRIMARY KEY  CLUSTERED ([UserId] ASC))', N'DACW0140                                                                                                                        ', N'SQLDataViewer                                                                                                                   ', N'.Net SqlClient Data Provider                                                                                                    ', N'9F8AA26C8B39', N'LPC         ', 57)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (30, 30, NULL, 111, CAST(0x0000A45000DEAFF1 AS DateTime), 1, NULL, 10029, N'TABLE', N'dbo', N'webpages_Roles', N'CREATE TABLE [dbo].[webpages_Roles]
(
[RoleId] INT IDENTITY(1,1) NOT NULL ,
[RoleName] NVARCHAR(256) NOT NULL ,CONSTRAINT PK__webpages__8AFACE1A3C69FB99 PRIMARY KEY  CLUSTERED ([RoleId] ASC),CONSTRAINT UQ__webpages__8A2B61603F466844 UNIQUE  NONCLUSTERED ([RoleName] ASC))', N'DACW0140                                                                                                                        ', N'SQLDataViewer                                                                                                                   ', N'.Net SqlClient Data Provider                                                                                                    ', N'9F8AA26C8B39', N'LPC         ', 57)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (31, 31, NULL, 112, CAST(0x0000A45000DEAFF6 AS DateTime), 1, NULL, 10030, N'TABLE', N'dbo', N'webpages_UsersInRoles', N'CREATE TABLE [dbo].[webpages_UsersInRoles]
(
[UserId] INT NOT NULL ,
[RoleId] INT NOT NULL ,CONSTRAINT [fk_UserId] FOREIGN KEY ([UserId]) REFERENCES [UserProfile]([UserId]),CONSTRAINT [fk_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [webpages_Roles]([RoleId]),CONSTRAINT PK__webpages__AF2760AD4316F928 PRIMARY KEY  CLUSTERED ([UserId] ASC,[RoleId] ASC))', N'DACW0140                                                                                                                        ', N'SQLDataViewer                                                                                                                   ', N'.Net SqlClient Data Provider                                                                                                    ', N'9F8AA26C8B39', N'LPC         ', 57)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (32, 32, NULL, NULL, CAST(0x0000A45000FA19B2 AS DateTime), 1, NULL, 10031, N'PROCEDURE', N'dbo', N'aspnet_Setup_RestorePermissions', N'
CREATE PROCEDURE [dbo].aspnet_Setup_RestorePermissions
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (33, 33, NULL, NULL, CAST(0x0000A45000FA19BB AS DateTime), 1, NULL, 10032, N'PROCEDURE', N'dbo', N'aspnet_Setup_RemoveAllRoleMembers', N'
CREATE PROCEDURE [dbo].aspnet_Setup_RemoveAllRoleMembers
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (34, 34, NULL, NULL, CAST(0x0000A45000FA19E7 AS DateTime), 1, NULL, 10033, N'TABLE', N'dbo', N'aspnet_Applications', N'CREATE TABLE [dbo].[aspnet_Applications]
(
[ApplicationName] NVARCHAR(256) NOT NULL ,
[LoweredApplicationName] NVARCHAR(256) NOT NULL ,
[ApplicationId] UNIQUEIDENTIFIER NOT NULL CONSTRAINT [DF__aspnet_Ap__Appli__52593CB8] DEFAULT(NEWID()),
[Description] NVARCHAR(256) NULL ,CONSTRAINT PK__aspnet_A__C93A4C984AB81AF0 PRIMARY KEY  NONCLUSTERED ([ApplicationId] ASC),CONSTRAINT UQ__aspnet_A__17477DE44D94879B UNIQUE  NONCLUSTERED ([LoweredApplicationName] ASC),CONSTRAINT UQ__aspnet_A__309103315070F446 UNIQUE  NONCLUSTERED ([ApplicationName] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (35, 35, NULL, NULL, CAST(0x0000A45000FA1A26 AS DateTime), 1, NULL, 10034, N'TABLE', N'dbo', N'aspnet_Users', N'CREATE TABLE [dbo].[aspnet_Users]
(
[ApplicationId] UNIQUEIDENTIFIER NOT NULL ,
[UserId] UNIQUEIDENTIFIER NOT NULL CONSTRAINT [DF__aspnet_Us__UserI__5812160E] DEFAULT(NEWID()),
[UserName] NVARCHAR(256) NOT NULL ,
[LoweredUserName] NVARCHAR(256) NOT NULL ,
[MobileAlias] NVARCHAR(16) NULL CONSTRAINT [DF__aspnet_Us__Mobil__59063A47] DEFAULT(NULL),
[IsAnonymous] BIT NOT NULL CONSTRAINT [DF__aspnet_Us__IsAno__59FA5E80] DEFAULT((0)),
[LastActivityDate] DATETIME NOT NULL ,CONSTRAINT [FK__aspnet_Us__Appli__571DF1D5] FOREIGN KEY ([ApplicationId]) REFERENCES [aspnet_Applications]([ApplicationId]),CONSTRAINT PK__aspnet_U__1788CC4D5535A963 PRIMARY KEY  NONCLUSTERED ([UserId] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (36, 36, NULL, NULL, CAST(0x0000A45000FA1A42 AS DateTime), 1, NULL, 10035, N'TABLE', N'dbo', N'aspnet_SchemaVersions', N'CREATE TABLE [dbo].[aspnet_SchemaVersions]
(
[Feature] NVARCHAR(128) NOT NULL ,
[CompatibleSchemaVersion] NVARCHAR(128) NOT NULL ,
[IsCurrentVersion] BIT NOT NULL ,CONSTRAINT PK__aspnet_S__5A1E6BC15CD6CB2B PRIMARY KEY  CLUSTERED ([Feature] ASC,[CompatibleSchemaVersion] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (37, 37, NULL, NULL, CAST(0x0000A45000FA1A5A AS DateTime), 1, NULL, 10036, N'PROCEDURE', N'dbo', N'aspnet_RegisterSchemaVersion', N'
CREATE PROCEDURE [dbo].aspnet_RegisterSchemaVersion
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (38, 38, NULL, NULL, CAST(0x0000A45000FA1AB5 AS DateTime), 1, NULL, 10037, N'PROCEDURE', N'dbo', N'aspnet_CheckSchemaVersion', N'
CREATE PROCEDURE [dbo].aspnet_CheckSchemaVersion
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (39, 39, NULL, NULL, CAST(0x0000A45000FA1AE9 AS DateTime), 1, NULL, 10038, N'PROCEDURE', N'dbo', N'aspnet_Applications_CreateApplication', N'
CREATE PROCEDURE [dbo].aspnet_Applications_CreateApplication
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (40, 40, NULL, NULL, CAST(0x0000A45000FA1AF2 AS DateTime), 1, NULL, 10039, N'PROCEDURE', N'dbo', N'aspnet_UnRegisterSchemaVersion', N'
CREATE PROCEDURE [dbo].aspnet_UnRegisterSchemaVersion
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (41, 41, NULL, NULL, CAST(0x0000A45000FA1B01 AS DateTime), 1, NULL, 10040, N'PROCEDURE', N'dbo', N'aspnet_Users_CreateUser', N'
CREATE PROCEDURE [dbo].aspnet_Users_CreateUser
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (42, 42, NULL, NULL, CAST(0x0000A45000FA1B0C AS DateTime), 1, NULL, 10041, N'PROCEDURE', N'dbo', N'aspnet_Users_DeleteUser', N'CREATE PROCEDURE [dbo].aspnet_Users_DeleteUser
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (43, 43, NULL, NULL, CAST(0x0000A45000FA1B12 AS DateTime), 1, NULL, 10042, N'PROCEDURE', N'dbo', N'aspnet_AnyDataInTables', N'CREATE PROCEDURE [dbo].aspnet_AnyDataInTables
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (44, 44, NULL, NULL, CAST(0x0000A45000FA1B32 AS DateTime), 1, NULL, 10043, N'VIEW', N'dbo', N'vw_aspnet_Applications', N'
  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (45, 45, NULL, NULL, CAST(0x0000A45000FA1B3A AS DateTime), 1, NULL, 10044, N'VIEW', N'dbo', N'vw_aspnet_Users', N'
  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (46, 46, NULL, 47, CAST(0x0000A45000FA1B74 AS DateTime), 1, NULL, 10045, N'TABLE', N'dbo', N'aspnet_Membership', N'CREATE TABLE [dbo].[aspnet_Membership]
(
[ApplicationId] UNIQUEIDENTIFIER NOT NULL ,
[UserId] UNIQUEIDENTIFIER NOT NULL ,
[Password] NVARCHAR(128) NOT NULL ,
[PasswordFormat] INT NOT NULL CONSTRAINT [DF__aspnet_Me__Passw__6D0D32F4] DEFAULT((0)),
[PasswordSalt] NVARCHAR(128) NOT NULL ,
[MobilePIN] NVARCHAR(16) NULL ,
[Email] NVARCHAR(256) NULL ,
[LoweredEmail] NVARCHAR(256) NULL ,
[PasswordQuestion] NVARCHAR(256) NULL ,
[PasswordAnswer] NVARCHAR(128) NULL ,
[IsApproved] BIT NOT NULL ,
[IsLockedOut] BIT NOT NULL ,
[CreateDate] DATETIME NOT NULL ,
[LastLoginDate] DATETIME NOT NULL ,
[LastPasswordChangedDate] DATETIME NOT NULL ,
[LastLockoutDate] DATETIME NOT NULL ,
[FailedPasswordAttemptCount] INT NOT NULL ,
[FailedPasswordAttemptWindowStart] DATETIME NOT NULL ,
[FailedPasswordAnswerAttemptCount] INT NOT NULL ,
[FailedPasswordAnswerAttemptWindowStart] DATETIME NOT NULL ,
[Comment] NTEXT(1073741823) NULL ,CONSTRAINT [FK__aspnet_Me__Appli__6B24EA82] FOREIGN KEY ([ApplicationId]) REFERENCES [aspnet_Applications]([ApplicationId]),CONSTRAINT [FK__aspnet_Me__UserI__6C190EBB] FOREIGN KEY ([UserId]) REFERENCES [aspnet_Users]([UserId]),CONSTRAINT PK__aspnet_M__1788CC4D693CA210 PRIMARY KEY  NONCLUSTERED ([UserId] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (47, 46, 46, NULL, CAST(0x0000A45000FA1C11 AS DateTime), 2, NULL, 10045, N'TABLE', N'dbo', N'aspnet_Membership', N'CREATE TABLE [dbo].[aspnet_Membership]
(
[ApplicationId] UNIQUEIDENTIFIER NOT NULL ,
[UserId] UNIQUEIDENTIFIER NOT NULL ,
[Password] NVARCHAR(128) NOT NULL ,
[PasswordFormat] INT NOT NULL CONSTRAINT [DF__aspnet_Me__Passw__6D0D32F4] DEFAULT((0)),
[PasswordSalt] NVARCHAR(128) NOT NULL ,
[MobilePIN] NVARCHAR(16) NULL ,
[Email] NVARCHAR(256) NULL ,
[LoweredEmail] NVARCHAR(256) NULL ,
[PasswordQuestion] NVARCHAR(256) NULL ,
[PasswordAnswer] NVARCHAR(128) NULL ,
[IsApproved] BIT NOT NULL ,
[IsLockedOut] BIT NOT NULL ,
[CreateDate] DATETIME NOT NULL ,
[LastLoginDate] DATETIME NOT NULL ,
[LastPasswordChangedDate] DATETIME NOT NULL ,
[LastLockoutDate] DATETIME NOT NULL ,
[FailedPasswordAttemptCount] INT NOT NULL ,
[FailedPasswordAttemptWindowStart] DATETIME NOT NULL ,
[FailedPasswordAnswerAttemptCount] INT NOT NULL ,
[FailedPasswordAnswerAttemptWindowStart] DATETIME NOT NULL ,
[Comment] NTEXT(1073741823) NULL ,CONSTRAINT [FK__aspnet_Me__Appli__6B24EA82] FOREIGN KEY ([ApplicationId]) REFERENCES [aspnet_Applications]([ApplicationId]),CONSTRAINT [FK__aspnet_Me__UserI__6C190EBB] FOREIGN KEY ([UserId]) REFERENCES [aspnet_Users]([UserId]),CONSTRAINT PK__aspnet_M__1788CC4D693CA210 PRIMARY KEY  NONCLUSTERED ([UserId] ASC))CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [aspnet_Membership] ([ApplicationId] ASC,[LoweredEmail] ASC)', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (48, 48, NULL, NULL, CAST(0x0000A45000FA1C5F AS DateTime), 1, NULL, 10046, N'PROCEDURE', N'dbo', N'aspnet_Membership_CreateUser', N'CREATE PROCEDURE dbo.aspnet_Membership_CreateUser
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (49, 49, NULL, NULL, CAST(0x0000A45000FA1CE5 AS DateTime), 1, NULL, 10047, N'PROCEDURE', N'dbo', N'aspnet_Membership_GetUserByName', N'CREATE PROCEDURE dbo.aspnet_Membership_GetUserByName
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (50, 50, NULL, NULL, CAST(0x0000A45000FA1CF0 AS DateTime), 1, NULL, 10048, N'PROCEDURE', N'dbo', N'aspnet_Membership_GetUserByUserId', N'CREATE PROCEDURE dbo.aspnet_Membership_GetUserByUserId
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (51, 51, NULL, NULL, CAST(0x0000A45000FA1CFC AS DateTime), 1, NULL, 10049, N'PROCEDURE', N'dbo', N'aspnet_Membership_GetUserByEmail', N'CREATE PROCEDURE dbo.aspnet_Membership_GetUserByEmail
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (52, 52, NULL, NULL, CAST(0x0000A45000FA1D07 AS DateTime), 1, NULL, 10050, N'PROCEDURE', N'dbo', N'aspnet_Membership_GetPasswordWithFormat', N'CREATE PROCEDURE dbo.aspnet_Membership_GetPasswordWithFormat
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (53, 53, NULL, NULL, CAST(0x0000A45000FA1D22 AS DateTime), 1, NULL, 10051, N'PROCEDURE', N'dbo', N'aspnet_Membership_UpdateUserInfo', N'CREATE PROCEDURE dbo.aspnet_Membership_UpdateUserInfo
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (54, 54, NULL, NULL, CAST(0x0000A45000FA1D3E AS DateTime), 1, NULL, 10052, N'PROCEDURE', N'dbo', N'aspnet_Membership_GetPassword', N'CREATE PROCEDURE dbo.aspnet_Membership_GetPassword
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (55, 55, NULL, NULL, CAST(0x0000A45000FA1D53 AS DateTime), 1, NULL, 10053, N'PROCEDURE', N'dbo', N'aspnet_Membership_SetPassword', N'CREATE PROCEDURE dbo.aspnet_Membership_SetPassword
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (56, 56, NULL, NULL, CAST(0x0000A45000FA1D64 AS DateTime), 1, NULL, 10054, N'PROCEDURE', N'dbo', N'aspnet_Membership_ResetPassword', N'CREATE PROCEDURE dbo.aspnet_Membership_ResetPassword
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (57, 57, NULL, NULL, CAST(0x0000A45000FA1D6C AS DateTime), 1, NULL, 10055, N'PROCEDURE', N'dbo', N'aspnet_Membership_UnlockUser', N'CREATE PROCEDURE dbo.aspnet_Membership_UnlockUser
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (58, 58, NULL, NULL, CAST(0x0000A45000FA1D78 AS DateTime), 1, NULL, 10056, N'PROCEDURE', N'dbo', N'aspnet_Membership_UpdateUser', N'CREATE PROCEDURE dbo.aspnet_Membership_UpdateUser
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (59, 59, NULL, NULL, CAST(0x0000A45000FA1D83 AS DateTime), 1, NULL, 10057, N'PROCEDURE', N'dbo', N'aspnet_Membership_ChangePasswordQuestionAndAnswer', N'CREATE PROCEDURE dbo.aspnet_Membership_ChangePasswordQuestionAndAnswer
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (60, 60, NULL, NULL, CAST(0x0000A45000FA1D9F AS DateTime), 1, NULL, 10058, N'PROCEDURE', N'dbo', N'aspnet_Membership_GetAllUsers', N'CREATE PROCEDURE dbo.aspnet_Membership_GetAllUsers
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (61, 61, NULL, NULL, CAST(0x0000A45000FA1DA8 AS DateTime), 1, NULL, 10059, N'PROCEDURE', N'dbo', N'aspnet_Membership_GetNumberOfUsersOnline', N'CREATE PROCEDURE dbo.aspnet_Membership_GetNumberOfUsersOnline
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (62, 62, NULL, NULL, CAST(0x0000A45000FA1DB3 AS DateTime), 1, NULL, 10060, N'PROCEDURE', N'dbo', N'aspnet_Membership_FindUsersByName', N'CREATE PROCEDURE dbo.aspnet_Membership_FindUsersByName
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (63, 63, NULL, NULL, CAST(0x0000A45000FA1DC3 AS DateTime), 1, NULL, 10061, N'PROCEDURE', N'dbo', N'aspnet_Membership_FindUsersByEmail', N'CREATE PROCEDURE dbo.aspnet_Membership_FindUsersByEmail
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (64, 64, NULL, NULL, CAST(0x0000A45000FA1DD3 AS DateTime), 1, NULL, 10062, N'VIEW', N'dbo', N'vw_aspnet_MembershipUsers', N'
  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (65, 65, NULL, NULL, CAST(0x0000A45000FA1E59 AS DateTime), 1, NULL, 10063, N'TABLE', N'dbo', N'aspnet_Profile', N'CREATE TABLE [dbo].[aspnet_Profile]
(
[UserId] UNIQUEIDENTIFIER NOT NULL ,
[PropertyNames] NTEXT(1073741823) NOT NULL ,
[PropertyValuesString] NTEXT(1073741823) NOT NULL ,
[PropertyValuesBinary] IMAGE NOT NULL ,
[LastUpdatedDate] DATETIME NOT NULL ,CONSTRAINT [FK__aspnet_Pr__UserI__02084FDA] FOREIGN KEY ([UserId]) REFERENCES [aspnet_Users]([UserId]),CONSTRAINT PK__aspnet_P__1788CC4C00200768 PRIMARY KEY  CLUSTERED ([UserId] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (66, 66, NULL, NULL, CAST(0x0000A45000FA1E5F AS DateTime), 1, NULL, 10064, N'PROCEDURE', N'dbo', N'aspnet_Profile_GetProperties', N'
CREATE PROCEDURE dbo.aspnet_Profile_GetProperties
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (67, 67, NULL, NULL, CAST(0x0000A45000FA1E66 AS DateTime), 1, NULL, 10065, N'PROCEDURE', N'dbo', N'aspnet_Profile_SetProperties', N'
CREATE PROCEDURE dbo.aspnet_Profile_SetProperties
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (68, 68, NULL, NULL, CAST(0x0000A45000FA1E74 AS DateTime), 1, NULL, 10066, N'PROCEDURE', N'dbo', N'aspnet_Profile_DeleteProfiles', N'
CREATE PROCEDURE dbo.aspnet_Profile_DeleteProfiles
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (69, 69, NULL, NULL, CAST(0x0000A45000FA1E80 AS DateTime), 1, NULL, 10067, N'PROCEDURE', N'dbo', N'aspnet_Profile_DeleteInactiveProfiles', N'
CREATE PROCEDURE dbo.aspnet_Profile_DeleteInactiveProfiles
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (70, 70, NULL, NULL, CAST(0x0000A45000FA1E85 AS DateTime), 1, NULL, 10068, N'PROCEDURE', N'dbo', N'aspnet_Profile_GetNumberOfInactiveProfiles', N'
CREATE PROCEDURE dbo.aspnet_Profile_GetNumberOfInactiveProfiles
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (71, 71, NULL, NULL, CAST(0x0000A45000FA1E8A AS DateTime), 1, NULL, 10069, N'PROCEDURE', N'dbo', N'aspnet_Profile_GetProfiles', N'
CREATE PROCEDURE dbo.aspnet_Profile_GetProfiles
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (72, 72, NULL, NULL, CAST(0x0000A45000FA1E97 AS DateTime), 1, NULL, 10070, N'VIEW', N'dbo', N'vw_aspnet_Profiles', N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (73, 73, NULL, NULL, CAST(0x0000A45000FA1EEC AS DateTime), 1, NULL, 10071, N'TABLE', N'dbo', N'aspnet_Roles', N'CREATE TABLE [dbo].[aspnet_Roles]
(
[ApplicationId] UNIQUEIDENTIFIER NOT NULL ,
[RoleId] UNIQUEIDENTIFIER NOT NULL CONSTRAINT [DF__aspnet_Ro__RoleI__0E6E26BF] DEFAULT(NEWID()),
[RoleName] NVARCHAR(256) NOT NULL ,
[LoweredRoleName] NVARCHAR(256) NOT NULL ,
[Description] NVARCHAR(256) NULL ,CONSTRAINT [FK__aspnet_Ro__Appli__0D7A0286] FOREIGN KEY ([ApplicationId]) REFERENCES [aspnet_Applications]([ApplicationId]),CONSTRAINT PK__aspnet_R__8AFACE1B0B91BA14 PRIMARY KEY  NONCLUSTERED ([RoleId] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (74, 74, NULL, NULL, CAST(0x0000A45000FA1EF4 AS DateTime), 1, NULL, 10072, N'TABLE', N'dbo', N'aspnet_UsersInRoles', N'CREATE TABLE [dbo].[aspnet_UsersInRoles]
(
[UserId] UNIQUEIDENTIFIER NOT NULL ,
[RoleId] UNIQUEIDENTIFIER NOT NULL ,CONSTRAINT [FK__aspnet_Us__UserI__1332DBDC] FOREIGN KEY ([UserId]) REFERENCES [aspnet_Users]([UserId]),CONSTRAINT [FK__aspnet_Us__RoleI__14270015] FOREIGN KEY ([RoleId]) REFERENCES [aspnet_Roles]([RoleId]),CONSTRAINT PK__aspnet_U__AF2760AD114A936A PRIMARY KEY  CLUSTERED ([UserId] ASC,[RoleId] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (75, 75, NULL, NULL, CAST(0x0000A45000FA1EF7 AS DateTime), 1, NULL, 10073, N'PROCEDURE', N'dbo', N'aspnet_UsersInRoles_IsUserInRole', N'
CREATE PROCEDURE dbo.aspnet_UsersInRoles_IsUserInRole
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (76, 76, NULL, NULL, CAST(0x0000A45000FA1F04 AS DateTime), 1, NULL, 10074, N'PROCEDURE', N'dbo', N'aspnet_UsersInRoles_GetRolesForUser', N'
CREATE PROCEDURE dbo.aspnet_UsersInRoles_GetRolesForUser
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (77, 77, NULL, NULL, CAST(0x0000A45000FA1F06 AS DateTime), 1, NULL, 10075, N'PROCEDURE', N'dbo', N'aspnet_Roles_CreateRole', N'CREATE PROCEDURE dbo.aspnet_Roles_CreateRole
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (78, 78, NULL, NULL, CAST(0x0000A45000FA1F1B AS DateTime), 1, NULL, 10076, N'PROCEDURE', N'dbo', N'aspnet_Roles_DeleteRole', N'
CREATE PROCEDURE dbo.aspnet_Roles_DeleteRole
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (79, 79, NULL, NULL, CAST(0x0000A45000FA1F34 AS DateTime), 1, NULL, 10077, N'PROCEDURE', N'dbo', N'aspnet_Roles_RoleExists', N'
CREATE PROCEDURE dbo.aspnet_Roles_RoleExists
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (80, 80, NULL, NULL, CAST(0x0000A45000FA1FA7 AS DateTime), 1, NULL, 10078, N'PROCEDURE', N'dbo', N'aspnet_UsersInRoles_AddUsersToRoles', N'
CREATE PROCEDURE dbo.aspnet_UsersInRoles_AddUsersToRoles
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (81, 81, NULL, NULL, CAST(0x0000A45000FA1FC8 AS DateTime), 1, NULL, 10079, N'PROCEDURE', N'dbo', N'aspnet_UsersInRoles_RemoveUsersFromRoles', N'
CREATE PROCEDURE dbo.aspnet_UsersInRoles_RemoveUsersFromRoles
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (82, 82, NULL, NULL, CAST(0x0000A45000FA1FCE AS DateTime), 1, NULL, 10080, N'PROCEDURE', N'dbo', N'aspnet_UsersInRoles_GetUsersInRoles', N'
CREATE PROCEDURE dbo.aspnet_UsersInRoles_GetUsersInRoles
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (83, 83, NULL, NULL, CAST(0x0000A45000FA1FD2 AS DateTime), 1, NULL, 10081, N'PROCEDURE', N'dbo', N'aspnet_UsersInRoles_FindUsersInRole', N'
CREATE PROCEDURE dbo.aspnet_UsersInRoles_FindUsersInRole
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (84, 84, NULL, NULL, CAST(0x0000A45000FA1FD5 AS DateTime), 1, NULL, 10082, N'PROCEDURE', N'dbo', N'aspnet_Roles_GetAllRoles', N'
CREATE PROCEDURE dbo.aspnet_Roles_GetAllRoles (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (85, 85, NULL, NULL, CAST(0x0000A45000FA1FE3 AS DateTime), 1, NULL, 10083, N'VIEW', N'dbo', N'vw_aspnet_Roles', N'
  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (86, 86, NULL, NULL, CAST(0x0000A45000FA1FEA AS DateTime), 1, NULL, 10084, N'VIEW', N'dbo', N'vw_aspnet_UsersInRoles', N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (87, 87, NULL, NULL, CAST(0x0000A45000FA2027 AS DateTime), 1, NULL, 10085, N'TABLE', N'dbo', N'aspnet_Paths', N'CREATE TABLE [dbo].[aspnet_Paths]
(
[ApplicationId] UNIQUEIDENTIFIER NOT NULL ,
[PathId] UNIQUEIDENTIFIER NOT NULL CONSTRAINT [DF__aspnet_Pa__PathI__25518C17] DEFAULT(NEWID()),
[Path] NVARCHAR(256) NOT NULL ,
[LoweredPath] NVARCHAR(256) NOT NULL ,CONSTRAINT [FK__aspnet_Pa__Appli__245D67DE] FOREIGN KEY ([ApplicationId]) REFERENCES [aspnet_Applications]([ApplicationId]),CONSTRAINT PK__aspnet_P__CD67DC5822751F6C PRIMARY KEY  NONCLUSTERED ([PathId] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (88, 88, NULL, NULL, CAST(0x0000A45000FA202A AS DateTime), 1, NULL, 10086, N'PROCEDURE', N'dbo', N'aspnet_Personalization_GetApplicationId', N'CREATE PROCEDURE dbo.aspnet_Personalization_GetApplicationId (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (89, 89, NULL, NULL, CAST(0x0000A45000FA203C AS DateTime), 1, NULL, 10087, N'PROCEDURE', N'dbo', N'aspnet_Paths_CreatePath', N'CREATE PROCEDURE dbo.aspnet_Paths_CreatePath
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (90, 90, NULL, NULL, CAST(0x0000A45000FA2044 AS DateTime), 1, NULL, 10088, N'TABLE', N'dbo', N'aspnet_PersonalizationAllUsers', N'CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers]
(
[PathId] UNIQUEIDENTIFIER NOT NULL ,
[PageSettings] IMAGE NOT NULL ,
[LastUpdatedDate] DATETIME NOT NULL ,CONSTRAINT [FK__aspnet_Pe__PathI__2BFE89A6] FOREIGN KEY ([PathId]) REFERENCES [aspnet_Paths]([PathId]),CONSTRAINT PK__aspnet_P__CD67DC592A164134 PRIMARY KEY  CLUSTERED ([PathId] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (91, 91, NULL, 106, CAST(0x0000A45000FA204C AS DateTime), 1, NULL, 10089, N'TABLE', N'dbo', N'aspnet_PersonalizationPerUser', N'CREATE TABLE [dbo].[aspnet_PersonalizationPerUser]
(
[Id] UNIQUEIDENTIFIER NOT NULL CONSTRAINT [DF__aspnet_Perso__Id__30C33EC3] DEFAULT(NEWID()),
[PathId] UNIQUEIDENTIFIER NULL ,
[UserId] UNIQUEIDENTIFIER NULL ,
[PageSettings] IMAGE NOT NULL ,
[LastUpdatedDate] DATETIME NOT NULL ,CONSTRAINT [FK__aspnet_Pe__PathI__31B762FC] FOREIGN KEY ([PathId]) REFERENCES [aspnet_Paths]([PathId]),CONSTRAINT [FK__aspnet_Pe__UserI__32AB8735] FOREIGN KEY ([UserId]) REFERENCES [aspnet_Users]([UserId]),CONSTRAINT PK__aspnet_P__3214EC062EDAF651 PRIMARY KEY  NONCLUSTERED ([Id] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (92, 92, NULL, NULL, CAST(0x0000A45000FA2058 AS DateTime), 1, NULL, 10090, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationAllUsers_GetPageSettings', N'CREATE PROCEDURE dbo.aspnet_PersonalizationAllUsers_GetPageSettings (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (93, 93, NULL, NULL, CAST(0x0000A45000FA205A AS DateTime), 1, NULL, 10091, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationAllUsers_ResetPageSettings', N'CREATE PROCEDURE dbo.aspnet_PersonalizationAllUsers_ResetPageSettings (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (94, 94, NULL, NULL, CAST(0x0000A45000FA2067 AS DateTime), 1, NULL, 10092, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationAllUsers_SetPageSettings', N'CREATE PROCEDURE dbo.aspnet_PersonalizationAllUsers_SetPageSettings (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (95, 95, NULL, NULL, CAST(0x0000A45000FA2069 AS DateTime), 1, NULL, 10093, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationPerUser_GetPageSettings', N'CREATE PROCEDURE dbo.aspnet_PersonalizationPerUser_GetPageSettings (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (96, 96, NULL, NULL, CAST(0x0000A45000FA2071 AS DateTime), 1, NULL, 10094, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationPerUser_ResetPageSettings', N'CREATE PROCEDURE dbo.aspnet_PersonalizationPerUser_ResetPageSettings (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (97, 97, NULL, NULL, CAST(0x0000A45000FA2095 AS DateTime), 1, NULL, 10095, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationPerUser_SetPageSettings', N'CREATE PROCEDURE dbo.aspnet_PersonalizationPerUser_SetPageSettings (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (98, 98, NULL, NULL, CAST(0x0000A45000FA2099 AS DateTime), 1, NULL, 10096, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationAdministration_DeleteAllState', N'CREATE PROCEDURE dbo.aspnet_PersonalizationAdministration_DeleteAllState (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (99, 99, NULL, NULL, CAST(0x0000A45000FA20A8 AS DateTime), 1, NULL, 10097, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationAdministration_ResetSharedState', N'CREATE PROCEDURE dbo.aspnet_PersonalizationAdministration_ResetSharedState (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (100, 100, NULL, NULL, CAST(0x0000A45000FA20B6 AS DateTime), 1, NULL, 10098, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationAdministration_ResetUserState', N'CREATE PROCEDURE dbo.aspnet_PersonalizationAdministration_ResetUserState (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
GO
print 'Processed 100 total records'
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (101, 101, NULL, NULL, CAST(0x0000A45000FA20D1 AS DateTime), 1, NULL, 10099, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationAdministration_FindState', N'CREATE PROCEDURE dbo.aspnet_PersonalizationAdministration_FindState (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (102, 102, NULL, NULL, CAST(0x0000A45000FA20DB AS DateTime), 1, NULL, 10100, N'PROCEDURE', N'dbo', N'aspnet_PersonalizationAdministration_GetCountOfState', N'CREATE PROCEDURE dbo.aspnet_PersonalizationAdministration_GetCountOfState (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (103, 103, NULL, NULL, CAST(0x0000A45000FA20E3 AS DateTime), 1, NULL, 10101, N'VIEW', N'dbo', N'vw_aspnet_WebPartState_Paths', N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (104, 104, NULL, NULL, CAST(0x0000A45000FA20E5 AS DateTime), 1, NULL, 10102, N'VIEW', N'dbo', N'vw_aspnet_WebPartState_Shared', N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (105, 105, NULL, NULL, CAST(0x0000A45000FA20ED AS DateTime), 1, NULL, 10103, N'VIEW', N'dbo', N'vw_aspnet_WebPartState_User', N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  ', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (106, 91, 91, NULL, CAST(0x0000A45000FA210A AS DateTime), 2, NULL, 10089, N'TABLE', N'dbo', N'aspnet_PersonalizationPerUser', N'CREATE TABLE [dbo].[aspnet_PersonalizationPerUser]
(
[Id] UNIQUEIDENTIFIER NOT NULL CONSTRAINT [DF__aspnet_Perso__Id__30C33EC3] DEFAULT(NEWID()),
[PathId] UNIQUEIDENTIFIER NULL ,
[UserId] UNIQUEIDENTIFIER NULL ,
[PageSettings] IMAGE NOT NULL ,
[LastUpdatedDate] DATETIME NOT NULL ,CONSTRAINT [FK__aspnet_Pe__PathI__31B762FC] FOREIGN KEY ([PathId]) REFERENCES [aspnet_Paths]([PathId]),CONSTRAINT [FK__aspnet_Pe__UserI__32AB8735] FOREIGN KEY ([UserId]) REFERENCES [aspnet_Users]([UserId]),CONSTRAINT PK__aspnet_P__3214EC062EDAF651 PRIMARY KEY  NONCLUSTERED ([Id] ASC))CREATE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [aspnet_PersonalizationPerUser] ([PathId] ASC,[UserId] ASC)CREATE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [aspnet_PersonalizationPerUser] ([UserId] ASC,[PathId] ASC)', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (107, 107, NULL, NULL, CAST(0x0000A45000FA211E AS DateTime), 1, NULL, 10104, N'TABLE', N'dbo', N'aspnet_WebEvent_Events', N'CREATE TABLE [dbo].[aspnet_WebEvent_Events]
(
[EventId] CHAR(32) NOT NULL ,
[EventTimeUtc] DATETIME NOT NULL ,
[EventTime] DATETIME NOT NULL ,
[EventType] NVARCHAR(256) NOT NULL ,
[EventSequence] DECIMAL(19,0) NOT NULL ,
[EventOccurrence] DECIMAL(19,0) NOT NULL ,
[EventCode] INT NOT NULL ,
[EventDetailCode] INT NOT NULL ,
[Message] NVARCHAR(1024) NULL ,
[ApplicationPath] NVARCHAR(256) NULL ,
[ApplicationVirtualPath] NVARCHAR(256) NULL ,
[MachineName] NVARCHAR(256) NOT NULL ,
[RequestUrl] NVARCHAR(1024) NULL ,
[ExceptionType] NVARCHAR(256) NULL ,
[Details] NTEXT(1073741823) NULL ,CONSTRAINT PK__aspnet_W__7944C81042E1EEFE PRIMARY KEY  CLUSTERED ([EventId] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (108, 108, NULL, NULL, CAST(0x0000A45000FA2123 AS DateTime), 1, NULL, 10105, N'PROCEDURE', N'dbo', N'aspnet_WebEvent_LogEvent', N'CREATE PROCEDURE dbo.aspnet_WebEvent_LogEvent
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'.Net SqlClient Data Provider                                                                                                    ', N'3DC3EE896CA6', N'LPC         ', 54)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (109, 28, 28, NULL, CAST(0x0000A45000FB4D4B AS DateTime), 2, NULL, 10027, N'TABLE', N'dbo', N'webpages_OAuthMembership', N'CREATE TABLE [dbo].[webpages_OAuthMembership]
(
[Provider] NVARCHAR(30) NOT NULL ,
[ProviderUserId] NVARCHAR(100) NOT NULL ,
[UserId] INT NOT NULL ,CONSTRAINT PK__webpages__F53FC0ED47A6A41B PRIMARY KEY  CLUSTERED ([Provider] ASC,[ProviderUserId] ASC))', N'DACW0140                                                                                                                        ', N'SQLDataViewer                                                                                                                   ', N'.Net SqlClient Data Provider                                                                                                    ', N'9ECB1D6F81F5', N'LPC         ', 59)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (110, 29, 29, NULL, CAST(0x0000A45000FB4D83 AS DateTime), 2, NULL, 10028, N'TABLE', N'dbo', N'webpages_Membership', N'CREATE TABLE [dbo].[webpages_Membership]
(
[UserId] INT NOT NULL ,
[CreateDate] DATETIME NULL ,
[ConfirmationToken] NVARCHAR(128) NULL ,
[IsConfirmed] BIT NULL CONSTRAINT [DF__webpages___IsCon__4D5F7D71] DEFAULT((0)),
[LastPasswordFailureDate] DATETIME NULL ,
[PasswordFailuresSinceLastSuccess] INT NOT NULL CONSTRAINT [DF__webpages___Passw__4E53A1AA] DEFAULT((0)),
[Password] NVARCHAR(128) NOT NULL ,
[PasswordChangedDate] DATETIME NULL ,
[PasswordSalt] NVARCHAR(128) NOT NULL ,
[PasswordVerificationToken] NVARCHAR(128) NULL ,
[PasswordVerificationTokenExpirationDate] DATETIME NULL ,CONSTRAINT PK__webpages__1788CC4C4B7734FF PRIMARY KEY  CLUSTERED ([UserId] ASC))', N'DACW0140                                                                                                                        ', N'SQLDataViewer                                                                                                                   ', N'.Net SqlClient Data Provider                                                                                                    ', N'9ECB1D6F81F5', N'LPC         ', 59)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (111, 30, 30, NULL, CAST(0x0000A45000FB4D8C AS DateTime), 2, NULL, 10029, N'TABLE', N'dbo', N'webpages_Roles', N'CREATE TABLE [dbo].[webpages_Roles]
(
[RoleId] INT IDENTITY(1,1) NOT NULL ,
[RoleName] NVARCHAR(256) NOT NULL ,CONSTRAINT PK__webpages__8AFACE1A51300E55 PRIMARY KEY  CLUSTERED ([RoleId] ASC),CONSTRAINT UQ__webpages__8A2B6160540C7B00 UNIQUE  NONCLUSTERED ([RoleName] ASC))', N'DACW0140                                                                                                                        ', N'SQLDataViewer                                                                                                                   ', N'.Net SqlClient Data Provider                                                                                                    ', N'9ECB1D6F81F5', N'LPC         ', 59)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (112, 31, 31, NULL, CAST(0x0000A45000FB4D98 AS DateTime), 2, NULL, 10030, N'TABLE', N'dbo', N'webpages_UsersInRoles', N'CREATE TABLE [dbo].[webpages_UsersInRoles]
(
[UserId] INT NOT NULL ,
[RoleId] INT NOT NULL ,CONSTRAINT [fk_UserId] FOREIGN KEY ([UserId]) REFERENCES [UserProfile]([UserId]),CONSTRAINT [fk_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [webpages_Roles]([RoleId]),CONSTRAINT PK__webpages__AF2760AD57DD0BE4 PRIMARY KEY  CLUSTERED ([UserId] ASC,[RoleId] ASC))', N'DACW0140                                                                                                                        ', N'SQLDataViewer                                                                                                                   ', N'.Net SqlClient Data Provider                                                                                                    ', N'9ECB1D6F81F5', N'LPC         ', 59)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (113, 1, 1, 114, CAST(0x0000A45100A2B1BF AS DateTime), 2, NULL, 10000, N'TABLE', N'dbo', N'MapUserConnection', N'CREATE TABLE [dbo].[MapUserConnection]
(
[Id] INT NOT NULL ,
[ConnID] INT NOT NULL ,
[UserID] INT NOT NULL ,CONSTRAINT [FK_MapUserConnection_MapConnection] FOREIGN KEY ([ConnID]) REFERENCES [tblConnection]([ConnId]),CONSTRAINT PK_MapUserConnection PRIMARY KEY  CLUSTERED ([Id] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'Microsoft SQL Server Management Studio                                                                                          ', N'DCCE7480A337', N'LPC         ', 67)
INSERT [vc].[ObjectVersions] ([VersionId], [FirstVersionId], [PrevVersionId], [NextVersionId], [VersionDatetime], [RevisionNo], [Comment], [ObjectId], [ObjectType], [SchemaName], [ObjectName], [ObjectScript], [HostName], [LoginName], [ProgramName], [NetAddress], [NetLibrary], [SpId]) VALUES (114, 1, 113, NULL, CAST(0x0000A45100A2B280 AS DateTime), 3, NULL, 10000, N'TABLE', N'dbo', N'MapUserConnection', N'CREATE TABLE [dbo].[MapUserConnection]
(
[Id] INT NOT NULL ,
[ConnID] INT NOT NULL ,
[UserID] INT NOT NULL ,CONSTRAINT [FK_MapUserConnection_MapConnection] FOREIGN KEY ([ConnID]) REFERENCES [tblConnection]([ConnId]),CONSTRAINT [FK_MapUserConnection_tblUserInfo] FOREIGN KEY ([UserID]) REFERENCES [UserProfile]([UserId]),CONSTRAINT PK_MapUserConnection PRIMARY KEY  CLUSTERED ([Id] ASC))', N'DACW0140                                                                                                                        ', N'INTERNAL\Saiful.Islam                                                                                                           ', N'Microsoft SQL Server Management Studio                                                                                          ', N'DCCE7480A337', N'LPC         ', 67)
SET IDENTITY_INSERT [vc].[ObjectVersions] OFF
/****** Object:  Table [dbo].[MapUserConnection]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MapUserConnection](
	[Id] [int] NOT NULL,
	[ConnID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_MapUserConnection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MapUserConnection] ([Id], [ConnID], [UserID]) VALUES (1, 1, 2)
INSERT [dbo].[MapUserConnection] ([Id], [ConnID], [UserID]) VALUES (2, 1, 3)
/****** Object:  StoredProcedure [vc].[procChangeObjectDropedPeriodRange]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [vc].[procChangeObjectDropedPeriodRange]
	@schemaName varchar(200),
	@objectName varchar(200),
	@eventType varchar(10)
as
begin 

	if @objectName='ObjectDropedPeriodRange' and @schemaName='vc'
		return

	if @eventType not in ('DROP','CREATE')
	begin
		declare @errorMessage varchar(500)=@eventType+' is not valid. Allowed eventType is DROP and CREATE'
		raiserror(@errorMessage,13,1)
		return
	end

	declare @datetimeNow datetime=getdate()
	declare @objectId int 
	declare @lastEventId int
	
	exec [vc].[procGetTrackedObject] @schemaName,@objectName,@datetimeNow,@objectId out
	
	select @lastEventId=Id
	from vc.ObjectDropedPeriodRange
	where ObjectId=@objectId
	and EndDatetime is null

	if @lastEventId is not null and @eventType='CREATE'
		update vc.ObjectDropedPeriodRange
		set EndDatetime=@datetimeNow
		where Id=@lastEventId
	
	if @eventType='DROP'
		insert into vc.ObjectDropedPeriodRange
		(
			[ObjectId],
			[StartDatetime]
		)
		values(@objectId,@datetimeNow)


end
GO
/****** Object:  StoredProcedure [vc].[procAddSnapshot]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [vc].[procAddSnapshot]
@name varchar(200),
@description varchar(4000)
as
begin 

	declare @maxVersionId int 
	select @maxVersionId=max(versionId) 
	from vc.ObjectVersions

	insert into vc.Snapshots
	(
		Name,
		Description,
		SnapshotDatetime,
		MaxVersionId
	)
	values(@name,@description,GETDATE(),@maxVersionId)

end
GO
/****** Object:  StoredProcedure [vc].[procRetriveObjects]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [vc].[procRetriveObjects]
@snapshotId int=null,
@datetime datetime=null
as
begin
	

	if @snapshotId is not null
	begin
		declare @maxVersionId int
		declare @snapShotDatetime datetime 
		select 
			@maxVersionId=MaxVersionId, 
			@snapShotDatetime=SnapshotDatetime
		from vc.Snapshots
		where Id=@snapshotId

		select 
			a.*
		from 
		vc.objectVersions a,
		(
			select 
				ObjectId,
				max(VersionId) versionId
			from 
			ObjectVersions a
			where a.VersionId<=@maxVersionId
			group by ObjectId
		) b
		where a.ObjectId=b.ObjectId
		and a.VersionId=b.versionId
		and vc.IsObjectDropped(a.ObjectId,@snapShotDatetime)=0
		order by a.ObjectType,a.SchemaName,a.ObjectName
	
	end


	
	else if @datetime is not null
	begin 
		select 
			a.*
		from 
		vc.objectVersions a,
		(
			select 
				ObjectId,
				max(VersionId) versionId
			from 
			ObjectVersions a
			where a.VersionDatetime<=@datetime
			group by ObjectId
		) b
		where a.ObjectId=b.ObjectId
		and a.VersionId=b.versionId
		and vc.IsObjectDropped(a.ObjectId,@datetime)=0
		order by a.ObjectType,a.SchemaName,a.ObjectName
		return
	end

	else 
		select 
		*
		from 
		vc.ObjectVersions a
		where NextVersionId is null
		and vc.IsObjectDropped(a.ObjectId,null)=0
		order by a.ObjectType,a.SchemaName,a.ObjectName


end
GO
/****** Object:  StoredProcedure [vc].[procRenameObject]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [vc].[procRenameObject]
@objectId int,
@newObjectName varchar(100),
@updateDateTime datetime,
@objectScript nvarchar(max) out
as
begin
	
	declare @def nvarchar(max)
	declare @schema varchar(200)
	declare @oldName varchar(200)
	declare @versionId int

	select 
		@versionId=[VersionId],
		@def=ltrim([ObjectScript]),
		@oldName=ObjectName,
		@schema=SchemaName 
	from vc.ObjectVersions
	where ObjectId=@objectId
	and NextVersionId is null
	set @objectScript=vc.GetRenamedScript(@schema,@oldName,@newObjectName,@def)
	
	update vc.TrackedObjects
	set ObjectName=@newObjectName,
	LastUpdateDate=@updateDateTime
	where ObjectId=@objectId


end
GO
/****** Object:  StoredProcedure [vc].[procLoadNewVersion]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [vc].[procLoadNewVersion]
@objectId int,
@objectType varchar(100),
@objectScript nvarchar(max),
@spid smallint,
@updateDatetime datetime
as
begin
	/* loading new version */
	declare @objectName varchar(1000)
	declare @schemaName varchar(100)
	declare @firstVersionId int
	declare @hostName nvarchar(128)
	declare @loginName nvarchar(128)
	declare @programName nvarchar(128)
	declare @netAddress nchar(12)
	declare @netLibrary nchar(12)
	declare @comment nvarchar(max)
	declare @prevObjectScript nvarchar(max)
	declare @versionId int
	declare @revisionNo int

	select 
		@objectName=ObjectName,
		@schemaName=SchemaName	
	from vc.TrackedObjects
	where ObjectId=@objectId	

	select @versionId=MAX(VersionId) from 
	vc.ObjectVersions 
	where ObjectId=@objectId 
	
	
	select
		@revisionNo=RevisionNo,
		@firstVersionId=FirstVersionId,
		@prevObjectScript=ObjectScript from vc.ObjectVersions
	where VersionId=@versionId

	if(@prevObjectScript=@objectScript COLLATE SQL_Latin1_General_CP1_CS_AS)
		goto printLabel
	
	set @revisionNo=isnull(@revisionNo,0)+1

	
	select 
		@hostName=hostname,
		@loginName=loginame,
		@programName=program_name,
		@netAddress=net_address,
		@netLibrary=net_library
	from sys.sysprocesses
	where spid=@spId


	---------extracting the comment----------

	declare @startIndex int=charindex('/*',@objectScript)
	declare @endIndex int
	if(@startIndex>0)
		set @endIndex=charindex('*/',@objectScript,@startIndex)
	
	if(@startIndex>0 and @endIndex>@startIndex)
		set @comment=SUBSTRING(@objectScript,@startIndex+2,@endIndex-@startIndex-2)
	

	------------------------------------------


insert into vc.ObjectVersions
(
	FirstVersionId,
	PrevVersionId, 
	VersionDatetime, 
	RevisionNo,
	Comment, 
	ObjectId, 
	SchemaName, 
	ObjectName, 
	ObjectType, 
	ObjectScript, 
	HostName, 
	LoginName, 
	ProgramName, 
	NetAddress, 
	NetLibrary, 
	SpId
)
values
(
	@firstVersionId,
	@versionId,
	@updateDatetime,
	@revisionNo,
	@comment,
	@objectId,
	@SchemaName,
	@objectName,
	@ObjectType,
	@objectScript,
	@hostName,
	@loginName,
	@programName,
	@netAddress,
	@netLibrary,
	@spId
)

declare @newVersionId int=scope_identity()

if(@versionId is null)
	update vc.ObjectVersions
	set FirstVersionId=@newVersionId
	where VersionId=@newVersionId
else 
	update vc.ObjectVersions
	set NextVersionId=@newVersionId
	where VersionId=@versionId
	
	
set @versionId=@newVersionId

printLabel:
print 'Command completed successfully
From VersionControl: Saved as a version successfully. 
Object name: '+quotename(@schemaName)+'.'+quotename(@objectName)+'
VersionId: '+cast(@versionId as varchar)+'
Revision No: '+cast(@revisionNo as varchar)


	
end
GO
/****** Object:  View [dbo].[View_1]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT     dbo.MapUserConnection.*
FROM         dbo.MapUserConnection
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MapUserConnection"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
/****** Object:  StoredProcedure [vc].[procLoadAllObjectsToVc]    Script Date: 03/06/2015 14:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [vc].[procLoadAllObjectsToVc]
as
begin
	
	declare @schemaName varchar(200)
	declare @objectName varchar(200)
	declare @objectType varchar(200)

	declare curObjects cursor for
	select 
		SPECIFIC_SCHEMA as SchemaName,
		SPECIFIC_NAME as ObjectName,
		ROUTINE_TYPE as ObjectType
	from INFORMATION_SCHEMA.ROUTINES

	union 

	select 
		TABLE_SCHEMA as SchemaName,
		TABLE_NAME as ObjectName,
		case TABLE_TYPE when 'BASE TABLE' then 'TABLE' else 'VIEW' end as ObjectType
	from 
	INFORMATION_SCHEMA.TABLES 

	open curObjects

	declare @datetimeNow datetime
	declare @objectId int
	declare @objectScript nvarchar(max)
	declare @objectFullName varchar(500)
	declare @oldObjectName varchar(200)

	fetch next from curObjects into 
		@schemaName,
		@objectName,
		@objectType



	while(@@FETCH_STATUS=0)
	begin
		
		set @objectFullName=quoteName(@schemaName)+'.'+quotename(@objectName)
		set @objectScript=null
		set @oldObjectName=null
		set @objectId=null
		set @datetimeNow=getdate()



		if @objectType='TABLE'
		begin
			
			exec [vc].[procScriptTable] 
				@TableName=@objectFullName,
				@TableScript=@objectScript out

		end
		else 
		begin 
			select @objectScript=definition
			from sys.all_sql_modules
			where object_id=OBJECT_ID(@objectFullName)
		end

		if @objectScript is null
			goto fetchNext


		select @objectId=ObjectId 
		from vc.TrackedObjects
		where SchemaName=@schemaName
		and ObjectName=@objectName
		
		


		if @objectId is null
		begin 
			insert into vc.TrackedObjects
			(
				[SchemaName],
				ObjectName,
				LastUpdateDate
			)
			values
			(
				@schemaName,
				@objectName,
				@datetimeNow
			)
			set @objectId=SCOPE_IDENTITY()
		end


		select @oldObjectName=ObjectName 
		from vc.ObjectVersions 
		where ObjectId=@objectId
		and NextVersionId is null

		if @oldObjectName is not null and @oldObjectName<>@objectName
		begin 
			set @objectScript=vc.GetRenamedScript(@schemaName,@oldObjectName,@objectName,@objectScript)
		end

		exec [vc].[procLoadNewVersion]
			@objectId,
			@objectType,
			@objectScript,
			@@spid,
			@datetimeNow 
			
		
		fetchNext:
		fetch next from curObjects 
		into @schemaName,@objectName,@objectType
	
	end


	close curObjects
	deallocate curObjects

end
GO
/****** Object:  DdlTrigger [TrigVersionControlMonitor]    Script Date: 03/06/2015 14:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [TrigVersionControlMonitor]
ON DATABASE
FOR DDL_DATABASE_LEVEL_EVENTS
AS
SET NOCOUNT ON
SET ANSI_PADDING ON

declare @EventType varchar(100)
declare @SchemaName varchar(100)
declare @ObjectName varchar(100)
declare @ObjectType varchar(100)
declare @EventDataText nvarchar(max)
declare @spId smallint
declare @eventDataXml xml=EVENTDATA()
declare @currentDateTime datetime=GETDATE()
declare @objectId int


declare @versionId int
declare @revisionNo int


SELECT 
 @EventType = @eventDataXml.value('(/EVENT_INSTANCE/EventType)[1]','nvarchar(max)')  
,@SchemaName = @eventDataXml.value('(/EVENT_INSTANCE/SchemaName)[1]','nvarchar(max)')  
,@ObjectName = @eventDataXml.value('(/EVENT_INSTANCE/ObjectName)[1]','nvarchar(max)')
,@ObjectType = @eventDataXml.value('(/EVENT_INSTANCE/ObjectType)[1]','nvarchar(max)')   
,@EventDataText = @eventDataXml.value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]','nvarchar(max)')
,@spId=@eventDataXml.value('(/EVENT_INSTANCE/SPID)[1]','smallint')



--------------- version control on table script-----------------

if(@ObjectType='TABLE')
begin

	if(@EventType like 'DROP%')
	begin
		if  @ObjectName like 'Tmp_%'
			return;
		else 
		begin 
			exec vc.procChangeObjectDropedPeriodRange @schemaName,@objectName,'DROP'
			return
		end
	end
	if(@EventType like 'ALTER%' and @EventDataText like '%LOCK_ESCALATION%')
		return;
	if((@EventType like 'CREATE%' or @EventType like 'ALTER%') and @ObjectName like 'Tmp_%')
		return;
	
	if @EventType like 'CREATE%'
		exec vc.procChangeObjectDropedPeriodRange @schemaName,@objectName,'CREATE'

	declare @newTableScript nvarchar(max)
	declare @tableFullName varchar(1000)='['+@SchemaName+'].['+@ObjectName+']'
	declare @actualObjectName varchar(1000)=@ObjectName
	
	
	if(@EventType='RENAME')
	begin
			declare @newTableName varchar(1000)
			set @newTableName = @eventDataXml.value('(/EVENT_INSTANCE/NewObjectName)[1]','varchar(1000)')
			if('Tmp_'+@newTableName=@ObjectName)
			begin
				set @actualObjectName=@newTableName
			end
			else
			begin
				exec vc.procGetTrackedObject @SchemaName,@ObjectName,@currentDateTime,@objectId out
				exec vc.procRenameObject @objectId,@newTableName,@currentDateTime,@newTableScript out
				exec vc.procLoadNewVersion 
					@objectId,
					@objectType,
					@newTableScript,
					@spid,
					@currentDateTime

				return
			end
	end
	set @tableFullName='['+@SchemaName+'].['+@actualObjectName+']'
	
	exec vc.procScriptTable @TableName=@tableFullName,@TableScript=@newTableScript out
	exec vc.procGetTrackedObject @SchemaName,@actualObjectName,@currentDateTime,@objectId out
	exec vc.procLoadNewVersion 
		@objectId,
		@objectType,
		@newTableScript,
		@spid,
		@currentDateTime
	
	return
end



---------------------------------------------------------------


--------------Version control on Procedure, function and views---------------------



if(@ObjectType not in ('PROCEDURE','FUNCTION','VIEW') )
	return;

if @EventType like 'CREATE%'
	exec vc.procChangeObjectDropedPeriodRange @schemaName,@objectName,'CREATE'

if @EventType like 'DROP%'
begin 
	exec vc.procChangeObjectDropedPeriodRange @schemaName,@objectName,'DROP'
	return
end


if not (
@EventType like 'ALTER%' or 
@EventType like 'CREATE%' or
@EventType like 'RENAME%' 
)
	return;

exec vc.procGetTrackedObject @SchemaName,@ObjectName,@currentDateTime,@objectId out

if(@EventType='RENAME')
begin
	
	declare @newObjectName varchar(1000)
	declare @renamedObjectScript nvarchar(max)
	set @newObjectName = @eventDataXml.value('(/EVENT_INSTANCE/NewObjectName)[1]','varchar(1000)')
	exec vc.procRenameObject @objectId,@newObjectName,@currentDateTime,@renamedObjectScript out
	exec vc.procLoadNewVersion 
		@objectId,
		@objectType,
		@renamedObjectScript,
		@spid,
		@currentDateTime

	return
end



exec vc.procLoadNewVersion 
	@objectId,
	@objectType,
	@EventDataText,
	@spid,
	@currentDateTime
GO
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
DISABLE TRIGGER [TrigVersionControlMonitor] ON DATABASE
GO
/****** Object:  Default [DF__webpages___IsCon__4D5F7D71]    Script Date: 03/06/2015 14:55:58 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__4E53A1AA]    Script Date: 03/06/2015 14:55:58 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  Default [DF_ObjectVersions_RevisionNo]    Script Date: 03/06/2015 14:56:01 ******/
ALTER TABLE [vc].[ObjectVersions] ADD  CONSTRAINT [DF_ObjectVersions_RevisionNo]  DEFAULT ((1)) FOR [RevisionNo]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 03/06/2015 14:56:01 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 03/06/2015 14:56:01 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
/****** Object:  ForeignKey [FK_tblAuthentication_tblDBName]    Script Date: 03/06/2015 14:56:01 ******/
ALTER TABLE [dbo].[tblConnection]  WITH CHECK ADD  CONSTRAINT [FK_tblAuthentication_tblDBName] FOREIGN KEY([DBId])
REFERENCES [dbo].[tblDBName] ([Id])
GO
ALTER TABLE [dbo].[tblConnection] CHECK CONSTRAINT [FK_tblAuthentication_tblDBName]
GO
/****** Object:  ForeignKey [FK_tblAuthentication_tblDBSchema]    Script Date: 03/06/2015 14:56:01 ******/
ALTER TABLE [dbo].[tblConnection]  WITH CHECK ADD  CONSTRAINT [FK_tblAuthentication_tblDBSchema] FOREIGN KEY([DBSchemaId])
REFERENCES [dbo].[tblDBSchema] ([Id])
GO
ALTER TABLE [dbo].[tblConnection] CHECK CONSTRAINT [FK_tblAuthentication_tblDBSchema]
GO
/****** Object:  ForeignKey [FK_tblAuthentication_tblDBServer]    Script Date: 03/06/2015 14:56:01 ******/
ALTER TABLE [dbo].[tblConnection]  WITH CHECK ADD  CONSTRAINT [FK_tblAuthentication_tblDBServer] FOREIGN KEY([DBServerId])
REFERENCES [dbo].[tblDBServer] ([Id])
GO
ALTER TABLE [dbo].[tblConnection] CHECK CONSTRAINT [FK_tblAuthentication_tblDBServer]
GO
/****** Object:  ForeignKey [FK_tblAuthentication_tblDBTable]    Script Date: 03/06/2015 14:56:01 ******/
ALTER TABLE [dbo].[tblConnection]  WITH CHECK ADD  CONSTRAINT [FK_tblAuthentication_tblDBTable] FOREIGN KEY([DBTableId])
REFERENCES [dbo].[tblDBTable] ([Id])
GO
ALTER TABLE [dbo].[tblConnection] CHECK CONSTRAINT [FK_tblAuthentication_tblDBTable]
GO
/****** Object:  ForeignKey [FK_MapUserConnection_MapConnection]    Script Date: 03/06/2015 14:56:01 ******/
ALTER TABLE [dbo].[MapUserConnection]  WITH CHECK ADD  CONSTRAINT [FK_MapUserConnection_MapConnection] FOREIGN KEY([ConnID])
REFERENCES [dbo].[tblConnection] ([ConnId])
GO
ALTER TABLE [dbo].[MapUserConnection] CHECK CONSTRAINT [FK_MapUserConnection_MapConnection]
GO
/****** Object:  ForeignKey [FK_MapUserConnection_tblUserInfo]    Script Date: 03/06/2015 14:56:01 ******/
ALTER TABLE [dbo].[MapUserConnection]  WITH CHECK ADD  CONSTRAINT [FK_MapUserConnection_tblUserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[MapUserConnection] CHECK CONSTRAINT [FK_MapUserConnection_tblUserInfo]
GO
/****** Object:  DdlTrigger [TrigVersionControlMonitor]    Script Date: 03/06/2015 14:56:02 ******/
Enable Trigger [TrigVersionControlMonitor] ON Database
GO
